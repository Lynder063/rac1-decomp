/* NON_MATCHING func_L18_002FB6B0 -- src/overlays/l18_veldin2/vendor_002F9D48.c
 * Best so far: BYTES 5/464 (98.9% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # Round 1
 *   Spawns two particle groups (func_L00_0026DEA0 with random spd +-16 / alternating +-16, then sets moby fields) 
 *   Matched shape: counted-down loops (i=1..0, i=2..0), `p = m + 0x20` before the null test, rand(16) result share
 *   # Round 2 (retry)
 *   Key fix: call func_L00_0026DEA0 through the alternate prototype from shared/mobyutil_00261B00.c (`func_L00_002
 */
extern int func_002140B0(int);
extern int func_001F9850(int);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern char *func_L00_0026DEA0_c(void *, int, void *, float, float, float, float, int) __asm__("func_L00_0026DEA0");

void func_L18_002FB6B0(void *a, void *b, void *c, float f0, float f1) {
    char v0[16];
    char v1[16];
    int i;
    char *m;
    char *p;
    int x;
    qcopy(v0, a);
    qcopy(v1, b);
    for (i = 1; i >= 0; i--) {
        m = (char *)func_002140B0(16);
        m = func_L00_0026DEA0_c(v0, func_002140B0(2) ? -(int)m : (int)m, c, 0.0f, 1.0f, 0.9f, f0, 0x7F204080);
        p = m + 0x20;
        if (m) {
            *(short *)(m + 0xA) = func_001F9850(15);
            m[9] = func_001FA898_r(4.0f) + 0x40;
            *(int *)(p + 4) = 2;
            p[0xA] = 0x7F;
            p[0xB] = m[0xA];
        }
    }
    x = 16;
    i = 2;
    do {
        int y = x;
        x = -x;
        m = func_L00_0026DEA0_c(v1, y, c, 0.0f, 1.0f, 0.97f, f1, 0x7FFFFFFF);
        p = m + 0x20;
        if (m) {
            m[9] = func_001FA898_r(4.0f) + 0x40;
            *(short *)(m + 0xA) = func_001F9850(4);
            m[8] = func_002140B0(0xFF);
            *(int *)(p + 4) = 2;
            p[0xA] = 0x7F;
            p[0xB] = m[0xA];
        }
    } while (--i >= 0);
}
