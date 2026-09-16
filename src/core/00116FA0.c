#include "common.h"
#include "structs.h"

/*
 * core_text object 0x116FA0-0x1188C8. Boundaries are retail's linker fill
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

int func_00116FA0(int arg0, void *arg1) {
    char *s = (char *)arg1;
    if (*(int *)(s + 8) != 0) {
        int r = func_00114060(arg0, s);
        *(int *)(s + 8) = 0;
        *(int *)(s + 4) = 0;
        return r;
    }
    *(int *)(s + 4) = 0;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116FE8);

extern void func_00113AE0(void *);
extern void func_00117118(void *, void *, int, int);

/*
 * Close, not exact (20/120), same size. Logic is certain: fault in the
 * default object from D_0012F86C if the slot at +0x54 is empty, make
 * sure it is initialised (field +0x38), then hand it to func_00117118
 * together with the caller's two arguments.
 *
 * Two things were needed to get the size right. Every reference has to
 * be written through *(s + 0x54) rather than through a local `p`: with
 * a local, GCC decided the value it passed to func_00113AE0 was still
 * live in $4 afterwards and dropped the reload for func_00117118's
 * first argument, four bytes short (and, incidentally, wrong -- $4 is
 * call-clobbered). Spelling out the field access makes it reload, as
 * retail does.
 *
 * The residual is only that $17 and $18 hold arg1 and arg2 the other
 * way round from retail. Both pseudos have identical live ranges and
 * use counts, so the allocator is breaking a tie; introducing explicit
 * locals in the opposite order changes nothing (GCC coalesces them).
 * Same class as the destination-choice residuals documented elsewhere.
 */
void func_001170A0(void *arg0, int arg1, int arg2) {
    char *s = (char *)arg0;

    if (*(char **)(s + 0x54) == 0) {
        *(char **)(s + 0x54) = (char *)D_0012F86C;
    }
    if (*(int *)(*(char **)(s + 0x54) + 0x38) == 0) {
        func_00113AE0(*(char **)(s + 0x54));
    }
    func_00117118(*(char **)(s + 0x54), s, arg1, arg2);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00117118);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118630);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001187E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001188C0);
