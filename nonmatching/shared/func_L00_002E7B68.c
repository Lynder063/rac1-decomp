/* NON_MATCHING func_L00_002E7B68 -- src/overlays/shared/vendor_002E1660.c
 * Best so far: BYTES 33/1344 (97.5% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   CamType0InitSnap: camera type 0 init: builds a hero-relative camera target, pulls it in with line-of-sight tes
 *   Best candidate p8.c (BYTES 33/1344, same size): only difference is a two-register swap, $fp vs $s7: ours keeps
 *   Needed: the goto-form loop (test/inc labels) for the 3-iteration loop, `char *d = D_L00_00166D80` pointer loca
 *   Unblock: some way to change allocation priority between a[] and the r pointer (pseudo order); declaring a as a
 *   q27 s09: p11 (best.c with `float D_L00_00166F40[]` fixed; the old best.c did not compile), p12 (r from D_L00_0
 */
extern char D_L00_00166D80[];
extern char D_L00_00173F60_a[] __asm__("D_L00_00173F60");
extern char D_L00_00173F70[];
extern float D_L00_00166F40[];
extern short D_L00_00161D98;
extern void func_001FA480(void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern float func_001F9D48(void *, void *);
extern void func_001F9BF0(float *, float *, float *);
extern float func_001F9CB8(void *);
extern int func_L00_001F10E0(float, void *, int, void *);
extern float func_001F9C78(void *, void *);
extern int func_002140B0(int);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9CA0(void *, void *, void *);
// camera type 0: snaps the camera position toward the hero, pulled in by line-of-sight tests
void func_L00_002E7B68(int arg) {
    char *d = D_L00_00166D80;
    char *r;
    char *cam = *(char **)(d + 0x180);
    char *cd = *(char **)(cam + 0x70);
    char *q = cd + 0x130;
    char *m = cd + 0x40;
    float z[4], a[4], c[4], b[4];
    int n;
    float *pp, *dd;
    r = d + 0x190;
    if (arg) {
        float x40[4], x50[4], mat[12], w[4], t[4];
        float f;
        char *pad = (char *)D_0013E633 + 0xE1D;
        char *g2, *g3;
        x50[0] = -*(float *)(q + 0x2C);
        x50[1] = 0.0f;
        x50[2] = *(float *)(q + 0x30);
        x50[3] = 0.0f;
        n = 0x94;
        func_001FA480(mat, pad);
        func_001F9EC0(x40, x50, *(char **)(m + 0xC0) + 0xC0);
        func_001F9BD8(cam + 0x30, m, x40);
        func_001F9C30(a, *(char **)(m + 0xC0) + 0xE0, *(float *)(m + 0xB0));
        func_001F9BD8(b, m, a);
        if (func_L00_001EFFF0(b, cam + 0x30, 0x94, *(int *)(pad + 0x2080), 0)) {
            if (func_001F9D48(D_L00_00173F60_a, b) < 0.001f) n = 0x96;
        }
        g2 = (char *)D_0013E633 + 0xE1D;
        if (func_L00_001EFFF0(b, cam + 0x30, n, *(int *)(g2 + 0x2080), 0)) {
            func_001F9BF0(w, (float *)D_L00_00173F60_a, b);
            f = func_001F9CB8(w);
            if (f == 0.0f) {
                qcopy(cam + 0x30, m);
            } else if (f < *(float *)&D_L00_00161D98) {
                float f20 = 0.5f;
                int i;
                func_001F9C30(a, *(char **)(m + 0xC0) + 0xE0, f20);
                func_001F9BD8(b, m, a);
                qcopy(t, b);
                i = 0;
                goto test;
            inc:
                i++;
            test:
                if (i >= 3) goto done;
                if (func_L00_001F10E0(f20, b, 4, 0)) {
                    qcopy(b, D_L00_00173F70);
                    goto inc;
                }
                if (i != 0) goto done;
                f20 += 0.25f;
                goto inc;
            done:
                func_001F9BF0(w, b, t);
                f = func_001F9CB8(w);
                if (f == 0.0f) {
                    qcopy(cam + 0x30, m);
                } else {
                    func_001F9C30(w, w, *(float *)(q + 0x2C) / f);
                    func_001F9BD8(cam + 0x30, t, w);
                    g3 = (char *)D_0013E633 + 0xE1D;
                    if (func_L00_001EFFF0(t, cam + 0x30, n, *(int *)(g3 + 0x2080), 0)) {
                        func_001F9BF0(w, (float *)D_L00_00173F60_a, b);
                        f = func_001F9CB8(w);
                        if (f == 0.0f) {
                            qcopy(cam + 0x30, m);
                        } else {
                            func_001F9C30(w, w, (f - 0.5f) / f);
                            func_001F9BD8(cam + 0x30, b, w);
                        }
                    }
                }
            } else {
                func_001F9C30(w, w, (f - 0.5f) / f);
                func_001F9BD8(cam + 0x30, b, w);
            }
        }
        func_001F9BF0(x40, (float *)(cam + 0x30), (float *)m);
        f = func_001F9C78(x40, r + 0x30);
        func_001F9C30(x50, r + 0x30, f);
        func_001F9BF0(x40, x40, x50);
        if (func_001F9CB8(x40) < 0.05f) {
            if (func_002140B0(2)) *(float *)(cam + 0x30) += 0.5f;
            else *(float *)(cam + 0x30) -= 0.5f;
            if (func_002140B0(2)) *(float *)(cam + 0x34) += 0.5f;
            else *(float *)(cam + 0x34) -= 0.5f;
            *(float *)(cam + 0x38) += 0.5f;
        }
    }
    pp = (float *)(cam + 0x30);
    dd = (float *)(cam + 0x64);
    dd[0] = pp[0];
    dd[1] = pp[1];
    dd[2] = pp[2];
    qcopy(z, D_L00_00166F40);
    func_L00_001FF4B0(a, z, *(float *)(m + 0xB0));
    func_001F9BD8(b, a, m);
    func_001F9BF0(c, b, (float *)(cam + 0x30));
    func_L00_001FF4B0(cam, c, 1.0f);
    qcopy(cam + 0x20, z);
    func_001F9CA0(cam + 0x10, cam, cam + 0x20);
    func_L00_001FF4B0(cam + 0x10, cam + 0x10, 1.0f);
    func_001F9CA0(cam + 0x20, cam + 0x10, cam);
    qcopy(cam + 0x40, cam);
}
