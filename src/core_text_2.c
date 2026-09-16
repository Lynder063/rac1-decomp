#include "common.h"
#include "structs.h"

/*
 * core_text, continued from src/core_text.c: everything after the libgcc
 * fp-bit modules (src/libgcc/), which sit between the two halves.
 */

INCLUDE_ASM("asm/nonmatchings/core_text", func_001206A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001206B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120740);

extern void func_001206B0(float *, int *);

/*
 * Close, not exact (8/64, same size). Instruction-for-instruction
 * identical to retail apart from which of two instructions takes the
 * call's delay slot: retail emits the `swc1` of the float argument
 * fourth and puts `daddu $5,$29,$0` (the second argument) in the slot;
 * this compiler does the reverse. Pure scheduling -- the store of `f`
 * is the last computation before the call, so it sinks into the slot.
 */
void func_00120778(float arg0) {
    int buf[4];
    float f = arg0;
    func_001206B0(&f, buf);
    func_00120670(buf[0], buf[1], buf[2],
                  (long)(((unsigned long)buf[3] << 32) >> 2));
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001207B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120858);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001208E4);

extern void func_001208E4();
extern void func_00118B20(int, void *, int);
extern void func_00118C80(int);

/* Same stack-descriptor idiom as func_0011BBF0. The second argument to
   func_00118B20 is the address of func_001208E4's *second* instruction --
   retail builds it as one %hi/%lo pair on `func_001208E4 + 4`, so it is a
   code address the source names by symbol, not a separate label.

   Not exact: 24/104, same size. `unsigned short arg0` is confirmed -- it
   is what puts `andi $17,$4,0xFFFF` in the prologue rather than at the
   call site (declaring it `int` and masking at the call costs 4 more
   bytes of mismatch). The rest is the same prologue-scheduling residual
   as func_0011DC50: retail interleaves the three descriptor stores
   between the `$16` and `$31` saves, this build front-loads `sd $31`. */
void func_00120910(unsigned short arg0) {
    int buf[8];
    int h;
    buf[5] = 0;
    buf[2] = 0;
    buf[1] = 1;
    h = func_00118C70(buf);
    func_00118B20(arg0, (char *)func_001208E4 + 4, h);
    func_00118CB0(h);
    func_00118C80(h);
}

extern int func_00120F30(int);
extern int func_0011D960(void);
extern void func_0011D9A8(void);
extern void *D_00159840;

void *func_00120978(void *arg0) {
    void *old;
    int r;
    if (func_00120F30(1) != 0) {
        return 0;
    }
    r = func_0011D960();
    old = D_00159840;
    D_00159840 = arg0;
    if (r != 0) {
        func_0011D9A8();
    }
    return old;
}

/*
 * Reverted (size mismatch: 144 vs retail's 160). Semantics are certain:
 *
 *   void func_001209D8(int *arg0) {
 *       D_00131414 = *arg0;
 *       D_00131418 = D_00131414;
 *       if (D_00131414 == 0xB) {
 *           D_00131414 = 0;
 *           D_001313F0 = 0;
 *           return;
 *       }
 *       func_00118CA0(D_001313E8);
 *       if (D_001313D4 != 0 && D_00159840 != 0) {
 *           func_00118CA0(D_001313E0);
 *       } else {
 *           D_001313F0 = 0;
 *       }
 *       D_00131414 = 0;
 *   }
 *
 * Sixteen bytes short for two reasons, in equal parts:
 *  - retail re-LOADS D_00131414 after storing it, twice (store, load,
 *    store elsewhere, load, compare), where this compiler forwards the
 *    stored value. `volatile` would buy those 8 bytes back, but it is
 *    not something the rest of the tree spells and it would be guessing
 *    at retail's source rather than recovering it.
 *  - both func_00118CA0 calls have a bare `nop` in their delay slots in
 *    retail and we schedule the following load into them -- the known
 *    per-site delay-slot difference, not a rule (see docs).
 * Even with volatile the second half would still block it, so this
 * stays a stub.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_001209D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120A78);

extern int D_001313E0;
extern int D_001313E8;
extern int D_001313EC;
extern int D_001313F0;

/*
 * REVERTED (size mismatch: ours 136, retail 148). Logic is certain --
 * the same one-shot registration idiom as func_0011B710, run only while
 * either handle is still -1:
 *
 *   void func_00120B28(void) {
 *       int buf[8];
 *
 *       if (D_001313E8 == -1 || D_001313EC == -1) {
 *           buf[5] = 0;
 *           buf[1] = 1;
 *           buf[2] = 1;
 *           D_001313E8 = func_00118C70(buf);
 *           D_001313EC = func_00118C70(buf);
 *           buf[2] = 0;
 *           D_001313E0 = func_00118C70(buf);
 *           D_001313F0 = 0;
 *       }
 *   }
 *
 * Three instructions short, and all three are retail's compiler being
 * WORSE at tail merging rather than anything in the source: retail
 * materialises %hi(D_001313EC) separately in each arm of the ||, keeps
 * a separate `addiu $2,$0,1` per arm, and needs a `b` to rejoin. This
 * compiler hoists the lui above the test and merges the two arms into
 * one block. Writing the guard inverted with an early return
 * (`if (a != -1 && b != -1) return;`) produces the identical 34
 * instructions, so the block duplication is not reachable from the
 * condition's spelling.
 *
 * The buf store order is also rotated (ours 2,5,1 against retail's
 * 5,1,2) -- the same unexplained rotation already documented on
 * func_0011B710, which is this function's twin.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00120B28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120BC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120C58);

extern int D_001313E4;
extern int D_001313FC;
extern void func_00120C58(void);

int func_00120CA0(void) {
    int r;

    D_001313E4 = 1;
    r = func_0011D960();
    func_0011AA38(0x80000012, (int)((char *)func_00120C58 + 8), 0);
    if (r != 0) {
        func_0011D9A8();
    }
    D_001313E4 = 0;
    D_001313FC = 1;
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120D18);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120D28);

extern int func_0011B4C8();
extern int func_00120D28(int);
extern void func_00118C90(int);
extern char D_00132590[];
extern int D_00131440;

/*
 * Sibling of func_00121930 below (and of the func_0011CBC8 pair): open
 * the service, run one func_0011B4C8 RPC, then release the lock and
 * hand back the reply. The reply is read back through the uncached
 * mirror of the DMA buffer (| 0x20000000), which is why the address is
 * spelled as an integer or.
 *
 * The RPC test MUST be spelled `>= 0` with the success arm inside the
 * if and the failure path falling through to the end. The obvious
 * inverse -- `if (rpc(...) < 0) { release(); return 0; } ... return r;`
 * -- is 8 bytes short in both siblings, because the early guard's
 * `return 0` and the failure arm's `return 0` then share a tail
 * (`v0 = 0; b epilogue`) and the compiler cross-jumps them into one.
 * Retail keeps two separate zeroings, and laying the arms out this way
 * is what stops the merge. Compare func_0011CBC8 above, where retail
 * DOES share the two exits -- so this is a per-function layout choice
 * that the comparison's spelling controls, not a compiler difference.
 */
int func_00120E98(void) {
    int r;

    if (func_00120D28(2) == 0) {
        return 0;
    }
    if (func_0011B4C8(D_00132590, 0xE, 0, 0, 0, &D_00131440, 4, 0, 0) >= 0) {
        r = *(int *)((unsigned int)&D_00131440 | 0x20000000);
        func_00118C90(D_001313E8);
        return r;
    }
    func_00118C90(D_001313E8);
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00120F30);

extern void func_0011A6C8();
extern int func_0011B6B8(void *);
extern char D_00153000[];
extern char D_00132E08[];
extern int D_001313D0;

int func_00120FD0(int arg0) {
    if (arg0 == 0) {
        if (D_001313D0 > 0) {
            func_0011A6C8(D_00153000);
        }
        while (func_0011B6B8(D_00132E08) != 0) {
            func_00120910(0x3C);
        }
        return 0;
    }
    return func_0011B6B8(D_00132E08);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121040);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001211B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121490);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121688);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012174C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121750);

extern int func_00121040(int);
extern int D_001325C0;

/* func_00120E98's sibling: service 3, command 4, and -1 rather than 0
   as the failure result. */
int func_00121930(void) {
    int r;

    if (func_00121040(3) == 0) {
        return -1;
    }
    if (func_0011B4C8(D_00132E08, 4, 0, 0, 0, &D_001325C0, 4, 0, 0) >= 0) {
        r = *(int *)((unsigned int)&D_001325C0 | 0x20000000);
        func_00118C90(D_001313EC);
        return r;
    }
    func_00118C90(D_001313EC);
    return -1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001219C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121A80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121B78);

extern char D_00132E40[];

void *func_00121D08(void) {
    return D_00132E40;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121D14);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121D18);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121DB8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00121DC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012213C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001221FC);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00122200);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001222C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001224AC);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00122598);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012262C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00122814);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00122958);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00122AD4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123164);

extern void func_00123650(void *);
extern char D_001534E0[];

/*
 * Close, not exact (24/112), same size. Logic is certain: spin while
 * bit 8 of *arg0 is set, and once a 0xFFFFFF countdown goes negative,
 * report through func_0011A6C8(D_001534E0) and kick func_00123650 on
 * every further iteration.
 *
 * The residual is the countdown's initial constant, and it is NOT
 * reachable from C. Retail builds 0x00FFFFFF as
 *     lui $17,0x100 ; addiu $17,$17,-1
 * (the signed %hi/%lo split, which is why splat invented a bogus
 * "D_FFFFFF" symbol for it). Both SN sub-builds emit the logical split
 *     lui $16,0xff  ; ori $16,$16,0xffff
 * instead, for every spelling tried: int, unsigned, long, and a
 * (char *)0xFFFFFF pointer. gcc 2.95's mips_move_1word hands a plain
 * CONST_INT to the assembler as `li`, and gas expands `li` with ori.
 * The lui/addiu pair is what gcc emits for a SYMBOL address, so retail
 * most likely got this value from an absolute/linker-defined symbol
 * rather than a literal.
 *
 * The register roles are swapped with it ($16/$17 exchanged) as a knock
 * -on of which value is materialised first; fixing that alone would not
 * make this exact, so it was not chased.
 */
void func_00123208(void *arg0) {
    int n = 0xFFFFFF;

    while ((*(int *)arg0 & 0x100) != 0) {
        if (n < 0) {
            func_0011A6C8(D_001534E0);
            func_00123650(arg0);
        }
        n--;
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123278);

int func_00123280(int arg0) {
    if ((unsigned int)arg0 >> 28 == 7) {
        arg0 &= 0x0FFFFFFF;
        arg0 |= 0x80000000;
    }
    return arg0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001232A8);

extern int D_00132E70[];

int func_001232E0(unsigned int arg0) {
    if (arg0 >= 0xA) {
        return 0;
    }
    return D_00132E70[arg0];
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123308);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001233E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001235C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123630);

/*
 * Attempted and reverted at 70/152 (same size, so inert). Semantics are
 * confirmed and the instruction sequence is structurally identical to
 * retail; the residual is the allocator destination-choice question plus
 * prologue scheduling, neither source-steerable. Decoded C, so a later
 * attempt starts from the meaning:
 *
 *   int func_00123650(int *arg0) {
 *       int en, prev, old;
 *       en = func_0011D960();
 *       prev = *(volatile int *)0x1000F520;          // D_ENABLER
 *       if ((prev & 0x10000) == 0)
 *           *(volatile int *)0x1000F590 = prev | 0x10000;
 *       *(volatile int *)0x1000E000;                 // D_CTRL, discarded
 *       old = *arg0;
 *       *arg0 = old & ~0x100;
 *       *(volatile int *)0x1000F590 = prev;          // restore
 *       if (en != 0) func_0011D9A8();
 *       return old;
 *   }
 *
 * Divergences: retail holds the func_0011D960 result in $7 and the
 * enabler in $6 where this compiler picks $a2/$a1; retail copies the
 * parameter to $17 after both prologue saves where this compiler
 * interleaves it between them; and this compiler hoists the
 * non-volatile *arg0 load above the volatile D_CTRL read (legal, but
 * retail has them the other way). The D_CTRL read is genuinely
 * discarded -- a volatile read for its side effect only.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00123650);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001236E8);

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

INCLUDE_ASM("asm/nonmatchings/core_text", func_00124B60);

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

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125298);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125300);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125340);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125380);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001253F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001254A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125548);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001255F0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125630);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125880);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00125F88);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001263A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001265C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126640);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001266D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126790);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126860);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126910);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001269C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126AC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126BC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126C60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126D10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126DF0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126ED8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00126FB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127080);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001271A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001272B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127318);

void func_00127378(int arg0) {
    unsigned int *p = (unsigned int *)0x10002010;
    *p = (*p & 0xFF7FFFFF) | (arg0 << 23);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001273A0);

extern void func_001286E8(int, int);

void func_001275A0(int arg0) {
    func_001286E8(arg0, 3);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001275C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127748);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127858);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127960);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127A90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127C80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00127D40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001281E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128270);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128410);

extern int D_00132F70[];

void func_00128560(char *arg0, unsigned int arg1) {
    volatile int *reg = (volatile int *)0x10002000;
    *reg = arg1;
    *(int *)(arg0 + 0x818) = D_00132F70[arg1 >> 28];
}

extern void func_0012BCC8(int);

/* Spins until the VIF1 DMA channel (D_CHCR 0x10002010) reports idle,
   nudging the IOP via func_0012BCC8 every 5001 spins so a stalled
   stream cannot deadlock. Same wait loop documented on func_00128860. */
void func_00128590(void *arg0) {
    int counter = 0;

    while ((*(volatile int *)0x10002010 & 0x80004000) == 0x80000000) {
        if (counter++ >= 0x1389) {
            func_0012BCC8(*(int *)((char *)arg0 + 0x858));
            counter = 0;
        }
    }
}

/*
 * REVERTED (SIZE mismatch -- always fatal downstream). Decode is
 * certain: the same spin-wait as func_00128590, on channel
 * 0x10002000, exiting either when the channel word goes non-negative
 * or when D_CHCR (0x10002010) bit 0x4000 comes up. It returns the raw
 * 64-bit channel word; func_00128860 narrows it with dsll32/dsra32,
 * so the return type is `long` (see the _wide alias note there).
 *
 *   long func_00128638(void *arg0) {
 *       volatile long *chcr = (volatile long *)0x10002000;
 *       long v;
 *       int counter = 0;
 *       while ((v = *chcr) < 0 && (*(volatile int *)0x10002010 & 0x4000) == 0) {
 *           if (counter++ >= 0x1389) {
 *               func_0012BCC8(*(int *)((char *)arg0 + 0x858));
 *               counter = 0;
 *           }
 *       }
 *       return v;
 *   }
 *
 * Retail is 176 bytes. Spellings tried, all short:
 *   - as above (chcr a local, 0x10002010 spelled inline):      160
 *     Block-for-block IDENTICAL to retail; the whole 16-byte gap is
 *     that retail hoists BOTH hardware addresses into callee-saved
 *     registers ($17 = 0x10002000, $16 = 0x10002010, $18 = arg0,
 *     0x40 frame) while this compiler hoists only 0x10002010 and
 *     leaves the channel read as an absolute `ld $4,268443648`,
 *     saving one register pair and its lui/ori setup.
 *   - both addresses as locals declared at the top:            120
 *     Hoisting the second one makes GCC rotate the loop the other
 *     way (`b` into the bottom test), which is structurally wrong.
 *   - guard + do/while, both addresses as locals inside the if: 152
 *
 * This refutes the base-pointer/timing lever for CONSTANT addresses:
 * declaring the pointer at the top of the function does NOT pin a
 * literal MMIO address into a callee-saved register the way it pins
 * a global's base. It is the same rematerialise-vs-keep allocator
 * choice already recorded on func_00128860, which is the sibling
 * that shares this exact wait loop.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00128638);


INCLUDE_ASM("asm/nonmatchings/core_text", func_001286E8);

/*
 * REVERTED -- decode is complete and believed correct; blocked on
 * register allocation, and the overage is a SIZE mismatch (0x114 vs
 * retail's 0x108) that overflows .core_text into .core_data, so it
 * cannot be left in as documented-close.
 *
 * A bitstream refill-and-extract: if the cache is empty or holds fewer
 * than n bits, wait for the DMA channel to go idle, refill from the
 * table, then return the top n bits.
 *
 *   extern long func_00128638_wide(void *, int *) __asm__("func_00128638");
 *
 *   int func_00128860(void *arg0, int n) {
 *       char *s = (char *)arg0;
 *       int bits;
 *       if (*(int *)(s + 0x818) != 0 || *(int *)(s + 0x83C) < n) {
 *           int *tbl = D_00132F70;
 *           int counter = 0;
 *           while ((*(volatile int *)0x10002010 & 0x80004000) == 0x80000000) {
 *               if (counter++ >= 0x1389) {
 *                   func_0012BCC8(*(int *)(s + 0x858));
 *                   counter = 0;
 *               }
 *           }
 *           *(volatile int *)0x10002000 = 0x40000000;
 *           *(int *)(s + 0x818) = tbl[4];
 *           *(int *)(s + 0x838) = (int)func_00128638_wide(s, tbl);
 *           *(int *)(s + 0x83C) = 0x20;
 *       }
 *       bits = *(int *)(s + 0x838);
 *       return (unsigned int)bits >> -n;
 *   }
 *
 * Confirmed right along the way: `counter++ >= 0x1389` is correct, not a
 * violation of the don't-put-++-in-a-comparison lever -- retail carries
 * the `daddu $2,$6,$0` spare move that lever warns about, so here the
 * move is EVIDENCE the ++ belongs inside the comparison. The dsll32/dsra32
 * after the jal is the 64-bit-return narrowing, handled by the _wide alias.
 *
 * Why it fails: retail keeps only $16/$17/$18 across the call (object,
 * D_00132F70 base, n) in a 0x40 frame and REMATERIALISES the hardware
 * constants 0x10002010 / 0x80004000 / 0x80000000 with lui/ori at each
 * use. This compiler hoists all three into callee-saved registers, which
 * forces three extra save/restore pairs and a 0x70 frame. Tried: tbl
 * hoisted before vs after the wait loop (0x114 vs 0x118), and `if` +
 * do/while vs a plain while (identical). The allocator's
 * rematerialise-vs-keep choice is not reachable from C -- same class as
 * the documented destination-choice question.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00128860);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128968);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128A58);

extern void func_00128590(void *);
extern void func_00128968(void *, int);
extern int func_00128860(void *, int);

void func_00128BA8(void *arg0) {
    int pad;

    func_00128590(arg0);
    pad = -(*(volatile int *)0x10002020 & 7) & 7;
    if (pad != 0) {
        func_00128968(arg0, pad);
    }
    while (func_00128860(arg0, 0x18) != 1) {
        func_00128968(arg0, 8);
    }
}

extern void func_00128968(void *, int);
extern int func_00128A58(void *, int);
extern void func_00129180(void *);

int func_00128C28(void *arg0) {
    *(int *)((char *)arg0 + 0x1B4) = func_00128A58(arg0, 5);
    if (func_00128A58(arg0, 1) != 0) {
        func_00128A58(arg0, 1);
        func_00128968(arg0, 7);
        func_00129180(arg0);
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128C90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128DA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128E68);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00128F90);

extern void func_00128968(void *, int);
extern int func_00128A58(void *, int);

void func_00129180(void *arg0) {
    while (func_00128A58(arg0, 1) != 0) {
        func_00128968(arg0, 8);
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001291C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129240);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001292E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001293A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001294A0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129530);

/*
 * REVERTED (size mismatch: ours 148, retail 144). Logic is certain:
 *
 *   void func_00129600(void *arg0, int arg1, int arg2) {
 *       char *s = (char *)arg0;
 *       int v, w;
 *
 *       if (arg2 != 0) {
 *           if (*(int *)(s + 0x174) == 3) {
 *               if (*(int *)(s + 0x150) == 3) {
 *                   v = *(int *)(s + 0x1C4);
 *               } else {
 *                   v = *(int *)(s + 0x1B8);
 *               }
 *               func_00129E30(s, v, arg1 - 1, arg1);
 *           } else {
 *               if (*(int *)(s + 0x150) == 3) {
 *                   v = *(int *)(s + 0x1D4);
 *                   w = *(int *)(s + 0x1E4);
 *               } else {
 *                   v = *(int *)(s + 0x1C8);
 *                   w = *(int *)(s + 0x1D8);
 *               }
 *               func_00129F40(s, v, w, arg1 - 1);
 *           }
 *       }
 *       if (*(int *)(s + 0xF8) == 1) {
 *           *(int *)(s + 0xF8) = 2;
 *       }
 *   }
 *
 * Note the arity evidence: func_00129F40 takes FOUR arguments here but
 * only three at its call in func_0012C278, so whichever declaration is
 * in scope must be prototype-less (see the K&R note in
 * docs/DECOMP_PROGRESS.md).
 *
 * One instruction over, and it is register choice again. arg1 has to
 * move out of $5 because $5 becomes an outgoing argument. Retail moves
 * it to $7 with a single `daddu $7,$5,$0` -- $7 is free until it is
 * needed, and it is exactly where the E30 call wants arg1 anyway, while
 * the F40 path overwrites it in place with arg1 - 1. This compiler
 * parks it in $8 instead and then needs a second `move $7,$8` for the
 * E30 call. Hoisting arg1 or arg1 - 1 into named locals does not move
 * it.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00129600);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129690);

extern char D_00153A80[];
extern void func_00116248_4(void *, char *, int, int) __asm__("func_00116248");
extern void func_0012C468_a(void *, void *) __asm__("func_0012C468");

/* Does the request at arg1 fit the heap described by arg0? A sized
   request (+0xE0 non-zero) has to fit both the byte budget at +0xDC and
   the entry budget at +0xE0; an unsized one has to fit width * height
   against +0xE4. On a refusal, format the two figures into the message
   at D_00153A80 and report it. Returns whether it fits. */
int func_00129948(void *arg0, void *arg1) {
    char buf[0x100];
    char *h = (char *)arg0;
    char *q = (char *)arg1;
    int e = *(int *)(h + 0xE0);
    int ok;

    if (e != 0) {
        ok = *(int *)(h + 0xDC) >= *(int *)(q + 0x4) &&
             e >= *(int *)(q + 0x8);
    } else {
        ok = *(int *)(h + 0xE4) >= *(int *)(q + 0xC) * *(int *)(q + 0x10);
    }
    if (ok == 0) {
        func_00116248_4(buf, D_00153A80, *(int *)(q + 0x4),
                        *(int *)(q + 0x8));
        func_0012C468_a(arg0, buf);
    }
    return ok;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001299E8);

int func_00129C78(void *arg0) {
    Obj40 *s = (Obj40 *)arg0;
    int r = 1;
    if (s->unk008 != 2) {
        int v = s->unk118;
        s->unk008 = 2;
        s->unk0AC = v;
    }
    s->unk820 = r;
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129CA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129E30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00129F40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A0F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A268);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A2EC);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A2F0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A418);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A558);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A718);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A7E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AA70);

/*
 * REVERTED (size mismatch: ours 32 bytes, retail 28). Semantics are
 * certain and the instruction sequence is identical:
 *
 *   int func_0012AAA8(void *arg0, int arg1) {
 *       return (int)(*(unsigned long *)arg0 >> (0x40 - arg1));
 *   }
 *
 * ld / li 0x40 / subu / dsrlv / dsll32 / dsra32 all match. The single
 * difference is delay-slot filling: retail puts the final `dsra32`
 * (second half of the 64->32 sign-extension for the int return) IN the
 * `jr` delay slot; this compiler emits it before the `jr` and fills the
 * slot with a nop, costing 4 bytes. Tried hoisting the load to a local
 * and hoisting the shift amount to a local -- both still 8 instructions.
 * Not source-steerable; it is the assembler/compiler delay-slot filler,
 * same family as the other scheduling blockers.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AAA8);

/*
 * Reverted: decoded but not compilable as written. Banking the decode
 * because that is the expensive part.
 *
 * It is a bitstream reader. Consume n bits from the 64-bit accumulator
 * at +0x0, then refill it a byte at a time from the cursor at +0xC
 * until at least 0x39 bits are available, wrapping the cursor back to
 * +0x20 when it reaches the end pointer at +0x24. +0x10 holds the bit
 * count, +0x18 the running total.
 *
 * Why it does not build: the refill needs a 64-bit shift by a VARIABLE
 * amount (`(long long)*p << (0x38 - bits)`), and this compiler rejects
 * that outright -- `unsupported wide integer operation`. That is the
 * same limitation already recorded for ordered 64-bit compares; shifts
 * by a constant are fine, by a variable are not. So this needs either
 * inline asm for the shift, or a reformulation that keeps the shift
 * amount constant. Do not simply retype the locals -- the operation
 * itself is what is refused.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AAC8);

/*
 * Close, not exact (8/76), same size. Two-argument sibling of
 * func_0012ABB0 above and blocked identically: the instruction multiset
 * is right, but retail schedules `move $16,$4` into the first jal's
 * delay slot while this compiler puts a register save there. Not
 * source-steerable -- see func_0012ABB0's comment for the variants
 * already tried.
 */
int func_0012AB60(void *arg0, int arg1) {
    int r = func_0012AAA8(arg0, arg1);
    func_0012AAC8(arg0, arg1);
    return r;
}

extern int func_0012AAA8(void *, int);
extern void func_0012AAC8(void *, int);

/*
 * Close, not exact (8/68), same size so harmless to everything after it.
 * Logic confirmed. The residual is purely which instruction fills the
 * first jal's delay slot: retail emits the three saves consecutively
 * ($16@0, $17@16, $31@32) and schedules `move $16,$4` into the slot,
 * while this compiler interleaves the $16 save with the move and puts
 * `sd $17,16` in the slot instead. Same instruction multiset, different
 * schedule. Hoisting the result into a pre-declared local (the usual
 * declaration-order lever) changes nothing.
 */
int func_0012ABB0(void *arg0) {
    int r;
    r = func_0012AAA8(arg0, 1);
    func_0012AAC8(arg0, 1);
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012ABF8);

unsigned int func_0012AC50(char *arg0, int arg1) {
    unsigned int v = *(int *)(arg0 + 0x8) + (arg1 >> 3);
    if (v >= *(unsigned int *)(arg0 + 0x24)) {
        v -= *(int *)(arg0 + 0x28);
    }
    return v;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AC7C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AC80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AD08);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B008);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B100);

int func_0012B250(void *arg0) {
    func_0012AB60(arg0, 0x38);
    func_0012AB60(arg0, 0x28);
    while (func_0012AAA8(arg0, 1) == 1) {
        func_0012AB60(arg0, 0x18);
    }
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B2C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B870);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012B918);

int func_0012BB20(void) {
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BB28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BB78);

int func_0012BB98(void *arg0) {
    return ((Wrapper *)arg0)->obj->unk004 == 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BBA8);

int func_0012BBF8(void *arg0) {
    char *b = *(char **)((char *)arg0 + 0x40);
    char *p;
    p = *(char **)(b + 0x1B8); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1C8); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1D8); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1BC); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1CC); if (p != 0) *(int *)(p + 0x28) = 0;
    p = *(char **)(b + 0x1DC); if (p != 0) *(int *)(p + 0x28) = 0;
    return 1;
}

/*
 * Close, not exact (12/36), same size. Logic verified: fetch the table
 * at arg0+0x40, index it by arg1*8, store arg3 at +0x10, then return
 * the old value at +0xC while overwriting it with arg2.
 *
 * Retail forms the second pointer as (base + 0xC) + arg1*8; this
 * compiler reassociates to base + (arg1*8 + 0xC). Writing it with the
 * parenthesisation retail uses does not help -- GCC reassociates anyway
 * -- and hoisting `base + 0xC` into its own local makes it WORSE
 * (12/36 -> 17/36). Same associativity/allocation class as the other
 * documented near-misses.
 */
int func_0012BC50(void *arg0, int arg1, int arg2, int arg3) {
    char *base = *(char **)((char *)arg0 + 0x40);
    char *p = base + arg1 * 8;
    char *q = (base + 0xC) + arg1 * 8;
    int old;
    *(int *)(p + 0x10) = arg3;
    old = *(int *)q;
    *(int *)q = arg2;
    return old;
}

/*
 * Close, not exact (12/80, same size so harmless). Dispatches through a
 * table hanging off arg0+0x40: index it by *arg1 (8-byte entries), take
 * the handler at +0xC, and if non-null call it with the entry's +0x10
 * field as a third argument, returning ITS result.
 *
 * The result-is-the-call's-return-value reading matters: a first attempt
 * returned the entry address instead, which kept `entry` live across the
 * call, forced a callee-saved register and made the function 8 bytes
 * long. Retail's `daddu $7,$2,$0` sits AFTER the jalr, so $2 there is
 * the callee's return value, not the entry pointer.
 *
 * Residual is the allocator: retail holds `result` in $7 (a3), this
 * compiler in $6 (a2), and the final move follows.
 */
void *func_0012BC78(void *arg0, int *arg1) {
    void *result = 0;
    if (arg0 != 0) {
        char *tbl = *(char **)((char *)arg0 + 0x40);
        if (tbl != 0) {
            char *entry = tbl + (*arg1 << 3);
            void *(*fn)() = *(void *(**)())(entry + 0xC);
            if (fn != 0) {
                result = fn(arg0, arg1, *(int *)(entry + 0x10));
            }
        }
    }
    return result;
}

/* No declaration needed: the definition above precedes this caller. The
   extern that used to sit here guessed `void (int, void *)` and now
   conflicts with the real signature. */
void func_0012BCC8(int arg0) {
    int local[8];
    local[0] = 1;
    func_0012BC78(arg0, local);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BCF0);

void func_0012BD28(void *arg0, int arg1, int arg2) {
    int *p = (int *)arg0;
    p[1] = arg2;
    p[0] = arg1;
    p[2] = arg1;
    p[3] = arg1;
}

void func_0012BD40(void *arg0) {
    char *p = (char *)arg0;
    *(int *)(p + 0xC) = *(int *)(p + 0x8);
}

void func_0012BD50(void *arg0) {
    char *p = (char *)arg0;
    *(int *)(p + 0x8) = *(int *)(p + 0xC);
}

extern void func_0012C468(void *, void *);
extern char D_00153B38[];

/* Bump allocator out of a region {base, size, used}: round `used` up to
   `align`, reserve `size` bytes, and hand back the aligned offset. On
   overflow it reports through func_0012C468 and returns 0 WITHOUT
   touching `used`. */
unsigned int func_0012BD60(void *arg0, char *r, unsigned int size,
                           unsigned int align) {
    unsigned int aligned;
    unsigned int end;

    aligned = ((*(unsigned int *)(r + 0x8) + align - 1) / align) * align;
    end = aligned + size;
    if (*(unsigned int *)(r + 0x0) + *(unsigned int *)(r + 0x4) < end) {
        func_0012C468(arg0, D_00153B38);
        return 0;
    }
    *(unsigned int *)(r + 0x8) = end;
    return aligned;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BDD0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012BF40);

extern void func_0012C0A0(void *);
extern void func_0012BF40(void *);

void func_0012C058(void *arg0) {
    Obj40 *inner = ((Wrapper *)arg0)->obj;
    if (inner->unk174 != 3) {
        func_0012C0A0(arg0);
    } else {
        func_0012BF40(arg0);
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C0A0);

extern void func_0012C278(void *);

int func_0012C200(void *arg0) {
    Wrapper *w = (Wrapper *)arg0;
    Obj40 *inner = w->obj;
    int ret = 0;

    if (inner->unk004 != 0 && inner->unk008 != 0) {
        func_0012C278((void *)inner);
        w->unk08 = inner->unk118 - inner->unk0AC;
        inner->unk004 = 0;
        ret = 1;
    }
    return ret;
}

/* Tail call: the constant argument setup lands in the jump's delay slot,
   so the field store precedes it. func_00127378 is defined above. */
void func_0012C268(void *arg0) {
    *(int *)((char *)arg0 + 0x848) = 0;
    func_00127378(1);
}

extern void func_00129E30(void *, int, int, int);
extern void func_00129F40();
extern char D_00153BB8[];

void func_0012C278(void *arg0) {
    Obj40 *s = (Obj40 *)arg0;
    int n = s->unk118;

    if (s->unk120 != 0) {
        func_0012C468(s, D_00153BB8);
    } else if (s->unk174 == 3) {
        func_00129E30(s, (int)s->slots[0].unk04, n - 1, n - 1);
    } else {
        func_00129F40(s, (int)s->slots[1].unk04, (int)s->slots[2].unk04);
    }
    s->unk120 = 0;
}

/*
 * Point the object's four scratchpad pointers at 0x70000000 and clear a
 * flag. Size-exact at 0x60, 2 of 24 words: retail saves $s1 before $ra
 * in the prologue and we save them the other way round. Swapping the two
 * locals' declaration order does not move it -- spill ORDER is the
 * recorded dead end, and it stays one.
 *
 * What DOES matter, and is new: `int a = 0x70000000;` must be written
 * BEFORE the call. An earlier round reverted this at 8 bytes short
 * having tried binding the constants to locals declared AFTER the call,
 * which changes nothing because gcc folds them straight back into the
 * stores. Declared before the call, the pseudo's live range crosses the
 * call, so the allocator gives it a CALLEE-SAVED register and the
 * function pays retail's sd/ld $s1 pair -- 8 bytes. gcc still
 * rematerialises the `lui` after the call, exactly as retail does, so
 * the only trace of the earlier definition is the register class.
 *
 * That is the general point: a constant hoisted above a call does not
 * survive as a value (constant propagation puts it back), but it does
 * survive as a register-class decision. Where retail spends a
 * callee-saved register on something that looks like it needs no
 * register at all, the source defined it before the call.
 */
void func_0012C2F8(void *arg0) {
    char *p = (char *)arg0;
    int a = 0x70000000;

    func_00127378(1);
    *(int *)(p + 0x590) = a;
    *(int *)(p + 0x594) = 0x70001800;
    *(int *)(p + 0x6D0) = 0x70001B00;
    *(int *)(p + 0x6D4) = 0x70003300;
    *(int *)(p + 0x810) = 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C358);

extern char D_00153BD8[];
/* Unprototyped: func_0011A6C8 is a varargs definition (blocked as such),
   but calling one is fine -- only defining one needs stdarg.h. */
extern void func_0011A6C8();

void func_0012C420(void *arg0) {
    func_0011A6C8(D_00153BD8, arg0);
}

extern void func_00116248(void *);

void func_0012C430(void *arg0) {
    char buf[0x100];
    func_00116248(buf);
    func_0012C468(arg0, buf);
}

extern void func_0012C420(void *);

void func_0012C468(void *arg0, void *arg1) {
    char *a = (char *)arg0;
    void *t = *(void **)(a + 0x858);
    /* the arg0 null test is retail's, after it has already dereferenced
       arg0 -- one of the "dead-looking guards" that must be written out */
    if (t != 0 && arg0 != 0 && *(int *)(a + 0xC) != 0) {
        int buf[4];
        buf[0] = 0;
        buf[1] = (int)arg1;
        func_0012BC78(t, buf);
    } else {
        func_0012C420(arg1);
    }
}

/*
 * Close, not exact (4/32), same size so harmless. Logic and every
 * instruction match; retail puts the `0x8` store in the `jr` delay slot
 * and `0x4` before it, this compiler chooses the opposite. Tried three
 * source orderings -- all three produced the identical schedule, so the
 * scheduler fixes this independently of statement order.
 */
int func_0012C4C0(void *arg0, int arg1, int arg2) {
    char *p = (char *)arg0;
    *(int *)(p + 0x4) = arg1;
    *(int *)(p + 0x8) = arg2;
    *(int *)(p + 0xC) = arg1 >> 4;
    *(int *)(p + 0x10) = arg2 >> 4;
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C4E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C608);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C8B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012C990);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CA70);

extern int func_00128A58(void *, int);

/*
 * Close, not exact (8/140), same size. Logic is certain -- a bitstream
 * reader: pull 3 bits, and if the next bit is set pull three 8-bit
 * fields (keeping the last at +0x144); then a 14-bit field to +0x148,
 * a flag bit, and another 14-bit field to +0x14C.
 *
 * The eight bytes are two adjacent instructions in the wrong order:
 * retail stores the +0x148 result immediately after its call and then
 * sets up $4 for the next one, while this compiler hoists the `$4`
 * setup above the store. Binding the result to a named temporary first
 * changes nothing -- the scheduler makes the same choice either way.
 */
void func_0012CBA0(void *arg0) {
    char *s = (char *)arg0;

    func_00128A58(s, 3);
    if (func_00128A58(s, 1) != 0) {
        func_00128A58(s, 8);
        func_00128A58(s, 8);
        *(int *)(s + 0x144) = func_00128A58(s, 8);
    }
    *(int *)(s + 0x148) = func_00128A58(s, 0xE);
    func_00128A58(s, 1);
    *(int *)(s + 0x14C) = func_00128A58(s, 0xE);
}

extern char D_00153C48[];
extern char D_00153C78[];
extern char D_00153C90[];

/* Three more of the func_0012C468 family, same shape as func_0012CC60. */
void func_0012CC30(void *arg0) {
    func_0012C468(arg0, D_00153C48);
}

void func_0012CC40(void *arg0) {
    func_0012C468(arg0, D_00153C78);
}

void func_0012CC50(void *arg0) {
    func_0012C468(arg0, D_00153C90);
}

extern char D_00153CC8[];

/* Tail call: arg0 passes straight through, arg1 is &D_00153CC8 whose
   %lo half retail schedules into the jump's delay slot. */
void func_0012CC60(void *arg0) {
    func_0012C468(arg0, D_00153CC8);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC6C);

extern int func_0012CE48(void *);

/* Tail call with argument setup: retail is
   `lw $4,0x40($4)` / `j func_0012CE48` / `addiu $4,$4,0x4C`. */
int func_0012CC80(char *a) {
    return func_0012CE48((char *)&((Wrapper *)a)->obj->handlers[8]);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC8C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CCF8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CD60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CE48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CF98);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D000);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D068);

/*
 * Reverted (size mismatch: 152 vs retail's 156). Semantics are certain
 * -- it fills the record at D_001331D8 once, byte 0 staying zero until
 * it has been read, and hands the buffer back either way:
 *
 *   extern int func_0011BF80(void *, int);
 *   extern int func_0011C5C0(int, void *, int);
 *   extern void func_0011C208(int);
 *   extern char D_001331D8[], D_00153D00[], D_00153D10[], D_00153D28[];
 *
 *   char *func_0012D2A0(void) {
 *       int fd;
 *       if (D_001331D8[0] == 0) {
 *           fd = func_0011BF80(D_00153D00, 1);
 *           if (fd == -1) { func_0011A6C8(D_00153D10, D_001331D8); }
 *           if (func_0011C5C0(fd, D_001331D8, 0xE) == -1) {
 *               func_0011A6C8(D_00153D28);
 *           }
 *           func_0011C208(fd);
 *       }
 *       return D_001331D8;
 *   }
 *
 * (The second func_0011A6C8 gets only the format string; $a1 still holds
 * the buffer from the func_0011C5C0 call and retail never resets it,
 * which is why that declaration has to stay unprototyped.)
 *
 * Blocked on addressing form, not on source shape. Retail keeps
 * %hi(D_001331D8) itself live in a callee-saved register and spends
 * three separate %lo references on it -- the `lb`, the buffer pointer
 * in $s3, and the returned address -- for 4 saved registers and an
 * 80-byte frame. This compiler folds %hi+%lo at every reference, so it
 * never has a reason to keep the bare %hi, and lands one instruction
 * short however the references are spelled. Counts for the three
 * spellings tried:
 *   - the source above, D_001331D8 everywhere            160 (4 LONG:
 *     adds a daddu because the lui lands in $v0 and has to be copied
 *     into a saved register to survive the calls)
 *   - a `char *p = D_001331D8` local used for the calls  152 (4 SHORT)
 *   - that local plus a second C name on the same asm
 *     symbol for the return, to force a fresh lui/addiu 152 (4 SHORT;
 *     the alias works and does emit the second lui/addiu, but the
 *     compiler then drops a saved register and the save/restore pair
 *     costs exactly what the lui gained)
 * Related to the "global store addressing" entry in the docs: the
 * -mno-split-addresses tradeoff is the same one.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D2A0);

extern void func_0012D2A0(void);
extern signed char D_001331D8[];

int func_0012D340(void) {
    if (D_001331D8[0] == 0) {
        func_0012D2A0();
    }
    return D_001331D8[4] == 0x54;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D380);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D3E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D3F0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D440);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D448);

int func_0012D4B0(int arg0) {
    unsigned int v = arg0 & 0xFF;
    return ((v / 10) * 6 + v) & 0xFF;
}

/*
 * REVERTED (size mismatch: ours 28 bytes, retail 32). Semantics certain
 * -- BCD byte to binary:
 *
 *   int func_0012D4E0(int arg0) {
 *       unsigned int v = arg0 & 0xFF;
 *       return (v - (v >> 4) * 6) & 0xFF;
 *   }
 *
 * (`unsigned` matters: it gives retail's `srl`, not `sra`.) Everything
 * matches except the multiply: retail uses the generic two-operand
 * `mult $0,$3,$4` followed by `mflo $3`, while this compiler uses the
 * EE three-operand `mult $v1,$v1,$a0` which writes the result directly
 * and needs no mflo -- one instruction fewer, hence 4 bytes short. That
 * is an ISA/codegen choice, not something the source can steer.
 */
/*
 * Attempted, reverted at 14/32. Semantics certain -- BCD to binary,
 * callee of func_0012D500/func_0012D568:
 *     int f(int arg0) { unsigned v = arg0 & 0xFF;
 *                       return (v - (v >> 4) * 6) & 0xFF; }
 * Every instruction matches except the multiply FORM: retail emits the
 * generic `mult $0, $3, $4` + `mflo $3`, this compiler picks the R5900
 * three-operand `mult $v1, $v1, $a0` which writes rd directly and needs
 * no mflo. Same operands, same order, different instruction selection --
 * not reachable by reshaping the C.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D4E0);

extern int func_0012D4E0(int);

/*
 * Close, not exact (4/104), same size so inert. The ONLY divergence is
 * prologue save order: retail emits `sd $16, 0($sp)` then
 * `sd $31, 0x10($sp)`, this compiler emits them the other way round.
 * Identical offsets, identical everything else including every delay
 * slot. Not expressible from C -- these are compiler-emitted prologue
 * stores, not source statements, so neither statement order nor the
 * declaration-order lever reaches them.
 */
void func_0012D500(unsigned char *p) {
    p[7] = func_0012D4E0(p[7]);
    p[6] = func_0012D4E0(p[6]);
    p[5] = func_0012D4E0(p[5]);
    p[3] = func_0012D4E0(p[3]);
    p[2] = func_0012D4E0(p[2]);
    p[1] = func_0012D4E0(p[1]);
}

extern int func_0012D4B0(int);

/*
 * Close, not exact (4/104), same size so inert. The ONLY divergence is
 * prologue save order: retail emits `sd $16, 0($sp)` then
 * `sd $31, 0x10($sp)`, this compiler emits them the other way round.
 * Identical offsets, identical everything else including every delay
 * slot. Not expressible from C -- these are compiler-emitted prologue
 * stores, not source statements, so neither statement order nor the
 * declaration-order lever reaches them.
 */
void func_0012D568(unsigned char *p) {
    p[7] = func_0012D4B0(p[7]);
    p[6] = func_0012D4B0(p[6]);
    p[5] = func_0012D4B0(p[5]);
    p[3] = func_0012D4B0(p[3]);
    p[2] = func_0012D4B0(p[2]);
    p[1] = func_0012D4B0(p[1]);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D5D0);

/*
 * REVERTED (SIZE mismatch both ways). Decode is certain -- tick the
 * clock at arg0 back by one day. Take a working copy of the 12-byte
 * month-length table at D_00153D40, stretch February to 29 on a leap
 * year, and when the day count reaches zero roll the month back, and
 * the year with it wrapping 00 to 99, then reload the day count.
 *
 *   typedef struct { char b[0xC]; } Cfg12;
 *   extern Cfg12 D_00153D40 NOT_SDA;
 *
 *   void func_0012D688(unsigned char *s) {
 *       Cfg12 days;
 *       unsigned char m;
 *
 *       days = D_00153D40;
 *       if ((s[7] & 3) == 0) {
 *           days.b[1] = 0x1D;
 *       }
 *       s[5] = s[5] - 1;
 *       if (s[5] != 0) {
 *           return;
 *       }
 *       m = s[6] - 1;
 *       s[6] = m;
 *       if (m == 0) {
 *           s[7] = s[7] != 0 ? s[7] - 1 : 0x63;
 *           s[6] = 0xC;
 *       }
 *       s[5] = days.b[s[6] - 1];
 *   }
 *
 * The tail from the month roll-back onwards is already byte-identical,
 * as is the 12-byte struct copy (ldl/ldr + lwl/lwr at alignment 1, the
 * func_001FFE88 idiom). Retail is 164 bytes. Two spellings, and the
 * interesting part is that they miss in OPPOSITE directions:
 *
 *   - as written above, the decrement AFTER the leap-year block:  160
 *     The compiler forwards the stored value, so the `s[5] != 0` test
 *     becomes `andi $3,$2,0xFF` + `bne` on the value already in hand,
 *     where retail re-LOADS the byte with `lbu` and tests it bare.
 *
 *   - `s[5] = s[5] - 1;` moved BEFORE the leap-year block:         168
 *     This DOES buy retail's reload -- putting a basic-block boundary
 *     between the store and the test stops the forwarding, and that is
 *     the useful finding here. But the compiler then pays for it with a
 *     `bnel` that duplicates the reload into the branch's delay slot,
 *     two `lbu`s where retail has one plus a bare `nop`. That is the
 *     recorded per-site delay-slot difference, so the two halves cannot
 *     be had at once from this source.
 *
 * `m` must stay `unsigned char`: it is what produces retail's
 * `andi $2,$2,0xFF` on the month counter, and the ternary on s[7] is
 * confirmed by retail emitting a single `sb` for both arms.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D688);


INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D730);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D760);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D788);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D818);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D868);

extern void func_0011DDA0(int);

/* Tail call: `j func_0011DDA0` with the argument zeroed in the delay slot. */
void func_0012DA28(void) {
    func_0011DDA0(0);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DA30);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DA38);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DB18);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DDC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DFA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012DFB0);

extern short D_0015ED84;
extern short D_0015ED80;

void func_0012E038(void *arg0, int arg1) {
    int *p = (int *)arg0;
    *(int *)&D_0015ED84 = arg1;
    *(int *)&D_0015ED80 = (int)arg0;
    p[arg1 + 1] = 0;
    p[0] = 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E058);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E1B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E2D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E318);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E348);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E380);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E3B0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E3F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E438);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E490);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E4D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E528);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E558);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E588);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E5B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E648);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E688);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012E820);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EAE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EB18);

/* gp-relative: declared small so -G2 places it in the small-data area,
   accessed as the word it really is. gp 0x166D00 - 0x7F3C = 0x15EDC4. */
extern short D_0015EDC4;

void func_0012EC30(void) {
    *(int *)&D_0015EDC4 = 1;
}

extern void func_0012DDC0(void);

/*
 * Close, not exact (2/32), same size. Retail saves/restores $ra with
 * sq/lq here; v1.36 (correctly for core_text overall) emits sd/ld, so
 * the two spill instructions differ and nothing else does. This is one
 * of the ~14 core_text functions on the sq side of that split -- the
 * still-open half of the sq/lq question, not a source-shape problem.
 */
void func_0012EC40(void) {
    *(int *)&D_0015EDC4 = 0;
    func_0012DDC0();
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EC60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012ED10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012ED40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EDB0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EDE0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EE10);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EE40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EE70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EE98);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EF48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012EFE8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F030);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F068);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F098);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F0E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F120);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F160);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F1E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F210);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F248);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F280);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F2B8);

int func_0012F2E0(int arg0) {
    return (arg0 * 0x5F4) / 0x2E5;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F308);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F348);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F3F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012F4A8);
