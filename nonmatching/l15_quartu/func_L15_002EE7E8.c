/* NON_MATCHING func_L15_002EE7E8 -- src/overlays/l15_quartu/vendor_002EDB50.c
 * Best so far: SIZE ours 1932 / retail 1924, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Quartu moby update (class 1469): state 0 sets moby[0x30]=0xFF and state->0x34 from func_001F9850(0x4B0); state
 *   Best is p2.c: 1932 bytes vs 1924 (8 over), ~128 diff lines before the last edit. Left: retail keeps the hi hal
 *   Unblock: a source form that keeps both hi parts in saved registers without growing the frame, and that orders 
 */
extern int func_001F9850(int);
extern int func_00215570(void *, int);
extern int func_L00_00203F20(int, int);
extern int func_L00_0020DC00(void);
extern unsigned char D_0013D5E7 NOT_SDA;
extern int D_0015EFA4 MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern int D_L15_0015F684 MACRO_ADDR;
extern int D_L15_00161B48 MACRO_ADDR;
extern int D_L15_00160058_m __asm__("D_L15_00160058") MACRO_ADDR;
extern int D_L15_00179A90 MACRO_ADDR;
extern char D_0013E633[];
extern char D_0014171B[];
extern unsigned char D_0013D355[];
extern unsigned char D_0013D5CA[];

/* Quartu moby update (class 1469): two-state machine on moby[0x20]; state 1 scans the neighbour table and updates the per-moby timers. */
void func_L15_002EE7E8(unsigned char *moby) {
    char *state = *(char **)(moby + 0x78);
    int st = moby[0x20];
    int r;
    int n;
    int a1;
    int a3;
    int v;
    int lim;
    int s17;
    int s18;
    int s20;
    int s21;
    int s22;
    char *ent;
    char *x;
    char *base;
    char *p;
    int *ptr;

    if (st == 0) {
        goto C0;
    }
    if (st == 1) {
        goto C1;
    }
    return;

C0:
    moby[0x30] = 0xFF;
    *(int *)(state + 0x34) = func_001F9850(0x4B0);
    moby[0x20] = 1;
    return;

C1:
    if (*(int *)(state + 0x10) == -1) {
        goto L_B14;
    }
    ent = (char *)(D_L15_00160058_m + (*(int *)(state + 0x10) << 8));
    if (ent == 0) {
        goto L_B14;
    }
    if (*(short *)(ent + 0xA6) != 0x4E) {
        goto L_B14;
    }
    if ((unsigned char)ent[0x20] == 0xFE) {
        goto L_B14;
    }
    if ((unsigned char)ent[0x20] == 0xFD) {
        goto L_B14;
    }
    if ((unsigned char)ent[0x20] == 3) {
        goto L_B14;
    }
    x = D_0013E633 + 0xE9D;
    r = func_00215570(x, *(int *)(state + 0xC));
    if (r == 0) {
        goto L_B14;
    }
    n = *(int *)(x + 0x200C);
    if ((unsigned int)n >= 2 && n != 9) {
        goto L_B14;
    }
    if (D_L15_00179A90 != 0) {
        goto L_B14;
    }
    if (*(int *)((char *)&D_L15_00179A90 + 0x24) != -1) {
        goto L_B14;
    }
    if (D_0013D5E7 != 0) {
        goto L_9D0;
    }
    a1 = func_001F9850(D_0015EFA4);
    p = D_0014171B + 0x34D;
    lim = a1 - *(unsigned short *)(p + 0x3DA) * 600;
    v = (int)((float)func_001F9850(0x12) * 60.0f);
    if (v < lim || *(unsigned short *)(p + 0x3DA) * 600 == 0) {
        func_L00_00203F20(0x3A98, 0x7B);
        goto L_B14;
    }
    a3 = func_001F9850(D_0015EFA4);
    if (!(*(unsigned short *)(p + 0x3DA) < a3 / 600)) {
        goto L_B14;
    }
    *(short *)(p + 0x3DA) = func_001F9850(D_0015EFA4) / 600;
    goto L_B14;

L_9D0:
    p = D_0014171B + 0x34D;
    if (*(unsigned short *)(p + 0x3E0) == 0) {
        goto L_A9C;
    }
    a1 = func_001F9850(D_0015EFA4);
    lim = a1 - *(unsigned short *)(p + 0x3E2) * 600;
    v = (int)((float)func_001F9850(0x12) * 60.0f);
    if (v < lim || *(unsigned short *)(p + 0x3E2) * 600 == 0) {
        func_L00_00203F20(0x3A99, 0x7C);
        goto L_B14;
    }
    a3 = func_001F9850(D_0015EFA4);
    if (!(*(unsigned short *)(p + 0x3E2) < a3 / 600)) {
        goto L_B14;
    }
    *(short *)(p + 0x3E2) = func_001F9850(D_0015EFA4) / 600;
    goto L_B14;

L_A9C:
    *(short *)(p + 0x3E0) = *(unsigned short *)(p + 0x3E0) + 1;
    a1 = func_001F9850(D_0015EFA4);
    if (!(*(unsigned short *)(p + 0x3E2) < a1 / 600)) {
        goto L_AF4;
    }
    *(short *)(p + 0x3E2) = func_001F9850(D_0015EFA4) / 600;
L_AF4:
    *(int *)(p + 0x3E4) = *(int *)(p + 0x3E4) | (st << D_0015EE84) | 0x80000000;

L_B14:
    if (D_L15_0015F684 == 0) {
        goto L_B5C;
    }
    if (D_L15_00179A90 != 0) {
        goto L_B5C;
    }
    if (*(int *)((char *)&D_L15_00179A90 + 0x24) != -1) {
        goto L_B60;
    }
    if (*(unsigned short *)(D_0014171B + 0x795) != 0) {
        goto L_B60;
    }
    func_L00_00203F20(0x3A9F, 0x89);
    D_L15_0015F684 = 0;
L_B5C:
    x = D_0013E633 + 0xE9D;
L_B60:
    x = D_0013E633 + 0xE9D;
    r = func_00215570(x, *(int *)(state + 0x54));
    base = x - 0x80;
    if (r != 0 && (unsigned char)base[0x20A4] == 3 && *(short *)(base + 0x22E0) == 0 && D_L15_00161B48 == 0 && *(unsigned short *)(D_0014171B + 0x78D) == 0) {
        func_L00_00203F20(0x3A9E, 0x88);
    }
    s22 = -1;
    s21 = -1;
    s20 = 0;
    s18 = 0;
    for (; s18 <= 0; s18++) {
        s17 = s18 << 2;
        r = func_00215570(x, *(int *)(state + s17));
        if (r != 0) {
            s22 = *(int *)(state + s17);
            s21 = *(int *)(state + s17 + 0x10);
            s20 = 1;
            break;
        }
    }
    if (s20 != 0) {
        *(int *)(state + 0x3C) = *(int *)(state + 0x3C) + 1;
    } else {
        *(int *)(state + 0x3C) = 0;
        *(int *)(state + 0x40) = -1;
    }
    if (s21 == -1) {
        goto L_D14;
    }
    ent = (char *)(D_L15_00160058_m + (s21 << 8));
    if (ent == 0) {
        goto L_D14;
    }
    if (*(short *)(ent + 0xA6) != 0x4E) {
        goto L_D18;
    }
    if ((unsigned char)ent[0x20] == 0xFE) {
        goto L_D14;
    }
    if ((unsigned char)ent[0x20] == 0xFD) {
        goto L_D14;
    }
    if ((unsigned char)ent[0x20] == 3) {
        goto L_D18;
    }
    if (!(*(int *)(state + 0x34) < *(int *)(state + 0x3C))) {
        goto L_D18;
    }
    if (s22 == -1) {
        goto L_D18;
    }
    if (s22 == *(int *)(state + 0x40)) {
        goto L_D14;
    }
    n = *(int *)(base + 0x208C);
    if ((unsigned int)n >= 2) {
        if (n != 9) {
            goto L_D18;
        }
    }
    if (D_L15_00179A90 != 0) {
        goto L_D14;
    }
    if (*(int *)((char *)&D_L15_00179A90 + 0x24) != -1) {
        goto L_D18;
    }
    if (D_0013D5E7 == 0) {
        goto L_D1C;
    }
    *(int *)(state + 0x34) = func_001F9850(0x708);
    if (!(*(int *)(D_0014171B + 0x739) < 0)) {
        func_L00_00203F20(0x3A9A, 0x7D);
    }
    *(int *)(state + 0x40) = s22;
    *(int *)(state + 0x3C) = 0;
L_D14:
L_D18:
    r = 0xC;
L_D1C:
    if (*(unsigned char *)(*(char **)(base + 0x2080) + 0x52) != 0xC) {
        goto L_D4C;
    }
    if ((unsigned char)base[0x20A4] != 2) {
        goto L_D4C;
    }
    D_0013D355[0x13B + 0x6F] = 1;
L_D4C:
    x = D_0013E633 + 0xE9D;
    r = func_00215570(x, *(int *)(state + 0x1C));
    if (r == 0) {
        goto L_DB8;
    }
    if (*(unsigned char *)(x + 0x2024) != 2) {
        goto L_DBC;
    }
    if (D_0013D355[0x13B + 0x6F] != 0) {
        goto L_DBC;
    }
    if (D_L15_00179A90 != 0) {
        goto L_DB8;
    }
    if (*(int *)((char *)&D_L15_00179A90 + 0x24) != -1) {
        goto L_DBC;
    }
    if (*(int *)(D_0014171B + 0x751) < 0) {
        goto L_DB8;
    }
    func_L00_00203F20(0x3A9C, 0x80);
L_DB8:
    x = D_0013E633 + 0xE9D;
L_DBC:
    r = func_00215570(x, *(int *)(state + 0x20));
    if (r != 0 && D_L15_00179A90 == 0 && *(int *)((char *)&D_L15_00179A90 + 0x24) == -1 && D_0013D5CA[2] == 0 && (*(int *)(D_0014171B + 0x761) & (1 << D_0015EE84)) == 0) {
        func_L00_00203F20(0x3A9D, 0x82);
    }
    s22 = -1;
    s20 = 0;
    s17 = 0;
    ptr = (int *)(state + 0x20);
    while (s17 < 3) {
        r = func_00215570(x, *ptr);
        if (r != 0) {
            s20 = 1;
            if (*(int *)(state + 0x40) != *ptr) {
                s22 = *ptr;
            }
            break;
        }
        ptr++;
        s17++;
    }
    if (s20 == 0) {
        *(int *)(state + 0x38) = 0;
        *(int *)(state + 0x40) = -1;
    } else {
        *(int *)(state + 0x38) = *(int *)(state + 0x38) + 1;
        if (*(int *)(base + 0x2084) == 0x35) {
            *(int *)(state + 0x38) = 0;
            *(int *)(state + 0x40) = -1;
        }
    }
    a1 = func_001F9850(0xE10);
    s18 = -1;
    if (!(a1 < *(int *)(state + 0x38))) {
        goto L_F10;
    }
    if (s22 == -1) {
        p = D_0013D355 + 0x13B;
        goto L_F14;
    }
    if (func_L00_0020DC00() == 0) {
        goto L_F10;
    }
    if (D_L15_00179A90 != 0) {
        goto L_F10;
    }
    p = D_0013D355 + 0x13B;
    if (*(int *)((char *)&D_L15_00179A90 + 0x24) != -1) {
        goto L_F14;
    }
    if (D_0013D5CA[2] == 0) {
        goto L_F14;
    }
    func_L00_00203F20(0x4E2E, 0x78);
    *(int *)(state + 0x40) = s22;
    *(int *)(state + 0x38) = 0;
L_F10:
    p = D_0013D355 + 0x13B;
L_F14:
    if (((unsigned char *)p)[0x6E] != 0) {
        return;
    }
    r = func_00215570(D_0013E633 + 0xE9D, *(int *)(state + 0x2C));
    if (r != 0) {
        p[0x6E] = 1;
    }
}
