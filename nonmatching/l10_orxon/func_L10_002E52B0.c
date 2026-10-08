/* NON_MATCHING func_L10_002E52B0 -- src/overlays/l10_orxon/vendor_002E30F8.c
 * Best so far: SIZE ours 2268 / retail 2280, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L10_002E52B0 (2280 bytes, orxon crab update): hero/crab state machine; calls sight, path and dispatch hel
 *   Differences left: the hero base (D_0013E633+0xE1D) is kept as a full pointer where retail keeps its hi half in
 *   Also: D_L10_00161EAC and D_L10_00174380 are declared locally in the candidate (short and char[] respectively);
 */
typedef int u128 __attribute__((mode(TI)));
extern void func_L10_002E14F8(unsigned char *m);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_001F9908(void *);
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern int func_001F9938(void *);
extern void func_0022EE28(int, int, int);
extern void func_L00_00264DB8(int, int);
extern int func_001F9850(int);
extern int func_L00_001EFFF0(void *, void *, int, void *, void *);
extern void func_001F9BF0(void *dst, void *a, void *b);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_001F9C78(void *a, void *b);
extern float func_001F9B88(float);
extern float func_L00_001FF860(float, float);
extern void func_L03_00251A58(float *p, float a, float b);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern void func_L00_0025D5B0(float, void *, void *, int, int, int);
extern void func_L00_0025E4B0(void *m, short *p);
extern void func_L00_0025E590(void *, void *);
extern void func_L00_00260D30(void *, void *, float);
extern float func_001F9D48(void *, void *);
extern int func_L00_00260FB0(void *, void *, float, int, int, void *, int);
extern float func_001F9D10(void *, void *);
extern void func_00213DE0(void *, int, int, int);
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern unsigned char D_0013E633[];
extern unsigned char D_0013D50F[];
extern short D_L10_00161EC0;
extern short D_L10_00161EAC;
extern char D_L10_00174380[];
extern char * D_L10_001B0C30[];

/* Level 10 toxic crab: per-frame sight, target and state update. */
void func_L10_002E52B0(void *mv) {
    char *m = mv;
    char *g = D_0013E633 + 0xE1D;
    char *d = *(char **)(m + 0x78);
    char *r;
    char *p;
    char *q;
    char *e;
    int A;
    float B;
    int v21;
    int ret;
    int st;
    int cls;
    int t;
    float fx;
    float ft;
    float f;
    float r2;
    float dot;
    float vA[4];
    float vB[4];
    float dst[4];
    float W[4];
    float X[4];

    if (*(int *)(g + 0x10B8) == 21) {
        p = *(char **)(g + 0x1090);
        q = *(char **)(p + 0x78);
        if (*(char **)(q + 0x10) == m) {
            func_L10_002E14F8((unsigned char *)m);
            if (*(unsigned char *)(m + 0x20) == 1) *(unsigned char *)(m + 0x20) = 2;
        }
    }
    if (*(int *)(d + 0x38) != 0) {
        func_L10_002E14F8((unsigned char *)m);
        *(int *)(d + 0x1AC) = func_001FA898_r(func_001F9878(func_002140F8(180.0f, 240.0f)));
        *(int *)(d + 0x38) = 0;
    }
    func_001F9908(d + 0x1AC);
    A = 1;
    B = 0.0f;
    r = func_L00_0025B478(m, 0xB30000, 0);
    v21 = func_L00_0025B4D0(m, r, d + 0x20, 0, &A, &B, 0, 4);
    func_001F9938(d + 0x26);
    if ((unsigned int)A < 2 || *(unsigned char *)(m + 0x20) == 0xB || *(unsigned char *)(m + 0x20) == 0xC) goto L58C8;

    if (D_0015EE84_m == 10 && r != 0 && *(char **)(r + 0x20) != 0
        && *(short *)(*(char **)(r + 0x20) + 0xA6) == 0x31A) {
        if (*(int *)(d + 0x1AC) != 0 && D_0013D50F[0x12] == 0) {
            D_0013D50F[0x12] = 1;
            func_0022EE28(1, 0, 0);
            func_L00_00264DB8(0x53DB, -1);
        }
    }
    if (*(short *)(d + 0x26) != 0) {
        if (*(unsigned char *)(r + 0x28) == 0) {
            v21 = 11;
            if (B < 3.0f) B = 0.0f;
        }
    }
    if (*(int *)(g + 0x2084) == 32
        || (*(int *)(g + 0x2090) == 32 && *(int *)(g + 0x198) < func_001F9850(30))) {
        if (2.0f < B) B = 2.0f;
    }
    if (*(unsigned short *)(r + 0x2A) == *(short *)(m + 0xA6)) {
        B = 0.0f;
        v21 = 11;
    }
    if ((unsigned int)(*(unsigned char *)(m + 0x53) - 6) < 2) {
        if (*(unsigned char *)(g + 0x20A4) == 1 && *(char **)(r + 0x20) == *(char **)(g + 0x2080)) {
            B = 0.0f;
            v21 = 11;
        }
    }
    if (*(unsigned short *)(r + 0x2A) == 0x47) {
        *(u128 *)vA = *(u128 *)(D_0013E633 + 0xE9D);
        *(u128 *)vB = *(u128 *)(m + 0x10);
        vA[2] += 1.0f;
        vB[2] += 1.0f;
        if (func_L00_001EFFF0(vA, vB, 2, m, 0) != 0) {
            v21 = 11;
            B = 0.0f;
        }
    } else {
        q = *(char **)(r + 0x20);
        if (q != 0 && *(short *)(q + 0xA6) != 0x359) {
            *(u128 *)vB = *(u128 *)(m + 0x10);
            *(u128 *)vA = *(u128 *)(q + 0x10);
            vB[2] += 1.0f;
            cls = *(short *)(q + 0xA6);
            if (cls == 0xBA || cls == 0) vA[2] += 0.25f;
            if (func_L00_001EFFF0(vA, vB, 0x12, m, 0) != 0) {
                float k = 1.0f;
                func_001F9BF0(dst, vB, vA);
                *(u128 *)W = *(u128 *)dst;
                func_L00_001FF4B0(W, W, k);
                func_L00_001FF4B0(X, D_L10_00174380, k);
                dot = func_001F9C78(W, X);
                if (0.5f < func_001F9B88(dot)) {
                    B = 0.0f;
                    v21 = 11;
                }
            }
        }
    }
    *(float *)(d + 0x20) = *(float *)(d + 0x20) - B;
    if (*(float *)(d + 0x20) <= 0.0f) v21 = 1;

    func_L10_002E14F8((unsigned char *)m);
    *(int *)(d + 0x90) = func_001FA898_r(768.0f);
    *(float *)(d + 0x98) = 0.75f;
    *(int *)(d + 0x94) = 9;
    *(unsigned char *)(d + 0xAD) = 0;
    fx = func_L00_001FF860(*(float *)(r + 0x10), *(float *)(r + 0x14));

    switch (v21) {
    case 0: goto L58C8;
    case 1: goto L58B0;
    case 2: goto L58B0;
    case 3: goto L5750;
    case 4: goto L57D4;
    case 5: goto L57D4;
    case 6: goto L5750;
    case 7: goto L5750;
    case 8: goto L5750;
    case 9: goto L5750;
    case 10: goto L5750;
    case 11: goto L58C8;
    default: goto L58C8;
    }

L58B0:
    *(unsigned char *)(m + 0x20) = 11;
    *(unsigned short *)(m + 0x34) = *(unsigned short *)(m + 0x34) & 0xEFFF;
    goto L58C8;

L5750:
    *(unsigned char *)(m + 0x20) = 10;
    func_001F9850(60);
    *(float *)(d + 0x80) = *(float *)&D_L10_00161EAC * D_0015EE70;
    *(short *)(d + 0x26) = 10;
    func_L03_00251A58((float *)(d + 0x70), 0.5f, 0.5f);
    *(float *)(d + 0xC0) = 8.0f;
    *(float *)(d + 0xC4) = 10.0f;
    *(u128 *)vA = *(u128 *)(r + 0x10);
    func_L00_0025BBA0(vA, &fx, d + 0x88, d + 0x8C);
    ft = fx;
    goto L5880;

L57D4:
    *(unsigned char *)(m + 0x20) = 10;
    func_001F9850(60);
    *(float *)(d + 0x80) = *(float *)&D_L10_00161EAC * D_0015EE70;
    *(short *)(d + 0x26) = 10;
    f = (*(unsigned char *)(g + 0x20A4) == 1) ? 1.0f : 3.0f;
    func_L03_00251A58((float *)(d + 0x70), f, 0.5f);
    *(float *)(d + 0xC4) = 7.0f;
    *(float *)(d + 0xC0) = 3.5f;
    *(u128 *)vA = *(u128 *)(r + 0x10);
    func_L00_0025BBA0(vA, &fx, d + 0x88, d + 0x8C);
    ft = func_L00_001FF860(*(float *)(r + 0x10), *(float *)(r + 0x14));

L5880:
    func_L00_0025D5B0(ft, m, d + 0x70, 9, 1, 0);
    *(unsigned char *)(d + 0x67) = 0xFA;
    func_L00_0025E4B0(m, (short *)(d + 0x60));

L58C8:
    *(unsigned char *)(m + 0xA4) = 0xFF;
    func_L00_0025E590(m, d + 0x60);
    st = *(unsigned char *)(m + 0x20);
    if ((unsigned int)(st - 10) < 3) {
        *(int *)(d + 0x1D4) = 0;
        return;
    }
    f = *(float *)&D_L10_00161EC0;
    if (*(int *)(d + 0x1AC) != 0) {
        *(float *)(d + 0x1A0) = f + 6.0f;
        goto L5974;
    }
    if (st != 1) {
        *(float *)(d + 0x1A0) = f;
    } else {
        *(float *)(d + 0x1A0) = (*(char **)(g + 0x240) == m || *(char **)(g + 0x23C) == m) ? 6.0f : 0.0f;
        if (*(unsigned char *)(g + 0x20A4) == 1) func_L10_002E14F8((unsigned char *)m);
    }

L5974:
    if (*(int *)(d + 0x1AC) != 0) {
        func_L00_00260D30(m, d + 0x120, *(float *)(d + 0x1A0));
        r2 = func_001F9D48(d + 0x170, d + 0x120);
        if (*(float *)(d + 0x1A0) < r2) {
            *(int *)(d + 0x164) = 2;
        } else if (3.0f < func_001F9B88(*(float *)(m + 0x18) - *(float *)(d + 0x128))) {
            *(int *)(d + 0x164) = 2;
        }
    } else {
        r2 = func_001F9D48(d + 0x170, d + 0x120);
        if (!(*(float *)(d + 0x1A0) < r2) && !(3.0f < func_001F9B88(*(float *)(m + 0x18) - *(float *)(d + 0x128)))) {
            e = D_L10_001B0C30[*(int *)(d + 0x1B0)];
            func_L00_00260FB0(m, d + 0x120, *(float *)(d + 0x1A0), 0, 0, e + 0x10, *(int *)e);
        } else {
            func_L00_00260D30(m, d + 0x120, *(float *)(d + 0x1A0));
            *(int *)(d + 0x164) = 2;
        }
    }

    if (*(unsigned char *)(m + 0x20) == 1) {
        *(int *)(d + 0x1D4) = 0;
    } else if (*(int *)(d + 0x164) != 2) {
        *(int *)(d + 0x1D4) = 0;
    } else {
        *(int *)(d + 0x1D4) = *(int *)(d + 0x1D4) + 1;
        if (func_001F9850(300) < *(int *)(d + 0x1D4)) {
            f = func_001F9D10(m + 0x10, d + 0x170);
            if (1.0f < f) {
                *(unsigned char *)(m + 0x20) = 8;
                if (*(unsigned char *)(m + 0x53) != 4) {
                    t = func_001F9850(12);
                    func_00213DE0(m, 4, t, 0);
                }
            } else {
                if (*(unsigned char *)(g + 0x20A4) != 1) {
                    *(unsigned char *)(m + 0x20) = 1;
                    if (*(unsigned char *)(m + 0x53) != 0) {
                        t = func_001F9850(20);
                        func_00213DE0(m, 0, t, 0);
                    }
                }
            }
        }
    }
    if (*(int *)(d + 0x160) == 0) {
        *(int *)(d + 0x160) = *(int *)(g + 0x2080);
    }
}
