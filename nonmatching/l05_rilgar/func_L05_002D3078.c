/* NON_MATCHING func_L05_002D3078 -- src/overlays/l05_rilgar/vendor_002D28D0.c
 * Best so far: BYTES 18/420 (95.7% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L05_002D3078 (420 B)
 *   Best: c2.c BYTES 18/420. Only the loop preheader differs: retail builds &D_L05_001613A8 with
 *   lui $s6 / addiu $s6 after the m+0xD0 / m+0x10 hoists; ours does lui $v0 first, then addiu $s6,$v0.
 *   Levers: D_L05_0015F660 MACRO_ADDR (recomputed each iteration) but &D_L05_001613A8 through a non-sdata
 *   alias (hoisted); the float load itself stays MACRO_ADDR. Tried: address in a local before the loop (c3).
 */
#include "common.h"

extern float D_L05_001613A8 MACRO_ADDR;
extern char D_L05_0015F660[] MACRO_ADDR;
extern char D_L05_001613A8_a[] __asm__("D_L05_001613A8");
extern int func_001F9908(void *);
extern float func_001FA748(float, float);
extern float func_002140F8(float, float);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern char *func_L00_00272770_p(void *, void *, void *, float, float) __asm__("func_L00_00272770");
extern int func_001F9850(int);
extern int func_001FA898_r(float) __asm__("func_001FA898");

/* When the timer runs out, puffs two clouds off the moby's sides and rolls the next interval. */
void func_L05_002D3078(char *m) {
    char *d = *(char **)(m + 0x78);
    float v[4];
    int i;
    if (func_001F9908(d + 0x84)) {
        for (i = 0; i < 2; i++) {
            char *e;
            float a = func_001FA748(*(float *)(m + 0x48), 3.1415927f);
            a = func_001FA748(a, func_002140F8(-0.785398006f, 0.785398006f));
            func_001F9C30(v, m + 0xD0, func_002140F8(-0.5f, 0.5f));
            func_001F9BD8(v, v, m + 0x10);
            v[2] = D_L05_001613A8 + 0.05f;
            e = func_L00_00272770_p(v, D_L05_0015F660, D_L05_001613A8_a, func_002140F8(0.7f, 1.0f), i == 0 ? 2.0f : -2.0f);
            if (e != 0) {
                *(short *)(e + 0xA) = func_001F9850(0xF);
            }
            *(int *)(d + 0x84) = func_001FA898_r(func_002140F8(3.0f, 5.0f));
        }
    }
}
