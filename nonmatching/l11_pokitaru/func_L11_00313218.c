/* NON_MATCHING func_L11_00313218 -- src/overlays/l11_pokitaru/vendor_00312BD8.c
 * Best so far: SIZE ours 2124 / retail 2132, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - What it does: level-11 moby update: fires four HUD quads from func_001F5800 and func_001F5E60 at fixed colou
 *   - Best candidate p7.c: same size range as retail (2124 bytes, retail 2132). The G base is a block-scoped `char
 *   - What is left: (1) the two globals D_0015EFA4 and D_0015EE84 come out as $gp loads in our body where retail h
 *   - Unblock: a way to keep those two 4-byte globals in lui form outside a delay slot, and the saved-register ord
 */
extern void func_00234C98(int, long);
extern int func_001F4868(int);
extern void func_001F5800(int, int, int, int, int, int, int, int, long, long);
extern void func_L11_00312BD8(void *, void *, void *, int, int);
extern int func_L11_003194C0(char *moby, void **out);
extern void func_L11_00311F98(float, float, float, void *, int, int, long);
extern void func_001F5E60(float, float, float, float, float, int, int, int, int, int, int, int, float, float);
extern float func_L00_0025F368(float);
extern void func_L11_00312510(unsigned char, unsigned char, unsigned char, unsigned char, float, float, float, float);
extern int func_L00_00203F20(int, int);
extern void *func_001FE540_id(int) __asm__("func_001FE540");
extern s32 func_001F6FD8_01A38(s32, s32, u64, s32, s32) __asm__("func_001F6FD8");
extern float func_001F9B88(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern char D_0014171B[];
extern char D_L11_001F0FB8[];
extern int D_L11_001F1348[];
extern short D_L11_001621FC;
extern int D_L11_0015F6B0 MACRO_ADDR;
extern int D_0015EFA4_m __asm__("D_0015EFA4") MACRO_ADDR;
extern s32 D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern char D_0013E15A[];
extern float D_L11_00167850[];
extern short D_L11_001621F0;
extern short D_L11_001621F4;
extern short *D_L11_001AC540[];
extern int D_L11_00160058_m __asm__("D_L11_00160058") MACRO_ADDR;
extern char D_0013E633[];

/* per-frame target update: sweeps the candidate list, drives the readout and the ping slots */
void func_L11_00313218(char *a) {
    char *d, *m, *p16;
    short *p;
    void *list[12];
    void **pl;
    int s40, s44, n, k, i, cnt, half, r, q, v7, v4, v8, v6, arg, u16, idx, z17, z18;
    long tex;
    unsigned long rgba;
    float f20, f21, f22, f23, f24, f0, f1, f2, r1, r3, t2, x1, x2, x3, rr;

    d = *(char **)(a + 0x78);
    func_00234C98(0x42, 0x8000000044L);
    tex = func_001F4868(0x3C);
    rgba = 0x70808080;
    p16 = D_0013E15A + 0x4A6;
    func_001F5800(0x170, *(int *)(p16 + 4) - 0x90, 0x80, 0x80, 0, 0, 0x80, 0x80, rgba, tex);
    tex = func_001F4868(0x3D);
    func_001F5800(0x170, *(int *)(p16 + 4) - 0x90, 0x80, 0x80, 0, 0, 0x80, 0x80, rgba, tex);
    func_00234C98(0x42, 0x8000000048L);
    func_001F4868(0x3E);

    p = D_L11_001AC540[*(short *)(d + 0x108)];
    if (p != 0) {
        do {
            m = (char *)(((*(unsigned short *)p & 0x7FFF) << 8) + D_L11_00160058_m);
            if (m[0x20] >= 0) {
                n = func_L11_003194C0(m, list);
                if (n > 0) {
                    pl = list;
                    k = n;
                    do {
                        func_L11_00312BD8(D_L11_00167850, D_L11_00167850 - 4, *pl++, 0, 0x75808080);
                    } while (--k != 0);
                }
            }
        } while (*p++ >= 0);
    }

    z17 = 0x40;
    z18 = 0x18;
    i = 0;
    {
        char *g = D_0013E633 + 0xE1D;
    if ((*(unsigned char *)(g + 0x15F7)) != 0) {
        do {
            if (i < (*(unsigned char *)(g + 0x15F6))) {
                func_L11_00311F98((float)z18, (float)z17, 0.5f, D_L11_001F0FB8, 0x19, 0xFFFFF3, 0x50008F00L);
            } else {
                func_L11_00311F98((float)z18, (float)z17, 0.5f, D_L11_001F0FB8, 0x19, 0xFFFFF3, 0x20004F00L);
            }
            cnt = (*(unsigned char *)(g + 0x15F7));
            half = cnt >> 1;
            if (i == half) {
                z17 = 0x2E;
                z18 += 0x1E;
            }
            i++;
            z17 += 0x12;
        } while (i < cnt);
    }
    }

    {
        int w0 = *(int *)(d + 0xE0);
        int w4 = *(int *)(d + 0xE4);
        f23 = (float)w0;
        f21 = 0.5f;
        f22 = (float)w4;
    }
    k = func_001F4868(0x11);
    f20 = 40.0f;
    f24 = 0.0f;
    func_001F5E60(f23, f22, f20, f20, f24, 0x3F, 0x3F, k, 0xFFFFF3, 0xFF20FF20, 0, 0, f21, f21);
    k = func_001F4868(0x12);
    func_001F5E60(f23, f22, f20, f20, f24, 0x3F, 0x3F, k, 0xFFFFF3, 0xFF20FF20, 0, 0, f21, f21);
    k = func_001F4868(0x8);
    func_001F5E60(f23, f22, 10.0f, 10.0f, f24, 0x1F, 0x1F, k, 0xFFFFF3, 0xFF20FF20, 0, 0, f21, f21);

    func_L11_00313148((int)a, d);
    if (*(int *)(d + 0x88) != 0) {
        func_L11_003126D8(*(char **)(d + 0x88) + 0x10, &s40, &s44, 0);
        if (*(int *)&D_L11_001621F0 < *(int *)(d + 0x8C)) {
            f0 = func_001FA888(*(int *)(d + 0x8C) - *(int *)&D_L11_001621F0);
            f20 = f0;
            t2 = func_001FA888(*(int *)&D_L11_001621F4);
            f20 = f20 / t2;
            f0 = 1.0f - f20;
            f20 = f20 * 5.0f;
            f0 = f0 + f0;
            f22 = f20 + 1.0f;
            if (1.0f < f0) f0 = 1.0f;
            r = func_001FA898_r(f0 * 96.0f);
            u16 = r & 0xFF;
            x1 = func_001FA888(s40);
            f21 = x1;
            x2 = func_001FA888(s44);
            f20 = x2;
            x3 = func_001FA888(*(int *)&D_L11_0015F6B0);
            rr = func_L00_0025F368(x3 / 30.0f);
            func_L11_00312510(0, 0xFF, 0, u16, f21, f20, f22, rr);
            *(int *)(d + 0xEC) = 0;
        } else {
            r = func_001F9850(0x14);
            u16 = 0xFF;
            q = *(int *)(d + 0x8C) / r;
            if (q & 1) u16 = 0;
            x1 = func_001FA888(s40);
            x2 = func_001FA888(s44);
            func_L11_00312510(0xFF, u16, 0, 0x60, x1, x2, 1.0f, 0.0f);
            *(int *)(d + 0xEC) = *(int *)(d + 0x88);
        }
    }

    /* L3708 */
    {
        char *g = D_0013E633 + 0xE1D;
    if (*(float *)(g + 0x15FC) < *(float *)(g + 0x1600) * 0.25f) {
        if (*(unsigned short *)((D_0014171B + 0x34D) + 0x2C0) != 0) {
            if (*(unsigned short *)((D_0014171B + 0x34D) + 0x2C0) < 2) {
                *(int *)(d + 0x11C) = *(int *)(d + 0x11C) + 1;
                r = func_001F9850(0x708);
                if (r < *(int *)(d + 0x11C)) {
                    func_L00_00203F20(0x2AFF, 0x58);
                }
            }
        } else {
            func_L00_00203F20(0x2AFF, 0x58);
        }
    } else {
        if (*(int *)(d + 0x11C) != 0) {
            if (0xFFFE < *(unsigned short *)((D_0014171B + 0x34D) + 0x2C0)) {
                arg = D_0015EFA4_m;
            } else {
                arg = D_0015EFA4_m;
                *(unsigned short *)((D_0014171B + 0x34D) + 0x2C0) = *(unsigned short *)((D_0014171B + 0x34D) + 0x2C0) + 1;
            }
            r = func_001F9850(arg);
            q = r / 600;
            if (*(unsigned short *)((D_0014171B + 0x34D) + 0x2C2) < q) {
                k = D_0015EE84_m;
                r = func_001F9850(D_0015EFA4_m);
                *(unsigned short *)((D_0014171B + 0x34D) + 0x2C2) = r / 600;
                k = D_0015EE84_m;
            } else {
                k = D_0015EE84_m;
            }
            *(int *)((D_0014171B + 0x34D) + 0x2C4) = *(int *)((D_0014171B + 0x34D) + 0x2C4) | (1 << k) | 0x80000000;
            *(int *)(d + 0x11C) = 0;
        }
    }
    }

    /* L381C */
    func_001F9908((int *)(d + 0x120));
    {
        char *g = D_0013E633 + 0xE1D;
    if (*(unsigned char *)(g + 0x15F6) < 5 && *(unsigned short *)((D_0014171B + 0x34D) + 0x2B8) == 0) {
        arg = 0x2AFE;
        func_L00_00203F20(arg, 0x57);
        *(int *)(d + 0x120) = func_001F9850(0x4B0);
    } else if (*(unsigned char *)(g + 0x15F6) == 0 && *(unsigned short *)((D_0014171B + 0x34D) + 0x2B8) < 2 && *(int *)(d + 0x120) == 0) {
        func_L00_00203F20(0x2AFE, 0x57);
        *(int *)(d + 0x120) = func_001F9850(0x4B0);
    }
    }
    if (*(unsigned short *)((D_0014171B + 0x34D) + 0x2B0) == 0) {
        r = *(int *)(d + 0x128);
        *(int *)(d + 0x128) = r + 1;
        k = func_001F9850(0xE10);
        if (k < r) {
            func_L00_00203F20(0x2AFD, 0x56);
        }
    }
    if (*(unsigned char *)(a + 0x20) == 8) {
        q = (int)func_001FE540_id(0x5243);
        func_001F6FD8_01A38(0x100, 0xC8, 0x80005080L, q, 0x11);
    }

    /* L3900 */
    {
        char *g = D_0013E633 + 0xE1D;
    f2 = *(float *)(d + 0xF0);
    f20 = (*(float *)(g + 0x15FC) - f2) * 0.2f;
    r1 = func_001F9B88(f20);
    if (1.0f < r1) f20 = f20 / r1;
    f0 = *(float *)(d + 0xF0) + f20;
    *(float *)(d + 0xF0) = f0;
    r3 = (float)func_001FA898_r(f0 * 251.0f / *(float *)(g + 0x1600));
    v7 = (int)r3 + 2;
    if (!(v7 < 0xFE)) v7 = 0xFD;
    if (!(1 < v7)) v7 = 2;
    v4 = *(int *)(d + 0xF4);
    v8 = v4;
    if (v4 < v7) v8 = v7;
    v6 = v7;
    if (!(v7 < v4)) v6 = v4;
    if (v8 < v6) {
        *(int *)(d + 0xF4) = v7;
    } else {
        i = v6;
        do {
            idx = ((i & 0xE7) | ((i & 0x10) >> 1)) | ((i & 8) << 1);
            if (i < v7) {
                *(int *)(*(int *)&D_L11_001621FC + idx * 4) = D_L11_001F1348[idx];
            } else {
                *(int *)(*(int *)&D_L11_001621FC + idx * 4) = 0x80000000;
            }
            i++;
        } while (!(v8 < i));
        *(int *)(d + 0xF4) = v7;
    }
    }
}
