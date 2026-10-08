/* NON_MATCHING func_L00_002B7430 -- src/overlays/shared/vendor_002B33E8.c
 * Best so far: SIZE ours 2700 / retail 2704, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Runs 1-9 (p0-p6, 9 of 14 spent): best p6.c is SIZE 2700 vs 2704 (4 bytes short). Still differs: prologue zero/
 *   Stopped with budget left: the remaining hunks are scheduling and register choice across ~100 instructions; eac
 *   Unblock: a second worker with a model that can read the register dump (regalloc needs a built candidate) on th
 *   Stray file: build-sn/try/_s14_claim2.txt holds the QUEUE EMPTY output of a second claim (written by mistake, o
 */
extern int func_L00_002ECAF8(char *, char *);
extern float func_001FA790(float, float);
extern void func_L00_0025B040(unsigned char *, float);
extern float func_00214358(void *, int, float);
extern float func_00214D28(float *, float, float);
extern float AbsoluteFloat(float input) __asm__("func_001F9B88");
extern void func_L00_001FFED8(void *, int, float);
extern void func_L00_001FF610(void *, void *, void *);
extern void func_L00_0028EBF0(s32);
extern int func_L00_0028F210(int, int);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int);
extern int func_L00_001F2BE8_r(void *, float, int, void *, void *) __asm__("func_L00_001F2BE8");
extern void func_L00_0025BA50(void *, void *, void *, int, int, int, int, int, float, float, float);
extern void func_L00_00260958(float *v, float s);
extern void func_L00_001FF500(void *, void *, float);
extern void *D_L00_00173F58;
extern int D_L00_00173F40[];
extern int *D_L00_00178000[];
extern short D_L00_0015F558;
extern short D_L00_00161568;
extern short D_L00_00161570;
extern short D_L00_00161574;
extern short D_L00_00161578;

/* visibomb_missile update (moby class 172): drift, homing toward the target, arming countdown. */
void func_L00_002B7430(char *m) {
    char *d = *(char **)(m + 0x78);
    char *m10 = m + 0x10;
    float s8 = D_0015EE6C * 8.0f;
    V4 k30, k40, v20, v50, v60, vA0;
    struct { float q[4]; char *m80; int i84; unsigned char b88; unsigned char b89; unsigned short h8A; float f8C; int i90; } v70;
    int s30 = 0;
    char *g, *pad, *g40, *w17, *p, *q, *ent;
    int r1, r2, ok, c, k, d2c, a, rr;
    float f0, f1, f2, f3, f4, f12, f13, f14, t, fa, fb, fc, fd, fe, fg, ff, fh;

    *(q_2b58d8 *)&k40 = 0;
    k40.f[2] = s8;
    qcopy(&k30, &k40);
    *(q_2b58d8 *)&k40 = 0;
    k40.f[2] = 1.0f;

    D_L00_0015F6E8_2b58d8 = 1;
    *(int *)&D_L00_0015F558 = 1;
    func_L00_00204130();
    D_L00_0017E608_2b58d8 = 1;
    func_00216028_2b58d8(6, 0);

    *(int *)(d + 0x10) -= 1;
    r1 = func_001F9850(100);
    g = D_0013E633 + 0xE1D;
    if (!(-r1 < *(int *)(d + 0x10))) goto end1;
    if (*(int *)(g + 0x2084) == 0x16) goto end1;
    if (*(int *)(g + 0x2084) == 0x3D) goto end1;
    if (*(int *)(g + 0x2084) == 0x72) goto end1;
    {
        int v = *(int *)(g + 0x208C);
        if (v == 2 || v == 4 || v == 3 || v >= 13 || v == 7 || v == 10 || v == 16 || v == 5) goto end1;
    }
    if (*(int *)(g + 0x2084) == 0x65) goto end1;
    if (*(int *)(g + 0x2084) == 0x32) goto end1;
    if (*(int *)(g + 0x300) == 0) goto end1;
    p = *(char **)(g + 0x2FC);
    if (p != 0) {
        if (*(short *)(p + 0xA6) == 0x13E) goto end1;
        if (*(short *)(p + 0xA6) == 0x46F) goto end1;
    }

    c = *(int *)(d + 0x10);
    if (c < 0) {
        if (*(char **)(d + 0x14) != 0) func_L00_002ECAF8(*(char **)(d + 0x14), m);
        func_L00_002B6AE0(m, 0);
        func_L00_002B6E90(m, d);
        return;
    }

    /* main path: d->0x10 >= 0 */
    pad = D_0013A5E0 + 0x2460;
    f1 = *(float *)&D_L00_0016156C_2b58d8 * D_0015EE6C;
    if (*(int *)(pad + 0x1A0) & 0x40) f1 = *(float *)&D_L00_00161570 * D_0015EE6C;
    f2 = *(float *)(d + 0x48);
    f3 = *(float *)(d + 0x4);
    f4 = *(float *)&D_L00_00161570 * D_0015EE6C;
    f0 = (f1 - f2) * *(float *)&D_L00_00161574;
    f2 = f2 + f0;
    *(float *)(d + 0x48) = f2;
    f0 = (f2 - f3) * *(float *)&D_L00_00161578;
    f3 = f3 + f0;
    *(float *)(d + 0x4) = (f4 < f3) ? f4 : f3;

    f2 = D_0015EE6C;
    f1 = *(float *)&D_L00_0016156C_2b58d8 * f2;
    f12 = *(float *)(d + 0x48);
    f0 = *(float *)&D_L00_00161570 * f2;
    f3 = *(float *)&D_L00_00161568;
    f0 = f0 - f1;
    f1 = f1 / f0;
    f12 = f12 - f1;
    a = func_001FA898_r(f12 * f3);
    func_L00_0028F210(*(int *)(d + 0x2C), a);

    if (*(int *)(d + 0x10) > 0) {
        r1 = func_001F9850(0xBB8);
        r2 = func_001F9850(5);
        if (*(int *)(d + 0x10) < r1 - r2) {
            float K = D_0015EE60 * 0.0122718466f;
            fa = *(float *)(g + 0x1D24) - *(float *)(d + 0x1C);
            fb = *(float *)(g + 0x1D20) - *(float *)(d + 0x18);
            fe = D_0015EE60 * 0.1f;
            fg = D_0015EE60 * 0.06f;
            fa = fa * fe;
            fb = fb * fe;
            *(float *)(d + 0x1C) = *(float *)(d + 0x1C) + fa;
            *(float *)(d + 0x18) = *(float *)(d + 0x18) + fb;
            fc = *(float *)(m + 0x40);
            f12 = *(float *)(m + 0x44);
            fd = *(float *)(d + 0x18) - fc;
            fd = fd * fg;
            fc = fc + fd;
            *(float *)(m + 0x40) = fc;
            f13 = *(float *)(d + 0x1C) * K;
            ff = func_001FA790(f12, f13);
            *(float *)(m + 0x44) = ff;
            if (1.57079637f <= ff) {
                *(float *)(m + 0x44) = 1.56979632f;
            } else if (ff <= -1.57079637f) {
                *(float *)(m + 0x44) = -1.56979632f;
            }
            f13 = *(float *)(d + 0x18) * (D_0015EE60 * 0.0122718466f);
            fh = func_001FA790(*(float *)(m + 0x48), f13);
            *(float *)(m + 0x48) = fh;
            func_L00_0025B040((unsigned char *)m, 0.2f);
        }
    }
    f14 = *(float *)(m + 0x44);

    /* L7808 */
    func_00215C00(&v50, *(float *)(d + 0x4), *(float *)(m + 0x48), -f14);
    qcopy(&v20, m10);
    func_001F9BD8(m10, m10, &v50);

    r1 = func_001F9850(0xBB8);
    r2 = func_001F9850(0x3C);
    if (r1 - r2 < *(int *)(d + 0x10)) {
        t = func_00214358(m10, 0, 0.5f) + *(float *)(d + 0x44);
        if (*(float *)(m + 0x18) < t) {
            p = (char *)D_L00_00173F58;
            q = 0;
            if (p != 0) q = *(char **)(p + 0x24);
            if (p == 0 || (q != 0 && *(short *)(q + 0x46) == 5)) {
                f0 = D_0015EE6C;
                fa = func_00214D28((float *)(m + 0x18), t, f0 * 6.0f);
                fb = func_L00_001FF860(*(float *)(d + 0x4), fa);
                f2 = fb;
                f1 = D_0015EE6C * 1.57079637f;
                if (f1 < f2) f2 = f1;
                *(float *)(m + 0x44) = *(float *)(m + 0x44) - f2;
            }
        }
    }

    /* L7928 */
    f0 = *(float *)(m + 0x10);
    if (f0 < 4.5f) goto end1;
    if (1018.0f < f0) goto end1;
    f0 = *(float *)(m + 0x14);
    if (f0 < 4.5f) goto end1;
    if (1018.0f < f0) goto end1;
    f0 = *(float *)(m + 0x18);
    if (f0 < 4.5f) goto end1;
    if (1018.0f < f0) goto end1;

    func_L00_002B6E90(m, d);
    {
        float f20 = 3.0f, f21 = 0.5f, f22 = 1.1f, f23 = 0.7f, f24 = 1.0f;
        float x;
        q = *(char **)(d + 0x24) + 0x10;
        x = *(float *)(d + 0x18) / f20;
        fa = AbsoluteFloat(x);
        f13 = -(*(float *)(d + 0x1C) * f21 + fa + (*(float *)(d + 0x18) - *(float *)(m + 0x40)) * f22) * f23;
        func_L00_001FFED8(q, 1, f13);

        q = *(char **)(d + 0x28) + 0x10;
        x = *(float *)(d + 0x18) / f20;
        fa = AbsoluteFloat(x);
        f13 = -(*(float *)(d + 0x1C) * f21 + fa - (*(float *)(d + 0x18) - *(float *)(m + 0x40)) * f22) * f23;
        func_L00_001FFED8(q, 1, f13);

        qcopy(&v70, &v50);
        v70.q[2] = f24;
        v70.f8C = 6.0f;
        v70.i84 = 0x830000;
        v70.m80 = m;
        v70.i90 = 1;
        func_L00_001FF500(&v70, &v70, f24);
        v70.h8A = *(unsigned short *)(m + 0xA6);
        v70.b88 = 3;
        v70.q[3] = 5627.9248f;
        v70.b89 = 2;
        w17 = m;
        if (func_001F9850(0xBB8) - 40 < *(int *)(d + 0x10)) w17 = *(char **)(g + 0x2080);
        ok = func_L00_001EFFF0_2b58d8(&v20, m10, 0, w17, (int)&v70);
        if (ok) {
            g40 = (char *)D_L00_00173F40;
            if (*(int *)(g40 + 0x18) == 0 && *(int *)(g40 + 0x1C) <= 0) goto L7C40;
            {
                if (*(int *)(g40 + 0x18) != 0) {
                    s30 = 1;
                    if (*(int *)(g40 + 0x18) != *(int *)(g + 0x2080)) s30 = 0;
                    *(unsigned char *)(m + 0xBC) = 2;
                    qcopy(m10, g40 + 0x20);
                } else {
                    *(unsigned char *)(m + 0xBC) = 1;
                    qcopy(m10, g40 + 0x20);
                }
                func_001F9BF0(&v60, g40 + 0x50, g40 + 0x60);
                g40 += 0x40;
                func_L00_001FF4B0(&v60, &v60, f24);
                func_L00_001FF610(&k30, &v50, g40);
                func_L00_001FF4B0(&k30, &k30, *(float *)&D_0015EE6C + *(float *)&D_0015EE6C);
                func_L00_001FF4B0(&k40, g40, f24);
                d2c = *(int *)(d + 0x2C);
                if (d2c != -1) {
                    ent = D_0013E633 + 0x1D + 0x70 * d2c;
                    if (*(char **)(ent + 0x88) == m && ent[0x74] != 0) func_L00_0028EBF0(d2c);
                }
                *(int *)(d + 0x2C) = -1;
            }
        } else if (*(int *)(d + 0x10) == 0) {
            goto end1;
        }
    }

    /* L7C40 */
L7C40:
    r1 = func_001F9850(0xBB8);
    r2 = func_001F9850(0x3C);
    if (*(int *)(d + 0x10) < r1 - r2) {
        pad = D_0013A5E0 + 0x2460;
        if (*(int *)(pad + 0x1A4) & 0x20) {
            *(unsigned char *)(m + 0xBC) = 1;
            d2c = *(int *)(d + 0x2C);
            if (d2c != -1) {
                ent = D_0013E633 + 0x1D + 0x70 * d2c;
                if (*(char **)(ent + 0x88) == m && ent[0x74] != 0) func_L00_0028EBF0(d2c);
            }
            *(int *)(d + 0x2C) = -1;
        }
    }

    /* L7CC8 */
    if (*(unsigned char *)(m + 0xBC) == 0) goto tail;
    if (!s30) {
        float f20x = 4.0f;
        float f21x = 1.0f;
        func_L00_0025F4A8(m, &k30, 0, 0.0f, 0.0f, 10, 3, 16, 4.0f, 2.0f, 0.0f, 1.0f, 0, 20.0f, 1, 1, 1, -1);
        rr = func_L00_001F2BE8_r(m10, f20x, 16, m, 0);
        qcopy(&vA0, m10);
        func_L00_0025BA50(m, &vA0, D_L00_00178000, rr, 0, 0x830000, 3, 2, 6.0f, f21x, f21x);
    }

    /* L7DA0 */
    *(unsigned short *)(m + 0x34) = *(unsigned short *)(m + 0x34) | 1;
    f1 = D_0015EE60 * 0.019999999552965164f;
    f0 = *(float *)(d + 0x18) * 0.009999999776482582f;
    *(float *)(d + 0x4) = f1;
    *(float *)(d + 0x18) = f0;
    r1 = func_001F9850(0xBB8);
    r2 = func_001F9850(0x1E);
    if (r1 - r2 < *(int *)(d + 0x10)) {
        *(int *)(d + 0x10) = -func_001F9850(100);
    } else {
        *(int *)(d + 0x10) = -1;
    }
    qcopy(&vA0, m10);
    k = 4;
    do {
        qcopy(m10, &vA0);
        func_L00_00260958((float *)m10, 1.5f);
        func_L00_002B6FF0(m, 1);
        qcopy(m10, &vA0);
        k--;
    } while (k >= 0);
    *(int *)&v50 = 0;
    *(unsigned char *)(m + 0xBC) = 0;

tail:
    if (*(char **)(d + 0x14) != 0) func_L00_002ECAF8(*(char **)(d + 0x14), m);
    return;

end1:
    func_L00_002B6E10(m, d);
    return;
}
