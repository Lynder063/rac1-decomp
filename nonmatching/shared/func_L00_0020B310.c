/* NON_MATCHING func_L00_0020B310 -- src/overlays/shared/help_00203E98.c
 * Best so far: BYTES 5/1344 (99.6% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   HeroScanTargets: every 7th frame scans the moby list (D_L00_001ABD80) for the best lock-on target, then steers
 *   Best candidate p7.c (BYTES 5/1344): only difference is one branch in the target-update test, `bestPri < pri ||
 *   retail has `bc1t L; nop` into a re-test of the same compare, ours jump-threads it to `bc1tl; mov.s $f22,$f0`. 
 *   Unblock: a source shape that keeps gcc from threading the second identical compare (unknown). Idioms: fresh lo
 */
extern int func_L00_0025D390(char *);
extern float func_001F9D48(void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern float func_001F9B88(float);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern float func_001FA790(float, float);
extern char *D_L00_001ABD80[];
extern void func_L00_00233EE0(float *, float, float, float);
// picks the best lock-on target for the hero's aim and tunes the camera toward it
void func_L00_0020B310(void) {
    char *g1 = (char *)D_0013E633 + 0xE1D;
    char *g2, *g3, *g4, *g5, *g6;
    int i;
    char *m;
    char *best;
    float bestPri, bestDist;
    float v[8];
    char *q;
    char *info, *info2, *p, *t;
    float f20, f21, s;
    int mode = *(int *)(g1 + 0x208C);
    if (mode != 1 && mode != 4 && mode != 2 && mode != 7 && mode != 0) {
        *(int *)(g1 + 0x2274) = 0;
        return;
    }
    g2 = (char *)D_0013E633 + 0xE1D;
    if (*(unsigned char *)(*(int *)(g2 + 0x2080) + 0x53) == 0x54) return;
    if (D_L00_0015F6B0 % 7 == 0) {
        bestDist = 100000000.0f;
        bestPri = 0.0f;
        best = 0;
        for (i = 0; (m = D_L00_001ABD80[i]) != 0; i++) {
            info = (char *)func_L00_0025D390(m);
            if (info != 0) {
                float d, a, sc, pri;
                d = func_001F9D48(D_0013E633 + 0xE9D, m + 0x10);
                if ((float)*(unsigned char *)(info + 0x38) < d) continue;
                g3 = (char *)D_0013E633 + 0xE1D;
                a = func_001FA850(func_L00_001FF860(*(float *)(m + 0x10) - *(float *)(g3 + 0x80), *(float *)(m + 0x14) - *(float *)(g3 + 0x84)), *(float *)(g3 + 0x98));
                if (1.91986215f < a) continue;
                if (1.04719758f < func_001F9B88(func_L00_001FF860(func_001F9D48(m + 0x10, D_0013E633 + 0xE9D), *(float *)(g3 + 0x88) - *(float *)(m + 0x18)))) continue;
                sc = a * d + d;
                if ((int)m == *(int *)(g3 + 0x2274)) {
                    sc -= 1.5f;
                    if (sc < 0.0f) sc = 0.0f;
                }
                pri = (float)*(unsigned char *)(info + 0x39);
                if (bestPri < pri) goto upd;
                if (sc < bestDist) {
                upd:
                    if (bestPri < pri) bestPri = pri;
                    bestDist = sc;
                    best = m;
                }
            }
        }
        g4 = (char *)D_0013E633 + 0xE1D;
        *(char **)(g4 + 0x2274) = best;
    }
    g5 = (char *)D_0013E633 + 0xE1D;
    if (*(int *)(g5 + 0x2274) == 0) return;
    func_L00_00233EE0(v, 0.0f, 0.0f, 1.2f);
    q = (char *)&v[4];
    qcopy(q, *(char **)(g5 + 0x2274) + 0x10);
    v[6] += 0.5f;
    if (func_L00_001EFFF0(v, q, 2, 0, 0)) *(int *)(g5 + 0x2274) = 0;
    t = *(char **)(g5 + 0x2274);
    if (t == 0) return;
    qcopy(v, t + 0x10);
    info2 = (char *)func_L00_0025D390(t);
    if (info2 != 0) v[2] += (float)*(unsigned char *)(info2 + 0x3A) * 0.125f;
    func_L00_00233EE0(&v[4], 0.3f, 0.0f, 0.85f);
    f20 = func_001FA790(func_L00_001FF860(v[0] - v[4], v[1] - v[5]), *(float *)(g5 + 0x98));
    f21 = func_L00_001FF860(func_001F9D48(v, q), v[6] - v[2]);
    if (f20 > 1.02974427f) f20 = 1.02974427f;
    else if (f20 < -1.02974427f) f20 = -1.02974427f;
    if (f21 > 0.610865235f) f21 = 0.610865235f;
    if (f21 < -0.436332315f) f21 = -0.436332315f;
    g6 = (char *)D_0013E633 + 0xE1D;
    if (scale_ticks(0x4D) - scale_ticks(0x32) < *(int *)(g6 + 0x1C0)) {
        if (f20 > 0.296705961f) f20 = 0.296705961f;
        else if (f20 < -0.296705961f) f20 = -0.296705961f;
        f21 = 0.0f;
    }
    func_L00_0020A858(D_0015EE64 * 0.021f, D_0015EE64 * 0.27f);
    p = D_L00_0017A780;
    *(float *)(p + 0x274) = f21;
    *(float *)(p + 0x278) = f20 * 0.7f;
    func_L00_0020A858(D_0015EE64 * 0.014f, D_0015EE64 * 0.3f);
    *(float *)(p + 0x1C8) = *(float *)(p + 0x278) * 0.55f;
}
