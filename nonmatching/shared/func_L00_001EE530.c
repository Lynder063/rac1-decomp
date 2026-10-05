/* NON_MATCHING func_L00_001EE530 -- src/overlays/shared/effects_001EE2E0.c
 * Best so far: SIZE ours 368 / retail 356, checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   (`addiu $29,$29,0xA0`); the next symbol is 360 bytes on, so the real function is 356 and try_func's SIZE check
 *   pass. Our words equal retail's (masked) except scheduling: prologue order (retail puts lui/mtc1 of 0.0625 afte
 *   register saves, ours hoists it between them), `lw D_L00_0015F080` before `addu` (ours reverse), and `daddu $18
 *   in the blez delay slot (ours puts `addiu $16,$17,0x10` there). Needed: `float *pv = v;` (gives the `daddu $20,
 *   copy), proto `int func_L00_001EE698(void *, void *, float)`, `extern char D_L00_001E7C00[]` (else $gp access),
 *   `t = s[3]` read before `d[3] = 1.0f`. For the lead: fix the size row for this function.
 *   q28/t01: best.c fails COMPILE: the file later declares func_L00_001EE698 with typed args, so declare ours as `
 *   Left: prologue order (retail lui/mtc1 of 0.0625 after the saves), `lw D_L00_0015F080` before the `addu`, `dadd
 */
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_001E9730();
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CE8(void *);
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
            if (func_L00_001EE698(pv, s, r)) return s;
        }
        s += 0x30;
    }
    return 0;
}
