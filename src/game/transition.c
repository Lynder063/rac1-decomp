#include "common.h"
#include "structs.h"

/*
 * transition.cpp in the original source; text 0x1E9E70-0x1EC038.
 * Name and boundary from the NTSC split in bordplate's RC1 project
 * (codeberg.org/bordplate/RC1), mapped to PAL by matching function
 * sizes -- see docs/DECOMP_PROGRESS.md. Compiled as C for now.
 */

/*
 * Close but not yet byte-matching, new evidence for the sq/lq open
 * question below: this function only saves $ra (no $s0-$s7 at all), and
 * retail STILL spills it as `sq` here -- unlike every other function
 * seen so far, where retail consistently uses `sd` for a lone $ra save.
 * This compiler always uses `sd` for $ra regardless. Logic/instructions
 * otherwise identical (return func_0022C7E0(); ... 5 calls in a row,
 * body confirmed correct via objdump before reverting this to
 * INCLUDE_ASM):
 *   func_0022C7E0(); func_0022C188(); func_0022C870();
 *   func_00234C98(0x47, 0x5360B);
 *   func_00234C98(0x4E, 0x1000000 | (D_0015EF88 >> 13));
 * Means the sq/lq choice isn't purely "s-regs vs ra", it's something
 * more granular retail decides per-function (maybe per translation
 * unit, or some other property not yet isolated). See "Open toolchain
 * questions" in docs/DECOMP_PROGRESS.md.
 */
extern void func_0022C7E0(void);
extern void func_0022C188(void);
extern void func_0022C870(void);
extern void func_00234C98(int, long);
extern int D_0015EF88 MACRO_ADDR;

/* func_00234C98 is (int, long) and D_0015EF88 MACRO_ADDR; the older
   sq/sd note is obsolete. */
void func_001E9E70(void) {
    func_0022C7E0();
    func_0022C188();
    func_0022C870();
    func_00234C98(0x47, 0x5360B);
    func_00234C98(0x4E, 0x1000000 | (D_0015EF88 >> 13));
}

INCLUDE_ASM("asm/nonmatchings/text", func_001E9EC8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EABE8);

extern int D_0015F064 MACRO_ADDR;
extern int D_0015F060 MACRO_ADDR;
extern int D_001997FC;
/* gp-relative, no retail symbol: gp 0x166D00 - 0x7580 = 0x15F780
   (cursor into the table walked below). */
extern short D_0015F780;

/* Points the D_0015F780 cursor at entry arg0 of the table D_0015F064
   indexes into D_0015F060, past its 8-byte header, and keeps the
   header's first word in D_001997FC. Both table pointers are MACRO_ADDR
   (one register each), and the index goes first in the addition. */
void func_001EB300(int arg0) {
    int *entry = (int *)(arg0 * 4 + D_0015F064);
    int off = *entry;
    char *p = (char *)(D_0015F060 + off);

    D_001997FC = *(int *)p;
    p += 8;
    *(char **)&D_0015F780 = p;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001EB338); /* Transition_UpdateMovieCamera(void) */

INCLUDE_ASM("asm/nonmatchings/text", func_001EB458); /* Transition_FUN_001eb0a8 */

INCLUDE_ASM("asm/nonmatchings/text", func_001EB7C0); /* Transition_DefaultDraw(bool) */

extern char D_0013E650[];
extern int D_0015F694;

extern int D_0015F694_m __asm__("D_0015F694") MACRO_ADDR;

/* The older register residual was the split load of D_0015F694; read
   through a MACRO_ADDR alias it is retail's one-register load. */
int func_001EBAF0(int arg0, int arg1) {
    if (arg0 >= 0) {
        char *p = D_0013E650 + arg0 * 0x70;
        if (*(short *)(p + 0x7E) == arg1 + D_0015F694_m) {
            unsigned char s = p[0x74];
            if (s == 1 || s == 2) {
                return 1;
            }
        }
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001EBB48);

/* Not a standalone function: single `addiu $sp,$sp,0x30`, no `jr $31` --
   fallthrough fragment, same category as func_00113AD8 in core_text. */
INCLUDE_ASM("asm/nonmatchings/text", func_001EC030);
