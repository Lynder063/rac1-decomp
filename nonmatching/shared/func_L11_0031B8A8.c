/* NON_MATCHING func_L11_0031B8A8 -- src/overlays/shared/vendor_002C99E0.c
 * Best so far: SIZE ours 800 / retail 796, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped at 5 of 8 runs: a fresh 16-byte copy-and-project routine, 788 bytes against retail 796 (p3, the best).
 */
extern int *D_L11_001B11B0[];
extern void func_001F9BC0(float *);
extern float func_L00_001FF860(float, float);
extern float func_001F9D48(void *, void *);
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern void func_001F9C08(void *, void *, void *, float);
extern void func_001FA218(void *, void *);
extern float func_001F9FA8(float);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001F9F90(float);
extern float func_001F9D10(void *, void *);
extern float func_00214D88(float *, float *, float, float, float, float);
extern void func_001F9BF0(void *, void *, void *);
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;

/* Builds moby's 0x40 vector from three path points, then nudges moby and its 0x10 position. */
void func_L11_0031B8A8(char *moby) {
    char *data = *(char **)(moby + 0x78);
    char *t = (char *)D_L11_001B11B0[*(int *)(data + 0x60)];
    int i = *(int *)(data + 0x64);
    int n;
    char *m = moby;
    float F[4], H[4], H2[4], A[4], B[4], C[4], E[4], D[4], G[4], Z[4];
    float a, b, r, r4, r5, r6, r7, r8, r9, r10, r11;

    qcopy(A, t + i * 16 + 0x10);
    n = *(int *)t;
    qcopy(B, t + ((i + 1) % n) * 16 + 0x10);
    qcopy(C, t + ((i + 2) % n) * 16 + 0x10);
    func_001F9BC0(D);
    a = func_L00_001FF860(A[0] - B[0], A[1] - B[1]);
    b = func_L00_001FF860(B[0] - C[0], B[1] - C[1]);
    r4 = func_001F9D48(A, B);
    r5 = func_L00_001FF860(r4, B[2] - A[2]);
    r6 = func_001F9D48(B, C);
    r7 = func_L00_001FF860(r6, C[2] - B[2]);
    r8 = func_001FA790(r7, r5);
    r9 = func_001FA748(r8 * *(float *)(data + 0x68), r5);
    D[1] = r9;
    r10 = func_001FA790(b, a);
    r11 = func_001FA748(r10 * *(float *)(data + 0x68), a);
    D[2] = r11;
    qcopy(moby + 0x40, D);
    if (*(float *)(data + 0x6C) > 0.0f) {
        *(float *)(moby + 0x48) = func_001FA748(*(float *)(moby + 0x48), 3.14159274f);
        *(float *)(moby + 0x44) = -*(float *)(moby + 0x44);
    }
    func_001F9C08(E, A, B, *(float *)(data + 0x68));
    m += 0x10;
    func_001FA218(F, D);
    r = func_001F9FA8(*(float *)(data + 0x70));
    func_L00_001FF4B0(G, H, *(float *)(data + 0x78) * r);
    func_001F9BD8(E, E, G);
    r = func_001F9F90(*(float *)(data + 0x70));
    func_L00_001FF4B0(G, H2, *(float *)(data + 0x78) * r);
    func_001F9BD8(E, E, G);
    Z[0] = 0.0f;
    r = func_001F9D10(m, E);
    func_00214D88(Z, (float *)(data + 0x80), r, D_0015EE70 * 10.0f, D_0015EE70 * 10.0f, D_0015EE6C * 20.0f);
    func_001F9BF0(G, E, m);
    func_L00_001FF4B0(G, G, *(float *)(data + 0x80));
    func_001F9BD8(m, m, G);
}
