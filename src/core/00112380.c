#include "common.h"
#include "structs.h"

/*
 * core_text object 0x112380-0x112468. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 */

extern long func_00116F68(int arg0, int arg1, int arg2);

int func_00112380(int arg0) {
    return (int)func_00116F68(arg0, 0, 10);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001123A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00112464);
