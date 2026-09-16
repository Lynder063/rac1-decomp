#include "common.h"
#include "structs.h"

/*
 * core_text object 0x114518-0x1154C0. Boundaries are retail's linker fill
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

int func_00114518(int *errOut, void *a, void *b, void *c) {
    int r;
    D_0015ED10 = 0;
    r = func_00119108(a, b, c);
    if (r == -1 && D_0015ED10 != 0) {
        *errOut = D_0015ED10;
    }
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00114578);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001146C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00114920);

/*
 * REVERTED to INCLUDE_ASM, despite the logic being fully understood.
 *
 * The C below (kept here for whoever picks this up) is
 * instruction-for-instruction correct -- two real bugs were fixed to get
 * there: `unsigned char *` for the byte loads so they emit lbu not lb,
 * and this exact nesting to get beqz's polarity and target right:
 *
 *   int func_00115098(void *arg0, int *out, unsigned char *arg2, int arg3) {
 *       int junk;
 *       int *dst = out ? out : &junk;
 *       if (arg2 != 0) {
 *           if (arg3 != 0) { *dst = *arg2; return *arg2 != 0; }
 *           return -1;
 *       }
 *       return 0;
 *   }
 *
 * It compiles to 56 bytes where retail is 60, because retail reuses the
 * `bnel arg3,0` delay slot as the *first instruction of the branch
 * target* (the arg2 byte load) -- a scheduling trick this compiler will
 * not reproduce from the equivalent C.
 *
 * It is reverted rather than kept as documented-close because it is
 * SIZE-mismatched, and a size mismatch shifts every later function in
 * the object -- it was putting -4 bytes of drift through the rest of
 * core_text.c and giving downstream functions spurious address diffs.
 * Byte-diff near-misses of the same size are harmless to keep; shorter
 * or longer ones actively corrupt verification for everything after
 * them. Do not re-add this without getting it to exactly 60 bytes.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00115098);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001150D4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001151B4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115248);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001152F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001153FC);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001154BC);
