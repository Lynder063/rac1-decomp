/* NON_MATCHING func_L02_002E1570 -- src/overlays/l02_aridia/vendor_002A59D8.c
 * Best so far: SIZE ours 332 / retail 328, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_002607A8(void *a, float x);
extern float func_001F9CB8(void *);
extern float D_0015EE6C MACRO_ADDR;
extern short D_L02_00160058;

/* moves a moby through three states: latch position, wait for a peer to reach state 4, then slide toward it */
void func_L02_002E1570(char *moby) {
    char *data = *(char **)(moby + 0x78);
    switch (moby[0x20]) {
    case 0:
        qcopy(data, moby + 0x10);
        moby[0x20] = 1;
        break;
    case 1: {
        int id = *(int *)(data + 0x10);
        if (id >= 0) {
            char *m = *(char **)&D_L02_00160058 + (id << 8);
            int t = *(short *)(m + 0xA6);
            if (t == 0x267 || t == 0x23F) {
                if (((unsigned char *)m)[0x20] == 4) moby[0x20] = 2;
            }
        }
        break;
    }
    case 2: {
        float a[4];
        float b[4];
        char *pos = moby + 0x10;
        func_L00_001FF4B0(a, moby + 0xD0, -2.0f);
        func_001F9BD8(a, data, a);
        func_001F9BF0(b, a, pos);
        func_L00_002607A8(b, D_0015EE6C + D_0015EE6C);
        func_001F9BD8(pos, pos, b);
        if (func_001F9CB8(b) == 0.0f) moby[0x20] = 3;
        break;
    }
    }
}
