/* NON_MATCHING func_L15_0020A960 -- src/overlays/shared/help_001FFED0.c
 * Best so far: BYTES 27/888 (97.0% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L15_0020A960: hero aim/probe routine. Builds two offset vectors (a,c and b,d) from the hero position (D_0
 *   Best candidate p9.c: 27 bytes differ of 888 (BYTES 27/888), budget spent. Left: (1) the lui temp is $v0 in our
 *   Idioms that got it this far: D_0013F4D0 as its own extern (else CSE turns it into base+0x80); one pointer vari
 */
#include "common.h"
extern char D_0013F4D0[];
typedef struct { float x, y, z, w; } Vx __attribute__((aligned(16)));
extern unsigned char D_0013E633[];
extern float D_0015EE6C MACRO_ADDR;
extern char D_L15_001744DC[];
extern char D_L15_001744C0[];
extern float func_L00_00234250(float *v);
extern float func_001F9CE8(void *);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern int func_L00_001F3958(void);
extern float func_L00_001FF860(float, float);
extern void func_001252C0(void *, void *);
// Steers the hero's aim vectors toward the current target and snaps momentum to it when close enough.
void func_L15_0020A960(int arg) {
    float a[4] __attribute__((aligned(16)));
    float c[4] __attribute__((aligned(16)));
    float b[4] __attribute__((aligned(16)));
    float d[4] __attribute__((aligned(16)));
    char *base = D_0013E633 + 0xE1D;
    char *b2;
    float f2, f21, f20;
    int r18, r;
    if (*(short *)(base + 0x308) != 0) return;
    if (func_L00_00234250((float *)(base + 0xE0)) < D_0015EE6C * 0.1f) return;
    f2 = 0.37f;
    f21 = 0.5f;
    if ((unsigned)(*(int *)(base + 0x208C) - 0x11) < 2) {
        f2 = 0.0f;
        f21 = 0.7f;
        base = D_0013F4D0;
    } else {
        if (((unsigned char *)base)[0x20A4] == 2) {
            f2 = 1.5f;
            f21 = 5.0f;
        }
        base = D_0013F4D0;
    }
    qcopy(a, base);
    a[2] = a[2] + f2;
    qcopy(b, base);
    b[2] = b[2] + f2 * 0.3f;
    if (arg != 0 || func_001F9CE8(base + 0x60) < 0.01f) {
        base = base - 0x80;
        c[0] = func_001F9F90(*(float *)(base + 0x98)) * f21;
        c[1] = func_001F9FA8(*(float *)(base + 0x98)) * f21;
        c[2] = 0.0f;
        d[0] = func_001F9F90(*(float *)(base + 0x98)) * f21 * 1.4f;
        d[1] = func_001F9FA8(*(float *)(base + 0x98)) * f21 * 1.4f;
        d[2] = 0.0f;
    } else {
        qcopy(c, base + 0x60);
        c[2] = 0.0f;
        func_001F9C30(c, c, f21 / func_001F9CE8(c));
        qcopy(d, c);
        func_001F9C30(d, d, 1.4f);
    }
    func_001F9BD8(c, c, a);
    r18 = -1;
    func_001F9BD8(d, d, b);
    b2 = D_0013E633 + 0xE1D;
    if (func_L00_001EFFF0(b, d, 4, *(int *)(b2 + 0x2080), 0)) {
        if (*(int *)D_L15_001744DC > 0) r18 = func_L00_001F3958();
    }
    f20 = 0.0f;
    b2 = D_0013E633 + 0xE1D;
    if (func_L00_001EFFF0(a, c, 4, *(int *)(b2 + 0x2080), 0)) {
        char *q = D_L15_001744C0;
        if (*(int *)(q + 0x1C) > 0)
            f20 = func_L00_001FF860(*(float *)(q + 0x48), func_001F9CE8(q + 0x40));
    }
    if (f20 >= 0.87266463f || r18 == 8 || r18 == 12) {
        float f;
        char *b3 = D_0013E633 + 0xE1D;
        char *q2 = D_L15_001744C0;
        *(float *)(q2 + 0x48) = 0.0f;
        *(int *)(b3 + 0x240) = *(int *)(q2 + 0x18);
        func_001252C0(q2 + 0x40, q2 + 0x40);
        f = -*(float *)(b3 + 0xE0) * *(float *)(q2 + 0x40)
            - *(float *)(b3 + 0xE4) * *(float *)(q2 + 0x44);
        if (0.0f < f) {
            func_001F9C30(q2 + 0x40, q2 + 0x40, f);
            func_001F9BD8(b3 + 0xE0, b3 + 0xE0, q2 + 0x40);
        }
    }
}
