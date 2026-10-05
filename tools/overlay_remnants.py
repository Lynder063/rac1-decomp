#!/usr/bin/env python3
"""
The level code's linker remnants (docs/ASM_CLASSIFICATION.md): the single
word retail's linker left of a function it stripped, that function's last
delay slot. No C produces one, so config/overlays/linker_remnants.txt
lists them and the report counts them as finished, as it does the
executable's.

  python3 tools/overlay_remnants.py            # every 4-byte catalogue entry and its verdict
  python3 tools/overlay_remnants.py --check    # the list is exactly the entries that pass
  python3 tools/overlay_remnants.py --write    # rewrite the list (the source lines are yours)

Reads the level dumps (tools/overlays.py dump). An entry passes when it is
a 4-byte catalogue entry of level code that is not a piece of a joined
function (config/overlays/joined.tsv), and in every level it is placed in:

  - the word is an instruction: not zero, not a bare `jr $31`, not the
    linker's 0xCDCDCDCD fill;
  - it sits on an 8-byte boundary, where the stripped function began;
  - the code before it is finished: going back, only zero words (alignment,
    or the nop another stripped function left), then a delay slot, then
    `jr $31`.

The last test is what tells a remnant from the pieces of a function the
catalogue split in the wrong place, which are boundaries to fix
(joined.tsv), not remnants: a word right after `jr $31` is that return's
delay slot, and a word after anything else belongs to the code around it.
"""
import json
import struct
import sys
from pathlib import Path

import overlays

LIST = overlays.ROOT / "config/overlays/linker_remnants.txt"
JOINED = overlays.ROOT / "config/overlays/joined.tsv"
JR_RA = 0x03E00008
FILL = 0xCDCDCDCD
HEADER = """\
# Level code's linker remnants: the one word retail's linker left of a function it stripped
# (that function's last delay slot). Kept as original assembly and counted as finished, as
# config/linker_remnants.txt does for the executable (docs/ASM_CLASSIFICATION.md).
# tools/overlay_remnants.py states the rule and checks this list against the level dumps;
# the source marks each with LINKER_REMNANT("asm/overlays", name).
"""

_text = {}


def level_text(level: int) -> tuple[int, bytes]:
    if level not in _text:
        d = overlays.DUMP / f"level_{level:02d}"
        if not (d / "text.bin").exists():
            sys.exit(f"{d}: no dump (python3 tools/overlays.py dump)")
        records = json.loads((d / "manifest.json").read_text())["records"]
        base = next(r["address"] for r in records if r["name"] == "text")
        _text[level] = (base, (d / "text.bin").read_bytes())
    return _text[level]


def place_verdict(level: int, address: int) -> str | int:
    """Why the word at ADDRESS is not a remnant, or how many zero words lie before it."""
    base, text = level_text(level)

    def word(delta: int) -> int:
        return struct.unpack_from("<I", text, address + delta - base)[0]

    if word(0) in (0, JR_RA, FILL):
        return "not an instruction of a stripped function"
    if address % 8:
        return "not on an 8-byte boundary"
    if word(-4) == JR_RA:
        return "the delay slot of the return before it"
    zeros = 0
    while word(-4 * (zeros + 1)) == 0:
        zeros += 1
    if word(-4 * (zeros + 2)) == JR_RA:         # jr $31, its delay slot, then ZEROS zero words
        return zeros
    if zeros and word(-4 * (zeros + 1)) == JR_RA:   # the delay slot is itself a nop
        return zeros - 1
    return "no finished function before it"


def verdicts() -> list[tuple[str, int, str | int]]:
    """(name, places, verdict) of every 4-byte entry of level code: the reason it is not a
    remnant, or the most zero words found before it."""
    pieces = {p for line in JOINED.read_text().splitlines() if line and not line.startswith("#")
              for p in line.split("\t", 1)[1].split()}
    out = []
    for name, kind, size, places in overlays.read_catalogue():
        if size != 4 or kind == "exe":
            continue
        if name in pieces:
            out.append((name, len(places), "a piece of a joined function"))
            continue
        found = [place_verdict(level, address) for level, address in places]
        reasons = sorted({v for v in found if isinstance(v, str)})
        out.append((name, len(places), "; ".join(reasons) if reasons else max(found)))
    return out


def listed() -> list[str]:
    if not LIST.exists():
        return []
    return [l.strip() for l in LIST.read_text().splitlines() if l.strip() and not l.startswith("#")]


def main() -> None:
    rows = verdicts()
    passing = sorted(name for name, _, v in rows if isinstance(v, int))
    if "--write" in sys.argv[1:]:
        LIST.write_text(HEADER + "".join(f"{n}\n" for n in passing))
        print(f"{LIST.relative_to(overlays.ROOT)}: {len(passing)} remnants")
        return
    if "--check" in sys.argv[1:]:
        have = set(listed())
        for name in sorted(have - set(passing)):
            print(f"listed, but not a remnant: {name}")
        for name in sorted(set(passing) - have):
            print(f"a remnant, but not listed: {name}")
        if have != set(passing):
            sys.exit(1)
        print(f"{len(passing)} level remnants, as listed")
        return
    for name, places, v in rows:
        what = f"remnant ({v} zero words before it at most)" if isinstance(v, int) else v
        print(f"{name}  {places:3d} places  {what}")
    print(f"{len(passing)} of {len(rows)} 4-byte entries are remnants")


if __name__ == "__main__":
    main()
