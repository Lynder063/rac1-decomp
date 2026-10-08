/* NON_MATCHING func_L08_002E3860 -- src/overlays/l08_batalia/vendor_002E0258.c
 * Best so far: SIZE ours 2196 / retail 2228, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L08_002E3860 (level 08 update for moby class 444, 2228 bytes): a state machine on m[0x20]. State 0 links 
 *   Best candidate p10.c (2196 bytes, 32 short of 2228). The switch over the state, the state-0 and state-1 bodies
 *   Unblock: a fix for the argument order of func_L08_002DF758 (the callee's parameter order) and a diff of the ta
 *   Note: p0.c was overwritten by the first two runs; runs 3 to 15 each have their own file (p1.c to p13.c).
 */
extern char D_L08_00167640[];
extern short D_L08_00161CC8, D_L08_00161CD4, D_L08_00161CD8, D_L08_00161CDC;
extern int D_L08_001B0FB0[];
extern char *D_L08_00160058 MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern char D_0014171B[];
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80(int, int, int);
extern void func_0020D678(void *);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898(float);
extern void func_L08_002E30E8(void *);
extern float func_L00_001FF860(float, float);
extern void func_L00_002592B0(char *, float *, float, float, float, float);
extern void func_L08_002E35C8(void *);
extern void func_L08_002E33F0(void *);
extern float func_001F9D10(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CB8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_002140B0(int);
extern void func_L00_00250800(void *, int, void *);
extern float func_001FA748(float, float);
extern float func_001FA790(float, float);
extern float func_L00_0025CE58(float *, float *, float, float, float, float);
extern int func_001F9908(int *);
extern float func_00214158(void);
extern void func_L00_00260108(void *, void *, int, float, float);
extern char *func_L08_002DF758(void *, void *, void *, float, float);
typedef int u128 __attribute__((mode(TI)));

/* moby class 444 update (level 08): state machine on m[0x20], picks a target from its table and steers toward it */
void func_L08_002E3860(char *m) {
    char *d = *(char **)(m + 0x78);
    float t[4];
    float a[4];
    float b[4];
    float c[4];
    int rem, i, k, g;
    char *ep, *o, *ov, *ob, *e1, *en, *e2, *q, *r;
    int st;
    float f20, f21, f22, fa, fk;

    if (*(int *)&D_L08_00161CDC != 0) return;
    g = func_L00_0028EB98(m, *(short *)(d + 0x28E));
    if (g == 0) {
        *(short *)(d + 0x28E) = func_0022ED80(3, 4, (int)m);
    }
    st = *(unsigned char *)(m + 0x20);

    switch (st) {
    case 0: {
        int v = D_0015EE84;
        unsigned char *tbl = (unsigned char *)(D_0014171B + 0xAA35);
        if (tbl[*(unsigned char *)(m + 0xB0) + (v << 4)] == 0xFF) {
            func_0020D678(m);
            return;
        }
        *(int *)(d + 0x10) = D_L08_001B0FB0[*(int *)(d + 0x14)];
        *(int *)(d + 0x40) = D_L08_001B0FB0[*(int *)(d + 0x44)];
        *(int *)(d + 0x288) = func_001FA898(func_001F9878(func_002140F8(300.0f, 600.0f)));
        qcopy(m + 0x10, *(char **)(d + 0x40) + 0x10);
        func_L08_002E30E8(m);
        *(unsigned char *)(m + 0x20) = 2;
        *(float *)(m + 0x48) = func_L00_001FF860(*(float *)(*(char **)(d + 0x40) + 0x20) - *(float *)(m + 0x10),
                                                 *(float *)(*(char **)(d + 0x40) + 0x24) - *(float *)(m + 0x14));
        *(unsigned short *)(m + 0x34) |= 0x4000;
        break;
    }
    case 1: {
        int rem, i;
        q = *(char **)(d + 0x10);
        rem = (*(int *)d + *(int *)q + *(signed char *)(d + 4)) % *(int *)q;
        ob = D_L08_00160058 + (*(int *)(d + 0x280) << 8);
        f20 = func_L00_001FF860(*(float *)(q + (rem << 4) + 0x10) - *(float *)(m + 0x10),
                                *(float *)(q + (rem << 4) + 0x14) - *(float *)(m + 0x14));
        func_L00_002592B0(m, (float *)(d + 0x284), f20, 0.00400000019f, 0.300000012f, 0.0199999996f);
        func_L08_002E35C8(m);
        func_L08_002E33F0(m);
        qcopy(t, *(char **)(d + 0x10) + (rem << 4) + 0x10);
        if (func_001F9D10(m + 0x10, t) < 0.5f) *(int *)d = rem;
        func_001F9BF0(a, t, m + 0x10);
        fa = func_001F9CB8(a);
        fk = *(float *)&D_L08_00161CC8 * D_0015EE6C;
        if (fk < fa) {
            func_L00_001FF4B0(a, a, fk);
        }
        func_001F9BD8(m + 0x10, m + 0x10, a);
        if (*(unsigned char *)(m + 0xBC) == 0) return;
        *(unsigned char *)(m + 0xBC) = 0;
        if (func_002140B0(0xFF) & 1) {
            func_L00_00250800(*(char **)(d + 0x90), 1, b);
        } else {
            func_L00_00250800(*(char **)(d + 0xA0), 1, b);
        }
        f21 = func_002140F8(0.17453292f, 0.52359879f);
        func_001FA748(func_L00_001FF860(*(float *)(ob + 0x10) - *(float *)(m + 0x10),
                                        *(float *)(ob + 0x14) - *(float *)(m + 0x14)), 3.14159274f);
        f20 = func_002140F8(-0.261799395f, 0.785398185f);
        f20 = func_001FA748(f20, f20);
        if (0.0f < f20 && f20 < 0.340000004f) f20 = 0.340000004f;
        else if (f20 <= 0.0f && -0.340000004f < f20) f20 = -0.340000004f;
        func_L00_001FF4B0(c, a, (*(float *)&D_L08_00161CC8 + *(float *)&D_L08_00161CC8) * D_0015EE6C);
        r = func_L08_002DF758(b, ob, c, f21, f20);
        *(float *)(r + 0x2C) = *(float *)(*(char **)(r + 0x24) + 0x24) / 5.0f;
        {
            char *v5 = *(char **)(ob + 0x78);
            int *pa = (int *)(v5 + 0x60);
            if (pa[0] == 0) {
                pa[0] = (int)r;
            } else {
                for (i = 1; i < 8; i++) {
                    if (pa[i] == 0) {
                        pa[i] = (int)r;
                        break;
                    }
                }
            }
        }
        break;
    }
    case 2: {
        q = *(char **)(d + 0x40);
        i = *(int *)(d + 0x30);
        k = *(int *)q;
        rem = (i + 1) % k;
        g = (i + 2) % k;
        en = q + (i << 4);
        e1 = q + (rem << 4);
        e2 = q + (g << 4);
        f20 = func_L00_001FF860(*(float *)(e1 + 0x10) - *(float *)(en + 0x10),
                                *(float *)(e1 + 0x14) - *(float *)(en + 0x14));
        f21 = func_L00_001FF860(*(float *)(e2 + 0x10) - *(float *)(e1 + 0x10),
                                *(float *)(e2 + 0x14) - *(float *)(e1 + 0x14));
        f22 = func_001FA790(f20, f21);
        f20 = func_001F9D10(m + 0x10, e1 + 0x10);
        f20 = f20 / func_001F9D10(en + 0x10, e1 + 0x10);
        func_001FA748(f22 * f20, f21);
        f20 = func_L00_001FF860(*(float *)(e1 + 0x10) - *(float *)(m + 0x10),
                                *(float *)(e1 + 0x14) - *(float *)(m + 0x14));
        func_L00_0025CE58((float *)(m + 0x48), (float *)(d + 0x284), f20,
                          *(float *)&D_L08_00161CD4 * 0.0174532924f * D_0015EE70,
                          *(float *)&D_L08_00161CD4 * 0.0174532924f * D_0015EE70,
                          *(float *)&D_L08_00161CD8 * 0.0174532924f * D_0015EE6C);
        qcopy(t, e1 + 0x10);
        if (func_001F9D10(m + 0x10, t) < 0.5f) *(int *)(d + 0x30) = rem;
        func_001F9BF0(a, t, m + 0x10);
        fa = func_001F9CB8(a);
        fk = *(float *)&D_L08_00161CC8 * D_0015EE6C;
        if (fk < fa) {
            func_L00_001FF4B0(a, a, fk);
        }
        func_001F9BD8(m + 0x10, m + 0x10, a);
        func_L08_002E33F0(m);
        if (func_001F9908((int *)(d + 0x288)) == 0) return;
        *(int *)(d + 0x288) = func_001FA898(func_001F9878(func_002140F8(300.0f, 600.0f)));
        func_L00_00250800(*(char **)(d + 0xA0), 1, b);
        func_002140F8(-0.52359879f, -0.261799395f);
        f20 = func_00214158();
        f21 = f20;
        func_L00_001FF4B0(c, a, (*(float *)&D_L08_00161CC8 + *(float *)&D_L08_00161CC8) * D_0015EE6C);
        r = func_L08_002DF758(b, 0, c, f21, f20);
        if (r) {
            *(unsigned char *)(r + 0x20) = 5;
            *(float *)(r + 0x48) = *(float *)(*(char **)(d + 0xA0) + 0x48);
            *(int *)(r + 0x44) = 0;
        }
        break;
    }
    case 3: {
        *(unsigned char *)(m + 0x20) = 1;
        q = *(char **)(d + 0x10);
        qcopy(m + 0x10, q + 0x10);
        *(int *)(m + 0x40) = 0;
        *(float *)(m + 0x48) = func_L00_001FF860(*(float *)(q + 0x20) - *(float *)(m + 0x10),
                                                 *(float *)(q + 0x24) - *(float *)(m + 0x14));
        func_L08_002E33F0(m);
        break;
    }
    case 0x63: {
        ep = d + 0x70;
        for (k = 0x20; k >= 0; k--, ep += 0x10) {
            o = *(char **)ep;
            if (o == 0) continue;
            ov = o + 0x10;
            ob = *(char **)(o + 0x78);
            func_L00_00260108(m, ov, -1, 3.0f, 13.0f);
            func_001F9BF0(ob, ov, m + 0x10);
            func_L00_001FF4B0(ob, ob, *(float *)&D_0015EE6C * 5.0f);
            *(unsigned char *)(o + 0x20) = 1;
            *(int *)ep = 0;
        }
        func_L00_00260108(m, m + 0x10, -1, 5.0f, 13.0f);
        func_0020D678(m);
        break;
    }
    }
}
