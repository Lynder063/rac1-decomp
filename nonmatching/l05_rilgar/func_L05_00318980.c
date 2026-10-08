/* NON_MATCHING func_L05_00318980 -- src/overlays/l05_rilgar/vendor_0030EB68.c
 * Best so far: SIZE ours 1344 / retail 1336, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped after three wordings (p1 to p3) at 1344 bytes against retail 1336 (+8). The function is the bouncer up
 *   Unblock: a form that gives the flag a higher allocator priority than the buf pointers, or retail's split of th
 */
extern void func_L05_003188A8(char *a);
extern int func_L00_002676E8(void *, void *);
extern void func_L02_0025D750(char *moby);
extern int func_L00_00267290(void *, void *);
extern void func_L01_00279398(float, void *);
extern void func_L00_00261848(int);
extern int func_0020BFC8(int, int);
extern void func_0020D678(void *);
extern int func_001F9908(int *arg0);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_002140B0(int);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern float func_001F9D48(float *, float *);
extern float func_001FA850(float, float);
extern float func_001F9CB8(void *a);
extern float func_001FA748(float, float);
extern float func_001FA790(float, float);
extern float func_001F9CE8(void *);
extern float func_L00_001FF860(float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_00263950(char *, char *, int, float, float);
extern unsigned char D_0013DE4B[] MACRO_ADDR;
extern char D_L05_00161FB0[];
extern char D_0013E633[] MACRO_ADDR;
extern unsigned char D_0015EEB0[] MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;

// Update for moby class 919 (qwarks_bouncer): state machine on moby state 0x20, aims and emits the bouncer's effects.
void func_L05_00318980(char *moby) {
    char *t;
    int st;
    int flag20;
    int r;
    int r2;
    int mode;
    int got;
    float f0;
    float f1;
    float f12;
    float f20;
    float f21;
    float f22;
    float f23;
    float buf[12];
    char *vp;
    float g;

    func_L05_003188A8(moby);
    t = *(char **)(moby + 0x78);
    if (t == 0) {
        return;
    }
    st = *(unsigned char *)(moby + 0x20);
    if (st != 0) {
        if (st == 1) {
            if (func_L00_00267290(moby, t) != 0) {
                func_L01_00279398(2.5f, moby);
            }
            if (*(short *)(t + 4) == 5) {
                func_L00_00261848(7);
                func_0020BFC8(0, -1);
                func_0020D678(moby);
                return;
            }
            if (*(unsigned char *)(moby + 0x53) == 0 && func_001F9908((int *)(t + 0x144)) != 0) {
                f0 = func_002140F8(1200.0f, 2400.0f);
                f0 = func_001F9878(f0);
                *(int *)(t + 0x144) = func_001FA898_r(f0);
                r2 = func_002140B0(2);
                mode = 2;
                if (r2 != 0) {
                    mode = st;
                }
                if (*(unsigned char *)(moby + 0x53) != mode) {
                    r = func_001F9850(10);
                    func_00213DE0(moby, mode, 0, r);
                }
            } else if (*(unsigned char *)(moby + 0x70) & 2) {
                if (*(unsigned char *)(moby + 0x53) != 0) {
                    r = func_001F9850(10);
                    func_00213DE0(moby, 0, 0, r);
                }
            }
        }
    } else {
        if (D_0013DE4B[4] != 0) {
            func_0020D678(moby);
            return;
        }
        *(char **)(t + 0x20) = D_L05_00161FB0;
        *(unsigned char *)(moby + 0x20) = 1;
        func_L00_002676E8(moby, t);
        *(float *)(t + 0xC) = 3.7f;
        func_L02_0025D750(moby);
    }

    f22 = 0.02f;
    f23 = 0.3f;
    flag20 = 0;
    if (*(unsigned char *)(moby + 0x53) == 0) {
        flag20 = 1;
        vp = D_0013E633 + 0xE9D;
        f0 = func_001F9D48((float *)(moby + 0x10), (float *)vp);
        got = 0;
        if (f0 < 8.0f) {
            f0 = func_L00_001FF860(*(float *)(vp + 0x50) - *(float *)(moby + 0x10),
                                   *(float *)(vp + 0x54) - *(float *)(moby + 0x14));
            f0 = func_001FA850(*(float *)(moby + 0x48), f0);
            if (f0 < 1.5707964f) {
                got = 1;
                g = func_001F9CB8(vp + 0x80);
                if (0.01f < g) {
                    *(int *)(t + 0x148) = func_001F9850(120);
                } else {
                    func_001F9908((int *)(t + 0x148));
                }
            }
        }
        if (got == 0) {
            if (*(int *)(t + 0x148) != 0) {
                *(int *)(t + 0x148) = 0;
                qcopy(t + 0x150, D_0013E633 + 0xEED);
            }
        }
        if (func_001F9908((int *)(t + 0x14C)) != 0) {
            f21 = 0.0174532925f;
            f0 = func_002140F8(180.0f, 300.0f);
            f0 = func_001F9878(f0);
            *(int *)(t + 0x14C) = func_001FA898_r(f0);
            f0 = func_002140F8(-90.0f, 90.0f);
            func_001FA748(*(float *)(moby + 0x48), f0 * f21);
            f20 = func_002140F8(0.0f, 30.0f);
            vp = t + 0x150;
            func_00215C00(vp, 6.0f, f20, f20 * f21);
            func_001F9BD8(vp, vp, moby + 0x10);
        }
        if (*(int *)(t + 0x148) != 0) {
            qcopy(buf, D_0013E633 + 0xEED);
            f22 = 0.04f;
            f23 = 0.3f;
        } else {
            qcopy(buf, t + 0x150);
        }
    }
    if (flag20 != 0) {
        qcopy(buf + 4, moby + 0x10);
        buf[6] = buf[6] + 1.0f;
        func_001F9BF0(buf + 8, buf, buf + 4);
        f0 = func_L00_001FF860(buf[8], buf[9]);
        f20 = func_001FA790(f0, *(float *)(moby + 0x48));
        f0 = func_001F9CE8(buf + 8);
        f0 = func_L00_001FF860(f0, buf[10]);
        f1 = -f0;
        if (1.5707964f < f20) {
            f20 = 1.5707964f;
        } else if (f20 < -1.5707964f) {
            f20 = -1.5707964f;
        }
        if (0.52f < f1) {
            f1 = 0.52f;
        } else if (f1 < -0.52f) {
            f1 = -0.52f;
        }
        *(float *)(t + 0xA4) = f1;
        *(float *)(t + 0x128) = f20 * 0.5f;
        *(float *)(t + 0xA8) = f20 * 0.5f;
    }
    if (D_0015EEB0[0] != 0) {
        *(float *)(t + 0xB0) = 2.75f;
    }
    f12 = D_0015EE64;
    func_L00_00263950(moby, t + 0x40, 0, f22 * f12, f23 * f12);
    f12 = D_0015EE64;
    func_L00_00263950(moby, t + 0xC0, 1, f22 * f12, f23 * f12);
}
