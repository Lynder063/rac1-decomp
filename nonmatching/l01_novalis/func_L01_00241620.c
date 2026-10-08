/* NON_MATCHING func_L01_00241620 -- src/overlays/l01_novalis/help_0023D688.c
 * Best so far: SIZE ours 2648 / retail 2700, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * Cannot land as written (#define in a candidate): rewrite that in plain C first.
 * What the last attempts found:
 *   HeroPdaGadget (level 01 hero state dispatch, 2700 bytes): a 25-way jump table on state 0x10B8 minus 8, with ab
 *   Where it differs: retail keeps the hi half of the hero address in $21 (lui once, copied to $21) and rebuilds t
 *   Would unblock: a source form that makes gcc keep `hi` in a register and fold `- 0xBB0` into an addiu (the lo p
 *   Stopped at run 8 of 16. No wall was hit; the remaining runs were not spent because each change reshuffles the 
 */
extern int func_001F9850(int);
extern int func_L00_00267BA8(int, int, int *);
extern int func_L00_00211A18(char *);
extern void func_L00_00217DE0(void);
extern int func_001FA898(float);
extern int func_L00_002104C8(void);
extern int func_L00_00217570(int, int);
extern void func_L00_0029BA20(void *);
extern int func_L00_00234718(int);
extern void func_L00_0020EB60(void);
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80(int, int, int);
extern int func_L01_0023D688(int, int);
extern int func_L00_0020DB30(int);
extern void func_001F9908(int *);
extern char D_0013E633[];
extern char D_0013A5E0[];
extern char D_0014171B[];
extern char D_0013D5DD[];
extern int D_L01_0015F754;

#define W(p, o) (*(int *)((char *)(p) + (o)))
#define H(p, o) (*(short *)((char *)(p) + (o)))
#define UB(p, o) (*(unsigned char *)((char *)(p) + (o)))
#define F(p, o) (*(float *)((char *)(p) + (o)))
#define P(p, o) (*(char **)((char *)(p) + (o)))

/* HeroPdaGadget: level 01 hero state dispatch, one block per assembly label. */
int func_L01_00241620(void) {
    char *a = D_0013E633 + 0xE1D;
    char *q = a - 0xBB0;
    char *r16 = a;
    char *r17 = a;
    char *g = D_0013A5E0 + 0x2460;
    char *s18 = 0;
    char *s20 = 0;
    int s18i = 0, i16 = 0, s19 = 0, s23 = 0;
    int sp[4];
    int r2 = 0, t = 0, t2 = 0, v = 0, rv = 0, a4 = 0, r22 = 1, m = 0, r5 = 0;
    char *p6 = 0;

    if (UB(a, 0x20AC) != 0) {
        if (W(a, 0x10B8) != 8) return 0;
        if (H(a, 0x308) != 1) return 0;
    }
    if (UB(a, 0x20A4) != 0) return 0;
    if (P(a, 0x1090) == 0) return 0;
    if (W(a, 0x10B4) != 2) return 0;
    s23 = W(a, 0x198);
    s19 = W(a, 0x10A0);
    switch ((unsigned)(W(a, 0x10B8) - 8)) {
    case 0: goto L002416E8;
    case 1: goto F40;
    case 2: goto D10;
    case 3: goto F40;
    case 4: goto F40;
    case 5: goto F40;
    case 6: goto F40;
    case 7: goto BF8;
    case 8: goto F40;
    case 9: goto D10;
    case 10: goto E84;
    case 11: goto F40;
    case 12: goto D10;
    case 13: goto F18;
    case 14: goto F40;
    case 15: goto F40;
    case 16: goto D10;
    case 17: goto D10;
    case 18: goto F40;
    case 19: goto F40;
    case 20: goto F40;
    case 21: goto F40;
    case 22: goto F40;
    case 23: goto L00241B14;
    case 24: goto L00241BA4;
    default: goto F40;
    }

L002416E8:
    r17 = q;
    t = W(r17, 0x208C);
    if ((unsigned)t < 2) {
        r2 = UB(r17, 0x12EA);
        goto L00241718;
    }
    r2 = 4;
    if (t != 4) goto L00241808;
    if (W(r17, 0x418) == 0) {
        r2 = 7;
        goto L0024180C;
    }
    r2 = UB(r17, 0x12EA);
L00241718:
    r16 = q;
    if (r2 != 0) goto F44;
    v = func_001F9850(7);
    rv = func_L00_00267BA8(s19, v, sp);
    if (rv == 0) goto F44;
    r16 = P(r17, 0x1090);
    if (r16 == 0) {
        r16 = q;
        goto F44;
    }
    rv = func_L00_00211A18(r16);
    if (rv == 0) {
        r16 = q;
        goto F44;
    }
    if (UB(r16, 0x20) != 0) {
        r16 = q;
        goto F44;
    }
    if ((W(D_0013A5E0, 0x2600) & 0xA) != 0) {
        r16 = q;
        goto L002417AC;
    }
    t = W(r17, 0x2084);
    if (t == 1 || t == 0x1E) goto L00241794;
    goto L002417F0;

L00241794:
    v = func_001F9850(0x14);
    if (!(v < W(r17, 0x198))) {
        r16 = q;
        goto L002417EC;
    }
    r16 = q;

L002417AC:
    t = W(r16, 0x2084);
    if (t != 1 && t != 0x1E) {
        a4 = 0x15;
        goto E6C;
    }
    v = func_001F9850(0x14);
    if (!(v < W(r16, 0x198))) {
        a4 = 0x15;
        goto E6C;
    }
    func_L00_00217DE0();
    r16 = q;
    r2 = W(r16, 0x198);
    goto F48;

L002417EC:
L002417F0:
    if (H(q, 0x308) != 1) {
        a4 = 0x13;
        goto E6C;
    }
    a4 = 0x70;
    goto E6C;

L00241808:
    r2 = 7;
L0024180C:
    t = W(q, 0x2084);
    if (t == 7) goto L002418D4;
    r2 = 9;
    if (t == 9) goto L002418D4;
    r2 = 8;
    if (t == 8) goto L002418D4;
    r2 = 6;
    if (t == 6) goto L002418D4;
    r2 = 0xE;
    if (t != 0xE) {
        r2 = 0xB;
        goto L0024185C;
    }
    if (32.0f < F(q, 0xAA8)) {
        a4 = 0xA;
        goto L002418D8;
    }
    r2 = 0xB;
L0024185C:
    if (t != r2) goto L002418BC;
    r2 = W(q, 0x450);
    if (r2 == 3) goto L0024189C;
    if (18.0f < F(q, 0xAA8)) {
        a4 = 0xA;
        goto L002418D8;
    }
    goto L002418BC;

L0024189C:
    if (20.0f < F(q, 0xAA8)) {
        a4 = 0xA;
        goto L002418D8;
    }

L002418BC:
    t2 = W(q, 0x2084);
    if (t2 == 0x2D) goto L002418D4;
    r2 = 0x11;
    r16 = q;
    if (t2 != 0x11) goto L002419C0;

L002418D4:
    a4 = 0xA;

L002418D8:
    v = func_001F9850(a4);
    r16 = q;
    if (!(v < W(r16, 0x198))) {
        goto L002419C0;
    }
    v = func_001F9850(0xA);
    r5 = v;
    t = W(q, 0x2084);
    r2 = 0xB;
    if (t == 0xB) goto L00241914;
    r2 = 0xE;
    if (t != 0xE) {
        a4 = s19;
        goto L00241924;
    }
L00241914:
    v = func_001F9850(0x12);
    r5 = v;
    a4 = s19;
L00241924:
    rv = func_L00_00267BA8(a4, r5, 0);
    if (rv == 0) goto F40;
    {
        float f1 = F(q, 0x2DC);
        float f0;
        if (H(q, 0x41E) != 0) {
            f0 = 0.569f;
        } else {
            f0 = 0.1f;
        }
        if (f0 < f1) {
            a4 = 0x14;
            goto E6C;
        }
        if (W(q, 0x2084) != 8) goto L002419AC;
        f1 = F(q, 0x2DC);
        f0 = 0.569f;
        if (f0 < f1) {
            a4 = 0x14;
            goto E6C;
        }
    }

L002419AC:
    if (UB(q, 0x12EA) != 0) {
        r16 = q;
        goto F44;
    }
    a4 = 0x13;
    goto E6C;

L002419C0:
    r16 = q;
    if (W(r16, 0x208C) != 6) goto F44;
    {
        int w3 = W(r16, 0xA60);
        int t5 = W(r16, 0x2084);
        r17 = (char *)(D_L01_0017C128 + w3);
        if (t5 != 0x15) goto L00241A64;
        v = func_001F9850(0x1E);
        if (!(v < W(r16, 0x198))) {
            s20 = q;
            goto L00241A68;
        }
        if (W(q, 0xA9C) != 0) {
            r16 = q;
            goto F44;
        }
        {
            float f1 = (float)W(r17, 0x10);
            float f0 = F(q, 0xAA8);
            if (!(f1 <= f0)) {
                s20 = q;
                goto L00241A68;
            }
        }
        if ((W(D_0013A5E0, 0x2600) & 0xA) == 0) {
            s20 = q;
            s18i = W(s20, 0xA9C);
            goto L00241A6C;
        }
        v = func_001F9850(0xF);
        rv = func_L00_00267BA8(s19, v, 0);
        if (rv != 0) {
            a4 = 0x15;
            goto E6C;
        }
        s20 = q;
        goto L00241A68;
    }

L00241A64:
    s20 = q;
L00241A68:
    s18i = W(s20, 0xA9C);
L00241A6C:
    if (s18i != 0) {
        r16 = q;
        goto F44;
    }
    {
        float f0 = (float)W(r17, 0x10);
        float f12 = F(s20, 0xAA8);
        if (!(f0 <= f12)) {
            r2 = W(q, 0x198);
            goto F48;
        }
        v = func_001FA898(f12);
        r22 = 1;
        {
            int w3 = W(r17, 0xC);
            i16 = (v - w3) << 1;
            r2 = (s18i < i16);
            if (r2 == 0) i16 = r22;
            v = func_001F9850(0xF);
            r2 = (v < i16);
            if (r2 != 0) {
                v = func_001F9850(0xF);
                i16 = v;
            }
            r2 = UB(s20, 0x12EA);
        }
    }
    if (r2 != 0) {
        r16 = q;
        goto F44;
    }
    rv = func_L00_00267BA8(s19, i16, 0);
    if (rv == 0) goto F40;
    if ((W(D_0013A5E0, 0x2600) & 0xA) != 0) {
        a4 = 0x15;
        goto E6C;
    }
    if (H(s20, 0x308) == 1) {
        a4 = 0x70;
        goto E6C;
    }
    a4 = 0x13;
    goto E6C;

L00241B14:
    r16 = q;
    if (UB(q, 0x20A4) != 0) {
        r2 = W(q, 0x198);
        goto F48;
    }
    if (func_L00_002104C8() == 0) {
        r2 = W(q, 0x198);
        goto F48;
    }
    v = func_001F9850(7);
    rv = func_L00_00267BA8(s19, v, 0);
    if (rv == 0) goto F40;
    if (W(D_0014171B, 0x45) != 0x1F) {
        r16 = q;
        goto F44;
    }
    if (H(P(q, 0x1090), 0xA6) != 0x1E3) {
        r16 = q;
        goto F44;
    }
    if (H(q, 0x22DE) != 0) {
        r16 = q;
        goto F44;
    }
    func_L00_00217570(0x18, 0);
    H(q, 0x22DC) = 1;
    H(q, 0x22DE) = 0x12;
    goto F40;

L00241BA4:
    t = W(q, 0x208C);
    if ((unsigned)t < 3 || t == 4 || t == 5) goto BC8;
    r16 = q;
    goto F44;

BC8:
    v = func_001F9850(8);
    rv = func_L00_00267BA8(s19, v, 0);
    if (rv == 0) {
        r16 = q;
        goto F44;
    }
    func_L00_0029BA20(0);
    r16 = q;
    goto F44;

BF8:
    r17 = q;
    t = W(q, 0x208C);
    if ((unsigned)t < 2) goto C48;
    if (t == 0xC || t == 2 || t == 4 || t == 5 || t == 0xF) goto C48;
    if (W(q, 0x2084) != 0x1E) {
        r16 = q;
        goto F44;
    }
    r16 = q;
    r17 = q;

C48:
    if (P(r17, 0x1090) == 0) goto F40;
    s18 = P(P(r17, 0x1090), 0x78);
    g = D_0013A5E0 + 0x2460;
    r16 = g;
    s20 = g;
    if ((W(g, 0x1A0) & s19) == 0) goto C84;
    v = func_001F9850(5);
    if (v < W(r17, 0x10B0)) goto C94;

C84:
    if ((W(g, 0x1A4) & s19) == 0) goto CC4;

C94:
    v = func_L00_00234718(-1);
    if (v == 0) goto CC0;
    if (UB(q, 0x20A8) != 0) {
        r16 = q;
        goto F44;
    }
    func_L00_0020EB60();
    r16 = q;
    r2 = W(r16, 0x198);
    goto F48;

CC0:
CC4:
    if ((W(g, 0x1A0) & s19) == 0) {
        r16 = q;
        goto F44;
    }
    v = func_L00_00234718(-1);
    if (v != 0) {
        r16 = q;
        goto F44;
    }
    rv = func_L00_0028EB98(P(q, 0x1090), W(s18, 0xC));
    if (rv != 0) {
        r16 = q;
        goto F44;
    }
    rv = func_0022ED80(0, 0, (int)P(q, 0x1090));
    W(s18, 0xC) = rv;
    goto F40;

D10:
    t = W(q, 0x208C);
    r2 = 1;
    if (t == 0) {
        t2 = W(q, 0x2084);
        r2 = 0x1E;
        if (t2 != 0x1E) {
            r17 = q;
            goto D9C;
        }
        r17 = q;
        r2 = 1;
    }
    if (t == r2) goto D98;
    r2 = 0xC;
    if (t == r2) goto D98;
    r2 = 5;
    if (t == r2) goto D98;
    r2 = 0xF;
    if (t == r2) goto D98;
    r2 = 4;
    if (t != r2) goto D6C_pre;
    if (H(q, 0x4AC) != 0) {
        r17 = q;
        goto D9C;
    }
    r17 = q;
    t2 = W(q, 0x2084);
    goto D6C;

D6C_pre:
    t2 = W(q, 0x2084);
D6C:
    if (t2 != 0x23) {
        r16 = q;
        goto F44;
    }
    if (!(25.0f < F(q, 0xAA8))) {
        r16 = q;
        r2 = W(r16, 0x198);
        goto F48;
    }
D98:
    r17 = q;
D9C:
    if (UB(r17, 0x20A8) != 0) {
        r16 = q;
        goto F44;
    }
    v = func_001F9850(7);
    i16 = W(r17, 0x10B0);
    m = (i16 < v) ? i16 : v;
    rv = func_L00_00267BA8(s19, m, sp + 1);
    if (rv == 0) {
        if ((W(D_0013A5E0, 0x2600) & 0x20) == 0) {
            r16 = q;
            goto F44;
        }
        v = func_001F9850(8);
        if (!(v < i16)) {
            r16 = q;
            goto F44;
        }
        v = func_001F9850(0x11);
        if (!(i16 < v)) {
            r16 = q;
            goto F44;
        }
    }
    v = func_L00_00234718(-1);
    if (v == 0) goto E7C;
    r2 = 0xC;
    t = W(r17, 0x208C);
    if (t == 0xC) {
        a4 = 0x23;
        goto E6C;
    }
    if (t == 0) goto E68;
    r2 = 3;
    t2 = W(r17, 0x2084);
    if (t2 == 3) goto E68;
    r2 = 1;
    if (t != 1) goto CB0;
    if (!(F(r17, 0x229C) < 0.7f)) goto CB0;

E68:
    a4 = 0x23;

E6C:
    func_L01_0023D688(a4, 1);
    r16 = q;
    goto F44;

CB0:
    func_L00_0020EB60();
    r16 = q;
    r2 = W(r16, 0x198);
    goto F48;

E7C:
    p6 = P(r17, 0x1090);
    goto F00;

E84:
    r16 = q;
    t = W(q, 0x208C);
    if ((unsigned)t < 2) {
        t2 = W(q, 0x2084);
        goto EB4;
    }
    if (t != 4) {
        r2 = W(q, 0x198);
        goto F48;
    }
    if (W(q, 0x418) == 0) {
        r2 = W(q, 0x198);
        goto F48;
    }
    t2 = W(q, 0x2084);

EB4:
    if (t2 == 1) {
        r16 = q;
        goto F44;
    }
    v = func_001F9850(0xA);
    {
        int w5 = W(q, 0x10B0);
        m = (w5 < v) ? w5 : v;
    }
    rv = func_L00_00267BA8(s19, m, sp + 2);
    if (rv == 0) {
        r16 = q;
        goto F44;
    }
    if (P(q, 0x1090) == 0) goto F40;
    func_L01_0023D688(0x20, 1);
    p6 = P(q, 0x1090);
    goto F00;

F00:
    if (p6 == 0) goto F40;
    func_0022ED80(0, 0, (int)p6);
    r16 = q;
    goto F44;

F18:
    if (P(q, 0x1090) == 0) goto F40;
    if ((W(D_0013A5E0, 0x2604) & s19) == 0) {
        r16 = q;
        goto F44;
    }
    func_L00_0020EB60();

F40:
    r16 = a;

F44:
    r2 = W(r16, 0x198);

F48:
    if (r2 != s23) goto L00242078;
    r2 = func_L00_0020DB30(3);
    if (r2 != 3) goto L0024204C;
    if (W(r16, 0x2084) == 0x81) goto L0024204C;
    if (H(r16, 0x308) == 0) goto F8C;
    if (UB(D_0013D5DD, 7) != 0) goto L0024204C;

F8C:
    if (H(r16, 0x22D8) != 0) goto L0024204C;
    func_001F9908(&D_L01_0015F754);
    if (D_L01_0015F754 == 0) goto L0024201C;
    t = W(r16, 0x208C);
    if ((unsigned)t < 2) goto FEC;
    if (t == 0xC) goto FEC;
    if (t == 2) goto FDC;
    if (t != 4) goto L0024201C;

FDC:
    if (W(r16, 0x300) == 0) goto L00242018;

FEC:
    if ((W(g, 0x1A0) & 8) != 0 && (W(g, 0x1A4) & 8) != 0) {
        func_L01_0023D688(0x81, 1);
    }

L00242018:

L0024201C:
    if ((W(g, 0x1A4) & 8) == 0) goto L00242074;
    if (W(a, 0x2084) == 0x81) goto L00242078;
    v = func_001F9850(0x1E);
    D_L01_0015F754 = v;

L00242074:

L00242078:
    return (W(a, 0x198) < s23);

L0024204C:
    t = W(a, 0x2084);
    if (t == 0x13) goto L00242074;
    if (t == 0x81) goto L00242074;
    if (t == 0x15) goto L00242074;
    if (t != 0x16) UB(a, 0x22CA) = 0;
    goto L00242074;
}
