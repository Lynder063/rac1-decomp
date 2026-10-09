/* NON_MATCHING func_L13_002C3FB8 -- src/overlays/l13_gemlik/vendor_002C2638.c
 * Best so far: SIZE ours 1440 / retail 1436, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Hero-moby grab/hang update: two 258BC8/F9850 probe blocks, a 0025B4D0 result drives a state switch (jump table
 *   Left: the `lw $v1,0x40(sp)` / `lh` flag reload comes out in another order; a `bnez` where retail has `beqz` ne
 */
typedef int u128x __attribute__((mode(TI)));
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80_s(int, int, int) __asm__("func_0022ED80");
extern void func_L00_00263B78(float, float, char *, float *, float *);
extern void func_L00_00263BF8(void *, char *, char *, float, float, float);
extern float func_001F9FA8(float);
extern float func_002140F8(float, float);
extern void func_L00_00250800(void *, int, void *);
extern int func_L00_00258BC8(int, int);
extern int func_001F9850(int);
extern void func_L00_0026A7F8(void *, void *, int, int, int, int, int, int);
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, void *, void *, int, int);
extern void func_00213DE0(void *, int, int, int);
extern void func_L00_002584A8(void *, int, int);
extern void func_L00_0025E4B0(void *m, short *p);
extern void func_L00_0025E590(void *, void *);
extern int func_L00_00260FB0(float, char *, void *, int, int, void *, int);
extern float func_001F9D48(void *, void *);
extern float func_001F9B88(float);
extern float D_0015EE6C MACRO_ADDR;
extern int D_L13_0015F6B0 MACRO_ADDR;
extern char *D_L13_001B0AB0[];
extern short D_L13_00161520;
extern char D_0013E633[];

// Hero-moby update for the grab/hang state: samples points, picks a move state, and resets timers.
void func_L13_002C3FB8(unsigned char *moby) {
    unsigned char *d;
    char *r;
    char *q;
    int st;
    int flag;
    int r2;
    float a1;
    float t;
    float fl;
    float fx;
    char v0[16];
    char v1[16];
    char v2[16];
    float z[4];

    if (moby[0x20] == 0) return;
    d = *(unsigned char **)(moby + 0x78);
    if (*(int *)(d + 0x110) == -1 || func_L00_0028EB98(moby, *(int *)(d + 0x110)) == 0) {
        *(int *)(d + 0x110) = -1;
        *(int *)(d + 0x110) = func_0022ED80_s(1, 4, moby);
    }
    func_L00_00263B78(0.5f, D_0015EE6C * 1.39626336f, moby, (float *)(d + 0x100), (float *)(d + 0x104));
    func_L00_00263BF8(moby, d + 0x108, d + 0x10C, 0.104719758f, D_0015EE6C * 0.314159274f, D_0015EE6C * 0.366519153f);
    *(float *)(moby + 0x10) = *(float *)(d + 0xC0) + func_001F9FA8(*(float *)(d + 0x108));
    *(float *)(moby + 0x14) = *(float *)(d + 0xC4) + func_001F9FA8(*(float *)(d + 0x10C));
    *(u128x *)z = 0;
    fl = func_002140F8(4.5f, 5.5f);
    t = -(fl * D_0015EE6C);
    z[2] = t;
    *(u128x *)v2 = *(u128x *)z;
    func_L00_00250800(moby, 2, v0);
    func_L00_00250800(moby, 3, v1);
    if ((D_L13_0015F6B0 & 1) == 0) {
        func_L00_00258BC8(0x14, 0x18);
        func_L00_0026A7F8(v0, v2, 0x6000FFFF, 0x80, func_001F9850(func_L00_00258BC8(0x14, 0x18)), 0x64, -0xA, 1);
        func_L00_0026A7F8(v1, v2, 0x6000FFFF, 0x80, func_001F9850(func_L00_00258BC8(0x14, 0x18)), 0x64, -0xA, 1);
    } else {
        r = v2;
        func_L00_0026A7F8(v0, v2, 0xCF0000FF, 0xCF, func_001F9850(func_L00_00258BC8(0x12, 0x16)), 0x32, -0xA, 1);
        func_L00_0026A7F8(v1, v2, 0xCF0000FF, 0xCF, func_001F9850(func_L00_00258BC8(0x12, 0x16)), 0x32, -0xA, 1);
    }
    {
        int ra = func_L00_00258BC8(0xA, 0x19);
        int rb = func_L00_00258BC8(0xA, 0xF);
        func_L00_0026A7F8(v0, v2, 0xEFFF7F4F, 0xFF0000, func_001F9850(rb), ra, -ra, 1);
        ra = func_L00_00258BC8(0xA, 0x19);
        rb = func_L00_00258BC8(0xA, 0xF);
        func_L00_0026A7F8(v1, v2, 0xEFFF7F4F, 0xFF0000, func_001F9850(rb), ra, -ra, 1);
    }
    a1 = 0.0f;
    *(float *)(moby + 0x2C) = *(float *)(*(char **)(moby + 0x24) + 0x24) * *(float *)&D_L13_00161520;
    r = func_L00_0025B478(moby, 0x330000, 0);
    st = func_L00_0025B4D0(moby, r, d + 0x20, 0, &flag, &a1, 0, 4);
    if (r != 0) {
        q = *(char **)(r + 0x20);
        if (q != 0 && *(short *)(q + 0xA6) == 0x4D1) {
            flag = 1;
            a1 = 0.0f;
        }
    }
    if (flag != 1) {
        *(float *)(d + 0x20) = *(float *)(d + 0x20) - a1;
        if (d[0x53] != 7) func_00213DE0(moby, 7, 0, 5);
        if (*(float *)(d + 0x20) <= 0.0f) {
            st = 1;
        } else {
            moby[0x20] = 7;
        }
        switch (st) {
        case 1:
        case 2:
            func_L00_002584A8(moby, 0, -1);
            moby[0x20] = 8;
            d[0x67] = 0xF0;
            break;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
            d[0x67] = 0x78;
            break;
        case 9:
        case 10:
            d[0x67] = 0xFA;
            break;
        case 0:
        case 11:
        default:
            break;
        }
        q = d + 0x60;
        func_L00_0025E4B0(moby, q);
    }
    func_L00_0025E590(moby, d + 0x60);
    moby[0xA4] = 0xFF;
    if (moby[0x20] != 4) {
        *(float *)(d + 0xD8) = 40.0f;
    } else {
        *(float *)(d + 0xD8) = 50.0f;
    }
    {
        char *ptr = D_L13_001B0AB0[*(int *)(d + 0xD0)];
        r2 = func_L00_00260FB0(*(float *)(d + 0xD8), moby, d + 0x70, 0, 0, ptr + 0x10, *(int *)ptr);
    }
    if (r2 != 2) {
        fx = func_001F9D48(moby + 0x10, d + 0x70);
        if (*(float *)(d + 0xD8) < fx) {
            *(int *)(d + 0xB4) = 2;
        } else {
            fx = func_001F9B88(*(float *)(moby + 0x18) - *(float *)(d + 0x78));
            if (8.0f < fx) {
                *(int *)(d + 0xB4) = 2;
            } else if (moby[0x20] != 5) {
                if (func_L00_001EFFF0(moby + 0x10, D_0013E633 + 0xEED, 2, moby, 0) != 0) {
                    *(int *)(d + 0xB4) = 2;
                }
            }
        }
    }
    if (*(int *)(d + 0xB0) == 0) {
        *(int *)(d + 0xB0) = *(int *)(D_0013E633 + 0x2E9D);
    }
}
