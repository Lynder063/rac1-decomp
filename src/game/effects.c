#include "common.h"
#include "structs.h"

/*
 * effects.cpp in the original source; text 0x1EDFF8-0x1EE9F8.
 * Name and boundary from the NTSC split in bordplate's RC1 project
 * (codeberg.org/bordplate/RC1), mapped to PAL by matching function
 * sizes -- see docs/DECOMP_PROGRESS.md. Compiled as C for now.
 */

/* Declarations in scope here before the split. */
extern char D_0013E650[];
extern int D_0015F694;
extern void func_001F9A98(void *, void *, int);
extern char D_00189310[];
extern char D_001899D0[];
extern void *D_001871C0 NOT_SDA;
typedef struct {
    char unk_00[8];
    void (*fn_08)(void *);
    char unk_0C[4];
    void (*fn_10)(void *);
} DispatchRec;
extern DispatchRec D_001E8F80[];

INCLUDE_ASM("asm/nonmatchings/text", func_001EDFF8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EE3B0);

INCLUDE_ASM("asm/nonmatchings/text", func_001EE6D0);

INCLUDE_ASM("asm/nonmatchings/text", func_001EE6E0);

INCLUDE_ASM("asm/nonmatchings/text", func_001EE850);

INCLUDE_ASM("asm/nonmatchings/text", func_001EE858);

INCLUDE_ASM("asm/nonmatchings/text", func_001EE9E8);
