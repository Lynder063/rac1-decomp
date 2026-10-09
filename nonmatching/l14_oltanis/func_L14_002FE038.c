/* NON_MATCHING func_L14_002FE038 -- src/overlays/l14_oltanis/vendor_002E0538.c
 * Best so far: SIZE ours 1844 / retail 1888, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Oltanis jet moby update (1888 bytes): state machine on the state byte at 0x20 (idle target search, approach/ai
 *   Still differing: the frame saves an extra $fp (sq $fp, 0xA0) that retail does not, the state-0 flag test and t
 *   Unblock: the frame and layout need the stack vector and the saved-register set pinned down; try the state-0 ar
 */
typedef int u128 __attribute__((mode(TI)));

void func_L14_002FF6C0(char *moby);
extern char *func_L00_0025B478(void *, int, int);
extern int func_0022EE28(int, int, int);
extern void func_L00_00264DB8(int, int);
extern void func_L00_00260108(void *, void *, int, float, float);
extern void func_L00_0028EBF0(int);
extern int func_001E9730();
extern void func_0020D678(void *);
void func_L14_002FDD18(char *moby);
extern int func_001F9850(int);
extern int func_00215570(void *, int);
extern float func_001F9D48(void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern int func_L00_001EFFF0(void *, void *, int, void *, int);
void func_L10_002F6E10(int i);
int func_L14_002FEDA0(char *m);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
void func_L06_00304590(char *arg);
extern int func_001F9908(void *);
void func_L14_002FE798(char *m);
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80(int, int, int);
extern unsigned char D_L14_001BBCC0[];
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern char D_0014171B[];
extern char *D_L14_00160098_2B0168 __asm__("D_L14_00160098") MACRO_ADDR;
extern int *D_L14_001B0F30_ee[] __asm__("D_L14_001B0F30");
extern int D_0015EF08_m __asm__("D_0015EF08") MACRO_ADDR;
extern int D_L14_0016205C_m __asm__("D_L14_0016205C") MACRO_ADDR;
extern char D_L14_001FD208[];
extern char D_L14_001FD240[];
extern char D_L14_00167480[];
extern unsigned char D_0013D50F[];

/* Oltanis jet moby update: per-frame state machine on the state byte at 0x20. */
void func_L14_002FE038(char *m) {
    char *d = *(char **)(m + 0x78);
    unsigned short ui;
    short sidx;
    char *base;
    char *m20;
    char *m19;
    char *p;
    char *q;
    char *ra;
    float vb[4];
    float vt[4];
    float r1, r2, r3, r4, r5;
    unsigned char b0, b1, b2;

    if (*(unsigned char *)(m + 0x20) == 0) {
        ui = *(unsigned short *)(m + 0xB2);
        sidx = (short)ui;
        if (D_L14_001BBCC0[sidx + 0x454] != 0
            || ((*(int *)(D_0014171B + 0xAB75 + (D_0015EE84_m << 8) + ((sidx >> 5) << 2)) >> (ui & 0x1F)) & 1)) {
            base = D_L14_00160098_2B0168;
            func_L14_002FF6C0(base + (*(int *)(d + 0x8C) << 8));
            func_0020D678(m);
            return;
        }
    }

    ra = func_L00_0025B478(m, 0x800000, 0);
    *(unsigned char *)(m + 0xA4) = 0xFF;
    if (ra != 0) {
        if (*(int *)(d + 0x8C) == -1 && *(unsigned char *)(m + 0x20) != 3) {
            if (D_0015EE84_m == 0xE) {
                D_0015EF08_m = D_0015EF08_m + 1;
                if (D_0015EF08_m >= 3) {
                    if (D_0013D50F[0x19] == 0) {
                        D_0013D50F[0x19] = 1;
                        func_0022EE28(1, 0, 0);
                        func_L00_00264DB8(0x53DB, -1);
                    }
                }
            }
            m[0x20] = 3;
            func_L00_00260108(m, m + 0x10, -1, 5.0f, 13.0f);
            *(unsigned short *)(m + 0x34) = *(unsigned short *)(m + 0x34) | 0x41;
            *(int *)(m + 0x94) = 0;
            {
                int i6 = *(int *)(d + 0x6C);
                if (i6 != -1) {
                    char *e = D_0013E633 + 0x1D + i6 * 0x70;
                    if (*(char **)(e + 0x88) == m && ((unsigned char *)e)[0x74] != 0) {
                        func_L00_0028EBF0(i6);
                    }
                }
                *(int *)(d + 0x6C) = -1;
            }
        }
    }

    if (*(unsigned char *)(m + 0x20) == 0) {
        /* state 0: pick the first target and set up the approach */
        int d68 = *(int *)(d + 0x68);
        if (d68 == -1) {
            func_001E9730(D_L14_001FD208, *(short *)(m + 0xB2));
            func_0020D678(m);
            return;
        }
        p = (char *)D_L14_001B0F30_ee[d68];
        if (*(int *)p == 0) {
            func_001E9730(D_L14_001FD240, *(short *)(m + 0xB2));
            func_0020D678(m);
            return;
        }
        if (!(*(int *)(d + 0x98) >= 0 && *(int *)(d + 0x9C) >= 0 && *(int *)(d + 0xA0) >= 0)) {
            func_0020D678(m);
            return;
        }
        func_L14_002FDD18(m);
        if (*(int *)(d + 0x8C) != 0) {
            m[0x20] = 1;
            *(unsigned char *)(m + 0x30) = 0xFF;
            *(unsigned short *)(m + 0x34) = *(unsigned short *)(m + 0x34) | 0x41;
            *(int *)(m + 0x94) = 0;
            m20 = D_L14_00160098_2B0168 + (*(int *)(d + 0x8C) << 8);
            *(unsigned short *)(m20 + 0x34) = *(unsigned short *)(m20 + 0x34) | 0x41;
            *(int *)(d + 0x94) = 0;
        } else {
            m[0x20] = 2;
            *(unsigned char *)(m + 0x30) = 0x80;
        }
        *(short *)(m + 0x32) = 0x80;
        *(int *)(d + 0x6C) = -1;
        *(int *)(d + 0x7C) = func_001F9850(D_L14_0016205C_m);
    } else if (*(unsigned char *)(m + 0x20) == 1) {
        /* state 1: wait for the flag table, then start the attack */
        char *t = D_0014171B + 0xAA35;
        int ee = D_0015EE84_m << 4;
        b0 = *(unsigned char *)(t + *(int *)(d + 0x98) + ee);
        if (b0 == 0xFF) {
            b1 = *(unsigned char *)(t + *(int *)(d + 0x9C) + ee);
            if (b1 == b0) {
                b2 = *(unsigned char *)(t + *(int *)(d + 0xA0) + ee);
                if (b2 == 0xFF) {
                    q = D_0013E633 + 0xE1D;
                    if (*(short *)(q + 0x30C) == 0 && *(int *)(q + 0x2FC) == 0
                        && func_00215570(q + 0x80, *(int *)(d + 0xA4)) != 0) {
                        char *dd;
                        base = D_L14_00160098_2B0168;
                        m20 = base + (*(int *)(d + 0x8C) << 8);
                        dd = *(char **)(m20 + 0x78);
                        m19 = base + (*(int *)(dd + 4) << 8);
                        *(u128 *)vt = *(u128 *)(m19 + 0x10);
                        vt[2] = vt[2] + 4.0f;
                        r1 = func_001F9D48((char *)D_L14_00167480 + 0x140, vt);
                        r2 = func_L00_001FF860(r1, vt[2] - *(float *)((char *)D_L14_00167480 + 0x148));
                        r3 = func_001FA850(*(float *)((char *)D_L14_00167480 + 0x154), -r2);
                        r4 = func_L00_001FF860(*(float *)(m19 + 0x10) - *(float *)((char *)D_L14_00167480 + 0x140),
                                               *(float *)(m19 + 0x14) - *(float *)((char *)D_L14_00167480 + 0x144));
                        r5 = func_001FA850(*(float *)((char *)D_L14_00167480 + 0x158), r4);
                        if (r5 < 0.48869219f && r3 < 0.34906584f
                            && func_L00_001EFFF0((char *)D_L14_00167480 + 0x140, vt, 0x12, m19, 0) == 0) {
                            ui = *(unsigned short *)(m + 0xB2);
                            *(int *)(D_0014171B + 0xAB75 + (D_0015EE84_m << 8) + (((short)ui >> 5) << 2))
                                |= 1 << (ui & 0x1F);
                            *(int *)(D_L14_001BAF60 + (((short)ui >> 5) << 2)) |= 1 << (ui & 0x1F);
                            *(unsigned short *)(m + 0x34) = *(unsigned short *)(m + 0x34) & 0xFFBE;
                            *(int *)(m + 0x94) = *(int *)(*(char **)(m + 0x24) + 0x10);
                            *(unsigned short *)(m20 + 0x34) = *(unsigned short *)(m20 + 0x34) & 0xFFBE;
                            m[0x20] = 2;
                            func_L10_002F6E10(*(int *)(d + 0x90));
                            *(short *)(m19 + 0x32) = b2;
                            *(unsigned char *)(m19 + 0x30) = 0xFF;
                        }
                    }
                }
            }
        }
    } else if (*(unsigned char *)(m + 0x20) == 2) {
        /* state 2: approach and aim */
        if (func_L14_002FEDA0(m) != 0) {
            func_0020D678(m);
            return;
        }
        if (*(int *)(d + 0x8C) != 0 && *(int *)(d + 0x94) < 2) {
            if (*(int *)(d + 0x94) == 0 && *(int *)(d + 0x60) >= 0x38) {
                *(int *)(d + 0x94) = 1;
            }
            func_001F9C30(vb, m + 0xC0, 0.20999999f);
            func_001F9C30(vt, m + 0xE0, -1.2400000f);
            func_001F9BD8(vb, vb, vt);
            func_001F9BD8(vb, m + 0x10, vb);
            base = D_L14_00160098_2B0168;
            m20 = base + (*(int *)(d + 0x8C) << 8);
            *(u128 *)(m20 + 0x10) = *(u128 *)vb;
            *(u128 *)(m20 + 0x40) = *(u128 *)(m + 0x40);
            if (*(int *)(d + 0x94) == 1) {
                func_L06_00304590(m20);
                *(int *)(d + 0x94) = 2;
            }
        }
    } else if (*(unsigned char *)(m + 0x20) == 3) {
        /* state 3: take the target's data and set up */
        if (func_001F9908(d + 0x7C) != 0) {
            p = (char *)D_L14_001B0F30_ee[*(int *)(d + 0x68)];
            *(unsigned short *)(m + 0x34) = *(unsigned short *)(m + 0x34) & 0xFFBE;
            *(int *)(m + 0x94) = *(int *)(*(char **)(m + 0x24) + 0x10);
            *(int *)(d + 0x7C) = func_001F9850(D_L14_0016205C_m);
            m[0x20] = 2;
            *(int *)(d + 0x60) = 0;
            *(int *)(d + 0x64) = 0;
            qcopy(m + 0x10, p + 0x10);
            *(float *)(m + 0x48) = func_L00_001FF860(*(float *)(p + 0x20) - *(float *)(p + 0x10),
                                                    *(float *)(p + 0x24) - *(float *)(p + 0x14));
            *(float *)(d + 0x80) = 0.0f;
            *(float *)(d + 0x78) = 0.0f;
            *(float *)(d + 0x74) = 0.0f;
            *(float *)(d + 0x70) = 0.0f;
            *(float *)(d + 0x88) = 0.0f;
            *(float *)(d + 0x84) = 0.0f;
        }
    }

    /* common tail */
    func_L14_002FE798(m);
    if (*(unsigned char *)(m + 0x20) == 0 || *(unsigned char *)(m + 0x20) == 3 || *(unsigned char *)(m + 0x20) == 1) {
        return;
    }
    if (func_L00_0028EB98(m, *(int *)(d + 0x6C)) != 0) {
        return;
    }
    *(int *)(d + 0x6C) = func_0022ED80(0, 4, (int)m);
}
