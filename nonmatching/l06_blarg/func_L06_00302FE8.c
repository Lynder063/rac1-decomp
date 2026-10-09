/* NON_MATCHING func_L06_00302FE8 -- src/overlays/l06_blarg/vendor_002FE5D0.c
 * Best so far: SIZE ours 1600 / retail 1604, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   s07 (hq8): level 06 moby update, six-state switch (spawn, track, retire) with vector work through FF860/F9D48/
 *   Remaining: register/scheduling in case 4-5 (retail keeps the camera base and the moby pointer in saved registe
 */
extern void func_0020D678(void *);
extern void func_L06_002F5A20(int);
extern void func_L06_002FAD78(int);
extern int func_L01_0026EFB8(int, int);
extern void func_L06_00305BF8(char *);
extern int func_L06_00305C38(char *);
extern void func_L06_00303858(char *, int);
extern void func_L00_002664B0(int, int);
extern int func_00216960(void);
extern void func_L06_00301068(int);
extern void func_L06_002EB260(int);
extern void func_L06_002F59D0(int);
extern void func_L06_002FADE0(int);
extern void func_L06_002FDA60(unsigned char *);
extern void func_001F9BC0(void *);
extern float func_L00_001FF860(float, float);
extern float func_001F9D48(void *, void *);
extern int func_001F9850(int);
extern void func_L00_002EBF50(void *, void *, int, int, int);
extern void func_L02_002F9ED8(float, float, float, float, float, float);
extern void func_L00_002EBE88(void *);
extern void func_L00_002EBEE0(void *);
extern void func_L00_00217718(void *, void *, int, int);
extern float func_001F9878(float);
extern int func_001FA898(float);
extern void func_L00_002EC0C8(int);
extern void func_L06_00235E08(int, int);
extern void func_L06_0030A680(int);
extern int func_001F9908(void *);
extern int func_0022EEB8(int, int, int);
extern float func_002140F8(float, float);
extern void func_001F49B0(void (*)(void), void *);
extern void func_L06_00303630(void);
extern void func_L06_003054C8(char *);
extern void func_L00_00211908(void);
extern float func_00214D28(float *, float, float);
extern char D_0014171B[];
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern char *D_L06_00160058 MACRO_ADDR;
extern short D_0015182A NOT_SDA;
extern int *D_L06_001B0FB0[];
extern char *D_L06_0016016C MACRO_ADDR;
extern char D_L06_00167500[];
extern int D_L06_0015F6A8 MACRO_ADDR;
extern char D_0013E633[];
extern float D_0015EE6C MACRO_ADDR;
extern short D_L06_00162128;
extern short D_L06_0016212C;
extern short D_L06_00162130;
extern short D_L06_00162134;
extern short D_L06_00162138;
extern short D_L06_00162140;
extern short D_L06_00162154;
extern short D_L06_0015F504;
extern float D_L06_0015F500 SDATA(D_L06_0015F500);

// Update function for moby class 1108 on level 06: six-state machine that spawns, animates and retires the moby.
void func_L06_00302FE8(unsigned char *m) {
    char *d = *(char **)(m + 0x78);

    switch (m[0x20]) {
    case 0:
        if (*(unsigned char *)(D_0014171B + 0xAA35 + m[0xB0] + (D_0015EE84_m << 4)) != 0) {
            func_0020D678(m);
            return;
        }
        func_L06_002F5A20(*(int *)(d + 0x0));
        func_L06_002FAD78(*(int *)(d + 0x4));
        func_L06_002FAD78(*(int *)(d + 0x8));
        m[0x30] = 0xFF;
        m[0x20] = 1;
        return;
    case 1:
        if (func_L01_0026EFB8(*(int *)(d + 0x1C), -1) != 0) return;
        func_L06_00305BF8(D_L06_00160058 + (*(int *)(d + 0x2C) << 8));
        if (func_L06_00305C38(D_L06_00160058 + (*(int *)(d + 0x2C) << 8)) != 1) return;
        m[0x20] = 2;
        func_L06_00303858((char *)m, 0);
        return;
    case 2:
        if (func_L06_00305C38(D_L06_00160058 + (*(int *)(d + 0x2C) << 8)) != 2) return;
        m[0x20] = 3;
        *(int *)(d + 0xB0) = 1;
        func_L00_002664B0(6, 9);
        if (D_0015182A == 3) func_00216960();
        func_L06_00301068(*(int *)(d + 0x10));
        func_L06_002EB260(*(int *)(d + 0x14));
        func_L06_002EB260(*(int *)(d + 0x18));
        func_L06_002F59D0(*(int *)(d + 0x0));
        func_L06_002FADE0(*(int *)(d + 0x4));
        func_L06_002FADE0(*(int *)(d + 0x8));
        func_L06_002FDA60(D_L06_00160058 + (*(int *)(d + 0x20) << 8));
        *(float *)(D_L06_0016016C + (*(int *)(d + 0xC) << 7) + 0x38) = *(float *)(D_L06_0016016C + (*(int *)(d + 0xC) << 7) + 0x38) + 10.0f;
        {
            int *p = (int *)D_L06_001B0FB0[*(int *)(d + 0x24)];
            float va[4];
            float vb[4];
            float vc[4];
            float r2;
            qcopy(va, (char *)p + 0x20);
            qcopy(vb, (char *)p + 0x10);
            func_001F9BC0(vc);
            vc[2] = func_L00_001FF860(vb[0] - va[0], vb[1] - va[1]);
            r2 = func_001F9D48(va, vb);
            vc[1] = -func_L00_001FF860(r2, vb[2] - va[2]);
            func_L00_002EBF50(va, vc, 2, func_001F9850(0x12C), 0);
            func_L02_002F9ED8(*(float *)&D_L06_00162128, *(float *)&D_L06_0016212C,
                              *(float *)&D_L06_00162130, *(float *)&D_L06_00162134,
                              *(float *)&D_L06_00162138, *(float *)&D_L06_00162140);
            func_L00_002EBE88(va);
            func_L00_002EBEE0(m);
            {
                char *q = D_L06_0016016C + (*(int *)(d + 0x28) << 7);
                func_L00_00217718(q + 0x30, q + 0x70, 0x72, 0);
            }
        }
        return;
    case 3: {
        int *P;
        int b0;
        int nb;
        int x;
        float va[4];
        float vb[4];
        float vc[4];
        float r;
        P = (int *)D_L06_001B0FB0[*(int *)(d + 0x24)];
        b0 = *(int *)(d + 0xB0);
        qcopy(vb, (char *)P + 0x10 + (b0 << 4));
        nb = b0 + 1;
        *(int *)(d + 0xB0) = nb;
        if (nb == P[0] - 1) {
            m[0x20] = 4;
            func_L06_00303858((char *)m, 1);
            *(int *)(d + 0xB4) = func_001FA898(func_001F9878(*(float *)&D_L06_00162154));
            func_L00_002EC0C8(2);
            func_L06_00235E08(0, 1);
            *(int *)&D_L06_0015F504 = 0;
            return;
        }
        func_L06_0030A680(*(int *)(d + 0x34));
        x = nb - 30;
        if (x < 0) x = 0;
        P = (int *)D_L06_001B0FB0[*(int *)(d + 0x24)];
        qcopy(va, (char *)P + 0x10 + (x << 4));
        func_001F9BC0(vc);
        vc[2] = func_L00_001FF860(va[0] - vb[0], va[1] - vb[1]);
        r = func_001F9D48(vb, va);
        vc[1] = -func_L00_001FF860(r, va[2] - vb[2]);
        func_L00_002EBE88(vb);
        func_L00_002EBEE0(vc);
        return;
    }
    case 4: {
        int v = func_001F9850(0x708);
        char *x = D_0013E633 + 0xE1D;
        if (*(int *)(d + 0xB4) == v) {
            if (D_0015182A == 3) func_00216960();
        } else {
            v = func_001F9850(0x384);
            if (*(int *)(d + 0xB4) == v) {
                func_L06_00303858((char *)m, 2);
            } else {
                v = func_001F9850(0x12C);
                if (*(int *)(d + 0xB4) == v && D_0015182A == 3) func_00216960();
            }
        }
        if (func_001F9908(d + 0xC0) != 0) {
            func_0022EEB8(0, 0, *(int *)(x + 0x2080));
            *(int *)(d + 0xC0) = func_001FA898(func_001F9878(func_002140F8(480.0f, 600.0f)));
            *(float *)(D_L06_00167500 + 0x160) = 0.4f;
            *(int *)(D_L06_00167500 + 0x168) = func_001F9850(0x3C);
        }
        if (D_L06_0015F6A8 == 0) func_001F49B0(func_L06_00303630, m);
        if (*(int *)(x + 0x2084) == 0x72) {
            m[0x20] = 6;
            return;
        }
        if (*(int *)(x + 0x2084) != 0) return;
        if (func_001F9908(d + 0xB4) == 0) return;
        m[0x20] = 5;
        {
            int r15 = func_001F9850(0xF);
            *(int *)(d + 0xB8) = 0;
            *(int *)(d + 0xBC) = r15;
        }
        func_L06_003054C8(D_L06_00160058 + (*(int *)(d + 0x30) << 8));
        func_0022EEB8(1, 0, *(int *)(x + 0x2080));
        return;
    }
    case 5:
        if (*(float *)(d + 0xB8) == 1.0f) {
            func_L00_00211908();
            *(int *)&D_L06_0015F504 = 0;
            return;
        }
        if (func_001F9908(d + 0xBC) == 0) return;
        func_00214D28((float *)(d + 0xB8), 1.0f, D_0015EE6C * 6.0f);
        D_L06_0015F500 = *(float *)(d + 0xB8);
        return;
    default:
        return;
    }
}
