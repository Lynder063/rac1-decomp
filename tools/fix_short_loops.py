#!/usr/bin/env python3
"""
Pad short loops the way retail's assembler did, on compiled game code.

Retail's text segment was assembled by SN Systems' own ps2eeas, not the GNU
ee-as this build uses. ps2eeas works around the R5900 short-loop erratum:
every backward branch whose loop -- the target through the branch itself --
is shorter than six instructions gets nops inserted right before the branch
until it is exactly six. Measured on ps2eeas directly (tools in the
toolchain mirrors): it pads in reorder and noreorder code alike, for
branch-likely too, and counts any other instructions in the loop, delay
slots included. This is why 309 of retail's backward branches span exactly
six instructions. core_text and libgcc were assembled without it (their
short loops are unpadded), so this runs on src/game/ objects only.

ps2eeas itself cannot be used here: it recurses without end on some of the
retail stubs that INCLUDE_ASM feeds it.

Two passes, so that nothing is guessed about macro expansion or delay
slots: IN.o is IN.s assembled; spans are measured in it, per compiled
function (the INCLUDE_ASM stubs are retail's bytes and already padded), and
the nops go into IN.s before the matching branch.

usage: python tools/fix_short_loops.py IN.s IN.o OUT.s
"""
import re
import sys

import rabbitizer as rz
from elftools.elf.elffile import ELFFile

MIN_SPAN = 6
BRANCH_LINE = re.compile(r"^\s*(b[a-z0-9]*)\s+(.*)$")


def is_local_branch(mnemonic: str, operands: str) -> bool:
    """A conditional or unconditional branch to a local label: what closes a
    loop in compiled code. (`break` also starts with b; its operands are
    numbers, so it never qualifies.)"""
    target = operands.split(",")[-1].strip()
    return target.startswith(("$L", ".L"))


def object_branches(start, size, text):
    """[span or None] for every branch in the function, in order; span is
    target..branch inclusive, None for a forward branch."""
    out = []
    for i in range(0, size, 4):
        addr = start + i
        ins = rz.Instruction(int.from_bytes(text[addr:addr + 4], "little"), vram=addr,
                             category=rz.InstrCategory.R5900)
        if ins.isBranch():
            target = ins.getBranchVramGeneric()
            out.append((addr - target) // 4 + 1 if target <= addr else None)
    return out


def main() -> None:
    src_path, obj_path, dst_path = sys.argv[1:4]
    lines = open(src_path).readlines()
    elf = ELFFile(open(obj_path, "rb"))
    text_sec = elf.get_section_by_name(".text")
    text = text_sec.data()
    tidx = next(i for i, s in enumerate(elf.iter_sections()) if s.name == ".text")
    funcs = {s.name: (s["st_value"], s["st_size"])
             for s in elf.get_section_by_name(".symtab").iter_symbols()
             if s["st_shndx"] == tidx and s["st_info"]["type"] == "STT_FUNC" and s["st_size"]}

    inserts = {}  # line index -> number of nops to put before it
    i = 0
    while i < len(lines):
        m = re.match(r"^\s*\.ent\s+(\S+)", lines[i])
        if not m or m.group(1) not in funcs:
            i += 1
            continue
        name = m.group(1)
        end = next(j for j in range(i, len(lines)) if re.match(rf"^\s*\.end\s+{re.escape(name)}\s*$", lines[j]))
        # Backward branches only: a loop closes backward, and the assembler's
        # own macro branches (the div-by-zero trap guard) all jump forward,
        # so pairing the backward ones keeps source and object one to one.
        seen, src_back = set(), []
        for j in range(i, end):
            lm = re.match(r"^\s*(\$L\w+|\.L\w+):", lines[j])
            if lm:
                seen.add(lm.group(1))
            bm = BRANCH_LINE.match(lines[j])
            if bm and is_local_branch(bm.group(1), bm.group(2)) \
                    and bm.group(2).split(",")[-1].strip() in seen:
                src_back.append(j)
        start, size = funcs[name]
        obj_back = [span for span in object_branches(start, size, text) if span is not None]
        if len(obj_back) != len(src_back):
            sys.exit(f"fix_short_loops: {name}: {len(obj_back)} backward branches in the "
                     f"object but {len(src_back)} in the source -- refusing to guess")
        for span, j in zip(obj_back, src_back):
            if span < MIN_SPAN:
                inserts[j] = MIN_SPAN - span
        i = end + 1

    out, padded, reorder = [], 0, True
    for j, line in enumerate(lines):
        if j in inserts:
            nops = ["\tnop\n"] * inserts[j]
            if reorder:
                # Make the assembler keep them as written; the branch itself
                # stays in reorder mode.
                nops = ["\t.set\tnoreorder\n"] + nops + ["\t.set\treorder\n"]
            # Inside the compiler's own .set noreorder block (the usual case:
            # the branch and its delay slot are spelled out) plain nops keep
            # the branch and its delay slot exactly as they were.
            out += nops
            padded += 1
        stripped = line.strip()
        if stripped == ".set\tnoreorder" or stripped == ".set noreorder":
            reorder = False
        elif stripped == ".set\treorder" or stripped == ".set reorder":
            reorder = True
        out.append(line)
    open(dst_path, "w").writelines(out)
    print(f"fix_short_loops: padded {padded} short loop(s) {src_path} -> {dst_path}")


if __name__ == "__main__":
    main()
