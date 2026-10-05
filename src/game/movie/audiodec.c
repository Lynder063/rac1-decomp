#include "common.h"
#include "structs.h"

/*
 * movie/audiodec.cpp in the original source; text 0x23BFA0-0x23C5E0.
 * Name and boundary from the NTSC split of this game, mapped to PAL by matching function
 * sizes -- see docs/DECOMP_PROGRESS.md. Compiled as C for now.
 */

INCLUDE_ASM("asm/nonmatchings/text", func_0023BFA0); /* audioDecCreate(_AudioDec *, unsigned char *, int, sceMpegStrType) */
/* AudioDec: only the fields these functions touch are known. */
typedef struct AudioDec {
    int pending;        /* non-zero while data waits for the SPU */
    char pad4[0x4C];
    int bytes;          /* 0x50 */
} AudioDec;

extern int func_0012F220(void);

/* audioDecDelete(_AudioDec *) -- calls func_0012F220 and returns 1. */
int func_0023C060(AudioDec *dec) {
    func_0012F220();
    return 1;
}
LINKER_REMNANT("asm/remnants/text", func_0023C080);
INCLUDE_ASM("asm/nonmatchings/text", func_0023C088); /* audioDecStart */
INCLUDE_ASM("asm/nonmatchings/text", func_0023C0E0); /* audioDecReset(_AudioDec *) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023C128); /* audioDecBeginPut(_AudioDec *, unsigned char **, int *, unsigned char **, int *) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023C1F8); /* audioDecEndPut(_AudioDec *, int) */
/* audioDecIsPageFull -- true once 0x1000 bytes or more are queued. */
int func_0023C2B0(AudioDec *dec) {
    return dec->bytes >= 0x1000;
}
extern void func_0023C390(AudioDec *);

/* audioDecSend -- sendADPCM while data is pending. */
void func_0023C2C0(AudioDec *dec) {
    if (dec->pending) {
        func_0023C390(dec);
    }
}
INCLUDE_ASM("asm/nonmatchings/text", func_0023C2E8); /* sendToSPU(_AudioDec *, unsigned char *, int, int) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023C390); /* sendADPCM(_AudioDec *) */
