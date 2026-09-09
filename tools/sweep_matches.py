#!/usr/bin/env python3
"""
Audits EVERY function that has real C in src/*.c (i.e. is no longer an
INCLUDE_ASM stub) against retail, on BOTH size and bytes.

This exists because per-function spot checks let two distinct classes of
false positive through:
  * a stale object after a failed compile (the INCLUDE_ASM stub still
    holds retail's own bytes, so it reads 0/N), and
  * a function correct in its first N bytes but LONGER than retail (the
    surplus fell outside the compared window, so it also read 0/N).
Both were caught only by accident. A whole-project sweep with explicit
size comparison is the cheap way to keep them caught.

Run after a full rebuild+relink. Reports one line per function and a
summary, and exits nonzero if anything is not a clean match.

Usage: python tools/sweep_matches.py
"""
import re
import subprocess
import sys
from pathlib import Path

from elftools.elf.elffile import ELFFile

BASEROM = "baserom/SCES_509.16"
LINKED_ELF = "build-sn/rac1.elf"

FUNC_DEF = re.compile(r"^[A-Za-z_].*\b(func_[0-9A-Fa-f]{8})\s*\(", re.M)
STUB = re.compile(r"INCLUDE_ASM\([^)]*\b(func_[0-9A-Fa-f]{8})\)")
NONMATCHING = re.compile(r"nonmatching\s+(func_[0-9A-Fa-f]{8}),\s*(0x[0-9A-Fa-f]+)")


def retail_size(name: str) -> int | None:
    for seg in ("core_text", "text"):
        p = Path(f"asm/nonmatchings/{seg}/{name}.s")
        if p.exists():
            m = NONMATCHING.search(p.read_text(errors="replace"))
            if m:
                return int(m.group(2), 16)
    return None


def main() -> None:
    decompiled: list[str] = []
    for src in ("src/core_text.c", "src/text.c"):
        text = Path(src).read_text(errors="replace")
        stubs = set(STUB.findall(text))
        for name in FUNC_DEF.findall(text):
            if name not in stubs:
                decompiled.append(name)
    decompiled = sorted(set(decompiled))

    with open(BASEROM, "rb") as f:
        belf = ELFFile(f)
        seg = next(s for s in belf.iter_segments() if s["p_type"] == "PT_LOAD")
        delta = seg["p_vaddr"] - seg["p_offset"]
        baserom_bytes = Path(BASEROM).read_bytes()

    with open(LINKED_ELF, "rb") as f:
        oelf = ELFFile(f)
        symtab = oelf.get_section_by_name(".symtab")
        syms = {s.name: s for s in symtab.iter_symbols()}
        sections = {i: oelf.get_section(i).data() for i in range(oelf.num_sections())}
        sec_addr = {i: oelf.get_section(i)["sh_addr"] for i in range(oelf.num_sections())}

    exact, size_bad, byte_bad, missing = [], [], [], []
    for name in decompiled:
        rsize = retail_size(name)
        sym = syms.get(name)
        if rsize is None or sym is None:
            missing.append(name)
            continue
        rvram = int(name.split("_")[1], 16)
        orig = baserom_bytes[rvram - delta: rvram - delta + rsize]
        idx = sym["st_shndx"]
        off = sym["st_value"] - sec_addr[idx]
        ours = sections[idx][off: off + rsize]
        osize = sym["st_size"]

        if osize and osize != rsize:
            size_bad.append((name, rsize, osize))
            print(f"SIZE  {name}: retail={rsize} ours={osize}")
            continue
        mism = sum(1 for i in range(min(len(orig), len(ours))) if orig[i] != ours[i])
        if mism:
            byte_bad.append((name, mism, rsize))
            print(f"BYTES {name}: {mism}/{rsize}")
        else:
            exact.append(name)

    print(f"\n=== {len(decompiled)} decompiled functions audited ===")
    print(f"  exact (size AND bytes): {len(exact)}")
    print(f"  size mismatch:          {len(size_bad)}")
    print(f"  byte mismatch:          {len(byte_bad)}")
    if missing:
        print(f"  could not check:        {len(missing)} {missing}")
    sys.exit(0 if not (size_bad or byte_bad) else 1)


if __name__ == "__main__":
    main()
