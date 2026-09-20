#include "common.h"
#include "structs.h"

/*
 * loaders.cpp in the original source; text 0x202AA8-0x205520.
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
extern int func_001FE4D0(void);
extern char D_00199A68[];
extern short D_0015F780;
extern int D_001941CC NOT_SDA;
extern int D_0019A4E8 NOT_SDA;
extern int func_001FF668(int);
typedef struct {
    char b[0x13];
} Cfg13;
extern Cfg13 D_0019A540 NOT_SDA;
extern Cfg13 D_001E7DD8 NOT_SDA;
extern int func_00116810(void);
extern void func_001166FC(Cfg13 *, void *);
extern short D_0015F9D0;
extern void func_00201960(int, int, int, int, int);
extern void func_002023E0(int);
extern void func_002027C0(int);

INCLUDE_ASM("asm/nonmatchings/text", func_00202AA8);

INCLUDE_ASM("asm/nonmatchings/text", func_00202EF8);

INCLUDE_ASM("asm/nonmatchings/text", func_00202F00); /* ParseParticleTexs */

INCLUDE_ASM("asm/nonmatchings/text", func_00203038);

INCLUDE_ASM("asm/nonmatchings/text", func_00203118);

INCLUDE_ASM("asm/nonmatchings/text", func_002032D0); /* LoadHudBanks(void) */

/*
 * The heap cursor. Retail reaches it with the one-register macro form
 * (both the load and the $at store), so it is MACRO_ADDR; D_0019A500
 * next to it is the ordinary split lui/%lo, so it stays plain.
 *
 * func_00203548 is 3/100: two addu operand orders are reversed
 * (`addu $2,$4,$2` and the $3/$4 pair in the tail). Every spelling of
 * both address expressions -- base-first, index-first, array indexing
 * on a cast pointer, the base hoisted into a local -- compiles to the
 * identical instruction stream, so this is the known
 * operand-order-is-not-source-steerable case.
 */
extern int *D_0015EF4C MACRO_ADDR;
extern char *D_0019A500;
extern void func_0020C468(int);

/* LoadCompressedHudBank(int, char *) */
void func_00203548(int idx, int size) {
    if (((size + 0xF) & 0xFFFFFFF0) != 0) {
        int *base = D_0015EF4C;
        func_0020C468(*(int *)((char *)base + idx * 8 + 0x28) + (int)base);
    }
    *(int *)(D_0019A500 + idx * 4 + 0x74) = 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_002035B0);

INCLUDE_ASM("asm/nonmatchings/text", func_00203808); /* SetUpVisGifViewer(int *, int, int, int, int, int) */

INCLUDE_ASM("asm/nonmatchings/text", func_00203958);

void func_00203B18(char *arg0, int idx) {
    char *obj;
    int *p;
    int i;
    arg0 += idx * 4;
    obj = *(char **)(arg0 + 0x48);
    if (*(int *)(obj + 0x14) != 0) {
        *(int *)(obj + 0x14) = (int)(obj + *(int *)(obj + 0x14));
    }
    if (*(unsigned char *)(obj + 0x10) != 0) {
        i = 0;
        p = (int *)(obj + 0x1C);
        do {
            *p = (int)(obj + *p);
            i++;
            p++;
        } while (i < *(unsigned char *)(obj + 0x10));
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_00203B70);

INCLUDE_ASM("asm/nonmatchings/text", func_00203E78);

INCLUDE_ASM("asm/nonmatchings/text", func_00203F68);

INCLUDE_ASM("asm/nonmatchings/text", func_00204340);

INCLUDE_ASM("asm/nonmatchings/text", func_00204918);

extern int D_00137C80[];
extern char D_1FF7FF0[];
extern int func_002175C8(int, int, int);

int func_00204BE8(void) {
    int *hdr = D_00137C80;
    int want = ((hdr[0x13F] << 11) + 0x1057) & 0xFFFFF000;

    D_0015EF4C = (int *)(((int)D_1FF7FF0 - want) & -0x10);
    *D_0015EF4C = 0x60;
    func_002175C8((int)D_0015EF4C + *D_0015EF4C, hdr[0x13E], hdr[0x13F]);
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00204C60);

INCLUDE_ASM("asm/nonmatchings/text", func_00204FC0);

INCLUDE_ASM("asm/nonmatchings/text", func_00205218);

extern void func_00204FC0(void *);
extern int D_0018CC20 NOT_SDA;
extern int D_001941C8 NOT_SDA;
extern int D_0016100C;

/* ParseSpaceSceneChunk(int) */
void func_00205220(int arg0) {
    char *base = (char *)&D_0018CC20;
    char *p = base + arg0 * 4;
    *(int *)(base + 0x5C) = *(int *)(p + 0x60);
    func_00204FC0(p);
    *(int *)(base + 0x5C) = D_0016100C + D_001941C8;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00205270);
