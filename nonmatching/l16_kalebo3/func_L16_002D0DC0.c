/* NON_MATCHING func_L16_002D0DC0 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: BYTES 281/520 (46.0% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L16_002D0DC0 (520 B)
 *   c5.c: size exact (281 B differ, mostly shifted). Logic: rotated loop advancing the path point while
 *   (angle >= pi/2 && dist <= 4) || dist <= 2; fork handling via path != other first.
 *   Retail's loop head is one `jal func_L16_002D0D98` (delay nop) reached from the prologue (`b` with the lh
 *   in its delay slot, $a0 still the incoming arg) and from the body tail (lh/a0/a2 setup). Ours: with the
 *   call in the while condition (c1/c3, d1 goto form) 504 B; with a copy before the loop plus one at the body
 *   end (c5) the size matches but crossjump keeps the prologue copy instead. Also (k - 11) * 4 + 0x294:
 *   retail does addiu -11 first; ours folds into 0x268.
 */
#include "common.h"

extern char *D_L16_001B0C30[];
extern float func_L00_001FF860(float, float);
extern float func_001F9D48(void *, void *);
extern float func_001FA850(float, float);
extern int func_L01_0028C2D8(void *, void *, float);
extern int func_L00_0025E7F8(char *, int, int, int);
extern int func_002140B0(int);
extern int func_001FA898_r(float) __asm__("func_001FA898");

/* Advances the moby's path point while the point is behind it or too close; at a fork it may switch path. */
void func_L16_002D0DC0(Level16VendorVectorMoby *mo) {
    char *m = (char *)mo;
    char *d = *(char **)(m + 0x78);
    float v[4];
    float yaw;
    float dist;
    func_L16_002D0D98(mo, *(short *)(d + 0x2F4), v);
    while (yaw = func_L00_001FF860(v[0] - *(float *)(m + 0x10), v[1] - *(float *)(m + 0x14)),
           func_L16_002D0D98(mo, *(short *)(d + 0x2F4), v),
           dist = func_001F9D48(v, d + 0x260),
           !((func_001FA850(yaw, *(float *)(m + 0x48)) < 1.5707964f || 4.0f < dist) && 2.0f < dist)) {
        char *path = *(char **)(d + 0x2C0);
        char *other;
        int i = (*(short *)(d + 0x2F4) + 1) % *(int *)path;
        *(short *)(d + 0x2F4) = i;
        other = D_L16_001B0C30[*(int *)(d + 0x290)];
        if (path != other) {
            if ((short)i == *(int *)path - 1) {
                *(char **)(d + 0x2C0) = other;
                *(short *)(d + 0x2F4) = func_L01_0028C2D8(d + 0x260, other, 0.0f);
                *(short *)(d + 0x2F4) = func_L00_0025E7F8(*(char **)(d + 0x2C0), *(short *)(d + 0x2F4), 5, 1);
            }
        } else {
            if (10.0f < *(float *)(path + (short)i * 16 + 0x1C) && func_002140B0(100) >= 0x1F) {
                int k = func_001FA898_r(*(float *)(*(char **)(d + 0x2C0) + *(short *)(d + 0x2F4) * 16 + 0x1C));
                *(char **)(d + 0x2C0) = D_L16_001B0C30[*(int *)(d + 0x294 + (k - 11) * 4)];
                *(short *)(d + 0x2F4) = 0;
            }
        }
        func_L16_002D0D98(mo, *(short *)(d + 0x2F4), v);
    }
}
