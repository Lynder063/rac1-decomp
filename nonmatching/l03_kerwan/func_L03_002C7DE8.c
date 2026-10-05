/* NON_MATCHING func_L03_002C7DE8 -- src/overlays/l03_kerwan/vendor_00293720.c
 * Best so far: BYTES 74/532 (86.1% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L03_002C7DE8 (532 B)
 *   Best: e1.c BYTES 74/532, size exact, logic complete. Left: scheduling in the hit block. Retail loads
 *   D_0015EE70 / D_0015EE6C early and delays the 0x130 / 0x13C stores; it reads dmg as the first insn of the
 *   join block (reorg copies it into the m[0x21] branch delay slot); and the 0x34 RMW interleaves differently.
 *   d + 0x120 is a local (s0). Store-order variants c1-e3 range 74-104.
 */
#include "common.h"

typedef struct { float f[4]; } __attribute__((aligned(16))) V_2c7de8;
extern int D_L03_00160058_m __asm__("D_L03_00160058") MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern int func_L03_002C8068(unsigned char *);
extern int func_001F9850(int);
extern int func_001F9908(void *);
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern void func_L01_0026F040(int, int);
extern float func_L00_001FF860(float, float);
extern void func_L03_00251A58(void *, float, float);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern void func_L00_0025D5B0_2c7de8(void *, void *, int, int, int, float) __asm__("func_L00_0025D5B0");
extern void func_L00_0025E4B0(void *, short *);

/* Takes hits: on a hit it loses health and is knocked away from the attacker (state 0x15). */
void func_L03_002C7DE8(unsigned char *m) {
    char *d = *(char **)(m + 0x78);
    char *info;
    V_2c7de8 v;
    int hit;
    float dmg;
    float yaw;
    char *p;
    if (*(int *)(d + 0x38) != 0
        || (*(int *)(d + 0x248) != -1
            && func_L03_002C8068((unsigned char *)(D_L03_00160058_m + (*(int *)(d + 0x248) << 8))))) {
        *(int *)(d + 0x240) = func_001F9850(0xF0);
    }
    if (func_001F9908(d + 0x240)) {
        *(float *)(d + 0x230) = *(float *)(d + 0x22C);
    } else {
        *(float *)(d + 0x230) = *(float *)(d + 0x22C) + *(float *)(d + 0x22C);
    }
    dmg = 0.0f;
    info = func_L00_0025B478(m, 0x330000, 0);
    func_L00_0025B4D0(m, info, d + 0x20, 0, &hit, &dmg, 0, 4);
    if (hit != 1 && m[0x20] != 0x15) {
        if (m[0x21] != 0xFF) {
            func_L01_0026F040(m[0x21], 1);
        }
        *(int *)(d + 0x144) = 9;
        *(float *)(d + 0x130) = D_0015EE70 * 50.0f;
        p = d + 0x120;
        *(float *)(d + 0x20) -= dmg;
        d[0x15D] = 0;
        yaw = func_L00_001FF860(*(float *)(m + 0x10) - *(float *)(*(char **)(info + 0x20) + 0x10),
                                *(float *)(m + 0x14) - *(float *)(*(char **)(info + 0x20) + 0x14));
        *(float *)(d + 0x13C) = D_0015EE6C * 10.0f;
        *(unsigned short *)(m + 0x34) &= 0xEFFF;
        func_L03_00251A58(p, 4.5f, 2.0f);
        *(float *)(d + 0x170) = 5.0f;
        *(float *)(d + 0x174) = 12.0f;
        v = *(V_2c7de8 *)(info + 0x10);
        func_L00_0025BBA0(&v, &yaw, d + 0x138, d + 0x13C);
        func_L00_0025D5B0_2c7de8(m, p, 4, 1, 0, yaw);
        m[0x20] = 0x15;
        ((unsigned char *)d)[0x117] = 0xF0;
        func_L00_0025E4B0(m, (short *)(d + 0x110));
    }
    m[0xA4] = 0xFF;
}
