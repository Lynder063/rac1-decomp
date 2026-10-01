/* NON_MATCHING func_L18_002D74F8 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: BYTES 1/136 (99.3% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
#include "common.h"

extern int func_L00_002DCDA8(void *);
typedef struct { char pad[0x20]; unsigned char state; } MobyState;

int func_L18_002D74F8(unsigned char *moby) {
    char *data = *(char **)(moby + 0x78);
    int result = func_L00_002DCDA8(moby);
    if (result != 0) {
        unsigned char state = ((MobyState *)moby)->state;
        if (state >= 3 && state <= 4) {
            if (state != 4) {
                moby[0xBC] = state;
                moby[0x20] = 4;
            }
            result = 2;
        } else {
            *(short *)(data + 0xC8) = 0;
            result = 0;
        }
    } else if ((char)moby[0x20] == 4) {
        moby[0x20] = moby[0xBC];
    }
    return result;
}
