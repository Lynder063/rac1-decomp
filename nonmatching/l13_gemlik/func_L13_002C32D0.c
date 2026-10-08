/* NON_MATCHING func_L13_002C32D0 -- src/overlays/l13_gemlik/vendor_002C2638.c
 * Best so far: SIZE ours 1396 / retail 1392, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moby update (class 83, level 13): steering toward a target with calls to the shared helpers; range checks, an 
 *   Best is p4.c (1396 bytes vs 1392, frame and constants now right). Left: the `if (q != 0)` block copies q to $v
 *   Unblock: a way to make the D_L13 base a CSE'd hi with per-use addiu, or a retail-form of the call-argument sch
 */
extern void func_00213DE0(void *, int, int, int);
extern float func_001F9D10(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001F9850(int);
extern void func_001F9C30(void *, void *, float);
extern void func_L00_0025A8C0(void *, void *, int, float, void *);
extern int func_L00_001F2BE8_2FB898(float, void *, int, void *, void *) __asm__("func_L00_001F2BE8");
extern int func_L00_001F10E0(void *, float, int, void *);
extern char *func_L00_0025B478(void *, int, int);
extern void func_L00_0025F4A8_alt(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int) __asm__("func_L00_0025F4A8");
extern void func_L00_0025F4A8_s(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int) __asm__("func_L00_0025F4A8");
extern void func_0020D678(void *);
extern int func_001F9908(int *arg0);
extern float D_0015EE60 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern char D_0013E633[];
extern char D_L13_001741C0[];

// Moby update for class 83 on level 13: drifts toward its target and steers, calling the shared helpers.
void func_L13_002C32D0(char *moby) {
    char vec[16];
    char out[48];
    char *d = *(char **)(moby + 0x78);
    char *x;
    char *e;
    char *q;
    char *t;
    char *g;
    float k;
    float v;
    float w;
    float dist;
    float qz;
    float diff;
    float f20;
    int r;
    int r17;
    int fl;

    k = D_0015EE60 * 0.1f;
    v = *(float *)(*(char **)(moby + 0x24) + 0x24);
    w = *(float *)(moby + 0x2C);
    w = w + ((v + v) - w) * k;
    *(float *)(moby + 0x2C) = w;

    if (*(unsigned char *)(moby + 0x70) & 2) {
        if (*(unsigned char *)(moby + 0x52) != 2 && *(unsigned char *)(moby + 0x53) != 2) {
            func_00213DE0(moby, 2, 0, 10);
        }
    }

    x = D_0013E633 + 0xE1D;
    if (*(char **)(x + 0x15F0) != 0) {
        dist = func_001F9D10(moby + 0x10, *(char **)(x + 0x15F0) + 0x10);
        if (dist < 60.0f && *(unsigned char *)(moby + 0x31) != 0) {
            f20 = 1.0f - dist / 60.0f;
            if (1.0f < f20) f20 = 1.0f;
            f20 = f20 * (D_0015EE6C * 1.5f);
            func_001F9BF0(vec, *(char **)(x + 0x15F0) + 0x10, moby + 0x10);
            func_L00_001FF4B0(vec, vec, f20);
            func_001F9BD8(d + 0x60, d + 0x60, vec);
        }
    }

    r = func_001F9850(0x168);
    if (*(int *)(d + 0x70) < r - 9) {
        func_001F9BD8(moby + 0x10, moby + 0x10, d + 0x60);
        func_001F9C30(d + 0x60, d + 0x60, 0.945f);
    } else {
        func_001F9BF0(vec, moby + 0x10, *(char **)(d + 0x74) + 0x10);
        func_L00_001FF4B0(vec, vec, D_0015EE6C * 20.0f);
        func_001F9BD8(moby + 0x10, moby + 0x10, d + 0x60);
    }

    if (*(float *)(moby + 0x10) < 2.0f || 1021.0f < *(float *)(moby + 0x10)
        || *(float *)(moby + 0x14) < 2.0f || 1021.0f < *(float *)(moby + 0x14)
        || *(float *)(moby + 0x18) < 2.0f || 1021.0f < *(float *)(moby + 0x18)) {
        func_0020D678(moby);
        return;
    }

    e = *(char **)(d + 0x74);
    if (e != 0 && *(unsigned char *)(e + 0x20) != 0xFE && *(unsigned char *)(e + 0x20) != 0xFD
        && 8.0f < func_001F9D10(moby + 0x10, e + 0x10)) {
        func_L00_0025A8C0(out, moby, 0x30000, 16.0f, d + 0x60);
        qcopy(vec, moby + 0x10);
        *(float *)(vec + 8) = *(float *)(vec + 8) + 0.75f;
        r17 = func_L00_001F2BE8_2FB898(1.7f, vec, 16, moby, out);
        r17 |= func_L00_001F10E0(vec, 1.7f, 4, moby);
        q = func_L00_0025B478(moby, -1, 0);
        g = D_L13_001741C0;
        if (q != 0) {
            qz = *(float *)(q + 0x2C);
            diff = *(float *)(d + 0x20) - qz;
            if (diff <= 0.0f) {
                *(float *)(d + 0x20) = diff;
                r17 |= 0x2000;
                *(int *)(D_L13_001741C0 + 0x18) = 0;
            }
        }
        t = *(char **)(g + 0x18);
        if (t != 0) {
            short h = *(short *)(t + 0xA6);
            if (h == 0x504 || h == 0x534 || h == 0x535 || h == 0x536 || h == 0x537 || h == 0x538
                || h == 0x52 || h == 0x53 || h == 0x539 || h == 0x53A || h == 0x191
                || h == 0x184 || h == 0x185 || h == 0x186 || h == 0x187 || h == 0x188
                || h == 0x189 || h == 0x18A || h == 0x18B || h == 0x18C || h == 0x18F
                || h == 0x190) {
                r17 = 0;
            }
        }
        if (r17 != 0) {
            if (*(unsigned char *)(moby + 0x31) != 0) {
                fl = r17 & 0x2000;
                if (fl != 0) {
                    func_L00_0025F4A8_alt(moby, d + 0x60, 0, 0.0f, 0.0f, 5, 2, 7, 0.0f, 0.0f, 0.0f, 1.0f, 3, 0.0f, 1, 1, -1, 0);
                } else {
                    func_L00_0025F4A8_s(moby, d + 0x60, 0, 4.0f, 16.0f, 20, 5, 16, 7.0f, 4.0f, 1.0f, 1.0f, 0, 15.0f, 1, fl, -1, 0);
                }
            }
            func_0020D678(moby);
            return;
        }
    }

    if (func_001F9908((int *)(d + 0x70)) != 0) {
        if (*(unsigned char *)(moby + 0x31) == 0) {
            func_0020D678(moby);
        }
    }
}
