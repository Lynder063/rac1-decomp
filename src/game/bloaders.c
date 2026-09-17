#include "common.h"
#include "structs.h"

/*
 * bloaders.cpp in the original source; text 0x1E94E8-0x1E9730.
 * Name and boundary from the NTSC split in bordplate's RC1 project
 * (codeberg.org/bordplate/RC1), mapped to PAL by matching function
 * sizes -- see docs/DECOMP_PROGRESS.md. Compiled as C for now.
 */

INCLUDE_ASM("asm/nonmatchings/text", func_001E94E8); /* LoadPifAsPSMT8H */

INCLUDE_ASM("asm/nonmatchings/text", func_001E96B8); /* LoadDebugFont */

INCLUDE_ASM("asm/nonmatchings/text", func_001E9728);
