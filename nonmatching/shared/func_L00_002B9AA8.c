/* NON_MATCHING func_L00_002B9AA8 -- src/overlays/shared/vendor_002B33E8.c
 * Best so far: BYTES 22/48 (54.2% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Best candidates are p3.c and p4.c: they are byte-identical to retail except for
 *   one extra `nop` at +0x4, ours 52 bytes against retail's 48. That nop is the
 *   loop-alignment pad gcc emits (`.p2align 3` before the loop head); retail has
 *   the loop head right after `addiu $6, $6, 1` with no pad. p1/p2/p5 spell the
 *   index inline and come out 64 bytes with the wrong addressing order and a
 *   duplicated loop test. Unblocked by a source shape whose loop gcc declines to
 *   align (its trip count stays unknown-small or the body exceeds the align size
 *   window); no wording I tried changes that decision.
 */
/* Finds the first free slot of a moby's 15 entry list, from index idx + 1 on, and stores val in it. */
void func_L00_002B9AA8(int moby, int val, int idx, int *list) {
    int i;

    for (i = idx + 1; i < 15; i++) {
        if (list[i + 1] == 0) {
            list[i + 1] = val;
            break;
        }
    }
}