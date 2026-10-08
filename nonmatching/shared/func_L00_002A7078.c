/* NON_MATCHING func_L00_002A7078 -- src/overlays/shared/vendor_002A5138.c
 * Best so far: SIZE ours 3444 / retail 3480, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * Cannot land as written (#define in a candidate): rewrite that in plain C first.
 * What the last attempts found:
 *   Bolt update for classes 13-16: a switch on m[0x20] with five states (0-4), each moving the moby and its child 
 *   Differences: the 0.65/0.7/0.75/0.6 scale blocks sit out of line in retail (address order 13,14,15,16) while ou
 */
#include "common.h"

extern int D_L00_0015F6A8 MACRO_ADDR;
extern char D_0013E633[];
extern unsigned char D_L00_00173F60_a[] __asm__("D_L00_00173F60");
extern int D_L00_00173F40[];
extern unsigned char D_L00_0016EB40[];
extern unsigned char D_L00_001D76D0[];
extern int D_L00_00160098 MACRO_ADDR;
extern int D_L00_0016009C MACRO_ADDR;
extern short D_L00_0016007C;
extern short D_0015EE84;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern unsigned char D_L00_001BA960[];
extern unsigned char D_L00_0015FD48[];
extern unsigned char D_L00_001BB5C0[];
extern unsigned char D_0014171B[];

extern int func_002140B0(int);
extern void func_L00_001FF4B0(float *, float *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern void func_001F9BC0(void *);
extern float func_L00_001FF860(float, float);
extern float func_001F9CE8(void *);
extern char *func_L00_0025D390(void *);
extern int func_L00_002616E0(int x, char *o, float *a, float *c, float *b, float *d);
extern float func_00214158(void);
extern int func_001F9850(int);
extern int func_L00_00258BC8(int, int);
extern void func_001FA648(void *, void *);
extern void func_001FA4F0(void *, void *, void *);
extern float func_002140F8(float, float);
extern int func_L00_001F10E0(float, void *, int, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF610(void *, void *, void *);
extern float func_001F9D48(void *, void *);
extern float func_001F9B88(float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern void func_002153E8(void *, void *);
extern void func_L00_0025AFA8(void *, void *);
extern void func_L00_002A8088(char *, void *, void *);
extern float func_001FA888(int);
extern void func_001FA5C8(void *, void *, void *, float);
extern void func_001F9C08(void *, void *, void *, float);
extern int func_L00_002A84B0(void *, int, float, float);
extern void func_0020D678(void *);
extern void func_001F9EC0(void *, void *, void *);
extern int func_L00_001FE940(void *, int, float);
extern void func_001F9EE8(void *, void *, void *);
extern void func_L00_002607A8(void *, float);
extern float func_001F9CB8(float *);
extern float func_00214D28(float *, float, float);
extern void func_001FA1F8(void *, void *);
extern void func_L00_002A7E10(void *);

#define F(b, o) (*(float *)((char *)(b) + (o)))
#define H(b, o) (*(short *)((char *)(b) + (o)))
#define HU(b, o) (*(unsigned short *)((char *)(b) + (o)))
#define W(b, o) (*(int *)((char *)(b) + (o)))
#define BY(b, o) (*(unsigned char *)((char *)(b) + (o)))
#define PT(b, o) (*(char **)((char *)(b) + (o)))

/* Bolt update (classes 13-16): runs the bolt's state machine on moby m. */
void func_L00_002A7078(char *m) {
    char *p = PT(m, 0x78);
    float a0[4], a1[4], a2[4], a3[4], a4[4], a5[4];
    unsigned short f;

    if (D_L00_0015F6A8 == 2) {
        f = HU(m, 0x34);
        BY(m, 0x31) = 0;
        f |= 1;
    } else {
        f = HU(m, 0x34);
        BY(m, 0x31) = 1;
        f &= 0xFFFE;
    }
    *(unsigned short *)(m + 0x34) = f;

    switch (BY(m, 0x20)) {
    case 0: {
        int r, r3, r4;
        float t1, t2;
        BY(m, 0x20) = 3;
        BY(m, 0x73) = 0x14;
        HU(m, 0x34) |= 0x100;
        BY(m, 0x30) = 0x20;
        H(m, 0x32) = 0x20;
        if (func_002140B0(2) == 0) {
            BY(p, 0x55) |= 1;
        }
        func_L00_001FF4B0(a0, (float *)(m + 0xE0), 0.2f);
        func_001F9BD8(a0, a0, m + 0x10);
        func_L00_001FF4B0(a1, (float *)(m + 0xE0), -3.0f);
        func_001F9BD8(a1, a1, m + 0x10);
        r = func_L00_001EFFF0(a0, a1, 0x22, 0, 0);
        if (BY(p, 0x54) == 0 && r != 0) {
            char *g = (char *)D_L00_00173F60_a;
            char *g1 = g - 0x20;
            int x;
            qcopy(p, D_L00_00173F60_a);
            func_001F9BC0(p + 0x10);
            func_L00_001FF860(F(g1, 0x40), F(g1, 0x44));
            F(p, 0x18) = func_001F9CE8(g + 0x20);
            F(p, 0x14) = func_L00_001FF860(F(g1, 0x48), F(p, 0x18));
            if (W(g1, 0x18) != 0) {
                if (func_L00_0025D390((void *)W(g1, 0x18)) != 0) {
                    x = W(g1, 0x18);
                    W(p, 0x5C) = x;
                    func_L00_002616E0((int)m, (char *)x, (float *)p, (float *)(p + 0x10), (float *)p, (float *)(p + 0x10));
                }
            }
        } else {
            qcopy(p, m + 0x10);
            func_001F9BC0(p + 0x10);
        }
        t1 = func_00214158();
        F(p, 0x50) = t1;
        t2 = func_00214158();
        F(p, 0x58) = t2;
        F(p, 0x68) = F(m, 0x18);
        r3 = func_001F9850(0x258);
        r4 = func_L00_00258BC8(0, r3);
        H(p, 0x6E) = r4;
        H(p, 0x6C) = -1;
        {
            short cl = H(m, 0xA6);
            float sc;
            if (cl != 14) {
                if (cl < 15) {
                    if (cl != 13) {
                        break;
                    }
                    sc = 0.65f;
                } else {
                    if (cl == 15) {
                        sc = 0.75f;
                    } else {
                        if (cl != 16) {
                            break;
                        }
                        sc = 0.6f;
                    }
                }
            } else {
                sc = 0.7f;
            }
            F(m, 0x2C) = F(PT(m, 0x24), 0x24) * sc;
        }
        break;
    }
    case 1: {
        char *b1 = (char *)D_0013E633 + 0xE1D;
        float k;
        short cl;
        float t68;
        char *g;
        int r10;
        F(p, 0x28) = F(p, 0x28) - D_0015EE70 * 10.8f;
        func_001F9BD8(m + 0x10, m + 0x10, p + 0x20);
        func_001FA648(p + 0x30, a2);
        func_001FA4F0(m + 0xC0, a2, m + 0xC0);
        cl = H(m, 0xA6);
        if (cl == 14) {
            k = 0.23f;
        } else if (cl < 15) {
            if (cl == 13) {
                k = 0.15f;
            } else {
                k = 0.25f;
            }
        } else {
            if (cl == 15) {
                k = 0.23f;
            } else {
                k = 0.25f;
            }
        }
        t68 = F(p, 0x68);
        if (F(m, 0x18) < t68 - 2.0f) {
            if (F(m, 0x18) < F(b1, 0x88) - 2.0f) {
                float gg = func_002140F8(-15.0f, 15.0f) * 0.0175f;
                func_L00_002A84B0(m, W(b1, 0x2080), gg, 0.0f);
                break;
            }
        }
        r10 = func_L00_001F10E0(k, m + 0x10, 0x22, m);
        if (r10 == 0) {
            break;
        }
        g = (char *)D_L00_00173F60_a;
        qcopy(p, D_L00_00173F60_a);
        func_001F9BC0(p + 0x10);
        func_L00_001FF860(F(g, 0x20), F(g, 0x24));
        F(p, 0x18) = func_001F9CE8(g + 0x20);
        F(p, 0x14) = func_L00_001FF860(F(g, 0x28), F(p, 0x18));
        func_001F9BF0(a0, m + 0x10, g);
        func_L00_001FF610(p + 0x20, p + 0x20, a0);
        {
            char *e9 = (char *)D_0013E633 + 0xE9D;
            float r = func_001F9D48(m + 0x10, e9);
            if (r < F(b1, 0x2288)) {
                if (func_001F9B88(F(m, 0x18) - F(b1, 0x88)) < F(b1, 0x228C)) {
                    float ff;
                    if (W(b1, 0x22A8) == 0) {
                        break;
                    }
                    ff = func_002140F8(3.0f, 7.0f) * D_0015EE6C;
                    func_L00_001FF4B0((float *)(p + 0x20), (float *)(p + 0x20), ff);
                    func_L00_002A84B0(m, W(b1, 0x2080), 0.0f, 0.0f);
                    break;
                }
            }
        }
        {
            float t20 = 0.78539816f;
            float u, v, w, x;
            char *g2 = (char *)D_L00_00173F40;
            int rr, xx;
            u = func_001F9CE8(a0);
            v = func_L00_001FF860(a0[2], u);
            if (v < t20) {
                w = func_001F9CE8(g2 + 0x40);
                x = func_L00_001FF860(F(g2, 0x48), w);
                if (x < t20) {
                    BY(m, 0x20) = 2;
                    rr = func_001FA898_r(func_001F9878(func_002140F8(30.0f, 40.0f)));
                    BY(p, 0x56) = rr;
                    BY(p, 0x57) = rr;
                    if (W(g2, 0x18) != 0) {
                        if (func_L00_0025D390((void *)W(g2, 0x18)) != 0) {
                            xx = W(g2, 0x18);
                            W(p, 0x5C) = xx;
                            func_L00_002616E0((int)m, (char *)xx, (float *)p, (float *)(p + 0x10), (float *)p, (float *)(p + 0x10));
                        }
                    }
                    func_002153E8(m + 0xC0, a1);
                    func_L00_0025AFA8(p + 0x30, a1);
                }
            }
        }
        break;
    }
    case 2: {
        float f22 = 0.25f;
        float f21, f20, n1, n2, n3, q, s, e;
        unsigned char t;
        int rr;
        func_L00_002A8088(m, a1, 0);
        a1[2] = a1[2] + f22;
        func_002153E8(m + 0xC0, a0);
        func_L00_0025AFA8(a2, a0);
        n1 = func_001FA888(BY(p, 0x57));
        f21 = 1.0f / n1;
        n2 = func_001FA888(BY(p, 0x57));
        n3 = func_001FA888(BY(p, 0x56));
        f20 = n2 / n3;
        func_001FA5C8(p + 0x30, p + 0x30, a2, f21);
        func_001F9C08(m + 0x10, m + 0x10, a1, f20);
        q = f20 - 0.5f;
        s = (float)BY(p, 0x56) * 0.1f;
        e = q * q;
        e = e - f22;
        e = -e;
        F(m, 0x18) = F(m, 0x18) + e * s;
        func_001FA648(p + 0x30, m + 0xC0);
        t = BY(p, 0x57) - 1;
        BY(p, 0x57) = t;
        if (t != 0) {
            break;
        }
        BY(m, 0x20) = 3;
        rr = func_001FA898_r(func_001F9878(func_002140F8(10.0f, 20.0f)));
        BY(p, 0x56) = rr;
        BY(p, 0x57) = rr;
        break;
    }
    case 3: {
        char *b1 = (char *)D_0013E633 + 0xE1D;
        char *e9 = (char *)D_0013E633 + 0xE9D;
        float f20;
        int x, cond;
        unsigned char v31, t, v56;
        float n2, n3, g20, fm, q, e;
        f20 = func_001F9D48(m + 0x10, e9);
        if (f20 < F(b1, 0x2288)) {
            if (func_001F9B88(F(m, 0x18) - F(b1, 0x88)) < F(b1, 0x228C)) {
                func_L00_002A84B0(m, W(b1, 0x2080), 0.0f, 0.0f);
                break;
            }
        }
        x = D_L00_0016009C;
        v31 = BY(m, 0x31);
        cond = v31 != 0;
        if ((unsigned)x < (unsigned)m) {
            if (*(int *)&D_L00_0016007C < 200) {
                if (48.0f < f20 && v31 == 0) {
                    func_0020D678(m);
                    break;
                }
            } else {
                cond = 0;
            }
        }
        if (cond || W(p, 0x5C) != 0) {
            func_L00_002A8088(m, 0, 0);
            if (BY(p, 0x57) != 0) {
                n2 = func_001FA888(BY(p, 0x57));
                n3 = func_001FA888(BY(p, 0x56));
                g20 = n2 / n3;
                v56 = BY(p, 0x56);
                fm = F(m, 0x18);
                q = g20 - 0.5f;
                e = q * q;
                e = e - 0.25f;
                e = -e;
                F(m, 0x18) = fm + e * ((float)v56 * 0.05f);
                BY(p, 0x57) = BY(p, 0x57) - 1;
            }
        } else {
            t = BY(p, 0x57);
            if (t != 0) {
                BY(p, 0x57) = t - 1;
            }
            break;
        }
        if (H(p, 0x6C) >= 0) {
            func_001F9EC0(a0, (char *)D_L00_001D76D0 + ((int)H(m, 0xA6) << 4), m + 0xC0);
            func_001F9BD8((char *)D_L00_0016EB40 + ((int)H(p, 0x6C) << 5), a0, m + 0x10);
            {
                char *ent = (char *)D_L00_0016EB40 + ((int)H(p, 0x6C) << 5);
                int dd = (int)m - D_L00_00160098;
                if (H(ent, 0x14) != (dd >> 8)) {
                    H(p, 0x6C) = -1;
                }
            }
        } else {
            unsigned short t2 = HU(p, 0x6E) - 1;
            HU(p, 0x6E) = t2;
            if ((short)t2 > 0) {
                break;
            }
            func_001F9EC0(a0, (char *)D_L00_001D76D0 + ((int)H(m, 0xA6) << 4), m + 0xC0);
            func_001F9BD8(a0, a0, m + 0x10);
            {
                int ir, r1, r2;
                ir = func_L00_001FE940(a0, ((int)m - D_L00_00160098) >> 8, 1.4f);
                H(p, 0x6C) = ir;
                r1 = func_001F9850(0x12C);
                r2 = func_001F9850(0x258);
                H(p, 0x6E) = func_L00_00258BC8(r1, r2);
            }
        }
        break;
    }
    case 4: {
        char *q = PT(p, 0x60);
        char *e = (char *)D_0013E633 + 0x10BD;
        int flag = 0;
        if (H(q, 0xA6) == 0) {
            func_001F9BF0(a0, m + 0x10, e);
            func_001F9EE8(a0, a0, e - 0x260);
            if (a0[2] < 0.0f) {
                flag = 1;
            }
        }
        if (flag) {
            char *f17 = p + 0x20;
            char *e3 = (char *)D_0013E633 + 0xE3D;
            func_L00_001FF4B0(a0, (float *)e3, D_0015EE6C * 7.0f);
            func_001F9BF0(a1, a0, f17);
            func_L00_002607A8(a1, D_0015EE70 * 50.0f);
            func_001F9BD8(f17, f17, a1);
        } else {
            float f20 = D_0015EE70 * 10.0f;
            float t = func_001F9CB8((float *)(p + 0x20));
            char *b1 = (char *)D_0013E633 + 0xE1D;
            float f0, g;
            if (f20 < t) {
                func_L00_001FF4B0(a0, (float *)(p + 0x20), f20);
                func_001F9BF0(p + 0x20, p + 0x20, a0);
            }
            func_00214D28((float *)(p + 0x64), D_0015EE6C * 48.0f, D_0015EE70 * 16.0f);
            f0 = D_0015EE6C * 8.0f;
            if (f0 < F(b1, 0x160)) {
                g = F(b1, 0x160) - f0;
                func_L00_001FF4B0(a1, (float *)(b1 + 0x100), g * 0.5f);
                func_001F9BD8(m + 0x10, m + 0x10, a1);
            }
        }
        func_001FA648(p + 0x30, a0);
        func_001FA4F0(m + 0xC0, a0, m + 0xC0);
        func_001F9BD8(m + 0x10, m + 0x10, p + 0x20);
        {
            char *d2 = (char *)D_0013E633 + 0xEED;
            float f0;
            func_001F9BF0(a3, d2, m + 0x10);
            f0 = func_001F9CB8(a3);
            if (F(p, 0x64) < f0) {
                if (!(F(p, 0x4C) == 0.0f && F(p, 0x48) == 0.0f)) {
                    func_001F9EC0(a3, a3, d2 - 0x90);
                    func_001F9BC0(a4);
                    a4[1] = F(p, 0x48);
                    a4[2] = F(p, 0x4C);
                    func_001FA1F8(a5, a4);
                    func_001F9EC0(a3, a3, a5);
                    func_001F9EC0(a3, a3, d2 - 0xD0);
                }
                func_L00_001FF4B0(a3, a3, F(p, 0x64));
                func_001F9BD8(m + 0x10, m + 0x10, a3);
                break;
            }
        }
        func_L00_002A7E10(m);
        if ((unsigned)m < (unsigned)D_L00_0016009C) {
            int b2 = H(m, 0xB2);
            unsigned char b0 = BY(m, 0xB0);
            BY((char *)D_L00_001BA960 + b2, 0x454) = b0 + 2;
            if (b0 == 0xFF || (D_L00_0015FD48[b0] != 0xFF && D_0014171B[0xAA35 + ((*(int *)&D_0015EE84) << 4) + b0] == 0xFF)) {
                BY((char *)D_L00_001BB5C0 + H(m, 0xB2), 0x454) = b0 + 2;
            }
        }
        func_0020D678(m);
        break;
    }
    }
}
