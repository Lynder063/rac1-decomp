/* NON_MATCHING func_L16_002E66C0 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: BYTES 13/584 (97.8% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Sibling of func_L16_002E6478: updates a trigger moby after checking a transformed position against its local b
 *   Best p0.c is 13/584 bytes off, all just after func_001F9850: SN copies the period into $s0 before loading D_L1
 *   Inlining the global load into the modulo expression did not change the bytes. Same compiler scheduling tie as 
 */
extern char D_L16_0015F6B0_big[] __asm__("D_L16_0015F6B0");
extern char D_0013E633[];
extern float D_L16_001D9A38[];
extern short D_L16_00161EA4;
extern short D_L16_00161EA8;
extern short D_L16_00161EAC;
extern int func_001F9850(int);
extern float func_001FA888(int);
extern float func_001F9FA8(float);
extern int func_001FA8A8(float, int, int);
extern float func_001F9D10(void *, void *);
extern void func_001FA4A0(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9EE8(void *, void *, void *);
extern int func_001F9908(int *);
extern int func_0022ED80_66C0(int, int, void *) __asm__("func_0022ED80");

/* Moves the moby through its trigger states and checks its local bounds. */
void func_L16_002E66C0(unsigned char *m) {
    char *d = *(char **)(m + 0x78);
    char *g;
    float pos[16];
    float mat[4];
    float f;
    int period = func_001F9850(30);
    f = func_001FA888(*(int *)D_L16_0015F6B0_big % period) / func_001FA888(period);
    *(int *)(m + 0x90) = func_001FA8A8(func_001F9FA8(f * 6.28318f - 3.14159f) * 0.5f + 0.5f,
                                      *(int *)&D_L16_00161EA8, *(int *)&D_L16_00161EAC);
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
            mat[3] = 0.0f;
            func_001F9EE8(mat, mat, pos);
            if (D_L16_001D9A38[0] < mat[0] && mat[0] < D_L16_001D9A38[1] &&
                D_L16_001D9A38[2] < mat[1] && mat[1] < D_L16_001D9A38[3] &&
                D_L16_001D9A38[4] < mat[2] && mat[2] < D_L16_001D9A38[5]) {
                func_0022ED80_66C0(1, 0, m);
                m[0xBC] = 1;
                m[0x20] = 2;
                *(int *)d = func_001F9850(*(int *)&D_L16_00161EA4);
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
