/* NON_MATCHING func_L18_002F7F00 -- src/overlays/l18_veldin2/vendor_002F2AE0.c
 * Best so far: SIZE ours 872 / retail 876, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped with p3.c as the best candidate: SIZE 872 vs retail 876, one instruction shy of the size.
 *   What it does: aims a moby (angle from two table entries at D_0013E633+0xE1D and the block at D_L18_0016016C + 
 *   Where it differs (p3):
 *   - Layout of the 0xF test: retail puts the 20.0 block out of line behind a beq, and tries the 0xF test before t
 *   - The first table/block loads: retail reads the block base and idx before the T+0x84 load, then T+0x80. Comput
 *   - Retail reloads the block base and idx from data after each call (done); the second table base at T+0xE9D is 
 *   Would unblock: a way to get the 0xF/else layout retail uses without a branch-likely, or a form for the three-v
 */
extern float func_L00_001FF860(float, float);
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001F9D48(void *, void *);
extern int func_L18_002F7CD8(char *moby, float arg, void *x);
extern float func_00214D28(float *p, float target, float maxstep);
extern char D_0013E633[];
extern char *D_L18_0016016C MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern short D_L18_00162400;
extern short D_L18_00162404;
extern short D_L18_001623EC;
extern short D_L18_001623E8;
extern short D_L18_001623E4;
extern short D_L18_001623E0;

// Level 18 veldin2: turns a moby toward its target angle and eases its scale.
void func_L18_002F7F00(char *moby) {
    char *data = *(char **)(moby + 0x78);
    float sp[3];
    float f20, f21, f22, f23, f0v, d0, d1, x, scale;
    char *blk;
    int idx;

    idx = *(int *)(data + 0x344);
    blk = D_L18_0016016C + (idx << 7);
    f20 = func_L00_001FF860(*(float *)(D_0013E633 + 0xE1D + 0x80) - *(float *)(blk + 0x30),
                            *(float *)(D_0013E633 + 0xE1D + 0x84) - *(float *)(blk + 0x34));
    f21 = func_L00_001FF860(*(float *)(data + 0x3C0) - *(float *)((D_L18_0016016C + (*(int *)(data + 0x344) << 7)) + 0x30),
                            *(float *)(data + 0x3C4) - *(float *)((D_L18_0016016C + (*(int *)(data + 0x344) << 7)) + 0x34));
    f0v = func_001FA790(f21, f20);
    if (f0v < 0.0f) {
        f0v = -2.3561945f;
    } else {
        f0v = 2.3561945f;
    }
    f20 = func_001FA748(f20, f0v);
    f20 = func_001FA790(f20, f21);
    if (0.17453292f < f20) {
        f20 = 0.17453292f;
    } else if (f20 < -0.17453292f) {
        f20 = -0.17453292f;
    }
    f20 = func_001FA748(f20, f21);
    if (((unsigned char *)moby)[0x20] == 2) {
        sp[0] = func_001F9F90(f20) * *(float *)&D_L18_00162400;
        f0v = func_001F9FA8(f20);
        ((int *)sp)[2] = 0;
        sp[1] = f0v * *(float *)&D_L18_00162400;
    } else {
        sp[0] = func_001F9F90(f20) * *(float *)&D_L18_00162404;
        f0v = func_001F9FA8(f20);
        ((int *)sp)[2] = 0;
        sp[1] = f0v * *(float *)&D_L18_00162404;
    }
    func_001F9BD8(sp, sp, (D_L18_0016016C + (*(int *)(data + 0x344) << 7)) + 0x30);
    d0 = func_001F9D48(data + 0x3C0, (D_L18_0016016C + (*(int *)(data + 0x344) << 7)) + 0x30);
    if (*(float *)&D_L18_00162404 + 1.0f < d0) {
        scale = 10.0f;
    } else {
        if (*(int *)(D_0013E633 + 0xE1D + 0x208C) == 0xF) {
            scale = 20.0f;
        } else {
            f20 = *(float *)&D_L18_001623EC;
            f21 = *(float *)&D_L18_001623E8;
            f23 = *(float *)&D_L18_001623E4;
            f22 = *(float *)&D_L18_001623E0;
            if (((unsigned char *)moby)[0x20] == 0xD) {
                f21 = f21 * 0.5f;
                f20 = f20 * 0.5f;
                f23 = 2.0f;
                f22 = 5.5f;
            } else if (((unsigned char *)moby)[0x20] == 0xF) {
                f21 = f21 * 1.5f;
                f22 = 10.0f;
                f23 = 6.0f;
                f20 = f20 * 1.5f;
            }
            d1 = func_001F9D48(moby + 0x10, D_0013E633 + 0xE9D);
            if (f21 < d1) {
                x = f21;
            } else if (d1 < f20) {
                x = f20;
            } else {
                x = d1;
            }
            scale = (f22 - f23) * (1.0f - (x - f20) / (f21 - f20)) + f23;
        }
    }
    func_L18_002F7CD8(moby, scale * D_0015EE6C, sp);
    func_00214D28((float *)(data + 0x3C8), *(float *)((D_L18_0016016C + (*(int *)(data + 0x344) << 7)) + 0x38), D_0015EE6C * 4.0f);
}
