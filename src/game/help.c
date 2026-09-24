#include "common.h"
#include "structs.h"

/*
 * help.cpp in the original source; text 0x1FDF10-0x1FF668.
 * Name and boundary from the NTSC split in bordplate's RC1 project
 * (codeberg.org/bordplate/RC1), mapped to PAL by matching function
 * sizes -- see docs/DECOMP_PROGRESS.md. Compiled as C for now.
 */

/* Declarations in scope here before the split. */
extern char D_0013E650[];
extern int D_0015F694;
extern void func_001F9A98(void *, void *, int);
extern char D_00189310[];
extern char D_001899D0[];
extern void *D_001871C0 NOT_SDA;
typedef struct {
    char unk_00[8];
    void (*fn_08)(void *);
    char unk_0C[4];
    void (*fn_10)(void *);
} DispatchRec;
extern DispatchRec D_001E8F80[];
extern int D_0018A3B0[];
extern void func_001F99B0();
extern void func_001F2BC8(void);
extern int D_0018C434 NOT_SDA;
extern char D_001940C0[];
extern long D_00151888[3];
extern int D_0015F6FC;
extern short D_0015F534;
extern void func_001FB530(void);
extern void func_001F3D78(void);
extern int D_0015F564;
extern int D_0018DD40[];
extern int D_0018DC40[];
extern short D_0015F59C;
extern int func_001F65B0(unsigned char *arg0, int arg1, void *arg2);
extern unsigned char D_001DF3D0[];
extern unsigned char D_001DF770[];
extern unsigned char D_001DFB10[];
extern void func_001F6668(void *, void *, void *, void *, void *, int,
                          unsigned char *);
extern int func_001F6600(unsigned char *, int);
extern int func_001F6620(unsigned char *, int);
extern int func_001F4868(int);
extern void func_001F7070(void *, void *, void *, void *, int, unsigned char *);
extern void func_001FB498(void);
extern void func_001F3008(void);
extern void func_001F3140(void);
extern int D_0018E840[];
extern long D_00152178 NOT_SDA;

extern int D_001941C0[];
extern int D_0016100C MACRO_ADDR;

/* Start of a `size`-byte block at the end of each of the two VU1 chain
   buffers (D_001941C0[1]/[2], D_0016100C bytes long, as VU1_initChain
   uses them). Both outputs are 0 and the result -1 when size is over
   0x20000. */
/* Returns int; the size is unsigned and D_0016100C MACRO_ADDR. */
int func_001FDF10(unsigned int size, int *out1, int *out2) {
    if (size > 0x20000) {
        *out1 = 0;
        *out2 = 0;
        return -1;
    }
    *out1 = D_001941C0[1] + D_0016100C - size;
    *out2 = D_001941C0[2] + D_0016100C - size;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001FDF78);

typedef struct {
    int state;    /* 0x00 */
    int x04;      /* 0x04 */
    int pad[7];   /* 0x08 */
    int x24;      /* 0x24 */
} HelpState;
extern char D_001997D0[];

/* Advances the help screen's state (D_001997D0). Every access goes
   through the global, and cases 6 and 7 are spelled out: the jump table
   has eight entries. */
void func_001FE438(void) {
    switch (((HelpState *)D_001997D0)->state) {
    case 0:
        ((HelpState *)D_001997D0)->x24 = -1;
        break;
    case 1:
    case 2:
        ((HelpState *)D_001997D0)->state = 7;
        ((HelpState *)D_001997D0)->x04 = 0;
        break;
    case 3:
        ((HelpState *)D_001997D0)->state = 7;
        ((HelpState *)D_001997D0)->x04 = 0;
        break;
    case 4:
        ((HelpState *)D_001997D0)->state = 6;
        ((HelpState *)D_001997D0)->x04 = 4 - ((HelpState *)D_001997D0)->x04;
        break;
    case 5:
        ((HelpState *)D_001997D0)->state = 6;
        ((HelpState *)D_001997D0)->x04 = 0;
        break;
    case 6:
    case 7:
        break;
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_001FE4C0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FE4D0); /* Help_FindIndex */

extern int func_001FE4D0(void);
extern char D_00199A68[];
extern short D_0015F780;              /* SDA, gp -0x7580 */

/* msg_string(int) */
void *func_001FE540(void) {
    int i = func_001FE4D0();
    if (i >= 0) {
        return *(void **)(*(int *)&D_0015F780 + i * 16);
    }
    return D_00199A68;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001FE580);

INCLUDE_ASM("asm/nonmatchings/text", func_001FE588);

INCLUDE_ASM("asm/nonmatchings/text", func_001FE6C0); /* Help_Update */

INCLUDE_ASM("asm/nonmatchings/text", func_001FF0C8); /* Help_DrawPrompt */

INCLUDE_ASM("asm/nonmatchings/text", func_001FF1B0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF4F8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF560);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF660);
