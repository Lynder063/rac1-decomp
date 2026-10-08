/* NON_MATCHING func_L00_002B9AD8 -- src/overlays/shared/vendor_002B33E8.c
 * Best so far: SIZE ours 2808 / retail 2860, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Tesla claw update (moby class 177): reads the claw state at m+0x78, runs a per-frame state machine (state byte
 *   Best so far p6.c (size 2808 vs 2860, 52 bytes short; p4.c 2788; p2.c 2792). Not EXACT, not byte-compared. Rema
 *   Would unblock: a way to keep retail's per-use recompute of the global bases without CSE, and the case-1 A2A0/A
 */
extern int func_L00_00234718(int);
extern int func_L00_0023EF78(float *pos, float radius, float intensity, int color);
extern void func_L00_0020EB60(void);
extern void func_L00_0020ED30(void);
extern void func_L00_002BA608(void *);
extern void func_L00_002BA7C8(void *);
extern void func_L00_002BBC78_b(void) __asm__("func_L00_002BBC78");
extern float D_L00_0017AFBC;
extern short D_L00_00161660;
extern char D_L00_001670D0[];
extern unsigned char D_L00_001803C0[];

/* Tesla claw update: runs the claw's state machine and steers its three child slots each frame. */
void func_L00_002B9AD8(char *m) {
    char *s = *(char **)(m + 0x78);
    char *a = D_0013E633 + 0xE1D;
    char *F;
    int f22 = 0;
    int f30 = (*(int *)(a + 0x10B4) == 3);
    int r16;
    int v;
    float k;
    V4 t;

    if ((*(int *)(D_0013A5E0 + 0x2460 + 0x1A4) & *(int *)(a + 0x10A0)) != 0 && *(unsigned char *)(a + 0x20AC) == 0) {
        *(float *)(s + 0x24) = 0.8f;
    }
    D_L00_0017AFBC = 0.9f;
    f22 = 0;
    r16 = func_L00_00234718(-1);

    if (*(unsigned short *)(D_0014171B + 0x755) == 0 && *(unsigned short *)(D_0014171B + 0x2FD) == 0
        && *(unsigned char *)(a + 0x20B5) >= 3) {
        v = *(int *)(a + 0x208C);
        if ((unsigned int)v < 2 || v == 9) func_L00_00203F20(0x4E30, 0x81);
    }

    if ((*(int *)(D_0013A5E0 + 0x2460 + 0x1A0) & *(int *)(a + 0x10A0)) == 0) goto A098;
    if (*(unsigned char *)(m + 0x20) == 4) { *(int *)(s + 0x20) = 0; goto A09C_b; }
    if (*(unsigned char *)(m + 0x20) == 0) { *(int *)(s + 0x20) = 0; goto A09C_b; }
    if (*(unsigned char *)(a + 0x20AC) != 0) { *(int *)(s + 0x20) = 0; goto A09C_b; }
    if (*(int *)(a + 0x2084) == 0x72) { *(int *)(s + 0x20) = 0; goto A09C_b; }
    if (*(int *)(s + 0x2C) != 0) goto A0A8;
    if (r16 <= 0) { *(int *)(s + 0x20) = 0; goto A080; }
    {
        if (func_001F9938(s + 0x3C) != 0) {
            func_001F9938(s + 0x44);
            func_001F9938(s + 0x46);
            func_L00_00234638(-1, 1);
            *(short *)(s + 0x3C) = func_001F9850(10);
        }
        if (*(int *)(s + 0x30) == -1) {
            *(int *)(s + 0x30) = func_L00_0023EF78((float *)(m + 0x10), 7.5f, 0.0f, 0);
        } else {
            v = func_001F9850(10);
            if (*(int *)(s + 0x34) < v) *(int *)(s + 0x34) = *(int *)(s + 0x34) + 1;
        }

        f22 = 1;
        if (*(char **)(s + 0x20) != 0) {
            char *p = *(char **)(s + 0x20);
            float d = func_L00_001FF860(*(float *)(p + 0x10) - *(float *)(a + 0x80),
                                        *(float *)(p + 0x14) - *(float *)(a + 0x84));
            float t1 = func_001FA850(*(float *)(a + 0x98), d);
            if (2.0943f < t1) {
                *(int *)(s + 0x20) = 0;
                *(short *)(s + 0x40) = 0;
            } else if (*(unsigned char *)(p + 0x31) == 0) {
                *(int *)(s + 0x20) = 0;
                *(short *)(s + 0x40) = 0;
            } else if (20.0f < func_001F9D10(p + 0x10, a + 0x80)) {
                *(int *)(s + 0x20) = 0;
                *(short *)(s + 0x40) = 0;
            }
        }
        if (*(char **)(s + 0x38) != 0) {
            char *q = *(char **)(s + 0x38);
            float d = func_L00_001FF860(*(float *)(q + 0x10) - *(float *)(a + 0x80),
                                        *(float *)(q + 0x14) - *(float *)(a + 0x84));
            float t2 = func_001FA850(*(float *)(a + 0x98), d);
            if (2.0943f < t2) {
                *(int *)(s + 0x38) = 0;
                *(short *)(s + 0x42) = 0;
            } else if (*(unsigned char *)(q + 0x31) == 0) {
                *(int *)(s + 0x38) = 0;
                *(short *)(s + 0x42) = 0;
            } else if (20.0f < func_001F9D10(q + 0x10, a + 0x80)) {
                *(int *)(s + 0x38) = 0;
                *(short *)(s + 0x42) = 0;
            }
        }

        qcopy(s, (m + 0x10));
        *(float *)(s + 0x8) = *(float *)(s + 0x8) + 0.7f;
        qcopy(s + 0x10, s);

        if (*(char **)(s + 0x20) != 0 && *(short *)(s + 0x40) != 0) {
            unsigned char *q;
            int lim = 50;
            short x;
            int y;
            *(unsigned short *)(s + 0x28) = *(unsigned short *)(s + 0x28) + 1;
            q = func_L00_0025D390(*(char **)(s + 0x20));
            if (q != 0 && *(short *)(q + 4) == 1) lim = 5;
            x = *(short *)(s + 0x28);
            y = func_001F9850(lim);
            if (!(x < y)) {
                *(int *)(s + 0x20) = 0;
                *(short *)(s + 0x40) = 0;
            }
        } else {
            *(short *)(s + 0x28) = 0;
        }

        if (*(char **)(s + 0x38) == 0 || *(short *)(s + 0x42) == 0) {
            *(short *)(s + 0x2A) = 0;
        } else {
            unsigned char *w;
            int lim2 = 50;
            short x2;
            int y2;
            *(unsigned short *)(s + 0x2A) = *(unsigned short *)(s + 0x2A) + 1;
            w = func_L00_0025D390(*(char **)(s + 0x38));
            if (w != 0 && *(short *)(w + 4) == 1) lim2 = 5;
            x2 = *(short *)(s + 0x2A);
            y2 = func_001F9850(lim2);
            if (!(x2 < y2)) {
                *(int *)(s + 0x38) = 0;
                *(short *)(s + 0x42) = 0;
            }
        }

        k = func_001FA888(*(unsigned char *)D_0013E633);
        {
            float v24 = *(float *)(s + 0x24);
            *(float *)(s + 0x24) = v24 + ((k * 6.0f + 12.0f) - v24) * (D_0015EE60 * 0.07f);
        }

        if (*(int *)(a + 0x2084) == 1) {
            t.f[0] = 1.2f;
            t.f[1] = 0.0f;
            t.f[2] = 0.0f;
            func_001F9EC0(&t, &t, (V4 *)D_L00_001670D0);
            *(float *)(s + 0x8) = t.f[2] + *(float *)(m + 0x18);
            *(float *)(s + 0x0) = t.f[0] + *(float *)(a + 0x80);
            *(float *)(s + 0x4) = t.f[1] + *(float *)(a + 0x84);
            t.f[0] = *(float *)(s + 0x24);
            t.f[1] = 0.0f;
            t.f[2] = 0.0f;
            func_001F9EC0(&t, &t, (V4 *)D_L00_001670D0);
            func_001F9BD8(s + 0x10, s, &t);
        } else {
            func_L00_00250800(m, 0, s);
            if (*(short *)(a + 0x22C8) == 1) {
                t.f[0] = 0.0f;
                t.f[2] = 0.0f;
                t.f[1] = -*(float *)(s + 0x24);
                func_001F9EC0(&t, &t, (V4 *)(m + 0xC0));
                func_001F9BD8(s + 0x10, s, &t);
            } else {
                func_L00_001FF4B0(s + 0x10, a + 0x640, *(float *)(s + 0x24));
                func_001F9BD8(s + 0x10, s, s + 0x10);
            }
        }
        func_L00_002BA608(m);
        func_L00_002BA7C8(m);
        func_001F49B0(func_L00_002BBC78_b, m);
    }

    goto A0A8;
A098:
    *(int *)(s + 0x20) = 0;
A09C_b:
    *(int *)(s + 0x38) = 0;
    *(short *)(s + 0x40) = 0;
    *(short *)(s + 0x42) = 0;
    goto A0A8;
A080:
    *(int *)(s + 0x38) = 0;
    *(short *)(s + 0x40) = 0;
    *(short *)(s + 0x42) = 0;
    *(short *)(s + 0x44) = 0;
    *(short *)(s + 0x46) = 0;
A0A8:
    if (f22 == 0) {
        *(int *)&D_L00_00161660 = 1;
        if (*(int *)(s + 0x34) > 0) *(int *)(s + 0x34) = *(int *)(s + 0x34) - 1;
        {
            int idx = *(int *)(s + 0x48);
            if (idx != -1) {
                unsigned char *rec = (unsigned char *)D_0013E633 + 0x1D + idx * 0x70;
                if (*(char **)(rec + 0x88) == m && rec[0x74] != 0) func_L00_0028EBF0(idx);
            }
            *(int *)(s + 0x48) = -1;
        }
    } else {
        if (func_L00_0028EB98((Moby *)m, *(int *)(s + 0x48)) == 0) {
            *(int *)(s + 0x48) = func_0022ED80(4, 4, (int)m);
        }
    }

    {
        char *p = *(char **)(s + 0x20);
        if (p == 0 || *(unsigned char *)(p + 0x20) == 0xFE) *(short *)(s + 0x40) = 1;
        else if (*(unsigned char *)(p + 0x20) == 0xFD) *(short *)(s + 0x40) = 0xFD;
        else if ((*(unsigned short *)(p + 0x34) & 0x1000) == 0) *(short *)(s + 0x40) = 1;
    }
    {
        char *q = *(char **)(s + 0x38);
        if (q == 0 || *(unsigned char *)(q + 0x20) == 0xFE) *(short *)(s + 0x42) = 1;
        else if (*(unsigned char *)(q + 0x20) == 0xFD) *(short *)(s + 0x42) = 0xFD;
        else if ((*(unsigned short *)(q + 0x34) & 0x1000) == 0) *(short *)(s + 0x42) = 1;
    }

    switch (*(unsigned char *)(m + 0x20)) {
    case 0:
        *(int *)(s + 0x2C) = func_001F9850(0x10);
        *(int *)(s + 0x30) = func_L00_0023EF78((float *)s, 0.0f, 0.0f, 0);
        *(int *)&D_L00_00161660 = 1;
        *(unsigned char *)(m + 0x20) = 1;
        *(short *)(s + 0x3E) = 0x14;
        *(int *)(s + 0x48) = -1;
        *(int *)(s + 0x38) = 0;
        *(int *)(s + 0x20) = 0;
        *(short *)(s + 0x40) = 0;
        *(short *)(s + 0x42) = 0;
        *(short *)(s + 0x46) = 0;
        *(short *)(s + 0x44) = 0;
        break;
    case 1:
        func_001F9908((int *)(s + 0x2C));
        if (f22 != 0) {
            func_L00_0020EB60();
            *(unsigned char *)(m + 0x20) = 3;
        }
        if ((*(int *)((D_0013A5E0 - 0x1160) + 0x1A4) & *(int *)((D_0013E633 + 0x26D) + 0x10A0)) == 0 || *(unsigned char *)((D_0013E633 + 0x26D) + 0x20AC) != 0) break;
        if (f22 != 0) {
        F = D_0014171B + 0x65;
        {
            unsigned short h = *(unsigned short *)(F + 0x98);
            if (!(0xFFFE < h)) *(unsigned short *)(F + 0x98) = h + 1;
        }
        v = func_001F9850(D_0015EFA4) / 600;
        if ((int)*(unsigned short *)(F + 0x9A) < v) {
            *(unsigned short *)(F + 0x9A) = func_001F9850(D_0015EFA4) / 600;
        }
        *(unsigned int *)(F + 0x9C) = *(unsigned int *)(F + 0x9C) | (1 << D_0015EE84) | 0x80000000;
        func_L00_0020EB60();
        *(unsigned char *)(m + 0x20) = 3;
        } else {
            *(int *)(s + 0x20) = 0;
            *(int *)(s + 0x38) = 0;
            *(short *)(s + 0x40) = 0;
            *(short *)(s + 0x42) = 0;
            *(unsigned char *)(m + 0x20) = 1;
            func_0022ED80(0, 0, (int)m);
            func_L00_0020ED30();
        }
        break;
    case 3:
        if ((*(int *)((D_0013A5E0 - 0x1160) + 0x1A8) & *(int *)((D_0013E633 + 0x26D) + 0x10A0)) == 0 && f22 != 0 && *(unsigned char *)((D_0013E633 + 0x26D) + 0x20AC) == 0) break;
        F = D_0014171B + 0x22D;
        v = func_001F9850(70);
        if (v < *(int *)((D_0013E633 + 0x26D) + 0x1BC)) {
            unsigned short h = *(unsigned short *)(F + 0xD0);
            if (!(0xFFFE < h)) *(unsigned short *)(F + 0xD0) = h + 1;
        }
        v = func_001F9850(D_0015EFA4) / 600;
        if ((int)*(unsigned short *)(F + 0xD2) < v) {
            *(unsigned short *)(F + 0xD2) = func_001F9850(D_0015EFA4) / 600;
        }
        *(unsigned int *)(F + 0xD4) = *(unsigned int *)(F + 0xD4) | (1 << D_0015EE84) | 0x80000000;
        v = func_001F9850(30);
        if (*(int *)((D_0013E633 + 0x26D) + 0x1BC) < v) *(unsigned char *)((D_0013E633 + 0x26D) + 0x20B5) = *(unsigned char *)((D_0013E633 + 0x26D) + 0x20B5) + 1;
        else *(unsigned char *)((D_0013E633 + 0x26D) + 0x20B5) = 0;
        *(int *)(s + 0x20) = 0;
        *(int *)(s + 0x38) = 0;
        *(short *)(s + 0x40) = 0;
        *(short *)(s + 0x42) = 0;
        *(int *)(s + 0x24) = 0;
        func_L00_0020ED30();
        *(unsigned char *)(m + 0x20) = 1;
        break;
    case 2:
    case 4:
    case 5:
    default:
        break;
    }

    if (*(int *)(s + 0x30) != -1) {
        qzero(&t);
        t.f[2] = 2.0f;
        t.f[0] = 2.0f;
        func_001F9EC0(&t, &t, (V4 *)(D_0013E633 + 0x145D));
        *(float *)(D_L00_001803C0 + (*(int *)(s + 0x30) << 5) + 0x10) = *(float *)(a + 0x80) + t.f[0];
        *(float *)(D_L00_001803C0 + (*(int *)(s + 0x30) << 5) + 0x14) = *(float *)(a + 0x84) + t.f[1];
        *(float *)(D_L00_001803C0 + (*(int *)(s + 0x30) << 5) + 0x18) = *(float *)(a + 0x88) + t.f[2];
        *(float *)(D_L00_001803C0 + (*(int *)(s + 0x30) << 5) + 0x1C) = 7.5f;
        k = func_001FA888(*(int *)(s + 0x34));
        v = func_001F9850(10);
        k = k / (float)v;
        *(float *)(D_L00_001803C0 + (*(int *)(s + 0x30) << 5) + 0x08) = k;
        k = k * 0.7f;
        *(float *)(D_L00_001803C0 + (*(int *)(s + 0x30) << 5) + 0x04) = k;
        *(float *)(D_L00_001803C0 + (*(int *)(s + 0x30) << 5)) =
            *(float *)(D_L00_001803C0 + (*(int *)(s + 0x30) << 5) + 0x04);
        if (f30) {
            if (*(int *)(s + 0x30) != -1) {
                func_L00_0023F1D0(*(int *)(s + 0x30));
                *(int *)(s + 0x30) = -1;
            }
        }
    }
    if (f30 && *(int *)(s + 0x30) == -1) *(unsigned char *)(m + 0x20) = 4;
}
