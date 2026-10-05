# Original assembly classification

Some retail code was written as assembly, and some four-byte words are
leftovers from functions stripped by the linker. Matching those bytes by
compiling C would misrepresent their origin. The tracked lists are:

- `config/handwritten_asm.txt`: 212 functions marked handwritten by the
  disassembler (83,520 retail bytes).
- `config/linker_remnants.txt`: 69 dead-strip remnants identified by
  `tools/triage.py` (276 retail bytes).

These names were taken from the two corresponding `tools/triage.py` buckets
on 2026-09-27. The `fallthrough fragment` and `epilogue fragment` buckets
remain unmatched because they are incorrect function boundaries to fix.

`tools/setup_asm.sh` regenerates `asm/` from the contributor's own baserom,
then `tools/organize_asm.py` moves the listed files into
`asm/handwritten/<segment>/` and `asm/remnants/<segment>/`. Compatibility
links remain under `asm/nonmatchings/<segment>/` for the differ and retail
inventory. No retail assembly bytes are committed to Git.

The source uses `ASM_FUNC` and `LINKER_REMNANT` to include these files
without changing the linked image. The progress report counts the listed
original assembly as finished work while the build audit continues to
count exact C matches separately. Changing this published progress policy
requires upstream review.

## Level code

Level code has the same leftovers, and `config/overlays/linker_remnants.txt`
lists them (22 catalogue entries, 88 bytes; an entry shared between levels
is one name with many places). The source marks each with
`LINKER_REMNANT("asm/overlays", name)` where its `INCLUDE_ASM` stub was, and
the report counts it as finished, so a file or a level whose functions are
all matched is not held open by one stray word.

The level catalogue cuts functions apart more often than the executable's
listing does, so the list is not taken from a triage bucket. It is what
`tools/overlay_remnants.py` derives from the level dumps, and
`tools/overlay_remnants.py --check` compares the two. A 4-byte entry is a
remnant when it is not a piece of a joined function and, in every level it
is placed in:

- the word is an instruction (not zero, not a bare `jr $31`, not the
  linker's `0xCDCDCDCD` fill);
- it sits on an 8-byte boundary, where the stripped function began;
- the code before it is finished: going back there are only zero words
  (alignment, or the nop another stripped function left), then a delay
  slot, then `jr $31`.

Eight 4-byte entries fail and stay unmatched. One is the delay slot of the
return before it, five follow code that has not returned (both are pieces of
a function the catalogue split, to be joined in `joined.tsv`), one is
already a joined piece, and one is linker fill.
