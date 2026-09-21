#include "common.h"
#include "structs.h"

/*
 * mobyutil.cpp in the original source; text 0x213A78-0x2161E0.
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
extern float func_001F9B88(float arg0);
extern int func_0020DA68(int v);
extern void func_0020DAB0(void);

INCLUDE_ASM("asm/nonmatchings/text", func_00213A78);

INCLUDE_ASM("asm/nonmatchings/text", func_00213BAC);

INCLUDE_ASM("asm/nonmatchings/text", func_00213BB8);

INCLUDE_ASM("asm/nonmatchings/text", func_00213C70);

INCLUDE_ASM("asm/nonmatchings/text", func_00213C78);

INCLUDE_ASM("asm/nonmatchings/text", func_00213D10);

INCLUDE_ASM("asm/nonmatchings/text", func_00213D28);

INCLUDE_ASM("asm/nonmatchings/text", func_00213DE0);

INCLUDE_ASM("asm/nonmatchings/text", func_00213F28);

INCLUDE_ASM("asm/nonmatchings/text", func_00214080);

extern int func_001160D8(void);

int func_002140B0(int arg0) {
    return ((func_001160D8() >> 16) & 0x7FFF) % arg0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_002140F0);

/*
 * REVERTED -- size mismatch (92 vs retail's 96). Semantics are
 * certain and every instruction matches except one:
 *
 *   float func_002140F8(float a, float b) {
 *       int v = func_001160D8();
 *       float delta = b - a;
 *       v = (v >> 16) & 0x7FFF;
 *       return a + (float)v * delta * 3.0517578125e-05f;
 *   }
 *
 * i.e. a uniform random float in [a, b): a + (rand15/32768)*(b-a).
 * Missing the same GPR->FPU transfer hazard `nop` (between `mtc1
 * $2,$f0` and the `cvt.s.w` consuming it) already documented as not
 * reachable from C on the sibling func_00214158, immediately below.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_002140F8);

/*
 * REVERTED -- size mismatch (76 vs retail's 80). Semantics are certain:
 *
 *   float func_00214158(void) {
 *       int v = ((func_001160D8() >> 16) & 0xFFF) - 0x800;
 *       return (float)v * 3.14159274f * 0.00048828125f;
 *   }
 *
 * i.e. a random angle in radians: take 12 bits out of the PRNG, centre
 * them on zero, and scale by pi * 2^-11. Every instruction matches
 * including both constant materializations (0x40490FDB and 0x3A000000).
 * The single missing instruction is a hazard `nop` retail carries
 * between `mtc1 $2,$f0` and the `cvt.s.w` that consumes $f0 -- the same
 * class as the lwc1 load-delay nop, from the GPR->FPU transfer side.
 * Not reachable from C. tools/rank_candidates.py had ranked this a
 * candidate; it now detects this pattern too.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00214158);

extern float func_00214158(void);
extern float func_002140F8(float, float);
extern void func_00215C00(void *, float, float, float);

void func_002141A8(void *arg0, float arg1, float arg2) {
    float r1 = func_00214158();
    float r2 = func_00214158();

    func_00215C00(arg0, func_002140F8(arg1, arg2), r1, r2);
}

INCLUDE_ASM("asm/nonmatchings/text", func_00214220);

INCLUDE_ASM("asm/nonmatchings/text", func_002142B8);

INCLUDE_ASM("asm/nonmatchings/text", func_00214358);

INCLUDE_ASM("asm/nonmatchings/text", func_002143D0);

INCLUDE_ASM("asm/nonmatchings/text", func_00214440);

INCLUDE_ASM("asm/nonmatchings/text", func_00214538);

INCLUDE_ASM("asm/nonmatchings/text", func_00214550);

INCLUDE_ASM("asm/nonmatchings/text", func_00214770);

INCLUDE_ASM("asm/nonmatchings/text", func_00214CF8);

float func_00214D28(float *p, float target, float maxstep) {
    float d = target - *p;
    if (maxstep < d) {
        d = maxstep;
    } else if (d < -maxstep) {
        d = -maxstep;
    }
    *p = *p + d;
    return func_001F9B88(target - *p);
}

INCLUDE_ASM("asm/nonmatchings/text", func_00214D80);

INCLUDE_ASM("asm/nonmatchings/text", func_00214D88);

INCLUDE_ASM("asm/nonmatchings/text", func_00214F50);

extern void func_001F9DC0(void *, void *, float);

/* Re-normalise the three basis columns of the 4x4 at arg0: gather a
   column into a scratch vector with a zero w, scale it to unit length,
   and scatter it back.

   Near-miss (14/47), size-exact and therefore inert. Every instruction
   and both loop shapes are right; what is left is two recorded dead
   ends. Retail holds arg0 in $s1 and gcc's own i+1 induction temp in
   $s2, this build the other way round, and the prologue save order
   follows -- the declaration-order lever does not reach incoming
   parameter registers (see func_00215328). And retail ends the outer
   loop with `bne` plus an unconditional `sll` in the delay slot where
   this build picks `bnel`, the per-site delay-slot choice. */
void func_00214F78(float *m) {
    float v[4];
    float *p;
    float *q;
    int i;
    int j;

    for (i = 0; i < 3; i++) {
        v[3] = 0.0f;
        q = v;
        p = m + i;
        for (j = 2; j >= 0; j--) {
            *q = *p;
            p += 4;
            q++;
        }
        func_001F9DC0(v, v, 1.0f);
        p = v;
        q = m + i;
        for (j = 2; j >= 0; j--) {
            *q = *p;
            p++;
            q += 4;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_00215038);

/*
 * Close but not exact, 16/48 (both func_00215048 and func_00215078,
 * which are the same shape with a +0x0 vs +0x10 final field offset).
 * This exact source form gets the first 5 instructions byte-identical,
 * including retail's `bnel`-with-the-load-in-its-delay-slot and its
 * unusual block layout (the shared `return 0` placed *before* the main
 * body), so start from here rather than re-deriving it:
 *
 *   int func(void *arg0) {
 *       if (arg0 == 0) { return 0; }
 *       else if ((*(unsigned short *)((char *)arg0+0x34) & 0x20) == 0) {
 *           return 0;
 *       } else { return **(int **)((char *)arg0+0x78); }
 *   }
 *
 * The if/else-if/else shape is what produces the `bnel`: GCC fills the
 * guard's delay slot from the *target* block using a likely branch, and
 * can only do that when the branch points at the body. The plain
 * `if (arg0 != 0) { ... } return 0;` form points the branch at the tail
 * instead, whose first instruction is a `jr` and so unfillable, giving
 * a plain `beqz` + nop (that form scores 33/48, much worse).
 * Two deltas remain, both after the `andi`:
 *   1. Retail has two literal `nop`s between the `andi` and the `beqz`
 *      that this compiler never emits -- see the backward-branch
 *      padding observation in docs/DECOMP_PROGRESS.md.
 *   2. Retail's `beqz` branches *backward* into the already-emitted
 *      shared `return 0` block; GCC emits a second copy at the end
 *      instead (no cross-jumping between the two identical blocks).
 * Tried and rejected: `volatile` on the flags read (loses the `bnel`
 * entirely, worse), and `-Wa,-g`/`-Wa,-O0` to stop the assembler
 * removing nops (no effect -- cc1 never emits them in the first place).
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00215048);

INCLUDE_ASM("asm/nonmatchings/text", func_00215078);

INCLUDE_ASM("asm/nonmatchings/text", func_002150A8);

INCLUDE_ASM("asm/nonmatchings/text", func_002150B0);

extern void func_001FA460(void *);
extern void func_002150B0(void *, void *);
extern void func_001FA480(void *, void *);

/*
 * Close, not exact (15/76), same size so harmless to everything after
 * it. Logic is certain: fill a 64-byte stack buffer, then hand it to two
 * consumers. Instruction shape is identical to retail; the entire
 * residual is that retail puts arg0 in $s1 and arg1 in $s0 (saving $s1
 * first), while this compiler assigns them the other way round and the
 * save order follows. Tried aliasing the parameters through locals
 * declared in the reverse order -- the declaration-order lever that
 * worked for func_0020DA68/func_0020DAB0 -- but the compiler coalesces
 * the aliases with the parameters, so that lever steers LOCALS only, not
 * incoming parameter registers. Known allocator question.
 */
void func_00215328(void *arg0, void *arg1) {
    char buf[0x40];
    func_001FA460(buf);
    func_002150B0(arg0, buf);
    func_001FA480(arg1, buf);
}

INCLUDE_ASM("asm/nonmatchings/text", func_00215378);

extern float func_001F9FA8(float);  /* sin of a half-angle */
extern float func_001F9F90(float);  /* cos of a half-angle */
extern void func_001F9C30(void *, void *, float);

/* Axis-angle -> quaternion: the xyz part is axis scaled by sin(angle/2)
   (done by func_001F9C30, which writes through arg0), and w at +0xC is
   cos(angle/2). Both trig calls take the same half-angle, which is why
   it lives in $f20 across all three calls. */
void func_00215380(void *arg0, void *axis, float angle) {
    float half = angle * 0.5f;

    func_001F9C30(arg0, axis, func_001F9FA8(half));
    *(float *)((char *)arg0 + 0xC) = func_001F9F90(half);
}

INCLUDE_ASM("asm/nonmatchings/text", func_002153E8);

INCLUDE_ASM("asm/nonmatchings/text", func_00215518);

INCLUDE_ASM("asm/nonmatchings/text", func_00215570);

INCLUDE_ASM("asm/nonmatchings/text", func_00215648);

INCLUDE_ASM("asm/nonmatchings/text", func_00215650);

INCLUDE_ASM("asm/nonmatchings/text", func_002156E0);

INCLUDE_ASM("asm/nonmatchings/text", func_00215788);

INCLUDE_ASM("asm/nonmatchings/text", func_002157C0);

INCLUDE_ASM("asm/nonmatchings/text", func_002158E0);

INCLUDE_ASM("asm/nonmatchings/text", func_002158E8);

INCLUDE_ASM("asm/nonmatchings/text", func_00215A10);

INCLUDE_ASM("asm/nonmatchings/text", func_00215A98);

extern float func_0020D830(void);
extern float func_00215A98(int, float);

int func_00215B18(char *arg0, float arg1) {
    float now = func_0020D830();
    float a = func_00215A98(4, now - arg1);
    float b = func_00215A98(4, *(float *)(arg0 + 0x58) * *(float *)(arg0 + 0x5C));

    if (arg1 <= now && a < b) {
        return 1;
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00215BA8);

/* Spherical-to-cartesian: x is the radius, y and z the two angles.
   func_001F9F90 is cos, func_001F9FA8 sin (named in the comments at
   func_00212xxx). Each product is spelled trig * r * trig so the two
   calls are issued before the multiplies, the way retail does. */
void func_00215C00(void *arg0, float r, float y, float z) {
    float *out = (float *)arg0;

    out[0] = func_001F9F90(y) * r * func_001F9F90(z);
    out[1] = func_001F9FA8(y) * r * func_001F9F90(z);
    out[2] = func_001F9FA8(z) * r;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00215CA0);

INCLUDE_ASM("asm/nonmatchings/text", func_00215CA8);

INCLUDE_ASM("asm/nonmatchings/text", func_00215F20);

extern int func_001FE540(int);
extern void func_001FFE88(int);
extern int D_0015F6B0 MACRO_ADDR;
extern int D_0015F6B4 MACRO_ADDR;
extern int D_00161388 MACRO_ADDR;

/*
 * 11/164: everything but the placement of `addiu $2,$0,1`, which retail
 * emits before the last store and this compiler after it. Writing the
 * return value into a local before that store does not move it.
 */
int func_00215F80(int arg0, int arg1) {
    int cur = D_0015F6B4;

    if (cur == arg0) {
        if (arg1 != 0) {
            func_001FFE88(func_001FE540(arg1));
        }
        D_00161388 = arg1;
        D_0015F6B0 = 2;
        return 2;
    }
    if (cur != 0) {
        return 0;
    }
    if (arg1 != 0) {
        func_001FFE88(func_001FE540(arg1));
    }
    D_0015F6B4 = arg0;
    D_0015F6B0 = 2;
    D_00161388 = arg1;
    return 1;
}

int func_00216028(int arg0, int arg1) {
    int busy = func_00215F80(arg0, arg1);
    if (busy != 0) {
        return busy;
    }
    if (arg1 != 0) {
        func_001FFE88(func_001FE540(arg1));
    }
    D_0015F6B4 = arg0;
    D_0015F6B0 = 2;
    D_00161388 = arg1;
    return 3;
}

int func_00216098(void) {
    int a = func_002160E0();
    int b = func_00216150();
    int v = a - b * 4;
    if (v < 0) v = 0;
    return (v < 0x29) ? v : 0x28;
}

extern unsigned char D_0014BFC0[];

int func_002160E0(void) {
    int count = 0;
    int row;
    for (row = 0; row < 0x14; row++) {
        unsigned char *p = &D_0014BFC0[row * 4];
        int k;
        for (k = 3; k >= 0; k--) {
            if (*p != 0) count = count + 1;
            p++;
        }
    }
    if (count < 0) count = 0;
    return (count < 0x29) ? count : 0x28;
}

extern unsigned char D_0013E620[];

int func_00216150(void) {
    int count = 0;
    int i;
    for (i = 0; i < 0x25; i++) {
        if (D_0013E620[i] != 0) count = count + 1;
    }
    if (count < 0) count = 0;
    return (count < 0xB) ? count : 0xA;
}

extern unsigned char D_0013D510[];

int func_00216198(void) {
    int count = 0;
    int i;
    for (i = 0; i < 0x20; i++) {
        if (D_0013D510[i] != 0) count = count + 1;
    }
    if (count < 0) count = 0;
    return (count < 0x1F) ? count : 0x1E;
}
