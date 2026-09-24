#!/usr/bin/env python3
"""
Split a splat data .s file around labels that a compiled object now owns.

  python tools/split_data_s.py IN OUT_PREFIX LABEL [LABEL ...]

Writes OUT_PREFIX_1.s, OUT_PREFIX_2.s, ... : every `nonmatching`/`dlabel`
block of IN in order, with each named LABEL's block left out and the file
cut there. The file header (everything before the first block) is
repeated in each part.

Why: a compiled object can bring read-only data of its own, and the
retail blob has to be split so the linker can put the object's .rodata
back in exactly its hole (see rac1.ld.sh). libgcc's __divdi3 carries its
static __clz_tab (0x100 bytes), which retail has at D_00152B18 in the
middle of core_rdata; a game function's switch brings its jump table,
which retail has among the text objects' read-only data at the end of
the data segment.
"""
import re
import sys

# A data block: `D_` for splat's data labels, `jtbl_` for jump tables.
LABEL = r"nonmatching\s+((?:D|jtbl)_[0-9A-F]{8})\b"


def first_address(body: list[str]) -> int | None:
    """VRAM of the first data line (spimdisasm's `/* ROM VRAM ... */`)."""
    for line in body:
        m = re.match(r"\s*/\*\s*[0-9A-Fa-f]+\s+([0-9A-Fa-f]{8})\b", line)
        if m:
            return int(m.group(1), 16)
    return None


def main() -> None:
    src, prefix, cuts = sys.argv[1], sys.argv[2], set(sys.argv[3:])
    lines = open(src, newline="").read().splitlines(keepends=True)
    starts = [i for i, l in enumerate(lines) if re.match(LABEL, l)]
    header = lines[: starts[0]]
    blocks = []
    for k, i in enumerate(starts):
        j = starts[k + 1] if k + 1 < len(starts) else len(lines)
        name = re.match(LABEL, lines[i]).group(1)
        blocks.append((name, lines[i:j]))
    missing = cuts - {n for n, _ in blocks}
    if missing:
        sys.exit(f"labels not found in {src}: {sorted(missing)}")

    parts, cur = [], []
    for name, body in blocks:
        if name in cuts:
            parts.append(cur)
            cur = []
        else:
            cur.extend(body)
    parts.append(cur)
    for n, body in enumerate(parts, 1):
        # A piece after a cut starts where retail's next item starts, and
        # the linker only puts it there if its section is aligned at least
        # as much as that address is (the gap after our table is always
        # smaller than that). So open it with the address's own alignment,
        # capped at 16. The first piece starts at the segment's own base.
        align = []
        start = first_address(body)
        if n > 1 and start is not None:
            bits = min((start & -start).bit_length() - 1, 4)
            align = [f".align {bits}\n"]
        with open(f"{prefix}_{n}.s", "w", newline="") as f:
            f.writelines(header + align + body)
    print(f"split {src} into {len(parts)} part(s) around {sorted(cuts)}")


if __name__ == "__main__":
    main()
