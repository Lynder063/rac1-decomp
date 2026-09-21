#include "common.h"
#include "structs.h"

/*
 * core_text object 0x116CC0-0x116D30. Boundaries are retail's linker fill
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

/*
 * REVERTED (bloats badly -- corrupted segment layout on link, so the
 * exact size was never measured). Semantics recovered with confidence:
 * this is a hand-written `strstr(arg0, arg1)`, matching the standard
 * algorithm exactly (including the retail-specific up-front special
 * case for an empty haystack, which a textbook for-loop wouldn't need
 * but this asm clearly has as a separate branch):
 *
 *   char *func_00116CC0(char *arg0, char *arg1) {
 *       char c1 = *arg0;
 *       char c2;
 *       int i;
 *
 *       if (c1 != 0) {
 *           goto check_pattern;
 *       }
 *       c2 = *arg1;
 *       if (c2 != 0) {
 *           return 0;
 *       }
 *       return arg0;
 *
 *   next_char:
 *       arg0++;
 *       if (*arg0 == 0) {
 *           return 0;
 *       }
 *   check_pattern:
 *       c2 = *arg1;
 *       if (c2 == 0) {
 *           return arg0;
 *       }
 *       if (*arg0 != c2) {
 *           goto next_char;
 *       }
 *       i = 1;
 *   scan:
 *       c2 = arg1[i];
 *       if (c2 == 0) {
 *           return arg0;
 *       }
 *       if (arg0[i] != c2) {
 *           goto next_char;
 *       }
 *       i++;
 *       goto scan;
 *   }
 *
 * Structurally very close (same branches, same fields, confirmed via
 * the intermediate .s before the link failure), but this compiler
 * duplicates the `return 0`/`return arg0` tails at each of their two
 * call sites instead of sharing one copy the way retail does -- a
 * large-scale instance of the compiler-does-NOT-merge-duplicated-code
 * class (the mirror image of func_0020D9D8, which is the opposite
 * problem: retail failing to merge where this compiler does). Not
 * pursued further to a fix given the scale of the residual.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00116CC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00116D2C);
