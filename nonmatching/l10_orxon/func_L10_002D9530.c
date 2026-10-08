/* NON_MATCHING func_L10_002D9530 -- src/overlays/l10_orxon/vendor_00296BD8.c
 * Best so far: BYTES 36/1108 (96.8% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Orxon moby step, 1108 bytes: copies a 16-byte vector into a local, gates on a short at c+0x14 and func_L00_001
 */
extern char D_L10_00174340[];
extern char D_L10_00174380[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C_x __asm__("D_0015EE6C") MACRO_ADDR;
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_001FF610(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern float func_001F9C78(void *a, void *b);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern float func_001F9B50(float);
extern float func_L00_001FF860(float, float);
extern float func_L00_002004C0(float, float, float);
extern float func_00214358(void *, int, float);
extern float func_001F9CB8(void *a);
extern void func_001F9BC0(float *);
extern int func_0022ED80(int, int, int);

// Orxon moby step: pulls the moby toward its target and returns a state code 0..3 (func_L10_002D9530).
int func_L10_002D9530(char *m, char *c, float *a2) {
    float v0[4] __attribute__((aligned(16)));
    float v10[4] __attribute__((aligned(16)));
    float v20[4] __attribute__((aligned(16)));
    float v30[4] __attribute__((aligned(16)));
    float v40[4] __attribute__((aligned(16)));
    char *g;
    int w6, ok;
    float p, q, r, t, u;

    float one = 1.0f;
    float k;

    *(u128 *)v10 = 0;
    qcopy(v0, a2);
    v10[2] = one;
    if (*(short *)(c + 0x14) == 0) {
      if (func_L00_001EFFF0(v0, m + 0x10, 0x10, (int)m, 0)) {
        g = D_L10_00174340;
        w6 = *(int *)(g + 0x18);
        if (w6 != 0) {
            func_001F9BF0(g + 0x40, m + 0x10, (void *)(w6 + 0x10));
            qcopy(m + 0x10, g + 0x20);
            func_L00_001FF4B0(v20, g + 0x40, D_0015EE70 * 9.7f);
            func_001F9BD8(m + 0x10, m + 0x10, v20);
            func_L00_001FF610(c, c, g + 0x40);
            func_001F9C30(c, c, 0.35f);
            func_L00_001FF4B0(v20, g + 0x40, one);
            func_001F9C78(v20, v10);
            qcopy(v30, g + 0x40);
    k = 0.052359879f;
    p = func_001F9F90(*(float *)(m + 0x48));
    q = func_001F9FA8(*(float *)(m + 0x48));
    v40[0] = v30[0] * p + v30[1] * q;
    k = 0.052359879f;
    p = func_001F9F90(*(float *)(m + 0x48));
    q = func_001F9FA8(*(float *)(m + 0x48));
    v40[2] = v30[2];
    v40[1] = v30[1] * p - v30[0] * q;
    r = func_001F9B50(v40[0] * v40[0] + v40[2] * v40[2]);
    t = func_L00_001FF860(r, v40[1]);
    *(float *)(m + 0x40) = func_L00_002004C0(*(float *)(m + 0x40), -t, k);
    u = func_L00_001FF860(v40[2], v40[0]);
    *(float *)(m + 0x44) = func_L00_002004C0(*(float *)(m + 0x44), u, k);
    func_0022ED80(1, 0, (int)m);
            return 1;
        }
        if (*(int *)(g + 0x1C) > 0) {
            qcopy(m + 0x10, g + 0x20);
            func_L00_001FF4B0(v20, g + 0x40, D_0015EE70 * 9.7f);
            func_001F9BD8(m + 0x10, m + 0x10, v20);
            func_L00_001FF610(c, c, g + 0x40);
            func_001F9C30(c, c, 0.5f);
            func_L00_001FF4B0(v20, g + 0x40, one);
            if (0.707f < func_001F9C78(v20, v10)) {
                r = func_00214358(m + 0x10, 0, 0.5f);
                if (*(float *)(m + 0x18) < r) *(float *)(m + 0x18) = r;
                if (*(float *)(c + 0x8) < 0.0f) *(float *)(c + 0x8) = *(float *)(c + 0x8) * -0.4f;
                if (func_001F9CB8(c) < D_0015EE6C_x) {
                    func_001F9BC0((float *)c);
                    return 3;
                }
            }
            qcopy(v30, D_L10_00174380);
    k = 0.052359879f;
    p = func_001F9F90(*(float *)(m + 0x48));
    q = func_001F9FA8(*(float *)(m + 0x48));
    v40[0] = v30[0] * p + v30[1] * q;
    k = 0.052359879f;
    p = func_001F9F90(*(float *)(m + 0x48));
    q = func_001F9FA8(*(float *)(m + 0x48));
    v40[2] = v30[2];
    v40[1] = v30[1] * p - v30[0] * q;
    r = func_001F9B50(v40[0] * v40[0] + v40[2] * v40[2]);
    t = func_L00_001FF860(r, v40[1]);
    *(float *)(m + 0x40) = func_L00_002004C0(*(float *)(m + 0x40), -t, k);
    u = func_L00_001FF860(v40[2], v40[0]);
    *(float *)(m + 0x44) = func_L00_002004C0(*(float *)(m + 0x44), u, k);
    func_0022ED80(1, 0, (int)m);
            return 2;
        }
      }
    }
    return 0;
}
