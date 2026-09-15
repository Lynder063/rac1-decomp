#!/usr/bin/env python3
"""
Emits docs/ghidra/functions.csv -- every function splat split out, as
`segment,name,vram,size`.

This exists because Ghidra's own function discovery on a stripped PS2 ELF
is its weakest step: it guesses boundaries from prologues and gets them
wrong around branch-likely tails, alternate entry points and the many
handwritten-asm routines. We already KNOW every boundary exactly, from
the `nonmatching <name>, <size>` header splat writes at the top of each
.s file, so we hand Ghidra the table instead of letting it guess.

The vram address is not stored anywhere -- it IS the name (func_00112380
lives at 0x112380), which is how splat names things.

Usage: python tools/gen_func_table.py
"""
import re
from pathlib import Path

HEADER = re.compile(r"^nonmatching\s+(func_[0-9A-Fa-f]{8}),\s*(0x[0-9A-Fa-f]+)", re.M)
ASM = Path("asm/nonmatchings")
OUT = Path("docs/ghidra/functions.csv")


def main() -> None:
    rows = []
    for seg in sorted(p.name for p in ASM.iterdir() if p.is_dir()):
        for s in sorted((ASM / seg).glob("func_*.s")):
            m = HEADER.search(s.read_text(encoding="utf-8", errors="replace"))
            if not m:
                print("no nonmatching header, skipped: %s" % s)
                continue
            name, size = m.group(1), int(m.group(2), 16)
            rows.append((seg, name, int(name[5:], 16), size))

    OUT.parent.mkdir(parents=True, exist_ok=True)
    with OUT.open("w", encoding="utf-8", newline="\n") as f:
        f.write("segment,name,vram,size\n")
        for seg, name, vram, size in rows:
            f.write("%s,%s,0x%08X,0x%X\n" % (seg, name, vram, size))
    print("%d functions -> %s" % (len(rows), OUT))


if __name__ == "__main__":
    main()
