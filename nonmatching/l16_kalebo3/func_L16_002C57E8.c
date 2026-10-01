/* NON_MATCHING func_L16_002C57E8 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: SIZE ours 532 / retail 540, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Checks a nearby point; on success spawns four effects and a moby, otherwise updates the moby's state.
 *   Best p9.c is 39/540 bytes off, all within the first 0x50 bytes: prologue save order and two quadword copy addr
 *   The ten trial forms included qcopy, 128-bit C copies, and pointer locals. Matching the prologue needs a compil
 */
typedef int u128 __attribute__((mode(TI)));
extern int func_L00_001F10E0(float, void *, int, void *);
extern float func_002140F8(float, float);
extern float func_00214158(void);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9BD8(void *, void *, void *);
extern void *func_L00_002CD3B8(void *, void *, void *);
extern int func_0022ED80_57(int, int, void *) __asm__("func_0022ED80");
extern void func_00213DE0(void *, int, int, int);
extern int func_001F9850(int);
extern float D_0015EE6C MACRO_ADDR;
extern short D_L16_001619A8;
extern short D_L16_001619AC;
extern short D_L16_001619B0;
extern short D_L16_001619B4;
extern short D_L16_001619B8;
extern short D_L16_001619BC;

/* Spawns effects around a moby when a nearby position is valid. */
void func_L16_002C57E8(unsigned char *m, void *p) {
    float origin[4];
    float pos[4];
    float vel[4];
    float out[4];
    float a, b, radius, speed;
    int i;
    char *d;
    qcopy(origin, p);
    qcopy(m + 0x10, origin);
    qcopy(pos, origin);
    origin[2] += 0.3f;
    if (func_L00_001F10E0(0.2f, pos, 0, m)) {
        i = 3;
        do {
            radius = func_002140F8(*(float *)&D_L16_001619B8, *(float *)&D_L16_001619BC);
            a = func_00214158();
            b = func_00214158();
            func_00215C00(out, radius, a, b);
            out[2] += *(float *)&D_L16_001619B4;
            func_001F9BD8(out, out, m + 0x10);
            a = func_002140F8(*(float *)&D_L16_001619AC * D_0015EE6C,
                                   *(float *)&D_L16_001619B0 * D_0015EE6C);
            b = func_00214158();
            func_00215C00(vel, a, b, *(float *)&D_L16_001619A8 * 0.017453292f);
            speed = func_002140F8(3.5f, 5.5f);
            vel[2] = speed * D_0015EE6C;
            func_L00_002CD3B8(m, out, vel);
        } while (--i >= 0);
        func_0022ED80_57(1, 0, m);
    } else {
        d = *(char **)(m + 0x78);
        *(float *)(d + 0x78) = 1.0f;
        if (m[0x53] != 2) func_00213DE0(m, 2, 0, 1);
        *(unsigned short *)(m + 0x34) = (*(unsigned short *)(m + 0x34) | 0x1000) & 0xFFBE;
        *(int *)(m + 0x94) = *(int *)(*(char **)(m + 0x24) + 0x10);
        m[0x20] = 4;
        *(short *)(d + 0x66) = func_001F9850(0xB4);
    }
}
