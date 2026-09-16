#include "common.h"
#include "structs.h"

/*
 * core_text object 0x113B70-0x114000. Boundaries are retail's linker fill
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

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113B70);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113E90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113FFC);
