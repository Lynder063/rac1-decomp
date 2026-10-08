/* NON_MATCHING func_L11_00316DD8 -- src/overlays/l11_pokitaru/vendor_00312BD8.c
 * Best so far: SIZE ours 1524 / retail 1520, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Per-frame moby update (L11 0x316DD8): scales pos/velocity by D_L11 floats, runs a target search (B478/B4D0), t
 *   Run 1 (p0): size 1536 vs 1520. Prologue saves five s-regs; p and table base took $20/$21.
 *   Run 2 (p1): size 1524. Block-local temporaries for the two case tails; cls unsigned (sltiu). Still saves $20.
 *   Run 3 (p2): size 1524. Dropped the d+0x110 variable; the compiler still keeps d+0x110 in $16 across E4B0 (reta
 *   Run 4 (p3): size 1524. Separate ir for the B4D0 result and w = d+0x1D0 local. Remaining size gap is one `move 
 *   Differing: prologue scheduling (retail loads D_L11_0016235C into $f3 before the saves), f-register assignment 
 *   Wall: D_0013E633 + 0xE1D is used as a symbol plus offset; declared as char array and offset in C. Not a wall b
 *   Left: size off by one instruction (move after B4D0) and allocator ties on $f3/$4/$2; a rewording of the ia/ir 
 */
extern void func_L00_00260460(void *, void *, int, float, float);
extern void func_0020D678(void *);
extern int func_L11_0030BC00(unsigned char *arg);
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern float func_L00_001FF860(float, float);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern void func_L00_0025D5B0(void *, void *, float, int, int, int);
extern void func_L00_002584A8(void *, int, int);
extern void func_L00_0025E4B0(void *m, short *p);
extern void func_L00_0025E590(void *, void *);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern void func_001F9908(int *arg0);
extern int func_L00_00260FB0(void *, void *, float, int, int, void *, int);
extern float func_001F9D48(float *, float *);
extern float D_0015EE6C MACRO_ADDR;
extern int D_L11_00160058_m __asm__("D_L11_00160058") MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern char D_L11_001B11B0[];
extern short D_L11_0016235C;
extern short D_L11_0016236C;
extern short D_L11_00162360;
extern short D_L11_00162364;
extern short D_L11_00162368;
extern short D_L11_00162370;
extern short D_L11_0016238C;
extern char D_0013E633[];

typedef int u128 __attribute__((mode(TI)));

/* Per-frame update of a level moby: scales its position, runs its target search and steps its state switch. */
void func_L11_00316DD8(char *moby) {
    char v[16];
    int ia;
    float fa;
    float g0;
    float g1;
    char *d;
    char *q;
    char *m;
    char *tb;
    char *tmp;
    unsigned int st;
    int a4;
    unsigned int cls;
    int r;
    int ir;
    int h;
    char *w;
    float f0;
    float fr;
    float a1;
    float a2;
    float a3;

    *(float *)(moby + 0x2C) = *(float *)(*(char **)(moby + 0x24) + 0x24) * *(float *)&D_L11_0016235C;
    d = *(char **)(moby + 0x78);
    *(float *)(d + 0x1A4) = *(float *)&D_L11_0016238C * D_0015EE6C;
    a4 = *(int *)(d + 0x254);
    if (a4 == -1) goto L_EB8;
    cls = *(unsigned char *)(moby + 0x20);
    if (cls == 0xB) goto L_EBC;
    if (cls == 9) goto L_EBC;
    if (cls == 0x12) goto L_EBC;
    if (cls == 0x11) goto L_EC0;
    if (cls == 0) goto L_EC0;
    if (cls == 0xC) goto L_ECC;
    if (cls == 0xD) goto L_EB8;
    m = (char *)((a4 << 8) + D_L11_00160058_m);
    if (*(float *)(moby + 0x18) < *(float *)(m + 0x18) + 0.5f) {
        func_L00_00260460(moby, moby + 0x10, -1, 0.5f, 10.0f);
        func_0020D678(moby);
    }
L_EB8:
    cls = *(unsigned char *)(moby + 0x20);
L_EBC:
L_EC0:
    if (cls != 0xC) goto L_F44;
    a4 = *(int *)(d + 0x254);
L_ECC:
    if (a4 == -1) goto L_F44;
    r = func_L11_0030BC00((unsigned char *)((a4 << 8) + D_L11_00160058_m));
    if (r == 0) goto L_F08;
    if (*(unsigned char *)(moby + 0x31) != 0) goto L_F08;
    func_0020D678(moby);
    goto L_3AC;
L_F08:
    a4 = *(int *)(d + 0x254);
    m = (char *)((a4 << 8) + D_L11_00160058_m);
    if (*(unsigned char *)(m + 0x20) < 2) goto L_F44;
    *(unsigned char *)(moby + 0x31) = 1;
    h = *(unsigned short *)(moby + 0x34);
    *(unsigned short *)(moby + 0x34) = h & 0xFFFE;
    *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);
L_F44:
    fa = 0.0f;
    q = func_L00_0025B478(moby, 0x330000, 0);
    ir = func_L00_0025B4D0(moby, q, d + 0x20, 0, &ia, &fa, 0, 4);
    w = d + 0x1D0;
    if (ia == 1) goto L_1F8;
    st = 3;
    if (*(unsigned char *)(moby + 0x20) == 0xB) goto L_1F8;
    *(float *)(d + 0x20) = *(float *)(d + 0x20) - fa;
    if (*(short *)(*(char **)(q + 0x20) + 0xA6) != 0x47) st = ir;
    if (*(float *)(d + 0x20) <= 0.0f) st = 1;
    *(int *)(d + 0x140) = func_001FA898_r(512.0f);
    *(float *)(d + 0x148) = 0.2f;
    *(float *)(d + 0x134) = 0.0f;
    *(float *)(d + 0x130) = *(float *)&D_L11_00162360 * D_0015EE70;
    *(int *)(d + 0x144) = 9;
    *(unsigned char *)(d + 0x15D) = 0;
    if (st > 11) goto L_E4;
    switch (st) {
    case 0: goto L_E4;
    case 1: goto L_100;
    case 2: goto L_100;
    case 3: goto L_048;
    case 4: goto L_048;
    case 5: goto L_048;
    case 6: goto L_048;
    case 7: goto L_048;
    case 8: goto L_048;
    case 9: goto L_03C;
    case 10: goto L_03C;
    case 11: goto L_E4;
    }
L_03C:
    *(unsigned char *)(d + 0x117) = 0xFA;
    goto L_E4;
L_048:
    *(float *)(d + 0x170) = 7.5f;
    *(float *)(d + 0x174) = 11.0f;
    *(float *)(d + 0x138) = *(float *)&D_L11_00162368 * D_0015EE6C;
    *(float *)(d + 0x13C) = *(float *)&D_L11_00162364 * D_0015EE6C;
    {
        char *pp = *(char **)(q + 0x20);
        fr = func_L00_001FF860(*(float *)(moby + 0x10) - *(float *)(pp + 0x10), *(float *)(moby + 0x14) - *(float *)(pp + 0x14));
        g0 = fr;
        *(u128 *)v = *(u128 *)(q + 0x10);
        func_L00_0025BBA0(v, &g0, d + 0x138, d + 0x13C);
        func_L00_0025D5B0(moby, d + 0x120, g0, 3, 1, 0);
        cls = *(unsigned char *)(moby + 0x20);
        if (cls < 12) *(unsigned char *)(moby + 0x20) = 9;
        else *(unsigned char *)(moby + 0x20) = 0x11;
        *(unsigned char *)(d + 0x117) = 0x78;
    }
    goto L_E4;
L_100:
    a1 = *(float *)&D_L11_00162360 * D_0015EE70;
    a2 = *(float *)&D_L11_00162370 * D_0015EE6C;
    a3 = *(float *)&D_L11_0016236C * D_0015EE6C;
    h = *(unsigned short *)(moby + 0x34);
    *(unsigned short *)(moby + 0x34) = h & 0xEFFF;
    *(float *)(d + 0x130) = a1;
    *(float *)(d + 0x170) = 7.5f;
    *(float *)(d + 0x174) = 11.0f;
    *(float *)(d + 0x138) = a2;
    *(float *)(d + 0x13C) = a3;
    {
        char *pp = *(char **)(q + 0x20);
        fr = func_L00_001FF860(*(float *)(moby + 0x10) - *(float *)(pp + 0x10), *(float *)(moby + 0x14) - *(float *)(pp + 0x14));
        g1 = fr;
        *(u128 *)v = *(u128 *)(q + 0x10);
        func_L00_0025BBA0(v, &g1, d + 0x138, d + 0x13C);
        func_L00_0025D5B0(moby, d + 0x120, g1, 3, 1, 0);
        cls = *(unsigned char *)(moby + 0x20);
        if (cls < 12) *(unsigned char *)(moby + 0x20) = 0xB;
        else *(unsigned char *)(moby + 0x20) = 0x12;
        *(unsigned char *)(d + 0x117) = 0xF0;
        func_L00_002584A8(moby, 0, -1);
    }
L_E4:
    func_L00_0025E4B0(moby, (short *)(d + 0x110));
L_1F8:
    *(unsigned char *)(moby + 0xA4) = 0xFF;
    func_L00_0025E590(moby, d + 0x110);
    if (*(int *)(d + 0x244) == 0) goto L_264;
    cls = *(unsigned char *)(moby + 0x20);
    if (cls == 2) goto L_238;
    if (cls != 3) goto L_268;
    if ((*(unsigned char *)(moby + 0x70) & 2) == 0) goto L_268;
L_238:
    *(unsigned char *)(moby + 0x20) = 0xA;
    if (*(unsigned char *)(moby + 0x53) == 2) goto L_264;
    r = func_001F9850(0xA);
    func_00213DE0(moby, 2, 0, r);
L_264:
L_268:
    if (*(int *)(d + 0x38) == 0) goto L_2A0;
    *(int *)(d + 0x244) = func_001FA898_r(func_001F9878(func_002140F8(180.0f, 240.0f)));
    *(int *)(d + 0x38) = 0;
L_2A0:
    func_001F9908((int *)(d + 0x244));
    f0 = *(float *)(d + 0x23C);
    if (*(int *)(d + 0x244) != 0) f0 = f0 + 64.0f;
    *(float *)(d + 0x248) = f0;
    tb = D_L11_001B11B0;
    q = *(char **)(tb + (*(int *)(d + 0x230) << 2));
    r = func_L00_00260FB0(moby, w, *(float *)(d + 0x248), 0, 0, q + 0x10, *(int *)q);
    if (r == 2) goto L_380;
    if (*(unsigned char *)(moby + 0x20) == 1) {
        q = *(char **)(tb + (*(int *)(d + 0x234) << 2)) + 0x20;
    } else {
        q = moby + 0x10;
    }
    *(u128 *)v = *(u128 *)q;
    fr = func_001F9D48((float *)v, (float *)w);
    if (*(float *)(d + 0x248) < fr || 3.0f < *(float *)(v + 8) - *(float *)(d + 0x1D8)) *(int *)(d + 0x214) = 2;
L_380:
    if (*(int *)(d + 0x210) != 0) goto L_3AC;
    tmp = D_0013E633 + 0xE1D;
    *(int *)(d + 0x210) = *(int *)(tmp + 0x2080);
    tmp = tmp + 0x80;
    *(u128 *)w = *(u128 *)tmp;
L_3AC:
    return;
}
