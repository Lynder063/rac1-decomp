/* NON_MATCHING func_L00_002BDAF0 -- src/overlays/shared/vendor_002BA7C8.c
 * Best so far: SIZE ours 1924 / retail 1968, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - Morphoray (class 185) update: a 1968-byte state machine on the shared globals D_L00_00161890/94/98 and the D
 *   - Flag: retail is `movn $21,$0,$3` on x^3 with the default 1 shared with `sb $4,0x20`; ours is `sltiu`. NOTICE
 *   - Unblock: a source form that makes gcc keep the high half of the base in a register (the register-pressure ch
 */
extern char D_0013E633[] NOT_SDA;
extern char D_0013A5E0[];
extern char D_0014171B[];
extern char D_0013D50F[];
extern unsigned char D_L00_001803C0[];
extern char D_L00_00166D80[];
extern short D_L00_001617B0;
extern short D_L00_001617BC;
extern short D_L00_0016188C;
extern int D_L00_00161890 MACRO_ADDR;
extern int D_L00_00161894 MACRO_ADDR;
extern int D_L00_00161898 MACRO_ADDR;
extern int D_0015EFA4 MACRO_ADDR;
extern s32 D_0015EE84 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float func_0020D830(void *);
extern int func_001F9938(void *);
extern void func_L00_0020EB60(void);
extern int func_001F9850(int);
extern void func_L00_00250800(void *, int, void *);
extern void func_L00_00222B80(int, int);
extern void func_001FA480(void *, void *);
extern void func_001FA4A0(void *, void *);
extern void func_001F9EE8(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9EC0(void *, void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001F9CE8(void *);
extern int func_L00_002BD6B8(void *, void *, void *, void *);
extern int func_001F9908_r(void *) __asm__("func_001F9908");
extern unsigned char *func_L00_0025D390(int);
extern float func_001FA888(int);
extern int func_001FFB38(int, int, int, int, int, int, int);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_0022EE28(int, int, int);
extern void func_L00_00264DB8(int, int);
extern void func_L00_002CA728(void *);
extern void func_L00_002BE3A8(void *);
extern int func_L00_0023EF78(float *pos, float radius, float intensity, int color);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80(int, int, int);
extern int func_001FFCB0(int);
extern void func_L00_0023F1D0(int);
extern void func_L00_0028EBF0(int);
extern void func_L00_0020ED30(void);
extern void func_L00_00236BF8(void);
extern void func_L00_00236DE8(void);
extern void func_L00_002377E0(void);

typedef int u128 __attribute__((mode(TI)));
typedef struct { float x, y, z, w; } Vq_2baf0 __attribute__((aligned(16)));

// Morphoray (moby class 185) update: steers its glow layers and runs its timed effects.
void func_L00_002BDAF0(char *m) {
    char *g = D_0013E633 + 0xE1D;
    char *p = *(char **)(m + 0x78);
    int flag = 1;
    int b16 = 1;
    int r;
    int mode;
    char *t;
    char *e;
    float f;
    Vq_2baf0 v0, v10, v20, v40;

    if (*(int *)(g + 0x10B4) != 3) {
        flag = 0;
    }
    if (*(unsigned char *)(m + 0x20) == 0) {
        m[0x20] = 1;
        D_L00_00161898 = -1;
        D_L00_00161890 = -1;
        D_L00_00161894 = 0;
    }
    if (*(unsigned char *)(m + 0x53) == 0) {
        if (func_0020D830(m) < 6.0f) {
            b16 = 0;
        }
    }
    func_001F9938(p + 0x1C);
    mode = *(int *)(g + 0x208C);
    if (((unsigned int)mode < 2 || mode == 4 || mode == 5 || mode == 12)
        && (*(int *)(D_0013A5E0 + 0x2600) & *(int *)(g + 0x10A0)) != 0
        && !flag && b16) {
        if (*(unsigned char *)(g + 0x20A8) == 0) {
            func_L00_0020EB60();
        }
        if (*(short *)(p + 0x1E) == 0) {
            *(short *)(p + 0x1E) = 1;
            t = D_0014171B + 0x65;
            if (*(unsigned short *)(t + 0xA8) <= 0xFFFE) {
                *(unsigned short *)(t + 0xA8) += 1;
            }
            r = func_001F9850(D_0015EFA4) / 0x258;
            if ((int)*(unsigned short *)(t + 0xAA) < r) {
                *(short *)(t + 0xAA) = func_001F9850(D_0015EFA4) / 0x258;
            }
            *(int *)(t + 0xAC) = *(int *)(t + 0xAC) | (1 << D_0015EE84) | 0x80000000;
        }
        if (*(short *)(p + 0x1C) == 0) {
            *(short *)(p + 0x1C) = func_001F9850(0xF);
        }
        func_L00_00250800(m, 0, p);
        if (*(int *)(g + 0x2084) == 1) {
            func_L00_00222B80(0x1E, 1);
        }
        *(u128 *)&v0 = 0;
        if (*(int *)(g + 0x2084) == 0x1E
            && (*(unsigned short *)(*(char **)(g + 0x2080) + 0x34) & 1)) {
            func_001FA480(&v10, D_L00_00166D80);
            func_001FA4A0(&v40, &v10);
            v0.z = 1.0f;
            func_001F9EE8(&v0, &v0, &v40);
        } else {
            if (*(short *)(g + 0x22C8) == 1) {
                func_001F9C30(&v0, m + 0xD0, -1.0f);
            } else {
                v0.x = 1.0f;
                func_001F9EC0(&v0, &v0, g + 0x640);
            }
        }
        *(float *)(p + 0x48) = func_L00_001FF860(v0.x, v0.y);
        f = func_001F9CE8(&v0);
        *(float *)(p + 0x4C) = func_L00_001FF860(f, v0.z);
        qcopy(&v10, p);
        r = func_L00_002BD6B8(m, &v10, p + 0x48, p + 0x4C);
        func_001F9908_r(p + 0x44);
        {
            char *o = *(char **)(p + 0x10);
            if (o != 0 && (*(unsigned char *)(o + 0x20) == 0xFE || *(unsigned char *)(o + 0x20) == 0xFD)) {
                *(int *)(p + 0x10) = 0;
                *(int *)(p + 0x44) = 0;
            }
        }
        if (r != 0) {
            unsigned char *s17 = func_L00_0025D390(r);
            if (*(int *)(p + 0x10) != r && *(int *)(p + 0x44) == 0) {
                *(int *)(p + 0x10) = r;
                *(float *)(p + 0x14) = func_001FA888(*(short *)(s17 + 4));
                *(float *)(p + 0x18) = *(float *)s17;
                *(int *)(p + 0x44) = func_001F9850(0x1E);
                if (*(float *)(p + 0x14) <= 1.0f) {
                    *(int *)(p + 0x18) = 0;
                }
                *(int *)(p + 0x34) = func_001FFB38(4, 0x7533, (int)func_L00_00236BF8,
                    (int)func_L00_00236DE8, (int)func_L00_002377E0, (int)&D_L00_001617BC, 0x2710);
            }
        }
        if (r != 0 || *(int *)(p + 0x44) != 0) {
            float a = func_001FA888(*(unsigned char *)(D_0013E633 + 2)) * 0.33f + 1.0f;
            float d = *(float *)(p + 0x18) - (*(float *)&D_L00_001617B0 * D_0015EE6C) * a;
            *(float *)(p + 0x18) = d;
            if (d < 0.0f) {
                *(float *)(p + 0x18) = 0.0f;
            }
            f = *(float *)(p + 0x18) * 10000.0f / *(float *)(p + 0x14);
            *(int *)&D_L00_001617BC = 0x2710 - func_001FA898_r(f);
        }
        if (*(int *)(p + 0x10) != 0 && *(float *)(p + 0x18) <= 0.0f) {
            if (D_0015EE84 == 5 && *(short *)(*(char **)(p + 0x10) + 0xA6) == 0x271) {
                unsigned char *q = (unsigned char *)(D_0013D50F + 1);
                if (q[8] == 0) {
                    q[8] = 1;
                    func_0022EE28(1, 0, 0);
                    func_L00_00264DB8(0x53DB, -1);
                }
            }
            func_L00_002CA728(*(char **)(p + 0x10));
            *(int *)(p + 0x10) = 0;
        }
        func_L00_002BE3A8(m);
        if (D_L00_00161890 == -1) {
            D_L00_00161890 = func_L00_0023EF78((float *)(m + 0x10), 7.5f, 0.0f, 0x207F7F);
        }
        if (D_L00_00161890 >= 0) {
            D_L00_00161894 = func_001F9850(0x14);
            func_L00_001FF4B0(&v10, m + 0xD0, -0.5f);
            func_001F9BD8(&v20, p, &v10);
            e = D_L00_001803C0 + (D_L00_00161890 << 5);
            *(float *)(e + 0x10) = v20.x;
            *(float *)(e + 0x1C) = 7.5f;
            *(float *)(e + 0x14) = v20.y;
            *(float *)(e + 0x18) = v20.z;
        }
        if (func_L00_0028EB98(m, D_L00_00161898) == 0) {
            func_0022ED80(0, 4, (int)m);
            D_L00_00161898 = 0;
        }
    } else {
        *(int *)(p + 0x10) = 0;
        *(short *)(p + 0x1E) = 0;
        *(int *)(p + 0x44) = 0;
        if (*(int *)(p + 0x34) != -1) {
            func_001FFCB0(*(int *)(p + 0x34));
            *(int *)(p + 0x34) = -1;
        }
        *(int *)&D_L00_0016188C = 1;
        if (D_L00_00161890 >= 0) {
            func_L00_001FF4B0(&v0, m + 0xD0, -0.5f);
            func_001F9BD8(&v10, p, &v0);
            e = D_L00_001803C0 + (D_L00_00161890 << 5);
            *(float *)(e + 0x14) = v10.y;
            *(float *)(e + 0x18) = v10.z;
            *(float *)(e + 0x1C) = 7.5f;
            *(float *)(e + 0x10) = v10.x;
            f = func_001FA888(D_L00_00161894) * 0.05f;
            *(float *)e = f;
            *(float *)(e + 4) = f;
            *(float *)(e + 8) = f * 0.25f;
            r = func_001F9908_r(&D_L00_00161894);
            if (r != 0) {
                func_L00_0023F1D0(D_L00_00161890);
                D_L00_00161890 = -1;
            }
        }
        if (D_L00_00161890 >= 0) {
            if (D_L00_00161894 == 0) {
                func_L00_0023F1D0(D_L00_00161890);
                D_L00_00161890 = -1;
            }
        }
        if (D_L00_00161898 >= 0) {
            if (D_L00_00161898 != -1) {
                char *w = D_0013E633 + 0x1D + D_L00_00161898 * 0x70;
                if (*(int *)(w + 0x88) == (int)m && *(unsigned char *)(w + 0x74) != 0) {
                    func_L00_0028EBF0(D_L00_00161898);
                }
            }
            D_L00_00161898 = -1;
        }
        func_L00_0020ED30();
    }
    if (flag) {
        if (D_L00_00161890 >= 0) {
            func_L00_0023F1D0(D_L00_00161890);
            D_L00_00161890 = -1;
        }
    }
}
