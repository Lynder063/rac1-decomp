/* NON_MATCHING func_L05_0032B1F8 -- src/overlays/shared/vendor_002CF2C0.c
 * Best so far: SIZE ours 2556 / retail 2544, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Steers a level moby's smoothed state (0x30/0x64 vectors, 0xE0/0xF0/0xCC targets) toward the level entry; loops
 *   Run 1 (p0): SIZE 2344 vs 2544. Field loads cached in locals; re-reading d[] at each use is what retail does (l
 *   Run 2 (p1): SIZE 2524 vs 2544 (20 bytes short). Re-reads fixed; f24 (d+0x180) was dropped, so only f20-f23 are
 *   Run 3 (p2): SIZE 2556 vs 2544 (12 over). f24 restored as a local read at entry; e = d+0xE0 and q = d+0x80 as p
 *   Left: the 12-byte size gap (about three words, from the constant expansions and the else arm's tail), then the
 */
extern char D_0013E633[];
extern int D_L05_0015F050 MACRO_ADDR;
extern float D_L05_00174378 MACRO_ADDR;
extern short D_L05_00162268;
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9C78(void *a, void *b);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001EC120(void *, float, float, float, float, float);
extern void func_001F9C30(void *, void *, float);
extern int func_L00_001F10E0(float, void *, int, void *);
extern float func_001F9B88(float);
extern void func_L05_0032ADE8(void *);
extern void func_001F9CA0(void *, void *, void *);

// Steers a level moby's smoothed state toward the current level entry's targets and updates its orientation vectors.
void func_L05_0032B1F8(char *m) {
    char *d = *(char **)(m + 0x70);
    char *g = D_0013E633 + 0x10AD;
    char *g2 = D_0013E633 + 0xE1D;
    char *cur;
    float v0[4], t10[4], v20[4], v30[4], v40[4], v50[4], v60[4], v70[4], v80[4], v90[4];
    float dd, dd2, f24;
    char *e = d + 0xE0, *q = d + 0x80;
    int n = 0;
    int fl = 0;

    cur = *(char **)(D_L05_0015F050 + (*(short *)(m + 0x84) << 5) + 0x1C);
    f24 = *(float *)(d + 0x180);
    func_L00_001FF4B0(v0, g, -1.0f);
    qcopy(t10, d + 0x80);
    if (*(short *)(d + 0x1C) == 0) {
        func_001F9BF0(v20, m + 0x30, t10);
        n = 0;
        dd = func_001F9C78(v20, d + 0xA0);
        func_L00_001FF4B0(v70, d + 0xA0, dd);
        func_001F9BF0(v30, v20, v70);
        func_L00_001FF4B0(v40, v30, *(float *)e);
        func_001F9BD8(v50, t10, v40);
        func_L00_001FF4B0(v70, d + 0xA0, *(float *)(e + 0x10));
        func_001F9BD8(v60, v50, v70);
        func_001F9BD8(v60, v60, d + 0x1B0);
        *(float *)(m + 0x30) = func_001EC120(d, *(float *)(m + 0x30), v60[0], *(float *)(d + 0x10), *(float *)(d + 0x14), *(float *)(d + 0x18));
        *(float *)(m + 0x34) = func_001EC120(d + 4, *(float *)(m + 0x34), v60[1], *(float *)(d + 0x10), *(float *)(d + 0x14), *(float *)(d + 0x18));
        *(float *)(m + 0x38) = func_001EC120(d + 8, *(float *)(m + 0x38), v60[2], *(float *)(d + 0x10), *(float *)(d + 0x14), *(float *)(d + 0x18));
        v80[0] = *(float *)(m + 0x64);
        v80[1] = *(float *)(m + 0x68);
        v80[2] = *(float *)(m + 0x6C);
        *(int *)&v80[3] = 0;
        func_001F9BF0(v90, m + 0x30, v80);
        func_001F9C30(v90, v90, 0.16666667f);
        for (;;) {
            if (n >= 6) break;
            if (func_L00_001F10E0(0.5f, v80, 18, 0) == 0) {
                func_001F9BD8(v80, v80, v90);
                n++;
            } else {
                *(float *)(e + 0x10) = func_001EC120(cur + 0x48, *(float *)(e + 0x10), D_L05_00174378 - t10[2], 0.05f, 0.2f, 0.0f);
                break;
            }
        }
        if (n == 6) {
            *(float *)(d + 0x1B0) = func_001EC120(d + 0x1C0, *(float *)(d + 0x1B0), 0.0f, 0.02f, 0.2f, 0.05f);
            *(float *)(d + 0x1B4) = func_001EC120(d + 0x1C4, *(float *)(d + 0x1B4), 0.0f, 0.02f, 0.2f, 0.05f);
            *(float *)(d + 0x1B8) = func_001EC120(d + 0x1C8, *(float *)(d + 0x1B8), 0.0f, 0.02f, 0.2f, 0.05f);
            *(float *)(e + 0x10) = func_001EC120(cur + 0x48, *(float *)(e + 0x10), *(float *)(d + 0x188), 0.005f, 0.2f, 0.0f);
        }
        if (*(short *)(g2 + 0x30E) != 0 && 2.0f < *(float *)(g2 + 0x2DC)) {
            if (func_001F9B88(*(float *)e - *(float *)(d + 0x190)) < 0.015f) *(float *)e = *(float *)(d + 0x190);
            else if (*(float *)e < *(float *)(d + 0x190)) *(float *)e = *(float *)e + 0.015f;
            else *(float *)e = *(float *)e - 0.015f;
            if (n == 6) {
                if (func_001F9B88(*(float *)(e + 0x10) - *(float *)(d + 0x194)) < 0.05f) *(float *)(e + 0x10) = *(float *)(d + 0x194);
                else if (*(float *)(e + 0x10) < *(float *)(d + 0x194)) *(float *)(e + 0x10) = *(float *)(e + 0x10) + 0.05f;
                else *(float *)(e + 0x10) = *(float *)(e + 0x10) - 0.05f;
            }
            if (func_001F9B88(*(float *)(q + 0x4C) - *(float *)(d + 0x18C)) < 0.02f) *(float *)(q + 0x4C) = *(float *)(d + 0x18C);
            else if (*(float *)(q + 0x4C) < *(float *)(d + 0x18C)) *(float *)(q + 0x4C) = *(float *)(q + 0x4C) + 0.02f;
            else *(float *)(q + 0x4C) = *(float *)(q + 0x4C) - 0.02f;
            fl = 1;
        } else {
            if (func_001F9B88(*(float *)e - *(float *)(d + 0x184)) < 0.03f) *(float *)e = *(float *)(d + 0x184);
            else if (*(float *)e < *(float *)(d + 0x184)) *(float *)e = *(float *)e + 0.03f;
            else *(float *)e = *(float *)e - 0.03f;
            if (func_001F9B88(*(float *)(e + 0x10) - *(float *)(d + 0x188)) < 0.1f) *(float *)(e + 0x10) = *(float *)(d + 0x188);
            else if (*(float *)(e + 0x10) < *(float *)(d + 0x188)) *(float *)(e + 0x10) = *(float *)(e + 0x10) + 0.1f;
            else *(float *)(e + 0x10) = *(float *)(e + 0x10) - 0.1f;
            if (func_001F9B88(*(float *)(q + 0x4C) - f24) < 0.04f) *(float *)(q + 0x4C) = f24;
            else if (*(float *)(q + 0x4C) < f24) *(float *)(q + 0x4C) = *(float *)(q + 0x4C) + 0.04f;
            else *(float *)(q + 0x4C) = *(float *)(q + 0x4C) - 0.04f;
            fl = 1;
        }
    } else {
        qcopy(d + 0x1A0, (char *)*(int *)(g + 0x1DF0) + 0xE0);
        if (func_001F9B88(*(float *)e - *(float *)(d + 0x184)) < 0.015f) *(float *)e = *(float *)(d + 0x184);
        else if (*(float *)e < *(float *)(d + 0x184)) *(float *)e = *(float *)e + 0.015f;
        else *(float *)e = *(float *)e - 0.015f;
        if (func_001F9B88(*(float *)(e + 0x10) - *(float *)(d + 0x188)) < 0.05f) *(float *)(e + 0x10) = *(float *)(d + 0x188);
        else if (*(float *)(e + 0x10) < *(float *)(d + 0x188)) *(float *)(e + 0x10) = *(float *)(e + 0x10) + 0.05f;
        else *(float *)(e + 0x10) = *(float *)(e + 0x10) - 0.05f;
        if (func_001F9B88(*(float *)(q + 0x4C) - f24) < 0.02f) *(float *)(q + 0x4C) = f24;
        else if (*(float *)(q + 0x4C) < f24) *(float *)(q + 0x4C) = *(float *)(q + 0x4C) + 0.02f;
        else *(float *)(q + 0x4C) = *(float *)(q + 0x4C) - 0.02f;
    }

    func_L05_0032ADE8(m);
    qcopy(d + 0x80, d + 0x1D0);
    qcopy(t10, d + 0x80);
    func_L00_001FF4B0(v70, d + 0xA0, *(float *)(q + 0x4C));
    func_001F9BD8(v60, t10, v70);
    func_001F9BF0(v20, v60, m + 0x30);
    func_L00_001FF4B0(v20, v20, 1.0f);
    dd = func_001F9C78(m, v20);
    func_001F9CA0(m + 0x10, v20, v0);
    func_L00_001FF4B0(m + 0x10, m + 0x10, 1.0f);
    func_001F9CA0(m + 0x20, m + 0x10, v20);
    if (fl != 0 && func_001F9B88(dd) >= 0.5f && *(unsigned char *)(g2 + 0x88D) == 0) {
        func_L00_001FF4B0(v80, (char *)*(int *)(g2 + 0x2080) + 0xC0, 1.0f);
        dd2 = func_001F9C78(v80, m + 0x20);
        func_L00_001FF4B0(v90, m + 0x20, dd2);
        func_001F9BF0(v80, v80, v90);
        dd2 = func_001F9C78(v80, m + 0x10);
        *(float *)(d + 0x140) = func_001EC120(d + 0x120, *(float *)(d + 0x140), dd2 * *(float *)&D_L05_00162268, *(float *)(d + 0x134), *(float *)(d + 0x138), *(float *)(d + 0x13C));
    } else {
        *(float *)(d + 0x140) = func_001EC120(d + 0x120, *(float *)(d + 0x140), 0.0f, *(float *)(d + 0x134), *(float *)(d + 0x138), *(float *)(d + 0x13C));
    }
    if (0.00001f < func_001F9B88(*(float *)(d + 0x140))) {
        func_L00_001FF4B0(v80, m + 0x10, *(float *)(d + 0x140));
        func_001F9BD8(v60, v60, v80);
    }
    func_001F9BF0(v20, v60, m + 0x30);
    func_L00_001FF4B0(m, v20, 1.0f);
    func_001F9CA0(m + 0x10, m, v0);
    func_L00_001FF4B0(m + 0x10, m + 0x10, 1.0f);
    func_001F9CA0(m + 0x20, m + 0x10, m);
}
