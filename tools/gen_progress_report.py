#!/usr/bin/env python3
"""
Progress report for decomp.dev, in objdiff's report format (version 2).

decomp.dev reads a `report.json` that CI uploads as the artifact
`SCES_509.16_report`. Our CI cannot build the game: the SN ProDG
toolchain and the retail executable may not be redistributed. So the
report is generated HERE, from a real from-scratch build, and committed
as progress/report.json. The workflow only validates and uploads it.

Match data is the same audit tools/sweep_matches.py performs: each
decompiled function is compared with retail on size and bytes. The report
holds names, addresses, sizes and percentages. It holds no retail bytes.

Usage:
  python tools/gen_progress_report.py            from-scratch build, then write
  python tools/gen_progress_report.py --no-build use the current build-sn/rac1.elf
  python tools/gen_progress_report.py --check    CI: fail if the committed
                                                 report is out of date with src/

--check needs neither the toolchain nor the baserom. It re-derives which
functions have source and compares that with the committed report, so
forgetting to regenerate after adding C fails the PR.
"""
import json
import re
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from libgcc_units import MODULES, FUNCTIONS as LIBGCC_FUNCTIONS, SEGMENT_SOURCES

REPORT = Path("progress/report.json")
BASEROM = "baserom/SCES_509.16"
LINKED_ELF = "build-sn/rac1.elf"
# Absolute: Windows' CreateProcess won't resolve a relative forward-slash
# path to an .exe.
TC = str(Path("toolchain/sn-prodg-3.01/usr/local/sce/ee/gcc/bin").resolve())

# Same patterns as tools/sweep_matches.py (see the comments there on why
# the definition regex is lazy and skips `extern`).
FUNC_DEF = re.compile(r"^(?!extern\b)[A-Za-z_].*?\b(func_[0-9A-Fa-f]{8})\s*\(", re.M)
STUB = re.compile(r"INCLUDE_ASM\([^)]*\b(func_[0-9A-Fa-f]{8})\)")
NONMATCHING = re.compile(r"nonmatching\s+(func_[0-9A-Fa-f]{8}),\s*(0x[0-9A-Fa-f]+)")

# First address past the game half of core_text that precedes libgcc.
LIBGCC_START = 0x11FC08


def retail_functions() -> dict[str, tuple[str, int, int]]:
    """name -> (segment, vram, size) for every function splat found."""
    out = {}
    for seg in ("core_text", "text"):
        for p in sorted(Path(f"asm/nonmatchings/{seg}").glob("func_*.s")):
            m = NONMATCHING.search(p.read_text(errors="replace"))
            if m:
                out[m.group(1)] = (seg, int(m.group(1)[5:], 16), int(m.group(2), 16))
    return out


def with_source() -> set[str]:
    """Functions that have real source: game C, or GCC's for libgcc."""
    names = set(LIBGCC_FUNCTIONS)
    for srcs in SEGMENT_SOURCES.values():
        for src in srcs:
            text = Path(src).read_text(errors="replace")
            stubs = set(STUB.findall(text))
            names |= {n for n in FUNC_DEF.findall(text) if n not in stubs}
    return names


def unit_of(name: str, seg: str, vram: int) -> tuple[str, str, str]:
    """(unit name, source path, progress category)."""
    for mod, src, fns in MODULES:
        if name in fns:
            return f"libgcc/{mod}", src, "libgcc"
    if seg == "text":
        return "text", "src/text.c", "game"
    if vram < LIBGCC_START:
        return "core_text", "src/core_text.c", "game"
    return "core_text_2", "src/core_text_2.c", "game"


def build() -> None:
    """From-scratch build + link. Refuses on failure: a failed make leaves
    the previous .o behind, whose INCLUDE_ASM stubs still hold retail's
    bytes, and a report built on that would publish fictional matches."""
    for f in Path("build-sn").glob("core_text*.o"):
        f.unlink()
    Path("build-sn/text.o").unlink(missing_ok=True)
    for f in Path("build-sn/libgcc").glob("*.o") if Path("build-sn/libgcc").is_dir() else []:
        f.unlink()
    steps = [
        [f"{TC}/make.exe", "-f", "Makefile.sn"],
        ["bash", "rac1.ld.sh"],
        [f"{TC}/ee-ld.exe", "-T", "build-sn/rac1.ld", "build-sn/bss_equs.o", "-o", LINKED_ELF],
    ]
    for cmd in steps:
        r = subprocess.run(cmd, capture_output=True, text=True)
        if r.returncode != 0:
            sys.stdout.write(r.stdout[-3000:] + r.stderr[-3000:])
            sys.exit(f"*** {' '.join(cmd[:1])} failed (exit {r.returncode}) -- NOT writing a report")


def match_results(funcs: dict, decompiled: set[str]) -> dict[str, float]:
    """name -> fuzzy match percent for decompiled functions (100.0 = exact,
    size AND bytes). A size mismatch scores 0: it is not a near-miss, it
    breaks everything after it."""
    from elftools.elf.elffile import ELFFile

    raw = Path(BASEROM).read_bytes()
    with open(BASEROM, "rb") as f:
        seg = next(s for s in ELFFile(f).iter_segments() if s["p_type"] == "PT_LOAD")
        delta = seg["p_vaddr"] - seg["p_offset"]

    out = {}
    with open(LINKED_ELF, "rb") as f:
        elf = ELFFile(f)
        symtab = list(elf.get_section_by_name(".symtab").iter_symbols())
        syms = {s.name: s for s in symtab}
        # Linker-script aliases (libgcc's func_ names) carry st_size 0; the
        # real symbol at the same address (__adddf3, or the local
        # _fpadd_parts) has the size gcc emitted.
        sized_at = {}
        for s in symtab:
            if s["st_size"] and s["st_info"]["type"] == "STT_FUNC":
                sized_at.setdefault(s["st_value"], s["st_size"])
        secs = {i: (elf.get_section(i)["sh_addr"], elf.get_section(i).data())
                for i in range(elf.num_sections())}
        for name in sorted(decompiled):
            if name not in funcs or name not in syms:
                sys.exit(f"*** {name}: has source but no retail .s or no symbol")
            _, vram, size = funcs[name]
            sym = syms[name]
            # libgcc names are linker aliases (absolute symbols): read those
            # through the section that covers their address instead.
            idx = sym["st_shndx"]
            if not isinstance(idx, int):
                idx = next(i for i, (a, d) in secs.items()
                           if a and a <= vram < a + len(d))
            base, data = secs[idx]
            ours = data[vram - base: vram - base + size]
            orig = raw[vram - delta: vram - delta + size]
            osize = sym["st_size"] or sized_at.get(sym["st_value"])
            if sym["st_value"] != vram:
                sys.exit(f"*** {name} is at {sym['st_value']:#x}, not its retail address")
            if osize is None or osize != size:
                out[name] = 0.0
                continue
            same = sum(1 for a, b in zip(orig, ours) if a == b)
            out[name] = 100.0 * same / size
    return out


def measures(items: list[tuple[int, float, bool]], units: int = 0, complete_units: int = 0,
             complete_code: int = 0) -> dict:
    """items: (size, fuzzy%, exact). uint64 fields are strings, as protobuf
    JSON encodes them."""
    total = sum(s for s, _, _ in items)
    matched = sum(s for s, _, e in items if e)
    nfun = len(items)
    nmatch = sum(1 for _, _, e in items if e)
    fuzzy = sum(s * p for s, p, _ in items) / total if total else 0.0
    m = {
        "fuzzy_match_percent": fuzzy,
        "total_code": str(total),
        "matched_code": str(matched),
        "matched_code_percent": 100.0 * matched / total if total else 0.0,
        "total_functions": nfun,
        "matched_functions": nmatch,
        "matched_functions_percent": 100.0 * nmatch / nfun if nfun else 0.0,
        "complete_code": str(complete_code),
        "complete_code_percent": 100.0 * complete_code / total if total else 0.0,
    }
    if units:
        m["total_units"] = units
        m["complete_units"] = complete_units
    return m


def generate() -> dict:
    funcs = retail_functions()
    decompiled = with_source()
    fuzzy = match_results(funcs, decompiled)

    units: dict[str, dict] = {}
    for name, (seg, vram, size) in sorted(funcs.items(), key=lambda kv: kv[1][1]):
        uname, src, cat = unit_of(name, seg, vram)
        u = units.setdefault(uname, {"src": src, "cat": cat, "start": vram, "fns": []})
        pct = fuzzy.get(name, 0.0)
        u["fns"].append((name, vram, size, pct, pct == 100.0))

    out_units = []
    all_items, cat_items = [], {"game": [], "libgcc": []}
    cat_complete = {"game": 0, "libgcc": 0}
    complete_units = 0
    for uname, u in units.items():
        items = [(s, p, e) for _, _, s, p, e in u["fns"]]
        complete = all(e for _, _, e in items)
        code = sum(s for s, _, _ in items)
        if complete:
            complete_units += 1
            cat_complete[u["cat"]] += code
        all_items += items
        cat_items[u["cat"]] += items
        out_units.append({
            "name": uname,
            "measures": measures(items, 1, int(complete), code if complete else 0),
            "functions": [{
                "name": n,
                "size": str(s),
                "fuzzy_match_percent": p,
                "address": str(v - u["start"]),
                "metadata": {"virtual_address": str(v)},
            } for n, v, s, p, _ in u["fns"]],
            "metadata": {
                "complete": complete,
                "source_path": u["src"],
                "progress_categories": [u["cat"]],
            },
        })

    return {
        "measures": measures(all_items, len(units), complete_units,
                             sum(cat_complete.values())),
        "units": out_units,
        "version": 2,
        "categories": [
            {"id": "game", "name": "Game",
             "measures": measures(cat_items["game"], complete_code=cat_complete["game"])},
            {"id": "libgcc", "name": "libgcc",
             "measures": measures(cat_items["libgcc"], complete_code=cat_complete["libgcc"])},
        ],
    }


def check() -> None:
    if not REPORT.exists():
        sys.exit(f"*** {REPORT} missing -- run: python tools/gen_progress_report.py")
    report = json.loads(REPORT.read_text())
    in_report = {f["name"] for u in report["units"] for f in u["functions"]
                 if f.get("fuzzy_match_percent", 0) > 0}
    have = with_source()
    stale_new = sorted(have - in_report)
    stale_gone = sorted(in_report - have)
    if stale_new or stale_gone:
        print("progress/report.json is out of date with src/:")
        for n in stale_new:
            print(f"  has source, report says not decompiled: {n}")
        for n in stale_gone:
            print(f"  report says decompiled, no source any more: {n}")
        sys.exit("*** regenerate with: python tools/gen_progress_report.py")
    m = report["measures"]
    print(f"report is current: {m['matched_functions']}/{m['total_functions']} functions, "
          f"{m['matched_code_percent']:.2f}% code matched")


def main() -> None:
    args = sys.argv[1:]
    if "--check" in args:
        check()
        return
    if "--no-build" not in args:
        build()
    report = generate()
    REPORT.parent.mkdir(exist_ok=True)
    REPORT.write_text(json.dumps(report, indent=1) + "\n", newline="\n")
    m = report["measures"]
    print(f"wrote {REPORT}: {m['matched_functions']}/{m['total_functions']} functions exact, "
          f"{m['matched_code_percent']:.2f}% code, {m['complete_units']}/{m['total_units']} units complete")


if __name__ == "__main__":
    main()
