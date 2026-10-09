/* NON_MATCHING func_L00_002CDAB8 -- src/overlays/shared/vendor_002C96D0.c
 * Best so far: SIZE ours 2276 / retail 2264, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   What it does: ryno (class 454) update on the moby's data block at +0x78: camera/vector setup, then a state mac
 *   Where it differs: compiles, but 12 bytes long (2276 vs 2264). Branch-likely forms (beql with sw in the delay s
 *   Unblock: a lead pass on the prologue save order and the beql form, and the ra/s6 frame; without that the tails
 */
extern char D_L00_00166D80[];
extern char D_L00_00166ED0[];
extern float D_L00_00166EC0[];
extern int D_0015EFA4 MACRO_ADDR;
extern int func_00234638_r(int, int) __asm__("func_L00_00234638");
extern int D_0015EE84 MACRO_ADDR;
extern char D_0013E633[];
extern char D_0013A5E0[];
extern char D_0014171B[];
extern void func_001FA480(void *, void *);
extern void func_001FA4A0(void *, void *);
extern void func_L00_00250800(void *, int, void *);
extern char *func_L00_002CD7B0(void *, void *, int, float, float, float);
extern int func_001F9850(int);
extern int func_001F9938(void *);
extern int func_L00_00234718(int);
extern float func_001F9D10(void *, void *);
extern float func_001F9B88(float);
extern void func_L00_001EE2E0(int, int, float, float, void *, int, int, float, int);
extern void func_L00_00222B80(int, int);
extern void func_L00_0020EB60(void);
extern void func_001F9EE8(void *, void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern float func_L00_001FF860(float, float);
extern float func_001F9CE8(void *);
extern void func_L00_0020ED30(void);
extern int func_001160D8(void);

/* ryno update (class 454): state machine on the moby's data block, camera-tracked */
void func_L00_002CDAB8(char *m) {
    char *d;
    char *p;
    char *w;
    char *base;
    char *arr;
    char *r;
    char *q;
    char cam[0x30];
    char o30[0x40];
    char vA[16];
    char vB[16];
    char vC[16];
    int st, c1, c2, t, i, s, st2;
    unsigned int h;
    float f, f21, f20;
    char *p2;

    d = *(char **)(m + 0x78);
    func_001FA480(cam, D_L00_00166D80);
    func_001FA4A0(o30, cam);

    if ((unsigned)(*(unsigned char *)(m + 0x20) - 2) < 2) {
        if (func_001F9908((int *)(d + 8)))
            goto L_clr;
        p = *(char **)d;
        if (p == 0)
            goto L_clr;
        if (*(unsigned char *)(p + 0x20) == 0xFE)
            goto L_clr;
        if (*(unsigned char *)(p + 0x20) != 0xFD)
            goto L_vA;
L_clr:
        *(char **)d = 0;
        *(int *)(d + 0xC) = 0;
L_vA:
        qcopy(vA, D_L00_00166ED0);
        *(float *)(vA + 4) = -*(float *)(vA + 4);
        func_L00_00250800(m, *(unsigned char *)(d + 5), vB);
        r = func_L00_002CD7B0(vB, vA, 0, 10050880.0f / 134217728.0f, 10050880.0f / 134217728.0f, 84.0f);
        p = *(char **)d;
        if (r != 0 && p == 0) {
            *(int *)(d + 0xC) = 0;
            goto L_c04;
        }
        if (p != 0 && *(unsigned char *)(p + 0x20) != 0xFE && *(unsigned char *)(p + 0x20) != 0xFD
            && *(unsigned char *)(p + 0x31) != 0)
            goto L_c44;
        *(int *)(d + 0xC) = 0;
L_c04:
        *(char **)d = r;
        *(int *)(d + 8) = func_001F9850(20);
        *(float *)(d + 0x14) = 1.0f;
        q = (char *)func_L00_0025D390(*(char **)d);
        if (q != 0) {
            *(float *)(d + 0xC) = *(float *)(q + 0x10);
            *(float *)(d + 0x14) = *(float *)q;
        }
L_c44:
        if (*(char **)d == 0)
            goto L_d28;
        if (func_001F9938(d + 0x10) == 0)
            goto L_d28;
        if (func_L00_00234718(-1) == 0)
            goto L_d28;
        p = *(char **)d;
        if (p == 0 || *(unsigned char *)(p + 0x20) == 0xFE || *(unsigned char *)(p + 0x20) == 0xFD) {
            *(char **)d = 0;
            *(int *)(d + 0xC) = 0;
            goto L_d24;
        }
        f = func_001F9D10(D_L00_00166EC0, p + 0x10) / 150.0f;
        qcopy(vA, *(char **)d + 0x10);
        f = f * 0.65f;
        *(float *)(vA + 8) = *(float *)(vA + 8) + *(float *)(d + 0xC);
        f = func_001F9B88(0.9f - f);
        func_L00_001EE2E0((int)m, 0xFF0FFF0F, f, 0.0f, vA, 0x23, -1, 90.0f, 4);
L_d24:
    }
L_d28:
    switch (*(unsigned char *)(m + 0x20)) {
    case 0:
        *(char **)d = 0;
        D_0013E633[0x1EC9] = 0;
        m[0x20] = 1;
        *(short *)(d + 0x10) = 0;
        return;
    case 1:
        if (*(unsigned char *)(m + 0x70) & 2)
            m[0x20] = 2;
        return;
    case 2:
        base = D_0013E633 + 0xE1D;
        if (*(int *)(base + 0x2084) == 1)
            func_L00_00222B80(0x1E, 1);
        if ((*(int *)(base + 0x10A0) & *(int *)(D_0013A5E0 + 0x2604)) == 0)
            return;
        if (*(unsigned char *)(base + 0x20AC) != 0)
            return;
        if (func_00234638_r(-1, 1) == 0)
            return;
        w = D_0014171B + 0x65;
        h = *(unsigned short *)(w + 0xB8);
        if (h <= 0xFFFE)
            *(unsigned short *)(w + 0xB8) = h + 1;
        t = func_001F9850(D_0015EFA4);
        if (*(unsigned short *)(w + 0xBA) < t / 600)
            *(unsigned short *)(w + 0xBA) = func_001F9850(D_0015EFA4) / 600;
        s = D_0015EE84;
        *(int *)(w + 0xBC) = *(int *)(w + 0xBC) | (1 << s) | (int)0x80000000;
        *(unsigned char *)(base + 0x10AC) = 2;
        *(unsigned char *)(d + 4) = 0;
        *(short *)(d + 6) = 0;
        *(unsigned char *)(d + 5) = 0;
        m[0x20] = 4;
        func_L00_0020EB60();
        i = 6;
        p2 = d + 0x30;
        do {
            *(int *)p2 = 0;
            i--;
            p2 -= 4;
        } while (i >= 0);
        *(short *)(d + 0x12) = 0;
        return;
    case 3:
        func_L00_001EE2E0((int)m, (int)0xFF0F0FFF, 1.0f, 0.0f, 0, 0x23, -1, 90.0f, 4);
        base = D_0013E633 + 0xE1D;
        if ((*(int *)(D_0013A5E0 + 0x2460 + 0x1A0) & 5) == 0) {
            m[0x20] = 2;
            return;
        }
        if ((*(int *)(D_0013A5E0 + 0x2460 + 0x1A4) & *(int *)(base + 0x10A0)) == 0)
            return;
        if (*(unsigned char *)(base + 0x20AC) != 0)
            return;
        if (func_00234638_r(-1, 1) == 0)
            return;
        w = D_0014171B + 0x65;
        h = *(unsigned short *)(w + 0xB8);
        if (h <= 0xFFFE)
            *(unsigned short *)(w + 0xB8) = h + 1;
        t = func_001F9850(D_0015EFA4);
        if (*(unsigned short *)(w + 0xBA) < t / 600)
            *(unsigned short *)(w + 0xBA) = func_001F9850(D_0015EFA4) / 600;
        s = D_0015EE84;
        *(int *)(w + 0xBC) = *(int *)(w + 0xBC) | (1 << s) | (int)0x80000000;
        *(unsigned char *)(base + 0x10AC) = 2;
        *(unsigned char *)(d + 4) = 0;
        *(short *)(d + 6) = 0;
        *(unsigned char *)(d + 5) = 0;
        m[0x20] = 4;
        func_L00_0020EB60();
        i = 6;
        p2 = d + 0x30;
        do {
            *(int *)p2 = 0;
            i--;
            p2 -= 4;
        } while (i >= 0);
        *(short *)(d + 0x12) = 0;
        return;
    case 4:
        if (func_001F9938(d + 6) == 0)
            return;
        t = func_001F9850(9);
        *(short *)(d + 6) = t;
        i = *(unsigned char *)(d + 5) + 1;
        *(unsigned char *)(d + 5) = i;
        base = D_0013E633 + 0xE1D;
        *(unsigned char *)(d + 4) = *(unsigned char *)(d + 4) + 1;
        *(unsigned char *)(d + 5) = (i & 0xFF) % 9;
        qzero(vB);
        if (*(int *)(base + 0x2084) == 30) {
            *(float *)(vB + 8) = 1.0f;
            func_001F9EE8(vB, vB, o30);
        } else {
            *(float *)vB = 1.0f;
            func_001F9EC0(vB, vB, base + 0x640);
        }
        w = D_0013E633 + 0xF1D;
        func_001F9BD8(vC, w, w + 0x40);
        func_001F9C30(vC, vC, 3.0f);
        func_001F9BD8(vB, vB, vC);
        base = D_0013E633 + 0xE1D;
        if (*(int *)(base + 0x12B0) == 0) {
            f21 = func_L00_001FF860(*(float *)vB, *(float *)(vB + 4));
        } else {
            f21 = *(float *)(base + 0x12BC);
        }
        f = func_001F9CE8(vB);
        f = func_L00_001FF860(f, *(float *)(vB + 8));
        f20 = -f;
        func_L00_00250800(m, *(unsigned char *)(d + 5), vA);
        func_L00_0020EB60();
        func_L00_002CE390((int)m, vA, *(char **)d, *(float *)(d + 0xC), f21, f20);
        if (*(unsigned char *)(d + 4) >= 7) {
            *(unsigned char *)(base + 0x10AC) = 0;
            func_L00_0020ED30();
            m[0x20] = 5;
            t = func_001F9850(60);
            *(short *)(d + 6) = t;
            t = func_001F9850(60);
            *(short *)(d + 0x10) = t;
        }
        f = *(float *)(d + 0x14) - 1.0f;
        *(float *)(d + 0x14) = f;
        if (!(f > 0.0f))
            goto L_e220;
        p = *(char **)d;
        if (p != 0) {
            st2 = *(unsigned char *)(p + 0x20);
            if (st2 != 0xFE && st2 != 0xFD)
                return;
        }
L_e220:
        i = *(short *)(d + 0x12);
        arr = d + 0x18;
        *(int *)(arr + (i << 2)) = *(int *)d;
        i = (short)(*(unsigned short *)(d + 0x12) + 1);
        *(short *)(d + 0x12) = i % 7;
        qcopy(vA, D_L00_00166ED0);
        *(float *)(vA + 4) = -*(float *)(vA + 4);
        r = func_L00_002CD7B0(d + 0x10, vA, (int)arr, 3.14159265f, 3.14159265f, 100.0f);
        *(char **)d = r;
        if (r == 0 && *(short *)(d + 0x12) > 0) {
            c1 = func_001160D8();
            if ((c1 & (*(short *)(d + 0x12) + 1)) == 0) {
                c2 = func_001160D8();
                *(char **)d = *(char **)(arr + (c2 % *(short *)(d + 0x12)) * 4);
            }
        }
        *(int *)(d + 0xC) = 0;
        *(int *)(d + 8) = func_001F9850(20);
        *(float *)(d + 0x14) = 1.0f;
        q = (char *)func_L00_0025D390(*(char **)d);
        if (q == 0)
            return;
        *(float *)(d + 0xC) = *(float *)(q + 0x10);
        *(float *)(d + 0x14) = *(float *)q;
        return;
    case 5:
        if (func_001F9938(d + 6) == 0)
            return;
        *(char **)d = 0;
        *(unsigned char *)(d + 4) = 0;
        m[0x20] = 2;
        return;
    default:
        return;
    }
}
