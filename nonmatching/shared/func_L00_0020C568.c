/* NON_MATCHING func_L00_0020C568 -- src/overlays/shared/help_00203E98.c
 * Best so far: SIZE ours 2128 / retail 2180, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Mine-glove aim update: a loop of four steps that calls the 0x1EFFF0 mover, then a 5-step pass and a second pas
 *   Stopped at run 2: the register set for f20..f29 is the next wall; the early 0x208C/0x2084 test forms are equiv
 */
extern int func_001F9850(int);
extern void func_L00_0025A540(void *a, void *b, void *c, int d, float f);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern int func_L00_001F3958(void);
extern float func_001F9CE8(void *);
extern float func_L00_001FF860(float, float);
extern int func_L00_0025D390(char *);
extern int func_L00_001F1D20(float, float, void *, int, int);
extern float func_001FA748(float, float);
extern float func_001FA850(float, float);
extern float D_0015EE6C MACRO_ADDR;

/* the mine glove's aim and shot update: steers the target points and fires when in range */
void func_L00_0020C568(void) {
    char *X;
    char *Dl;
    char *p16;
    char *ret1;
    int ret2;
    float v0[4], v10[4], v20[4], v30[4], v40[4], v50[4], v60[4], v70[4];
    float f20, f21, f22, f23, f24, f25, f26, f27, f28, f29;
    float t, a1, a2, len;
    int f5, r17, r22, r30, r16, r2, r7;

    X = (char *)D_0013E633 + 0xE1D;
    if (*(short *)(X + 0x308) == 2) return;
    if (*(short *)(X + 0x1B0) != 0) return;
    *(int *)(X + 0x4E8) = 0;
    f5 = 0;
    if (*(unsigned char *)(X + 0x20A4) == 0) {
        int done = 0;
        if (*(int *)(X + 0x208C) == 4) {
            if (*(short *)(X + 0x41E) != 0) {
                f5 = 1;
                done = 1;
            } else if (*(float *)(X + 0xE8) < D_0015EE6C * 3.5f) {
                f5 = 1;
                done = 1;
            }
        }
        if (!done) {
            if (*(int *)(X + 0x208C) == 2) f5 = 1;
            else if (*(int *)(X + 0x2084) == 8) f5 = 1;
            else if (*(int *)(X + 0x2084) == 0x1A) f5 = 1;
            else if (*(int *)(X + 0x2084) == 0x1B) f5 = 1;
        }
        if (*(int *)(X + 0x2084) == 0xE && *(float *)(X + 0xAA8) < 37.0f) f5 = 0;
    }
    if (*(unsigned char *)(X + 0x20A4) == 1) {
        if (*(int *)(X + 0x208C) == 4 && (*(short *)(X + 0x41E) != 0 || *(float *)(X + 0xE8) < D_0015EE6C * 2.5f)) {
            f5 = 1;
        } else if (*(int *)(X + 0x208C) == 2 || *(int *)(X + 0x2084) == 0x4F || *(int *)(X + 0x2084) == 0x4D || *(int *)(X + 0x2084) == 0x4E) {
            f5 = 1;
        }
    }
    if (!f5) return;

    f26 = -0.7f;
    f22 = 0.3f;
    f24 = 1.5f;
    f23 = 1.15f;
    f29 = -1.43f;
    f28 = 1.8f;
    f27 = 0.45f;
    if (*(unsigned char *)(X + 0x20A4) == 1) {
        f23 = 0.7f;
        f26 = -0.4f;
        f22 = 0.25f;
        f28 = f23;
        f24 = 0.725f;
        f29 = -0.71f;
        f27 = 0.32f;
    }
    f20 = (*(int *)(X + 0x208C) == 4) ? *(float *)(X + 0x4A0) : *(float *)(X + 0x940);
    r7 = func_001F9850(2);
    f21 = 0.25f;
    f25 = 0.15f;
    func_L00_0025A540(v0, X + 0x80, X + 0x110, r7, f20);
    r22 = 0;
    r17 = 0;
    r30 = 12;
    v0[0] = v0[0] + func_001F9F90(*(float *)(X + 0x98)) * *(float *)(X + 0x234);
    v0[1] = v0[1] + func_001F9FA8(*(float *)(X + 0x98)) * *(float *)(X + 0x234);

    for (;;) {
        v0[0] = v0[0] + func_001F9F90(*(float *)(X + 0x98)) * f22 * f21;
        v0[1] = v0[1] + func_001F9FA8(*(float *)(X + 0x98)) * f22 * f21;
        qcopy(v10, v0);
        v10[2] = v10[2] + (f24 + f25);
        qcopy(v20, v0);
        v20[2] = v20[2] + f23;
        r2 = func_L00_001EFFF0(v10, v20, 4, *(int *)(X + 0x2080), 0);
        if (r2 != 0) {
            r2 = func_L00_001F3958();
            if (r2 != 9 && r2 != r30 && r2 != 0) {
                len = func_001F9CE8(((char *)&D_L00_00173F40) + 0x40);
                t = func_L00_001FF860(*(float *)(((char *)&D_L00_00173F40) + 0x48), len);
                if (t < 0.3490658f) r22 = 1;
            }
        }
        if (r22) break;
        r17++;
        if (!(r17 < 4)) return;
    }

    Dl = ((char *)&D_L00_00173F40);
    if (*(int *)(Dl + 0x18) != 0) {
        r17 = 0;
        ret1 = (char *)func_L00_0025D390(*(char **)(Dl + 0x18));
        p16 = ret1;
        ret2 = func_L00_0025D390(*(char **)(Dl + 0x18));
        if (p16 != 0 && (*(unsigned short *)(p16 + 0x1E) & 1)) {
            r17 = 1;
        } else if (ret2 != 0) {
            r17 = *(int *)(ret2 + 0x3C) & 1;
        }
        if (r17 == 0) return;
    }
    *(int *)(X + 0x4F8) = *(int *)(Dl + 0x18);
    if (*(float *)(X + 0x88) + f24 < *(float *)(Dl + 0x28)) return;
    qcopy(v10, Dl + 0x20);
    qcopy(v20, Dl + 0x20);
    v20[2] = v20[2] + 0.05f;
    qcopy(v30, X + 0x80);
    v30[2] = v20[2];
    if (func_L00_001EFFF0(v30, v20, 4, *(int *)(X + 0x2080), 0) != 0) return;
    qcopy(v40, Dl + 0x20);
    v40[2] = v40[2] + 0.6f;
    if (func_L00_001F1D20(0.45f, 0.6f, v40, 4, *(int *)(X + 0x2080))) {
        *(int *)(X + 0x4F4) = *(int *)(X + 0x4F4) | 1;
    } else {
        *(int *)(X + 0x4F4) = *(int *)(X + 0x4F4) & 0xFFFFFFFE;
    }

    f21 = func_L00_001FF860(v10[0] - *(float *)(X + 0x80), v10[1] - *(float *)(X + 0x84));
    *(float *)(X + 0x4E0) = v10[2];
    if (v10[2] - *(float *)(X + 0x2D8) < f28) return;

    f23 = 5.0f;
    f22 = 1.0f;
    r30 = 0;
    for (r16 = 0; r16 < 5; r16++) {
        qcopy(v50, X + 0x80);
        qcopy(v60, v10);
        f20 = *(float *)(X + 0x234);
        f20 = f20 + f20;
        v60[0] = v60[0] + func_001F9F90(f21) * f20;
        v60[1] = v60[1] + func_001F9FA8(f21) * f20;
        v50[2] = v60[2] + f26 * (f22 - (float)r16 / f23);
        v60[2] = v50[2];
        r2 = func_L00_001EFFF0(v50, v60, 2, 0, 0);
        if (r2 != 0) goto CAA4;
    }

CC84:
    if (r30 == 0) return;
    a1 = func_001FA748(*(float *)(X + 0x4E4), 3.1415927f);
    a2 = func_001FA850(*(float *)(X + 0x98), a1);
    if (!(a2 < 1.1344640f)) return;
    f23 = 2.4f;
    f22 = 0.03f;
    f20 = 0.0f;
    f21 = 0.5f;
    p16 = (char *)v60;
    for (;;) {
        qcopy(v60, v10);
        v60[2] = v10[2];
        v60[0] = v60[0] + func_001F9F90(*(float *)(X + 0x4E4)) * f20;
        v60[1] = v60[1] + func_001F9FA8(*(float *)(X + 0x4E4)) * f20;
        qcopy(v50, v60);
        v60[2] = v60[2] + f21;
        v50[2] = v50[2] - f21;
        r2 = func_L00_001EFFF0(v60, v50, 4, *(int *)(X + 0x2080), 0);
        if (r2 == 0) goto CAC4;
        f20 = f20 + f22;
        if (!(f20 < f23)) return;
    }

CAA4:
    r30 = 1;
    *(float *)(X + 0x4E4) = func_L00_001FF860(*(float *)(Dl + 0x40), *(float *)(Dl + 0x44));
    goto CC84;

CAC4:
    qcopy(v70, v60);
    f20 = -(f22 * f21);
    v70[2] = v10[2];
    v70[0] = v70[0] + func_001F9F90(*(float *)(X + 0x4E4)) * f20;
    v70[1] = v70[1] + func_001F9FA8(*(float *)(X + 0x4E4)) * f20;
    qcopy(X + 0x4D0, v70);
    *(float *)(X + 0x4D0) = *(float *)(X + 0x4D0) + func_001F9F90(*(float *)(X + 0x4E4)) * f27;
    *(float *)(X + 0x4D4) = *(float *)(X + 0x4D4) + func_001F9FA8(*(float *)(X + 0x4E4)) * f27;
    *(int *)(X + 0x4E8) = 1;
    *(float *)(X + 0x4D8) = *(float *)(X + 0x4D8) + f29;
}
