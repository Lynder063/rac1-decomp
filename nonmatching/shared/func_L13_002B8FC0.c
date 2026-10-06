/* NON_MATCHING func_L13_002B8FC0 -- src/overlays/shared/vendor_002B8FC0.c
 * Best so far: BYTES 57/636 (91.0% of the bytes match), checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L13_002B8FC0 (636 B)
 *   Best: c6.c, size exact, BYTES 57/636. GIF packet builder (pointer global D_L13_00161240, MACRO_ADDR).
 *   Levers: one local per packet step (p1/p2/p3: retail uses a different temp register for each), pts as an
 *   advancing pointer but out indexed (`out[i]`, loop.c copies out into its own IV register).
 *   Left: pts and the loop counter swap $s2/$s3; the second packet word is stored via new D + 8 in retail
 *   (writing it through D reloads D, d1); the screen-offset base is set after the blez in retail (d2 worse).
 */
#include "common.h"

typedef int q_2b8fc0 __attribute__((mode(TI)));
typedef union { q_2b8fc0 q; float f[4]; } V_2b8fc0;
extern char *D_L13_00161240 MACRO_ADDR;
extern char D_L13_00160960[];
extern char D_L13_00160970[];
extern char D_0013E15A[];
extern void func_001FA218(void *, void *);
extern float func_001FA888(int);
extern void func_001F9EE8(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern int func_001FA898_r(float) __asm__("func_001FA898");

/* Queues a GIF packet drawing the n-point line strip pts, rotated by ang, scaled and moved to (x, y). */
void func_L13_002B8FC0(short *pts, int n, int col, long tag, float x, float y, float scale, float ang) {
    float M[4][4];
    V_2b8fc0 rot;
    V_2b8fc0 u;
    V_2b8fc0 t;
    char *p1;
    char *p2;
    char *p3;
    long *out;
    int q = (n + 1) / 2 + 3;
    char *off;
    int i;
    ((int *)D_L13_00161240)[0] = q | 0x10000000;
    ((int *)D_L13_00161240)[1] = 0;
    ((int *)D_L13_00161240)[2] = 0;
    ((int *)D_L13_00161240)[3] = q | 0x50000000;
    p1 = D_L13_00161240;
    D_L13_00161240 = p1 + 0x10;
    qcopy(p1 + 0x10, D_L13_00160960);
    *(short *)(p1 + 0x10) = -0x7FFF;
    p2 = D_L13_00161240;
    D_L13_00161240 = p2 + 0x10;
    *(long *)(p2 + 0x10) = 0x144;
    *(long *)(p2 + 0x18) = tag;
    p3 = D_L13_00161240;
    D_L13_00161240 = p3 + 0x10;
    qcopy(p3 + 0x10, D_L13_00160970);
    *(short *)(p3 + 0x10) = n - 0x8000;
    rot.q = 0;
    rot.f[2] = ang;
    out = (long *)(D_L13_00161240 + 0x10);
    D_L13_00161240 = (char *)out;
    func_001FA218(M, &rot);
    off = D_0013E15A + 0x4A6;
    for (i = 0; i < n; i++) {
        int a, b;
        t.q = 0;
        t.f[0] = func_001FA888(pts[0]);
        t.f[1] = func_001FA888(pts[1]);
        pts += 2;
        u = t;
        func_001F9EE8(&u, &u, M);
        func_001F9C30(&u, &u, scale);
        u.f[0] += x;
        u.f[1] += y;
        a = func_001FA898_r(u.f[0] * 16.0f);
        b = func_001FA898_r(u.f[1] * 16.0f);
        out[i] = (a + *(int *)(off + 0x10) - 8) | ((long)(b + *(int *)(off + 0x14) - 8) << 16) | ((long)col << 32);
    }
    D_L13_00161240 += ((n + 1) / 2) * 16;
}
