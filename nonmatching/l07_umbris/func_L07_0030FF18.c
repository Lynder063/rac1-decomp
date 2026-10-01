/* NON_MATCHING func_L07_0030FF18 -- src/overlays/l07_umbris/vendor_002CE470.c
 * Best so far: BYTES 1/144 (99.3% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
#include "common.h"

extern float func_001F9D10(void *, void *);
typedef struct { float x, y, z, distance; } Entry;

void func_L07_0030FF18(char *data) {
    int i, count;
    if (data != 0) {
        count = *(int *)data;
        i = 0;
        if (count > 0) {
            do {
                int next = (i + 1) % count;
                *(float *)(i * 0x10 + data + 0x1C) = func_001F9D10(&((Entry *)(data + 0x10))[i],
                                                                     &((Entry *)(data + 0x10))[next]);
                i++;
                count = *(int *)data;
            } while (i < count);
        }
    }
}
