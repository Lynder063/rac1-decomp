/* NON_MATCHING func_L00_002D4398 -- src/overlays/shared/vendor_002D1168.c
 * Best so far: SIZE ours 2336 / retail 2276, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - What it does: metal-detector (class 585) update: moby state switch (jump table, 5 entries), target sweep via
 *   - Best candidate p9.c (2336 bytes, retail 2276). Structure, the case-0 store order and the case 1/2 prologue m
 *   - Unblock: a form of the target test that gcc emits as bnel (the saved pointer set in its delay slot) and a wa
 */
typedef int u128 __attribute__((mode(TI)));
extern char D_0013A5E0[];
extern unsigned char D_L00_001E14B0[];
extern unsigned char D_L00_001E14C0[];
extern short D_L00_001619F0;
extern short D_L00_001619F4;
extern short D_L00_001619EC;
extern short D_L00_001619FC;
extern short D_L00_00161A00;
extern short D_L00_00161A10;
extern short D_L00_00161A20;
extern short D_L00_00161A24;
extern void func_L00_00250800(void *, int, void *);
extern void func_0020D960(char *, int, unsigned char *);
extern float func_001F9D48_r(void *, void *) __asm__("func_001F9D48");
extern float func_L00_001FF860(float, float);
extern float func_001FA790(float, float);
extern float func_001F9B88(float);
extern float func_001FA748(float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001E9768(void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9CA0(void *, void *, void *);
extern void func_001FA4A0(void *, void *);
extern void func_001FA540(void *, void *, void *);
extern void func_002150B0(void *, void *);
extern void func_L00_0025AFA8(void *, void *);
extern void func_001FA5C8(void *, void *, void *, float);
extern int func_001F9850(int);
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80(int, int, void *);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_L00_0028F210(int, int);
extern float func_002140F8(float, float);
extern void func_001F9EC0(void *, void *, void *);
extern void func_L00_00260958(float *, float);
extern void func_L00_002A86D8(void *, void *, void *, int, int, int);
extern void func_L00_002D42D8(unsigned char *);
extern void func_0020D678();
extern void func_L00_0028EBF0(int);
extern void func_L00_002D3F40(void);
extern float D_0015EE6C MACRO_ADDR;

/* metal detector update: sweeps toward the nearest target, drives the readout colour and ping state */
void func_L00_002D4398(char *a) {
    char *o, *g, *t, *p17, *d, *e;
    float v0[4], v1[4], v2[4], v3[4][4], v4[4], v5[4], v6[4], v7[4], v8[2][4];
    float f20, f21, f22, f24, f23, d0, r1, r2, r3, r4, k1, k2, s20, s1, r5, r6, a1, a2, a3, kk;
    int r, col, oc, ub, active;
    float *pv2;

    if (a == 0) return;
    o = *(char **)(a + 0x78);
    if (o == 0) return;
    func_L00_00250800(a, 0, o + 0x10);
    switch (*(unsigned char *)(a + 0x20)) {
    case 0:
        g = D_0013E633 + 0xE1D;
        *(float *)(g + 0x2044) = 100000.0f;
        *(int *)(g + 0x2040) = 0;
        *(int *)(o + 0xC) = -1;
        *(int *)(o + 0x8) = 0x7FFF;
        *(int *)(o + 0x0) = -1;
        *(int *)(o + 0x4) = -1;
        ub = *(unsigned char *)(D_0013A5E0 + 0x25E9);
        *(int *)(o + 0x28) = 0;
        *(unsigned char *)(o + 0x20) = ub;
        *(int *)(o + 0x24) = 0;
        qzero(D_L00_001E14B0);
        func_0020D960(a, 3, D_L00_001E14B0);
        *(unsigned char *)(a + 0x20) = 1;
        break;
    case 1:
        goto c12;
    case 2:
    c12:
        g = D_0013E633 + 0xE1D;
        f24 = 1.0f;
        t = *(char **)(g + 0x2040);
        *(u128 *)v1 = 0;
        v1[2] = f24;
        pv2 = v2;
        if (t == 0) goto nonact;
        if (*(short *)(t + 0xA6) != 0x25D) goto nonact;
        ub = *(unsigned char *)(t + 0x20);
        if (ub == 0xFE || ub == 0xFD) goto nonact;
            d0 = func_001F9D48_r(o + 0x10, t + 0x10);
            f23 = -1.5707964f;
            r1 = func_L00_001FF860(d0, *(float *)(t + 0x18) - *(float *)(o + 0x18));
            f22 = r1;
            r2 = func_L00_001FF860(*(float *)(t + 0x10) - *(float *)(o + 0x10),
                                   *(float *)(t + 0x14) - *(float *)(o + 0x14));
            r3 = func_001FA790(r2, *(float *)(g + 0x98));
            f21 = r3;
            r4 = func_001FA790(f22, f23);
            f22 = r4;
            s20 = func_001F9B88(f21);
            s1 = func_001F9B88(f22);
            k1 = *(float *)&D_L00_00161A20 * 0.017453292f;
            if (k1 < s20) f21 = f21 / s20 * k1;
            k2 = *(float *)&D_L00_00161A24 * 0.017453292f;
            if (k2 < s1) f22 = f22 / s1 * k2;
            f20 = 0.0f;
            r5 = func_001FA748(f21, f23);
            f21 = r5;
            r6 = func_001FA748(f22, f23);
            func_00215C00(v1, -3.0f, f21, r6);
            func_001F9BD8(pv2, o + 0x10, v1);
            func_001E9768(o + 0x10, pv2);
            func_L00_001FF4B0(&v3[*(int *)&D_L00_001619F0], v1, (float)*(int *)&D_L00_001619FC);
            func_001F9CA0(&v3[*(int *)&D_L00_001619F4], &v3[*(int *)&D_L00_001619F0], &D_L00_00161A10);
            func_L00_001FF4B0(&v3[*(int *)&D_L00_001619F4], &v3[*(int *)&D_L00_001619F4], (float)*(int *)&D_L00_00161A00);
            func_001F9CA0(&v3[*(int *)&D_L00_001619EC], &v3[*(int *)&D_L00_001619F4], &v3[*(int *)&D_L00_001619F0]);
            v3[3][2] = 0.0f;
            v3[3][1] = 0.0f;
            v3[3][0] = 0.0f;
            v3[3][3] = f24;
            func_0020DAF8_2d3330((M2d1e80 *)a, 2, (s32 *)v4);
            func_L00_001FF4B0(v4, v4, f24);
            func_L00_001FF4B0(v5, v5, f24);
            func_L00_001FF4B0(v6, v6, f24);
            func_001FA4A0(v7, v4);
            v8[0][2] = 0.0f;
            v8[0][1] = 0.0f;
            v8[0][0] = 0.0f;
            v8[0][3] = f24;
            func_001FA540(v8[1], v7, pv2);
            func_002150B0(v0, v8[1]);
        goto copy1;
    nonact:
        *(u128 *)pv2 = 0;
        func_L00_0025AFA8(v0, pv2);
    copy1:
        qcopy(o + 0x30, v1);
        func_001FA5C8(D_L00_001E14C0, D_L00_001E14C0, v0, 0.1f);
        func_0020DAF8_2d3330((M2d1e80 *)a, 3, (s32 *)v2);
        qcopy(o + 0x30, v2);
        d = D_0013A5E0 + 0x2460;
        if (*(int *)(d + 0x1A4) & 0x20) {
            *(int *)(o + 0x24) = 0;
            *(int *)(o + 0x28) = 0;
        }
        if ((*(int *)(d + 0x1A0) & 0x20) && func_001F9850(15) < *(int *)(g + 0x10B0)) {
            if (*(float *)(g + 0x2044) < 10.0f) {
                r = func_L00_0028EB98(a, *(int *)(o + 0xC));
                if (r == 0 && *(int *)(o + 0xC) == -1) {
                    *(int *)(o + 0xC) = func_0022ED80(1, 4, a);
                }
                if (*(int *)(o + 0xC) != -1) {
                    r = func_001FA898_r(((10.0f - (*(float *)(g + 0x2044) + *(float *)(g + 0x2044))) * 32767.0f) / 60.0f);
                    func_L00_0028F210(*(int *)(o + 0xC), r - 0x1FFF);
                }
                f20 = 10.0f;
                r = func_001FA898_r(*(float *)(g + 0x2044) * 255.0f / f20);
                col = (r << 16) | (r << 8) | 0xFF0000FF;
                *(int *)(a + 0x90) = col;
                t = *(char **)(g + 0x2040);
                if (t != 0 && *(short *)(t + 0xA6) == 0x25D) {
                    ub = *(unsigned char *)(t + 0x20);
                    if (ub != 0xFE && ub != 0xFD && *(float *)(g + 0x2044) < 1.0f) {
                        p17 = *(char **)(t + 0x78);
                        if (*(int *)(p17 + 0x18) > 0) {
                            f21 = 1.0f;
                            do {
                                a1 = func_002140F8(f21, f20);
                                v2[0] = a1 * D_0015EE6C;
                                a2 = func_002140F8(-10.0f, f20);
                                v2[1] = a2 * D_0015EE6C;
                                a3 = func_002140F8(f21, 12.0f);
                                v2[2] = a3 * D_0015EE6C;
                                func_001F9EC0(v2, v2, g);
                                t = *(char **)(g + 0x2040);
                                qcopy(t + 0x10, o + 0x10);
                                func_L00_00260958((float *)(t + 0x10), 0.2f);
                                t = *(char **)(g + 0x2040);
                                func_L00_002A86D8(t, t + 0x10, v2, 19, 5, 0);
                                t = *(char **)(g + 0x2040);
                                qcopy(t + 0x10, o + 0x10);
                                if (p17) {
                                    if (*(int *)(p17 + 0x18) > 0) *(int *)(p17 + 0x18) -= 5;
                                    func_L00_002D42D8((unsigned char *)t);
                                } else {
                                    func_L00_002D42D8((unsigned char *)t);
                                }
                            } while (*(int *)(p17 + 0x18) > 0);
                        }
                        func_0020D678(*(char **)(g + 0x2040));
                        *(int *)(g + 0x2040) = 0;
                        *(float *)(g + 0x2044) = 100000.0f;
                        *(int *)(o + 0x8) = 0x7FFF;
                        func_0022ED80(3, 0, a);
                        oc = *(int *)(o + 0xC);
                        if (oc != -1) {
                            e = D_0013E633 + 0x1D + oc * 0x70;
                            if (*(char **)(e + 0x88) == a && *(unsigned char *)(e + 0x74)) func_L00_0028EBF0(oc);
                        }
                        *(int *)(o + 0xC) = -1;
                    }
                }
                func_001F49B0_2d3330((void *)func_L00_002D3F40, (M2d1e80 *)a);
            } else {
                *(int *)(a + 0x90) = 0x80808080;
                oc = *(int *)(o + 0x0);
                if (oc != -1) {
                    e = D_0013E633 + 0x1D + oc * 0x70;
                    if (*(char **)(e + 0x88) == a && *(unsigned char *)(e + 0x74)) func_L00_0028EBF0(oc);
                }
                *(int *)(o + 0x0) = -1;
                oc = *(int *)(o + 0x4);
                if (oc != -1) {
                    e = D_0013E633 + 0x1D + oc * 0x70;
                    if (*(char **)(e + 0x88) == a && *(unsigned char *)(e + 0x74)) func_L00_0028EBF0(oc);
                }
                *(int *)(o + 0x4) = -1;
                oc = *(int *)(o + 0xC);
                if (oc != -1) {
                    e = D_0013E633 + 0x1D + oc * 0x70;
                    if (*(char **)(e + 0x88) == a && *(unsigned char *)(e + 0x74)) func_L00_0028EBF0(oc);
                }
                *(int *)(o + 0xC) = -1;
                func_001F49B0_2d3330((void *)func_L00_002D3F40, (M2d1e80 *)a);
            }
        } else {
            *(int *)(a + 0x90) = 0x80808080;
            oc = *(int *)(o + 0x0);
            if (oc != -1) {
                e = D_0013E633 + 0x1D + oc * 0x70;
                if (*(char **)(e + 0x88) == a && *(unsigned char *)(e + 0x74)) func_L00_0028EBF0(oc);
            }
            *(int *)(o + 0x0) = -1;
            oc = *(int *)(o + 0x4);
            if (oc != -1) {
                e = D_0013E633 + 0x1D + oc * 0x70;
                if (*(char **)(e + 0x88) == a && *(unsigned char *)(e + 0x74)) func_L00_0028EBF0(oc);
            }
            *(int *)(o + 0x4) = -1;
            oc = *(int *)(o + 0xC);
            if (oc != -1) {
                e = D_0013E633 + 0x1D + oc * 0x70;
                if (*(char **)(e + 0x88) == a && *(unsigned char *)(e + 0x74)) func_L00_0028EBF0(oc);
            }
            *(int *)(o + 0xC) = -1;
        }
        break;
    case 3:
        goto done;
    case 4:
    done:
        break;
    default:
        break;
    }
}
