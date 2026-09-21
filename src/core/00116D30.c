#include "common.h"
#include "structs.h"

/*
 * core_text object 0x116D30-0x116FA0. Boundaries are retail's linker fill
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

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116D30);

extern long func_00116D30(void *, int, int, int);

/*
 * Same-size near-miss (8/52 bytes). Retail schedules the `addiu
 * sp,sp,-0x10` prologue push one instruction later than this compiler
 * does (after the first `daddu v1,a1,zero` rather than before it) --
 * a single-expression tail call gives nothing else to reorder from
 * source. Not reachable; kept, harmless to anything after it.
 */
long func_00116F68(int arg0, int arg1, int arg2) {
    return func_00116D30(D_0012F86C, arg0, arg1, arg2);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116F9C);
