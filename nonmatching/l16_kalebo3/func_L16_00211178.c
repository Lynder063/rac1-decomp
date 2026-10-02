/* NON_MATCHING func_L16_00211178 -- src/overlays/l16_kalebo3/help_00209D98.c
 * Best so far: SIZE ours 1112 / retail 1116, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * Cannot land as written (#define in a candidate): rewrite that in plain C first.
 * What the last attempts found:
 *   Handled, stopped at budget (10 runs); best p9.c: SIZE 1108 vs 1116, structure and registers match retail (a in
 *   Camera position step toward a desired offset from the player: up to 8 probe attempts (func_L00_001F10E0 / 1F1D
 *   What worked: block-local pointers `char *x = D_0013E633 + 0xE1D` / `+ 0xE9D` (per region) give the retail lui/
 *   Remaining diff: retail leaves `nop` in the delay slot after the no-arg call func_L00_00235040 (ours fills with
 */
extern char D_0013E633[];
extern float D_0015EE60 MACRO_ADDR;
extern char D_L16_001742F0[];
extern void func_001F9BC0(void *);
extern void func_L00_00235040(void);
extern void func_L00_00233EE0(float *, float, float, float);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_00234090(float *, float *, float);
extern void func_L00_00233D50(float *, float *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_L00_001F10E0(float, void *, int, void *);
extern int func_L00_001F1D20(float, float, void *, int, void *);
extern int func_L00_001F34F0(float, void *);
extern float func_001F9CB8(void *);
extern void func_L00_001FF4B0(void *, void *, float);

#define GB(o) (*(unsigned char *)(g + (o)))
#define GW(o) (*(int *)(g + (o)))
#define GF(o) (*(float *)(g + (o)))
#define GH(o) (*(short *)(g + (o)))
#define QB(o) (*(unsigned char *)(q + (o)))
#define QW(o) (*(int *)(q + (o)))
#define QF(o) (*(float *)(q + (o)))

/* Pulls the camera position toward a desired offset from the player; returns 1 when settled, -1 when clamped. */
int func_L16_00211178(int a) {
    char *g = D_0013E633 + 0xE1D;
    char *p;
    char *p2;
    char *p3;
    char *q;
    float a0[4], v1[4], v2[4];
    int i;
    int k;
    int t;
    int r;
    if (GW(0x1CC) != 0) return 1;
    qcopy(a0, g + 0x80);
    func_001F9BC0(v1);
    if (GH(0x22DA) != 0) {
        func_L00_00235040();
        GH(0x22DA) = 0;
    }
    t = GW(0x208C);
    if (t != 0x11) {
        if (t == 0x16) {
            func_L00_00233EE0(v1, 0.0f, 0.0f, 0.7f);
            func_001F9BF0(v1, v1, g + 0x80);
        } else if (GB(0x20B3) == 0 && GH(0x1F8) == 0) {
            v1[2] = GF(0x224);
        } else if (GB(0x20B3) == 1 || GH(0x1F8) != 0 || (t >= 0x15 && t <= 0x16)) {
            func_L00_00234090(v1, v1, 0.6f);
        } else {
            func_L00_00233D50(v1, v1, -GF(0x224));
        }
    }
    p = D_0013E633 + 0xE9D;
    func_001F9BD8(p, p, v1);
    k = 0x24;
    if (*(int *)(p + 0x2004) == 0x7F) k = 0xD24;
    i = 0;
    while (i < 8) {
        q = D_0013E633 + 0xE1D;
        if (QB(0x20B3) == 0) {
            t = QW(0x208C);
            if (t == 0x11) {
                r = func_L00_001F10E0(0.6f, q + 0x80, k, *(void **)(q + 0x2080));
                if (r == 0) break;
            } else if (t == 0x16) {
                r = func_L00_001F10E0(D_0015EE60 * 0.5f, q + 0x80, k, *(void **)(q + 0x2080));
                if (r == 0) break;
            } else if (t == 0xF) {
                r = func_L00_001F10E0(D_0015EE60 * 0.45f, q + 0x80, k, *(void **)(q + 0x2080));
                if (r == 0) break;
            } else {
                float h = QF(0x220) - QF(0x224);
                if (h < 0.05f) h = 0.05f;
                r = func_L00_001F1D20(QF(0x234), h, q + 0x80, k, *(void **)(q + 0x2080));
                r |= func_L00_001F34F0(QF(0x234), q + 0x80);
                if (r == 0) break;
            }
        } else {
            r = func_L00_001F10E0(D_0015EE60 * 0.4f, q + 0x80, k, *(void **)(q + 0x2080));
            if (r == 0) break;
        }
        p2 = D_0013E633 + 0xE9D;
        qcopy(p2, D_L16_001742F0);
        qcopy(p2 + 0x180, D_L16_001742F0 + 0x10);
        qcopy(p2 + 0x190, D_L16_001742F0 - 0x10);
        QW(0x23C) = *(int *)(D_L16_001742F0 - 0x18);
        QB(0x257) = 1;
        i++;
    }
    p3 = D_0013E633 + 0xE9D;
    func_001F9BF0(p3, p3, v1);
    func_001F9BF0(v2, p3, a0);
    if (func_001F9CB8(v2) > *(float *)(p3 + 0x1B4) * 1.5f) {
        if (a != 0xF) return -1;
        if (512.0f < v2[0]) v2[0] = 512.0f;
        else if (v2[0] < -512.0f) v2[0] = -512.0f;
        if (512.0f < v2[1]) v2[1] = 512.0f;
        else if (v2[1] < -512.0f) v2[1] = -512.0f;
        if (512.0f < v2[2]) v2[2] = 512.0f;
        else if (v2[2] < -512.0f) v2[2] = -512.0f;
        {
            char *w = D_0013E633 + 0xE1D;
            func_L00_001FF4B0(v2, v2, *(float *)(w + 0x234));
            func_001F9BD8(w + 0x80, a0, v2);
        }
        return -1;
    }
    return 1;
}
