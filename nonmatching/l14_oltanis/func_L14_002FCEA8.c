/* NON_MATCHING func_L14_002FCEA8 -- src/overlays/l14_oltanis/vendor_002E0538.c
 * Best so far: SIZE ours 1736 / retail 1740, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 14 qwark moby update (class 851): claims the moby, runs a 0-3 state machine (S0 bit tests and init, S1 p
 */
extern unsigned char D_L14_001BBCC0[];
extern char D_L14_00161FF0[];
extern char D_L14_001BAF60[];
extern char D_0013E633[];
extern char D_0014171B[];
extern char D_L14_001675C0[];
extern char *D_L14_001601AC_t __asm__("D_L14_001601AC") MACRO_ADDR;
extern char *D_L14_00160098 MACRO_ADDR;
extern int D_L14_0015F6A8 MACRO_ADDR;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern unsigned char D_0015EEB0[] MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern void func_L02_002E2110(void *);
extern float func_001F9D10(void *, void *);
extern void func_L00_0025B178(void *);
extern int func_L00_002676E8(void *, void *);
extern int func_00215570(void *, int);
extern void func_L00_002512D8(int);
extern void func_L00_00286128(void *, void *);
extern int func_L00_00267290(void *, void *);
extern void func_L01_00279398(float, void *);
extern void func_L00_00264DB8(int, int);
extern void func_L00_002618D8(int, int);
extern void func_L14_002F0A30(void *);
extern int func_0020BFC8(int, int);
extern void func_0020D678(void *);
extern float func_001F9D48(void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern float func_001F9CB8(void *a);
extern int func_001F9850(int);
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

/* Level 14 qwark moby update: steers it, runs its state machine and effects. */
void func_L14_002FCEA8(char *moby) {
    char *d;
    char *base;
    char *p;
    float tmp[4];
    float pv[4];
    float out[4];
    int flag;
    int h;
    int st;
    int v20;
    float f22, f23, r1, a1, a2, mag, t, cc, e, dx, dy, f20, f2;

    d = *(char **)(moby + 0x78);
    func_L02_002E2110(moby);
    if (*(unsigned char *)(moby + 0x31)) {
        if (func_001F9D10(moby + 0x10, D_L14_001675C0) < 28.0f) {
            func_L00_0025B178(moby);
            moby[0x7F] = 0x16;
        }
    }

    st = *(unsigned char *)(moby + 0x20);
    if (st == 1) goto S1;
    if (st < 2) {
        unsigned int v;
        int i;
        if (st == 0) {
            v = *(unsigned short *)(moby + 0xB2);
            i = (short)v;
            if (D_L14_001BBCC0[i + 0x454]) goto C1C4;
            if ((*(int *)(D_0014171B + 0xAB75 + ((i >> 5) << 2) + (D_0015EE84_m << 8)) >> (v & 0x1F)) & 1) goto C1C4;
            if (*(int *)(d + 0x44) == -1) goto C1C4;
            if (*(int *)(d + 0x48) == -1) goto C1C4;
            *(char **)(d + 0x20) = D_L14_00161FF0;
            func_L00_002676E8(moby, d);
            d[8] = 1;
            moby[0x20] = 1;
        }
        goto TAIL;
    }
    if (st == 2) goto S2;
    if (st == 3) goto C1C4;
    goto TAIL;

S1:
    if (*(unsigned char *)(d + 8) == 1 && func_00215570(D_0013E633 + 0xE9D, *(int *)(d + 0x40))) {
        unsigned int u = *(unsigned char *)(moby + 0xB0);
        if (*(unsigned char *)(D_0014171B + 0xAA35 + u + (D_0015EE84_m << 4)) != 0xFF) {
            func_L00_002512D8(u);
            p = D_L14_001601AC_t + (*(int *)(d + 0x48) << 7);
            func_L00_00286128(p + 0x30, p + 0x70);
        }
        func_L14_002F0A00(D_L14_00160098 + (*(int *)(d + 0x44) << 8));
        *(float *)(d + 0xC) = 255.0f;
    } else {
        *(float *)(d + 0xC) = 1.7f;
    }
    if (func_L00_00267290(moby, d) != 0) {
        func_L01_00279398(3.0f, moby);
        moby[0x20] = 2;
    }
    goto TAIL;

S2:
    if (D_L14_0015F6A8 == 2) goto TAIL;
    moby[0x20] = 1;
    h = *(unsigned short *)(d + 4);
    if ((unsigned int)(h - 3) >= 2) goto TAIL;
    {
        unsigned int v2;
        unsigned int one = 1;
        int *q1;
        int *q2;
        if ((short)h != 4) {
            func_L00_00264DB8(0x36B3, -1);
        } else {
            func_L00_00264DB8(0x53E2, -1);
        }
        func_L00_002618D8(0x20, 1);
        func_L14_002F0A30(D_L14_00160098 + (*(int *)(d + 0x44) << 8));
        v2 = *(unsigned short *)(moby + 0xB2);
        q1 = (int *)(D_0014171B + 0xAB75 + ((((short)v2) >> 5) << 2) + (D_0015EE84_m << 8));
        *q1 |= one << (v2 & 0x1F);
        v2 = *(unsigned short *)(moby + 0xB2);
        q2 = (int *)(D_L14_001BAF60 + ((((short)v2) >> 5) << 2));
        *q2 |= one << (v2 & 0x1F);
        func_0020BFC8(0, -1);
    }

C1C4:
    func_0020D678(moby);
    return;

TAIL:
    flag = *(unsigned char *)(moby + 0x53);
    f22 = 0.02f;
    f23 = 0.3f;
    v20 = 0;
    if (flag == 0) {
    v20 = 1;
    base = D_0013E633 + 0xE9D;
    r1 = func_001F9D48(moby + 0x10, base);
    if (r1 < 8.0f) {
        char *q = base - 0x80;
        dx = *(float *)(q + 0xD0) - *(float *)(moby + 0x10);
        dy = *(float *)(q + 0xD4) - *(float *)(moby + 0x14);
        a1 = func_L00_001FF860(dx, dy);
        a2 = func_001FA850(*(float *)(moby + 0x48), a1);
        if (a2 < 1.5707964f) {
            mag = func_001F9CB8(base + 0x80);
            if (0.01f < mag) {
                *(int *)(d + 0x194) = func_001F9850(0x78);
            } else {
                func_001F9908(d + 0x194);
            }
            goto E0;
        }
    }
    if (*(int *)(d + 0x194) != 0) {
        *(int *)(d + 0x194) = 0;
        qcopy(d + 0x180, D_0013E633 + 0xEED);
    }

E0:
    if (func_001F9908(d + 0x198) != 0) {
        float s1 = func_002140F8(180.0f, 300.0f);
        int r3 = func_001FA898_r(func_001F9878(s1));
        float s2;
        *(int *)(d + 0x198) = r3;
        s2 = func_002140F8(-90.0f, 90.0f) * 0.0174532925f;
        f20 = func_001FA748(*(float *)(moby + 0x48), s2);
        t = func_002140F8(0.0f, 30.0f);
        func_00215C00(d + 0x180, 6.0f, f20, t * 0.0174532925f);
        func_001F9BD8(d + 0x180, d + 0x180, moby + 0x10);
    }
    if (*(int *)(d + 0x194) != 0) {
        qcopy(tmp, D_0013E633 + 0xEED);
        f22 = 0.04f;
        f23 = 0.3f;
    } else {
        qcopy(tmp, d + 0x180);
    }

    }
    if (v20) {
    qcopy(pv, moby + 0x10);
    pv[2] = pv[2] + 1.0f;
    func_001F9BF0(out, tmp, pv);
    a1 = func_L00_001FF860(out[0], out[1]);
    f20 = func_001FA790(a1, *(float *)(moby + 0x48));
    cc = func_001F9CE8(out);
    e = func_L00_001FF860(cc, out[2]);
    f2 = -e;
    if (f20 > 1.5707964f) {
        f20 = 1.5707964f;
    } else if (f20 < -1.5707964f) {
        f20 = -1.5707964f;
    }
    if (0.5235988f < f2) {
        f2 = 0.5235988f;
    }
    if (f2 < -0.5235988f) {
        f2 = -0.5235988f;
    }
    *(float *)(d + 0xE4) = f2;
    *(float *)(d + 0xE8) = f20 * 0.6f;
    *(float *)(d + 0x168) = f20 * 0.4f;
    }

L4E4:
    if (D_0015EEB0[0] != 0) {
        *(float *)(d + 0xF0) = 2.75f;
    }
    func_L00_00263950(moby, d + 0x80, 0, f22 * D_0015EE64, f23 * D_0015EE64);
    func_L00_00263950(moby, d + 0x100, 1, f22 * D_0015EE64, f23 * D_0015EE64);
}
