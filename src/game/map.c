#include "common.h"
#include "structs.h"

/*
 * map.cpp in the original source; text 0x205520-0x2071A8.
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

INCLUDE_ASM("asm/nonmatchings/text", func_00205520);

INCLUDE_ASM("asm/nonmatchings/text", func_00205660);

extern int D_001A0468[];

int func_00205728(int arg0) {
    int *a = D_001A0468;
    int *b = D_001A0468 + 5;
    int i = 0;
    do {
        int idx = 4 - i;
        if (arg0 == 0) idx = i;
        if (a[idx] != 0 && b[idx] == -1) {
            return idx;
        }
        i++;
    } while (i < 5);
    return -1;
}

extern void func_00205830(int a, int b);

/* D_001A01F0 typed as the object it is, so that the two 5/6-entry int
   arrays at +0x278 and +0x28C are members rather than constants added
   to an index. See the note on func_00205790 -- this is what makes it
   match. Aliased rather than renamed because the rest of this file
   still reaches the same symbol as a flat int array. */
typedef struct {
    int _pad0[0x9E];
    int use[5];   /* +0x278 */
    int flags[5]; /* +0x28C */
    int sel;      /* +0x2A0 -- index of the active slot, -1 for none */
    int size[5];  /* +0x2A4 */
} PadSlots;
extern PadSlots D_001A01F0_slots __asm__("D_001A01F0");

/*
 * Allocate a slot. func_00205728(1) gets first refusal; if it returns
 * nonzero that IS the answer. Otherwise scan slots 1..4 for one that is
 * neither flagged 0x1000 nor empty, and hand it to func_00205830, which
 * compacts entry `i` down onto entry 0. Falling out of the loop at i==5
 * still calls func_00205830(0, 5) -- retail shares that call site with
 * the break, so the source must too.
 *
 * Byte-exact, registers included, and it took three things:
 *
 * 1. ONE variable for the callee's result and the loop counter. Retail
 *    keeps both in $16 and pays for a `daddu $16,$2,$0` that separate
 *    locals would not need. Two locals is 4 bytes SHORT.
 *
 * 2. The peeled first test is not a peeled iteration in the source: it
 *    is gcc's while -> do-while rotation, whose entry guard `1 < 5`
 *    folds away, leaving the i==1 addresses as the constants 0x290 and
 *    0x27C. A plain `while` starting at i = 1 produces it for free.
 *
 * 3. TYPE THE BASE AS A STRUCT. Three spellings, against retail's 160:
 *      D_001A01F0[0xA3 + i]              172  adds the constant to the
 *                                             index and THEN shifts,
 *                                             once per array
 *      int *p = D_001A01F0 + i; p[0xA3]  164  right inside the loop,
 *                                             but the constant-folded
 *                                             i==1 peel then needs its
 *                                             own `addu $3,$3,4`
 *                                             instead of folding into
 *                                             the lw displacement
 *      struct member .flags[i]           160  EXACT
 *    Only the struct gives base-first `sll`/`addu` with the array's
 *    byte offset left in the load, in BOTH the loop and the folded
 *    peel. This widens the existing "type the table, don't rewrite the
 *    addition" lever from a stride to a base: where retail shows
 *    `sll idx,2` / `addu base` / `lw CONST(reg)`, that CONST is a
 *    member offset, so declare the member.
 *
 *    It does not contradict the base-pointer rule on func_00205830
 *    below, where three arrays come off one live base in straight-line
 *    code and naming the base wins. The rule covering both is: describe
 *    the memory, not the arithmetic.
 *
 * Watch the 164-byte middle spelling: its extra word was not an extra
 * instruction at all. The body was 40 words either way, but the odd
 * word count ahead of the loop label made gcc's `.p2align 3` emit a
 * real nop -- and internal alignment padding sits INSIDE the .ent/.end
 * pair, so it counts toward the symbol size and toward the bytes. A
 * size miss of exactly 4 with an otherwise correct instruction stream
 * means a misaligned block, not a missing instruction.
 */
int func_00205790(void) {
    int i;

    i = func_00205728(1);
    if (i != 0) {
        return i;
    }
    i = 1;
    while (i < 5) {
        if ((D_001A01F0_slots.flags[i] & 0x1000) == 0 &&
            D_001A01F0_slots.use[i] != 0) {
            break;
        }
        i++;
    }
    func_00205830(0, i);
    return i;
}

extern int D_001A01F0[];

/*
 * Same three parallel arrays func_002054E0 walks: 0x278/4 = 0x9E,
 * 0x28C/4 = 0xA3 and 0x2A4/4 = 0xA9 into D_001A01F0. Moves entry `b`
 * onto entry `a` and frees `b`.
 *
 * Byte mismatch, correct size (0x9C), 22 of 39 words: the instruction
 * sequence is right and the whole residual is that retail puts b*4 in
 * $s1 and a*4 in $s2 where we do the reverse (allocator destination
 * choice -- see docs).
 *
 * The `base` local is load-bearing and is a NEW data point for the
 * two-sided base-pointer lever. Writing the three pointers as
 * `&D_001A01F0[0x9E]` etc. folds the first offset into the symbol's
 * %lo, anchoring everything on D_001A01F0+0x278 and costing an
 * instruction (152 vs 156 bytes). Naming the unoffset base first keeps
 * the raw symbol address live in $s0 and derives all three with
 * separate addius, which is retail's shape. Writing the same accesses
 * as D_001A01F0[0x9E + a] is worse still (184 bytes): it adds the
 * constant to the index before the shift instead of reusing one a*4.
 */
void func_00205830(int a, int b) {
    int *base = D_001A01F0;
    int *dst = base + 0x9E;
    int *slot = base + 0xA3;
    int *size = base + 0xA9;

    func_001F9A98((void *)dst[a], (void *)dst[b], size[b] << 4);
    slot[a] = slot[b];
    size[a] = size[b];
    slot[b] = -1;
}

extern int D_001A01F0[];

int func_002058D0(int arg0) {
    int i;
    for (i = 0; i < 5; i++) {
        if (D_001A01F0[0x9E + i] != 0 && D_001A01F0[0xA3 + i] == arg0) {
            return i;
        }
    }
    return -1;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00205918);

extern int *D_001602E0;

/* Mid-iteration work-in-progress reverted to INCLUDE_ASM: it was at
   19/84 when the agent working it was cut off by an API session
   limit, i.e. unfinished rather than a documented near-miss, and
   over the revert threshold. The partial C is preserved in branch
   history (parallel-A/B/C) for whoever resumes it. */
INCLUDE_ASM("asm/nonmatchings/text", func_00205A50);

INCLUDE_ASM("asm/nonmatchings/text", func_00205AA8);

void func_00205C08(unsigned char *dst, unsigned char *a, unsigned char *b,
                   unsigned char *mask) {
    int i;
    int j;
    int bit;
    unsigned char *next;

    for (i = 0; i <= 0x7FFF; i++) {
        bit = 1;
        next = mask + 1;
        for (j = 7; j >= 0; j--) {
            if (*mask & bit) {
                *dst = *a;
            } else {
                *dst = *b;
            }
            bit <<= 1;
            a++;
            b++;
            dst++;
        }
        mask = next;
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_00205C70);

INCLUDE_ASM("asm/nonmatchings/text", func_00205E70);

INCLUDE_ASM("asm/nonmatchings/text", func_00206F40);

INCLUDE_ASM("asm/nonmatchings/text", func_00207090);
