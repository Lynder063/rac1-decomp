/* NON_MATCHING func_L05_0032ADE8 -- src/overlays/shared/vendor_002CF2C0.c
 * Best so far: BYTES 6/1036 (99.4% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Best candidate p2.c: same size as retail (1036), 6 bytes differ. Function: steers two axis angles of a moby to
 *   Left: the constant block at d+0x150 (the 12 swc1 of pi, -1.5359, 5.0, 0.005, 0.2 and zeros). Ours emits the q7
 */
extern char D_0013E633[];
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9CA0(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9C78(void *a, void *b);
extern float func_001F9CB8(void *);
extern float func_001F9FC0(float x);
extern void func_002156E0(void *dst, void *vec, void *axis, float angle);
extern void func_001F9BD8(void *, void *, void *);
extern float func_L00_001EB6A8(void *,float,float,float,float,float);
extern f32 func_001EC120_ED818(f32 *vel, f32 from, f32 to, f32 stiffness, f32 damping, f32 max) __asm__("func_001EC120");
extern void func_001F9C30(void *, void *, float);

// Steers the moby's two axis angles toward its target, then runs the blend step once its state byte is 1.
void func_L05_0032ADE8(char *moby) {
    char *d = *(char **)(moby + 0x70);
    char *g = D_0013E633 + 0x10AD;
    char *p80;
    float v0[4];
    float v10[4];
    float v20[4];
    float v30[4];
    float v40[4];
    float v50[4];
    float v60[4];
    float v70[4];
    float *q = (float *)(d + 0x150);
    float f0, f20, f21;

    p80 = d + 0x80;
    func_L00_001FF4B0(v0, g, -1.0f);
    if (*(short *)(d + 0x1C) == 0) {
        char *h = g - 0x290;
        if (*(unsigned char *)(h + 0x88E) != 0) {
            *(short *)(d + 0x1C) = 1;
            func_001F9CA0(v10, *(char **)(h + 0x2080) + 0xE0, v0);
            func_L00_001FF4B0(v10, v10, 1.0f);
            func_001F9CA0(v20, v0, v10);
            func_L00_001FF4B0(v20, v20, 1.0f);
            func_001F9BF0(v30, moby + 0x30, p80);
            f0 = func_001F9C78(v30, v0);
            func_L00_001FF4B0(v40, v0, f0);
            func_001F9BF0(v50, v30, v40);
            f0 = func_001F9C78(v20, v50);
            f20 = f0;
            f0 = func_001F9CB8(v50);
            if (f0 == 0.0f) f0 = 9.99999975e-05f;
            f21 = 1.57079637f;
            f0 = func_001F9FC0(f20 / f0);
            f20 = f21 - f0;
            func_L00_001FF4B0(v60, v50, 1.0f);
            f0 = func_001F9C78(v10, v60);
            if (f0 < 0.0f) f20 = -f20;
            *(float *)(moby + 0x50) = f20;
            func_002156E0(v70, v20, v0, f20);
            f0 = func_001F9C78(v70, v30);
            f20 = f0;
            f0 = func_001F9CB8(v30);
            if (f0 == 0.0f) f0 = 9.99999975e-05f;
            f0 = func_001F9FC0(f20 / f0);
            f21 = f21 - f0;
            func_L00_001FF4B0(v60, v30, 1.0f);
            f0 = func_001F9C78(v0, v60);
            f20 = -f21;
            if (f0 < 0.0f) f20 = f21;
            *(float *)(moby + 0x54) = f20;
            *(float *)(moby + 0x58) = func_001F9CB8(v30);
            qcopy(d + 0xB0, v20);
            q[0] = 3.14159274f;
            q[1] = -1.53588974f;
            q[2] = 5.0f;
            q[3] = 0.0f;
            q[4] = 0.0f;
            q[5] = 0.0f;
            q[8] = 0.00499999989f;
            q[11] = 0.200000003f;
            q[6] = 0.00499999989f;
            q[9] = 0.200000003f;
            q[7] = 0.00499999989f;
            q[10] = 0.200000003f;
        }
    }
    if (*(short *)(d + 0x1C) == 1) {
        func_L00_001FF4B0(v10, p80 + 0x30, *(float *)(moby + 0x58));
        func_002156E0(v10, v10, v0, *(float *)(moby + 0x50));
        func_001F9CA0(v20, v10, v0);
        func_L00_001FF4B0(v20, v20, 1.0f);
        func_002156E0(v10, v10, v20, *(float *)(moby + 0x54));
        func_001F9BD8(moby + 0x30, p80, v10);
        *(float *)(moby + 0x50) = func_L00_001EB6A8(q + 3, *(float *)(moby + 0x50), q[0], q[6], q[9], 0.0f);
        *(float *)(moby + 0x54) = func_L00_001EB6A8(q + 4, *(float *)(moby + 0x54), q[1], q[7], q[10], 0.0f);
        *(float *)(moby + 0x58) = func_001EC120_ED818(q + 5, *(float *)(moby + 0x58), q[2], q[8], q[11], 0.0f);
        if (*(unsigned char *)(D_0013E633 + 0x16AB) == 0) {
            *(short *)(d + 0x1C) = 0;
            func_001F9C30(d, d, -1.0f);
        }
    }
}
