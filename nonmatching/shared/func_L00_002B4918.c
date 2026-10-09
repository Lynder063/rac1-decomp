/* NON_MATCHING func_L00_002B4918 -- src/overlays/shared/vendor_002B33E8.c
 * Best so far: SIZE ours 1572 / retail 1576, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Builds the moby's palette and transform tables from data at moby+0x78, then emits the draw calls (func_001F9C3
 *   Remaining differences: the palette value (retail spills it to 0x1E4 and reloads it around the call; ours folds
 */
typedef int Q __attribute__((mode(TI)));
typedef union { Q q; f32 f[4]; } V;
extern char D_L00_00161558[];
extern char D_L00_00161560[];
extern char D_L00_001DACE0[];
extern char D_L00_001DAD60[];
extern char D_L00_001DAD20[];
extern char D_L00_00166EC0[];
extern char D_L00_001DA3B0[];
extern char D_L00_001D9770[];
extern char D_L00_001DAD80[];
extern char D_L00_001DA9D0[];
extern char D_0013E633[];
extern void func_0020DB98(char *arg0, int arg1, void *arg2, char *arg3);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9CA0(void *, void *, void *);
extern void func_001FA190(void *);
extern void func_001FA540(void *, void *, void *);
extern int func_001F4868(int);
extern void func_001F9C30(void *, void *, float);
extern float func_002140F8(float, float);
extern void func_L00_001FD1D8(void *, void *, int);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9EE8(void *, void *, void *);
extern void func_00234C98(int, long);
extern void func_001F7868(void);
extern void func_L00_001FDE48(int, int, int, void *, int);
typedef struct { char b[8]; } S8;
typedef struct { float x; float y; } F2;

/* Build the moby's palette and transform tables, then emit its draw calls. */
void func_L00_002B4918(char *moby) {
    char *data;
    char *child;
    float fa[16];
    int colors[4];
    F2 v2[4];
    V v90, vA0, vB0, vC0, vD0, vE0, v100, v110, v190, v1A0, v1B0, v1C0, v1D0;
    float mat[16];
    S8 b8;
    long arr[4];
    int e, i, j, k;
    float f0, f1, f3;

    data = *(char **)(moby + 0x78);
    child = *(char **)(data + 8);
    if (child == 0 || *(short *)(child + 0xA6) != 0x260) return;
    arr[3] = (0x8000L << 24) | 0x48L;
    arr[2] = ((long)0xFF90 << 32) | 0x260L;
    arr[0] = 0;
    if (*(int *)(data + 4) != 0) {
        b8 = *(S8 *)D_L00_00161558;
        func_0020DB98(child, 2, &b8, vD0.f);
    } else {
        b8 = *(S8 *)D_L00_00161560;
        func_0020DB98(child, 2, &b8, vD0.f);
    }
    v100.q = 0;
    v100.f[1] = 1.0f;
    func_001F9BF0(vB0.f, vD0.f, vE0.f);
    func_L00_001FF4B0(vB0.f, vB0.f, 1.0f);
    *(int *)&vB0.f[3] = 0;
    func_001F9CA0(v90.f, v100.f, vB0.f);
    func_L00_001FF4B0(v90.f, v90.f, 1.0f);
    *(int *)&v90.f[3] = 0;
    func_001F9CA0(vA0.f, vB0.f, v90.f);
    *(int *)&vA0.f[3] = 0;
    vC0.q = vE0.q;
    vC0.f[3] = 1.0f;
    *(V *)(moby + 0xC0) = v90;
    *(V *)(moby + 0xD0) = vA0;
    *(V *)(moby + 0xE0) = vB0;
    *(V *)(moby + 0x10) = vC0;
    func_001FA190(mat);
    e = 0x80800000;
    mat[12] = 0.0f;
    mat[13] = 0.0f;
    mat[14] = -0.075f;
    mat[15] = 1.0f;
    func_001FA540(v110.f, v90.f, mat);
    e = e | 0x8080;
    arr[1] = func_001F4868(0xC);
    for (i = 0; i < 4; i++) {
        colors[i] = e;
        if (i == 0 || i == 2) {
            func_001F9C30(fa + 4 * i, D_L00_001DACE0 + 0x10 * i, *(float *)(data + 0x2C));
            f0 = *(float *)(D_L00_001DAD60 + 8 * i);
        } else {
            func_001F9C30(fa + 4 * i, D_L00_001DACE0 + 0x10 * i, *(float *)(data + 0x2C));
            f0 = func_002140F8(0.0f, 0.1f);
            fa[4 * i + 2] -= f0;
            f0 = *(float *)(D_L00_001DAD60 + 8 * i);
        }
        v2[i].x = f0;
        v2[i].y = *(float *)(D_L00_001DAD60 + 8 * i + 4);
    }
    func_L00_001FD1D8(fa, v110.f, 0);
    for (j = 0; j < 4; j++) {
        func_001F9C30(fa + 4 * j, D_L00_001DAD20 + 0x10 * j, *(float *)(data + 0x2C));
        if (j == 1 || j == 3) {
            f0 = func_002140F8(0.0f, 0.1f);
            fa[4 * j + 2] -= f0;
        }
    }
    func_L00_001FD1D8(fa, v110.f, 0);
    arr[1] = func_001F4868(0xB);
    func_001F9C30(v1C0.f, vB0.f, -0.13f);
    func_001F9BD8(v1C0.f, v1C0.f, vC0.f);
    func_001F9BF0(v190.f, D_L00_00166EC0, v1C0.f);
    func_L00_001FF4B0(v190.f, v190.f, 1.0f);
    func_001F9CA0(v1A0.f, v190.f, D_0013E633 + 0x10AD);
    func_L00_001FF4B0(v1A0.f, v1A0.f, -1.0f);
    func_001F9CA0(v1B0.f, v1A0.f, v190.f);
    colors[0] = 0x7F2020FF;
    colors[1] = 0x7F2020FF;
    colors[2] = 0x7F2020FF;
    colors[3] = 0x7F2020FF;
    for (i = 0; i < 4; i++) {
        func_001F9C30(fa + 4 * i, D_L00_001DACE0 + 0x10 * i, 0.1f);
        func_001F9EE8(fa + 4 * i, fa + 4 * i, v190.f);
    }
    func_L00_001FD1D8(fa, 0, 0);
    func_00234C98(6, func_001F4868(0xA));
    func_00234C98(0x42, arr[3]);
    func_00234C98(8, 0);
    func_00234C98(0x14, ((long)0xFF90 << 32) | 0x260L);
    func_00234C98(0x4A, 0);
    func_001F7868();
    for (k = 0xC3; k >= 0; k--) {
        func_001F9C30(v1D0.f, D_L00_001D9770 + 0x10 * k, *(float *)(data + 0x20));
        func_001F9EE8(v1D0.f, v1D0.f, v90.f);
        f3 = *(float *)(D_L00_001DA3B0 + 4 + 8 * k) - 0.025f;
        *(float *)(D_L00_001DAD80 + 0xC * k) = f3;
        if (f3 < -7.0f) f3 = f3 + 7.0f;
        *(float *)(D_L00_001DA3B0 + 4 + 8 * k) = f3;
    }
    func_L00_001FDE48(0x94, (int)D_L00_001DAD80, (int)D_L00_001DA9D0, D_L00_001DA3B0, 1);
    func_L00_001FDE48(0x32, (int)(D_L00_001DAD80 + 0x6D8), (int)(D_L00_001DA9D0 + 0x248), D_L00_001DA3B0 + 0x490, 1);
}
