#include "common.h"
#include "structs.h"

/*
 * core_text object 0x119868-0x119D88. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 *
 * Sony's EE kernel library (libkernl), tty.o: the deci2 TTY queue and
 * protocol handler (sceTtyHandler, sceTtyWrite, sceTtyRead, sceTtyInit).
 * Built with Sony's 2.9-ee (Makefile.sn, EE29_CORE), like the prebuilt
 * libkernl.a.
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
extern void func_00115578(void *arg0, void *arg1);
extern int func_001160D8(void);

/*
 * Close but not exact, same open-question category as func_001160D8/
 * func_00115578 (scratch-register/scheduling choice) but manifesting as
 * store reordering instead: retail schedules `self->field8 = ...;
 * self->field4 = 0;` before the branch and puts `self->fieldC = ...` in
 * the delay slot; this compiler schedules fieldC and field8 before the
 * branch and puts field4's store in the delay slot instead. Confirmed
 * source-order independent -- tried every permutation of the 3
 * assignments, all four produced the identical instruction sequence, so
 * this is the scheduler's own choice, not something this source
 * controls. Logic (D_00154A40's first field = arg0, then fields at
 * 0x4/0x8/0xC of the pointed-to struct get 0/self+0x10/self+0x10, return
 * self) is fully understood and correct either way.
 *
 * extern void *D_00154A40;
 *
 * void *func_00119868(void *arg0) {
 *     char *self = (char *)&D_00154A40;
 *     D_00154A40 = arg0;
 *     *(void **)(self + 0x8) = self + 0x10;
 *     *(int *)(self + 0x4) = 0;
 *     *(void **)(self + 0xC) = self + 0x10;
 *     return self;
 * }
 */
extern void *D_00154A40 NOT_SDA;

void *func_00119868(void *arg0) {
    char *self = (char *)&D_00154A40;
    D_00154A40 = arg0;
    *(int *)(self + 0x4) = 0;
    *(void **)(self + 0xC) = self + 0x10;
    *(void **)(self + 0x8) = self + 0x10;
    return self;
}

void func_00119890(char *self) {
    char *p;
    *(int *)(self + 0x4) += 1;
    p = *(char **)(self + 0xC) + 1;
    *(char **)(self + 0xC) = p;
    if (p == self + (*(int *)self + 0x10)) {
        *(char **)(self + 0xC) = self + 0x10;
    }
}

void func_001198D0(char *self) {
    char *p;
    *(int *)(self + 0x4) -= 1;
    p = *(char **)(self + 0x8) + 1;
    *(char **)(self + 0x8) = p;
    if (p == self + (*(int *)self + 0x10)) {
        *(char **)(self + 0x8) = self + 0x10;
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119910);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119AA8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119BF8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119CC8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119D84);
