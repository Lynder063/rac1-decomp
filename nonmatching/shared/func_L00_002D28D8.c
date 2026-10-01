/* NON_MATCHING func_L00_002D28D8 -- src/overlays/shared/vendor_002D1168.c
 * Best so far: BYTES 6/1412 (99.6% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Only difference left: the `a + 0x10` position pointer. Retail computes it straight into the
 *   arg register and copies it (`addiu $a2,$s2,0x10 ; daddu $s7,$a2,$zero ; jal func_001F9BF0`),
 *   ours does `addiu $s7,$s2,0x10 ... daddu $a2,$s7,$zero` in the delay slot (3 words reordered).
 *   Tried: `pos = a + 0x10` before the call, assignment inside the argument, a second temp,
 *   float* pos with cast, and inline `a + 0x10` arg followed by `pos = ...` after the call (size +4).
 *   Idioms that worked: do { a = n; ... } while (n) with n loaded from o+0xA0; comma `(b = g - 0x80, ...)`
 *   inside the && chain; clamp as `x = K; if (!(v < K)) x = v;` with K a named local;
 *   MACRO_ADDR decl for D_L00_0015F6B0 / D_0015EE70 (gas turns delay-slot ones into $gp forms).
 */
#include "common.h"

typedef struct { float x, y, z, w; } Vx __attribute__((aligned(16)));
typedef float V[4] __attribute__((aligned(16)));
extern int D_L00_0015F6B0 MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern V D_L00_00173F60;
extern char D_0013E633[];
extern int func_L00_0025F410(void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern float func_001F9B88(float);
extern void func_L00_002D1E68(void *, int, int);
extern void func_L00_002D19E8(void *);
extern float func_00214D28(float *p, float target, float maxstep);
extern int func_L00_00261568(int x, char *o, float *p, float *q, float *r, float *s);
extern int func_L00_0025D390(char *);
extern void func_L00_002617B0(char *a, Vx *b, void *c, void *d);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern float func_001F9CB8(void *);
extern void func_001F9BD8(void *, void *, void *);

/* per-frame update of a thrown object chain: walks to the root, then moves each link and resolves its collision */
void func_L00_002D28D8(char *a) {
    float v0[4];
    float v1[4];
    float v2[4];
    float v3[4];
    float v4[4];
    float v5[4];
    float v6[4];
    float v7[4];
    char *o = *(char **)(a + 0x78);
    char *n;
    char *p;
    char *w;
    char *g;
    float *pos;
    char *b;
    float lo, hi, dt, c1, c2, c3, x1, x2, y, t, len;
    int r, flags;
    if (*(int *)(o + 0xB4) == D_L00_0015F6B0)
        return;
    n = a;
    do {
        w = n;
        n = *(char **)(*(char **)(w + 0x78) + 0xA4);
    } while (n != 0);
    n = w;
    do {
        a = n;
        o = *(char **)(a + 0x78);
        flags = *(int *)(o + 0xAC);
        n = *(char **)(o + 0xA0);
        if ((flags & 4) == 0)
            *(int *)(o + 0xAC) = flags & ~0x10;
        *(int *)(o + 0xAC) = *(int *)(o + 0xAC) & ~4;
        if (func_L00_0025F410(a) == 0)
            return;
        if (*(int *)(o + 0xAC) & 2)
            return;
        *(int *)(o + 0xB4) = D_L00_0015F6B0;
        if (*(unsigned char *)(a + 0x20) != 0) {
            g = D_0013E633 + 0xE9D;
            func_001F9BF0(v3, g, pos = (float *)(a + 0x10));
            func_001F9EC0(v3, v3, a + 0xC0);
            if (func_001F9B88(v3[0]) < 0.55f && func_001F9B88(v3[1]) < 0.55f && v3[2] < 0 &&
                (b = g - 0x80, -(*(float *)(b + 0x220) + *(float *)(b + 0x234)) < v3[2]) &&
                (*(unsigned char *)(a + 0x20) == 1 || *(unsigned char *)(a + 0x20) == 5)) {
                func_L00_002D1E68(a, *(short *)(a + 0xA6) == 0x1F9, 0);
                func_L00_002D19E8(a);
            }
            dt = D_0015EE70;
            c1 = *(float *)(o + 0x48) - dt * 9.8f;
            *(float *)(o + 0x48) = c1;
            c2 = !(c1 < -0.3f) ? c1 : -0.3f;
            *(float *)(o + 0x48) = c2;
            hi = 0.3f;
            c3 = hi;
            if (!(hi < c2))
                c3 = c2;
            *(float *)(o + 0x48) = c3;
            if (*(int *)(o + 0xF0) != 0) {
                if (*(int *)(o + 0xA4) == 0) {
                    x1 = *(float *)(o + 0x4C) - dt * 10.0f;
                    *(float *)(o + 0x4C) = x1;
                    t = func_00214D28((float *)(o + 0xF4), 0.0f, func_001F9B88(x1));
                    if (t == 0.0f)
                        *(float *)(o + 0x4C) = 0.0f;
                } else {
                    x2 = *(float *)(o + 0x4C) - dt * 10.0f;
                    *(float *)(o + 0x4C) = x2;
                    y = *(float *)(*(char **)(*(char **)(o + 0xA4) + 0x78) + 0xF4) + 1.0f;
                    t = func_00214D28((float *)(o + 0xF4), y, func_001F9B88(x2));
                    if (t == 0.0f)
                        *(float *)(o + 0x4C) = 0;
                }
                qcopy(v4, o + 0xD0);
                v4[2] = v4[2] + *(float *)(o + 0xF4);
                if (a != 0)
                    *(short *)(a + 0x36) = 0x7F80;
                qcopy(v5, pos);
                qcopy(v6, a + 0x40);
                func_L00_00261568((int)a, *(char **)(o + 0xF0), v4, (float *)(o + 0xE0), pos, (float *)(a + 0x40));
                if (*(int *)(func_L00_0025D390(*(char **)(o + 0xF0)) + 0x3C) & 4) {
                    qcopy(o + 0xD0, v4);
                    *(float *)(o + 0xD8) = *(float *)(o + 0xD8) - *(float *)(o + 0xF4);
                }
                func_001F9BF0(v7, pos, v5);
                v7[3] = *(float *)(o + 0x4C);
                qcopy(o + 0x40, v7);
                func_L00_002617B0(o + 0x60, (Vx *)(o + 0x40), v6, a + 0x40);
            } else {
                if (*(int *)(o + 0xA4) == 0) {
                    qcopy(v0, pos);
                    qcopy(v1, pos);
                    v0[2] = v0[2] + *(float *)(o + 0xB0) * 0.75f;
                    v1[2] = v1[2] + *(float *)(o + 0x48);
                    r = func_L00_001EFFF0(v0, v1, 2, 0, 0);
                    qcopy(v2, D_L00_00173F60);
                } else {
                    qcopy(v2, *(char **)(o + 0xA4) + 0x10);
                    v2[2] = v2[2] + 1.0f;
                    r = 0;
                    if (*(float *)(a + 0x18) + *(float *)(o + 0x48) < v2[2])
                        r = 1;
                }
                if (r != 0) {
                    len = func_001F9CB8(o + 0x40);
                    if (D_0015EE6C * 0.5f < len) {
                        if (*(short *)(a + 0xA6) == 0x1F9 && *(unsigned char *)(a + 0x20) == 1) {
                            *(char *)(a + 0xBC) = 0;
                            *(unsigned char *)(a + 0x20) = 5;
                        } else {
                            p = *(char **)(o + 0xA4);
                            if (p != 0 && *(short *)(p + 0xA6) == 0x1F9 && *(unsigned char *)(p + 0x20) == 1) {
                                *(unsigned char *)(p + 0x20) = 5;
                                *(char *)(*(char **)(o + 0xA4) + 0xBC) = 0;
                            }
                        }
                    }
                    *(float *)(a + 0x18) = v2[2];
                    *(int *)(o + 0x48) = 0;
                } else {
                    *(int *)(o + 0xAC) = *(int *)(o + 0xAC) | 4;
                    func_001F9BD8(pos, pos, o + 0x40);
                }
            }
        }
    } while (n != 0);
}
