/* NON_MATCHING func_L05_003195B0 -- src/overlays/l05_rilgar/vendor_0030EB68.c
 * Best so far: SIZE ours 1432 / retail 1444, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Shady salesman update (1444 bytes): a state machine on moby[0x20] (0 = spawn, 1 = approach, 2+ = idle), an aim
 *   Remaining differences: (1) the dispatch layout: retail puts the state-0 body out of line after a `beq` to the 
 *   Would unblock: a source form that produces the retail dispatch layout (state 0 out of line) and the bc1fl shap
 */
extern void func_L02_002E2110(void *);
extern float func_001F9D10(void *, void *);
extern void func_L00_0025B178(void *);
extern float func_00214358(void *, int, float);
extern int func_L00_002676E8(void *, void *);
extern int func_L00_00267290(void *, void *);
extern void func_L01_00279398(float, void *);
extern void func_L00_002618D8(int, int);
extern void func_L00_00264DB8(int, int);
extern int func_0020BFC8(int, int);
extern void func_0020D678(void *);
extern int func_001F9908(void *);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern float func_001F9D48(void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern float func_001F9CB8(void *);
extern float func_001FA748(float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001FA790(float, float);
extern float func_001F9CE8(void *);
extern void func_L00_00263950(char *, char *, int, float, float);
extern char D_L05_001672C0[];
extern char D_L05_00161FB8[];
extern unsigned char D_0015EEB0[] MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern unsigned char D_0013D605[];
extern char D_0013E633[];

typedef int u128_3195B0 __attribute__((mode(TI)));

/* Shady salesman update: approach state machine, aim clamp, and two shadow emitters. */
void func_L05_003195B0(unsigned char *moby) {
    char *d;
    float buf[12];
    float f20, f22, f23, f0, f2, g, K;
    int st, n20;

    d = *(char **)(moby + 0x78);
    func_L02_002E2110(moby);
    if (moby[0x31]) {
        if (func_001F9D10(moby + 0x10, D_L05_001672C0) < 40.0f) {
            func_L00_0025B178(moby);
            moby[0x7F] = 0x20;
        }
    }
    st = moby[0x20];
    if (st == 0) {
        if (D_0013D605[2] != 0) {
            func_0020D678(moby);
            return;
        }
        *(float *)(moby + 0x18) = *(float *)(moby + 0x18) + 0.5f;
        *(float *)(moby + 0x18) = func_00214358(moby + 0x10, 0, 0.5f);
        *(char **)(d + 0x20) = D_L05_00161FB8;
        moby[0x20] = 1;
        func_L00_002676E8(moby, d);
    } else if (st == 1) {
        int s;
        if (func_L00_00267290(moby, d) != 0) {
            func_L01_00279398(2.0f, moby);
        }
        s = *(unsigned short *)(d + 4);
        if (s >= 3 && s <= 4) {
            func_L00_002618D8(0x17, 1);
            func_L00_00264DB8(0x1396, -1);
            func_0020BFC8(0, -1);
            func_0020D678(moby);
            return;
        }
        if (moby[0x53] == 0) {
            if (func_001F9908(d + 0x154) != 0) {
                g = func_002140F8(1200.0f, 2400.0f);
                g = func_001F9878(g);
                *(int *)(d + 0x154) = func_001FA898_r(g);
                if (moby[0x53] != st) {
                    func_00213DE0(moby, 1, 0, func_001F9850(10));
                }
            }
        } else if (moby[0x53] == 1 && (moby[0x70] & 2)) {
            func_00213DE0(moby, 0, 0, func_001F9850(10));
        }
    }

    f22 = 0.02f;
    f23 = 0.3f;
    n20 = 0;
    if (moby[0x53] == 0) {
        char *X;
        int skip;
        n20 = 1;
        X = D_0013E633 + 0xE9D;
        f0 = func_001F9D48(moby + 0x10, X);
        skip = 1;
        if (f0 < 8.0f) {
            char *Y = X - 0x80;
            f0 = func_L00_001FF860(*(float *)(Y + 0xD0) - *(float *)(moby + 0x10),
                                   *(float *)(Y + 0xD4) - *(float *)(moby + 0x14));
            f0 = func_001FA850(*(float *)(moby + 0x48), f0);
            if (f0 < 1.5707964f) {
                skip = 0;
                g = func_001F9CB8(X + 0x80);
                if (g > 0.01f) {
                    *(int *)(d + 0x158) = func_001F9850(0x78);
                } else {
                    func_001F9908(d + 0x158);
                }
            }
        }
        if (skip) {
            if (*(int *)(d + 0x158) != 0) {
                *(int *)(d + 0x158) = 0;
                *(u128_3195B0 *)(d + 0x140) = *(u128_3195B0 *)(D_0013E633 + 0xEED);
            }
        }
        if (func_001F9908(d + 0x15C) != 0) {
            X = d + 0x140;
            g = func_002140F8(180.0f, 300.0f);
            g = func_001F9878(g);
            *(int *)(d + 0x15C) = func_001FA898_r(g);
            g = func_002140F8(-90.0f, 90.0f) * 0.017453292f;
            g = func_001FA748(*(float *)(moby + 0x48), g);
            f20 = g;
            g = func_002140F8(0.0f, 30.0f) * 0.017453292f;
            func_00215C00(X, 6.0f, f20, g);
            func_001F9BD8(X, X, moby + 0x10);
        }
        if (*(int *)(d + 0x158) != 0) {
            *(u128_3195B0 *)buf = *(u128_3195B0 *)(D_0013E633 + 0xEED);
            f22 = 0.04f;
            f23 = 0.3f;
        } else {
            *(u128_3195B0 *)buf = *(u128_3195B0 *)(d + 0x140);
        }
    }

    if (n20) {
        *(u128_3195B0 *)(buf + 4) = *(u128_3195B0 *)(moby + 0x10);
        buf[6] = buf[6] + 1.0f;
        func_001F9BF0(buf + 8, buf, buf + 4);
        f0 = func_L00_001FF860(buf[8], buf[9]);
        f20 = func_001FA790(f0, *(float *)(moby + 0x48));
        f0 = func_001F9CE8(buf + 8);
        f0 = func_L00_001FF860(f0, buf[10]);
        f2 = -f0;
        if (1.5707964f < f20) {
            f20 = 1.5707964f;
        } else if (f20 < -1.5707964f) {
            f20 = -1.5707964f;
        }
        if (0.5235988f < f2) {
            f2 = 0.5235988f;
        } else if (f2 < -0.5235988f) {
            f2 = -0.5235988f;
        }
        *(float *)(d + 0xA4) = f2;
        *(float *)(d + 0xA8) = f20 * 0.6f;
        *(float *)(d + 0x128) = f20 * 0.4f;
    }

    if (D_0015EEB0[0] != 0) {
        *(float *)(d + 0xB0) = 2.75f;
    }
    K = D_0015EE64;
    func_L00_00263950((char *)moby, d + 0x40, 0, f22 * K, f23 * K);
    K = D_0015EE64;
    func_L00_00263950((char *)moby, d + 0xC0, 1, f22 * K, f23 * K);
}
