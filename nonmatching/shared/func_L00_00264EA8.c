/* NON_MATCHING func_L00_00264EA8 -- src/overlays/shared/mobyutil_00261B00.c
 * Best so far: BYTES 13/420 (96.9% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L00_00264EA8: spawns effects on a moby: cnt calls of func_L00_00265050 at its own position, then up to cn
 *   Lombyte's port (p0/p3/p4) matches all but 5 instructions: retail builds D_L00_0015F660's address as `lui $s1; 
 *   A local pointer for the address (p1, p2, p5, p6, p7: function top, per branch, per loop) gives 412 bytes (lui 
 */
extern float D_L00_0015F660[] NOT_SDA;
extern void *func_L00_00265050(char *src, int cls, float *pos, void *mat, int a8, int a9, float *v10, float *v11, float scale, float *v12);
extern int func_L00_0025BCF8(void *, int, void *, void *, float);
extern float func_00214158(void);
extern int func_002140B0(int);

/* Spawns a burst of effects on a moby: a fixed set at its own position, then randomly offset ones at points gathered around it. Adapted from Lombyte (MIT) for PAL: overlays/shared/gameplay_entities_002630b8.c, FUN_L00_00263e30. */
void func_L00_00264EA8(char *m, int n, int cnt, int base, int range, int cnt2, int flag) {
    char buf[256] __attribute__((aligned(16)));
    float v[4] __attribute__((aligned(16)));
    int mode = 0;
    int i, k;
    if (flag) {
        mode = 2;
    }
    if (n > 0) {
        if (cnt > 0) for (i = 0; i < cnt; i++) {
            func_L00_00265050(m, n + i, (float *)(m + 0x10), m + 0x40, 0, mode, D_L00_0015F660, D_L00_0015F660, 0.0f, D_L00_0015F660);
        }
    }
    if (n > 0 && range > 0) {
        k = func_L00_0025BCF8(m, cnt2, buf, (void *)0xFFFF, 1000.0f);
        if (k) {
            for (i = 0; i < cnt2 && i < k; i++) {
                func_001F9BC0(v);
                v[0] = func_00214158();
                v[1] = func_00214158();
                v[2] = func_00214158();
                func_L00_00265050(m, base + func_002140B0(range), (float *)(buf + i * 16), v, 0, mode, D_L00_0015F660, D_L00_0015F660, 0.0f, D_L00_0015F660);
            }
        }
    }
}
