#include "common.h"
#include "structs.h"

/*
 * core_text object 0x1188C8-0x118A40. Boundaries are retail's linker fill
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

int func_001188C8(int *errOut, void *a, void *b, void *c) {
    int r;
    D_0015ED10 = 0;
    r = func_00119008(a, b, c);
    if (r == -1 && D_0015ED10 != 0) {
        *errOut = D_0015ED10;
    }
    return r;
}

/*
 * newlib's __swsetup (stdio/wsetup.c), called before the first write to
 * a FILE. Its source is public (newlib 1.8); build-sn/try/func_00118928
 * has it written out against newlib's FILE layout. Under the game's
 * 2.95.3 it is the right size but 57 of 268 bytes differ; under 2.9-ee
 * it is 8 bytes short. Retail reads _flags with lhu, so the field is
 * unsigned here. It keeps the flags value in a register across `&=
 * ~(__SRD|__SEOF)` and the later `|= __SWR`, masking as an int
 * (`and` with -0x25). Ours masks with andi 0xFFDB and reloads the
 * field after the _r/_p stores.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00118928);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00118A34);
