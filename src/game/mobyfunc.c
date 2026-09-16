#include "common.h"
#include "structs.h"

/*
 * mobyfunc.cpp in the original source; text 0x20D348-0x20E6B8.
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
extern int D_0013D844 NOT_SDA;
extern unsigned char D_0013D4A8 NOT_SDA;
extern int D_0013D9B4 NOT_SDA;
extern unsigned char D_0013D490[];
extern unsigned char D_0013D5CA NOT_SDA;
extern int D_0013D6B8 NOT_SDA;
extern int D_0013DAE4 NOT_SDA;
extern unsigned char D_0013D4E5 NOT_SDA;
extern int D_0013DB24 NOT_SDA;
extern unsigned char D_0013D4F1 NOT_SDA;
extern int D_0013DC34 NOT_SDA;
extern unsigned char D_0013D605 NOT_SDA;
extern int D_0013D5C8 NOT_SDA;
extern unsigned char D_0013D4B0 NOT_SDA;
extern unsigned char D_0013DE55 NOT_SDA;
extern unsigned char D_0013D5DD NOT_SDA;
extern unsigned char D_0013D5E7 NOT_SDA;

INCLUDE_ASM("asm/nonmatchings/text", func_0020D348);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D440);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D678);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D6D0);

/*
 * Reverted. Semantics are certain (the object at arg0 caches an actor
 * slot index in byte 0x7D and a wanted index in byte 0x7C):
 *
 *   void func_0020D790(void *arg0) {
 *       unsigned char *s = (unsigned char *)arg0;
 *       unsigned char id = s[0x7D];
 *       if (id != 0xFF) {
 *           char *e = D_0013E650 + id * 0x70;          // 0x70 stride
 *           if (*(int *)(e + 0x88) != (int)arg0) {
 *               s[0x7D] = 0xFF;
 *           } else if (*(short *)(e + 0x7E) != s[0x7C]) {
 *               func_0022EAB0(id);
 *               s[0x7D] = 0xFF;
 *           }
 *       } else if (s[0x7C] != 0xFF) {
 *           func_0022ED80(s[0x7C], 4, arg0);
 *           s[0x7D] = s[0x7C];
 *       }
 *   }
 *
 * That spelling is the right size (0x98) and 79/152 bytes off. The whole
 * residual is one register copy: retail loads byte 0x7D into $v1, keeps
 * $v1 for the equality tests and copies it into $a1 for use as the table
 * index and as func_0022EAB0's argument, so everything after the first
 * branch sits one word later than ours.
 *
 * Three spellings were tried to get that copy back, with counts:
 *   - `unsigned char id` used for both roles          79/152, size OK
 *   - separate `unsigned char j = s[0x7C]` in the else 31/38 words,
 *     and 8 bytes SHORT (it also flips $s0/$s1 and grows the frame)
 *   - `int id = s[0x7D]` with the tests spelled on
 *     `s[0x7D]` directly                              17/38 words, but
 *     4 bytes LONG -- this one does produce retail's copy, in the
 *     opposite direction ($a1 loaded, copied to $v1)
 * The third is the closest and shows the copy is reachable from C; what
 * is not yet found is the spelling that makes the COMPARISON operand the
 * load's destination and the index operand the copy. Left as a stub
 * rather than a size mismatch.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0020D790);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D828);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D830);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D928);

/* Attach a fresh node to arg0's list at +0x64, seeded with 1.0f scales. */
void func_0020D960(char *arg0, int arg1, unsigned char *arg2) {
    char *e;
    char *f;
    char *tbl;
    int idx;

    if (arg2[1] != 0) {
        return;
    }
    arg2[0] = (char)arg1;
    arg2[1] = 1;
    *(float *)(arg2 + 0x1C) = 1.0f;
    *(float *)(arg2 + 0x20) = 1.0f;
    *(float *)(arg2 + 0x24) = 1.0f;
    *(float *)(arg2 + 0x28) = 1.0f;

    tbl = *(char **)(*(char **)(arg0 + 0x24) + 0x1C);
    idx = arg2[0];
    e = *(char **)(tbl + idx * 4 + 4);
    f = *(unsigned char *)e + e;
    *(int *)(arg2 + 4) = (*(unsigned char *)(f + 4) << 6) + 0x70000000;

    *(int *)(arg2 + 8) = *(int *)(arg0 + 0x64);
    *(int *)(arg0 + 0x64) = (int)arg2;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020D9D8);

extern int D_001B2F40[];

int func_0020DA68(int v) {
    int i = 0;
    int *p = D_001B2F40;
    do {
        if (*p == 0 || *p == v) {
            *p = v;
            return i;
        }
        i++;
        p++;
    } while (i < 0x10);
    return -1;
}

void func_0020DAB0(void) {
    int sentinel = 0xFF;
    char **p = (char **)D_001B2F40;
    int i = 0xF;
    do {
        char *e = *p;
        i--;
        if (e != 0) {
            if ((*(unsigned char *)(e + 0x20) & 0x80) != 0 ||
                *(unsigned char *)(e + 0x52) != sentinel) {
                *p = 0;
            }
        }
        p++;
    } while (i >= 0);
}

/* func_001FA460 is declared above with a single argument, for the
   func_00215328 site; this one passes a source as well. */
extern void func_001FA460_2(void *, void *) __asm__("func_001FA460");
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_002116A0(void *, int, int *, void *);
extern void func_001FA540(void *, void *, void *);
extern void func_00211548(void *, int, void *, void *);
extern void func_001F9EC0(void *, void *, void *);

/* Scale the single vertex block at arg2+0x30 by the object's 0x2C field
   in 1/1024 units, then run it through the two per-object transforms at
   arg0+0xC0 and arg0+0x10. 0x3A800000 is exactly 2^-10. */
void func_0020DAF8(char *arg0, int arg1, char *arg2) {
    char buf[0x40];
    int n;
    char *v;
    float s;

    s = *(float *)(arg0 + 0x2C) * 0.0009765625f;
    n = arg1;
    func_002116A0(arg0, 1, &n, arg2);
    v = arg2 + 0x30;
    func_001F9C30(v, v, s);
    func_001FA460_2(buf, arg0 + 0xC0);
    func_001FA540(arg2, buf, arg2);
    func_001F9BD8(v, v, arg0 + 0x10);
}

/* The many-vertex form of the same thing: arg1 blocks of 0x10 bytes
   starting at arg3, each scaled and transformed in place. */
void func_0020DB98(char *arg0, int arg1, void *arg2, char *arg3) {
    char *v = arg3;
    int n = arg1;
    float s;

    s = *(float *)(arg0 + 0x2C) * 0.0009765625f;
    func_00211548(arg0, arg1, arg2, arg3);
    if (n > 0) {
        do {
            func_001F9C30(v, v, s);
            n--;
            func_001F9EC0(v, v, arg0 + 0xC0);
            func_001F9BD8(v, v, arg0 + 0x10);
            v += 0x10;
        } while (n != 0);
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020DC38);

INCLUDE_ASM("asm/nonmatchings/text", func_0020DC40);

INCLUDE_ASM("asm/nonmatchings/text", func_0020DD48);

extern int D_001414D0 NOT_SDA;
extern float D_001CAE00[] NOT_SDA;
extern void func_0020E360(void *, void *);
extern float func_001FA058(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);

void func_0020DE20(void) {
    float buf[4];
    float a;

    func_0020E360((void *)D_001414D0, buf);
    a = func_001FA058(buf[0], buf[1]);
    D_001CAE00[0] = func_001F9F90(a) * 0.14f;
    D_001CAE00[1] = func_001F9FA8(a) * 0.14f;
    D_001CAE00[2] = -0.99f;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020DEB0);

extern void func_00118D80(int);
extern void func_00212578(int, int);
extern char D_00165600[];
extern int D_0015F718;
extern short D_0015F71C;              /* SDA, gp -0x75E4 */

/*
 * Close, not exact (9/68), same size so harmless to anything after it.
 * Same instructions as retail; the residual is the allocator's
 * destination-reuse choice again -- retail emits lui $4 /
 * lw $4,%lo(D_0015F718)($4) and schedules the SDA load into the jal
 * delay slot, while this compiler materializes into $2, loads the SDA
 * value into $5 first and puts the %lo load in the delay slot.
 * Binding the first argument to a local to force its evaluation order
 * was tried and changed nothing.
 */
void func_0020DFF8(void) {
    func_00118D80(0);
    func_001F9A98((void *)0x70003800, D_00165600, 0x800);
    func_00212578(D_0015F718, *(int *)&D_0015F71C);
}


void func_0020E040(void) {
    func_001F99B0((void *)0x70003A00, (void *)0x40000000, 0x380);
}

extern void func_001F9A98(void *, void *, int);
extern char D_001B3200[];

void func_0020E068(void) {
    func_001F9A98(D_001B3200, (void *)0x70003A00, 0x380);
}

void func_0020E098(void) {
    func_001F9A98((void *)0x70003A00, D_001B3200, 0x380);
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020E0C8);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E180);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E200);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E2B0);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E330);

/*
 * Close but not exact (13/32 bytes): packs 4 values into a 64-bit
 * field: *(long*)(arg0+0x38) = (arg1<<32) | arg2 | (arg3<<8) | (arg4<<16).
 * Same operations/order as retail (confirmed via objdump: same dsll32/
 * dsll/or sequence), but the widen-and-shift-by-32 for arg1 lands in a
 * different register than retail. Not investigated to a fix -- same
 * general family as the scratch-register-allocation-choice question,
 * on the widening step specifically.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0020E340);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E360);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E3D0);
