/* NON_MATCHING func_L00_0025BBA0 -- src/overlays/shared/mobyutil_00258BC8.c
 * Best so far: SIZE ours 164 / retail 168, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Splits a 4-float vector (qcopy to stack) : *out = f(v0,v1); if v[3] == 5627.9248f also *a *= len(v), v[3]=0, *
 *   Ours is 164 bytes vs 168: retail copies a1 into $s0 after the lq/sq and puts it in the bc1t delay slot, with l
 *   Three wordings (k first, k after qcopy, o = out) give the same bytes: scheduler/delay-slot tie. Unblock: a wor
 */
#include "common.h"
extern float func_L00_001FF860(float, float);
extern float func_001F9CE8(void *);

/* split a vector into an angle (out), a length scale (a) and a z scale (b) */
void func_L00_0025BBA0(void *src, float *out, float *a, float *b) {
    float v[4];
    float k;
    qcopy(v, src);
    k = 5627.9248f;
    if (v[3] != k) {
        *out = func_L00_001FF860(v[0], v[1]);
    } else {
        float len;
        *out = func_L00_001FF860(v[0], v[1]);
        len = func_001F9CE8(v);
        v[3] = 0.0f;
        *a = *a * len;
        *b = *b * v[2];
    }
}
