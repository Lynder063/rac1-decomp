/* NON_MATCHING func_L00_002086C8 -- src/overlays/shared/help_00203E98.c
 * Best so far: SIZE ours 1984 / retail 2000, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Hero-state update: refreshes the hero moby's pose and runs a switch on its state (13, 16, 17, 19, 20) that cal
 *   Would unblock: a rewording that lands block 2 and the prologue register choice (retail sq $s3 at 0x40 and $s4 
 */
extern void func_L00_00250800(void *, int, void *);
extern void func_L00_00208650(void *vec, int a, float f0, float f1);
extern float func_001FA748(float, float);
extern float func_001F9FA8(float);
extern int func_001FA8A8(int, int, float);
extern void func_001F9EC0(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001FA898(float);
extern int func_001F9850(int);
extern int D_L00_0015F6A8 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE60 MACRO_ADDR;
extern char D_L00_00179510[] NOT_SDA;
extern unsigned char D_0013E633[] NOT_SDA;
typedef int u128 __attribute__((mode(TI)));
typedef union { u128 q; float f[4]; } Vec4 __attribute__((aligned(16)));

// Hero gadget effect: refreshes the pose, then runs the per-state effect and draw-queue calls.
void func_L00_002086C8(void) {
    char *base = (char *)D_0013E633 + 0xE1D;
    char *m;
    Vec4 v;
    int i;
    float t, t2, t3;
    int q, r2, s17, X1, X2;

    if (*(int *)(base + 0x1158) == 5) {
        char *w = *(char **)(base + 0x1130);
        if (w != 0 && (*(unsigned short *)(w + 0x34) & 1) != 1) {
            for (i = 0; i < 2; i++) {
                func_L00_00250800(w, i, &v);
                func_L00_00208650(&v, 0x301EAA1E, 0.057f, 0.150000006f);
            }
        }
    }

    if (D_L00_0015F6A8 == 0) {
        int c17, c18, s;
        c18 = 0x806E8C6E;
        c17 = 0x805A3232;
        t = func_001FA748(*(float *)(base + 0x1628), D_0015EE6C * 2.26892805f);
        s = *(int *)D_L00_00179510;
        *(float *)(base + 0x1628) = t;
        if (s != 0 && s != 8) {
            c18 = 0x806EAAFA;
            c17 = 0x80326E5A;
            t2 = func_001FA748(t, D_0015EE6C * 5.58505344f);
            *(float *)(base + 0x1628) = t2;
        }
        t3 = func_001F9FA8(*(float *)(base + 0x1628));
        *(int *)(*(char **)(base + 0x2080) + 0x90) = func_001FA8A8(c18, c17, t3 * 0.5f + 0.5f);
    }

    m = *(char **)(base + 0x1090);
    if (m == 0) return;
    if ((*(unsigned short *)(m + 0x34) & 1) == 1) return;

    switch (*(int *)(base + 0x10B8)) {
    case 17: {
        float d = D_0015EE6C;
        float f;
        int c5;
        unsigned char b90, b91, b92;
        f = func_001FA748(*(float *)(base + 0x10BC), d * 4.36332321f);
        *(float *)(base + 0x10BC) = f;
        c5 = 0x28C8C8C8;
        if (0.0f < f && f < 2.26892805f) c5 = 0x280A0A0A;
        *(int *)(m + 0x90) = func_001FA8A8(*(int *)(m + 0x90), c5, 0.0700000003f);
        v.q = 0;
        v.f[0] = 0.0173452497f;
        v.f[1] = -0.0391772911f;
        v.f[2] = 0.0962345004f;
        func_001F9EC0(&v, &v, m + 0xC0);
        func_001F9BD8(&v, &v, m + 0x10);
        b90 = *(unsigned char *)(m + 0x90);
        b91 = *(unsigned char *)(m + 0x91);
        b92 = *(unsigned char *)(m + 0x92);
        X1 = func_001FA898((float)(int)b90 * 0.2f);
        X2 = func_001FA898((float)(int)b92 * 0.2f);
        q = ((int)b91 << 5) / 200;
        r2 = X2 << 16;
        s17 = (int)b91 << 8;
        func_L00_00208650(&v, (q << 24) | r2 | s17 | X1, 0.150000006f, 0.1f);
        break;
    }
    case 16: {
        char *g = base - 0xBB0;
        float d = D_0015EE6C;
        float f20, c;
        int r18, r17, r20, s18, rr, r;
        if (func_001F9850(50) < *(int *)(g + 0x10B0)) {
            if (*(unsigned char *)(g + 0x20A8) == 0)
                c = d * 3.14159274f;
            else
                c = d * 4.71238899f;
            t = func_001FA748(*(float *)(g + 0x10BC), c);
            f20 = t;
            *(float *)(g + 0x10BC) = f20;
            X1 = func_001FA898(func_001F9FA8(f20) * 20.0f);
            r20 = X1 + 30;
            X2 = func_001FA898(func_001F9FA8(f20) * 90.0f);
            r17 = X2 + 150;
            r18 = func_001FA898(func_001F9FA8(f20) * 20.0f) + 30;
            if (*(unsigned char *)(g + 0x20A8) != 0) {
                int tmp = r20;
                r20 = r17;
                r17 = tmp;
            }
            s18 = r18 << 16;
            s17 = r17 << 8;
            *(int *)(m + 0x90) = func_001FA8A8(*(int *)(m + 0x90), s18 | 0x20000000 | s17 | r20, 0.129999995f);
            r = func_001F9850(50);
            rr = *(int *)(g + 0x10B0) - r;
            if (rr >= 33) rr = 32;
            rr = (rr << 24) | s18 | s17 | r20;
            func_L00_00250800(m, 1, &v);
            func_L00_00208650(&v, rr, 0.150000006f, 0.0399999991f);
        }
        break;
    }
    case 19: {
        char *g = base - 0xBB0;
        float d = D_0015EE6C;
        float f21, k;
        int A, B, C, D1, D2, D3, r16, r17, r2;
        if (*(unsigned char *)(g + 0x20A8) == 0)
            k = d * 2.26892805f;
        else
            k = d * 7.33038282f;
        t = func_001FA748(*(float *)(g + 0x10BC), k);
        f21 = t;
        *(float *)(g + 0x10BC) = f21;
        if (*(unsigned char *)(g + 0x20A8) != 0) {
            A = func_001FA898(func_001F9FA8(f21) * 30.0f);
            r17 = A + 50;
            B = func_001FA898(func_001F9FA8(f21) * 30.0f);
            r16 = B + 50;
            C = func_001FA898(func_001F9FA8(f21) * 90.0f);
            r2 = C + 170;
        } else {
            D1 = func_001FA898(func_001F9FA8(f21) * 70.0f);
            r17 = D1 + 100;
            D2 = func_001FA898(func_001F9FA8(f21) * 40.0f);
            r16 = D2 + 70;
            D3 = func_001FA898(func_001F9FA8(f21) * 40.0f);
            r2 = D3 + 70;
        }
        *(int *)(m + 0x90) = func_001FA8A8(*(int *)(m + 0x90), (r2 << 16) | 0x80000000 | (r16 << 8) | r17, 0.150000006f);
        break;
    }
    case 20: {
        char *g = base - 0xBB0;
        float d = D_0015EE6C;
        float f;
        int c5;
        unsigned char b90, b91, b92;
        f = func_001FA748(*(float *)(g + 0x10BC), d * 4.36332321f);
        *(float *)(g + 0x10BC) = f;
        c5 = 0xDCDCDC;
        if (0.0f < f && f < 2.44346094f) c5 = 0xA0A0A;
        *(int *)(m + 0x90) = func_001FA8A8(*(int *)(m + 0x90), c5, 0.0700000003f);
        v.q = 0;
        v.f[0] = 0.0171042103f;
        v.f[1] = -0.0939194188f;
        v.f[2] = 0.140954122f;
        func_001F9EC0(&v, &v, m + 0xC0);
        func_001F9BD8(&v, &v, m + 0x10);
        b90 = *(unsigned char *)(m + 0x90);
        b91 = *(unsigned char *)(m + 0x91);
        b92 = *(unsigned char *)(m + 0x92);
        X1 = func_001FA898((float)(int)b90 * 0.2f);
        X2 = func_001FA898((float)(int)b92 * 0.2f);
        q = ((int)b91 << 5) / 200;
        r2 = X2 << 16;
        s17 = (int)b91 << 8;
        func_L00_00208650(&v, (q << 24) | r2 | s17 | X1, 0.170000002f, 0.100000001f);
        break;
    }
    case 13: {
        char *g = base - 0xBB0;
        float f;
        int r5 = 0x2814D214;
        f = func_001FA748(*(float *)(g + 0x10BC), D_0015EE6C * 4.71238899f);
        *(float *)(g + 0x10BC) = f;
        if (0.0f < f && f < 2.09439516f) r5 = 0x281414D2;
        *(int *)(m + 0x90) = func_001FA8A8(*(int *)(m + 0x90), r5, D_0015EE60 * 0.0500000007f);
        func_L00_00250800(m, 0, &v);
        func_L00_00208650(&v, *(int *)(m + 0x90), 0.100000001f, 0.0299999993f);
        break;
    }
    default:
        break;
    }
}
