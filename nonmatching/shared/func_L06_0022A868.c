/* NON_MATCHING func_L06_0022A868 -- src/overlays/shared/help_0021D6B8.c
 * Best so far: SIZE ours 944 / retail 956, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * Cannot land as written (#define in a candidate): rewrite that in plain C first.
 * What the last attempts found:
 *   func_L06_0022A868: per-frame camera pull-back (up to 8 steps) using func_L00_001F10E0 ray tests, then clamps t
 *   p3.c is structurally right (control flow, block order, all stores) but SIZE 944/956: retail holds the constant
 *   (one extra saved reg, frame 0xD0, mode in $30), while 2.95.3 here const-propagates it and re-emits `li $5,0xD2
 */
extern void func_001F9BC0(void *);
extern void func_L00_00235040(void);
extern void func_L00_00234090(float *dst, float *src, float dz);
extern void func_L00_00233D50(float *dst, float *src, float h);
extern void func_001F9BD8(void *, void *, void *);
extern int func_L00_001F10E0(float, void *, int, void *);
extern int func_L00_001F1D20(float, float, void *, int, void *);
extern int func_L00_001F34F0(float, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CB8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern float D_0015EE60 MACRO_ADDR;
extern char D_L06_001746F0[];
extern unsigned char D_0013E633[];

#define G(T, o) (*(T *)(g + (o)))

/* pulls the camera back along its path until clear, then clamps the remaining offset */
int func_L06_0022A868(int mode) {
    float v[4] __attribute__((aligned(16)));
    float w[4] __attribute__((aligned(16)));
    float u[4] __attribute__((aligned(16)));
    char *g = (char *)D_0013E633 + 0xE1D;
    char *t;
    int i;
    float d;
    int r;
    int k;

    if (G(int, 0x1CC) != 0) return 1;
    qcopy(v, g + 0x80);
    func_001F9BC0(w);
    if (G(short, 0x22DA) != 0) {
        func_L00_00235040();
        G(short, 0x22DA) = 0;
    }
    if (G(int, 0x208C) != 0x11) {
        unsigned char c = G(unsigned char, 0x20B3);
        if (c == 0 && G(short, 0x1F8) == 0) {
            w[2] = G(float, 0x224);
        } else if (c == 1 || G(short, 0x1F8) != 0) {
            func_L00_00234090(w, w, 0.6f);
        } else {
            func_L00_00233D50(w, w, -G(float, 0x224));
        }
    }
    t = D_0013E633 + 0xE9D;
    func_001F9BD8(t, t, w);
    k = 0xD24;
    for (i = 0; i < 8; i++) {
        g = D_0013E633 + 0xE1D;
        if (G(unsigned char, 0x20B3) != 0) {
            if (func_L00_001F10E0(D_0015EE60 * 0.4f, g + 0x80, k, G(void *, 0x2080)) == 0) break;
        } else if (G(int, 0x208C) == 0xF) {
            if (func_L00_001F10E0(D_0015EE60 * 0.45f, g + 0x80, k, G(void *, 0x2080)) == 0) break;
        } else {
            d = G(float, 0x220) - G(float, 0x224);
            if (d < 0.05f) d = 0.05f;
            r = func_L00_001F1D20(G(float, 0x234), d, g + 0x80, k, G(void *, 0x2080));
            r |= func_L00_001F34F0(G(float, 0x234), g + 0x80);
            if (r == 0) break;
        }
        t = D_0013E633 + 0xE9D;
        qcopy(t, D_L06_001746F0);
        qcopy(t + 0x180, D_L06_001746F0 + 0x10);
        qcopy(t + 0x190, D_L06_001746F0 - 0x10);
        t -= 0x80;
        *(int *)(t + 0x23C) = *(int *)(D_L06_001746F0 - 0x18);
        *(char *)(t + 0x257) = 1;
    }
    t = D_0013E633 + 0xE9D;
    func_001F9BF0(t, t, w);
    func_001F9BF0(u, t, v);
    d = func_001F9CB8(u);
    if (*(float *)(t + 0x1B4) * 1.5f < d) {
        if (mode == 0xF) {
            if (u[0] > 512.0f) u[0] = 512.0f; else if (u[0] < -512.0f) u[0] = -512.0f;
            if (u[1] > 512.0f) u[1] = 512.0f; else if (u[1] < -512.0f) u[1] = -512.0f;
            if (u[2] > 512.0f) u[2] = 512.0f; else if (u[2] < -512.0f) u[2] = -512.0f;
            g = D_0013E633 + 0xE1D;
            func_L00_001FF4B0(u, u, G(float, 0x234));
            func_001F9BD8(g + 0x80, v, u);
        }
        return -1;
    }
    return 1;
}
