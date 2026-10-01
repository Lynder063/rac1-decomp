/* NON_MATCHING func_L16_002E6478 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: BYTES 13/584 (97.8% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moves the moby through its trigger states and checks transformed position against a local box.
 *   Best p3.c is 13/584 bytes off, all after func_001F9850: retail loads the large global into $v1 before copying 
 *   Changing assignment order and the global's C declaration produced identical code. Needs a compiler scheduling/
 */
extern char D_L16_0015F6B0_big[] __asm__("D_L16_0015F6B0");
extern char D_0013E633[];
extern float D_L16_001D9A20[];
extern short D_L16_00161E98;
extern short D_L16_00161E9C;
extern short D_L16_00161EA0;
extern int func_001F9850(int);
extern float func_001FA888(int);
extern float func_001F9FA8(float);
extern int func_001FA8A8(float, int, int);
extern float func_001F9D10(void *, void *);
extern void func_001FA4A0(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9EE8(void *, void *, void *);
extern int func_001F9908(int *);
extern int func_0022ED80_6478(int, int, void *) __asm__("func_0022ED80");

/* Moves the moby through its trigger states and checks its local bounds. */
void func_L16_002E6478(unsigned char *m) {
    char *d = *(char **)(m + 0x78);
    char *g;
    float pos[16];
    float mat[4];
    float f;
    int period = func_001F9850(30);
    f = func_001FA888(*(int *)D_L16_0015F6B0_big % period) / func_001FA888(period);
    *(int *)(m + 0x90) = func_001FA8A8(func_001F9FA8(f * 6.28318f - 3.14159f) * 0.5f + 0.5f,
                                      *(int *)&D_L16_00161E9C, *(int *)&D_L16_00161EA0);
    switch (m[0x20]) {
    case 0:
        m[0x20] = 1;
        m[0x30] = 0xFF;
        break;
    case 1:
        g = D_0013E633 + 0xE9D;
        if (func_001F9D10(m + 0x10, g) < 16.0f) {
            func_001FA4A0(pos, m + 0xC0);
            func_001F9BF0(mat, g, m + 0x10);
            func_001F9EE8(mat, mat, pos);
            if (D_L16_001D9A20[0] < mat[0] && mat[0] < D_L16_001D9A20[1] &&
                D_L16_001D9A20[2] < mat[1] && mat[1] < D_L16_001D9A20[3] &&
                D_L16_001D9A20[4] < mat[2] && mat[2] < D_L16_001D9A20[5]) {
                m[0xBC] = 1;
                m[0x20] = 2;
                *(int *)d = func_001F9850(*(int *)&D_L16_00161E98);
                func_0022ED80_6478(1, 0, m);
            }
        }
        break;
    case 2:
        if (func_001F9908((int *)d)) {
            m[0x20] = 1;
            m[0xBC] = 0;
        }
        break;
    }
}
