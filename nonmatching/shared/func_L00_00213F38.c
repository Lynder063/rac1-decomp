/* NON_MATCHING func_L00_00213F38 -- src/overlays/shared/help_0020CDF0.c
 * Best so far: SIZE ours 1380 / retail 1384, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Shared level-update pass over the block at D_0013E633 + 0xE1D: an aim step chosen by the state at 0x2084 (0x22
 *   Differences left: the prologue (retail keeps X = G - 0x80 in a saved register and reuses the lui value of D_00
 *   Unblock: a way to force retail's single lui for the D_0013E633 block with X and G as locals, and a zero consta
 */
extern void func_L00_00234800(int, void *, void *);
extern float func_L00_00234250(float *v);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_L00_002342F8(float *);
extern void func_L00_002343A0(float *, float *, float);
extern float func_001F9CE8(void *);
extern void func_L00_001FF500(float *, float *, float);
extern float func_001F9CB8(void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BC0(void *);
extern void func_001F9BF0(float *, float *, float *);
extern void func_L00_00213E60(void);
extern void func_L00_00212E70(void);
extern void func_L00_002136A8(void);
extern float func_001F9C78(void *, void *);
extern void func_L00_00234150(float *, float *);
extern void func_L00_00234420(float *, float *, float);
extern float func_L00_00213A08_q(void *) __asm__("func_L00_00213A08");
extern void func_001F9C30(void *, void *, float);
extern float D_0015EE6C MACRO_ADDR;
extern char D_0013E633[];

// Level-shared update: runs the aim and ease passes over the state block at D_0013E633 + 0xE1D.
void func_L00_00213F38(void) {
    char *H;
    char *X = D_0013E633 + 0xE1D;
    char *W;
    char *T;
    float tmp[4];
    float v[4];
    float w[4];
    float f0;
    float f1;
    float f2;
    float f12;
    int c;
    qcopy(tmp, (D_0013E633 + 0xE9D));
    func_L00_00234800(*(int *)(X + 0x4F8), (D_0013E633 + 0xE9D) + 0x70, (D_0013E633 + 0xE9D) + 0x10);
    c = *(int *)(X + 0x2084);
    if (c == 0x22 || c == 0x14) {
        if (*(int *)(X + 0x1CC) == 0) {
            f0 = func_L00_00234250((float *)((D_0013E633 + 0xE9D) + 0x60));
            f2 = *(float *)(X + 0x234);
            f1 = 0.0199999996f;
            f12 = f2 - f1;
            if (f12 < f0) func_L00_001FF4B0((D_0013E633 + 0xE9D) + 0x60, (D_0013E633 + 0xE9D) + 0x60, f12);
        }
        H = (D_0013E633 + 0xEFD);
        f0 = func_L00_002342F8((float *)H);
        f1 = *(float *)(H + 0x1FC);
        f12 = -f1;
        if (f0 < f12) {
            f0 = 0.0f;
            if (f0 < f12) f12 = f0;
            func_L00_002343A0((float *)H, (float *)H, f12);
        }
    } else if (c == 0xF) {
        if (*(int *)(X + 0x1CC) == 0) {
            f0 = func_001F9CE8((D_0013E633 + 0xE9D) + 0x60);
            f2 = *(float *)(X + 0x234);
            f1 = 0.0199999996f;
            f12 = f2 - f1;
            if (f12 < f0) func_L00_001FF500((float *)((D_0013E633 + 0xE9D) + 0x60), (float *)((D_0013E633 + 0xE9D) + 0x60), f12);
        }
    } else if (c != 0xD && c != 0xE) {
        if (*(int *)(X + 0x1CC) == 0) {
            f0 = func_001F9CB8((D_0013E633 + 0xE9D) + 0x60);
            f2 = *(float *)(X + 0x234);
            f1 = 0.0199999996f;
            f12 = f2 - f1;
            if (f12 < f0) func_L00_001FF4B0((D_0013E633 + 0xE9D) + 0x60, (D_0013E633 + 0xE9D) + 0x60, f12);
        }
    }
    func_001F9BD8((D_0013E633 + 0xE9D), (D_0013E633 + 0xE9D), (D_0013E633 + 0xE9D) + 0x60);
    func_001F9BD8((D_0013E633 + 0xE9D), (D_0013E633 + 0xE9D), (D_0013E633 + 0xE9D) + 0x8A0);
    func_001F9BC0((D_0013E633 + 0xE9D) + 0x8A0);
    *(int *)(X + 0x23C) = 0;
    *(char *)(X + 0x257) = 0;
    f0 = func_001F9CB8((D_0013E633 + 0xE9D) + 0x70);
    f1 = 9.99999975e-05f;
    if (f0 <= f1) {
        func_L00_00213E60();
        func_L00_00212E70();
        func_001F9BF0((float *)((D_0013E633 + 0xE9D) + 0x80), (float *)(D_0013E633 + 0xE9D), (float *)tmp);
        func_L00_002136A8();
    } else {
        func_L00_00212E70();
    }
    func_001F9BF0((float *)(D_0013E633 + 0xF2D), (float *)(D_0013E633 + 0xE9D), (float *)tmp);
    W = (D_0013E633 + 0xF2D) + 0x20;
    qcopy(W, (D_0013E633 + 0xF2D));
    T = (D_0013E633 + 0xF2D) + 0x10;
    qcopy(T, (D_0013E633 + 0xF2D));
    func_L00_001FF4B0((D_0013E633 + 0xF2D), (D_0013E633 + 0xF2D), 1.0f);
    {
        float r = func_001F9C78((D_0013E633 + 0xF2D), (D_0013E633 + 0xE9D) + 0x60);
        if (r < 0.0f) r = 0.0f;
        func_L00_001FF4B0((D_0013E633 + 0xF2D), (D_0013E633 + 0xE9D) + 0x60, r);
    }
    qcopy(v, ((D_0013E633 + 0xE9D) + 0x60));
    func_L00_00234150((float *)v, (float *)v);
    func_L00_00234150((float *)W, (float *)W);
    func_L00_001FF4B0(W, W, 1.0f);
    {
        float r = func_001F9C78(W, v);
        if (r < 0.0f) r = 0.0f;
        func_L00_001FF4B0(W, v, r);
    }
    qcopy(w, ((D_0013E633 + 0xE9D) + 0x60));
    func_L00_00234420((float *)w, (float *)w, 0.0f);
    func_L00_00234420((float *)T, (float *)T, 0.0f);
    func_L00_001FF4B0(T, T, 1.0f);
    {
        float r = func_001F9C78(T, w);
        if (r < 0.0f) r = 0.0f;
        func_L00_001FF4B0(T, w, r);
    }
    H = X;
    f0 = func_001F9CB8((D_0013E633 + 0xF2D));
    *(float *)(H + 0x160) = f0;
    func_001F9CE8((D_0013E633 + 0xF2D));
    *(float *)(H + 0x164) = f0;
    qcopy(v, (D_0013E633 + 0xF2D));
    f0 = func_L00_00213A08_q(v);
    if (f0 < 0.0f) f0 = 0.0f;
    *(float *)(H + 0x168) = f0;
    qcopy(v, (D_0013E633 + 0xE9D));
    f0 = func_001F9CB8((D_0013E633 + 0xF2D) - 0x20);
    if (9.99999975e-05f < f0) {
        func_001F9BD8((D_0013E633 + 0xE9D), (D_0013E633 + 0xE9D), (D_0013E633 + 0xF2D) - 0x20);
        func_001F9BC0((D_0013E633 + 0xF2D) - 0x20);
        f2 = *(float *)(X + 0xFC);
        func_L00_00213E60();
        *(float *)(X + 0xFC) = f2;
        func_L00_00212E70();
        func_001F9BF0((float *)((D_0013E633 + 0xF2D) - 0x10), (float *)(D_0013E633 + 0xE9D), (float *)tmp);
        func_L00_002136A8();
    }
    func_001F9BF0((float *)((D_0013E633 + 0xF2D) + 0x30), (float *)(D_0013E633 + 0xE9D), (float *)v);
    f0 = *(float *)(X + 0xFC);
    *(float *)(X + 0xFC) = 0.0f;
    *(float *)(X + 0x14C) = f0;
    func_001F9BF0((float *)((D_0013E633 + 0xF2D) - 0x10), (float *)(D_0013E633 + 0xE9D), (float *)tmp);
    *(float *)(X + 0x16C) = 0.0f;
    f1 = *(float *)(X + 0x164);
    f0 = 0.00400000019f;
    if (f0 < f1) {
        f0 = *(float *)(X + 0x108);
        f2 = 0.5f;
        f0 = f0 / f1;
        if (f2 < f0) {
            *(float *)(X + 0x16C) = 0.5f;
        } else {
            *(float *)(X + 0x16C) = f0;
            if (f0 < -0.5f) *(float *)(X + 0x16C) = -0.5f;
        }
    }
    f0 = D_0015EE6C * 52.0f;
    f1 = *(float *)(X + 0x160);
    if (f0 < f1) {
        func_001F9C30((void *)(X + 0x100), (void *)(X + 0x100), f0 / f1);
        *(float *)(X + 0x160) = D_0015EE6C * 52.0f;
    }
}
