#include "common.h"
#include "structs.h"

/*
 * music.cpp in the original source; text 0x2161E0-0x217588.
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
extern int D_001B2F40[];
extern void func_001FA460_2(void *, void *) __asm__("func_001FA460");
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_002116A0(void *, int, int *, void *);
extern void func_001FA540(void *, void *, void *);
extern void func_00211548(void *, int, void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern int D_001414D0 NOT_SDA;
extern float D_001CAE00[] NOT_SDA;
extern void func_0020E360(void *, void *);
extern float func_001FA058(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_00118D80(int);
extern void func_00212578(int, int);
extern char D_00165600[];
extern int D_0015F718;
extern short D_0015F71C;
extern char D_001B3200[];
extern int func_001160D8(void);
extern float func_00214158(void);
extern float func_002140F8(float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9DC0(void *, void *, float);
extern void func_001FA460(void *);
extern void func_002150B0(void *, void *);
extern void func_001FA480(void *, void *);
extern float func_0020D830(void);
extern float func_00215A98(int, float);
extern unsigned char D_0014BFC0[];
extern unsigned char D_0013E620[];
extern unsigned char D_0013D510[];

INCLUDE_ASM("asm/nonmatchings/text", func_002161E0);

extern void func_0012F068(void *);
extern void func_002177F0(int);

void func_00216270(void) {
    func_0012F068(func_002177F0);
}

INCLUDE_ASM("asm/nonmatchings/text", func_00216290);

INCLUDE_ASM("asm/nonmatchings/text", func_00216368);

INCLUDE_ASM("asm/nonmatchings/text", func_00216450);

INCLUDE_ASM("asm/nonmatchings/text", func_00216528);

/*
 * REVERTED -- both are a SIZE mismatch at every spelling tried, so
 * neither can be left in. Decode is certain and the two are identical
 * apart from the table they index; they are two rungs of the
 * func_002167C0 sound-id ladder (20000..29999 and 10000..19999):
 *
 *   extern int D_00137C80[];
 *   extern short D_001517D0_snd[] __asm__("D_001517D0");
 *   extern void func_00217860(int, long);
 *   extern void func_0012ED48(int, int, int, int, int, int, int, int,
 *                             int, void (*)(int, long), long);
 *
 *   void func_00216620(int arg0, int arg1, int arg2) {
 *       char *base = (char *)D_00137C80;
 *       int i = arg0 - 0x4E20;          // 0x2710 in func_002166F0
 *       int h;
 *       char *s;
 *
 *       h = *(int *)(base + i * 8 + 0x2988);   // 0x1A0 in func_002166F0
 *       if (h == 0) {
 *           return;
 *       }
 *       s = (char *)D_001517D0_snd;
 *       if (*(int *)(s + 0x50) != 0) {
 *           return;
 *       }
 *       *(short *)(s + 0x5A) = 1;
 *       *(int *)(s + 0x64) = 10;
 *       *(int *)(s + 0x68) = 0xBB80;            // 48000 Hz
 *       *(unsigned int *)(s + 0x50) = 0xFFFFFFFF;
 *       *(short *)(s + 0x54) = arg0;
 *       *(short *)(s + 0x58) = arg1;
 *       *(short *)(s + 0x56) = arg2;
 *       *(short *)(s + 0x60) = 0;
 *       func_0012ED48(h, 0, 0, 0, (short)arg2, 0, 2, 0, 0x21,
 *                     func_00217860, (long)(unsigned int)(s + 0x50));
 *   }
 *
 * func_0012ED48's shape is read off its own prologue (asm at
 * func_0012ED40, alternate entry): eight register arguments $4..$11
 * plus three stack arguments at 0x30/0x38/0x40 of ITS frame, i.e. the
 * caller's 0x0/0x8/0x10 -- the last one an `ld`, hence `long`. The
 * callback matches func_00217860, which is already decompiled below
 * and reads its second argument as `(short *)(int)arg1` pointing at
 * D_001517D0+0x50 -- p[5] there is the 0x5A state field written here.
 *
 * NEW LEVER, and the reason this is worth keeping written down:
 * spelling the table access inline as
 *     *(int *)((char *)D_00137C80 + (arg0 - 0x4E20) * 8 + 0x2988)
 * lets GCC fold the whole constant part into the symbol's addend and
 * emit %hi/%lo(D_00137C80-149368) with a zero displacement -- five
 * instructions where retail has six, so the function came out 4 bytes
 * SHORT (200 vs 204). Naming the UNOFFSET base and the index as two
 * separate locals,
 *     char *base = (char *)D_00137C80;
 *     int i = arg0 - 0x4E20;
 *     h = *(int *)(base + i * 8 + 0x2988);
 * blocks the fold and reproduces retail exactly: lui/addiu %hi/%lo of
 * the bare symbol, a separate `addiu $2,$13,-0x4E20`, `sll`, `addu`,
 * and 0x2988 as the load displacement. This is the base-pointer lever
 * extended to a subtracted index, and it is what took these two from
 * 200 to the right 204.
 *
 * What still blocks them, at 204 bytes, is one instruction:
 *   - retail loads the table word straight into $a0 (`lw $a0,10632($v1)`)
 *     and branches on $a0, so it is already in place as the first call
 *     argument;
 *   - this compiler lands it in $a3 and emits `daddu $a0,$a3,$0` before
 *     the jal, because it spends $a0 on the constant 1 destined for
 *     0x5A. Retail spends $5/$7/$9/$11 on those constants and keeps $4
 *     reserved.
 * Every store is in retail's order already (the output store sequence
 * is byte-for-byte the same sequence of offsets), so this is purely the
 * allocator's destination choice -- the recorded dead end.
 *
 * Counts, all four spellings:
 *   inline address expression, `*(int *)(s+0x50) = -1`        200 (short 4)
 *   base+index locals,         `*(int *)(s+0x50) = -1`        204, 36/51 words
 *                              (right size only because the one-instruction
 *                               `li -1` cancels the spurious $a0 move)
 *   base+index locals, `*(unsigned int *)(s+0x50) = 0xFFFFFFFF`
 *                                                             208 (over 4)
 *                              (this is retail's `lui 0xffff`/`ori`, so the
 *                               0xFFFFFFFF spelling is CORRECT; the residual
 *                               is entirely the surplus `daddu $a0,$a3,$0`)
 * Also tried at 208, all identical: early-return vs nested-if shape;
 * re-loading the table word at the call instead of holding it in a
 * local; `h` typed `void *` and `unsigned int`; `(short)arg2` hoisted
 * into a `short` local.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00216620);

INCLUDE_ASM("asm/nonmatchings/text", func_002166F0);

INCLUDE_ASM("asm/nonmatchings/text", func_002167C0);

extern short D_001517D0[];
extern void func_0012EDE0(void *);

int func_00216960(void) {
    char *d = (char *)D_001517D0;
    void *p = *(void **)(d + 0x50);
    if (p != 0) {
        if (*(short *)(d + 0x5A) == 3) {
            func_0012EDE0(p);
            *(short *)(d + 0x5A) = 4;
            return 1;
        }
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_002169B8);

INCLUDE_ASM("asm/nonmatchings/text", func_00216A90);

INCLUDE_ASM("asm/nonmatchings/text", func_00216B68);

INCLUDE_ASM("asm/nonmatchings/text", func_00216C50);

/*
 * Reverted at 30/84 (same size, no drift risk). Semantics are confirmed
 * -- flag update on the global struct at D_001517D0, byte offsets:
 *
 *   if (*(short *)(d + 0x38) == arg0) { if (d[0x22] == -1) return; }
 *   if (*(short *)(d + 0x3E) == 0) {
 *       if (*(short *)(d + 0x76) == 0) { *(short *)(d + 0x38) = arg0; return; }
 *   }
 *   d[0x23] = arg1;
 *   d[0x22] = arg0;
 *
 * Nested ifs beat the &&/|| form (38/84 -> 30/84) because short-circuit
 * operators let the compiler hoist the 0x3E load above the first branch.
 * The residual is the allocator: retail keeps the %hi part in $7 and
 * re-materializes the base with `addiu $2,$7,%lo` inside the branch
 * targets, spending the first branch's delay slot on that copy; this
 * compiler keeps one base in $6 and uses a branch-likely with the next
 * load in the delay slot instead. Direct `D_001517D0[...]` indexing
 * instead of a `char *d` local was tried to force re-materialization and
 * is clearly worse (73%), so that lever points the other way here.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00216D30);

INCLUDE_ASM("asm/nonmatchings/text", func_00216D88);

extern short D_001517D0[];

void func_00216EF0(int arg0) {
    if (arg0 != 0) {
        D_001517D0[0x2F] = 0;
        D_001517D0[0x2E] = -0x8000;
    }
    D_001517D0[0x3D] = 0;
    D_001517D0[0x20] = -0x8000;
    D_001517D0[0x21] = 0;
    D_001517D0[0x3C] = -0x8000;
}

void func_00216F28(void) {
    short *p = D_001517D0;
    p[0x20] = 4;
    p[0x3C] = 4;
    p[0x2E] = 4;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00216F48);

INCLUDE_ASM("asm/nonmatchings/text", func_00217130);
