/* NON_MATCHING func_L06_002FD0B8 -- src/overlays/l06_blarg/vendor_002B5990.c
 * Best so far: SIZE ours 800 / retail 804, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Orbiting-arm moby update: two FF860 angles, clamp of a swing angle to +-pi/4, a vector built from F9F90/F9FA8,
 *   Remaining difference: the clamp keeps u in $f20 in retail (mov.s $f20,$f0 after FA790, then c.lt.s/bc1f/b form
 */
extern char D_0013E633[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern short D_L06_00161F88;
extern short D_L06_00161F8C;
extern float func_L00_001FF860(float, float);
extern float func_001F9D10(void *, void *);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern float func_001F9D48(void *, void *);
extern float func_L00_0025CE58(float *, float *, float, float, float, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BF0(void *dst, void *a, void *b);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern void func_00214D28(float *, float, float);
extern void func_L00_00262DF0(float, void *, void *, void *);

/* Orbiting platform: aims its arm at the target, clamps the swing angle, and applies the offset and push to its anchor. */
void func_L06_002FD0B8(char *m) {
    char *d = *(char **)(m + 0x78);
    char *g = D_0013E633 + 0xE1D;
    float v[3];
    float out[4];
    float a = func_L00_001FF860(*(float *)(g + 0x80) - *(float *)(d + 0xD0), *(float *)(g + 0x84) - *(float *)(d + 0xD4));
    float b = func_L00_001FF860(*(float *)(m + 0x10) - *(float *)(d + 0xD0), *(float *)(m + 0x14) - *(float *)(d + 0xD4));
    float u = func_001FA790(func_001FA748(a, 3.14159012f), b);
    float w;
    float k;
    float p;
    float A;
    float C;
    float r;
    float r2;
    float s;

    if (u > 0.785398185f) {
        u = 0.785398185f;
    } else if (u < -0.785398185f) {
        u = -0.785398185f;
    }
    w = func_001FA748(u, b);
    k = *(float *)(d + 0xDC);
    p = func_001F9F90(w);
    v[0] = p * k;
    v[1] = func_001F9FA8(w) * k;
    v[2] = 0.0f;
    func_001F9BD8(v, v, d + 0xD0);

    r = func_L00_001FF860(*(float *)(*(char **)(d + 0xB0) + 0x10) - *(float *)(m + 0x10),
                          *(float *)(*(char **)(d + 0xB0) + 0x14) - *(float *)(m + 0x14));
    A = D_0015EE70 * 6.28318548f;
    C = D_0015EE6C * 3.14159274f;
    func_L00_0025CE58((float *)(m + 0x48), (float *)(d + 0xE0), r, A, A, C);

    r2 = func_001F9D10(m + 0x10, v);
    if (1.0f < r2) {
        s = func_001F9D48(m + 0x10, D_0013E633 + 0xE9D);
        if (s < 16.0f) {
            func_00214D28((float *)(d + 0xE8), *(float *)&D_L06_00161F88 * D_0015EE6C, *(float *)&D_L06_00161F8C * D_0015EE70);
        } else {
            func_00214D28((float *)(d + 0xE8), 0.0f, *(float *)&D_L06_00161F8C * D_0015EE70);
        }
    } else {
        func_00214D28((float *)(d + 0xE8), 0.0f, *(float *)&D_L06_00161F8C * D_0015EE70);
    }

    if (*(float *)(d + 0xE8) == 0.0f) {
        if (m[0x53] != 1) {
            func_001F9850(0x14);
            func_00213DE0(m, 1, 0, 1);
        }
    } else {
        if (m[0x53] != 0) {
            func_001F9850(0x14);
            func_00213DE0(m, 0, 0, m[0x53]);
        }
    }

    func_001F9BF0(out, v, m + 0x10);
    out[3] = 0.0f;
    func_L00_001FF4B0(out, out, *(float *)(d + 0xE8));
    func_001F9BD8(m + 0x10, m + 0x10, out);
    func_L00_00262DF0(1.0f, *(void **)(d + 0xEC), m + 0x10, m + 0x10);
}
