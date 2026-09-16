#include "common.h"
#include "structs.h"

/*
 * bmain.cpp in the original source; text 0x1E9808-0x1E9E70.
 * Name and boundary from the NTSC split in bordplate's RC1 project
 * (codeberg.org/bordplate/RC1), mapped to PAL by matching function
 * sizes -- see docs/DECOMP_PROGRESS.md. Compiled as C for now.
 */

INCLUDE_ASM("asm/nonmatchings/text", func_001E9808);

INCLUDE_ASM("asm/nonmatchings/text", func_001E99D8);
