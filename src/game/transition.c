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
/*
 * Reverted at 20/88, logic confirmed. Would be:
 *   func_0022C7E0(); func_0022C188(); func_0022C870();
 *   func_00234C98(0x47, 0x5360B);
 *   func_00234C98(0x4E, 0x1000000 | (D_0015EF88 >> 13));
 * (D_0015EF88 an int, >> 13 arithmetic.)
 *
 * The instruction multiset is right; the order isn't. For each of the
 * two calls retail schedules the *first* argument's `addiu $4` into the
 * jal's delay slot and materializes $5 before it, while this compiler
 * does the reverse. That's argument-materialization order feeding delay
 * slot choice -- an instance of the delay-slot-scheduling question, not
 * a logic error, and not reachable by reordering the C (the arguments
 * are constants in one call expression, so there are no statements to
 * reorder). Reverted per the large-diff rule rather than kept.
 *
 * Note ~2 of those bytes are not this function's fault: both jal targets
 * point at func_00234C98, which sits 8 bytes early in our build due to
 * the pre-existing -8 drift starting around func_00234380 (outside this
 * range).
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001E9E70);

INCLUDE_ASM("asm/nonmatchings/text", func_001E9EC8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EABE8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EB300);

INCLUDE_ASM("asm/nonmatchings/text", func_001EB338);

INCLUDE_ASM("asm/nonmatchings/text", func_001EB458);

INCLUDE_ASM("asm/nonmatchings/text", func_001EB7C0);

extern char D_0013E650[];
extern int D_0015F694;

/*
 * Close but not yet byte-matching (8/88 bytes): same scratch-register-
 * allocation-choice open question as func_001160D8/func_00115578 in
 * core_text -- retail copies arg1 into $v1 for the delay slot of the
 * `bltz arg0` branch, this compiler copies it into $a2 instead. Same
 * operations, same order, same instruction count, only the register
 * differs (and downstream instructions that read it). Tried
 * precomputing arg1 into its own local before the guard clause (per the
 * delay-slot-steering technique) -- no change, confirms this is the
 * register-allocator-heuristic category, not the fixable delay-slot-
 * shape category. Kept as INCLUDE_ASM since the diff isn't a small fixed
 * offset. Logic:
 *   if (arg0 >= 0) {
 *       char *p = D_0013E650 + arg0 * 0x70;
 *       if (*(short *)(p + 0x7E) == arg1 + D_0015F694 &&
 *           (unsigned char)(*(unsigned char *)(p + 0x74) - 1) < 2) {
 *           return 1;
 *       }
 *   }
 *   return 0;
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001EBAF0);

INCLUDE_ASM("asm/nonmatchings/text", func_001EBB48);

/* Not a standalone function: single `addiu $sp,$sp,0x30`, no `jr $31` --
   fallthrough fragment, same category as func_00113AD8 in core_text. */
INCLUDE_ASM("asm/nonmatchings/text", func_001EC030);
