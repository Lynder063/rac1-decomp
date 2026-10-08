/* NON_MATCHING func_L01_0022DE30 -- src/overlays/shared/help_002274A8.c
 * Best so far: SIZE ours 1344 / retail 1384, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Wall/ledge probe (HeroWallLedgeCheckC): a 4-step loop of EFF0 probes, then a 5-step loop, then a do/while on f
 *   Differences left: retail hoists all float constants into f20-f27 before the first loop (p1 does it, but still 
 */
typedef int u128 __attribute__((mode(TI)));
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern int func_L00_001F3958(void);
extern float func_001F9CE8(void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA748(float, float);
extern float func_001FA850(float, float);
extern unsigned char D_0013E633[];
extern char D_L01_00174340[];

// Wall/ledge probe around the hero: returns 1 when a wall or ledge is found.
int func_L01_0022DE30(float *p, float *out) {
    char *g = (char *)D_0013E633 + 0xE1D;
    char *base = D_L01_00174340;
    float s0[4];
    float s1[4];
    float s2[4];
    float s3[4];
    float s4[4];
    float fa;
    float f20;
    float f23 = 0.0f;
    float kNeg07 = -0.7f;
    float k03 = 0.3f;
    float k15 = 1.5f;
    float k115 = 1.15f;
    float k025 = 0.25f;
    float k015 = 0.15f;
    float k035 = 0.35f;
    float k18 = 1.8f;
    float k5 = 5.0f;
    float k1 = 1.0f;
    float k07 = 0.07f;
    float k05 = 0.5f;
    float k24 = 2.4f;
    int hit = 0;
    int got = 0;
    int i;
    int j;
    int r;

    if (*(short *)(g + 0x308) == 2) return 0;
    *(u128 *)s0 = *(u128 *)p;
    s0[0] += func_001F9F90(*(float *)(g + 0x98)) * *(float *)(g + 0x234);
    s0[1] += func_001F9FA8(*(float *)(g + 0x98)) * *(float *)(g + 0x234);
    for (i = 0; i < 4; i++) {
        s0[0] += func_001F9F90(*(float *)(g + 0x98)) * k03 * k025;
        s0[1] += func_001F9FA8(*(float *)(g + 0x98)) * k03 * k025;
        *(u128 *)s1 = *(u128 *)s0;
        s0[6] += k15 + k015;
        *(u128 *)s2 = *(u128 *)s0;
        s0[10] += k115;
        if (func_L00_001EFFF0(s1, s2, 4, *(int *)(g + 0x2080), 0) != 0) {
            r = func_L00_001F3958();
            if (r != 9 && r != 0xC) {
                float v = func_L00_001FF860(*(float *)(base + 0x48), func_001F9CE8(base + 0x40));
                if (v < k035) hit = 1;
            }
        }
        if (hit) break;
    }
    if (!hit) return 0;

    if (p[2] + k15 < *(float *)(base + 0x28)) return 0;
    *(u128 *)s1 = *(u128 *)(base + 0x20);
    fa = func_L00_001FF860(s1[0] - p[0], s1[1] - p[1]);
    if (s0[6] - *(float *)(g + 0x2D8) < k18) return 0;

    f20 = 0.0f;
    for (j = 0; j < 5; j++) {
        *(u128 *)s2 = *(u128 *)p;
        *(u128 *)s3 = *(u128 *)s1;
        f20 = *(float *)(g + 0x234);
        f20 = f20 + f20;
        s3[0] += func_001F9F90(fa) * f20;
        s3[1] += func_001F9FA8(fa) * f20;
        s3[2] += kNeg07 * (k1 - (float)j / k5);
        s0[10] = s3[2];
        if (func_L00_001EFFF0(s2, s3, 2, 0, 0) != 0) {
            got = 1;
            f23 = func_L00_001FF860(*(float *)(base + 0x40), *(float *)(base + 0x44));
            break;
        }
    }
    if (!got) return 0;
    if (!(func_001FA850(*out, func_001FA748(f23, 3.1415927f)) < 1.1348f)) return 0;

    f20 = 0.0f;
    do {
        *(u128 *)s3 = *(u128 *)s1;
        s3[2] = s0[6];
        s3[0] += func_001F9F90(f23) * f20;
        s3[1] += func_001F9FA8(f23) * f20;
        *(u128 *)s2 = *(u128 *)s3;
        s3[2] += k05;
        s0[10] -= k05;
        if (func_L00_001EFFF0(s3, s2, 4, *(int *)(g + 0x2080), 0) != 0) {
            f20 += k07;
        } else {
            *(u128 *)s4 = *(u128 *)s3;
            s4[2] = s0[6];
            f20 = -(k07 * k05);
            s4[0] += func_001F9F90(f23) * f20;
            s4[1] += func_001F9FA8(f23) * f20;
            if (0.5216f < func_001FA850(func_001FA748(f23, 3.1415927f), *out)) return 0;
            return 1;
        }
    } while (f20 < k24);
    return 0;
}
