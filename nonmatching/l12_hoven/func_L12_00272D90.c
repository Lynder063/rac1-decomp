/* NON_MATCHING func_L12_00272D90 -- src/overlays/l12_hoven/mobyutil_00272D90.c
 * Best so far: SIZE ours 144 / retail 148, checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Projects a point 100 units ahead of the moby and calls the movement test.
 *   Earlier qcopy, mini9 qcopy_nc p4, and explicit source pointer p5 produce the same 17-byte prologue schedule di
 *   Stopped on three distinct identical wordings; a different prologue scheduler choice would unblock it.
 */
#include "common.h"

extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern int func_L00_00259B88(void *, void *, void *, void *, float);

// Projects a point ahead of the moby and tests movement toward it.
void func_L12_00272D90(char *moby, void *target) {
    float position[4];
    char result[16];
    typedef int V128 __attribute__((mode(TI)));
    *(V128 *)position = *(V128 *)(moby + 0x10);
    position[0] += func_001F9F90(*(float *)(moby + 0x48)) * 100.0f;
    position[1] += func_001F9FA8(*(float *)(moby + 0x48)) * 100.0f;
    func_L00_00259B88(moby, target, position, result, 1.0f);
}
