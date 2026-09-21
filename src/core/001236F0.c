#include "common.h"
#include "structs.h"

/*
 * core_text object 0x1236F0-0x125218. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 */

/* Declarations in scope here before the split. */
extern long func_00116F68(int arg0, int arg1, int arg2);
extern int D_0015ED10;
extern void *D_0012F86C NOT_SDA;
extern int func_001162B8(void *arg0, void *arg1, void *arg2);
extern int func_00116320(void *arg0, void *arg1, void *arg2);
extern long func_001163A0(void *arg0, void *arg1, void *arg2);
extern void func_00116408(void *arg0);
extern void func_00113968(void);
extern void func_00114438(void *, void *);
extern char D_00152470[];
extern int func_00119088();
extern int func_00119110();
extern long func_00116108_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_00116108");
extern long func_001188C8_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_001188C8");
extern long func_00114518_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_00114518");
extern int func_00112468(int *errOut, int arg1);
extern int func_00114060(int, void *);
extern void func_00113AE0(void *);
extern void func_00117118(void *, void *, int, int);
extern int func_00119008();
extern int D_0012FCF0 NOT_SDA;
extern void func_00118E90(int arg0, void *arg1);
extern void *D_00154A40 NOT_SDA;
extern int D_00155080[];
extern void func_001193F8(int);
extern void func_00118AD0(int, int);
extern int D_00154F54;
extern int D_0012FD04;
extern int D_00154F64 NOT_SDA;
extern int D_00154F6C NOT_SDA;
extern void func_0011AA90(int, int, int, int, int, int, int);
extern void func_0011AA00(void);
extern int D_0012FD08 NOT_SDA;
extern int func_0011D960(void);
extern void func_0011D9A8(void);
extern int func_00118C70(void *);
extern int D_0012FDA0;
extern int D_0012FDA4;
extern char D_00157E80[];
extern int D_0012FD9C;
extern void func_0011BBF0(void);
extern int D_0012FD9C NOT_SDA;
extern int func_001151B4();
extern char D_0012FCEC[];
extern char D_001580A8[];
extern int D_0012FDA8;
extern void func_001153FC(void *, int, int);
extern int D_0012FD94;
extern int D_0012FDAC;
extern char D_00158140[];
extern int D_00158180;
extern int D_001581C0;
extern char D_00158528[];
extern int D_0012FDB4;
extern int func_0011CE70(int arg0, int arg1, int arg2, void *arg3);
extern int func_00118E70(int);
extern void func_00118EC0(void);
extern int func_00118EA0(void);
extern void func_0011D4E0(void);
extern void func_00118EB0(void);
extern int D_00130420;
extern int D_00130424;
extern void func_00118CF0(void *);
extern void func_00118CE0(void *);
extern int D_00130BD0[];
extern char D_00130428[];
extern int func_0011DC50(void);
extern void func_0011DBE8(int, int);
extern void func_0011DBF8(int, void *, int);
extern int func_0011DC40(int);
extern void func_00118D80(int);
extern void func_001206B0(float *, int *);
extern void func_001208E4();
extern void func_00118B20(int, void *, int);
extern void func_00118C80(int);
extern int func_00120F30(int);
extern void *D_00159840;
extern int D_001313E0;
extern int D_001313E8;
extern int D_001313EC;
extern int D_001313F0;
extern int D_001313E4;
extern int D_001313FC;
extern void func_00120C58(void);
extern int func_00120D28(int);
extern void func_00118C90(int);
extern char D_00132590[];
extern int D_00131440;
extern void func_0011A6C8();
extern int func_0011B6B8(void *);
extern char D_00153000[];
extern char D_00132E08[];
extern int D_001313D0;
extern int func_00121040(int);
extern int D_001325C0;
extern char D_00132E40[];
extern void func_00123650(void *);
extern char D_001534E0[];
extern int D_00132E70[];

INCLUDE_ASM("asm/nonmatchings/core_text", func_001236F0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001238A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001238B0);

extern int func_001238B0(int, int, int, int);
extern int D_00132EA8;

int func_001239D8(int arg0, int arg1, int arg2) {
    int r = func_001238B0(arg0, arg1, arg2, 0x40);
    if (r == 0) {
        D_00132EA8 = 0xB;
    }
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123A10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123AC8);

/*
 * Unpack a scratchpad-resident descriptor: arg0 is forced into the SPR
 * window (| 0x20000000), then two counted byte runs are copied out of
 * it -- the one at +0x10 to the pointer at +0x8 for the count at +0x0,
 * and the one at +0x50 to the pointer at +0xC for the count at +0x4.
 * The counts are re-read from the descriptor on every iteration, so
 * they are written out in full rather than cached.
 *
 * The explicit zero-trip guard around each do/while is what makes this
 * match, and it is worth knowing why. Written as a plain `for`, the
 * source base (p + 0x10) is loop-invariant, so GCC hoists it ABOVE the
 * guard; retail computes it BELOW, between the guard and the loop head.
 * That one position shifts the loop head by a word, which in turn costs
 * the alignment nop retail carries -- two instructions per loop, 16
 * bytes over the two loops. Spelling the guard yourself puts the
 * invariant where retail has it. (Folding the +0x10 into the load
 * offset instead of keeping a base pointer costs another 8.)
 */
void func_00123BA0(void *arg0) {
    char *p = (char *)((unsigned int)arg0 | 0x20000000);
    unsigned char *src;
    char *d;
    int i;

    if (*(int *)(p + 0x0) != 0) {
        d = *(char **)(p + 0x8);
        i = 0;
        if (i < *(int *)(p + 0x0)) {
            src = (unsigned char *)(p + 0x10);
            do {
                *d++ = src[i];
                i++;
            } while (i < *(int *)(p + 0x0));
        }
    }
    if (*(int *)(p + 0x4) != 0) {
        d = *(char **)(p + 0xC);
        i = 0;
        if (i < *(int *)(p + 0x4)) {
            src = (unsigned char *)(p + 0x50);
            do {
                *d++ = src[i];
                i++;
            } while (i < *(int *)(p + 0x4));
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123C30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123D48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123EC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123EE8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123F30);

extern int *D_00159B28;
extern int *D_00159B2C;
extern int *D_00159B30;

void func_00124010(int arg0) {
    char *p = (char *)(arg0 | 0x20000000);
    if (D_00159B28 != 0) *D_00159B28 = *(int *)(p + 0x0);
    if (D_00159B2C != 0) *D_00159B2C = *(int *)(p + 0x4);
    if (D_00159B30 != 0) *D_00159B30 = *(int *)(p + 0x90);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124068);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001241E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124338);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124410);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124528);

extern int func_0011B4C8();
extern char D_0015B108[];
extern int D_0015B180;

int func_001245F8(void) {
    func_0011B4C8(D_0015B108, 0x80000963, 0, &D_0015B180, 0x400,
                  &D_0015B180, 0x400, 0, 0);
    return D_0015B180;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124650);

extern void func_00124B60(void *);
extern char D_00153658[];

/* Same RPC shape as func_001245F8 above (9 args: $4-$11 plus one stack
   slot), but with a different command id and an error path.

   The request word goes into the buffer at +4. It has to be written
   through a local pointer, not as (&D_0015B180)[1]: the latter folds to
   the symbol D_0015B180+4, so the compiler builds THAT address and then
   subtracts 4 to pass the buffer. With `buf`, one lui/addiu serves both
   the store and the two pointer arguments, as retail does.

   The test is written >= 0 so the error path is the fall-through and the
   success path is the branch target, letting the result load sit in the
   bgez delay slot. */
int func_001247E8(int arg0) {
    int *buf = &D_0015B180;

    buf[1] = arg0;
    if (func_0011B4C8(D_0015B108, 0x80000904, 0, buf, 0x400,
                      buf, 0x400, 0, 0) >= 0) {
        return D_0015B180;
    } else {
        func_00124B60(D_00153658);
        return 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124858);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124920);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124A68);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124A70);

/*
 * Reverted -- semantics certain (an unused-argument no-op, called with
 * one pointer arg from below), but the register-shadow spill shape is
 * a puzzle: retail spills $5-$11 (a1-a7) to an 0x80-byte frame but
 * saves NO floating registers. A true `void func_00124B60(void *, ...)`
 * reproduces the GPR spill but ALSO adds f12/f14/f16/f18 saves (16
 * bytes over); a K&R-style `void func_00124B60()` produces no spill at
 * all (compiler proves the args are dead and elides them, same as any
 * ordinary unused-parameter function). Neither spelling reached
 * retail's GPR-only shadow save. Same open question as func_001E9730's
 * variadic idiom, but for a GPR-only variant -- not yet understood.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00124B60);

/*
 * Reverted: size mismatch (ours=72, retail=60 -- 12 bytes over).
 *
 *   extern int D_00132ED0;
 *   extern char D_0015B640_b[] __asm__("D_0015B640");
 *
 *   int func_00124B88(void) {
 *       int p = (int)D_0015B640_b;
 *       int end = p + 0x3300;
 *       D_00132ED0 = 1;
 *       do {
 *           *(int *)(p + 0) = 0;
 *           *(int *)(p + 4) = 0;
 *           *(int *)(p + 8) = 0;
 *           p += 0x330;
 *       } while (p < end);
 *       return 1;
 *   }
 *
 * Zeroes the +0x00/+0x04/+0x08 fields of all 16 entries in the
 * 0x330-stride table D_0015B640, then marks it initialized. Semantics
 * certain; retail's loop is a plain ascending `bnez` with the
 * comparison as `slt` (signed) and no duplicated body. Because
 * end-start (0x3300) is an exact multiple of the stride (0x330) --
 * always 16 iterations -- this compiler can prove the trip count at
 * compile time and reverses the loop into a `bnezl`-based down-count
 * with the first store duplicated as the branch's delay-slot
 * instruction, regardless of whether the cursor is typed `int`,
 * `unsigned int`, or `char *` (tried all three; `int` at least
 * recovers retail's `slt`, but the reversal itself doesn't go away).
 * A different case from the established "unsigned loop counter blocks
 * reversal" lever ([[rac1-64bit-field-type]]'s sibling precedent,
 * e.g. func_0011DCB8) -- that lever stops reversal driven by a small
 * loop-counter comparison, not one driven by a statically-divisible
 * address range.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00124B88);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124BC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124D10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124DF0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124EE0);

extern int func_00124920(int);
/* 0x330-stride entry table. Declared as a real struct array, not
   `char[]` + byte offset: the two are not codegen-equivalent. Indexing a
   typed array emits `addu base,index`; the char-pointer form emits
   `addu index,base`, and reordering the C addition cannot change it
   because GCC canonicalises the PLUS first. See func_00125078 and the
   same lever on D_001E8F80 in text.c. */
typedef struct {
    char unk_00[4];
    int  unk_04;
    int  unk_08;
    char *unk_0C;
    char unk_10[0x320];
} Ent330;
extern Ent330 D_0015B640[];

/*
 * Close, not exact (28/84), same size. Logic confirmed: call
 * func_00124920(arg0); if it returns >= 0, mark entry arg0 of the
 * 0x330-stride table D_0015B640 as {+4 = 1, +8 = result}; return the
 * result either way.
 *
 * Retail computes the entry address once into $5, copies it to $3, and
 * stores with displacements 8($5) and 4($3) -- a redundant register
 * copy. Writing the address once into a `char *e` local coalesces to a
 * single register and comes out 4 bytes SHORT (a size mismatch, so not
 * keepable); recomputing the address per store restores the right size
 * but makes the compiler fold the +4 into the address constant instead
 * of using a store displacement. Two pointer locals (`f = e`) coalesce
 * straight back to one register. So the size and the addressing form
 * are reachable separately here but not together.
 */

int func_00125020(int arg0) {
    int t = func_00124920(arg0);
    if (t >= 0) {
        D_0015B640[arg0].unk_04 = 1;
        D_0015B640[arg0].unk_08 = t;
    }
    return t;
}

extern void func_00119288(void *a, void *b);

/*
 * Close, not exact (3/100), same size. Logic confirmed: take entry
 * arg0 of the 0x330-stride table D_0015B640, follow its +0xC pointer,
 * record that pointer and pointer+0x80 in a two-slot stack array, call
 * func_00119288(p, p+0x100), then return whichever slot has the smaller
 * +0x7C field -- retail indexes the array with the `slt` result
 * directly, which plain C reproduces.
 *
 * The three differing bytes were one instruction: retail forms the entry
 * address as `addu $2,$2,$4` (base, index) where we emitted
 * `addu $a0,$a0,$v0` (index, base). Writing the addition the other way
 * round changes nothing -- GCC canonicalises the PLUS -- and this was
 * recorded here as "the allocator's destination choice, not operand
 * order", which was wrong. It is operand order, and it is steerable:
 * give the table a real element type and index it. See Ent330 above.
 */
void *func_00125078(int arg0) {
    char *p = D_0015B640[arg0].unk_0C;
    char *slot[2];

    slot[0] = p;
    slot[1] = p + 0x80;
    func_00119288(p, p + 0x100);
    return slot[*(int *)(slot[0] + 0x7C) < *(int *)(slot[1] + 0x7C)];
}

/*
 * REVERTED (size mismatch: ours 132, retail 128). Logic is certain, and
 * the block structure below reproduces retail's exactly -- the two
 * `return 0` exits share one block, the beqz delay slot is free for the
 * spill, and the D_00132ED8 accesses come out as %lo($base) for [0] and
 * addiu+4 for [1], just as retail has them:
 *
 *   extern int D_00132ED8[];
 *
 *   int func_001250E0(int arg0) {
 *       char *e = D_0015B640 + arg0 * 0x330;
 *       char *p = *(char **)(e + 0xC);
 *       char *slot[2];
 *
 *       slot[0] = p;
 *       slot[1] = p + 0x80;
 *       if (*(int *)(p + 0x7C) == 0 ||
 *           (D_00132ED8[0] == *(int *)(p + 0x7C) &&
 *            D_00132ED8[1] == *(int *)(slot[1] + 0x7C))) {
 *           return 0;
 *       }
 *       D_00132ED8[0] = *(int *)(slot[0] + 0x7C);
 *       D_00132ED8[1] = *(int *)(slot[1] + 0x7C);
 *       return 1;
 *   }
 *
 * The two-slot stack array is not decoration: retail spills the pointer
 * and pointer+0x80 to 0x0/0x4 of a 0x10 frame in a LEAF function, the
 * same idiom already used by func_00125078 just above.
 *
 * Exactly one instruction over, and it is the allocator's destination
 * choice again: retail puts %hi(D_00132ED8) straight into $7 and uses
 * $7 for every later reference, while this compiler emits
 *     lui $2,%hi(D_00132ED8) ; lw $3,%lo(D_00132ED8)($2) ; move $7,$2
 * because it wants $2 for the lui and then needs $2 back for `li $2,1`.
 * Caching the global's base in a local `int *g` removes the copy but
 * also removes an addiu and a reload, landing four bytes SHORT (and
 * folding the two bne into a bnel); combining the conditions the other
 * way (a single `&&` chain returning 1) lets GCC keep both pointers in
 * registers and drops the spills entirely, 16 bytes short. No spelling
 * tried hits 32 instructions.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_001250E0);

/*
 * Byte mismatch at correct size (0xB0), 8 of 44 words, and every one of
 * them is $a2 vs $a3: retail keeps the loop index in $a2 and the
 * short-slot counter in $a3, we do the reverse. Instruction stream,
 * constants and everything else are identical.
 *
 * New data point on the declaration-order lever, which is recorded as
 * inert. It is inert for INSTRUCTION SELECTION -- all 24 orderings of
 * the four initialised locals compile to the identical mnemonic
 * sequence (checked with tools/permute.py) -- but it is NOT inert for
 * emission order: moving `i` ahead of `b` reorders the two zeroing
 * `daddu`s in the prologue and took this function from 10/44 to 8/44.
 * It does not reach the register assignment itself, which stays the
 * recorded allocator destination-choice dead end.
 *
 * Expand a 40-bit mask into 40 four-word slots. For each set bit, record
   slot type 1 plus the running (a, b) pair; entries 0x10..0x1F and
   0x23..0x26 are "wide" (size 8) and only advance a, everything else is
   size 1 and advances b, rolling a over every eighth. Clear bits zero
   the slot's type and both counters. */
int func_00125160(unsigned char *src, int *out) {
    int bit;
    int a;
    int i;
    int b;

    bit = 0;
    a = 0;
    i = 0;
    b = 0;
    do {
        if (((*src >> bit) & 1) != 0) {
            out[0] = 1;
            out[2] = a;
            out[3] = b;
            if ((i >= 0x10 && i < 0x20) || (i >= 0x23 && i < 0x27)) {
                out[1] = 8;
                a++;
            } else {
                b++;
                out[1] = 1;
                if ((b & 7) == 0) {
                    a++;
                    b = 0;
                }
            }
        } else {
            out[0] = 0;
            out[2] = 0;
            out[3] = 0;
        }
        bit++;
        if ((bit & 7) == 0) {
            src++;
            bit = 0;
        }
        i++;
        out += 4;
    } while (i < 0x28);
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125210);
