/* NON_MATCHING func_L02_002E1400 -- src/overlays/l02_aridia/vendor_002A59D8.c
 * Best so far: SIZE ours 372 / retail 368, checked 2026-10-02.
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

// Moby update: copy position, then wait for a partner moby and slide toward it.
void func_L02_002E1400(unsigned char *moby) {
    char *d = *(char **)(moby + 0x78);
    float a[4];
    float b[4];
    switch (moby[0x20]) {
    case 0:
        qcopy(d, moby + 0x10);
        moby[0x20] = 1;
        break;
    case 1:
        if (*(int *)(d + 0x10) >= 0) {
            unsigned char *o = (unsigned char *)((*(int *)(d + 0x10) << 8) + *(int *)&D_L02_00160058);
            short c = *(short *)(o + 0xA6);
            if (c == 0x267 || c == 0x23F) {
                if (o[0x20] == 4) {
                    moby[0x20] = 2;
                    func_0022ED80(0, 0, (int)moby);
                }
            }
        }
        break;
    case 2:
        func_L00_001FF4B0(a, moby + 0xD0, 2.0f);
        func_001F9BD8(a, d, a);
        func_001F9BF0(b, a, moby + 0x10);
        func_L00_002607A8(b, D_0015EE6C + D_0015EE6C);
        func_001F9BD8(moby + 0x10, moby + 0x10, b);
        if (func_001F9CB8(b) == 0.0f) {
            func_0022ED80(1, 0, (int)moby);
            moby[0x20] = 3;
        }
        break;
    }
}
