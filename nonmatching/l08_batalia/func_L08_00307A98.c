/* NON_MATCHING func_L08_00307A98 -- src/overlays/l08_batalia/vendor_002EAF48.c
 * Best so far: SIZE ours 1336 / retail 1364, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Plumber (moby class 1283) update: state 0 chooses a path from a table and calls 002676E8, state 1 walks sub-st
 */
extern unsigned char D_0013E633[] NOT_SDA;
extern void func_L00_00211908(void);
extern int func_L00_002676E8(void *, void *);
extern int func_L00_00267290(void *, void *);
extern void func_L01_00279398(float, void *);
extern void func_L00_00286128(void *, void *);
extern void func_L08_002E2A10(char *);
extern void func_L00_0029A7D0(int);
extern void func_L00_002512D8(int);
extern void func_L00_002618D8(int, int);
extern int func_0020BFC8(int, int);
extern void func_0020D678(void *);
extern float func_001F9D48(void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern float func_001F9CB8(void *);
extern int func_001F9850(int);
extern int func_001F9908(int *);
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
extern int D_0015EE84 MACRO_ADDR;
extern char *D_L08_00160058 MACRO_ADDR;
extern unsigned char D_0015EEB0[] MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern char D_0014171B[];
extern int D_0015EEB0_w __asm__("D_0015EEB0") MACRO_ADDR;
extern int D_L08_0016016C;
extern char D_L08_00162398[];

/* The plumber's update: state 0 picks a path from a table, state 1 walks sub-states, then the shared tail moves it. */
void func_L08_00307A98(char *m) {
    float sp0[4], sp1[4], sp2[4];
    char *d;
    char *hero = (char *)D_0013E633 + 0xE1D;
    char *h80 = (char *)D_0013E633 + 0xE9D;
    int u20, st, k, i;
    short k16;
    float f20, f21, f22, f23, fa, fb, fz, f2;

    func_L08_003078B0(m);
    d = *(char **)(m + 0x78);
    st = *(unsigned char *)(m + 0x20);

    if (st == 0) {
        *(unsigned char *)(m + 0x30) = 0xFF;
        k = *(unsigned char *)(m + 0xB0) + (D_0015EE84 << 4);
        if (((unsigned char *)((char *)D_0014171B + 0xAA35))[k] == 0xFF) {
            func_0020D678(m);
            return;
        }
        *(int *)(d + 0x20) = (int)D_L08_00162398;
        *(unsigned char *)(m + 0x20) = 1;
        func_L00_002676E8(m, d);
    } else if (st == 1) {
        if (func_L00_00267290(m, d) != 0) {
            func_L01_00279398(2.2f, m);
        }
        k16 = *(short *)(d + 0x36);
        if (k16 == 2) {
            char *tb = (char *)D_L08_0016016C + (*(int *)(d + 0x48) << 7);
            func_L00_00286128(tb + 0x30, tb + 0x70);
            *(unsigned char *)(m + 0x20) = k16;
            func_L08_002E2A10((char *)D_L08_00160058 + (*(int *)(d + 0x50) << 8));
        }
        if (*(short *)(d + 0x4) == 3) {
            func_L00_0029A7D0(1);
            *(unsigned char *)(m + 0x20) = 5;
        }
        if (*(short *)(d + 0x4) == 4) {
            func_L00_00211908();
            *(short *)(d + 0x4) = -1;
        }
    } else if (st == 5) {
        func_L00_002512D8(*(unsigned char *)(m + 0xB0));
        func_L00_002618D8(0x1B, 1);
        func_0020BFC8(0, -1);
        func_0020D678(m);
        return;
    }

    f22 = 0.02f;
    f23 = 0.3f;
    u20 = (*(unsigned char *)(m + 0x53) == 0);
    if (u20) {
        int took = 0;
        if (func_001F9D48(m + 0x10, h80) < 8.0f) {
            fa = func_L00_001FF860(*(float *)(hero + 0xD0) - *(float *)(m + 0x10),
                                   *(float *)(hero + 0xD4) - *(float *)(m + 0x14));
            fa = func_001FA850(*(float *)(m + 0x48), fa);
            if (fa < 1.5707964f) {
                fb = func_001F9CB8(h80 + 0x80);
                if (0.01f < fb) {
                    *(int *)(d + 0x174) = func_001F9850(120);
                } else {
                    func_001F9908((int *)(d + 0x174));
                }
                took = 1;
            }
        }
        if (!took) {
            if (*(int *)(d + 0x174) != 0) {
                *(int *)(d + 0x174) = 0;
                qcopy(d + 0x160, hero + 0xD0);
            }
        }
        if (func_001F9908((int *)(d + 0x178)) != 0) {
            f21 = 0.0174532925f;
            fa = func_002140F8(180.0f, 300.0f);
            fb = func_001F9878(fa);
            i = func_001FA898_r(fb);
            *(int *)(d + 0x178) = i;
            fa = func_002140F8(-90.0f, 90.0f);
            fb = func_001FA748(*(float *)(m + 0x48), fa * f21);
            fz = func_002140F8(0.0f, 30.0f);
            func_00215C00(d + 0x160, 6.0f, fb, fz * f21);
            func_001F9BD8(d + 0x160, d + 0x160, m + 0x10);
        }
        if (*(int *)(d + 0x174) != 0) {
            qcopy(sp0, hero + 0xD0);
            f22 = 0.03f;
            f23 = 0.3f;
        } else {
            qcopy(sp0, d + 0x160);
        }

        qcopy(sp1, m + 0x10);
        sp1[2] = sp1[2] + 1.0f;
        func_001F9BF0(sp2, sp0, sp1);
        fa = func_L00_001FF860(sp2[0], sp2[1]);
        fb = func_001FA790(fa, *(float *)(m + 0x48));
        f20 = fb;
        fz = func_001F9CE8(sp2);
        fz = func_L00_001FF860(fz, sp2[2]);
        f2 = -fz;
        if (1.5707964f < f20) {
            f20 = 1.5707964f;
        } else if (f20 < -1.5707964f) {
            f20 = -1.5707964f;
        }
        if (0.52359878f < f2) {
            f2 = 0.52359878f;
        }
        if (f2 < -0.52359878f) {
            f2 = -0.52359878f;
        }
        *(float *)(d + 0xC4) = f2;
        *(float *)(d + 0xC8) = f20 * 0.7f;
        *(float *)(d + 0x148) = f20 * 0.3f;
    }

    if (*(unsigned char *)&D_0015EEB0_w != 0) {
        *(float *)(d + 0xD0) = 2.75f;
    }
    fz = D_0015EE64;
    func_L00_00263950((char *)m, d + 0x60, 0, f22 * fz, f23 * fz);
    fz = D_0015EE64;
    func_L00_00263950((char *)m, d + 0xE0, 1, f22 * fz, f23 * fz);
}
