/* NON_MATCHING func_L00_002C88A8 -- src/overlays/shared/vendor_002C12B0.c
 * Best so far: SIZE ours 1300 / retail 1296, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Camera step: aims the view at the moby's target from the spline/offset vectors, then calls func_L00_002C8680 (
 *   Still differs: register choice (ours keeps the int argument in $fp and the camera pointer in $s7; retail keeps
 */
extern char D_L00_00166D80[];
extern char D_L00_00166EC0[];
extern int D_L00_00173F40[];
extern float D_0015EE70_f __asm__("D_0015EE70") MACRO_ADDR;
extern void func_001FA480(void *, void *);
extern void func_001FA4A0(void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA748(float, float);
extern float func_001FA790(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern float func_001F9B50(float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9EE8(void *, void *, void *);
extern float func_001F9CE8(void *);
extern void func_00215C00(void *, float, float, float);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
void func_L00_002C8680(float *pos, float *tgt, float *out, float speed, float unused, float range);

// Per-frame camera step for a moby: aims the view at its target and steps the offset (func_L00_002C88A8).
void func_L00_002C88A8(int a0, char *m, float *a2) {
    float v0[4] __attribute__((aligned(16)));
    float *q0 = v0;
    float v10[12] __attribute__((aligned(16)));
    float v40[4] __attribute__((aligned(16)));
    float w50[12] __attribute__((aligned(16)));
    float v80[4] __attribute__((aligned(16)));
    float v90[4] __attribute__((aligned(16)));
    float va0[4] __attribute__((aligned(16)));
    float vb0[4] __attribute__((aligned(16)));
    float vc0[4] __attribute__((aligned(16)));
    char *P, *base, *s18, *cur, *p16;
    char *cam = D_L00_00166D80;
    float *out;
    float f20, f21, f22, f23, s, w, t, y, a, b;
    int flag, ret;

    qcopy(v0, a2);
    func_001FA480(v10, cam);
    func_001FA4A0(v40, v10);
    P = *(char **)(m + 0x50);
    if (P != 0) {
        out = *(float **)(P + 0x78);
        *(u128 *)v80 = 0;
        v80[0] = 1.0f;
        base = D_0013E633 + 0x145D;
        func_001F9EC0(v80, v80, base);
        s18 = base - 0x640;
        f20 = -0.361968011f;
        q0[0] = func_001F9F90(func_001FA748(f20, func_L00_001FF860(*(float *)(s18 + 0x670), *(float *)(s18 + 0x674)))) * 0.859039009f;
        q0[1] = func_001F9FA8(func_001FA748(f20, func_L00_001FF860(*(float *)(s18 + 0x670), *(float *)(s18 + 0x674)))) * 0.859039009f;
        q0[2] = 0.0f;
        func_001F9BD8(q0, q0, base - 0x5C0);
        q0[2] = q0[2] + 0.390819997f;
        func_L00_001FF860(v80[0], v80[1]);
        cur = D_0013A5E0 + 0x2460;
        s = (*(int *)(cur + 0x1A0) & 5) ? 3.5f : 2.5f;
        func_001F9C30(v90, v80, s);
        func_001F9BD8(v90, v90, q0);
        if ((*(int *)(cur + 0x1A0) & 5) != 0 && *(unsigned char *)(s18 + 0x20AC) == 0) {
            *(u128 *)va0 = 0;
            va0[2] = 1.0f;
            func_001F9EE8(va0, va0, v40);
            flag = 0;
            func_L00_001FF860(va0[0], va0[1]);
            p16 = *(char **)(s18 + 0x2080);
            func_001FA790(*(float *)(p16 + 0x48), func_L00_001FF860(va0[0], va0[1]));
            f22 = func_L00_001FF860(va0[0], va0[1]);
            w = func_L00_001FF860(func_001F9CE8(va0), va0[2]);
            if (0.593411922f < w) w = 0.593411922f;
            if (w < -1.39626336f) w = -1.39626336f;
            s = (*(int *)(cur + 0x1A0) & 5) ? 3.5f : 2.5f;
            func_00215C00(va0, s, f22, w);
            qcopy(vb0, cam + 0x140);
            y = func_001F9CE8(va0);
            f20 = va0[2] / (y == 0.0f ? 0.00999999978f : y);
            s = (*(int *)(cur + 0x1A0) & 5) ? 3.5f : 2.5f;
            t = func_001F9B50(((D_0015EE70_f * 9.0f) * s) * 0.5f);
            f21 = (((t + t) * t) * (1.0f - f20)) / (D_0015EE70_f * 9.0f);
            if (0.0f < f21) {
                f23 = f20 * f21;
                va0[0] = func_001F9F90(f22) * f21;
                va0[1] = func_001F9FA8(f22) * f21;
                va0[2] = f23;
                func_001F9BD8(vc0, D_L00_00166EC0, va0);
                ret = func_L00_001EFFF0(D_L00_00166EC0, vc0, 2, a0, 0);
                if (ret) {
                    if (D_L00_00173F40[6] != *(int *)(D_0013E633 + 0x2E9D)) {
                        flag = 1;
                        qcopy(v90, &D_L00_00173F40[8]);
                        f22 = func_L00_001FF860(v90[0] - q0[0], v90[1] - q0[1]);
                    }
                }
                if (!flag) {
                    f20 = 5.0f;
                    v90[0] = func_001F9F90(f22) * f21 * f20;
                    v90[1] = func_001F9FA8(f22) * f21 * f20;
                    v90[2] = f23 * f20;
                    func_001F9BD8(v90, v90, D_L00_00166EC0);
                }
            } else {
                *(int *)(D_0013E633 + 0x186D) = 0;
            }
        } else {
            *(int *)(D_0013E633 + 0x186D) = 0;
        }
        s = (*(int *)(cur + 0x1A0) & 5) ? 3.5f : 2.5f;
        func_L00_002C8680(q0, v90, out, D_0015EE70_f * 9.0f, 0.00000999999975f, s);
    }
}
