/* NON_MATCHING func_L08_002B94B0 -- src/overlays/l08_batalia/vendor_002B9438.c
 * Best so far: SIZE ours 1348 / retail 1344, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped at budget (10 runs, not EXACT). Best: p7.c (1348 vs 1344 bytes). A level-8 moby update: state machine 
 *   Differences left: the shared 16-byte copy (retail has one copy block reached by three branches, the copy P <- 
 *   Would unblock: a rule for the order GCC 2.95 gives a float load after a flag store in a delay slot, and for sh
 */
extern float func_001F9CB8(void *a);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern int func_L00_001F39B0(void *, int, int, void *, int);
extern void func_L00_001FF610(void *, void *, void *);
extern void func_001F9BC0(void *);
extern float func_001FA748(float, float);
extern float func_001F9D48(void *, void *);
extern float func_001F9B88(float);
extern void func_0022ED80(int, int, int);
extern int func_001FFB38(int, int, int, int, int, int, int);
extern void func_0020D678(void *);
extern float func_001F9FA8(float);
extern void func_L08_002B9438(char *moby);
extern void func_L00_0023A658(void);
extern void func_L00_0023A690(void);
extern void func_L00_0023A788(void);
extern char *D_L08_00160058 MACRO_ADDR;
extern int D_L08_0015F6B0_r __asm__("D_L08_0015F6B0") MACRO_ADDR;
extern int D_0015EE84_r __asm__("D_0015EE84") MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE60 MACRO_ADDR;
extern int D_0015EE98 MACRO_ADDR;
extern int D_L08_001746D8 MACRO_ADDR;
extern char D_L08_001746E0[];
extern char D_L08_00174700[];
extern short D_L08_001614DC;
extern short D_L08_001614E8;
extern short D_L08_001614EC;
extern short D_L08_001614F0;
extern short D_L08_001614F4;
extern char D_0013E633[] NOT_SDA;
extern unsigned char D_0013DE6E[];

/* Level 8 moby update (class 152): state machine that steers the moby toward the hero and fires its event. */
void func_L08_002B94B0(char *m) {
    char *d = *(char **)(m + 0x78);
    char *Q, *ptr, *G;
    int st, t, c, x19, f22, r, x8, V, k;
    int *pt;
    float A[4], Bv[4], Cv[4], F[4], E2[4], P[4];
    float f, f20, x, t2;

    (*(int *)(d + 0x28))++;
    st = *(unsigned char *)(m + 0x20);
    if (st != 0) *(float *)(m + 0x18) = *(float *)(d + 0x8);
    st = *(unsigned char *)(m + 0x20);
    switch (st) {
    case 0:
        func_L08_002B9438(m);
        if (*(int *)(d + 0x2C) != 0) m[0x20] = 1;
        else m[0x20] = 2;
        break;
    case 1:
        qcopy(P, (m + 0x10));
        *(float *)(d + 0x18) = *(float *)(d + 0x18) - D_0015EE70 * 9.8f;
        Q = d + 0x10;
        f20 = func_001F9CB8(Q);
        x = (*(float *)&D_L08_001614DC * 1.8f) * D_0015EE60;
        if (x < f20) {
            func_L00_001FF4B0(Q, Q, x);
            f20 = (*(float *)&D_L08_001614DC * 1.8f) * D_0015EE60;
        }
        func_001F9BD8(A, P, Q);
        func_L00_001FF4B0(Bv, Q, *(float *)&D_L08_001614DC);
        func_001F9BF0(Bv, P, Bv);
        func_L00_001FF4B0(Cv, Q, f20 + *(float *)&D_L08_001614DC);
        func_001F9BD8(Cv, Cv, P);
        V = D_L08_0015F6B0_r;
        x8 = ((int)m - (int)D_L08_00160058) >> 8;
        f22 = 1;
        if (!(x8 % 2 != V % 2 || (r = func_L00_001F39B0(Bv, (int)Cv, 2, 0, 0)) == 0 ||
            (D_L08_001746D8 != 0 && *(int *)(d + 0x28) < 10))) {
            if (f20 < *(float *)&D_L08_001614E8) {
                f22 = 0;
            } else {
                G = D_L08_001746E0;
                func_001F9BF0(E2, P, G);
                func_L00_001FF4B0(E2, E2, *(float *)&D_L08_001614DC);
                func_001F9BD8(P, G, E2);
            }
            if (f22 != 0) {
                func_L00_001FF610(F, Q, D_L08_00174700);
                t2 = func_001F9CB8(F) - *(float *)&D_L08_001614EC;
                if (t2 < 0.0f) t2 = 0.0f;
                func_L00_001FF4B0(Q, F, t2);
            } else {
                func_001F9BC0(Q);
                qcopy(P, D_L08_001746E0);
                P[2] = P[2] + *(float *)&D_L08_001614DC;
                if (D_L08_001746D8 == 0) {
                    func_001F9BC0(Q);
                    m[0x20] = 2;
                }
            }
        } else {
            qcopy(P, A);
        }
        qcopy(m + 0x10, P);
        /* falls through into case 2 */
    case 2:
        *(float *)(m + 0x48) = func_001FA748(*(float *)(m + 0x48), *(float *)(d + 0xC));
        x19 = 0;
        if (*(int *)(D_0013E633 + 0xE1D + 0x208C) == 15) {
            if (func_001F9D48(D_0013E633 + 0xE1D + 0x510, m + 0x10) < 0.5f) x19 = 1;
            if (func_001F9D48(D_0013E633 + 0xE1D + 0x520, m + 0x10) < 0.5f) x19 = 1;
            if (func_001F9D48(D_0013E633 + 0xE1D + 0x530, m + 0x10) < 0.5f) x19 = 1;
        } else {
            if (func_001F9D48(m + 0x10, D_0013E633 + 0xE1D + 0x80) < *(float *)(D_0013E633 + 0xE1D + 0x2288)) {
                f = func_001F9B88(*(float *)(m + 0x18) - *(float *)(D_0013E633 + 0xE1D + 0x88));
                if (f < *(float *)(D_0013E633 + 0xE1D + 0x228C)) x19 = 1;
            }
        }
        if (x19 == 0) break;
        ptr = *(char **)(d + 0x24);
        if (ptr != 0) *(short *)(ptr + 0xA) = 0;
        k = D_0015EE84_r;
        pt = (int *)(D_0013DE6E + 0x1D2);
        D_0015EE98 = D_0015EE98 + *(int *)(d + 0x20);
        pt[k] = pt[k] + *(int *)(d + 0x20);
        func_0022ED80(0, 0, (int)m);
        func_001FFB38(2, 0x754E, (int)func_L00_0023A658, (int)func_L00_0023A690,
                      (int)func_L00_0023A788, 0x98967F, (int)&D_0015EE98);
        func_0020D678(m);
        return;
    case 3:
        break;
    case 4:
        ptr = *(char **)(d + 0x24);
        if (ptr != 0) *(short *)(ptr + 0xA) = 0;
        func_0020D678(m);
        return;
    default:
        break;
    }
    t = *(int *)&D_L08_001614F0;
    c = *(int *)(d + 0x28);
    x = (float)(c % t) / (float)(t - 1);
    x = x * 6.2831855f - 3.1415927f;
    f = func_001F9FA8(x);
    x = *(float *)(m + 0x18);
    *(float *)(d + 0x8) = x;
    *(float *)(m + 0x18) = *(float *)(m + 0x18) + *(float *)&D_L08_001614F4 * f;
}
