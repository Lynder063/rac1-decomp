#include "common.h"
#include "structs.h"

/*
 * movie/videodec.cpp in the original source; text 0x23DE98-0x23E560.
 * Name and boundary from the NTSC split of this game, mapped to PAL by matching function
 * sizes -- see docs/DECOMP_PROGRESS.md. Compiled as C for now.
 */

INCLUDE_ASM("asm/nonmatchings/text", func_0023DE98); /* videoDecCreate(VideoDec *, unsigned char *, int, unsigned long long *, unsigned long long *, int, TimeStamp *, int) */
LINKER_REMNANT("asm/remnants/text", func_0023DF98);
INCLUDE_ASM("asm/nonmatchings/text", func_0023DFA0); /* videoDecSetStream(VideoDec *, int, int, int (*)(sceMpeg *, sceMpegCbData *, void *), void *) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023DFC0); /* videoDecBeginPut(VideoDec *, unsigned char **, int *, unsigned char **, int *) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023DFE0); /* videoDecEndPut(VideoDec *) */
/* ClearStateField - clears a field at offset 0xA8 */
void func_0023E000(int *a) {
    a[0x2A] = 0;
}
INCLUDE_ASM("asm/nonmatchings/text", func_0023E008); /* videoDecDelete(VideoDec *) */
/* SetStateField - sets field at offset 0xA8 to 1 */
void func_0023E040(int *a) {
    a[0x2A] = 1;
}
/* GetStateField - returns field at offset 0xA8 */
int func_0023E050(int *a) {
    return a[0x2A];
}
INCLUDE_ASM("asm/nonmatchings/text", func_0023E058); /* videoDecSetState(VideoDec *, unsigned int) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023E068); /* videoDecPutTs(VideoDec *, long, long, unsigned char *, int) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023E0B0); /* videoDecInputCount(VideoDec *) */
LINKER_REMNANT("asm/remnants/text", func_0023E0D0);
INCLUDE_ASM("asm/nonmatchings/text", func_0023E0D8); /* videoDecFlush(VideoDec *) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023E1B0); /* videoDecIsFlushed(VideoDec *) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023E1F8); /* videoDecMain(void *) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023E298); /* decBs0(VideoDec *) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023E450); /* mpegError(sceMpeg *, sceMpegCbDataError *, void *) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023E478); /* mpegNodata(sceMpeg *, sceMpegCbData *, void *) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023E4B0);
INCLUDE_ASM("asm/nonmatchings/text", func_0023E4E0);
INCLUDE_ASM("asm/nonmatchings/text", func_0023E510);
