/* NON_MATCHING func_L05_003047E8 -- src/overlays/l05_rilgar/vendor_002D28D0.c
 * Best so far: SIZE ours 1876 / retail 1908, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - Stopped (hq9/s20, 1 run). Function: level 5 moby update: vertex/colour setup, a 12-way jump table on a state
 *   - Unblock: a per-block reload of D_0015EE6C/D_L05_00161B58 (declared as the file's own globals) and the size g
 */
extern int func_001F9908(int *arg0);
extern char *func_L00_0025B478(void *, int, int);
extern float func_001F9D10(void *, void *);
extern int func_L00_001EFFF0(void *, void *, int, void *, void *);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern int func_001FA898(float);
extern float func_L00_001FF860(float, float);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern void func_L00_0025D5B0(void *, void *, float, int, int, int);
extern void func_L00_002584A8(void *, int, int);
extern void func_L00_0025E4B0(void *m, short *p);
extern void func_L00_0025E590(void *, void *);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_L00_00260FB0(float a, char *m, char *b, int c, int d, int *e, int f);
extern float func_001F9D48(void *, void *);
extern float func_001F9B88(float input);
extern char *func_L05_003053D8(char *self, int idx);
extern float func_001FA748(float, float);
extern float func_001F9FA8(float);
extern int func_001FA8A8(int, int, float);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001FA790(float, float);
extern float func_001F9CE8(void *);
extern void func_L00_00263950(char *, char *, int, float, float);
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern char *D_L05_001B0CB0[];
extern float D_0015EE64 MACRO_ADDR;
extern short D_L05_00161B58;
extern short D_L05_00161B90;
extern short D_L05_00161B48;
extern short D_L05_00161B4C;
extern short D_L05_00161B94;
extern short D_L05_00161B50;
extern short D_L05_00161B54;
extern short D_L05_00161B34;
extern short D_L05_00161B38;
extern char D_0013E633[];

typedef int u128 __attribute__((mode(TI)));

/* Level 5 moby update: runs the moby's state machine and its draw-path setup. */
void func_L05_003047E8(unsigned char *moby) {
    unsigned char *data = *(unsigned char **)(moby + 0x78);
    float v0[4], v10[4];
    float f24;
    int r20;
    float t28, t2c;
    char *r;
    char *o;
    char *pp;
    int res;
    int w2;
    int v5;
    float f0, f2, f13, f20, f21;
    int k;

    func_001F9908((int *)(data + 0x2D4));
    f24 = 0.0f;
    r = func_L00_0025B478(moby, 0x330000, 0);
    if (r == 0) goto L304924;

    *(u128 *)v0 = *(u128 *)(moby + 0x10);
    v0[2] = v0[2] + 0.5f;
    o = *(char **)(r + 0x20);
    if (o == 0) goto L3048D4;
    if (*(short *)(o + 0xA6) == 0x47) {
        *(u128 *)v10 = *(u128 *)(D_0013E633 + 0xEED);
        pp = (char *)v10;
        goto L3048E4;
    }
    if (*(int *)(o + 0x24) != 0 && *(short *)(*(char **)(o + 0x24) + 0x46) == 5) goto L3048AC;
    if (*(short *)(o + 0xA6) == 0xBA) goto L3048AC;
    *(u128 *)v10 = *(u128 *)(o + 0x10);
    pp = (char *)v10;
    goto L3048E4;

L3048AC:
    *(u128 *)v10 = *(u128 *)v0;
    pp = (char *)v10;
    goto L3048E4;

L3048D4:
    *(u128 *)v10 = *(u128 *)r;
    pp = (char *)v10;

L3048E4:
    f0 = func_001F9D10(v0, pp);
    if (f0 < 24.0f) {
        if (func_L00_001EFFF0(v0, pp, 2, moby, 0)) r = 0;
    }

L304924:
    res = func_L00_0025B4D0(moby, r, data + 0x20, 0, &r20, &f24, 0, 4);
    if (r20 == 1) goto L304BD8;
    if (moby[0x20] == 14) goto L304BD8;
    f0 = *(float *)(data + 0x20) - f24;
    *(float *)(data + 0x20) = f0;
    if (f0 <= 0.0f) res = 1;

    k = func_001FA898(*(float *)&D_L05_00161B58 * 409.6f);
    *(int *)(data + 0x90) = k;
    *(int *)(data + 0x94) = 9;
    data[0xAD] = 0;
    *(float *)(data + 0x80) = *(float *)&D_L05_00161B90 * D_0015EE70;
    *(float *)(data + 0x98) = *(float *)&D_L05_00161B58 * 0.4f;
    if ((unsigned int)res >= 12) goto L304BC4;
    switch (res) {
    case 0:
        break;
    case 1:
    case 2:
        goto L304AB8;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
        goto L304A10;
    case 9:
    case 10:
        goto L304A04;
    case 11:
        break;
    }
    goto L304BC4;

L304A04:
    moby[0x67] = 0xFA;
    goto L304BC4;

L304A10:
    f0 = *(float *)&D_L05_00161B48 * D_0015EE6C;
    f2 = 5.0f;
    f20 = *(float *)&D_L05_00161B4C * D_0015EE6C;
    f13 = 10.0f;
    *(float *)(data + 0xC0) = f2;
    *(float *)(data + 0xC4) = f13;
    *(float *)(data + 0x88) = f0;
    *(float *)(data + 0x8C) = f20;
    o = *(char **)(r + 0x20);
    f0 = func_L00_001FF860(*(float *)(moby + 0x10) - *(float *)(o + 0x10),
                           *(float *)(moby + 0x14) - *(float *)(o + 0x14));
    *(u128 *)v0 = *(u128 *)(r + 0x10);
    t28 = f0;
    func_L00_0025BBA0(v0, &t28, data + 0x88, data + 0x8C);
    func_L00_0025D5B0(moby, data + 0x70, t28, 5, 1, 0);
    moby[0x20] = 0xB;
    data[0x67] = 0x78;
    goto L304BC4;

L304AB8:
    *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) & 0xEFFF;
    *(float *)(data + 0x80) = *(float *)&D_L05_00161B94 * D_0015EE70;
    *(float *)(data + 0xC0) = 5.5f;
    *(float *)(data + 0xC4) = 11.0f;
    *(float *)(data + 0x88) = *(float *)&D_L05_00161B50 * D_0015EE6C;
    *(float *)(data + 0x8C) = *(float *)&D_L05_00161B54 * D_0015EE6C;
    o = *(char **)(r + 0x20);
    f0 = func_L00_001FF860(*(float *)(moby + 0x10) - *(float *)(o + 0x10),
                           *(float *)(moby + 0x14) - *(float *)(o + 0x14));
    *(u128 *)v0 = *(u128 *)(r + 0x10);
    t2c = f0;
    func_L00_0025BBA0(v0, &t2c, data + 0x88, data + 0x8C);
    func_L00_0025D5B0(moby, data + 0x70, t2c, 6, 1, 0);
    moby[0x20] = 0xE;
    data[0x67] = 0xF0;
    o = *(char **)(r + 0x20);
    if (o == 0) {
        func_L00_002584A8(moby, 0, -1);
    } else {
        char *p = *(char **)(o + 0x24);
        if (p == 0 || *(short *)(p + 0x46) != 5) {
            func_L00_002584A8(moby, 0, -1);
        } else {
            func_L00_002584A8(moby, 0x800, -1);
        }
    }
    goto L304BC4;

L304BC4:
    /* falls to the shared tail with pp = data + 0x60 */
    ;
L304BC8:
    func_L00_0025E4B0(moby, (short *)(data + 0x60));

L304BD8:
    func_L00_0025E590(moby, data + 0x60);
    moby[0xA4] = 0xFF;
    if (*(int *)(data + 0x38) != 0) {
        f0 = func_002140F8(180.0f, 240.0f);
        f0 = func_001F9878(f0);
        *(int *)(data + 0x2B0) = func_001FA898(f0);
        *(int *)(data + 0x38) = 0;
    }
    func_001F9908((int *)(data + 0x2B0));
    f0 = *(float *)(data + 0x29C);
    if (*(int *)(data + 0x2B0) != 0) f0 = f0 + 20.0f;
    *(float *)(data + 0x2A0) = f0;
    {
        char *tab = *(char **)((char *)D_L05_001B0CB0 + *(int *)(data + 0x2CC) * 4);
        pp = data + 0x120;
        res = func_L00_00260FB0(*(float *)(data + 0x2A0), (char *)moby, pp, 0, 0,
                                (int *)(tab + 0x10), *(int *)tab);
        if (res == 2) goto L304CE0;
        f0 = func_001F9D48(data + 0x270, pp);
        if (*(float *)(data + 0x2A0) < f0) {
            *(int *)(data + 0x164) = 2;
            goto L304CE0;
        }
    }
    f0 = func_001F9B88(*(float *)(moby + 0x18) - *(float *)(data + 0x128));
    if (3.0f < f0) *(int *)(data + 0x164) = 2;

L304CE0:
    v5 = *(int *)(data + 0x2C8);
    if (v5 < 0) {
        w2 = *(int *)(data + 0x160);
        goto L304D4C;
    }
    r = func_L05_003053D8((char *)moby, v5);
    if (r == 0) goto L304D48;
    if (*(int *)(data + 0x164) != 2) {
        pp = (char *)moby + 0x10;
        f20 = func_001F9D48(pp, r + 0x10);
        f0 = func_001F9D48(pp, (char *)(*(int *)(data + 0x160) + 0x10));
        if (!(f20 < f0)) goto L304D48;
    }
    *(int *)(data + 0x160) = (int)r;
    *(int *)(data + 0x164) = 1;
L304D48:
    w2 = *(int *)(data + 0x160);
L304D4C:
    f0 = *(float *)&D_0015EE6C;
    if (w2 == 0) {
        *(int *)(data + 0x160) = *(int *)(D_0013E633 + 0x2E9D);
        f0 = *(float *)&D_0015EE6C;
    }
    f0 = func_001FA748(*(float *)(data + 0x2D8), f0 * 9.42477798f);
    *(float *)(data + 0x2D8) = f0;
    f0 = func_001F9FA8(f0);
    f0 = f0 + 1.0f;
    k = func_001FA8A8(*(int *)&D_L05_00161B34, *(int *)&D_L05_00161B38, (f0) * 0.5f);
    *(int *)(moby + 0x90) = k;
    if (moby[0x20] >= 10) goto L304EE0;
    f13 = D_0015EE64;
    if (moby[0x20] < 4) goto L304EEC;
    if (*(int *)(data + 0x160) != *(int *)(D_0013E633 + 0x2E9D)) goto L304EEC;
    func_001F9BF0(v0, (char *)(*(int *)(data + 0x160) + 0x10), moby + 0x10);
    f0 = func_L00_001FF860(v0[0], v0[1]);
    f0 = func_001FA790(f0, *(float *)(moby + 0x48));
    f20 = f0;
    f0 = func_001F9CE8(v0);
    f0 = func_L00_001FF860(f0, v0[2]);
    f2 = -f0;
    if (*(unsigned short *)(moby + 0x34) & 0x8000) f20 = -f20;
    if (1.57079637f < f20) f20 = 1.57079637f;
    if (f20 < -1.57079637f) f20 = -1.57079637f;
    if (0.52359879f < f2) f2 = 0.52359879f;
    if (f2 < -0.52359879f) f2 = -0.52359879f;
    *(float *)(data + 0x1D4) = f2;
    *(float *)(data + 0x1D8) = f20 * 0.699999988f;
    *(float *)(data + 0x258) = f20 * 0.300000012f;
L304EE0:
    f13 = D_0015EE64;
L304EEC:
    func_L00_00263950((char *)moby, (char *)(data + 0x170), 1, f13 * 0.0399999991f, f13 * 0.300000012f);
    func_L00_00263950((char *)moby, (char *)(data + 0x1F0), 2, D_0015EE64 * 0.0399999991f, D_0015EE64 * 0.300000012f);
}
