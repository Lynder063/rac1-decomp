/* NON_MATCHING func_L00_002420C0 -- src/overlays/shared/loaders_00240398.c
 * Best so far: BYTES 12/96 (87.5% of the bytes match), checked 2026-10-07.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
#include "common.h"

extern char *D_L00_00173F40;
extern short D_L00_0015F6F8;

void func_L00_002420C0(char *hdr) {
    int off0 = *(int *)hdr;
    int off4;

    if (off0 != 0) {
        D_L00_00173F40 = hdr + off0;
    }
    off4 = *(int *)(hdr + 4);
    if (off4 != 0) {
        char *sec = hdr + off4;
        int i;

        for (i = 0, *(char **)&D_L00_0015F6F8 = sec; i < *(int *)sec; i++) {
            int *entry = (int *)(sec + 0x1C + (i << 4));
            *entry = (int)sec + *entry;
        }
    }
}
