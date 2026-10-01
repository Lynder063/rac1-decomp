/* NON_MATCHING func_L18_002D93C0 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: SIZE ours 140 / retail 128, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   ## Round 1
 *   If state==2: set state 3, read data->0x70 (idx); if idx!=-1 and table entry (D_0013E650+idx*0x70) owner(+0x88)
 */
extern int ebf0_i(int) __asm__("func_L00_0028EBF0");
#include "common.h"
extern char D_0013E633[];

void func_L18_002D93C0(unsigned char *moby) {
    char *state = *(char **)(moby + 0x78);
    if (moby[0x20] == 2) {
        int index;
        moby[0x20] = 3;
        index = *(int *)(state + 0x70);
        if (index != -1) {
            char *entry = D_0013E633 + 0x1D + index * 0x70;
            if (*(void **)(entry + 0x88) == moby && (unsigned char)entry[0x74] != 0) {
                *(int *)(state + 0x70) = ebf0_i(index);
            } else {
                *(int *)(state + 0x70) = -1;
            }
        } else {
            *(int *)(state + 0x70) = -1;
        }
    }
}
