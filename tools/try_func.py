#!/usr/bin/env python3
"""
Try C for one function without touching src/: compile it in a scratch copy
of its source file through the same per-segment pipeline Makefile.sn uses,
and compare the function against retail.

  python tools/try_func.py func_XXXXXXXX candidate.c         # verdict
  python tools/try_func.py func_XXXXXXXX candidate.c --diff  # + differing words

candidate.c holds the function definition, plus any extern declarations it
needs that the source file does not already have; it replaces the
function's INCLUDE_ASM line. Work happens in build-sn/try/<func>/.

The comparison masks relocated fields (a call target, a %hi/%lo half), so
it is fast and needs no link, but it cannot see a wrong symbol addend. It
is a filter: a function that passes here still has to pass the real build
(bash tools/build_sn.sh) before it counts.

Verdicts: EXACT (masked), BYTES n/size (same size, n bytes differ),
SIZE ours/retail (a size mismatch: never keep one), COMPILE (see log.txt).
"""
import re
import shutil
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from libgcc_units import SEGMENT_SOURCES  # noqa: E402
from toolchain import sn  # noqa: E402

import rabbitizer as rz  # noqa: E402
from elftools.elf.elffile import ELFFile  # noqa: E402
from elftools.elf.relocation import RelocationSection  # noqa: E402

CC = "toolchain/sn-prodg-24/local/sce/ee/gcc/bin/ee-gcc2953.exe"
CFLAGS = ["-O2", "-G2", "-Iinclude", "-Wa,-I,."]
BASEROM = "baserom/SCES_509.16"
STUB = re.compile(r'^\s*INCLUDE_ASM\([^)]*\b(func_[0-9A-Fa-f]{8})\)')
SIZE = re.compile(r"nonmatching\s+(func_[0-9A-Fa-f]{8}),\s*(0x[0-9A-Fa-f]+)")


def find_stub(name):
    for seg, srcs in SEGMENT_SOURCES.items():
        for src in srcs:
            for i, line in enumerate(Path(src).read_text(errors="replace").splitlines()):
                m = STUB.match(line)
                if m and m.group(1) == name:
                    return seg, Path(src), i
    sys.exit(f"{name}: no INCLUDE_ASM stub in src/ (already decompiled?)")


def run(cmd, log):
    r = subprocess.run(cmd, capture_output=True, text=True)
    log.write(" ".join(cmd) + "\n" + r.stdout + r.stderr)
    return r.returncode == 0


def build(name, seg, src, idx, candidate, work):
    """The Makefile.sn recipe for the segment, on a scratch copy."""
    lines = src.read_text(errors="replace").splitlines()
    lines[idx] = candidate.rstrip("\n")
    work.mkdir(parents=True, exist_ok=True)
    c = work / "src.c"
    c.write_text("\n".join(lines) + "\n")
    obj = work / "obj.o"
    obj.unlink(missing_ok=True)
    with open(work / "log.txt", "w") as log:
        s = [work / f"{n}.s" for n in "abcd"]
        if not run(sn(CC, *CFLAGS, "-S", "-o", str(s[0]), str(c)), log):
            return None
        if seg == "core_text":
            if not run([sys.executable, "tools/fix_core_spills.py", str(s[0]), str(s[1])], log):
                return None
        else:
            shutil.copy(s[0], s[1])
        if not run([sys.executable, "tools/fix_tail_calls.py", str(s[1]), str(s[2])], log):
            return None
        if seg == "text":
            if not run([sys.executable, "tools/fix_jump_tables.py", str(s[2]), str(s[2])], log):
                return None
        if not run([sys.executable, "tools/check_macro_slots.py", str(s[2])], log):
            return None
        if seg == "text":
            first = work / "c.o"
            if not run(sn(CC, *CFLAGS, "-c", str(s[2]), "-o", str(first)), log):
                return None
            if not run([sys.executable, "tools/fix_short_loops.py", str(s[2]), str(first), str(s[3])], log):
                return None
        else:
            shutil.copy(s[2], s[3])
        if not run(sn(CC, *CFLAGS, "-c", str(s[3]), "-o", str(obj)), log):
            return None
    return obj


def compare(name, seg, obj, show):
    rsize = int(SIZE.search(Path(f"asm/nonmatchings/{seg}/{name}.s").read_text()).group(2), 16)
    raw = Path(BASEROM).read_bytes()
    relf = ELFFile(open(BASEROM, "rb"))
    load = next(s for s in relf.iter_segments() if s["p_type"] == "PT_LOAD")
    delta = load["p_vaddr"] - load["p_offset"]
    elf = ELFFile(open(obj, "rb"))
    text = elf.get_section_by_name(".text").data()
    sym = next((s for s in elf.get_section_by_name(".symtab").iter_symbols() if s.name == name), None)
    if sym is None or not sym["st_size"]:
        return f"NOSYM {name} not defined by the candidate"
    relocated = {}
    for sec in elf.iter_sections():
        if isinstance(sec, RelocationSection) and sec.name == ".rel.text":
            for rel in sec.iter_relocations():
                o = rel["r_offset"]
                half = rel["r_info_type"] in (5, 6, 7)
                for b in ((o, o + 1) if half else range(o, o + 4)):
                    relocated[b] = True
    off, osize = sym["st_value"], sym["st_size"]
    vram = int(name[5:], 16)
    ours = text[off:off + osize]
    orig = raw[vram - delta:vram - delta + rsize]
    if osize != rsize:
        verdict = f"SIZE ours {osize} / retail {rsize}"
    else:
        diff = sum(1 for i in range(rsize) if not relocated.get(off + i) and ours[i] != orig[i])
        verdict = "EXACT (masked)" if diff == 0 else f"BYTES {diff}/{rsize}"
    if show and not verdict.startswith("EXACT"):
        n = max(osize, rsize)
        for i in range(0, n, 4):
            a = int.from_bytes(ours[i:i + 4], "little") if i < osize else None
            b = int.from_bytes(orig[i:i + 4], "little") if i < rsize else None
            # Differences only inside relocated fields are not differences.
            real = a is None or b is None or any(
                ours[i + k] != orig[i + k] and not relocated.get(off + i + k) for k in range(4))
            if a != b and real:
                da = rz.Instruction(a, vram=vram + i, category=rz.InstrCategory.R5900).disassemble() if a is not None else "-"
                db = rz.Instruction(b, vram=vram + i, category=rz.InstrCategory.R5900).disassemble() if b is not None else "-"
                print(f"  +{i:4x}  ours {da:40s} retail {db}")
    return verdict


def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    if len(args) != 2:
        sys.exit(__doc__)
    name, cand = args
    seg, src, idx = find_stub(name)
    obj = build(name, seg, src, idx, Path(cand).read_text(), Path("build-sn/try") / name)
    if obj is None:
        log = (Path("build-sn/try") / name / "log.txt").read_text(errors="replace")
        errs = [l for l in log.splitlines() if "error" in l.lower() or "undeclared" in l or "parse" in l]
        print(f"{name}: COMPILE failed ({src})")
        for l in errs[:8]:
            print("   ", l)
        sys.exit(1)
    print(f"{name}: {compare(name, seg, obj, '--diff' in sys.argv)}   ({src})")


if __name__ == "__main__":
    main()
