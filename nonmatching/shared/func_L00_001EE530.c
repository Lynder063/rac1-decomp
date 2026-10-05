/* NON_MATCHING func_L00_001EE530 -- src/overlays/shared/effects_001EE2E0.c
 * Best so far: BYTES 67/356 (81.2% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_001E9730();
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CE8(void *);
extern int func_L00_001EE698_u(void *, void *, float) __asm__("func_L00_001EE698");
extern char D_L00_001E7C00[];
extern int D_L00_0015F080;

/* finds the first sphere in a grid cell that contains the point */
char *func_L00_001EE530(float *pos, float r) {
    float v[4];
    float d[4];
    float *pv;
    float t;
    float k;
    int x, y, i;
    char *tab;
    char *cell;
    char *s;
    k = 0.0625f;
    pv = v;
    qcopy(v, pos);
    x = func_001FA898_r(v[0] * k);
    y = func_001FA898_r(v[1] * k);
    if (x < 0 || y < 0 || x > 64 || y > 64) {
        func_001E9730(D_L00_001E7C00);
        return 0;
    }
    tab = (char *)D_L00_0015F080;
    cell = (char *)((int *)tab)[y * 64 + x];
    if (cell == 0) return 0;
    cell += (int)tab;
    s = cell + 0x10;
    for (i = 0; i < *(int *)cell; i++) {
        func_001F9BF0(d, s, pv);
        t = *(float *)(s + 0xC);
        d[3] = 1.0f;
        if (func_001F9CE8(d) < t + r) {
            if (func_L00_001EE698_u(pv, s, r)) return s;
        }
        s += 0x30;
    }
    return 0;
}
