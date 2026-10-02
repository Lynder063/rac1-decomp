/* NON_MATCHING func_L08_002F20D8 -- src/overlays/shared/vendor_002D3DF8.c
 * Best so far: SIZE ours 212 / retail 216, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Runs an 11-iteration loop (bgezl-rotated) calling func_L08_00259040(D_8620, D_2A88[i], D_DE200[i], D_161EA0 + 
 *   Loop body is exact (p0.c, 29/216 bytes differ): only the order of the hoisted loop-invariant address setup dif
 *   Five wordings (for up/down, array index vs pointer arithmetic, local for row*8, long[] array) gave the same by
 */
#include "common.h"
extern void func_L08_00259040(void *, int, int, void *);
extern void func_L00_001FDE48(int, int, int, void *, int);
extern char D_L08_001E8620[];
extern int D_L08_001E2A88[];
extern int D_L08_001DE200[];
extern int D_L08_001E2A58[];
extern int D_L08_001E2AE8[];
extern char D_L08_00161EA0[];
/* Runs the two per-slot setup calls over all eleven entries of a table row. */
void func_L08_002F20D8(int row) {
    int i;
    char *dst = D_L08_00161EA0 + row * 8;
    for (i = 0; i < 11; i++) {
        func_L08_00259040(D_L08_001E8620, D_L08_001E2A88[i], D_L08_001DE200[i], dst);
        func_L00_001FDE48(D_L08_001DE200[i], D_L08_001E2A58[i], D_L08_001E2AE8[i], D_L08_001E8620, 1);
    }
}
