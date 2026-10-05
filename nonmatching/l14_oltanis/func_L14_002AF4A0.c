/* NON_MATCHING func_L14_002AF4A0 -- src/overlays/l14_oltanis/vendor_002ACCC0.c
 * Best so far: SIZE ours 496 / retail 488, checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Sibling of func_L14_002B4C70: builds a particle effect from moby data (data+0x90 position, +0x218 clamp, +0x21
 *   Retail picks g = data[0x202] ? 0x7F40407F : D_L14_00161548 with branches (lui/ori + b, lw $gp) and one join, t
 *   Unblock: a source shape that keeps the branches without a store in each arm.
 *   w01 round: the file declares `extern void func_L14_002AF4A0(void);` later, so the candidate defines `extern vo
 */
extern int func_001F4868(int);
extern void func_00234C98(int, long);
extern void func_001F9BF0(void *dst, void *a, void *b);
extern float func_001F9CB8(void *a);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_L00_001FD1D8(void *, void *, int);
extern char D_L14_001675C0[];
extern char D_L14_001D8940[];
extern short D_L14_00161544;
extern short D_L14_00161548;

extern void func_L14_002AF4A0_c(char *) __asm__("func_L14_002AF4A0");

// Builds a particle effect from the moby's data: queues draw commands and spawns it.
void func_L14_002AF4A0_c(char *moby) {
    char *data = *(char **)(moby + 0x78);
    float w[4];
    float m[28];
    long pk[4];
    float v1[4];
    float v2[4];
    float len, s;
    int i;
    float *vp;
    char *tp;
    int g;
    qcopy(w, data + 0x90);
    w[2] = w[2] + 0.01f;
    w[3] = 1.0f;
    pk[1] = func_001F4868(0xB);
    pk[2] = 0xFF9000000260L;
    pk[3] = 0x8000000048L;
    pk[0] = 0;
    func_00234C98(0x4A, 0);
    func_00234C98(0x47, 0x51001);
    func_001F9BF0(v1, D_L14_001675C0, w);
    len = func_001F9CB8(v1);
    if (len > 0.0f) {
        float x = len - *(float *)&D_L14_00161544;
        s = *(float *)(data + 0x218);
        if (x < s) {
            s = x;
            if (s < 0.0f) s = 0.0f;
        }
        func_L00_001FF4B0(v2, v1, s);
        func_001F9BD8(w, w, v2);
    }
    m[22] = 0.0f;
    m[24] = 1.0f;
    m[20] = 1.0f;
    m[21] = 1.0f;
    m[23] = 1.0f;
    m[25] = 0.0f;
    m[26] = 0.0f;
    m[27] = 0.0f;
    if (*(short *)(data + 0x202) != 0) {
        g = 0x7F40407F;
        *(int *)&m[16] = g;
    } else {
        g = *(int *)&D_L14_00161548;
        *(int *)&m[16] = g;
    }
    *(int *)&m[16] = g;
    *(int *)&m[19] = g;
    *(int *)&m[18] = g;
    *(int *)&m[17] = g;
    vp = m;
    tp = D_L14_001D8940;
    for (i = 3; i >= 0; i--) {
        func_001F9C30(vp, tp, *(float *)(data + 0x214));
        func_001F9BD8(vp, vp, w);
        tp += 16;
        vp += 4;
    }
    func_L00_001FD1D8(m, 0, 0);
}
