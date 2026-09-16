#include "common.h"
#include "structs.h"

/*
 * core_text object 0x1138B8-0x113A70. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 */

/* Declarations in scope here before the split. */
extern long func_00116F68(int arg0, int arg1, int arg2);
extern int D_0015ED10;
extern void *D_0012F86C NOT_SDA;

INCLUDE_ASM("asm/nonmatchings/core_text", func_001138B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113968);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113A6C);
