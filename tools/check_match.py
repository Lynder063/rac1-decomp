#!/usr/bin/env python3
"""
Compares a build-sn/*.o object's .text bytes against the corresponding
section in the retail baserom, byte for byte. Useful as a rough progress
signal even before a real linker script exists: differences right now are
expected to be almost entirely unresolved jal/branch/data relocations
(each function is still assembled standalone), not codegen differences --
this doesn't replace a real per-function matching workflow, just gives a
whole-object sanity number after toolchain/asm changes.

Usage: python tools/check_match.py build-sn/core_text.o core.text
       python tools/check_match.py build-sn/text.o text
(second arg is the retail ELF section name to compare against)
"""
import sys
from elftools.elf.elffile import ELFFile

BASEROM = "baserom/SCES_509.16"


def main() -> None:
    if len(sys.argv) != 3:
        print(__doc__)
        raise SystemExit(1)
    obj_path, section_name = sys.argv[1], sys.argv[2]

    with open(BASEROM, "rb") as f:
        orig = ELFFile(f).get_section_by_name(section_name).data()
    with open(obj_path, "rb") as f:
        ours = ELFFile(f).get_section_by_name(".text").data()

    n = min(len(orig), len(ours))
    mismatches = sum(1 for i in range(n) if orig[i] != ours[i])
    print(f"{obj_path} vs retail '{section_name}':")
    print(f"  sizes: retail={len(orig)} ours={len(ours)}")
    print(f"  byte mismatches: {mismatches}/{n} ({100 * mismatches / n:.2f}%)")


if __name__ == "__main__":
    main()
