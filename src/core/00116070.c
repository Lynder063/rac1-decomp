#include <stdarg.h>
#include "common.h"
#include "structs.h"

/*
 * core_text object 0x116070-0x116248. Boundaries are retail's linker fill
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

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116070);

extern int func_001170A0(void *, const char *, va_list); /* vfprintf */

/* printf, from the C library (newlib): points _stdout's _data back at
   the reentrancy struct (_impure_ptr, D_0012F86C) and hands the va_list
   to vfprintf. _REENT is read once into a local: retail keeps it in a
   register across the store. Built with 2.9-ee, which saves only the
   integer argument registers (Makefile.sn, EE29_CORE). */
int func_00116078(const char *fmt, ...) {
    int ret;
    va_list ap;
    char *r = (char *)D_0012F86C;

    *(void **)(*(char **)(r + 8) + 0x54) = r;
    va_start(ap, fmt);
    ret = func_001170A0(*(void **)(r + 8), fmt, ap);
    va_end(ap);
    return ret;
}

void func_001160C8(int arg0) {
    *(int *)((char *)D_0012F86C + 0x58) = arg0;
}

/*
 * Close but not exact: logic fully understood and correct (verified
 * against retail instruction-for-instruction), but this compiler picks
 * $v1/$a0 for the two independent temporaries (the LCG constant and the
 * loaded game pointer) where retail picks $a0/$a1 -- same operations,
 * same order, just a different register-allocator choice. Tried
 * reordering the source statements and splitting into extra locals;
 * neither changed the allocation. Same category as the other
 * documented near-misses in this file -- a compiler-version-specific
 * codegen detail, not a logic gap.
 *
 * Linear congruential PRNG (classic glibc-style constants: multiplier
 * 0x41C64E6D, increment 12345, 31-bit mask) reading/updating a seed
 * field at offset 0x58 of the struct pointed to by the D_0012F86C
 * global -- the same field func_001160C8 above sets directly.
 */
int func_001160D8(void) {
    char *game = (char *)D_0012F86C;
    int seed = *(int *)(game + 0x58);
    seed = seed * 0x41C64E6D + 0x3039;
    *(int *)(game + 0x58) = seed;
    return seed & 0x7FFFFFFF;
}

extern int func_00119088();

int func_00116108(int *errOut, void *a, void *b, void *c) {
    int r;
    D_0015ED10 = 0;
    r = func_00119088(a, b, c);
    if (r == -1 && D_0015ED10 != 0) {
        *errOut = D_0015ED10;
    }
    return r;
}

/*
 * Close, not exact (27/72, same size so harmless). Same bit-classifier
 * family as func_001161B0, and blocked the same way: every instruction
 * and operand matches, but the allocator assigns the low-word and mask
 * registers the other way round from retail and the rest follows.
 */
int func_00116168(long arg0) {
    int lo = (int)arg0;
    int hi = (int)(arg0 >> 32);
    hi &= 0x7FFFFFFF;
    hi |= (unsigned int)(lo | -lo) >> 31;
    hi = 0x7FF00000 - hi;
    return 1 - ((unsigned int)(hi | -hi) >> 31);
}

int func_001161B0(long arg0) {
    int lo = (int)arg0;
    int hi = (int)(arg0 >> 32);
    hi &= 0x7FFFFFFF;
    hi |= (unsigned int)(lo | -lo) >> 31;
    return (unsigned int)(0x7FF00000 - hi) >> 31;
}

extern int func_00119110();

int func_001161E8(int *errOut, int arg1) {
    unsigned int r;
    D_0015ED10 = 0;
    r = func_00119110(arg1);
    if (r == 0xFFFFFFFF && D_0015ED10 != 0) {
        *errOut = D_0015ED10;
    }
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116244);
