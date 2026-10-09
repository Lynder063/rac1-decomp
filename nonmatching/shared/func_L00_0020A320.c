/* NON_MATCHING func_L00_0020A320 -- src/overlays/shared/help_00203E98.c
 * Best so far: SIZE ours 540 / retail 544, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Spawns N1 sparks (func_00272488 with a random-offset vector near D_0013E633+0xE1D+0x80/0x84) and N2 bursts (fu
 *   Difference: in loop 2 retail passes `addiu $a0,$sp,0x10` (vector u) inside the loop, ours hoists it into $s3 (
 *   Also loop 2: retail loads G+0x80 and G+0x84 both before the two add.s (w*8 shared), stores u[1] before u[0]. U
 *   q28 t05: p8 (one float s[8], u = s+4; call with the packet's (void*,int,int,float,float) signature, which comp
 *   hq13 s01 (5 runs, p10-p14): best.c's callee prototype clashes with the packet's; with the packet's (void *, in
 */
#include "common.h"
typedef struct { int a[4]; } Vq __attribute__((aligned(16)));
extern unsigned char D_0013E633[] NOT_SDA;
extern float D_0015EE6C MACRO_ADDR;
extern char *func_L00_002D9340(Vq *src, float f);
extern float func_002140F8(float, float);
extern float func_00214158(void);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern int func_002140B0(int);
extern int func_L00_00258BC8(int, int);
extern unsigned char *func_L00_00272488(void *pos, int b, int color, float f, float g);
extern void func_L00_002703E8(void *, void *, int, int);

/* Spawns N1 sparks around the point near the origin and N2 bursts; the flag first copies a vector and raises its z. */
void func_L00_0020A320(int n1, int n2, int flag) {
    float v[4];
    float u[4];
    char *g;
    char *b;
    int i;
    int j;
    float t;
    float r;
    float w;
    float c;
    int k;

    if (flag != 0) {
        b = D_0013E633 + 0xE9D;
        qcopy(v, b);
        v[2] = *(float *)(b + 0x270);
        func_L00_002D9340((Vq *)v, 2.25f);
    }
    if (n1 > 0) do {
        n1--;
        g = D_0013E633 + 0xE1D;
        v[0] = *(float *)(g + 0x80) + func_002140F8(-0.3f, 0.3f);
        v[1] = *(float *)(g + 0x84) + func_002140F8(-0.3f, 0.3f);
        v[2] = *(float *)(g + 0x2F0);
        func_L00_00272488(v, (int)(g + 0x2F0), -1, func_002140F8(0.3f, 0.6f), 5250.0f);
    } while (n1 != 0);
    k = n2;
    if (n2 > 0) {
        do {
            k--;
            g = D_0013E633 + 0xE1D;
            t = func_00214158();
            r = func_002140F8(D_0015EE6C * 0.0f, D_0015EE6C * 3.0f);
            v[0] = func_001F9F90(t) * r;
            v[1] = func_001F9FA8(t) * r;
            v[2] = func_002140F8(D_0015EE6C * 3.0f, D_0015EE6C * 8.0f);
            w = v[0] * 8.0f;
            c = *(float *)(g + 0x84) + w;
            r = *(float *)(g + 0x80) + w;
            u[1] = c;
            u[0] = r;
            u[2] = *(float *)(g + 0x2F0) - func_002140F8(0.0f, 0.2f);
            i = func_002140B0(2);
            j = func_L00_00258BC8(0x5A, 0x78);
            func_L00_002703E8(u, v, i, j);
        } while (k != 0);
    }
}
