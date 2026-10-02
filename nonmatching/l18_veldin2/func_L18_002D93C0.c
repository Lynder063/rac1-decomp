/* NON_MATCHING func_L18_002D93C0 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: SIZE ours 140 / retail 128, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
#include "common.h"
extern char D_0013E633[];
extern int func_L00_0028EBF0(int);

void func_L18_002D93C0(unsigned char *moby) {
    char *state = *(char **)(moby + 0x78);
    if (moby[0x20] == 2) {
        int index;
        moby[0x20] = 3;
        index = *(int *)(state + 0x70);
        if (index != -1) {
            char *entry = D_0013E633 + 0x1D + index * 0x70;
            if (*(void **)(entry + 0x88) == moby && (unsigned char)entry[0x74] != 0) {
                *(int *)(state + 0x70) = func_L00_0028EBF0(index);
            } else {
                *(int *)(state + 0x70) = -1;
            }
        } else {
            *(int *)(state + 0x70) = -1;
        }
    }
}
