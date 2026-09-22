#include "common.h"
#include "structs.h"

/*
 * bloaders.cpp in the original source; text 0x1E94E8-0x1E9730.
 * Name and boundary from the NTSC split in bordplate's RC1 project
 * (codeberg.org/bordplate/RC1), mapped to PAL by matching function
 * sizes -- see docs/DECOMP_PROGRESS.md. Compiled as C for now.
 */

INCLUDE_ASM("asm/nonmatchings/text", func_001E94E8); /* LoadPifAsPSMT8H */

extern int D_00137C80[];
extern void func_002176C8(void *, int, int);
extern int D_0015EF88;
extern void func_001E94E8(void *arg0, void *arg1, int arg2, int arg3);
extern long D_0015EFC8;
extern unsigned char D_001AAF40[];

/*
 * Same-size near-miss (27/108, kept). LoadDebugFont: forwards the
 * D_00137C80[2]/[3] stream position to func_002176C8, then loads a
 * PSMT8H texture (D_001AAF40) into VRAM via func_001E94E8, caching
 * the returned descriptor's first field into D_0015EFC8. Residuals
 * are both scheduling/allocator choices: the `D_0015EF88 + 0xC0000`
 * address computation is interleaved differently with the `0x3FFC00`
 * constant build (tried both operand orders, no change), and the
 * final `D_0015EFC8` store computes its address into $at after the
 * stack restore where this compiler always picks an ordinary
 * register and hoists the `lui` earlier.
 */
void func_001E96B8(void) {
    long localbuf[3];

    func_002176C8(D_001AAF40, D_00137C80[2], D_00137C80[3]);
    func_001E94E8(D_001AAF40, localbuf, D_0015EF88 + 0xC0000, 0x3FFC00);
    D_0015EFC8 = localbuf[0];
}

INCLUDE_ASM("asm/nonmatchings/text", func_001E9728);
