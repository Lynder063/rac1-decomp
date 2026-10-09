/* NON_MATCHING func_L00_002D9EA0 -- src/overlays/shared/vendor_002D9438.c
 * Best so far: SIZE ours 3612 / retail 3616, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L00_002D9EA0 notes (Haiku worker s06)
 *   Big nanotech_ball update: switch on state (0 init, 1 copy, 2 homing loop, 3 lock-on, 4 done), then shared tail
 *   Runs 1-7 (p0..p2): p0 compiled (3612 vs 3616 bytes); p1 (unsigned state reads) is the same size, 3100/3616 mat
 *   Wall for the lead: the 0x70/0x74 spill layout and the f22 zero both depend on local declaration order, not on 
 */
extern char D_0013E633[] NOT_SDA;
extern char D_L00_001E3FF0[] NOT_SDA;
extern char D_L00_001E4070[];
extern char D_L00_001E4050[];
extern char D_L00_001E17F0[];
extern char D_L00_00166EC0[] NOT_SDA;
extern int D_L00_0015F71C MACRO_ADDR;
extern int D_0015EEA0 MACRO_ADDR;
extern unsigned char D_0015EEB4[] MACRO_ADDR;
extern short D_L00_00161AE4;
extern short D_L00_00161B2C;
extern short D_L00_00161B28;
extern short D_L00_00161B24;
extern short D_L00_00161B20;
extern short D_L00_00161B18;
extern short D_L00_00161B14;
extern short D_L00_00161B10;
extern short D_L00_00161B0C;
extern short D_L00_00161AE0;
extern short D_L00_00161ADC;
extern short D_L00_00161AD0;
extern short D_L00_00161ACC;
extern short D_L00_00161AC8;
extern unsigned char D_L00_00161AC4;
extern float func_002140F8(float, float);
extern int func_002140B0(int);
extern int func_001F9850(int);
extern void func_001FA1F8(void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9CA0(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_00215C00(void *, float, float, float);
extern float func_L00_00258C80(float, float);
extern float func_001F9FA8(float);
extern float func_001FA748(float, float);
extern float func_001F9D10(void *, void *);
extern int func_L00_002D9E30(char *);
extern void func_001F9C30(void *, void *, float);
extern void func_002156E0(void *, void *, float, void *);
extern int func_L00_00258BC8(int, int);
extern void func_L00_002D9DB8(void);
extern int func_L00_00200290(void *, float);
extern void func_001F49B0(void (*)(void), int);
extern void func_L00_002DACC0(void);
extern float func_001F9D48(void *, void *);
extern void func_L00_002D9D00(char *, float *, int);
extern unsigned char *func_L00_002745A8(void *, int, int);
extern void func_L00_002D98C8(char *);
extern int func_001F9938(void *);
extern void func_L00_002688A8(void *);
extern void func_0020D678(void *);
extern int func_L00_0028EF68_v(int, int, void *, int) __asm__("func_L00_0028EF68");
extern float func_001FA888(int);
extern float func_L00_00258E58(float, float, float, float, float);

/* Nanotech ball update: spawns, homes in on its target, hits or fizzles; kills itself when its owner goes. */
void func_L00_002D9EA0(char *m) {
    Vt v0, v10, v20, v30, v40, v50, v60;
    char *d = *(char **)(m + 0x78);
    char *c;
    char *g;
    char *g0;
    char *cur;
    char *X;
    char *e;
    char *n;
    float f0, f20, f21, f22;
    int i, r, lim, run, a;

    switch ((unsigned char)m[0x20]) {
    case 0:
        m[0x20] = 1;
        *(unsigned short *)(m + 0x34) |= 0x41;
        *(int *)(m + 0x94) = 0;
        m[0xBC] = 0;
        c = *(char **)(d + 0xC);
        qcopy(m + 0x10, c + 0x10);
        qcopy(m + 0x40, c + 0x40);
        qcopy(d + 0x10, m + 0x10);
        *(int *)d = 0;
        *(short *)(d + 0x8) = 0;
        *(float *)(d + 0x18) += 0.5f;
        *(float *)(d + 4) = func_002140F8(*(float *)d, 3.1415927f);
        *(short *)(d + 0x56) = 0;
        *(short *)(d + 0xA) = 0;
        {
            float *fp = (float *)(d + 0x60);
            for (i = 3; i >= 0; i--) *fp++ = (float)func_002140B0(0xFF);
        }
        {
            short *sp = (short *)(d + 0x58);
            for (i = 3; i >= 0; i--) *sp++ = func_001F9850(*(int *)&D_L00_00161B28);
        }
        for (i = 7; i >= 0; i--) *(int *)(d + 0x30 + i * 4) = 0;
        if (D_L00_0015F71C == 0) {
            char *b = D_L00_001E3FF0;
            char *b19 = D_L00_001E4070;
            func_001FA1F8(m + 0xC0, m + 0x40);
            D_L00_0015F71C = (int)m;
            m[0x30] = 0xFF;
            *(int *)(d + 0x7C) = 0;
            func_L00_001FF4B0(b, m + 0xC0, *(float *)&D_L00_00161AE4);
            qcopy(b19, m + 0xE0);
            func_L00_001FF4B0(b + 0x10, m + 0xD0, *(float *)&D_L00_00161AE4);
            qcopy(b19 + 0x10, m + 0xC0);
            func_L00_001FF4B0(b + 0x20, m + 0xE0, *(float *)&D_L00_00161AE4);
            qcopy(b19 + 0x20, m + 0xD0);
            func_001F9BD8(b + 0x30, m + 0xC0, m + 0xE0);
            func_L00_001FF4B0(b + 0x30, b + 0x30, *(float *)&D_L00_00161AE4);
            func_001F9CA0(b19 + 0x30, b + 0x30, m + 0xD0);
            func_001F9BD8(b + 0x40, m + 0xC0, m + 0xD0);
            func_L00_001FF4B0(b + 0x40, b + 0x40, *(float *)&D_L00_00161AE4);
            func_001F9CA0(b19 + 0x40, b + 0x40, m + 0xE0);
            func_001F9BF0(b + 0x50, m + 0xD0, m + 0xE0);
            func_L00_001FF4B0(b + 0x50, b + 0x50, *(float *)&D_L00_00161AE4);
            func_001F9CA0(b19 + 0x50, b + 0x50, m + 0xC0);
            func_001F9BF0(D_L00_001E4050, m + 0xC0, m + 0xE0);
            func_L00_001FF4B0(D_L00_001E4050, D_L00_001E4050, *(float *)&D_L00_00161AE4);
            func_001F9CA0(b19 + 0x60, D_L00_001E4050, m + 0xD0);
            func_001F9BF0(b + 0x70, m + 0xC0, m + 0xD0);
            func_L00_001FF4B0(b + 0x70, b + 0x70, *(float *)&D_L00_00161AE4);
            func_001F9CA0(b19 + 0x70, b + 0x70, m + 0xE0);
        }
        f20 = func_002140F8(0.0f, 6.2831855f);
        f0 = func_002140F8(-1.5707964f, 1.5707964f);
        func_00215C00(d + 0x20, 1.0f, f20, f0);
        *(float *)(d + 0x2C) = func_L00_00258C80(0.785398006f, 1.5707964f);
        /* fall through */
    case 1:
        c = *(char **)(d + 0xC);
        qcopy(m + 0x10, c + 0x10);
        qcopy(d + 0x10, c + 0x10);
        *(float *)(d + 0x18) += 0.5f;
        if ((signed char)c[0x20] < 0 || c == m) {
            m[0x20] = 2;
            *(int *)(d + 0x50) = 0;
        }
        break;
    case 2:
        break;
    case 3:
        if (D_L00_0015F71C == (int)m) func_L00_002D9DB8();
        if (*(short *)(d + 0x56) != 0) {
            func_001F9C30(m + 0x10, D_0013E633 + 0x10AD, -*(float *)&D_L00_00161B24);
            func_001F9BD8(m + 0x10, D_0013E633 + 0x109D, m + 0x10);
            *(float *)(m + 0x4C) = 0.52359879f;
            if (func_L00_002D99C0((M_2d8510 *)m) != 0) {
                if (func_002140B0(5) == 0) func_L00_002D98C8(m);
            }
        }
        g = D_0013E633 + 0xE1D;
        lim = (*(unsigned char *)(g + 0x20A4) == 1) ? 4 : D_0015EEA0;
        if (*(int *)(g + 0x22A8) == lim && *(int *)(g + 0x1C0) != 0 && D_0015EEB4[2] != 0) {
            r = func_001F9850(*(int *)&D_L00_00161B10);
            if (*(short *)(d + 0x54) < r) {
                short *q = (short *)(d + 0x58);
                *(short *)(d + 0x54) = r;
                for (i = 3; i >= 0; i--) *q++ += 1;
            }
        }
        if (func_001F9938(d + 0x54)) {
            char **lst = (char **)(d + 0x30);
            for (i = 7; i >= 0; i--, lst++) {
                if (*lst) {
                    func_L00_002688A8(*lst);
                    *lst = 0;
                }
            }
            if (D_L00_0015F71C == (int)m) {
                m[0x20] = 4;
                return;
            }
            func_0020D678(m);
            return;
        } else {
            f20 = 0.0f;
            f21 = 0.00999999978f;
            f22 = 0.0f;
            func_001F9C30(&v20, D_0013E633 + 0x10AD, -*(float *)&D_L00_00161B24);
            func_001F9BD8(&v20, D_0013E633 + 0x109D, &v20);
            for (i = 7; i >= 0; i--) {
                char **slot = (char **)(d + 0x30) + (7 - i);
                e = *slot;
                if (e == 0) continue;
                if (func_001F9938(e + 0x3E)) {
                    if (*(short *)(d + 0x56) == 0) {
                        g0 = D_0013E633 + 0xE1D;
                        lim = (*(unsigned char *)(g0 + 0x20A4) == 1) ? 4 : D_0015EEA0;
                        a = *(int *)(g0 + 0x22A8);
                        if (a != 0) {
                            int t = a + 1;
                            *(int *)(g0 + 0x22A8) = (lim < t) ? lim : t;
                        }
                        cur = (char *)D_L00_0015F71C;
                        X = *(char **)(cur + 0x78);
                        *(int *)(X + 0x7C) -= 1;
                        if (*(int *)(X + 0x7C) < 0) *(int *)(X + 0x7C) = 0;
                        func_L00_0028EF68_v(1, 0, m, 0x1F5);
                        *(short *)(d + 0x56) = 1;
                    }
                    func_L00_002688A8(e);
                    *slot = 0;
                } else {
                    qcopy(&v40, e + 0x10);
                    f0 = func_001FA888(*(short *)(e + 0x3C));
                    v10.x = *(float *)(e + 0x30);
                    v10.y = *(float *)(e + 0x34);
                    v10.z = *(float *)(e + 0x38);
                    v10.w = 0;
                    {
                        float q1 = (float)*(short *)(e + 0x3E) / f0;
                        f20 = 1.0f - q1;
                    }
                    v0.x = *(float *)(e + 0x30) - *(float *)(e + 0x24);
                    v0.y = v10.y - *(float *)(e + 0x28);
                    v0.z = v10.z - *(float *)(e + 0x2C);
                    v30.x = v20.x - *(float *)(e + 0x24);
                    v30.y = v20.y - *(float *)(e + 0x28);
                    v30.z = v20.z - *(float *)(e + 0x2C);
                    *(float *)(e + 0x10) = func_L00_00258E58(v0.x, *(float *)(e + 0x30), v20.x, v30.x, f20);
                    *(float *)(e + 0x14) = func_L00_00258E58(v0.y, v10.y, v20.y, v30.y, f20);
                    func_L00_00258E58(v0.z, v10.z, v20.z, v30.z, f20);
                    f0 = func_L00_00258C80(f22, f21);
                    *(float *)(e + 0x18) = f0;
                    v50.x = f0 + *(float *)(e + 0x10);
                    f0 = func_L00_00258C80(f22, f21);
                    v50.y = f0 + *(float *)(e + 0x14);
                    f0 = func_L00_00258C80(f22, f21);
                    v50.z = f0 + *(float *)(e + 0x18);
                    r = func_001F9850(0x14);
                    n = func_L00_002745A8(&v50, r, 0);
                    if (n != 0) {
                        *(int *)(n + 4) = *(int *)&D_L00_00161AD0;
                        *(float *)(n + 0xC) = *(float *)&D_L00_00161AC8;
                    }
                    func_001F9BD8(&v40, e + 0x10, &v40);
                    func_001F9C30(&v40, &v40, 0.5f);
                    f0 = func_L00_00258C80(f22, f21);
                    v50.x = f0 + v40.x;
                    f0 = func_L00_00258C80(f22, f21);
                    v50.y = f0 + v40.y;
                    f0 = func_L00_00258C80(f22, f21);
                    v50.z = f0 + v40.z;
                    r = func_001F9850(0x14);
                    n = func_L00_002745A8(&v50, r, 0);
                    if (n != 0) {
                        *(int *)(n + 4) = *(int *)&D_L00_00161AD0;
                        *(float *)(n + 0xC) = *(float *)&D_L00_00161AC8;
                    }
                }
            }
            return;
        }
    case 4:
        if (D_L00_0015F71C == (int)m) func_L00_002D9DB8();
        return;
    default:
        return;
    }

    if (m[0x20] == 2) {
        qcopy(d + 0x10, m + 0x10);
        *(float *)(d + 0x18) += 0.5f;
        func_L00_002D9668(m);
        {
            char **lst = (char **)(d + 0x30);
            float *fl = (float *)D_L00_001E17F0;
            for (i = 7; i >= 0; i--) {
                e = *lst;
                if (e != 0) {
                    e += 0x20;
                    f0 = func_001F9FA8(*(float *)(e + 0xC));
                    *(float *)(e + 0x8) = *(float *)&D_L00_00161B2C * f0 + *(float *)&D_L00_00161AE4;
                    *(float *)(e + 0xC) = func_001FA748(*(float *)(e + 0xC), *fl);
                }
                lst++;
                fl++;
            }
        }
    }
    g = D_0013E633 + 0xE1D;
    lim = (*(unsigned char *)(g + 0x20A4) == 1) ? 4 : D_0015EEA0;
    run = 0;
    if (m[0x20] != 1) {
        cur = (char *)D_L00_0015F71C;
        if (cur != 0 && (X = *(char **)(cur + 0x78)) != 0 && *(int *)(g + 0x22A8) != 0) {
            if (*(int *)(g + 0x22A8) + *(int *)(X + 0x7C) < lim) run = 1;
            else if (D_0015EEB4[2] != 0 && *(int *)(g + 0x1C0) == 0) run = 1;
        }
    }
    if (run && func_001F9D10(m + 0x10, g + 0x80) < 10.0f) {
        char *p19 = g + 0x80;
        if (func_L00_002D9E30(m)) {
            m[0x20] = 3;
            cur = (char *)D_L00_0015F71C;
            X = *(char **)(cur + 0x78);
            *(int *)(X + 0x7C) += 1;
            if (D_0015EEB4[2] != 0) *(int *)(g + 0x1C0) = func_001F9850(0x258);
            g = g + 0x290;
            f20 = 0.5f;
            *(short *)(d + 0x54) = func_001F9850(*(int *)&D_L00_00161B0C);
            f21 = 0.448549628f;
            func_001F9C30(&v30, g, -*(float *)&D_L00_00161B24);
            func_001F9BD8(&v30, p19, &v30);
            func_001F9C30(&v0, g, -*(float *)&D_L00_00161B20);
            func_001F9BF0(&v20, &v30, m + 0x10);
            v20.z = v20.z - f20;
            func_001F9CA0(&v40, &v20, &v0);
            func_001F9CA0(&v0, &v40, &v20);
            func_002156E0(&v0, &v0, -1.5707964f, &v20);
            func_L00_001FF4B0(&v0, &v0, *(float *)&D_L00_00161B20);
            func_001F9C30(&v50, &v20, f20);
            for (i = 0; i < 8; i++) {
                e = *(char **)(d + 0x30 + i * 4);
                if (e != 0) {
                    func_002156E0(&v10, &v0, (float)i * f21, &v20);
                    func_001F9BD8(&v60, &v50, &v10);
                    *(float *)(e + 0x24) = v60.x;
                    *(float *)(e + 0x28) = v60.y;
                    *(float *)(e + 0x2C) = v60.z;
                    *(float *)(e + 0x30) = *(float *)(e + 0x10);
                    *(float *)(e + 0x34) = *(float *)(e + 0x14);
                    *(float *)(e + 0x38) = *(float *)(e + 0x18);
                    r = func_L00_00258BC8(*(int *)&D_L00_00161B14, *(int *)&D_L00_00161B18);
                    r = func_001F9850(r);
                    *(short *)(e + 0x3E) = r;
                    *(short *)(e + 0x3C) = r;
                }
            }
        }
    }
    f0 = func_001F9FA8(*(float *)(d + 4));
    *(float *)d = *(float *)&D_L00_00161AE0 * f0;
    *(float *)(d + 4) = func_001FA748(*(float *)(d + 4), *(float *)&D_L00_00161ADC);
    if (D_L00_0015F71C == (int)m) func_L00_002D9DB8();
    qcopy(&v0, m + 0x10);
    v0.z = v0.z + 0.5f;
    v0.w = 1.0f;
    r = func_L00_00200290(&v0, 64.0f);
    if (r < 0) return;
    func_001F49B0(func_L00_002DACC0, (int)m);
    f0 = func_001F9D48(m + 0x10, D_L00_00166EC0);
    r = func_001F9850((10.0f < f0) ? 5 : 40);
    for (i = 0; i < 8; i++) {
        char **slot = (char **)(d + 0x30) + i;
        func_L00_002D9D00(m, (float *)&v10, i);
        e = (char *)func_L00_002745A8(&v10, r, 2);
        if (e != 0) {
            char *pp = e + 0x20;
            *(float *)(pp + 0x10) = *(float *)(e + 0x10) - *(float *)(m + 0x10);
            *(float *)(pp + 0x14) = *(float *)(e + 0x14) - *(float *)(m + 0x14);
            *(float *)(pp + 0x18) = *(float *)(e + 0x18) - *(float *)(m + 0x18);
            if (m[0x20] != 2) *(int *)(pp + 0x4) = *(int *)(d + 0xC);
            else *(char **)(pp + 0x4) = m;
            *(int *)(e + 0x4) = *(int *)&D_L00_00161AD0;
            *(float *)(e + 0xC) = *(float *)&D_L00_00161AC8;
        }
        if (*slot == 0) {
            n = (char *)func_L00_002745A8(&v10, 0, 1);
            if (n != 0) {
                *slot = n;
                *(float *)(n + 0x28) = *(float *)&D_L00_00161AE4;
                *(int *)(n + 0x2C) = 0;
                *(float *)(n + 0xC) = *(float *)&D_L00_00161ACC;
                *(int *)(n + 0x4) = *(int *)&D_L00_00161AD0;
            }
        } else {
            qcopy(*slot + 0x10, &v10);
            (*slot)[0x8] += D_L00_00161AC4;
        }
    }
}
