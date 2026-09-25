#include "common.h"
#include "structs.h"

/*
 * core_text object 0x112380-0x112468. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 *
 * newlib (the SDK's libc.a): atoi.o (atoi) and callocr.o (_calloc_r),
 * back to back. Built with Sony's 2.9-ee (Makefile.sn, EE29_CORE), like
 * libc.a.
 */

extern long func_00116F68(int arg0, int arg1, int arg2);

int func_00112380(int arg0) {
    return (int)func_00116F68(arg0, 0, 10);
}

/*
 * newlib's _calloc_r (mallocr.c): malloc n * size, then clear it with
 * Doug Lea's MALLOC_ZERO macro (unrolled for up to 9 words, memset past
 * that). The decode is certain, and every instruction matches. Written
 * as mallocr.c has it, it comes out 4 bytes short (184 vs 188) under
 * both 2.95.3 and 2.9-ee:
 *
 *   if ((mem = func_00114920(ptr, n * size)) == 0) return 0;
 *   else { csz = chunksize(mem2chunk(mem)); MALLOC_ZERO(mem, csz - 4);
 *          return mem; }
 *
 * Retail keeps the `return 0` as a fall-through block (`bnel` to the
 * body, then `b end` with $v0 = 0 in its slot). gcc threads it into the
 * epilogue instead, as a beqz with $v0 = 0 in the slot. None of these
 * changed that: a result variable, returning inside the if, the chunk
 * pointer spelled out, -O1/-O3/-Os, -fno-thread-jumps. The exact C tried
 * is in build-sn/try/func_001123A8 while that directory exists.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_001123A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00112464);
