/* NON_MATCHING func_L18_002FDD20 -- src/overlays/l18_veldin2/vendor_002F9D48.c
 * Best so far: SIZE ours 548 / retail 564, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Builds a camera-facing 4-vertex textured quad draw packet (GIF words as longs, dsll) and calls func_L00_001FD1
 */
extern void func_001F9BC0(void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9CA0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern int func_001F4868(int);
extern int func_001FA8A8(int, int, float);
extern void func_L00_001FD1D8(void *, void *, int);
extern char D_L18_00167840[];
extern float D_L18_001EFF90[];
extern short D_L18_001626DC;
extern short D_L18_001626E0;
extern short D_L18_001626D8;
extern short D_L18_001626D4;
extern short D_L18_001626C0;
extern short D_L18_001626BC;
extern short D_L18_001626C4;
extern short D_L18_001626C8;
extern short D_L18_001626CC;
extern short D_L18_001626D0;

// Builds and submits a textured quad that faces the camera at the moby's position.
void func_L18_002FDD20(char *moby) {
    float one = 1.0f;
    float neg = -1.0f;
    int i = 0;
    char *data = *(char **)(moby + 0x78);
    float w[16];
    int col[4];
    float uv[8];
    long q[4];
    float a[4];
    float c[4];
    float b[4];
    float v[4];
    float f20;
    float f21;
    int r;
    f20 = *(float *)(data + 0x1F4);
    f21 = 1.0f - f20;
    f20 = f20 + 1.0f;
    f21 += *(float *)&D_L18_001626E0;
    f20 += *(float *)&D_L18_001626DC;
    qcopy(v, moby + 0x10);
    v[2] = v[2] - *(float *)&D_L18_001626D8;
    func_001F9BC0(b);
    b[2] = f20;
    func_001F9BF0(a, D_L18_00167840, moby + 0x10);
    func_001F9CA0(c, a, b);
    func_001F9CA0(a, c, b);
    func_L00_001FF4B0(a, a, f21);
    func_L00_001FF4B0(c, c, f21);
    q[1] = func_001F4868(*(int *)&D_L18_001626D4);
    q[2] = 0xFF9000000260L;
    q[0] = 0;
    q[3] = *(int *)&D_L18_001626BC | ((long)*(int *)&D_L18_001626C0 << 2) | ((long)*(int *)&D_L18_001626C4 << 4) | ((long)*(int *)&D_L18_001626C8 << 6) | 0x8000000000L;
    r = func_001FA8A8(*(int *)&D_L18_001626CC, *(int *)&D_L18_001626D0, *(float *)(data + 0x1F4));
    for (; i < 4; i++) {
        uv[i * 2] = D_L18_001EFF90[i * 2];
        uv[i * 2 + 1] = D_L18_001EFF90[i * 2 + 1];
        func_001F9BC0(w + i * 4);
        if (i & 1) {
            w[i * 4 + 2] = one;
        } else {
            *(int *)&w[i * 4 + 2] = 0;
        }
        if (i < 2) {
            w[i * 4 + 1] = one;
        } else {
            w[i * 4 + 1] = neg;
        }
        w[i * 4 + 3] = one;
        col[i] = r;
    }
    func_L00_001FD1D8(w, a, 0);
}
