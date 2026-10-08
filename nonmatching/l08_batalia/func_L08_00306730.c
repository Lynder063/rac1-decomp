/* NON_MATCHING func_L08_00306730 -- src/overlays/l08_batalia/vendor_002EAF48.c
 * Best so far: SIZE ours 1516 / retail 1524, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Batalia deserter update: a state machine on moby[0x20] (1/0/2 branches), then an aim and clamp block on moby[0
 *   Left: retail saves a fourth float (f23, the 0.3 constant) across the calls and keeps pi/180 in f21 with r3 in 
 *   Unblock: a wording that makes the r<pi/2 test and the shared data[0x194] check merge the way retail's bc1fl do
 */
typedef int u128 __attribute__((mode(TI)));

extern void func_L08_003065F8(char *moby);
extern float func_001F9D10(void *, void *);
extern void func_L00_0025B178(void *);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern int func_L00_002676E8(void *, void *);
extern float func_001F9D48(void *, void *);
extern void func_L00_002512D8(int);
extern int func_002140B0(int);
extern int func_L00_00267290(void *, void *);
extern void func_L01_00279398(float, void *);
extern void func_L00_00261848(int);
extern void func_0020BFC8(int, int);
extern void func_0020D678(void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern float func_001F9CB8(void *);
extern int func_001F9908(void *);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern float func_001FA748(float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001FA790(float, float);
extern float func_001F9CE8(void *);
extern void func_L00_00263950(char *, char *, int, float, float);
extern char D_L08_00167640[];
extern char D_L08_00162378[];
extern char D_0013E633[];
extern unsigned char D_0013DE4B[];
extern char D_0014171B[];
extern unsigned char D_0015EEB0[] MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern short D_0015EE84;

/* Batalia deserter update (moby class 1144): timed behaviour and aim, per state byte at 0x20. */
void func_L08_00306730(char *moby) {
    char *d;
    int use;
    int st;
    float f23;
    float f22;
    float fx;
    float sv[4];
    float bp[4];
    float out[4];

    d = *(char **)(moby + 0x78);
    func_L08_003065F8(moby);
    if (*(unsigned char *)(moby + 0x31) != 0) {
        if (func_001F9D10(moby + 0x10, D_L08_00167640) < 30.0f) {
            func_L00_0025B178(moby);
            *(unsigned char *)(moby + 0x7F) = 0x18;
        }
    }

    st = *(unsigned char *)(moby + 0x20);
    if (st == 1) {
        if (func_001F9D48(moby + 0x10, D_0013E633 + 0xE9D) < 8.0f) {
            func_L00_002512D8(*(unsigned char *)(moby + 0xB0));
            *(unsigned char *)(moby + 0x20) = 2;
        }
    } else if (st < 2) {
        if (st == 0) {
            if (*(unsigned char *)(moby + 0x53) != 1) {
                func_00213DE0(moby, 1, 0, func_001F9850(0x14));
            }
            if (D_0013DE4B[6] != 0) {
                unsigned char *q = (unsigned char *)(D_0014171B + 0xAA35)
                    + (*(unsigned char *)(moby + 0xB0) + (*(int *)&D_0015EE84 << 4));
                if (*q == 0xFF) {
                    func_0020D678(moby);
                    return;
                }
            }
            *(char **)(d + 0x40) = D_L08_00162378;
            *(float *)(d + 0x2C) = 4.0f;
            *(unsigned char *)(moby + 0x20) = 1;
            if (*(int *)(d + 0x64) >= 0) {
                func_L00_002676E8(moby, d + 0x20);
            }
        }
    } else if (st == 2) {
        if (*(unsigned char *)(moby + 0x70) & 2) {
            int w2 = *(unsigned char *)(moby + 0x53);
            if (w2 != func_002140B0(2) + 1) {
                int v = func_002140B0(2) + 1;
                func_00213DE0(moby, v, 0, func_001F9850(0x14));
            }
        }
        {
            char *b2 = D_0013E633 + 0xE1D;
            if (*(int *)(b2 + 0x2FC) == 0) {
                int r = func_001F9850(0x1E);
                if (r < *(int *)(b2 + 0x300) || *(short *)(d + 0x56) != 0) {
                    func_L00_00267290(moby, d + 0x20);
                    func_L01_00279398(2.2f, moby);
                }
            }
        }
        if (*(short *)(d + 0x24) == 4) {
            func_L00_00261848(9);
            func_0020BFC8(0, -1);
            func_0020D678(moby);
            return;
        }
    }

    f22 = 0.02f;
    f23 = 0.3f;
    use = 0;
    if (*(unsigned char *)(moby + 0x53) == 1) {
        int skip = 0;
        char *mp = moby + 0x10;
        char *b = D_0013E633 + 0xE9D;
        char *e = b - 0x80;
        use = 1;
        if (func_001F9D48(mp, b) < 8.0f) {
            float a = func_L00_001FF860(*(float *)(e + 0xD0) - *(float *)(moby + 0x10),
                                        *(float *)(e + 0xD4) - *(float *)(moby + 0x14));
            float r = func_001FA850(*(float *)(moby + 0x48), a);
            if (r < 1.5707963f) {
                if (0.01f < func_001F9CB8(b + 0x80)) {
                    *(int *)(d + 0x194) = func_001F9850(0x78);
                } else {
                    func_001F9908(d + 0x194);
                }
                skip = 1;
            }
        }
        if (!skip) {
            if (*(int *)(d + 0x194) != 0) {
                *(int *)(d + 0x194) = 0;
                qcopy(d + 0x180, D_0013E633 + 0xEED);
            }
        }

        if (func_001F9908(d + 0x198) != 0) {
            float r1 = func_002140F8(180.0f, 300.0f);
            float r2;
            float r3;
            float k = 0.017453292f;
            float z;
            *(int *)(d + 0x198) = func_001FA898_r(func_001F9878(r1));
            r2 = func_002140F8(-90.0f, 90.0f);
            func_001FA748(*(float *)(moby + 0x48), r2 * k);
            r3 = func_002140F8(0.0f, 30.0f);
            z = r3 * k;
            func_00215C00(d + 0x180, 6.0f, r3, z);
            func_001F9BD8(d + 0x180, d + 0x180, mp);
        }

        if (*(int *)(d + 0x194) != 0) {
            *(u128 *)sv = *(u128 *)(D_0013E633 + 0xEED);
            f22 = 0.04f;
            f23 = 0.3f;
        } else {
            *(u128 *)sv = *(u128 *)(d + 0x180);
        }
    }

    if (use != 0) {
        float r4;
        float r5;
        float r6;
        float f1;
        float f20;
        *(u128 *)bp = *(u128 *)(moby + 0x10);
        bp[2] = bp[2] + 1.0f;
        func_001F9BF0(out, sv, bp);
        r4 = func_L00_001FF860(out[0], out[1]);
        r4 = func_001FA790(r4, *(float *)(moby + 0x48));
        f20 = r4;
        r5 = func_001F9CE8(out);
        r6 = func_L00_001FF860(r5, out[2]);
        f1 = -r6;
        if (f20 > 1.5707963f) {
            f20 = 1.5707963f;
        } else if (f20 < -1.5707963f) {
            f20 = -1.5707963f;
        }
        if (f1 > 0.5235988f) {
            f1 = 0.5235988f;
        } else if (f1 < -0.5235988f) {
            f1 = -0.5235988f;
        }
        *(float *)(d + 0xE4) = f1;
        *(float *)(d + 0x168) = f20 * 0.5f;
        *(float *)(d + 0xE8) = f20 * 0.5f;
    }

    fx = D_0015EE64;
    if (D_0015EEB0[0] != 0) {
        *(float *)(d + 0xF0) = 2.75f;
        fx = D_0015EE64;
    }
    func_L00_00263950(moby, d + 0x80, 0, f22 * fx, f23 * fx);
    fx = D_0015EE64;
    func_L00_00263950(moby, d + 0x100, 1, f22 * fx, f23 * fx);
}
