/* NON_MATCHING func_L08_003041A8 -- src/overlays/l08_batalia/vendor_002EAF48.c
 * Best so far: SIZE ours 1664 / retail 1672, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Commando (moby class 1130) update on level 08: a state machine on the byte at +0x20 (states 0-3 plus a common 
 *   Best candidate p4.c (p2.c and p3.c are the same size): 1664 bytes against retail 1672 (8 short), no EXACT afte
 *   Differences: the allocator gives the moby parameter $18 and the child pointer $19; retail has the parameter in
 *   Unblock: a way to make the parameter take $17 without changing the statement order, and the state-dispatch blo
 */
extern float func_001F9D10(void *, void *);
extern void func_L02_002E2110(void *);
extern void func_L00_0025B178(void *);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern int func_L00_002676E8(void *, void *);
extern int func_L00_00267290(void *, void *);
extern int func_002140B0(int);
extern void func_L01_00279398(float, void *);
extern void func_L00_00261848(int);
extern void func_L00_00263DB0(int);
extern void func_L00_002512D8(int);
extern void func_L00_00286128(void *, void *);
extern void func_0020BFC8(int, int);
extern void func_0020D678(void *);
extern float func_001F9D48(void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern float func_001F9CB8(void *);
extern int func_001F9908_i(int *) __asm__("func_001F9908");
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898(float);
extern float func_001FA748(float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001FA790(float, float);
extern float func_001F9CE8(void *);
extern void func_L00_00263950(char *, char *, int, float, float);
extern char D_L08_00167640[];
extern char D_L08_00162270[];
extern int D_L08_0016016C;
extern short D_L08_00162268;
extern int D_L08_0015F6A8 MACRO_ADDR;
extern unsigned char D_0015EEB0[] MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern char D_0013DE4B[];
extern char D_0013D4B5[];
extern char D_0013E633[];
extern unsigned char D_0014171B[] NOT_SDA;

/* Commando (moby class 1130) update on level 08: state machine on the byte at +0x20. */
void func_L08_003041A8(unsigned char *m) {
    char *n;
    char *src;
    int a;
    int r, v, q2, r2;
    unsigned char st, q53;
    char *Q9;
    char *sp;
    float f0, f1, f2, f12, f13, f14, f20, f21, f22, f23;
    int v20;
    float tmp[12];

    n = *(char **)(m + 0x78);
    func_L02_002E2110(m);
    if (m[0x31] != 0) {
        if (func_001F9D10(m + 0x10, D_L08_00167640) < (float)*(int *)&D_L08_00162268) {
            func_L00_0025B178(m);
            m[0x7F] = (*(int *)&D_L08_00162268 * 13) >> 4;
        }
    }
    st = m[0x20];
    if (st == 0) {
        m[0x30] = 0xFF;
        q53 = m[0x53];
        if (q53 != 1) {
            r = func_001F9850(10);
            func_00213DE0(m, 1, 0, r);
        }
        if (D_0013DE4B[7] != 0 && D_0014171B[0xAA35 + m[0xB0] + (D_0015EE84 << 4)] == 0xFF) {
            func_0020D678(m);
            return;
        }
        *(float *)(n + 0x2C) = 3.0f;
        *(char **)(n + 0x40) = D_L08_00162270;
        if (D_0013D4B5[7] != 0) {
            a = *(int *)(n + 0x180) << 7;
            src = (char *)D_L08_0016016C;
            qcopy(m + 0x10, src + a + 0x30);
            qcopy(m + 0x40, src + a + 0x70);
            m[0x20] = 2;
        } else {
            m[0x20] = 1;
        }
        func_L00_002676E8(m, n + 0x20);
    } else if (st == 1) {
        r = func_L00_00267290(m, n + 0x20);
        if (r != 0) {
            a = *(int *)(n + 0x180) << 7;
            src = (char *)D_L08_0016016C;
            qcopy(m + 0x10, src + a + 0x30);
            qcopy(m + 0x40, src + a + 0x70);
            m[0x20] = 2;
            D_0013D4B5[7] = st;
        }
    } else if (st == 2) {
        if (m[0x70] & 2) {
            q53 = m[0x53];
            v = func_002140B0(2);
            if (q53 != v + 1) {
                q2 = func_002140B0(2) + 1;
                r = func_001F9850(20);
                func_00213DE0(m, q2, 0, r);
            }
        }
        r = func_L00_00267290(m, n + 0x20);
        if (r != 0) {
            m[0x20] = 3;
            func_L01_00279398(2.20000005f, m);
        }
    } else if (st == 3) {
        *(unsigned char *)(n + 0x28) = 1;
        if (D_L08_0015F6A8 != 2) {
            if (*(short *)(n + 0x24) == st) {
                func_L00_00261848(10);
                func_L00_00263DB0(10);
                func_L00_002512D8(m[0xB0]);
                Q9 = D_0013E633 + 0xE9D;
                func_L00_00286128(Q9, Q9 + 0x10);
                func_0020BFC8(0, -1);
                func_0020D678(m);
                return;
            }
            m[0x20] = 2;
        }
    }

    /* common tail */
    q53 = m[0x53];
    f22 = 0.0199999996f;
    f23 = 0.300000012f;
    v20 = 0;
    if (q53 == 1) {
        Q9 = D_0013E633 + 0xE9D;
        f0 = func_001F9D48(m + 0x10, Q9);
        v20 = 1;
        if (f0 < 8.0f) {
            f0 = *(float *)(m + 0x10);
            f1 = *(float *)(Q9 + 0x54);
            f12 = *(float *)(Q9 + 0x50);
            f13 = *(float *)(m + 0x14);
            f12 = f12 - f0;
            f13 = f1 - f13;
            f0 = func_L00_001FF860(f12, f13);
            f12 = *(float *)(m + 0x48);
            f0 = func_001FA850(f12, f0);
            if (f0 < 1.57079637f) {
                f0 = func_001F9CB8(Q9 + 0x80);
                if (0.0099999998f < f0) {
                    *(int *)(n + 0x188) = func_001F9850(120);
                } else {
                    func_001F9908_i((int *)(n + 0x188));
                }
                goto after188;
            }
        }
        if (*(int *)(n + 0x188) != 0) {
            *(int *)(n + 0x188) = 0;
            qcopy(n + 0x160, D_0013E633 + 0xEED);
        }
after188:
        r = func_001F9908_i((int *)(n + 0x18C));
        if (r != 0) {
            f21 = 0.0174532924f;
            f0 = func_002140F8(180.0f, 300.0f);
            f0 = func_001F9878(f0);
            r2 = func_001FA898(f0);
            f0 = func_002140F8(-90.0f, 90.0f);
            *(int *)(n + 0x18C) = r2;
            f13 = f0 * f21;
            f0 = func_001FA748(*(float *)(m + 0x48), f13);
            f0 = func_002140F8(0.0f, 30.0f);
            f20 = f0;
            f14 = f0 * f21;
            func_00215C00(n + 0x160, 6.0f, f20, f14);
            func_001F9BD8(n + 0x160, n + 0x160, m + 0x10);
        }
        if (*(int *)(n + 0x188) == 0) {
            qcopy(tmp, n + 0x160);
        } else {
            qcopy(tmp, D_0013E633 + 0xEED);
            f22 = 0.0399999991f;
            f23 = 0.300000012f;
        }
        qcopy(tmp + 4, m + 0x10);
        tmp[6] = tmp[6] + 1.0f;
        func_001F9BF0(tmp + 8, tmp, tmp + 4);
        f0 = func_L00_001FF860(tmp[8], tmp[9]);
        f0 = func_001FA790(f0, *(float *)(m + 0x48));
        f20 = f0;
        f0 = func_001F9CE8(tmp + 8);
        f0 = func_L00_001FF860(f0, tmp[10]);
        f2 = -f0;
        if (1.57079637f < f20) {
            f20 = 1.57079637f;
        } else if (f20 < -1.57079637f) {
            f20 = -1.57079637f;
        }
        if (0.52359879f < f2) {
            f2 = 0.52359879f;
        } else if (f2 < -0.52359879f) {
            f2 = -0.52359879f;
        }
        *(float *)(n + 0xC4) = f2;
        *(float *)(n + 0xC8) = f20 * 0.600000024f;
        *(float *)(n + 0x148) = f20 * 0.400000006f;
    }
    if (D_0015EEB0[0] != 0) {
        *(float *)(n + 0xD0) = 2.75f;
    }
    f12 = D_0015EE64;
    func_L00_00263950(m, n + 0x60, 0, f22 * f12, f23 * f12);
    f12 = D_0015EE64;
    func_L00_00263950(m, n + 0xE0, 1, f22 * f12, f23 * f12);
}
