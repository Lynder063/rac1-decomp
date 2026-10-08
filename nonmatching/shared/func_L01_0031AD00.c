/* NON_MATCHING func_L01_0031AD00 -- src/overlays/shared/vendor_0031AD00.c
 * Best so far: BYTES 42/928 (95.5% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Sound instance box-volume update: builds three listener vectors, clamps them to +-1 on a failed test, then eit
 *   Left: the calls to func_001F9BD8 (retail 0x2210B8) and func_0022DA10 (retail 0x2A14E0) are L01's own copies of
 *   2026-10-08 gpt p5-p9: old p3 behavior wrong: retail retains return from func0022DA10, not input table pointer!
 */
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern float func_001F9CB8(void *a);
extern float func_001F9B88(float);
extern int func_0022DA10_v(void *, float, float, float) __asm__("func_0022DA10");
extern int func_001F9908(int *arg0);
extern int func_L00_0028F0B0(int, int, int, int);
extern s32 func_002140B0(s32);
extern int func_001F9850(int);
extern int func_L00_0028F210(int, int);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_0028EBF0(int);
extern char D_L01_001672C0[];
extern char *D_L01_0015F6D4 MACRO_ADDR;
extern char D_0013E633[];

/* Sets a sound instance's box volume from its listener distances, clamps the vectors, and updates its class table entry. */
void func_L01_0031AD00(char *m) {
    struct { float A[4],V10[4],B[4],C[4]; } w;
    char *P, *E, *Q, *base;
    float f21, f22, x, s, tf, t2;
    int r, v16, n, t, u, v;

    P = *(char **)(m + 0x8);
    s = *(float *)(m + 0xC);
    w.V10[2] = s;
    w.V10[0] = s;
    w.V10[1] = s;
    func_001F9BF0(w.A, D_L01_001672C0, m + 0x40);
    *(int *)&w.A[3] = 0;
    func_001F9EC0(w.B, w.A, m + 0x50);
    func_001F9EC0(w.C, w.V10, m + 0x50);
    f22 = func_001F9CB8(w.C);
    f21 = func_001F9CB8(w.B);
    if (!(f21 < f22)) goto b028;
    tf = func_001F9B88(w.B[0]);
    r = 0x10;
    x = w.B[0];
    if (!(tf <= 1.0f)) goto ae1c;
    tf = func_001F9B88(w.B[1]);
    x = w.B[0];
    if (!(tf <= 1.0f)) goto ae1c;
    tf = func_001F9B88(w.B[2]);
    if (!(tf <= 1.0f)) goto ae18;
    v16 = *(int *)(D_L01_0015F6D4 + (*(int *)P << 5) + 0xC);
    goto af04;
ae18:
    x = w.B[0];
ae1c:
    if (1.0f < x) {
        w.B[0] = 1.0f;
    } else if (x < -1.0f) {
        w.B[0] = -1.0f;
    }
    if (1.0f < w.B[1]) {
        w.B[1] = 1.0f;
    } else if (w.B[1] < -1.0f) {
        w.B[1] = -1.0f;
    }
    if (1.0f < w.B[2]) {
        w.B[2] = 1.0f;
    } else if (w.B[2] < -1.0f) {
        w.B[2] = -1.0f;
    }
    t2 = func_001F9CB8(w.B);
    base = D_L01_0015F6D4;
    v16 = func_0022DA10_v(base + (*(int *)P << 5), f21, t2, f22);
    goto af04;
af04:
    n = *(int *)(P + 0x10);
    Q = (char *)(D_0013E633 + 0x1D) + n * 0x70;
    E = D_L01_0015F6D4 + (*(int *)P << 5);
    if (*(unsigned char *)(E + 0x18)) r = 0x14;
    if (*(int *)(Q + 0x8C) != (int)m) goto af50;
    if (*(unsigned char *)(Q + 0x74) != 0) goto afcc;
af50:
    if (func_001F9908((int *)(P + 0xC)) == 0) goto afc0;
    v = func_L00_0028F0B0(*(int *)P, r, (int)m, v16);
    *(int *)(P + 0x10) = v;
    if (*(int *)(P + 0x8) <= 0) goto afc8;
    t = func_002140B0(*(int *)(P + 0x8) - *(int *)(P + 0x4));
    u = func_001F9850(*(int *)(P + 0x4) + t);
    *(int *)(P + 0xC) = (int)((float)u * 60.0f);
    goto afcc;
afc0:
    *(int *)(P + 0x10) = -1;
afc8:
    n = *(int *)(P + 0x10);
afcc:
    { int handle = *(int *)(P + 0x10);
    if (handle == -1) goto b074;
    func_L00_0028F210(handle, v16); }
    func_001F9EC0(w.A, w.B, m + 0x10);
    { void *pos = m + 0x40; func_001F9BD8(w.A, w.A, pos); }
    Q = (char *)(D_0013E633 + 0xAD) + *(int *)(P + 0x10) * 0x70;
    qcopy(Q, w.A);
    goto b074;
b028:
    {
        int k = *(int *)(P + 0x10);
        if (k == -1) goto b06c;
        Q = (char *)(D_0013E633 + 0x1D) + k * 0x70;
        if (*(int *)(Q + 0x8C) != (int)m) goto b06c;
        if (*(unsigned char *)(Q + 0x74) == 0) goto b06c;
        func_L00_0028EBF0(k);
    }
b06c:
    *(int *)(P + 0x10) = -1;
b074:
    return;
}
