/* NON_MATCHING func_L02_002FCE00 -- src/overlays/shared/vendor_002A5218.c
 * Best so far: SIZE ours 2232 / retail 2244, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L02_002FCE00: moby state machine. Walks a u16 id list (D_L02_001AC140[idx]) for a target entity, then per
 *   Best: build-sn/try/func_L02_002FCE00/p9.c, 2220 bytes against 2244 (24 short), 8 saved int regs as retail. Rem
 *   Wall-free but not closed: 14 of 16 runs. Tried: list walk as for/break and while form (same bytes), v as unsig
 *   Update: best is p11.c (2224 bytes, 20 short): the h==3 tail sets f12 = 0.03f first and overrides it in the if,
 */
extern void func_L00_002E9838(char *moby);
extern int func_L00_002E9870(char *moby);
extern int func_L02_002FCA80(char *moby);
extern float func_L00_001FF860(float, float);
extern float func_001F9B88(float);
extern float func_001FA850(float, float);
extern float func_001FA748(float, float);
extern int func_001F9850(int);
extern float func_001FA888(int);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L00_002E9DC8(void *a, float x, float y);
extern void func_L00_002E9E20(int a, float x, float y);
extern void func_L00_002E9900(float x, float y, int flag);
extern void func_L00_002E9AD0(void);
extern void func_L00_002E9968(float x, float y);
extern void func_L00_002E99A0(int, float, float);
extern void func_L00_002E9A18(int value);
extern void func_L00_002E9AF8(void);
extern void func_L00_002E9A40(float a, float b);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L02_002F79A8(int value);
extern void func_L02_002F79D0(float x, float y, float z);
extern int func_L02_002FCBC0(char *moby, float a, float b);
extern int D_L02_001AC140[];
extern int D_L02_00160058_x __asm__("D_L02_00160058") MACRO_ADDR;
extern char *D_L02_00167480;
extern char *D_L02_0015F050 MACRO_ADDR;
extern char D_0013A5E0[];
extern char D_0013E633[];

/* Moby state-machine update: picks a target entity from the list and steers the moby toward it (func_L02_002FCE00). */
int func_L02_002FCE00(char *moby) {
    char *s;
    char *ent;
    char *base;
    char *pad;
    int idx;
    int h;
    int flag;
    int arg;
    int s16, s18, s19, s20, s21, t, r;
    float f, f1, f2, f12, f20, f21;
    float v3[3];

    s = *(char **)(D_L02_0015F050 + (*(short *)(moby + 0x84) << 5) + 0x1C);
    if (*(int *)(s + 0x50) != 0) {
        *(short *)(s + 0x20) = 0;
        func_L00_002E9838(moby);
        return;
    }
    idx = *(int *)(s + 0x44);
    if (idx >= 0) {
        unsigned short *p;
        unsigned int v;
        p = (unsigned short *)D_L02_001AC140[idx];
        if (p == 0) {
            goto fail;
        }
        base = (char *)D_L02_00160058_x;
        v = *p;
        ent = base + ((v & 0x7FFF) << 8);
        while (*(signed char *)(ent + 0x20) < 0) {
            if ((short)v < 0) {
                goto fail;
            }
            p++;
            v = *p;
            ent = base + ((v & 0x7FFF) << 8);
        }
    } else {
        ent = (char *)D_L02_00160058_x + (*(int *)(s + 0x28) << 8);
        if (*(signed char *)(ent + 0x20) < 0) {
            goto fail;
        }
    }
    *(int *)(s + 0x48) = (int)ent;
    h = *(short *)(s + 0x3C);
    if (h == 6 && *(int *)(D_0013E633 + 0x1119) != (int)ent) {
        *(short *)(s + 0x20) = 0;
        goto l4c;
    }
    if (func_L00_002E9870(moby) <= 0) {
        *(short *)(s + 0x20) = 0;
        return;
    }
    if (func_L02_002FCA80(moby) == 0) {
        *(short *)(s + 0x20) = 0;
        func_L00_002E9838(moby);
        return;
    }
    h = *(short *)(s + 0x3C);
    if (h == 5) {
        f21 = func_L00_001FF860(*(float *)D_L02_00167480, *(float *)(D_L02_00167480 + 4));
        if (*(short *)(s + 0x20) < 2) {
            *(float *)(s + 0x40) = *(float *)(D_L02_0015F050 + (*(short *)(moby + 0x84) << 5) + 0x18);
        } else {
            pad = D_0013A5E0 + 0x2460;
            if (0.3f <= func_001F9B88(*(float *)(pad + 0x100))) {
                *(float *)(s + 0x40) = f21;
            } else if (0.3f <= func_001F9B88(*(float *)(pad + 0x104))) {
                *(float *)(s + 0x40) = f21;
            }
        }
        f20 = *(float *)(s + 0x40);
        f = func_001FA850(f20, f21);
        if (1.57079637f < f) {
            func_001FA748(f20, 3.14159274f);
        }
    }
    h = *(short *)(s + 0x3C);
    if (h == 4) {
        f20 = *(float *)(D_L02_0015F050 + (*(short *)(moby + 0x84) << 5) + 0x18);
        f = func_L00_001FF860(*(float *)D_L02_00167480, *(float *)(D_L02_00167480 + 4));
        if (1.57079637f < func_001FA850(f20, f)) {
            f20 = func_001FA748(f20, 3.14159274f);
        }
        *(float *)(s + 0x40) = f20;
    }
    s20 = *(unsigned short *)(s + 0x20);
    flag = 1;
    *(short *)(s + 0x20) = s20 + 1;
    f20 = 1.0f;
    h = *(short *)(s + 0x3C);
    if (h == 1) {
        s16 = func_001F9850(0x12C);
        t = func_001F9850(0x190);
        arg = 0x230;
    } else {
        s16 = func_001F9850(0x12C);
        t = func_001F9850(0x15E);
        arg = 0x190;
    }
    s19 = t;
    s21 = func_001F9850(arg);
    s18 = func_001F9850(0xC8);
    h = *(short *)(s + 0x3C);
    if (h == 7) {
        if (*(float *)(D_0013A5E0 + 0x2560) != 0.0f) {
            *(short *)(s + 0x20) = s16;
        }
        s19 = *(short *)(s + 0x20);
        if (!(s19 < s16)) {
            flag = 0;
            t = (short)(*(unsigned short *)(s + 0x3E) + 1);
            *(short *)(s + 0x3E) = t;
            r = func_001F9850(0x1E);
            if (s16 + r < s19) {
                f20 = 0.1f;
                flag = 1;
            }
        }
        s20 = *(short *)(s + 0x20);
        if (!(s20 < s21)) {
            flag = 1;
            *(short *)(s + 0x3E) = 0;
            *(short *)(s + 0x20) = 1;
        }
        {
            int s3 = *(short *)(s + 0x20);
            if (s18 < s3 && s3 < s16) {
                *(short *)(s + 0x3E) = s16;
                *(short *)(s + 0x20) = s18;
            }
        }
    } else if ((unsigned short)(*(unsigned short *)(s + 0x3C) - 1) < 2) {
        func_L02_002F79A8(0xB0);
        func_L02_002F79D0(1.0f, 12.0f, 0.11f);
        pad = D_0013A5E0 + 0x2460;
        if (*(float *)(pad + 0x100) != 0.0f) {
            *(short *)(s + 0x20) = s16;
        } else if (*(float *)(pad + 0x104) != 0.0f) {
            *(short *)(s + 0x20) = s16;
        }
        if (!(*(short *)(s + 0x20) < s16)) {
            t = (short)(*(unsigned short *)(s + 0x3E) + 1);
            *(short *)(s + 0x3E) = t;
            if (t < s19) {
                flag = 0;
            } else {
                if (func_L02_002FCBC0(moby, 30.0f, 0.0f) == 0) {
                    flag = 0;
                } else {
                    *(short *)(s + 0x20) = s21;
                }
            }
        }
        s20 = *(short *)(s + 0x20);
        if (!(s20 < s21)) {
            flag = 1;
            *(short *)(s + 0x3E) = 0;
            *(short *)(s + 0x20) = 1;
        }
        {
            int s3 = *(short *)(s + 0x20);
            if (s18 < s3 && s3 < s16) {
                *(short *)(s + 0x3E) = s16;
                *(short *)(s + 0x20) = s18;
            }
        }
    } else {
        s20 = *(short *)(s + 0x20);
        if (s18 < s20) {
            *(short *)(s + 0x20) = s18;
        }
    }
    f = func_001FA888(s18);
    s18 = 0;
    f1 = *(float *)s;
    f1 = f1 * f20;
    f2 = (float)*(short *)(s + 0x20) / f;
    f1 = f1 * 0.0174532924f;
    f20 = f1 * f2;
    if (flag) {
        if (func_L02_002FCBC0(moby, *(float *)(s + 0x30), *(float *)(s + 0x2C)) != 0) {
            s18 = 1;
            if ((unsigned int)(*(unsigned short *)(s + 0x3C) - 4) < 2) {
                v3[0] = func_001F9F90(*(float *)(s + 0x40));
                v3[1] = func_001F9FA8(*(float *)(s + 0x40));
                v3[2] = 0.0f;
                func_L00_002E9DC8(v3, f20, v3[2]);
            } else {
                f12 = f20;
                if (*(short *)(s + 0x3C) == 3) {
                    s16 = *(short *)(s + 0x20);
                    r = func_001F9850(0x5A);
                    if (s16 < r) {
                        f12 = ((f20 - 0.0f) * ((float)*(short *)(s + 0x20) / func_001FA888(func_001F9850(0x5A)))) + 0.0f;
                    }
                }
                func_L00_002E9E20((int)(ent + 0x10), f12, 0.0f);
            }
        }
    }
    f12 = *(float *)(s + 0x34);
    if (f12 != 0.0f) {
        func_L00_002E9900(f12, 0.00300000003f, 0);
        func_L00_002E9AD0();
    }
    f12 = *(float *)(s + 0x38);
    if (f12 != 0.0f) {
        func_L00_002E9968(f12, 0.00300000003f);
    }
    f12 = *(float *)(s + 0x4C);
    if (f12 != 0.0f) {
        func_L00_002E99A0(0, f12, 0.00499999989f);
    }
    h = *(short *)(s + 0x3C);
    if (h == 3) {
        f20 = 0.00999999978f;
        func_L00_002E9A18(0);
        func_L00_002E9AD0();
        func_L00_002E9AF8();
        func_L00_002E9A40(f20, 0.200000003f);
        s16 = *(short *)(s + 0x20);
        r = func_001F9850(0x78);
        if (s16 < r) {
            f12 = ((float)*(short *)(s + 0x20) / func_001FA888(func_001F9850(0x78))) * 0.0199999996f + f20;
        } else {
            f12 = 0.0299999993f;
        }
        func_L00_002E9A40(f12, 0.200000003f);
    }
    if ((unsigned int)(*(unsigned short *)(s + 0x3C) - 4) >= 2) {
        return;
    }
    f20 = 0.00300000003f;
    func_L00_002E9A18(0);
    func_L00_002E9AD0();
    func_L00_002E9AF8();
    func_L00_002E9A40(0.0199999996f, 0.200000003f);
    func_L00_002E9900(5.84000015f, f20, 0);
    h = *(short *)(s + 0x3C);
    if (h == 4) {
        func_001F9BF0(v3, ent + 0x10, D_0013E633 + 0xE9D);
        f = func_L00_001FF860(v3[0], v3[1]);
        if (s18 != 0) {
            if (1.91986215f < func_001FA850(f, *(float *)(s + 0x40))) {
                if (*(float *)(s + 0x34) == 0.0f) {
                    func_L00_002E9900(8.0f, f20, 0);
                } else {
                    func_L00_002E9900(*(float *)(s + 0x34) + 3.3599999f, f20, 0);
                }
            }
        }
    }
    func_L02_002F79A8(0xB0);
    return;
fail:
    *(short *)(s + 0x20) = -1;
l4c:
    func_L00_002E9838(moby);
    return;
}
