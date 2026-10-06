/* NON_MATCHING func_L12_00233130 -- src/overlays/l12_hoven/help_0022E428.c
 * Best so far: BYTES 19/632 (97.0% of the bytes match), checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L00_0025C918). The first part is a switch on g[0x20A4] (0, 3, default skip) with shared stores.
 *   Left: retail keeps only %hi(D_0013E633+0xE1D) in $a0 and re-adds %lo in almost every branch
 *   (rematerialised base), ours keeps g in a register (24 B fewer). The tail uses p = D+0x103D and p-0x220.
 *   Update: per-block base locals (lever from func_L12_0022E428) made it size-exact. c7 (28 B): + the
 *   f() > x call-first lever and the 228/22C zero-store swap. p1 (19 B, staged): + `h->198 > h->420`
 *   (retail loads 198 first) and switch stores 228,22C,230. Left: the switch block's float register
 *   choice/store order and the third block's base in $s1 rather than $s0. Using p for the third block (c8)
 *   fixes $s0 but disturbs the switch stores and the a0/a1 arg order.
 */
#include "common.h"

extern float D_0015EE60 MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float func_001F9D48(void *, void *);
extern float func_00214D28(float *p, float target, float maxstep);
extern float func_L00_0025C918(float *p, float *v, float t, float u1, float u2, float eps);

/* Picks the camera tuning (pull, height, lag) for the hero's current state and eases the camera toward it. */
void func_L12_00233130(void) {
    char *g;
    char *p;
    {
        char *h = (char *)D_0013E633 + 0xE1D;
        float a, c;
        switch (((unsigned char *)h)[0x20A4]) {
        case 0:
            a = 0.800000012f;
            c = 0.699999988f;
            break;
        case 3:
            a = 0.800000012f;
            c = 0.600000024f;
            break;
        default:
            goto skip;
        }
        *(float *)(h + 0x228) = a;
        *(float *)(h + 0x22C) = c;
        *(float *)(h + 0x230) = 0.449999988f;
    }
skip:
    {
        char *h = (char *)D_0013E633 + 0xE1D;
        if (*(int *)(h + 0x208C) == 4) {
            if (*(int *)(h + 0x198) > *(int *)(h + 0x420) && *(short *)(h + 0x41E) == 0) {
                *(float *)(h + 0x22C) = *(float *)(h + 0x434);
            }
        } else if (*(int *)(h + 0x2084) == 6) {
            *(float *)(h + 0x22C) = 0.5f;
        } else if (*(int *)(h + 0x2084) == 4) {
            *(float *)(h + 0x228) = 0.350000024f;
        } else if ((unsigned int)(*(int *)(h + 0x208C) - 0x11) < 2) {
            *(int *)(h + 0x228) = 0;
            *(int *)(h + 0x22C) = 0;
        } else if (((unsigned char *)h)[0x12E2] != 0 && *(int *)(h + 0x300) != 0) {
            *(float *)(h + 0x228) = 0.800000012f;
            *(float *)(h + 0x22C) = 0.899999976f;
        } else {
            char *h2 = (char *)D_0013E633 + 0xE1D;
            if (*(int *)(h2 + 0x2084) == 0x7F) {
                *(float *)(h2 + 0x230) = 0.800000012f;
            }
        }
    }
    g = (char *)D_0013E633 + 0xE1D;
    if (((unsigned char *)g)[0x257] != 0 && *(int *)(g + 0x2094) != 0x12 && *(int *)(g + 0x208C) != 0x11
        && ((unsigned char *)g)[0x12E4] == 0
        && !(func_001F9D48(g + 0x210, g + 0x80) > *(float *)(g + 0x234) * 0.5f)) {
        return;
    }
    p = (char *)D_0013E633 + 0x103D;
    g = p - 0x220;
    func_00214D28((float *)p, *(float *)(g + 0x228), D_0015EE60 * 0.0199999996f);
    func_00214D28((float *)(p + 4), *(float *)(g + 0x22C), D_0015EE60 * 0.0199999996f);
    func_L00_0025C918((float *)(p + 0x14), (float *)(p + 0x18), *(float *)(g + 0x230),
                      D_0015EE64 * 0.0199999996f, D_0015EE64 * 0.300000012f, D_0015EE6C * 4.0f);
}
