#!/usr/bin/env python3
"""
Compares bytes against the retail baserom, byte for byte.

IMPORTANT: once any function's compiled size differs from the original
(even by one instruction), every function *after* it in the same object
shifts in a flat section-vs-section comparison, making that comparison
meaningless past the first size-changing function -- it looks like a
massive regression when it's really just alignment. Per-function checks
(using each function's own retail address + size, from its `nonmatching`
header in asm/) are the only way to verify a specific function once any
earlier one in its object doesn't match exactly.

Usage:
  Whole section (only meaningful before any decompiled function's size
  has drifted from retail -- i.e. right after a fresh `splat split`, or
  once everything in a section actually matches):
    python tools/check_match.py section build-sn/core_text.o core.text

  One function, by its retail vram address + size (read straight from
  its "nonmatching <label>, <size>" line in asm/nonmatchings/.../*.s --
  this does NOT depend on where the function landed in our build, only
  on where it's supposed to be in the retail binary):
    python tools/check_match.py func 0x112380 0x28
"""
import sys
from elftools.elf.elffile import ELFFile

BASEROM = "baserom/SCES_509.16"


def diff_report(orig: bytes, ours: bytes, label: str) -> None:
    n = min(len(orig), len(ours))
    mismatches = sum(1 for i in range(n) if orig[i] != ours[i])
    print(f"{label}: sizes retail={len(orig)} ours={len(ours)}")
    print(f"  byte mismatches: {mismatches}/{n} ({100 * mismatches / max(n, 1):.2f}%)")
    if mismatches:
        for i in range(n):
            if orig[i] != ours[i]:
                print(f"  first diff at offset {i:#x}:")
                print(f"    retail {orig[max(0, i - 4):i + 12].hex()}")
                print(f"    ours   {ours[max(0, i - 4):i + 12].hex()}")
                break


def check_section(obj_path: str, section_name: str) -> None:
    with open(BASEROM, "rb") as f:
        orig = ELFFile(f).get_section_by_name(section_name).data()
    with open(obj_path, "rb") as f:
        ours = ELFFile(f).get_section_by_name(".text").data()
    diff_report(orig, ours, f"{obj_path} vs retail '{section_name}'")


def check_func(vram: int, size: int) -> None:
    """
    Reads the retail bytes directly from the baserom's raw file offset.
    Works out the file offset from the ELF's own program header (the
    core segment: vram 0x100080 <-> rom offset 0x1000, a constant
    0xFF080 delta -- see config/splat.yaml) rather than requiring a
    freshly linked build-sn/rac1.elf, so this works even mid-edit before
    relinking.
    """
    with open(BASEROM, "rb") as f:
        elf = ELFFile(f)
        seg = next(s for s in elf.iter_segments() if s["p_type"] == "PT_LOAD")
        delta = seg["p_vaddr"] - seg["p_offset"]
        f.seek(vram - delta)
        orig = f.read(size)
    print(f"NOTE: reads retail bytes directly by address, not from build-sn/rac1.elf.")
    print(f"Compare 'ours' bytes yourself (e.g. objdump -s on the built object) --")
    print(f"this only prints what retail has at {vram:#x}:")
    print(f"  {orig.hex()}")


def main() -> None:
    if len(sys.argv) < 2:
        print(__doc__)
        raise SystemExit(1)
    mode = sys.argv[1]
    if mode == "section":
        check_section(sys.argv[2], sys.argv[3])
    elif mode == "func":
        check_func(int(sys.argv[2], 16), int(sys.argv[3], 16))
    else:
        print(__doc__)
        raise SystemExit(1)


if __name__ == "__main__":
    main()
