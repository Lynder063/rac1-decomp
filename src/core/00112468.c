#include "common.h"
#include "structs.h"

/*
 * core_text object 0x112468-0x1138A8. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 */

/* Declarations in scope here before the split. */
extern long func_00116F68(int arg0, int arg1, int arg2);

extern int D_0015ED10;

int func_00112468(int *errOut, int arg1) {
    int r;
    D_0015ED10 = 0;
    r = func_00119100(arg1);
    if (r == -1 && D_0015ED10 != 0) {
        *errOut = D_0015ED10;
    }
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001124C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001126D8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001138A4);
