/* NON_MATCHING func_L11_002F3888 -- src/overlays/l11_pokitaru/vendor_002CC828.c
 * Best so far: SIZE ours 1648 / retail 1620, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Teleporter (moby class 318) update: a five-way switch on the state byte at +0x20 (jump table jtbl_L11_0021B350
 *   Best candidate p3.c (also p2.c): 1648 bytes against retail 1620 (28 over), no EXACT after 4 runs. p0.c was edi
 *   Differences: the case 3 0xFF-select tail is laid out twice where retail shares it (the copy into the stack tem
 *   Unblock: a way to make gcc share the case 3 select tail without a goto, and the case 2 float-argument order; t
 */
extern char *func_0020D348(int);
extern float func_001FA748(float, float);
extern void func_L11_002F43B0(char *);
extern void func_L11_002F4040(char *);
extern void func_0022ED80_u(int, int, void *) __asm__("func_0022ED80");
extern void func_L00_00234768(float *pos, int arg, float t);
extern int func_L00_0025A8E8(int, float, void *, int, float, float, int, int, int);
extern int func_L00_002347B8(void);
extern float func_00214D88_f(float *, float *, float, float, float, float) __asm__("func_00214D88");
extern void func_L01_0030A6A8(char *);
extern void func_001F49B0(void *, void *);
extern float func_00214D28(float *, float, float);
extern void func_L00_00217718(void *, void *, int, int);
extern void func_L00_002664B0(int, int);
extern void func_L11_002F40C8(void);
extern char D_0013E633[];
extern unsigned char D_0014171B[] NOT_SDA;
extern unsigned char D_0013A5E0[] NOT_SDA;
extern unsigned char D_001414F5[] NOT_SDA;
extern unsigned char D_0013D4E5 NOT_SDA;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern int D_L11_0015F674 MACRO_ADDR;
extern unsigned char *D_L11_00160058_t __asm__("D_L11_00160058") MACRO_ADDR;
extern short D_L11_001619A0;
extern short D_L11_001619A4;
extern short D_L11_001619A8;

/* Teleporter (moby class 318) update: per-state step of the moby in a0. */
void func_L11_002F3888(char *m) {
    char *n = *(char **)(m + 0x78);
    char *Q = (char *)D_0013E633 + 0xE1D;
    switch ((unsigned char)m[0x20]) {
    case 0: {
        char **x22;
        char **pp;
        int i;
        float f;
        float f20 = 2.09439516f;
        m[0x20] = 1;
        x22 = (char **)(n + 0x14);
        pp = x22;
        i = 0;
        do {
            *pp = func_0020D348(0x13B);
            *(short *)(*pp + 0x32) = 0x40;
            (*pp)[0x31] = 1;
            *(long *)(*pp + 0x38) = *(long *)(*(char **)(Q + 0x2080) + 0x38);
            *(short *)(*pp + 0x34) = *(short *)(m + 0x34);
            qcopy(*pp + 0x10, m + 0x10);
            qcopy(*pp + 0x40, m + 0x40);
            f = func_001FA748(*(float *)(*pp + 0x48), (float)i * f20);
            i = i + 1;
            *(float *)(*pp + 0x48) = f;
            pp++;
        } while (i < 3);
        if (*(int *)(n + 8) >= 0) {
            unsigned char *b = D_0014171B + 0xAA35 + *(int *)(n + 8) + (*(int *)&D_0015EE84 << 4);
            if (b[0] != 0xFF) {
                int k = 2;
                char **pp5 = x22;
                *(unsigned short *)(m + 0x34) = *(unsigned short *)(m + 0x34) | 1;
                m[0x31] = 0;
                *(int *)(m + 0x94) = 0;
                do {
                    k = k - 1;
                    *(unsigned short *)(*pp5 + 0x34) = *(unsigned short *)(*pp5 + 0x34) | 1;
                    (*pp5)[0x31] = 0;
                    *(int *)(*pp5 + 0x94) = 0;
                    pp5++;
                } while (k >= 0);
            }
        }
        func_L01_0030A6A8(m);
        return;
    }
    case 1: {
        if (*(int *)n == -1) {
            return;
        }
        if (*(unsigned short *)(m + 0x34) & 1) {
            if (*(int *)(n + 8) >= 0) {
                unsigned char *b = D_0014171B + 0xAA35 + *(int *)(n + 8) + (*(int *)&D_0015EE84 << 4);
                if (b[0] == 0xFF) {
                    func_L11_002F43B0(m);
                }
            }
        }
        if (*(char **)(Q + 0x2FC) != m) {
            return;
        }
        if (*(short *)(Q + 0x30E) != 0) {
            return;
        }
        func_L11_002F4040(m);
        if (!(*(int *)(D_0013A5E0 + 0x2604) & 0x10)) {
            return;
        }
        if (D_L11_0015F674 != 0xB) {
            return;
        }
        func_0022ED80_u(0, 0, m);
        m[0x20] = 2;
        *(int *)(n + 0x2C) = 0;
        *(int *)(n + 0x28) = 0;
        func_L00_00234768((float *)(m + 0x10), 0, *(float *)(m + 0x48));
        func_L00_0025A8E8((int)m, 1.5f, m + 0x10, 0x10000, 20.0f, 1.0f, 0, 1, 0);
        return;
    }
    case 2: {
        int v;
        float f1;
        float f0;
        float *p4;
        float *p5;
        v = func_L00_002347B8();
        f1 = *(float *)(n + 0x20);
        if (f1 < 1.0f) {
            f1 = *(float *)&D_0015EE70;
            p4 = (float *)(n + 0x20);
            p5 = (float *)(n + 0x28);
        } else if (*(float *)(n + 0x24) < 1.0f) {
            f1 = *(float *)&D_0015EE70;
            p4 = (float *)(n + 0x24);
            p5 = (float *)(n + 0x2C);
        } else {
            if (!(D_L11_0015F674 == 0xB && 0.25f < f1)) {
                if (v == 2) {
                    *(float *)(n + 0x3C) = 1.95000005f;
                    m[0x20] = 3;
                } else if (v == 0) {
                    m[0x20] = 4;
                }
            }
            func_L01_0030A6A8(m);
            return;
        }
        f0 = *(float *)&D_L11_001619A8;
        f0 = f0 * *(float *)&D_0015EE6C;
        func_00214D88_f(p4, p5, 1.0f, *(float *)&D_L11_001619A0 * f1, *(float *)&D_L11_001619A4 * f1, f0);
        func_L01_0030A6A8(m);
        return;
    }
    case 3: {
        float f0;
        float f1;
        char *e;
        char *o;
        float tmp[4];
        f0 = *(float *)(n + 0x3C);
        if (f0 == 0.0f) {
            int v19;
            e = (char *)D_L11_00160058_t + (*(int *)n << 8);
            if (*(int *)(n + 4) != -1) {
                unsigned char b = D_0014171B[0xAA35 + *(int *)(n + 0xC) + (*(int *)&D_0015EE84 << 4)];
                if (b == 0xFF) {
                    e = (char *)D_L11_00160058_t + (*(int *)(n + 4) << 8);
                }
            }
            o = *(char **)(e + 0x78);
            *(u128 *)tmp = *(u128 *)(e + 0x10);
            tmp[2] = tmp[2] + 0.2f;
            func_L00_00217718(tmp, e + 0x40, 0, 1);
            *(unsigned char *)&D_001414F5[0] = 1;
            if (*(int *)(n + 0x30) != -1 && *(int *)(n + 0x34) != -1) {
                func_L00_002664B0(*(int *)(n + 0x30), *(int *)(n + 0x34));
            }
            func_L11_002F43B0(e);
            e[0x20] = 4;
            *(int *)(o + 0x3C) = 0;
            *(int *)(o + 0x28) = 0;
            *(int *)(o + 0x2C) = 0;
            *(float *)(o + 0x24) = 1.0f;
            func_0022ED80_u(1, 0, e);
            *(float *)(o + 0x20) = 1.0f;
            m[0x20] = 1;
            *(int *)(n + 0x20) = 0;
            *(int *)(n + 0x24) = 0;
            *(int *)(n + 0x28) = 0;
            *(int *)(n + 0x2C) = 0;
            *(float *)(n + 0x3C) = 1.95000005f;
            func_L01_0030A6A8(m);
            return;
        }
        f1 = D_0015EE6C;
        func_001F49B0((void *)func_L11_002F40C8, m);
        func_00214D28((float *)(n + 0x3C), 0.0f, f1 * 4.0f);
        return;
    }
    case 4: {
        float f0;
        float f20;
        float f1;
        float *p4;
        float *p5;
        if (*(float *)(D_0013E633 + 0xEA5) < 138.0f) {
            D_0013D4E5 = 1;
        }
        f0 = *(float *)(n + 0x3C);
        f20 = 1.95000005f;
        if (f0 < f20) {
            func_001F49B0((void *)func_L11_002F40C8, m);
            f0 = D_0015EE6C;
            func_00214D28((float *)(n + 0x3C), f20, f0 * 4.0f);
        } else {
            f0 = *(float *)(n + 0x24);
            if (0.0f < f0) {
                p4 = (float *)(n + 0x24);
                p5 = (float *)(n + 0x28);
            } else {
                f0 = *(float *)(n + 0x20);
                if (0.0f < f0) {
                    p4 = (float *)(n + 0x20);
                    p5 = (float *)(n + 0x2C);
                } else {
                    m[0x20] = 1;
                    func_L01_0030A6A8(m);
                    return;
                }
            }
            f1 = *(float *)&D_0015EE70;
            func_00214D88_f(p4, p5, 0.0f, *(float *)&D_L11_001619A0 * f1, *(float *)&D_L11_001619A4 * f1, *(float *)&D_L11_001619A8 * *(float *)&D_0015EE6C);
        }
        func_L01_0030A6A8(m);
        return;
    }
    default:
        return;
    }
}
