/* NON_MATCHING func_L13_0030B340 -- src/overlays/l13_gemlik/vendor_002EBD00.c
 * Best so far: SIZE ours 1488 / retail 1492, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 13 moby update (classes 1263/1393): hero-tracking state machine. State 0 sets up the D_L13_001D9E80 tabl
 *   Attempts: p0 (structured) 1464 bytes vs 1492; p1 (goto ladder mirroring the asm) 1480; p2 (the $gp-free base p
 *   Unblock: a way to get the lui hi part CSE'd across blocks without a named local, or a rewrite of the L3EC cons
 */
extern char D_0013E633[] NOT_SDA;
extern float D_0015EE6C MACRO_ADDR;
extern char D_L13_001D9E80[];
extern char D_L13_00180240[];
extern char D_L13_001CAE00[];
extern char D_L13_001F2140[];
extern unsigned short D_L13_001F20E0[];
extern int D_L13_00161358;
extern float D_L13_0016128C;
extern float D_L13_00161290;
extern float D_L13_00161294;
extern char *D_L13_00161350;
extern char *D_L13_00161354;
extern int D_L13_00161288;
extern int D_L13_00161F80 SDATA(D_L13_00161F80);
extern unsigned short D_L13_00161F84 SDATA(D_L13_00161F84);
extern void func_L01_002B8C00(void *, int);
extern void func_L01_002B90A8(float);
extern float func_L00_001FF860(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L01_002B8E20(float *, int *);
extern float func_002140F8(float, float);
extern void func_L01_002B9440(void *, int, float, float, float, float);
extern void func_L13_0030B940(int);
extern float func_001FA748(float, float);
extern int func_002140B0(int);
extern void func_L00_002A5158(void *, int, int, float, float, float, float);
extern int func_L01_00276680(char *, float);
extern void func_L01_002B9198(char *, int);
extern void func_001F49B0(void *, void *);
extern void func_L13_0030B918();

/* Level 13 moby update: sets up its tables on first run, then steers its position and refreshes its list. */
void func_L13_0030B340(char *m) {
    char *p = *(char **)(D_0013E633 + 0xE1D + 0x15F0);
    char *d;
    int st;
    int n;
    int n2;
    int n3;
    int n4;
    int r;
    float f20;
    float a;
    float b;
    float k;
    float t1;
    float t2;
    float x;
    float y;
    float r1;
    float r2;
    float r3;
    float r4;
    float c;
    float v;
    char *b17;
    char *b19;
    char *a16;
    char *f2140;
    char *b22;
    char *o19;
    char *e;
    char *E;
    char *E3;
    char *E4;
    char *ent;
    int i;
    int j;
    int kk;
    int c1;
    int ia;
    int ib;
    unsigned char v5;
    unsigned char v6;
    unsigned short t;
    if (p == 0) goto L3C4;
    if (*(short *)(p + 0xA6) != 0x45) {
        d = *(char **)(m + 0x78);
        goto L3C8;
    }
    if (*(unsigned char *)(p + 0x20) == 0xFE) goto L3C4;
    if (*(unsigned char *)(p + 0x20) == 0xFD) goto L3C4;
    if (*(int *)(D_0013E633 + 0xE1D + 0x2084) == 0x32) return;
L3C4:
    d = *(char **)(m + 0x78);
L3C8:
    if (d == 0) return;
    st = *(unsigned char *)(m + 0x20);
    if (st == 0) goto L3EC;
    if (st == 1) goto L69C;
    goto L7D8;
L3EC:
    *(unsigned short *)(m + 0x34) |= 1;
    k = 0.017453292f;
    a = *(float *)(d + 0xC) * k;
    b = *(float *)(d + 0x8) * k;
    *(float *)(d + 0x8) = b;
    *(float *)(d + 0xC) = a * D_0015EE6C;
    if (*(int *)(d + 0x10) != 0) goto L68C;
    b17 = D_L13_001D9E80;
    a16 = D_L13_001CAE00;
    f2140 = D_L13_001F2140;
    func_L01_002B8C00(b17, 0x16);
    func_L01_002B90A8(1.0f);
    *(unsigned char *)(m + 0x30) = 0xFF;
    x = *(float *)(D_L13_00180240 + 0x10);
    y = *(float *)(D_L13_00180240 + 0x14);
    *(float *)a16 = 16.0f;
    *(float *)(a16 + 0xC) = -8.0f;
    *(float *)(a16 + 0x18) = 0.9f;
    *(float *)(a16 + 0x20) = 0.1f;
    *(float *)(a16 + 0x8) = -8.0f;
    *(float *)(a16 + 0x14) = 1.0f;
    *(float *)(a16 + 0x10) = 1.0f;
    *(float *)(a16 + 0x4) = 16.0f;
    f20 = func_L00_001FF860(x, y);
    t1 = func_001F9F90(f20) * 0.57735f;
    *(float *)(a16 + 0x30) = t1;
    t2 = func_001F9FA8(f20) * 0.57735f;
    *(unsigned char *)(a16 + 0x3D) = 64;
    *(float *)(a16 + 0x34) = t2;
    *(float *)(a16 + 0x38) = -0.57735f;
    *(int *)(a16 + 0x28) = 45;
    *(int *)(a16 + 0x2C) = 46;
    *(unsigned char *)(a16 + 0x3C) = 96;
    D_L13_00161358 = 22;
    D_L13_0016128C = 32768.0f;
    D_L13_00161290 = 255.0f;
    D_L13_00161294 = 48.0f;
    D_L13_00161350 = b17;
    D_L13_00161354 = f2140;
    D_L13_00161288 = 0;
    b22 = b17;
    o19 = f2140;
    kk = 0x15;
    do {
        func_L01_002B8E20((float *)b22, (int *)o19);
        o19 += 0x10;
        b22 += 0x1190;
        kk--;
        n = *(int *)(d + 0x10);
        *(unsigned short *)(b17 + n * 0x1190 + 0x1E) = D_L13_001F20E0[n];
    } while (kk >= 0);
    for (i = 0; i < 0x16; i++) {
        e = D_L13_001D9E80 + i * 0x1190;
        c1 = 1;
        do {
            r1 = func_002140F8(-6.0f, 6.0f);
            c1--;
            x = *(float *)e + r1;
            r2 = func_002140F8(-6.0f, 6.0f);
            func_L01_002B9440(D_L13_001D9E80, 0x16, x, *(float *)(e + 4) + r2, 2.0f, 0.2f);
        } while (c1 >= 0);
    }
    for (j = 0; j < 0x16; j++) {
        func_L13_0030B940(j);
    }
L68C:
    *(short *)(m + 0x32) = 0;
    *(unsigned char *)(m + 0x20) = 1;
    goto L7D4;
L69C:
    f20 = *(float *)d;
    f20 = (f20 - *(float *)(d + 4)) * 0.5f;
    c = func_001F9F90(*(float *)(d + 8));
    v = *(float *)(d + 4) + (c * f20 + f20);
    *(float *)(m + 0x18) = v;
    {
    char *g = D_0013E633 + 0xE1D;
    ia = *(int *)(g + 0x208C);
    if (ia == 0x14) goto L714;
    if (ia == 0x19) goto L714;
    ib = *(int *)(g + 0x2084);
    if (ib == 0x3D) goto L714;
    if (ib == 0x7B) goto L714;
    if (ib == 0x7C) goto L718;
    *(float *)(d + 8) = func_001FA748(*(float *)(d + 8), *(float *)(d + 0xC));
    }
L714:
L718:
    n2 = *(int *)(d + 0x10);
    {
        char *A = D_L13_001CAE00;
        v5 = *(unsigned char *)(A + 0x3C);
        v6 = *(unsigned char *)(A + 0x3D);
        E = D_L13_001D9E80 + n2 * 0x1190;
        *(unsigned char *)(E + 0x1C) = v5;
        n = *(int *)(d + 0x10);
        *(unsigned char *)(D_L13_001D9E80 + n * 0x1190 + 0x1D) = v6;
    }
    r = func_002140B0(0xC8);
    if (r != 0) goto L7D8;
    n3 = *(int *)(d + 0x10);
    E3 = D_L13_001D9E80 + n3 * 0x1190;
    x = *(float *)E3;
    r3 = func_002140F8(-4.0f, 4.0f);
    x = x + r3;
    r4 = func_002140F8(-4.0f, 4.0f);
    n4 = *(int *)(d + 0x10);
    E4 = D_L13_001D9E80 + n4 * 0x1190;
    func_L00_002A5158(E4, 1, 1, x, *(float *)(E4 + 4) + r4, 1.0f, -0.05f);
L7D4:
L7D8:
    n = *(int *)(d + 0x10);
    if (n < 0) return;
    b19 = D_L13_001D9E80;
    ent = b19 + n * 0x1190;
    *(float *)(ent + 8) = *(float *)(m + 0x18);
    r = func_L01_00276680((char *)m, 48.0f);
    f20 = 0.0f;
    if (r != -1) f20 = 1.0f;
    if (f20 == 0.0f) {
        *(unsigned short *)(b19 + *(int *)(d + 0x10) * 0x1190 + 0x1E) = 0;
    } else {
        n = *(int *)(d + 0x10);
        *(unsigned short *)(b19 + n * 0x1190 + 0x1E) = D_L13_001F20E0[n];
    }
    n = *(int *)(d + 0x10);
    if (n == 0) {
        func_L01_002B9198(b19, 0x16);
        func_001F49B0((void *)func_L13_0030B918, m);
    }
    n = *(int *)(d + 0x10);
    if (n == D_L13_00161F80) {
        t = D_L13_00161F84;
        *(unsigned short *)(b19 + n * 0x1190 + 0x1E) = t;
        D_L13_001F20E0[*(int *)(d + 0x10)] = t;
    }
}
