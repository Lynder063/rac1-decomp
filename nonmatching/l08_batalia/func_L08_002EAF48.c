/* NON_MATCHING func_L08_002EAF48 -- src/overlays/l08_batalia/vendor_002EAF48.c
 * Best so far: SIZE ours 2068 / retail 2084, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   State machine on moby+0x20 (cases 0,1,2,3,0x63). Case 0 (spawn, table lookups, func_002140F8/func_001F9878/fun
 *   Stopped at 12 of 14 runs (p7.c best at 2068 of 2084 bytes). Open: the 16-byte temp (tmp, retail at 0($sp)) lan
 */
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80(int, int, int);
extern void func_0020D678(void *);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern void func_L08_002EA930(char *moby);
extern float func_L00_001FF860(float, float);
extern void func_L00_002592B0(char *moby, float *vel, float target, float k, float d, float max);
extern float func_001F9D10(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CB8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L08_002EAB30(char *moby);
extern void func_L08_002EADF0(char *arg);
extern void func_L00_00250800(void *, int, void *);
extern float func_001FA748(float, float);
extern float func_001FA790(float, float);
extern int func_001F9908(int *arg0);
extern float func_00214158(void);
extern void func_L00_00260108(void *, void *, int, float, float);
extern char *func_L08_002DF758(void *, void *, void *, float, float);
extern s32 D_0015EE84 MACRO_ADDR;
extern char *D_L08_00160058 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern int D_L08_001B0FB0[];
extern unsigned char D_0014171B[] NOT_SDA;
extern int D_L08_00161DD0 SDATA(D_L08_00161DD0);
extern float D_L08_00161DC4 SDATA(D_L08_00161DC4);

/* Level 08 moby update (class 463): a state machine that homes the moby onto its target and spawns its child. */
void func_L08_002EAF48(char *moby) {
    char *data = *(char **)(moby + 0x78);
    float s30[4];
    float s20[4];
    float s10[4];
    float tmp[4];
    if (D_L08_00161DD0 != 0) return;
    if (func_L00_0028EB98(moby, *(short *)(data + 0x17E)) == 0) {
        *(short *)(data + 0x17E) = func_0022ED80(3, 4, (int)moby);
    }
    switch (*(unsigned char *)(moby + 0x20)) {
    case 0:
        if ((D_0014171B + 0xAA35)[*(unsigned char *)(moby + 0xB0) + (D_0015EE84 << 4)] == 0xFF) {
            func_0020D678(moby);
            return;
        }
        *(int *)(data + 0x10) = D_L08_001B0FB0[*(int *)(data + 0x14)];
        *(int *)(data + 0x40) = D_L08_001B0FB0[*(int *)(data + 0x44)];
        *(int *)(data + 0x178) = func_001FA898_r(func_001F9878(func_002140F8(300.0f, 600.0f)));
        *(unsigned short *)(moby + 0x34) |= 0x4000;
        qcopy(moby + 0x10, *(char **)(data + 0x40) + 0x10);
        func_L08_002EA930(moby);
        *(unsigned char *)(moby + 0x20) = 2;
        {
            char *p = *(char **)(data + 0x40);
            *(float *)(moby + 0x48) = func_L00_001FF860(*(float *)(p + 0x20) - *(float *)(moby + 0x10), *(float *)(p + 0x24) - *(float *)(moby + 0x14));
        }
        return;
    case 1: {
        int t = *(int *)*(char **)(data + 0x10);
        int m = (*(int *)data + t + *(signed char *)(data + 4)) % t;
        int o = m << 4;
        char *e2 = D_L08_00160058 + (*(int *)(data + 0x170) << 8);
        float f;
        float r;
        f = func_L00_001FF860(*(float *)(*(char **)(data + 0x10) + o + 0x10) - *(float *)(moby + 0x10), *(float *)(*(char **)(data + 0x10) + o + 0x14) - *(float *)(moby + 0x14));
        func_L00_002592B0(moby, (float *)(data + 0x174), f, 0.004f, 0.3f, 0.02f);
        qcopy(tmp, *(char **)(data + 0x10) + o + 0x10);
        r = func_001F9D10((moby + 0x10), tmp);
        if (r < 0.5f) *(int *)data = m;
        func_001F9BF0(s10, tmp, (moby + 0x10));
        f = func_001F9CB8(s10);
        if (D_L08_00161DC4 * D_0015EE6C < f) func_L00_001FF4B0(s10, s10, D_L08_00161DC4 * D_0015EE6C);
        func_001F9BD8((moby + 0x10), (moby + 0x10), s10);
        func_L08_002EAB30(moby);
        func_L08_002EADF0(moby);
        if (*(unsigned char *)(moby + 0xBC)) {
            *(unsigned char *)(moby + 0xBC) = 0;
            func_L00_00250800(*(void **)(data + 0xA0), 1, s20);
            f = func_002140F8(0.17453292f, 0.52359878f);
            {
                float dx = *(float *)(e2 + 0x10) - *(float *)(moby + 0x10);
                float dy = *(float *)(e2 + 0x14) - *(float *)(moby + 0x14);
                float g;
                func_001FA748(func_L00_001FF860(dx, dy), 3.1415927f);
                g = func_002140F8(-0.26179939f, 0.78539816f);
                g = func_001FA748(g, g);
                if (g > 0) {
                    if (g < 0.34f) g = 0.34f;
                } else if (g > -0.34f) {
                    g = -0.34f;
                }
                func_L00_001FF4B0(s30, s10, (D_L08_00161DC4 + D_L08_00161DC4) * D_0015EE6C);
                {
                    char *r2 = func_L08_002DF758((moby + 0x10), e2, s30, f, g);
                    *(float *)(r2 + 0x2C) = *(float *)(*(char **)(r2 + 0x24) + 0x24) / 5.0f;
                    {
                        char *d2 = *(char **)(e2 + 0x78);
                        if (*(char **)(d2 + 0x60) == 0) {
                            *(char **)(d2 + 0x60) = r2;
                        } else {
                            int i;
                            for (i = 1; i < 8; i++) {
                                if (*(char **)(d2 + 0x60 + i * 4) == 0) {
                                    *(char **)(d2 + 0x60 + i * 4) = r2;
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
        return;
    }
    case 2: {
        char *pos;
        int idx = *(int *)(data + 0x30);
        int n = *(int *)*(char **)(data + 0x40);
        int i1 = (idx + 1) % n;
        int i2 = (idx + 2) % n;
        int o1 = i1 << 4;
        float f20;
        float f21;
        float f22;
        float k;
        float r;
        pos = moby + 0x10;
        f20 = func_L00_001FF860(*(float *)(*(char **)(data + 0x40) + o1 + 0x10) - *(float *)(*(char **)(data + 0x40) + (idx << 4) + 0x10), *(float *)(*(char **)(data + 0x40) + o1 + 0x14) - *(float *)(*(char **)(data + 0x40) + (idx << 4) + 0x14));
        f21 = func_L00_001FF860(*(float *)(*(char **)(data + 0x40) + (i2 << 4) + 0x10) - *(float *)(*(char **)(data + 0x40) + o1 + 0x10), *(float *)(*(char **)(data + 0x40) + (i2 << 4) + 0x14) - *(float *)(*(char **)(data + 0x40) + o1 + 0x14));
        f22 = func_001FA790(f20, f21);
        f20 = func_001F9D10(pos, *(char **)(data + 0x40) + o1 + 0x10);
        f20 = f20 / func_001F9D10(*(char **)(data + 0x40) + (*(int *)(data + 0x30) << 4) + 0x10, *(char **)(data + 0x40) + o1 + 0x10);
        *(float *)(moby + 0x48) = func_001FA748(f22 * f20, f21);
        qcopy(tmp, *(char **)(data + 0x40) + o1 + 0x10);
        r = func_001F9D10(pos, tmp);
        if (r < 0.5f) *(int *)(data + 0x30) = i1;
        func_001F9BF0(s10, tmp, pos);
        f20 = func_001F9CB8(s10);
        k = D_L08_00161DC4 * D_0015EE6C;
        if (k < f20) func_L00_001FF4B0(s10, s10, k);
        func_001F9BD8(pos, pos, s10);
        func_L08_002EADF0(moby);
        if (func_001F9908((int *)(data + 0x178))) {
            *(int *)(data + 0x178) = func_001FA898_r(func_001F9878(func_002140F8(300.0f, 600.0f)));
            func_L00_00250800(*(void **)(data + 0xA0), 1, s20);
            f21 = func_002140F8(-0.52359878f, -0.26179939f);
            f20 = func_00214158();
            func_L00_001FF4B0(s30, s10, (D_L08_00161DC4 + D_L08_00161DC4) * D_0015EE6C);
            {
                char *r2 = func_L08_002DF758(s20, 0, s30, f21, f20);
                if (r2 == 0) return;
                *(unsigned char *)(r2 + 0x20) = 5;
                *(float *)(r2 + 0x48) = *(float *)(*(char **)(data + 0xA0) + 0x48);
                *(int *)(r2 + 0x44) = 0;
            }
        }
        return;
    }
    case 3:
        *(unsigned char *)(moby + 0x20) = 1;
        qcopy(moby + 0x10, *(char **)(data + 0x10) + 0x10);
        *(float *)(moby + 0x48) = func_L00_001FF860(*(float *)(*(char **)(data + 0x10) + 0x20) - *(float *)(moby + 0x10), *(float *)(*(char **)(data + 0x10) + 0x24) - *(float *)(moby + 0x14));
        func_L08_002EADF0(moby);
        return;
    case 0x63: {
        char *slot = data + 0x70;
        int i;
        for (i = 15; i >= 0; i--, slot += 16) {
            char *ent = *(char **)slot;
            if (ent) {
                char *d17;
                func_L00_00260108(moby, ent + 0x10, -1, 3.0f, 13.0f);
                d17 = *(char **)(ent + 0x78);
                func_001F9BF0(d17, ent + 0x10, moby + 0x10);
                func_L00_001FF4B0(d17, d17, D_0015EE6C * 5.0f);
                *(unsigned char *)(ent + 0x20) = 1;
                *(char **)slot = 0;
            }
        }
        func_L00_00260108(moby, moby + 0x10, -1, 5.0f, 13.0f);
        func_0020D678(moby);
        return;
    }
    default:
        return;
    }
}
