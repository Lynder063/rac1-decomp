/* NON_MATCHING func_L00_002B5C98 -- src/overlays/shared/vendor_002B33E8.c
 * Best so far: SIZE ours 3304 / retail 3364, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Blaster (moby class 168) update, 3364 bytes: aims from the owner's state (func_L00_002B5998), spawns effects (
 *   Differences: retail saves $s0 (sq $s0,0xD0) and keeps m in $s4 while ours uses $s3; the early G recomputations
 *   Unblock: an allocator dump for try candidates (tools/regalloc.py found no dump for this name) to see why m and
 */
typedef int u128 __attribute__((mode(TI)));

extern unsigned char D_L00_001803C0[];
extern int D_L00_0015F6A8 MACRO_ADDR;
extern void *D_L00_00173F58 MACRO_ADDR;
extern float D_L00_0017ADF4 MACRO_ADDR;
extern int func_L00_0023F0D0(float *, float, float, float, float, float);
extern int func_L00_00234718(int);
extern float func_001FA748(float, float);
extern void func_L00_002CC3C0(void *, void *, void *, float, float, float, float);
extern float AbsoluteFloat(float) __asm__("func_001F9B88");
extern void func_L00_001EE2E0(int, int, float, float, int *, int, int, float, int);
extern char *func_L00_0026EBC0(char *, char *, int, int, float);
extern void func_001FA4A0(void *, void *);
extern void func_L00_00233EE0(float *, float, float, float);
extern void func_00213D28(void *, int, int);
extern void func_L00_002514B8(void *);
extern void func_L00_0020ED30(void);
extern void func_L00_00222B80(int, int);
extern char D_0013E15A[];
extern float func_001F9CB8(void *);
extern int func_L00_00258BC8(int, int);
extern int func_001F9938(void *);
extern void func_001F9BC0(void *);
extern void func_001F9EE8(void *, void *, void *);
extern void func_001FA480(void *, void *);
extern void func_L00_00250800(void *, int, void *);
extern void func_L00_001F2BE8(void *, float, int, void *, void *);
extern void func_L00_0023F1D0(int);

typedef struct {
    float x, y, z, w;
    void *m;
    int i44;
    unsigned char b48;
    unsigned char b49;
    short s4a;
    float f4c;
    int i50;
} S30;

/* Blaster (moby class 168) per-frame update: aims the shot, spawns its effects and fires when the owner allows it. */
void func_L00_002B5C98(char *m) {
    int *p;
    char *g;
    char *pad;
    char *h;
    char *res = 0;
    char *q;
    char *r17;
    char *g2;
    int w19;
    int ok;
    int r, r2, r3, r4, r5, r6;
    int k;
    int a, a2, a3;
    int m53;
    int t1;
    float c0, c4;
    float v0[4];
    float v10[4];
    float bb[4];
    float lv[4];
    float g60[4];
    float cA0[4];
    float cB0[4];
    S30 s30;
    float f20, f21, f22, f23, f24, f25;
    float t, dist, len, f2, g3, b2, c3;

    *(u128 *)v0 = 0;
    c4 = 0;
    p = *(int **)(m + 0x78);
    if (*(unsigned char *)(m + 0x20) == 0) {
        *(unsigned char *)(m + 0x20) = 1;
        p[4] = -1;
        p[5] = 0;
    }
    func_001F9938(p + 1);
    func_001F9908(p);
    g = (char *)&D_0013F450;
    if (*(int *)(g + 0x2084) == 1) func_L00_00222B80(0x1E, 1);
    if (*(unsigned char *)(m + 0x53) == 0 && *(unsigned char *)(m + 0x51) < 3) {
        p[0] = func_001F9850(7);
    }
    w19 = *(int *)(g + 0x2084);
    if (w19 == 0x1E && (*(unsigned short *)(*(char **)(g + 0x2080) + 0x34) & 1)) {
        g2 = D_L00_00166D80;
        func_001FA480(&s30, g2);
        func_001FA4A0(g60, &s30);
        v0[2] = D_0015EE6C * 40.0f;
        func_001F9EE8(v0, v0, g60);
        func_001F9BC0(bb);
        bb[1] = bb[1] + 0.15f;
        bb[2] = bb[2] + 0.75f;
        bb[0] = bb[0] + 0.15f;
        func_001F9EE8(bb, bb, g60);
        func_001F9BD8(bb, bb, g2 + 0x140);
        if (*(int *)(g + 0x2084) == w19
            && (*(unsigned short *)(*(char **)(g + 0x2080) + 0x34) & 1)
            && *(unsigned char *)(g + 0x20AC) == 0) {
            func_L00_001EE2E0((int)m, 0xFF0F0FFF, 1.0f, 0.0f, 0, 0x26, -1, 90.0f, 4);
            func_L00_001FF4B0(cA0, v0, 20.0f);
            func_001F9BD8(cB0, cA0, bb);
            *(u128 *)cA0 = *(u128 *)cB0;
            ok = func_L00_001EFFF0(g2 + 0x140, cA0, 0, (int)m, 0);
            if (ok) {
                q = D_L00_00173F58;
                if (q != 0 && (*(unsigned short *)(q + 0x34) & 0x1000)) res = q;
            }
        }
    } else {
        v0[0] = D_0015EE6C * 40.0f;
        func_001F9EC0((V4 *)v0, (V4 *)v0, (V4 *)(D_0013E633 + 0x145D));
        func_L00_00250800(m, 0, bb);
    }

    /* L5F50 */
    g = (char *)&D_0013F450;
    if (*(int *)(g + 0x12B0) != 0) {
        c0 = *(float *)(g + 0x12BC);
    } else {
        c0 = func_L00_001FF860(v0[0], v0[1]);
    }
    t = func_001F9CE8(v0);
    f21 = -func_L00_001FF860(t, v0[2]);
    c4 = f21;
    f24 = c0;
    if (*(int *)(g + 0x2084) != 0x1E) {
        if (*(short *)(g + 0x22C8) == 1) {
            c0 = *(float *)(m + 0x48);
            f24 = c0;
            c4 = D_L00_0017ADF4;
            f21 = c4;
        }
        res = (char *)func_L00_002B5998((int)m, (V_2b46a8 *)bb, &c0, &c4);
    }
    if (res != 0 && *(short *)((char *)p + 4) == 0) {
        if (func_L00_00234718(-1) != 0) {
            r17 = (char *)func_L00_0025D390(res);
            dist = func_001F9D10(D_L00_00166EC0, res + 0x10);
            *(u128 *)&s30 = *(u128 *)(res + 0x10);
            f2 = 0.5f;
            if (r17 != 0) f2 = *(float *)(r17 + 0x10);
            s30.z = s30.z + f2;
            t = AbsoluteFloat(0.9f - (dist / 50.0f) * 0.65f);
            func_L00_001EE2E0((int)m, 0xFF0F0FFF, t, 0.0f, (int *)&s30, 0x26, -1, 90.0f, 4);
        }
    }

    /* L60BC */
    g = (char *)&D_0013F450;
    if (*(unsigned char *)(g + 0x20A8) != 0 && *(int *)(g + 0x2084) != 0x72
        && D_L00_0015F6A8 != 2) {
        r = func_001F9850(5 - *(unsigned char *)(D_0013E15A + 0x4D5));
        if (r < *(int *)(g + 0x1BC) && p[0] == 0) {
            if (!(func_L00_00234638(-1, 1) == 0 || *(unsigned char *)(g + 0x20AC) != 0)) {
                p[0] = func_001F9850(6);
                if (res != 0) {
                    f22 = D_0015EE6C * 40.0f;
                    *(u128 *)v10 = *(u128 *)(res + 0x10);
                    r17 = (char *)func_L00_0025D390(res);
                    if (r17 != 0) t = *(float *)(r17 + 0x10);
                    else t = 0.5f;
                    v10[2] = v10[2] + t;
                    dist = func_001F9D48(bb, v10);
                    f20 = 0.17453293f;
                    g3 = func_L00_001FF860(dist, v10[2] - bb[2]);
                    f21 = f21 - *(float *)(g + 0x2E4) * 0.5f;
                    c4 = -g3;
                    t = func_001FA850(f21, -g3);
                    if (t < f20) {
                        f21 = c4;
                    } else {
                        b2 = func_001FA748(f21, f20);
                        if (b2 < c4) {
                            f21 = func_001FA748(f21, f20);
                        } else {
                            f20 = -0.17453293f;
                            c3 = func_001FA748(f21, f20);
                            if (c4 < c3) {
                                f21 = func_001FA748(f21, f20);
                            }
                        }
                    }
                    func_00215C00(&s30, f22, f24, -f21);
                    func_001F9BD8(&s30, &s30, bb);
                    c0 = func_L00_001FF860(v10[0] - s30.x, v10[1] - s30.y);
                    t = func_001F9D48(&s30, v10);
                    c4 = -func_L00_001FF860(t, v10[2] - s30.z);
                } else {
                    if (*(int *)(g + 0x2084) != 0x1E) {
                        t = *(float *)(g + 0x2E4) * 0.5f;
                        c4 = c4 - t;
                        f21 = f21 - t;
                    }
                }
                /* L6304 */
                g = (char *)&D_0013F450;
                s30.i44 = 0x10000;
                s30.m = m;
                s30.f4c = 0.25f;
                s30.i50 = 1;
                k = 4;
                func_L00_001FF860(*(float *)(g + 0x670), *(float *)(g + 0x674));
                f20 = 1.0f;
                f23 = -1.0f;
                func_001F9F90(func_L00_001FF860(*(float *)(g + 0x670), *(float *)(g + 0x674)));
                f25 = 0.65f;
                f22 = f20;
                s30.x = func_L00_001FF860(*(float *)(g + 0x670), *(float *)(g + 0x674));
                s30.y = func_001F9FA8(s30.x);
                s30.z = f20;
                s30.w = 5627.9248f;
                s30.b49 = 1;
                s30.s4a = *(short *)(m + 0xA6);
                s30.b48 = 1;
                func_L00_00233EE0(g60, 0.7f, -0.15f, 0.5f);
                func_L00_001F2BE8(g60, 0.42f, 5, *(void **)(g + 0x2080), &s30);
                func_L00_002CC3C0(*(void **)(g + 0x2080), bb, res, c0, c4, f24, f21);
                p[5] = func_001F9850(15);
                do {
                    *(u128 *)lv = 0;
                    lv[0] = func_002140F8(f23, f22);
                    k--;
                    lv[1] = func_002140F8(f23, f22);
                    lv[2] = func_002140F8(f23, f22);
                    *(u128 *)&s30 = *(u128 *)lv;
                    len = func_001F9CB8(v0);
                    func_L00_001FF4B0(&s30, &s30, len * f25);
                    func_001F9BD8(&s30, v0, &s30);
                    t = func_002140F8(D_0015EE6C * 3.0f, D_0015EE6C * 6.0f);
                    func_L00_001FF4B0(&s30, &s30, t);
                    r = func_001F9850(5);
                    r2 = func_001F9850(10);
                    r2 = func_L00_00258BC8(r, r2);
                    func_L00_0026EBC0((char *)bb, (char *)&s30, 0x5F2F4F6F, r2, 10000.0f);
                } while (k >= 0);
                func_L00_001FF4B0(v0, v0, D_0015EE6C * 0.5f);
                r4 = func_001F9850(4);
                r5 = func_001F9850(7);
                r3 = func_L00_00258BC8(r4, r5);
                func_L00_0026EBC0((char *)bb, (char *)v0, 0x2F4F7F7F, r3, 200000.0f);
            }
            /* L6578 */
            if (*(unsigned char *)(m + 0x53) != 4) {
                func_00213DE0(m, 4, 0, func_001F9850(7));
            }
            h = D_0014171B + 0x65;
            if (*(unsigned short *)(h + 0x78) <= 0xFFFE) {
                *(unsigned short *)(h + 0x78) = *(unsigned short *)(h + 0x78) + 1;
            }
            r = func_001F9850(D_0015EFA4);
            r = r / 600;
            if (*(unsigned short *)(h + 0x7A) < r) {
                r = func_001F9850(D_0015EFA4) / 600;
                *(unsigned short *)(h + 0x7A) = r;
            }
            *(unsigned int *)(h + 0x7C) = *(unsigned int *)(h + 0x7C) | (1u << D_0015EE84) | 0x80000000u;
        }
    }
    goto L6640;

    /* L6640 and the tail */
L6640:
    pad = D_0013A5E0 + 0x2460;
    g = (char *)&D_0013F450;
    if ((*(int *)(pad + 0x1A0) & *(int *)(g + 0x10A0)) != 0 && func_L00_00234718(-1) != 0) goto L6690;
    r = func_001F9850(9);
    if (r < *(int *)(g + 0x1BC)) {
        m53 = *(unsigned char *)(m + 0x53);
        goto L66B4;
    }
    if (*(unsigned char *)(g + 0x20A8) == 0) goto L66B0;
L6690:
    if (*(int *)(g + 0x2084) == 0x72) goto L66B0;
    if (D_L00_0015F6A8 != 2) goto L6768;
L66B0:
    m53 = *(unsigned char *)(m + 0x53);
L66B4:
    if (m53 != 0) goto L66CC;
    if ((*(unsigned char *)(m + 0x70) & 2) == 0) goto L6720;
L66CC:
    if (*(int *)(g + 0x2084) == 0x72) goto L673C;
    if (D_L00_0015F6A8 == 2) goto L6720;
    if (m53 == 1) goto L6754;
    func_00213DE0(m, 1, 0, func_001F9850(7));
    goto L6754;
L6720:
    if (*(int *)(g + 0x2084) == 0x72) goto L673C;
    if (D_L00_0015F6A8 != 2) goto L6754;
L673C:
    func_00213D28(m, 1, 0);
    func_L00_002514B8(m);
L6754:
    func_L00_0020ED30();
    p[0] = 0;
L6768:
    if (*(unsigned char *)(m + 0x52) == 2) goto L6958;
    if (p[5] <= 0) goto L6958;
    r = func_001F9850(9);
    if (p[5] < r) a = p[5];
    else a = func_001F9850(9);
    f20 = func_001FA888(a);
    r2 = func_001F9850(9);
    f20 = f20 * 0.7f;
    f22 = f20 / (float)r2;
    r3 = func_001F9850(9);
    if (p[5] < r3) a2 = p[5];
    else a2 = func_001F9850(9);
    f20 = func_001FA888(a2);
    r4 = func_001F9850(9);
    f20 = f20 * 0.7f;
    f21 = f20 / (float)r4;
    r5 = func_001F9850(9);
    if (p[5] < r5) a3 = p[5];
    else a3 = func_001F9850(9);
    f20 = func_001FA888(a3);
    r6 = func_001F9850(9);
    f20 = f20 * 0.7f / (float)r6;
    t = func_L00_001FF860(*(float *)(g + 0x670), *(float *)(g + 0x674));
    t = func_001F9F90(t);
    t = t + t;
    s30.x = *(float *)(g + 0x80) + t;
    t = func_L00_001FF860(*(float *)(g + 0x670), *(float *)(g + 0x674));
    t = func_001F9FA8(t);
    t = t + t;
    s30.y = *(float *)(g + 0x84) + t;
    s30.z = *(float *)(g + 0x88) + 1.0f;
    if (p[4] == -1) {
        p[4] = func_L00_0023F0D0((float *)&s30, 6.0f, 0.0f, f22, f21, f20);
    } else {
        unsigned char *e = D_L00_001803C0 + p[4] * 32;
        *(u128 *)(e + 0x10) = *(u128 *)&s30;
        *(float *)(e + 0x8) = f20;
        *(float *)(e + 0x1C) = 6.0f;
        *(float *)(e + 0x0) = f22;
        *(float *)(e + 0x4) = f21;
    }
    func_001F9908(p + 5);
    return;
L6958:
    if (p[4] == -1) return;
    func_L00_0023F1D0(p[4]);
    p[4] = -1;
    p[5] = 0;
}
