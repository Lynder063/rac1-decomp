/* NON_MATCHING func_L13_002B5368 -- src/overlays/l13_gemlik/vendor_002B2020.c
 * Best so far: SIZE ours 1508 / retail 1512, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Blarg turret update (moby class 29, level 13): switch on moby[0x20] with a shared CE call and post/tail copy. 
 *   Still off: the case 3 D_0015EE6C load (retail loads it in the bnez delay slot, ours is beql), the func_00214D2
 *   Budget (10 runs) spent; the next step is regalloc on p5 for the case 5 float and a branch shape that gives bne
 */
extern void func_L13_002B5A88(unsigned char *moby);
extern void func_L00_00264B40(float, int, int, unsigned char *);
extern void func_00213DE0(void *, int, int, int);
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern float func_001F9D48(void *, void *);
extern int func_00215570(void *arg0, int arg1);
extern int func_L00_00258BC8(int, int);
extern float func_L00_0025CE58(void *, float, void *, float, float, float);
extern float func_00214D28(float *, float, float);
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern void func_L13_002B5950(char *moby);
extern void func_L00_002584A8(void *, int, int);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, int, float, float, int, int, int, int);
extern void func_0020D678(void *);
extern void func_L00_00258DB0(float *, float, float);
extern unsigned char D_0013E633[];
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70_m __asm__("D_0015EE70") MACRO_ADDR;

/* Update for moby class 29 (blarg_turret) on level 13: turns toward its target and fires. */
void func_L13_002B5368(unsigned char *moby)
{
    typedef int u128L __attribute__((mode(TI)));
    char *data;

    char *t;
    char *p;
    float d, r, x, k, dx, dy, v[4];
    int n, a, b;

    data = *(char **)(moby + 0x78);
    func_L13_002B5A88(moby);
    t = *(char **)(data + 0x40);
    {
        char *obj = *(char **)(data + 0x5C);
        if (obj != 0) {
            if (*(short *)(obj + 0xA6) == 0x24 && (signed char)obj[0x20] >= 0)
                func_L00_00264B40(2.7f, (int)obj, 1, data + 0x70);
        }
    }

    switch (moby[0x20]) {
    case 0:
        p = *(char **)(moby + 0x24);
        *(float *)(moby + 0x2C) = *(float *)(p + 0x24) * 1.5f;
        *(void **)(data + 0x5C) = func_L13_002B5B08(moby);
        *(float *)(data + 0x54) = *(float *)(moby + 0x48);
        if (moby[0x53]) func_00213DE0(moby, 0, 0, 10);
        moby[0x20] = 1;
        goto tail;
    case 1:
        dx = *(float *)(t + 0x10) - *(float *)(moby + 0x10);
        dy = *(float *)(t + 0x14) - *(float *)(moby + 0x14);
        r = func_001FA850(func_L00_001FF860(dx, dy), *(float *)(data + 0x54));
        if (r < 1.5707964f) {
            d = func_001F9D48(moby + 0x10, t + 0x10);
            if (d < 20.0f) {
                n = *(int *)(data + 0x50);
                if (n == -1 || func_00215570(D_0013E633 + 0xEED, n) != 0) {
                    *(float *)(data + 0x68) = 8.0f;
                    if (moby[0x53] != 1) {
                        a = func_L00_00258BC8(0, 3);
                        b = func_L00_00258BC8(7, 13);
                        func_00213DE0(moby, 1, a, b);
                    }
                    moby[0x20] = 3;
                }
            }
        }
        func_L00_0025CE58(moby + 0x48, *(float *)(data + 0x54), data + 0x60, D_0015EE70_m * 12.566371f, D_0015EE70_m * 12.566371f, D_0015EE6C * 12.566371f);
        {
            char *obj = *(char **)(data + 0x5C);
            if (obj != 0 && *(short *)(obj + 0xA6) == 0x24 && ((unsigned char *)obj)[0x20] != 0xFE && ((unsigned char *)obj)[0x20] != 0xFD && ((unsigned char *)obj)[0x20] != 2)
                goto tail;
        }
        if (moby[0x53]) func_00213DE0(moby, 0, 0, func_L00_00258BC8(7, 13));
        *(float *)(data + 0x64) = 1.0f;
        moby[0x20] = 5;
        goto tail;
    case 3:
        dx = *(float *)(t + 0x10) - *(float *)(moby + 0x10);
        dy = *(float *)(t + 0x14) - *(float *)(moby + 0x14);
        r = func_001FA850(func_L00_001FF860(dx, dy), *(float *)(data + 0x54));
        if (r >= 1.5707964f) goto s3;
        d = func_001F9D48(moby + 0x10, t + 0x10);
        if (22.0f < d) goto s3;
        n = *(int *)(data + 0x50);
        if (n == -1) {
            k = D_0015EE6C;
            goto c3;
        }
        if (func_00215570(D_0013E633 + 0xEED, n) != 0) {
            k = D_0015EE6C;
            goto c3;
        }
    s3:
        if (moby[0x53]) func_00213DE0(moby, 0, 0, func_L00_00258BC8(7, 13));
        moby[0x20] = 1;
        goto tail;
    c3:
        func_00214D28((float *)(data + 0x68), 20.0f, k * 6.0f);
        dx = *(float *)(t + 0x10) - *(float *)(moby + 0x10);
        dy = *(float *)(t + 0x14) - *(float *)(moby + 0x14);
        r = func_001FA790(func_L00_001FF860(dx, dy), *(float *)(data + 0x54));
        x = *(float *)(data + 0x6C) * 0.017453292f;
        if (x < r) r = x;
        if (r < -x) r = -x;
        r = func_001FA748(r, *(float *)(data + 0x54));
        func_L00_0025CE58(moby + 0x48, r, data + 0x60, D_0015EE70_m * 12.566371f, D_0015EE70_m * 12.566371f, D_0015EE6C * 12.566371f);
        func_L13_002B5950((char *)moby);
        {
            char *obj = *(char **)(data + 0x5C);
            if (obj != 0 && *(short *)(obj + 0xA6) == 0x24 && ((unsigned char *)obj)[0x20] != 0xFE && ((unsigned char *)obj)[0x20] != 0xFD && ((unsigned char *)obj)[0x20] != 2)
                goto tail;
        }
        if (moby[0x53]) func_00213DE0(moby, 0, 0, func_L00_00258BC8(7, 13));
        *(float *)(data + 0x64) = 1.0f;
        moby[0x20] = 5;
        goto tail;
    case 4:
        func_L00_00258DB0(v, 0.5f, 1.0f);
        func_L00_002584A8(moby, 0, -1);
        func_L00_0025F4A8(moby, v, moby + 0x10, 0.0f, 0.0f, 5, 2, 4, 2.0f, 1.0f, 9.0f, -1, 1.0f, 15.0f, 1, 1, -1, 0);
        func_0020D678(moby);
        return;
    case 5:
        func_L00_0025CE58(moby + 0x48, *(float *)(data + 0x54), data + 0x60, D_0015EE70_m * 12.566371f, D_0015EE70_m * 12.566371f, D_0015EE6C * 25.132742f);
        x = *(float *)(data + 0x64) - 1.0f;
        if (x <= 0.0f) {
            *(float *)(data + 0x64) = x;
            moby[0x20] = 4;
        }
        goto tail;
    default:
        goto tail;
    }

tail:
    {
        char *obj = *(char **)(data + 0x5C);
        if (obj != 0 && *(short *)(obj + 0xA6) == 0x24 && ((unsigned char *)obj)[0x20] != 0xFE && ((unsigned char *)obj)[0x20] != 0xFD) {
            qcopy(obj + 0x40, moby + 0x40);
            *(u128L *)(obj + 0xC0) = *(u128L *)(moby + 0xC0);
            *(u128L *)(obj + 0xD0) = *(u128L *)(moby + 0xD0);
            *(u128L *)(obj + 0xE0) = *(u128L *)(moby + 0xE0);
        } else {
            *(char **)(data + 0x5C) = 0;
        }
    }
}
