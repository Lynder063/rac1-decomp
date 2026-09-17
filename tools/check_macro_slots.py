#!/usr/bin/env python3
"""
Fails the build when a multi-instruction assembler macro sits in a
branch delay slot.

Why this exists
---------------
`MACRO_ADDR` (include/common.h) makes the compiler emit an unsplit
global access such as `sw $2,D_0015F020`. The assembler expands that to
two instructions (`lui $at` / `sw`), but the compiler counts it as one,
so it may place it in a delay slot. The compiler brackets delay slots
with `.set nomacro`, and the assembler only *warns* there ("macro used
after .set nomacro") and emits broken code: the second instruction falls
out of the slot. The build would carry on with wrong bytes.

This check reads the compiler's assembly before it is assembled and
rejects any symbolic load/store/`la` between `.set nomacro` and
`.set macro`.

Usage: python tools/check_macro_slots.py file.s
"""
import re
import sys

# A memory operand that is a bare symbol (optionally +offset), not
# `off($reg)` or `%lo(sym)($reg)`.
MACRO = re.compile(
    r"^\s*(l[bhwd]u?|s[bhwd]|l[wd]c1|s[wd]c1|la|dla)\s+\$\w+\s*,\s*"
    r"(?!%)(?![-+]?\d)[A-Za-z_.$][\w.$]*(\s*[-+]\s*\d+)?\s*$"
)


G = 2  # the -G the build passes (Makefile.sn CFLAGS)


def main(path: str) -> int:
    bad = []
    nomacro = False
    with open(path) as f:
        lines = f.readlines()
    # A symbol the assembler knows is small (.extern with size <= -G) is
    # one gp-relative instruction: that is the ordinary $gp lever and is
    # fine in a slot.
    small = set()
    for line in lines:
        m = re.match(r"^\s*\.extern\s+([\w.$]+)\s*,\s*(\d+)", line)
        if m and 0 < int(m.group(2)) <= G:
            small.add(m.group(1))
    for n, line in enumerate(lines, 1):
        s = line.strip()
        if s.startswith(".set"):
            if s.split()[1:] == ["nomacro"]:
                nomacro = True
            elif s.split()[1:] == ["macro"]:
                nomacro = False
            continue
        if nomacro and MACRO.match(line):
            sym = re.split(r"[\s,]+", s)[2]
            if sym not in small:
                bad.append((n, s))
    for n, s in bad:
        print("%s:%d: symbolic access in a delay slot: %s" % (path, n, s))
    if bad:
        print("*** a MACRO_ADDR access landed in a delay slot; the assembler "
              "would expand it to two instructions there")
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1]))
