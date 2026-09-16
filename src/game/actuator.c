#include "common.h"
#include "structs.h"

/*
 * actuator.cpp in the original source; text 0x1E9080-0x1E94E8.
 * Name and boundary from the NTSC split in bordplate's RC1 project
 * (codeberg.org/bordplate/RC1), mapped to PAL by matching function
 * sizes -- see docs/DECOMP_PROGRESS.md. Compiled as C for now.
 */

INCLUDE_ASM("asm/nonmatchings/text", func_001E9080);

INCLUDE_ASM("asm/nonmatchings/text", func_001E9088);

INCLUDE_ASM("asm/nonmatchings/text", func_001E94A0);

/*
 * Reverted (10/24). Semantics are certain:
 *     *(int *)&D_0015EF74 = D_0015EF8C;   (gp -0x7D8C -> 0x15EF74)
 *     D_0015F020 = 0;
 * Blocked by the global-STORE addressing form, not by source shape:
 * retail stores to a non-SDA global via the assembler macro form
 * (lui $1,%hi / sw ..,%lo($1) -- i.e. $at), while this compiler emits
 * split %hi/%lo into an allocated register. See the "global store
 * addressing" entry in docs/DECOMP_PROGRESS.md -- -mno-split-addresses
 * produces retail's store form but breaks global LOADS, which retail
 * emits in split form, so neither setting matches both.
 * NOTE also carries 8 bytes of post-endlabel padding that the next
 * stub's .align 3 does NOT absorb (it ends 16-aligned), so a future
 * attempt must emit that padding explicitly or it will drift everything
 * after it.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001E94A8);

INCLUDE_ASM("asm/nonmatchings/text", func_001E94C8);
