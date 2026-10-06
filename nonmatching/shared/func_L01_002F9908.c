/* NON_MATCHING func_L01_002F9908 -- src/overlays/shared/vendor_002F7700.c
 * Best so far: BYTES 32/484 (93.4% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L01_002F9908 (484 B)
 *   Best: e1.c BYTES 32/484. Lever found: pos/vel are struct-by-value params (EE passes them by hidden
 *   reference, the callee copies them to the stack and keeps the copies' addresses in $s2/$s3).
 *   Left: retail loads 0xFF twice (sh 0x32 and sb 0x30 from separate regs); ours either CSEs them
 *   (u8 + short, 4 B short) or loads -1 for a signed char store. The d->0x28/0x14/0x10 store order and the
 *   $f0/$f1 choice in the final grav * 9.8 * D_0015EE70 also differ.
 */
#include "common.h"

typedef struct { float f[4]; } __attribute__((aligned(16))) V_2f9908;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern char *func_0020D348(int);
extern void func_L00_0025E210(void *);
extern float func_002140F8(float, float);
extern int func_001160D8(void);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern void func_L00_00251E30(void *);

/* Spawns a tumbling piece of debris of the given type at pos, flying at vel under gravity. */
char *func_L01_002F9908(V_2f9908 p, V_2f9908 v, int type, int owner,
                        float scale, float grav, float spin, float life, int x) {
    char *m = func_0020D348(type);
    if (m != 0) {
        char *d = *(char **)(m + 0x78);
        float a;
        float w;
        func_L00_0025E210(m);
        *(float *)(m + 0x2C) = *(float *)(m + 0x2C) * scale;
        *(short *)(m + 0x32) = 0xFF;
        m[0x30] = 0xFF;
        m[0x31] = 1;
        *(float *)(m + 0x40) = func_002140F8(-3.1415927f, 3.1415927f);
        *(float *)(m + 0x44) = func_002140F8(-3.1415927f, 3.1415927f);
        *(float *)(m + 0x48) = func_002140F8(-3.1415927f, 3.1415927f);
        qcopy(m + 0x10, &p);
        qcopy(d, &v);
        a = func_002140F8(D_0015EE6C * 1.5707964f, D_0015EE6C * 6.2831855f);
        w = (func_001160D8() & 1) ? -a * spin : a * spin;
        *(float *)(d + 0x14) = scale;
        *(int *)(d + 0x10) = owner;
        *(float *)(d + 0x18) = w;
        *(int *)(d + 0x28) = owner;
        *(int *)(d + 0x1C) = func_001FA898_r(func_001F9878(life * 60.0f));
        *(int *)(d + 0x20) = x;
        *(float *)(d + 0x24) = grav * 9.8f * D_0015EE70;
        func_L00_00251E30(m);
    }
    return m;
}
