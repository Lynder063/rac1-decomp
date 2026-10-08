/* NON_MATCHING func_L04_002C5560 -- src/overlays/l04_eudora/vendor_0029FCF0.c
 * Best so far: SIZE ours 976 / retail 980, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Lays out a sound emitter block from a span and a count: two gate-curve samples per step into a 0x20-byte block
 *   Left: the first call in the loop (retail 0x1F1C40, the L04 copy of func_001F9BF0 in config/overlays/functions.
 */
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern float func_001FA888(int);
extern void func_001F9BD8(void *, void *, void *);
extern float func_L00_00258C80(float lo, float hi);
extern float func_002140F8(float, float);
extern int func_L00_00258BC8(int, int);
extern char *func_L00_0026DEA0(void *, int, void *, int, float, float, float, float);
extern int func_002140B0(int);
extern int func_001F9850(int);
extern float func_00214158(void);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L00_0026DA50(void *, void *, int, int, int, int, float);
extern short D_L04_00161944;
extern short D_L04_0016194C;

/* Lays out a sound's emitter block from its span and count, samples the gate curves into it, and writes two table entries. */
void func_L04_002C5560(void *a0, void *a1, void *a2, int n, float fa, float fb) {
    float A[4], V10[4], V20[4];
    float *p20;
    float f20, f21, f22, f24, f25, f0v, fa2;
    int i, k22, v16, v20, k5, t, t2, cnt;
    char *v17, *v18, *p1;

    p1 = a1;
    cnt = n;
    fa2 = fa;
    func_001F9BF0(A, a2, p1);
    f20 = (float)cnt;
    func_001F9C30(A, A, 1.0f / f20);
    p20 = V20;
    f21 = fb - fa2;
    qzero(V20);
    f25 = f21 / f20;
    V20[3] = 1.0f;
    V20[2] = 0.01f;
    if (cnt <= 0) goto l57a8;
    f21 = 1.0f;
    f24 = 0.0f;
    f22 = 0.005f;
    i = 0;
l5638:
    func_001F9C30(V10, A, func_001FA888(i));
    func_001F9BD8(V10, p1, V10);
    V20[0] = func_L00_00258C80(f24, f22);
    V20[1] = func_L00_00258C80(f24, f22);
    V20[2] = func_002140F8(*(float *)&D_L04_00161944 * 0.1f, *(float *)&D_L04_00161944);
    k22 = func_L00_00258BC8(0x40, 0x70);
    v16 = func_L00_00258BC8(0x40, 0x7F);
    v20 = k22 << 24;
    v16 = v16 | ((v16 << 16) | (v16 << 8));
    f20 = func_002140F8(f21, 1.02f);
    k5 = func_L00_00258BC8(-2, 2);
    v17 = func_L00_0026DEA0(V10, k5, p20, v20 | v16, *(float *)&D_L04_0016194C, f21, f20, f25 + fa2 * 210000.0f);
    if (v17 == 0) goto l5798;
    v18 = v17 + 0x20;
    if (func_002140B0(2) == 0) goto l5774;
    v17[3] = 0x7E;
    v16 = func_L00_00258BC8(0x60, 0xE0);
    v16 = v16 | ((v16 << 16) | (v16 << 8));
    *(int *)(v17 + 4) = v20 | v16;
l5774:
    *(short *)(v17 + 0xA) = func_001F9850(0x5A);
    *(unsigned char *)(v18 + 0xA) = k22;
    *(int *)(v18 + 4) = 2;
    *(unsigned char *)(v18 + 0xB) = func_001F9850(0x5A);
l5798:
    i++;
    if (i < cnt) goto l5638;
l57a8:
    f0v = func_00214158();
    f20 = 0.05f;
    f22 = 0.01f;
    f0v = func_001F9F90(f0v) * f20;
    V20[0] = f0v;
    f0v = func_001F9FA8(func_00214158()) * f20;
    *(int *)&V20[2] = 0;
    V20[1] = f0v;
    f21 = 0.03f;
    V20[2] = func_002140F8(f22, f21);
    v16 = func_001F9850(10);
    k5 = func_001F9850(20);
    t = func_L00_00258BC8(v16, k5);
    func_L00_0026DA50(p1, p20, 0x4F007FFF, 0x1FFFFFFF, t, 1, 10000.0f);
    f0v = func_001F9F90(func_00214158()) * f20;
    V20[0] = f0v;
    f0v = func_001F9FA8(func_00214158()) * f20;
    *(int *)&V20[2] = 0;
    V20[1] = f0v;
    V20[2] = func_002140F8(f22, f21);
    v16 = func_001F9850(10);
    k5 = func_001F9850(20);
    t2 = func_L00_00258BC8(v16, k5);
    func_L00_0026DA50(a2, p20, 0x4F007FFF, 0x1FFFFFFF, t2, 1, 20000.0f);
}
