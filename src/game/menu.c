#include "common.h"
#include "structs.h"

/*
 * menu.cpp in the original source; text 0x2071A8-0x209A60.
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

int func_002071A8(int x1, int y1) {
    return func_00209048(x1, y1, 0xD3, 0xDB, 0x129, 0xF9);
}

extern unsigned char D_0013D49C NOT_SDA;

int func_002071D0(void) {
    return D_0013D49C != 0;
}

extern unsigned char D_0013D49D NOT_SDA;

int func_002071E0(void) {
    return D_0013D49D != 0;
}

extern unsigned char D_0013D4A5 NOT_SDA;

int func_002071F0(void) {
    return D_0013D4A5 != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00207200);

INCLUDE_ASM("asm/nonmatchings/text", func_002072C0);

INCLUDE_ASM("asm/nonmatchings/text", func_00207340);

extern short D_0015FE24;   /* declared small so -G2 puts it in SDA */

int func_002073A8(void) {
    return *(int *)&D_0015FE24 == 0;
}

extern unsigned char D_0013D4AC NOT_SDA;

int func_002073B8(void) {
    return D_0013D4AC != 0;
}

extern unsigned char D_0013D4AD NOT_SDA;

int func_002073C8(void) {
    return D_0013D4AD != 0;
}

extern unsigned char D_0013D4AE NOT_SDA;

int func_002073D8(void) {
    return D_0013D4AE != 0;
}

extern unsigned char D_0013D4AF NOT_SDA;

int func_002073E8(void) {
    return D_0013D4AF != 0;
}

extern unsigned char D_0013D4B5 NOT_SDA;

int func_002073F8(void) {
    return D_0013D4B5 != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00207408);

INCLUDE_ASM("asm/nonmatchings/text", func_00207648);

INCLUDE_ASM("asm/nonmatchings/text", func_00207780);

INCLUDE_ASM("asm/nonmatchings/text", func_00207930);

extern int D_001A04B4 NOT_SDA;

/* Same hit test as func_002071A8, run against two boxes. */
int func_002079F0(int x1, int y1) {
    int a = func_00209048(x1, y1, 0x99, 0xED, 0x160, 0x117);
    int b = func_00209048(x1, y1, 0x10E, 0xF7, 0x13D, 0x119);

    return D_001A04B4 != 0 && (a != 0 || b != 0);
}

INCLUDE_ASM("asm/nonmatchings/text", func_00207A80);

INCLUDE_ASM("asm/nonmatchings/text", func_00207B30);

INCLUDE_ASM("asm/nonmatchings/text", func_00207BE8);

extern unsigned char D_0013D4C5 NOT_SDA;
extern int D_001414DC NOT_SDA;

int func_00207CB0(int arg0, int arg1) {
    if (arg1 >= 0x101) {
        return D_001414DC == 0xF;
    }
    return D_0013D4C5 != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00207CE0);

INCLUDE_ASM("asm/nonmatchings/text", func_00207D38);

INCLUDE_ASM("asm/nonmatchings/text", func_00207DB0);

/*
 * Close but not exact: `result = (arg0 < 0xE0 && arg1 <= 38.0) ? 1 : 0;`
 * -- confirmed via objdump: same operations, same registers, same
 * threshold constant (0x42180000 = 38.0), same shape (default 0, set 1
 * if arg0<0xE0, reset to 0 if arg1>38.0). Retail encodes the inner
 * boolean-to-branch conversion as bc1t with both the "set 1" and
 * "reset to 0" as literal delay-slot/fallthrough instructions; every
 * source shape tried (single &&-expression, nested if, result-default-
 * then-override) compiles to a bc1f/bc1tl-based scheme instead --
 * logically identical, different instruction encoding/ordering. New
 * instance of the delay-slot-scheduling open question (previously seen
 * as store/branch-target reordering, this is the FP-condition
 * materialization case). 26/52 bytes differ, too large a diff to keep
 * as documented-close C per the func_00112468 precedent.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00207E28);

extern unsigned char D_0013D4C0 NOT_SDA;
extern unsigned char D_0013D4C1 NOT_SDA;
extern unsigned char D_0013D4C2 NOT_SDA;
extern unsigned char D_0013D4D3 NOT_SDA;
extern unsigned char D_0013D4D4 NOT_SDA;
extern unsigned char D_0013D4D5 NOT_SDA;

int func_00207E60(void) {
    return D_0013D4C0 != 0;
}

int func_00207E70(void) {
    return D_0013D4C1 != 0;
}

int func_00207E80(void) {
    return D_0013D4C2 != 0;
}

int func_00207E90(void) {
    return D_0013D4D3 != 0;
}

int func_00207EA0(void) {
    return D_0013D4D4 != 0;
}

int func_00207EB0(void) {
    return D_0013D4D5 != 0;
}

extern unsigned char D_0013D4E0;

/*
 * Close but not exact: if (arg0>=0xBE) return D_0013D4E0!=0; else return
 * (arg1>=58.5) ? 1 : 0. Confirmed via objdump: the arg0>=0xBE early
 * return matches exactly (same bnez polarity as retail once written as
 * `if (arg0 >= 0xBE)` rather than the inverted `if (arg0 < 0xBE)`), but
 * the float-threshold boolean materialization hits the same delay-slot-
 * scheduling issue as func_00207E28 just above -- same category, not
 * re-explained in full here. 19/64 bytes differ, too large a diff to
 * keep as documented-close C per the func_00112468 precedent.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00207EC0);

extern unsigned char D_0013D4DC NOT_SDA;
extern unsigned char D_0013D4DD NOT_SDA;
extern unsigned char D_0013D4DE NOT_SDA;
extern unsigned char D_0013D4DF NOT_SDA;
extern unsigned char D_0013D4E1 NOT_SDA;

int func_00207F00(void) {
    return D_0013D4DC != 0;
}

int func_00207F10(void) {
    return D_0013D4DD != 0;
}

int func_00207F20(void) {
    return D_0013D4DE != 0;
}

int func_00207F30(void) {
    return D_0013D4DF != 0;
}

int func_00207F40(void) {
    return D_0013D4E1 != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00207F50);

INCLUDE_ASM("asm/nonmatchings/text", func_00207FD0);

INCLUDE_ASM("asm/nonmatchings/text", func_00208030);

INCLUDE_ASM("asm/nonmatchings/text", func_002080B0);

INCLUDE_ASM("asm/nonmatchings/text", func_00208160);

extern unsigned char D_0013D4E9 NOT_SDA;

int func_002081F8(void) {
    return D_0013D4E9 != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00208208);

int func_00208238(void) {
    return 1;
}

int func_00208240(void) {
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00208248);

extern unsigned char D_0013D502 NOT_SDA;

int func_002082E8(void) {
    return D_0013D502 != 0;
}

extern unsigned char D_0013D503 NOT_SDA;

int func_002082F8(void) {
    return D_0013D503 != 0;
}

extern unsigned char D_0013D504 NOT_SDA;
extern unsigned char D_0013D505 NOT_SDA;
extern unsigned char D_0013D50F NOT_SDA;

int func_00208308(void) {
    return D_0013D504 != 0;
}

int func_00208318(void) {
    return D_0013D505 != 0;
}

int func_00208328(void) {
    return D_0013D50F != 0;
}

extern int D_001A01F0[];
extern int D_0013D668[];
extern void func_00209040(void);
extern int func_001FAA28(void *dst, int size, int a, int b);
extern void func_00208860(void *dst);

/* The same object, twice. gp is 0x00166D00, so the `lw $4,-0x7E7C($28)`
   in retail's delay slot and the `lui/%lo(D_0015EE84)` a few
   instructions later are the SAME address; retail reaches it both ways
   inside one function. Declared small it lands in SDA at -G2, declared
   int it stays out. */
extern int D_0015EE84 MACRO_ADDR;

/*
 * Byte MISMATCH kept in place: size-exact (0xA8) and the instruction
 * stream is identical to retail instruction for instruction. All 18
 * differing words are allocator destination choice -- retail keeps the
 * parameter in $s1 and the result in $s0, we do the reverse, and the
 * $v0/$v1 and one scheduling swap at +0x78 follow from that. Swapping
 * the declaration order of the two locals gives byte-identical output
 * (18/42 either way), which is the recorded dead end reconfirmed.
 *
 * The useful find here is D_0015EE84 read BOTH ways in one function:
 * gp-relative in the else arm (it is the branch delay slot's fill) and
 * through lui/%lo in the arm that has just made a call. gp is
 * 0x00166D00 and gp-0x7E7C is exactly D_0015EE84, so these are one
 * object, not two. One `extern short` (small enough for -G2's SDA) plus
 * one `extern int ... NOT_SDA` aliased onto the same asm symbol gives
 * both spellings from one source, and nothing else tried produced the
 * lui/%lo form after the call.
 */
void func_00208338(void *arg0) {
    int r;
    int idx;

    func_00209040();
    if (D_001A01F0[0xA] == 0) {
        func_001F99B0(arg0, 0, 0x800);
        return;
    }
    r = func_001FAA28(arg0, 0x800, D_001A01F0[5], D_001A01F0[3]);
    if (r == -1) {
        func_00208860(arg0);
        idx = D_0015EE84;
    } else {
        idx = D_0015EE84;
    }
    if (D_0013D668[idx] < r) {
        D_0013D668[idx] = r;
    }
}

extern int D_001A0218[] NOT_SDA;
extern void func_00208458(void *, unsigned char *, int);
extern void func_00208688(void *, unsigned char *);

void func_002083E0(void *arg0, unsigned char *arg1, int arg2) {
    /* func_00209040 is empty in retail and takes no arguments; $4/$5/$6
       still hold our own incoming arguments across it, which is why retail
       saves them into $16-$18 rather than reloading. */
    func_00209040();
    if (!D_001A0218[0]) {
        return;
    }
    if (*arg1 & 1) {
        func_00208458(arg0, arg1, arg2);
    } else {
        func_00208688(arg0, arg1);
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_00208458);

INCLUDE_ASM("asm/nonmatchings/text", func_00208688);

INCLUDE_ASM("asm/nonmatchings/text", func_00208858);

INCLUDE_ASM("asm/nonmatchings/text", func_00208860);

INCLUDE_ASM("asm/nonmatchings/text", func_00208AB0);

INCLUDE_ASM("asm/nonmatchings/text", func_00208C38);

INCLUDE_ASM("asm/nonmatchings/text", func_00208D30);

INCLUDE_ASM("asm/nonmatchings/text", func_00208D38);

extern int D_001E06B8[];
extern void *D_00199578[];
extern char D_0013D6B8[];

void func_00208FA0(void) {
    int i = D_0015EE84;
    if ((unsigned int)i < 0x13) {
        int start = D_001E06B8[i];
        int end = D_001E06B8[i + 1];
        if (start < end) {
            float *dst = (float *)(D_0013D6B8 + start * 16);
            void **src = &D_00199578[start];
            start = end - start;
            do {
                char *p = (char *)*src;
                if (p != 0) {
                    dst[0] = *(float *)(p + 0x10);
                    dst[1] = *(float *)(p + 0x14);
                    dst[2] = *(float *)(p + 0x48);
                }
                dst += 4;
                start--;
                src++;
            } while (start != 0);
        }
    }
}

void func_00209040(void) {
}

/*
 * Close but not exact (16/36 bytes): 2D cross-product orientation test.
 * arg0 -= arg2; arg1 -= arg3; arg4 -= arg2; arg5 -= arg3;
 * return (arg4*arg1 - arg5*arg0) < 0;
 * Same operations/order/register reuse (in-place subtraction) as
 * retail, confirmed via objdump, but the final sign test compiles to
 * `srl $2,$2,0x1f` here where retail uses `slti $2,$2,0` -- two
 * different instructions computing the identical 0/1 result for
 * "value < 0". Not a scheduling/register question like the usual
 * near-misses, a pure instruction-selection choice for the same
 * boolean-from-sign-bit pattern; not investigated further.
 */
/*
 * 4/36 (one instruction): 2D cross-product orientation test — is (x2,y2)
 * left of the (x0,y0)->(x1,y1) edge. Every register and all 7 arithmetic
 * instructions match retail exactly; the sole diff is the final sign
 * test, where this compiler emits `srl $2,$2,31` and retail has
 * `slti $2,$2,0`. Identical result, different instruction selection, and
 * it is not steerable from source: `< 0`, `<= -1`, `< 1-1`, a named
 * local, and `?1:0` all canonicalize to the same `srl`; only widening to
 * `long` changes it (to `dsrl32`, which is worse).
 *
 * The subtractions must be written in this order (x2/y2 before x1/y1) —
 * the last-source-statement-emits-first rotation applies to runs of
 * independent *arithmetic* statements, not just stores.
 */
/* Sign of the 2D cross product (x2-x0,y2-y0) x (x1-x0,y1-y0): true when
   the second vector is clockwise from the first.

   The `< 0` has to be written as an explicit if/return pair. Returning
   the comparison directly makes GCC emit the cheap sign-bit extract
   `srl $v0,$v0,31`; retail has `slti $v0,$v0,0`, which is what you get
   when the comparison feeds a branch rather than being the return value
   itself. That one instruction was this function's entire residual. */
int func_00209048(int x1, int y1, int x0, int y0, int x2, int y2) {
    int cross;

    x2 -= x0;
    y2 -= y0;
    x1 -= x0;
    y1 -= y0;
    cross = x2 * y1 - y2 * x1;
    if (cross < 0) {
        return 1;
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00209070);

/*
 * Near-miss, same size (differ score 180): func_00209160 below. Every
 * instruction is right but the scheduler places them differently:
 * retail   lui b; li 3; addiu b; [lui $at; sw 3]; lw C4; sw FC; j; sw 1C
 * ours     li 3; lui b; [lui $at; sw 3]; addiu b; sw FC; lw C4; j; sw 1C
 * The compiler schedules the MACRO_ADDR store as ONE instruction; retail
 * evidently scheduled around a two-instruction store. Tried: store via a
 * volatile lvalue, reading 0xC4 into a temp before the store, taking the
 * base after the store, the constant in its own local, and every order
 * of the four statements (tools/permute.py) -- the emitted order never
 * moves. Previously stubbed for the SDA collision, now expressible with
 * MACRO_ADDR.
 */
extern char D_0013D390[];
/* menu.cpp's state word and flags. Stored through the assembler's lui
   macro, and $gp-relative where the access sits in a delay slot (see
   tools/check_macro_slots.py). */
extern int D_0015EFB0 MACRO_ADDR;
extern int D_0015EFB4 MACRO_ADDR;
extern int D_0013D3AC;

void func_00209160(void) {
    char *b = D_0013D390;
    int t;
    D_0015EFB0 = 3;
    t = *(int *)(b + 0xC4);
    *(int *)(b + 0xFC) = 0;
    *(int *)(b + 0x1C) = t;
}

/*
 * Reverted: our ASSEMBLER makes it 12 bytes too long. The compiler's
 * instruction stream is retail's, byte for byte, with the two ands
 * (dead-store elimination on D_0015EFB4, see below) and the
 * $gp-in-delay-slot form. But ee-as then inserts 3 nops before the
 * cross-jumped `b` back into the 0x80 arm -- its EE short-loop erratum
 * padding -- and retail has no nops there. Measured: this assembler
 * pads a backward branch whose loop body is under ~6 instructions, and
 * pads this 9-instruction one too for a reason that a reduced test case
 * does not reproduce (plain copies of the same instruction sequence
 * assemble clean). Retail's own assembler did not pad here, though the
 * image does carry erratum nops elsewhere.
 *
 * The recovered source, which is correct apart from that:
 *
 * void func_00209188(void) {
 *     int flags = D_0015EFB4;
 *     char *b;
 *     int nf;
 *     D_0015EFB4 = flags & ~4;
 *     b = D_0013D390;
 *     nf = D_0015EFB4 & ~2;
 *     D_0015EFB4 = nf;
 *     if (*(int *)(b + 0xFC) == 0) {
 *         D_0015EFB0 = 3;
 *         return;
 *     }
 *     if (flags & 0x80) {
 *         D_0015EFB0 = 0x15;
 *         D_0015EFB4 = (nf ^ 0x80) | 0x40;
 *         return;
 *     }
 *     if (flags & 0x100) {
 *         D_0015EFB0 = 0x14;
 *         D_0015EFB4 = (nf ^ 0x100) | 0x40;
 *         return;
 *     }
 *     if (*(int *)(b + 0x1C) != 0) {
 *         *(int *)(b + 0xFC) = 0;
 *         D_0015EFB4 = nf | 1;
 *         D_0015EFB0 = 2;
 *         return;
 *     }
 *     if (flags & 0x200) {
 *         D_0015EFB4 = nf ^ 0x200;
 *         D_0015EFB0 = 0x16;
 *     }
 * }
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00209188);

void func_00209238(void) {
    char *b = D_0013D390;
    char *base = b + 0xB0;
    int idx = *(int *)(b + 0xCC);
    int *slot = (int *)(base + idx * 0xC0);
    if (*slot == 2) {
        *slot = 0;
    }
    if ((D_0015EFB4 ^ 1) & 1) {
        D_0015EFB0 = 3;
    }
}

void func_00209290(void) {
    char *b = D_0013D390;
    char *base = b + 0xB0;
    int idx = *(int *)(b + 0xCC);
    int *slot;
    *(int *)(b + 0xE4) = -1;
    *(int *)(b + 0xE8) = -1;
    *(int *)(b + 0x20) = -1;
    *(int *)(b + 0x3C) = -1;
    *(int *)(b + 0x58) = -1;
    *(int *)(b + 0x74) = -1;
    *(int *)(b + 0x90) = -1;
    slot = (int *)(base + idx * 0xC0);
    if (*slot == 2) {
        *slot = 0;
    }
    D_0015EFB0 = 4;
}

void func_002092E8(void) {
    char *b = D_0013D390;
    int v;
    D_0015EFB4 &= ~0x20;
    if (*(int *)(b + 8) != 2) {
        return;
    }
    v = *(int *)(b + 0x1C);
    if (v == 0) {
        D_0015EFB0 = 9;
    } else if (v == -1) {
        *(int *)(b + 0x1C) = 0;
        D_0015EFB0 = 9;
    } else if (v == -2) {
        D_0015EFB0 = 5;
    }
}

void func_00209358(void) {
    if (D_0013D3AC != -2) {
        D_0015EFB0 = 3;
        return;
    }
    if (D_0015EFB4 & 2) {
        D_0015EFB0 = 6;
    }
}

extern int D_0015F6C8 MACRO_ADDR;

void func_00209398(void) {
    int flags;
    if (D_0013D3AC != -2) {
        D_0015EFB0 = 3;
        return;
    }
    flags = D_0015EFB4;
    if (flags & 0x20) {
        D_0015EFB4 = flags ^ 0x20;
        if (D_0015F6C8 != 0) {
            D_0015EFB0 = 0x17;
            return;
        }
        D_0015EFB0 = 5;
        return;
    }
    if (flags & 8) {
        D_0015EFB4 = flags ^ 8;
        D_0015EFB0 = 7;
    }
}

void func_00209418(void) {
    char *s = D_0013D390;
    *(int *)(s + 0x1C) = 0;
    if (*(int *)(s + 0xE4) < 0) {
        *(int *)(s + 0xE8) = 0;
        *(int *)(s + 0xE4) = 3;
    }
    D_0015EFB0 = 8;
}

void func_00209448(void) {
    char *s = D_0013D390;
    if (*(int *)(s + 0xDC) == 2 && *(int *)(s + 0xE4) < 0) {
        if (*(int *)(s + 0xEC) != 0) {
            D_0015EFB0 = 0x11;
            D_0015EFB4 |= 0x40;
            return;
        }
        D_0015EFB0 = 0xE;
    }
}

void func_002094A8(void) {
    if (D_0013D3AC != 0) {
        D_0015EFB0 = 3;
        return;
    }
    if (D_0015EFB4 & 6) {
        D_0015EFB0 = 0xA;
    }
}

void func_002094E0(void) {
    char *s = D_0013D390;
    if (*(int *)(s + 0xDC) == 2 && *(int *)(s + 0xE4) < 0) {
        *(int *)(s + 0xE4) = 7;
        *(int *)(s + 0xE8) = 0;
        D_0015EFB0 = 0xB;
    }
}

/*
 * Same-size near-miss (15/50 words): every instruction is retail's, but
 * the base pointer lands in $a1 and the literal 1 in $a0 where retail
 * has them the other way round. Tried: reading the index before or
 * after advancing the base, char* vs int* for the slot, unsigned index,
 * the +0xB0 folded into the index expression, the compare with the
 * constant on either side, the block in its own scope, a second local
 * for the tail. The pair never swaps -- allocator, not source shape.
 * (`b = D_0013D390;` after the block IS load-bearing: retail
 * re-materialises %lo from the %hi it kept in $a2, which is what
 * clobbering the base inside the block produces.)
 */
void func_00209520(void) {
    char *b = D_0013D390;
    int v;
    if (*(int *)(b + 0xDC) >= 3 || *(int *)(b + 0xE4) >= 0) {
        int idx;
        int *slot;
        idx = *(int *)(b + 0xCC);
        b += 0xB0;
        slot = (int *)(b + idx * 0xC0);
        if (*slot == 1) {
            *slot = 2;
        }
    }
    b = D_0013D390;
    if (*(int *)(b + 0x1C) < -1 || *(int *)(b + 0xEC) != 0) {
        D_0015EFB0 = 3;
        return;
    }
    v = *(int *)(b + 0x14);
    if (v == -2) {
        if (*(int *)(b + 0xC) + *(int *)(b + 0xAC) < 0x15E) {
            D_0015EFB0 = 0x13;
        } else {
            D_0015EFB0 = 0xC;
        }
        return;
    }
    if (v >= -1) {
        D_0015EFB0 = 0x10;
    }
}

void func_002095E8(void) {
    if (D_0013D3AC != 0) {
        D_0015EFB0 = 3;
        return;
    }
    if (D_0015EFB4 & 2) {
        D_0015EFB0 = 0xD;
    }
}

void func_00209620(void) {
    int flags;
    if (D_0013D3AC != 0) {
        D_0015EFB0 = 3;
        return;
    }
    flags = D_0015EFB4;
    if (flags & 0x20) {
        D_0015EFB4 = flags ^ 0x20;
        if (D_0015F6C8 != 0) {
            D_0015EFB0 = 0x18;
            return;
        }
        D_0015EFB0 = 0xC;
        return;
    }
    if (flags & 0x10) {
        D_0015EFB4 = flags ^ 0x10;
        D_0015EFB0 = 0xE;
    }
}

void func_00209698(void) {
    char *s = D_0013D390;
    if (*(int *)(s + 0xDC) == 2 && *(int *)(s + 0xE4) < 0) {
        *(int *)(s + 0xE4) = 9;
        *(int *)(s + 0xE8) = 0;
        D_0015EFB0 = 0xF;
    }
}

void func_002096D8(void) {
    char *s = D_0013D390;
    if (*(int *)(s + 0xDC) == 2 && *(int *)(s + 0xE4) < 0) {
        if (*(int *)(s + 0xEC) != 0) {
            D_0015EFB0 = 0x12;
            D_0015EFB4 |= 0x40;
            return;
        }
        *(int *)(s + 0xE4) = 7;
        *(int *)(s + 0xC8) = 0;
        *(int *)(s + 0x14) = 0;
        *(int *)(s + 0xE8) = 0;
        D_0015EFB0 = 0x10;
    }
}

/*
 * Reverted, same assembler difference as func_00209188 above: our
 * ee-as pads the cross-jumped backward `b` with 3 nops because the
 * shared tail materialises D_0015EFB0 through $at, and retail has no
 * nops there. (Measured: replacing that one `lui $1` with any non-$at
 * instruction makes the padding go away.) Recovered source:
 *
 * void func_00209750(void) {
 *     int flags;
 *     char *b;
 *     if (D_0015EFB4 & 4) {
 *         D_0015EFB4 &= ~4;
 *     }
 *     if (D_0015EFB4 & 2) {
 *         D_0015EFB4 &= ~2;
 *     }
 *     flags = D_0015EFB4;
 *     if (flags & 0x80) {
 *         D_0015EFB0 = 0x15;
 *         D_0015EFB4 = (flags ^ 0x80) | 0x40;
 *         return;
 *     }
 *     if (flags & 0x100) {
 *         D_0015EFB0 = 0x14;
 *         D_0015EFB4 = (flags ^ 0x100) | 0x40;
 *         return;
 *     }
 *     b = D_0013D390;
 *     if (*(int *)(b + 0x1C) != 0) {
 *         D_0015EFB0 = 3;
 *         return;
 *     }
 *     if (*(int *)(b + 0xFC) != 0) {
 *         D_0015EFB0 = 1;
 *     }
 * }
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00209750);


void func_00209808(void) {
    char *b = D_0013D390;
    char *base = b + 0xB0;
    int idx = *(int *)(b + 0xCC);
    int *slot = (int *)(base + idx * 0xC0);
    if (*slot == 2) {
        *slot = 0;
    }
    if (!(D_0015EFB4 & 0x40)) {
        D_0015EFB0 = 3;
    }
}

void func_00209858(void) {
    char *b = D_0013D390;
    char *base = b + 0xB0;
    int idx = *(int *)(b + 0xCC);
    int *slot = (int *)(base + idx * 0xC0);
    if (*slot == 2) {
        *slot = 0;
    }
    if (!(D_0015EFB4 & 0x40)) {
        D_0015EFB0 = 3;
    }
}

void func_002098A8(void) {
    if (D_0013D3AC != 0) {
        D_0015EFB0 = 3;
    }
}

void func_002098C8(void) {
    char *b = D_0013D390;
    char *base = b + 0xB0;
    int idx = *(int *)(b + 0xCC);
    int *slot = (int *)(base + idx * 0xC0);
    if (*slot == 2) {
        *slot = 0;
    }
    if (!(D_0015EFB4 & 0x40)) {
        D_0015EFB0 = 3;
    }
}

void func_00209918(void) {
    char *b = D_0013D390;
    char *base = b + 0xB0;
    int idx = *(int *)(b + 0xCC);
    int *slot = (int *)(base + idx * 0xC0);
    if (*slot == 2) {
        *slot = 0;
    }
    if (!(D_0015EFB4 & 0x40)) {
        D_0015EFB0 = 3;
    }
}

void func_00209968(void) {
    char *b = D_0013D390;
    if (*(int *)(b + 0xDC) < 3 && *(int *)(b + 0xE4) < 0) {
        if (*(int *)(b + 0xEC) != 0) {
            *(int *)(b + 0xFC) = 0;
            D_0015EFB0 = 0x15;
            D_0015EFB4 |= 0x440;
            return;
        }
        D_0015EFB0 = 1;
    }
}

void func_002099D0(void) {
    int flags;
    if (D_0013D3AC != -2) {
        D_0015EFB0 = 3;
        return;
    }
    flags = D_0015EFB4;
    if (flags & 0x20) {
        D_0015EFB4 = flags ^ 0x20;
        D_0015EFB0 = 5;
    }
}

void func_00209A18(void) {
    int flags;
    if (D_0013D3AC != 0) {
        D_0015EFB0 = 3;
        return;
    }
    flags = D_0015EFB4;
    if (flags & 0x20) {
        D_0015EFB4 = flags ^ 0x20;
        D_0015EFB0 = 0xC;
    }
}
