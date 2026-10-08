/* NON_MATCHING func_L11_00311B60 -- src/overlays/l11_pokitaru/vendor_002CC828.c
 * Best so far: SIZE ours 1084 / retail 1080, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Pokitaru moby update (1080 bytes): steering toward a target, a jump table over a result 0..11 (cases 9-10, 3-8
 *   What is left is register choice, not instructions: the float constants 3.0/6.0 (and D_0015EE6C) land in other 
 *   Moving the constant stores ahead of the products (p9) went to 123 bytes, so the store order is not the lever e
 */
typedef int V128_11 __attribute__((mode(TI)));
typedef union { V128_11 q; float f[4]; } UVec11;
extern float D_L11_0016202C SDATA(D_L11_0016202C);
extern float D_L11_00162058 SDATA(D_L11_00162058);
extern float D_L11_0016205C SDATA(D_L11_0016205C);
extern float D_L11_00162018 SDATA(D_L11_00162018);
extern float D_L11_00162020 SDATA(D_L11_00162020);
extern float D_L11_0016201C SDATA(D_L11_0016201C);
extern float D_L11_00162028 SDATA(D_L11_00162028);
extern float D_L11_00162024 SDATA(D_L11_00162024);
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern int *D_L11_001B11B0[];
extern char D_0013E633[];
extern void func_001F9908(int *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L11_0031A2E8(char *, void *);
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern float func_L00_001FF860(float, float);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern void func_L00_0025D5B0(void *, void *, float, int, int, int);
extern void func_L00_00237B70(void);
extern int func_001F9850(int);
extern void func_L00_002584A8(void *, int, int);
extern void func_L00_0025E4B0(void *m, short *p);
extern void func_L00_0025E590(void *, void *);
extern int func_L00_00260FB0(float, char *, void *, int, int, void *, int);
extern float func_001F9D48(void *, void *);
extern float func_001F9B88(float);

/* Orxon moby update: steers toward its target, picks an animation state and fires the effect. */
void func_L11_00311B60(char *moby) {
    char *data = *(char **)(moby + 0x78);
    UVec11 v0;
    int a;
    float b;
    float d;
    float e;
    float t;
    float pr;
    float g;
    int r16;
    int q;
    char *r;
    char *p;
    int v;

    func_001F9908((int *)(data + 0x158));
    *(float *)(moby + 0x2C) = *(float *)(*(char **)(moby + 0x24) + 0x24) * D_L11_0016202C;
    if (*(int *)(data + 0x160) != 0) {
        func_L00_001FF4B0(&v0, moby + 0xC0, D_L11_00162058);
        func_001F9BD8(&v0, &v0, moby + 0x10);
        v0.f[2] = v0.f[2] + D_L11_0016205C;
        func_L11_0031A2E8((char *)*(int *)(data + 0x160), &v0);
    }
    b = 0.0f;
    r = func_L00_0025B478(moby, 0x330000, 0);
    r16 = func_L00_0025B4D0(moby, r, data + 0x20, 0, &a, &b, 0, 4);
    if (a != 1 && ((unsigned char *)moby)[0x20] != 8) {
        t = *(float *)(data + 0x20) - b;
        *(float *)(data + 0x20) = t;
        if (t <= 0.0f) {
            r16 = 1;
        }
        q = func_001FA898_r(512.0f);
        pr = D_L11_00162018 * D_0015EE70;
        *(int *)(data + 0x90) = q;
        *(float *)(data + 0x98) = 0.5f;
        *(float *)(data + 0x80) = pr;
        *(float *)(data + 0x84) = 0.0005000000237487257f;
        *(int *)(data + 0x94) = 9;
        data[0xAD] = 0;
        if ((unsigned)r16 < 12) {
            switch (r16) {
            case 0:
                break;
            case 1:
            case 2:
                {
                    float f3 = D_L11_00162018 * D_0015EE70;
                    float f1 = D_L11_00162028 * D_0015EE6C;
                    float f0 = D_L11_00162024 * D_0015EE6C;
                    *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) & 0xEFFF;
                    *(float *)(data + 0x80) = f3;
                    *(float *)(data + 0xC0) = 4.0f;
                    *(float *)(data + 0xC4) = 10.0f;
                    *(float *)(data + 0x88) = f1;
                    *(float *)(data + 0x8C) = f0;
                    p = *(char **)(r + 0x20);
                    d = func_L00_001FF860(*(float *)(moby + 0x10) - *(float *)(p + 0x10), *(float *)(moby + 0x14) - *(float *)(p + 0x14));
                    v0.q = *(V128_11 *)(r + 0x10);
                    func_L00_0025BBA0(&v0, &d, data + 0x88, data + 0x8C);
                    func_L00_0025D5B0(moby, data + 0x70, d, 6, 1, 0);
                    moby[0x20] = 8;
                    data[0x67] = 0xF0;
                    if (*(int *)(data + 0x160) != 0) {
                        func_L00_00237B70();
                        *(int *)(data + 0x160) = 0;
                    }
                    func_L00_002584A8(moby, 0, -1);
                }
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                {
                    float f0 = D_L11_00162020 * D_0015EE6C;
                    float f1 = D_L11_0016201C * D_0015EE6C;
                    *(float *)(data + 0xC0) = 3.0f;
                    *(float *)(data + 0xC4) = 6.0f;
                    *(float *)(data + 0x88) = f0;
                    *(float *)(data + 0x8C) = f1;
                    p = *(char **)(r + 0x20);
                    d = func_L00_001FF860(*(float *)(moby + 0x10) - *(float *)(p + 0x10), *(float *)(moby + 0x14) - *(float *)(p + 0x14));
                    v0.q = *(V128_11 *)(r + 0x10);
                    func_L00_0025BBA0(&v0, &d, data + 0x88, data + 0x8C);
                    func_L00_0025D5B0(moby, data + 0x70, d, 5, 1, 0);
                    moby[0x20] = 7;
                    data[0x67] = 0x78;
                    if (*(int *)(data + 0x160) != 0) {
                        func_L00_00237B70();
                        *(int *)(data + 0x160) = 0;
                    }
                    *(int *)(data + 0x158) = *(int *)(data + 0x158) + func_001F9850(60);
                }
                break;
            case 9:
            case 10:
                data[0x67] = 0xFA;
                break;
            case 11:
                break;
            }
        }
        func_L00_0025E4B0(moby, (short *)(data + 0x60));
    }
    *(unsigned char *)(moby + 0xA4) = 0xFF;
    func_L00_0025E590(moby, data + 0x60);
    *(float *)(data + 0x140) = 24.0f;
    p = (char *)D_L11_001B11B0[*(int *)(data + 0x13C)];
    v = func_L00_00260FB0(24.0f, moby, data + 0xD0, 0, 0, p + 0x10, *(int *)p);
    if (v != 2) {
        e = func_001F9D48(moby + 0x10, data + 0xD0);
        if (*(float *)(data + 0x140) < e) {
            *(int *)(data + 0x114) = 2;
        } else {
            g = func_001F9B88(*(float *)(moby + 0x18) - *(float *)(data + 0xD8));
            if (3.0f < g) {
                *(int *)(data + 0x114) = 2;
            }
        }
    }
    if (*(int *)(data + 0x110) == 0) {
        *(int *)(data + 0x110) = *(int *)(D_0013E633 + 0x2E9D);
    }
}
