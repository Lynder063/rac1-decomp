/* NON_MATCHING func_L07_00320B50 -- src/overlays/l07_umbris/vendor_0031BDB8.c
 * Best so far: BYTES 14/384 (96.3% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L07_00320B50: UpdateMoby state machine (0 -> 1, 1 waits for a positive float at x+0x2C from func_L00_0025
 *   Difference: retail schedules lui/addiu of the D_L07_0015F660 pointer, then the a0 move and jal func_L01_002797
 *   Would unblock: unknown source form that changes the priority of the pos addiu relative to the pointer load.
 */
extern char *func_L00_0025B478(void *, int, int);
extern int func_0022ED80(int, int, int);
extern void func_L01_00279790(void *);
extern void func_L00_00265050(void *, int, void *, void *, int, int, float, void *, void *, void *);
extern void func_0020D678(void *);
extern char D_L07_0015F660[];

// Waits for a trigger, then spawns three effects at the moby and deletes it.
void func_L07_00320B50(unsigned char *m) {
    int flag = 0;
    float z;
    char *p, *pos, *vel;
    char *x = func_L00_0025B478(m, 0x10000, 0);
    switch (m[0x20]) {
    case 0:
        m[0x20] = 1;
        break;
    case 1:
        if (x != 0) {
            if (*(float *)(x + 0x2C) > 0.0f) flag = 1;
        }
        if (flag) m[0x20] = 2;
        break;
    case 2:
        func_0022ED80(0, 0, (int)m);
        z = 0.0f;
        p = D_L07_0015F660;
        pos = m + 0x10;
        func_L01_00279790(m);
        vel = m + 0x40;
        func_L00_00265050(m, 0x698, pos, vel, 0, 0, z, p, p, p);
        func_L00_00265050(m, 0x699, pos, vel, 0, 0, z, p, p, p);
        func_L00_00265050(m, 0x69A, pos, vel, 0, 0, z, p, p, p);
        func_0020D678(m);
        break;
    }
}
