/* NON_MATCHING func_L13_002EC038 -- src/overlays/l13_gemlik/vendor_002EBD00.c
 * Best so far: BYTES 23/1172 (98.0% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Budget spent: best p9.c, 23 bytes off (1172 retail). A 7-state machine on moby[0xBC] (jump table, states 2/7 a
 *   with byte fields read unsigned (((unsigned char *)p)[off]) and a 64-bit mask test on ld 0xF8. Left: the s308 b
 *   (retail sets $a0=0x78 before the jal, we put the store-free call in the delay slot), the andi/sltiu register c
 *   and the zeroing block order in state 4 (88/8C swapped; the 4-store order was tried four ways).
 */
extern int func_001F9908(void *);
extern void func_L13_002EB978(void *, void *);
extern int func_001F9850(int);
extern int func_L13_002E9B30(void *, void *, int, int);
extern void func_L00_0028EBF0(int);
extern void func_L00_00250800(void *, int, void *);
extern float func_001F9D10(void *, void *);
extern int func_L00_001FEF78(void *);
extern int func_L00_00258BC8(int, int);
extern unsigned char *func_L13_002EBAF0(char *, char *);
extern int func_0022ED80(int, int, int);
extern char D_0013E633[];

// Gemlik state machine: advances the moby's state byte at 0xBC and sets its timers
void func_L13_002EC038(void *mobyp, void *pp) {
    char *moby = mobyp;
    char *p = pp;
    float sv[4];
    float f1;
    int v;
    char *q;
    unsigned char c, e;

    switch (((unsigned char *)moby)[0xBC]) {
    case 1:
        goto s1;
    case 2:
        goto s2;
    case 3:
        goto s3;
    case 4:
        goto s4;
    case 5:
        goto s3;
    case 6:
        goto s3;
    case 7:
        goto s2;
    default:
        return;
    }

s1:
    if (((unsigned char *)moby)[0x20] != 4) {
        goto s1b;
    }
    if (!func_001F9908(p + 0xF8)) {
        return;
    }
    func_L13_002EB978(moby, p);
    *(int *)(p + 0xF8) = func_001F9850(0x3C);
    c = (unsigned char)(((unsigned char *)p)[0xFD] + 1);
    ((unsigned char *)p)[0xFD] = c;
    if (c < 11) {
        return;
    }
    ((unsigned char *)p)[0xFD] = 0;
    moby[0x20] = 3;
    *(int *)(p + 0xF8) = func_001F9850(0x12C);
    return;

s1b:
    if (!func_001F9908(p + 0xF8)) {
        return;
    }
    if (!(*(unsigned short *)(p + 0x138) & 1)) {
        if (func_L13_002E9B30(moby, p, 1, 2)) {
            *(unsigned short *)(p + 0x138) |= 1;
        }
    }
    *(int *)(p + 0xF8) = func_001F9850(0x1E);
    moby[0x20] = 4;
    return;

s3:
    func_001F9908(p + 0x124);
    func_001F9908(p + 0x100);
    func_001F9908(p + 0xF8);
    if (((unsigned char *)moby)[0x20] == 5) {
        goto s308;
    }
    v = *(int *)(p + 0x11C);
    if (v != -1) {
        q = D_0013E633 + 0x1D + v * 0x70;
        if (*(int *)(q + 0x88) == (int)moby && ((unsigned char *)q)[0x74]) {
            func_L00_0028EBF0(v);
        }
        *(int *)(p + 0x11C) = -1;
    }
    func_L00_00250800(moby, 0x13, sv);
    f1 = func_001F9D10(sv, D_0013E633 + 0xE9D);
    if (*(int *)(p + 0x100) == 0) {
        if (f1 < 100.0f) {
          if (60.0f < f1) {
            if (*(int *)(p + 0xF8) != 0) {
                return;
            }
            if (*(int *)(p + 0x124) != 0) {
                return;
            }
            *(int *)(p + 0x100) = func_001F9850(0x258);
            qcopy(p + 0x80, sv);
            ((unsigned char *)p)[0xFF] = 0;
            moby[0x20] = 5;
            return;
        }
        }
    }
    if (((unsigned char *)moby)[0xBC] == 3) {
        moby[0x20] = 4;
        if (*(int *)(p + 0xF8) != 0) {
            return;
        }
        goto s384;
    }
    if (*(int *)(p + 0xF8) != 0) {
        return;
    }
    if (func_L00_001FEF78(p + 0xFD) == 0) {
        goto s2e;
    }
    if (*(int *)(p + 0x124) != 0) {
        goto s2e;
    }
    e = ((unsigned char *)p)[0xFE] ^ 1;
    ((unsigned char *)p)[0xFE] = e;
    if (!e) {
        ((unsigned char *)p)[0xFD] = func_L00_00258BC8(4, 6);
        moby[0x20] = 4;
    } else {
        ((unsigned char *)p)[0xFD] = func_L00_00258BC8(0x14, 0x32);
        moby[0x20] = 3;
    }
    *(int *)(p + 0xF8) = func_001F9850(0x78);
    return;

s2e:
    if (((unsigned char *)p)[0xFE] == 0) {
        goto s380;
    }
    func_L13_002EBAF0(moby, p);
    *(int *)(p + 0xF8) = func_001F9850(0x14);
    *(int *)(p + 0x124) = func_001F9850(0xF0);
    return;

s308:
    if (*(int *)(p + 0x100) != 0) {
        goto s358;
    }
    if (*(int *)(p + 0x124) != 0) {
        return;
    }
    func_001F9850(0x258);
    *(int *)(p + 0xF8) = *(int *)(p + 0x100) = func_001F9850(0x78);
    moby[0x20] = 4;
    func_0022ED80(5, 0, (int)moby);
    return;

s358:
    if ((*(long *)(p + 0xF8) & ((((0xFF00L << 32) | 0xFFFFL) << 16) | 0xFFFFL)) != (0x8000L << 41)) {
        return;
    }
s380:
s384:
    func_L13_002EB978(moby, p);
    *(int *)(p + 0xF8) = func_001F9850(0x3C);
    *(int *)(p + 0x124) = func_001F9850(0x78);
    return;

s2:
    if (!func_001F9908(p + 0xF8)) {
        return;
    }
    if (((unsigned char *)moby)[0xBC] != 2) {
        goto s2b;
    }
    if (func_L00_001FEF78(p + 0xFD) == 0) {
        goto s2z;
    }
    e = ((unsigned char *)p)[0xFE] ^ 1;
    ((unsigned char *)p)[0xFE] = e;
    if (!e) {
        ((unsigned char *)p)[0xFD] = func_L00_00258BC8(4, 6);
        moby[0x20] = 4;
    } else {
        ((unsigned char *)p)[0xFD] = func_L00_00258BC8(0x14, 0x32);
        moby[0x20] = 3;
    }
    *(int *)(p + 0xF8) = func_001F9850(0x3C);
    return;

s2z:
    if (((unsigned char *)p)[0xFE] != 0) {
        goto s2y;
    }
    func_L13_002EB978(moby, p);
    *(int *)(p + 0xF8) = func_001F9850(0x3C);
    return;

s2y:
    func_L13_002EBAF0(moby, p);
    *(int *)(p + 0xF8) = func_001F9850(0x14);
    return;

s2b:
    moby[0x20] = 3;
    func_L13_002EBAF0(moby, p);
    *(int *)(p + 0xF8) = func_001F9850(0x14);
    return;

s4:
    moby[0x20] = 3;
    if (((unsigned char *)p)[0x10E] != 0) {
        return;
    }
    moby[0xBC] = 5;
    func_L13_002E9B30(moby, p, 0x1B, 2);
    {
        char *z = *(char **)(*(int *)(D_0013E633 + 0x240D) + 0x78);
        *(int *)(z + 0x88) = 0;
        *(int *)(z + 0xEC) = 0;
        *(int *)(z + 0x8C) = 0;
        *(int *)(z + 0x118) = 0;
    }
    return;
}
