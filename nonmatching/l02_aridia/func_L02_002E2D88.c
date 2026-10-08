/* NON_MATCHING func_L02_002E2D88 -- src/overlays/l02_aridia/vendor_002E21F8.c
 * Best so far: SIZE ours 1620 / retail 1636, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   skid_mcmarx update (class 788): state machine on moby[0x20] (state 1 with a data+0x8 test and func_00215570/fu
 *   Run 1: compile error (declarations). Run 2 (p0): SIZE 1620 vs 1636. Run 3 (p1, byte reads unsigned): still 162
 *   Left: the dispatch shape and the aim-block float chain. Runs 4-10 not spent: the tail needs a fresh decode fro
 */
extern void func_L02_002E2110(void *);
extern void func_L02_002E33F0(char *);
extern int func_L00_002676E8(void *, void *);
extern void func_L02_0025D750(char *);
extern int func_00215570(void *, int);
extern int func_L00_00267290(void *, void *);
extern void func_L01_00279398(float, void *);
extern int func_L00_00203F20(int, int);
extern void func_L00_002618D8(int, int);
extern void func_L00_002512D8(int);
extern void func_L00_00286128(void *, void *);
extern void func_0020BFC8(int, int);
extern void func_0020D678(void *);
extern int func_001F9938(int *);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_002140B0(int);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_00214358(void *, int, float);
extern void func_001F9BC0(void *);
extern float func_001FA748(float, float);
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern float func_001F9CB8(void *a);
extern void func_001F9908(int *arg0);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001FA790(float, float);
extern float func_001F9CE8(void *);
extern void func_L00_00263950(char *, char *, int, float, float);
extern char D_L02_0016CEE0[];
extern char D_L02_00161D90[];
extern int D_L02_0015F6A8 MACRO_ADDR;
extern unsigned char D_0015EEB0[] MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern unsigned char D_0013E633[];
extern unsigned char D_0013D605[];
extern f32 func_001F9D48_07408(union RegionVector *, union RegionVector *) __asm__("func_001F9D48");

/* skid_mcmarx (class 788) update: state machine on moby[0x20], then the aim and sway of the moby's data block. */
void func_L02_002E2D88(char *moby)
{
    char *data = *(char **)(moby + 0x78);
    int state, r2, h, t188;
    char *pg, *e9d;
    float f0, f20, f22, f23, t, s, u;
    char v0[16];
    char v1[16];
    char v2[16];
    int ok;

    func_L02_002E2110(moby);
    func_L02_002E33F0(moby);
    state = (unsigned char)moby[0x20];
    if (state == 1) {
        if (((unsigned char *)data)[0x8] == 1) {
            r2 = func_00215570(D_0013E633 + 0xE9D, *(int *)(data + 0x16C));
            if (r2 != 0) {
                *(float *)(data + 0xC) = 255.0f;
            } else {
                *(float *)(data + 0xC) = 2.5f;
            }
        } else {
            *(float *)(data + 0xC) = 2.5f;
        }
        r2 = func_L00_00267290(moby, data);
        if (r2 != 0) {
            func_L01_00279398(2.5f, moby);
            moby[0x20] = 2;
        }
        h = *(short *)(data + 0x4);
        if (h == 2) {
            func_L00_00203F20(0x7D0, 0xA);
            func_L00_002618D8(0x1E, 1);
            func_L00_002512D8((unsigned char)moby[0xB0]);
            func_L00_00286128(D_0013E633 + 0xE9D, D_0013E633 + 0xE9D + 0x10);
            func_0020BFC8(0, -1);
            func_0020D678(moby);
            return;
        }
        if (((unsigned char *)moby)[0x53] == 0 && func_001F9938((int *)(data + 0x16A)) != 0) {
            f0 = func_002140F8(1200.0f, 2400.0f);
            f0 = func_001F9878(f0);
            *(short *)(data + 0x16A) = func_001FA898_r(f0);
            r2 = func_002140B0(2);
            if (r2 == 0) {
                r2 = 2;
            } else {
                r2 = 1;
            }
            if (((unsigned char *)moby)[0x53] != r2) {
                func_00213DE0(moby, r2, 0, func_001F9850(10));
            }
        } else if (((unsigned char)moby[0x70] & 2) != 0 && ((unsigned char *)moby)[0x53] != 0) {
            func_00213DE0(moby, 0, 0, func_001F9850(10));
        }
    } else if (state == 0) {
        if (((unsigned char *)D_0013D605)[9] != 0) {
            func_0020D678(moby);
            return;
        }
        *(int *)(data + 0x180) = 0;
        *(char **)(data + 0x20) = D_L02_00161D90;
        moby[0x20] = 1;
        moby[0x30] = 0xFF;
        func_L00_002676E8(moby, data);
        func_L02_0025D750(moby);
    } else if (state == 2) {
        pg = D_L02_0016CEE0;
        if (pg[0x4A] == 0) {
            func_L00_001FF4B0(pg + 0x10, moby + 0xC0, 2.5f);
            func_001F9BD8(pg + 0x10, pg + 0x10, moby + 0x10);
            f0 = *(float *)(pg + 0x18) + 10.0f;
            *(float *)(pg + 0x18) = f0;
            *(float *)(pg + 0x18) = func_00214358(pg + 0x10, 0, 0.5f);
            func_001F9BC0(pg + 0x20);
            *(float *)(pg + 0x28) = func_001FA748(*(float *)(moby + 0x48), 3.14159f);
            pg[0x4A] = 1;
        }
        if (D_L02_0015F6A8 != state) {
            moby[0x20] = 1;
        }
    }

    /* common tail */
    f22 = 0.0199999996f;
    f23 = 0.300000012f;
    if (((unsigned char *)moby)[0x53] == 0) {
        e9d = D_0013E633 + 0xE9D;
        f0 = func_001F9D48_07408((union RegionVector *)(moby + 0x10), (union RegionVector *)e9d);
        if (f0 < 8.0f) {
            t = func_L00_001FF860(*(float *)(e9d - 0x80 + 0xD0) - *(float *)(moby + 0x10),
                                  *(float *)(e9d - 0x80 + 0xD4) - *(float *)(moby + 0x14));
            s = func_001FA850(*(float *)(moby + 0x48), t);
            if (s < 1.5707963f) {
                u = func_001F9CB8(e9d + 0x80);
                t188 = 0;
                if (0.0099f < u) {
                    *(int *)(data + 0x188) = func_001F9850(0x78);
                } else {
                    func_001F9908((int *)(data + 0x188));
                }
            } else {
                t188 = *(int *)(data + 0x188);
                if (t188 != 0) {
                    *(int *)(data + 0x188) = 0;
                    qcopy(data + 0x170, D_0013E633 + 0xEED);
                }
            }
        } else {
            t188 = *(int *)(data + 0x188);
            if (t188 != 0) {
                *(int *)(data + 0x188) = 0;
                qcopy(data + 0x170, D_0013E633 + 0xEED);
            }
        }
        func_001F9908((int *)(data + 0x18C));
        if (*(int *)(data + 0x188) != 0 || f0 < 8.0f) {
            f0 = func_002140F8(180.0f, 300.0f);
            f0 = func_001F9878(f0);
            *(int *)(data + 0x18C) = func_001FA898_r(f0);
            f20 = func_001FA748(*(float *)(moby + 0x48), func_002140F8(-90.0f, 90.0f) * 0.0174532924f);
            f20 = func_002140F8(0.0f, 30.0f) * 0.0174532924f;
            func_00215C00(data + 0x170, 6.0f, f20, func_002140F8(0.0f, 30.0f) * 0.0174532924f);
            func_001F9BD8(data + 0x170, data + 0x170, moby + 0x10);
        }
        if (*(int *)(data + 0x188) == 0) {
            qcopy(v0, data + 0x170);
        } else {
            qcopy(v0, D_0013E633 + 0xEED);
        }
        qcopy(v1, moby + 0x10);
        f0 = v1[6] + 2.0f;
        func_001F9BF0(v2, v0, v1);
        f0 = func_L00_001FF860(*(float *)v2, *(float *)(v2 + 4));
        f20 = func_001FA790(f0, *(float *)(moby + 0x48));
        f0 = func_001F9CE8(v2);
        f0 = func_L00_001FF860(f0, *(float *)(v2 + 8));
        ok = 0;
        if (1.5707963f < f20) {
            f20 = 1.5707963f;
        } else if (f20 < -1.5707963f) {
            f20 = -1.5707963f;
        }
        if (0.5235988f < f0) {
            f0 = 0.5235988f;
        } else if (f0 < -0.5235988f) {
            f0 = -0.5235988f;
        }
        *(float *)(data + 0xA4) = f0;
        *(float *)(data + 0xA8) = f20 * 0.6f;
        *(float *)(data + 0x128) = f20 * 0.4f;
    }
    if (D_0015EEB0[0] == 0) {
        f0 = D_0015EE64;
    } else {
        *(float *)(data + 0xB0) = 2.75f;
        f0 = D_0015EE64;
    }
    func_L00_00263950(moby, data + 0x40, 0, f22 * f0, f23 * f0);
    f0 = D_0015EE64;
    func_L00_00263950(moby, data + 0xC0, 1, f22 * f0, f23 * f0);
}
