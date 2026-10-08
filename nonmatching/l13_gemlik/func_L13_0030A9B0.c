/* NON_MATCHING func_L13_0030A9B0 -- src/overlays/l13_gemlik/vendor_002EBD00.c
 * Best so far: SIZE ours 984 / retail 980, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Gemlik moby update: refreshes the float at +0x1FC from an int that func_001F9908 writes through a pointer, the
 *   Best so far p1.c: 984 bytes against retail 980 (one instruction over). The record passed as $8 in the pair pas
 */
extern float D_0015EE6C MACRO_ADDR;
extern short D_L13_00161F0C;
extern char D_L13_001741C0[];
extern char func_L06_00300AB0[];
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_001F9908(void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001F9C78(void *a, void *b);
extern int func_L00_001EFFF0(void *, void *, int, void *, void *);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L00_0025A8C0(void *, void *, int, void *, float);
extern void func_001F49B0(void *, void *);
extern void func_L13_0030B080(char *moby);
extern float func_00214D28(float *, float, float);

typedef struct { float x, y, z, w; } __attribute__((aligned(16))) V4_9A9B0;
typedef struct { V4_9A9B0 v; float p, q; unsigned char a, b; unsigned short c; } __attribute__((aligned(16))) R_9A9B0;

/* Gemlik moby update: refreshes the moby's float at +0x1FC from the level counter, nudges its slot table and emits the particle pass. */
void func_L13_0030A9B0(char *m) {
    char *d = *(char **)(m + 0x78);
    V4_9A9B0 v0, v20, v30, v40;
    R_9A9B0 r10;
    int A, cnt, j;
    char *q, *pa;
    float f20, f22, sc, dd, a, b;

    A = func_001FA898_r(*(float *)(d + 0x1FC));
    func_001F9908(&A);
    *(float *)(d + 0x1FC) = (float)A;
    if (A != 0) {
        if (A == 0x14) {
            for (q = d + 0x21C, cnt = 0; cnt < 16; cnt++, q += 0x10) {
                if (1.0f <= *(float *)q) {
                    *(float *)q = 0.98f;
                }
            }
        }
        f22 = 0.35f;
        sc = 1.0f;
        pa = d + 0x1F0;
        for (cnt = 15, q = d + 0x210; cnt >= 0; cnt--, q += 0x10) {
            func_001F9BF0(&v0, q, pa);
            *(float *)&D_L13_00161F0C = *(float *)&D_L13_00161F0C;
            *(int *)&v0.z = 0;
            func_L00_001FF4B0(&v0, &v0, *(float *)&D_L13_00161F0C * D_0015EE6C);
            func_001F9BD8(&v0, q, &v0);
            func_001F9BF0(&r10.v, &v0, m + 0x10);
            dd = func_001F9C78(&r10.v, d + 0x200);
            func_L00_001FF4B0(&v20, d + 0x200, -dd + f22);
            func_001F9BD8(&r10.v, &r10.v, &v20);
            f20 = v20.z;
            qcopy(&v30, q);
            v30.z = v30.z + sc;
            qcopy(&v40, q);
            v40.z = v40.z - 3.0f;
            if (func_L00_001EFFF0(&v30, &v40, 2, 0, 0)) {
                if (f20 < v0.z) {
                    func_00214D28((float *)&v0.z, *(float *)(D_L13_001741C0 + 0x28) + f22, D_0015EE6C * 4.0f);
                }
            }
            if (1.0f <= *(float *)(q + 0xC) && func_L00_001EFFF0(q, &v0, 2, 0, 0)) {
                v0.w = 0.98f;
            } else if (v0.w < sc) {
                func_00214D28((float *)&v0.w, 0.0f, D_0015EE6C + D_0015EE6C);
            }
            qcopy(q, &v0);
        }
        f20 = sc;
        f22 = 5627.9f;
        for (j = 0; j < 15; j++) {
            if (0.98f <= *(float *)(d + 0x21C + j * 16)) {
                if (0.98f <= *(float *)(d + 0x21C + (j + 1) * 16)) {
                    a = func_001F9F90(*(float *)(m + 0x48));
                    b = func_001F9FA8(*(float *)(m + 0x48));
                    v0.x = a;
                    v0.y = b;
                    v0.z = f20;
                    v0.w = f22;
                    func_L00_0025A8C0(&r10, m, 0x10001, &v0, f20);
                    r10.a = 0;
                    r10.b = 1;
                    r10.c = *(unsigned short *)(m + 0xA6);
                    func_L00_001EFFF0(d + 0x210 + j * 16, d + 0x220 + j * 16, 0, m, &r10);
                }
            }
        }
        func_001F49B0(func_L06_00300AB0, m);
        func_L13_0030B080(m);
    }
}
