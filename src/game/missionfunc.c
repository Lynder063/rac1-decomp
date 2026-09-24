#include "common.h"
#include "structs.h"

/*
 * missionfunc.cpp in the original source; text 0x20C7A0-0x20D348.
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
extern void func_00204FC0(void *);
extern int D_0018CC20 NOT_SDA;
extern int D_001941C8 NOT_SDA;
extern int D_0016100C;
extern int D_001A0468[];
extern void func_00205830(int a, int b);
typedef struct {
    int _pad0[0x9E];
    int use[5];   /* +0x278 */
    int flags[5]; /* +0x28C */
    int sel;      /* +0x2A0 -- index of the active slot, -1 for none */
    int size[5];  /* +0x2A4 */
} PadSlots;
extern PadSlots D_001A01F0_slots __asm__("D_001A01F0");
extern int D_001A01F0[];
extern int *D_001602E0;
extern unsigned char D_0013D49C NOT_SDA;
extern unsigned char D_0013D49D NOT_SDA;
extern unsigned char D_0013D4A5 NOT_SDA;
extern short D_0015FE24;
extern unsigned char D_0013D4AC NOT_SDA;
extern unsigned char D_0013D4AD NOT_SDA;
extern unsigned char D_0013D4AE NOT_SDA;
extern unsigned char D_0013D4AF NOT_SDA;
extern unsigned char D_0013D4B5 NOT_SDA;
extern int D_001A04B4 NOT_SDA;
extern unsigned char D_0013D4C5 NOT_SDA;
extern int D_001414DC NOT_SDA;
extern unsigned char D_0013D4C0 NOT_SDA;
extern unsigned char D_0013D4C1 NOT_SDA;
extern unsigned char D_0013D4C2 NOT_SDA;
extern unsigned char D_0013D4D3 NOT_SDA;
extern unsigned char D_0013D4D4 NOT_SDA;
extern unsigned char D_0013D4D5 NOT_SDA;
extern unsigned char D_0013D4E0;
extern unsigned char D_0013D4DC NOT_SDA;
extern unsigned char D_0013D4DD NOT_SDA;
extern unsigned char D_0013D4DE NOT_SDA;
extern unsigned char D_0013D4DF NOT_SDA;
extern unsigned char D_0013D4E1 NOT_SDA;
extern unsigned char D_0013D4E9 NOT_SDA;
extern unsigned char D_0013D502 NOT_SDA;
extern unsigned char D_0013D503 NOT_SDA;
extern unsigned char D_0013D504 NOT_SDA;
extern unsigned char D_0013D505 NOT_SDA;
extern unsigned char D_0013D50F NOT_SDA;
extern int D_0013D668[];
extern void func_00209040(void);
extern int func_001FAA28(void *dst, int size, int a, int b);
extern void func_00208860(void *dst);
extern short D_0015EE84;
extern int D_0015EE84_far __asm__("D_0015EE84") NOT_SDA;
extern int D_001A0218[] NOT_SDA;
extern void func_00208458(void *, unsigned char *, int);
extern void func_00208688(void *, unsigned char *);
extern char D_0013D390[];
extern short D_0015EFB0;
extern int D_0015EFB4;
extern int D_001A05C0[];
extern int D_001A08C0[];
extern int func_0020BAD8(int *p);
extern int func_0020BBC8(void *dst, int i, int *table);
extern int func_001236F0(void);
extern int func_001E9730();
extern char D_001E8690[];

INCLUDE_ASM("asm/nonmatchings/text", func_0020C7A0);

extern unsigned char D_0013DE48[];
extern unsigned char D_0013D5C8_b[] __asm__("D_0013D5C8");
extern unsigned char D_0013D5F0[];
typedef struct { int a, b, c, d; } Rec16_C940;
extern Rec16_C940 D_0013D6B8_r[] __asm__("D_0013D6B8");
extern unsigned char D_0013D490[];
extern unsigned char D_0014BFC0[][4];

/* A 10-case switch; the explicit `case 9: break;` keeps retail's table. */
int func_0020C940(short type, int arg) {
    switch (type) {
    case 0:
        return 1;
    case 1:
        return D_0013DE48[arg] != 0;
    case 2:
        return D_0013D5C8_b[arg] != 0;
    case 3:
        return D_0013D5F0[arg] != 0;
    case 4:
        if (arg < 0x79) return D_0013D6B8_r[arg].d != 0;
        break;
    case 5:
        if (arg < 0x79) return D_0013D6B8_r[arg].d >= 2;
        break;
    case 6:
        return D_0013D490[arg] != 0;
    case 7:
        return ((int (*)(void))arg)() != 0;
    case 8:
        return D_0014BFC0[arg >> 16][arg & 0xFFFF] != 0;
    case 9:
        break;
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020CA50);

extern int D_0013D844 NOT_SDA;
extern unsigned char D_0013D4A8 NOT_SDA;

int func_0020CB80(void) {
    if (D_0013D844 != 0 && D_0013D4A8 != 0) return 1;
    return 0;
}

extern int D_0013D9B4 NOT_SDA;
extern unsigned char D_0013D490[];

int func_0020CBA8(void) {
    if (D_0013D9B4 != 0 && D_0013D490[0x20] != 0 && D_0013D490[0x21] != 0) return 1;
    return 0;
}

extern unsigned char D_0013D5CA NOT_SDA;
extern int D_0013D6B8 NOT_SDA;

int func_0020CBE0(void) {
    char *base = (char *)&D_0013D6B8;
    if (*(int *)(base + 0x40C) != 0 && *(int *)(base + 0x3FC) != 0) return 1;
    return 0;
}

extern int D_0013DAE4 NOT_SDA;
extern unsigned char D_0013D4E5 NOT_SDA;

int func_0020CC10(void) {
    if (D_0013DAE4 != 0 && D_0013D4E5 != 0) return 1;
    return 0;
}

extern int D_0013DB24 NOT_SDA;
extern unsigned char D_0013D4F1 NOT_SDA;

int func_0020CC38(void) {
    if (D_0013DB24 != 0 && D_0013D4F1 != 0) return 1;
    return 0;
}

extern int D_0013DC34 NOT_SDA;
extern unsigned char D_0013D605 NOT_SDA;

int func_0020CC60(void) {
    if (D_0013DC34 != 0 && D_0013D605 != 0) return 1;
    return 0;
}

extern int D_0013D5C8 NOT_SDA;

int func_0020CC88(void) {
    unsigned char *base = (unsigned char *)&D_0013D5C8;
    if (base[0x21] != 0 && base[0x1F] != 0) return 1;
    return 0;
}

int func_0020CCB8(int arg0) {
    unsigned char *base = (unsigned char *)&D_0013D5C8;
    return base[arg0] != 0;
}

/* Two flat `&&` returns over D_0013D6B8_r[20/24/22].d; retail's reuse of
   the %hi register comes out by itself. */
int func_0020CCD0(void) {
    if (D_0013D6B8_r[20].d != 0 && D_0013D6B8_r[24].d == 0) {
        return 1;
    }
    if (D_0013D6B8_r[24].d != 0 && D_0013D5CA != 0 && D_0013D6B8_r[22].d == 0) {
        return 2;
    }
    return 0;
}

extern int D_0013D9B4 NOT_SDA;
extern unsigned char D_0013D4B0 NOT_SDA;

int func_0020CD28(void) {
    if (D_0013D9B4 != 0) {
        return D_0013D4B0 ? 2 : 1;
    }
    return 0;
}

extern unsigned char D_0013DE55 NOT_SDA;

int func_0020CD58(void) {
    if (D_0013D4F1 != 0 && D_0013DE55 != 0) return 1;
    return 0;
}

extern unsigned char D_0013D5DD NOT_SDA;

int func_0020CD80(void) {
    if (D_0013D5DD != 0) return 2;
    return D_0013DC34 != 0;
}

extern unsigned char D_0013D5E7 NOT_SDA;

int func_0020CDA8(void) {
    return D_0013D5E7 != 0;
}

int func_0020CDB8(void) {
    unsigned char *base = (unsigned char *)&D_0013D5C8;
    if (base[0x1F] != 0) return 2;
    return base[0x21] != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020CDE0);
