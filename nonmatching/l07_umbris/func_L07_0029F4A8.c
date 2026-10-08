/* NON_MATCHING func_L07_0029F4A8 -- src/overlays/l07_umbris/partupd_0029D2B8.c
 * Best so far: SIZE ours 880 / retail 872, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 7 sphere/segment closest-approach helper: writes a clamped point to dst and returns a distance term; two
 *   Best candidate p0.c: 880 bytes against retail 872, the whole body matches except the epilogue. Retail keeps th
 *   Unblock: a way to make gcc share the epilogue and keep the result in $f1 without an extra move.
 */
extern void func_001F9BF0(void *dst, void *a, void *b);
extern float func_001F9C78(void *a, void *b);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001F9D10(void *, void *);
extern float func_001F9B50(float);
extern float func_001F9CB8(void *a);
extern float func_001F9B88(float);

typedef int u128 __attribute__((mode(TI)));

/* Clamped closest-approach point of a moving sphere on level 7; writes the point to dst, returns its distance term. */
float func_L07_0029F4A8(char *dst, char *a1, char *a2, char *a3, char *a4, float f) {
    u128 v[5];
    float r1, r2, r3, r4, r5, t20, lo, hi, L, d, f21, t22, thr, f1, ap;

    func_001F9BF0(v + 0, a3, a2);
    func_001F9BF0(v + 1, a4, a3);
    L = func_001F9C78(v + 1, v + 1);
    d = func_001F9C78(v + 0, v + 1);
    f21 = -d / L;
    func_001F9C30(v + 2, v + 1, f21);
    func_001F9BD8(v + 2, v + 2, a3);
    r1 = func_001F9D10(v + 2, a2);
    if (r1 < f) {
        ap = f * f - r1 * r1;
        t20 = func_001F9B50(ap);
        t20 = t20 / func_001F9CB8(v + 1);
        lo = f21 - t20;
        if (lo < 0) lo = 0;
        else if (lo > 1) lo = 1;
        hi = f21 + t20;
        if (hi < 0) hi = 0;
        else if (hi > 1) hi = 1;
        func_001F9C30(v + 3, v + 1, lo);
        func_001F9BD8(v + 3, v + 3, a3);
        r2 = func_001F9D10(v + 3, a2);
        t22 = func_001F9B88(r2 - f);
        thr = f * 0.01f;
        if (t22 < thr) t22 = 0;
        func_001F9C30(v + 4, v + 1, hi);
        func_001F9BD8(v + 4, v + 4, a3);
        r3 = func_001F9D10(v + 4, a2);
        f21 = func_001F9B88(r3 - f);
        if (f21 < thr) f21 = 0;
        if (t22 < f21) {
            qcopy(dst, v + 3);
            return t22;
        }
        if (t22 == f21) {
            r4 = func_001F9D10(v + 3, a1);
            r5 = func_001F9D10(v + 4, a1);
            if (r4 < r5) {
                qcopy(dst, v + 3);
                return t22;
            }
        }
        qcopy(dst, v + 4);
        return f21;
    } else {
        if (f21 < 0) {
            qcopy(dst, a3);
            f1 = func_001F9B88(func_001F9D10(dst, a2) - f);
        } else if (1.0f < f21) {
            qcopy(dst, a4);
            f1 = func_001F9B88(func_001F9D10(dst, a2) - f);
        } else {
            qcopy(dst, v + 2);
            f1 = r1;
        }
        if (!(f1 >= f * 0.01f)) f1 = 0;
        return f1;
    }
}
