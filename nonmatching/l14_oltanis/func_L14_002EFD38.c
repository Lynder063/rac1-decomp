/* NON_MATCHING func_L14_002EFD38 -- src/overlays/l14_oltanis/vendor_002E0538.c
 * Best so far: SIZE ours 1704 / retail 1708, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Does: elevator update (class 685): a 5-state switch on moby[0x20] (jump table), lift height/limit tests agains
 *   Best: p3.c, SIZE 1704 vs 1708 (one instruction short). Structure matches the switch and the tail; the byte-tab
 *   Still differs: the D_L14_001B0F30 table address (retail computes it as lui + addiu %lo then indexes; ours fold
 *   Unblock: a matched sibling of the case-1 lift test (func_L14_002F0B78 neighbours) to see how the table pointer
 */
extern void func_L14_002F03E8(char *);
extern void func_L14_002F0B78(char *);
extern int func_00215570(void *, int);
extern float func_001F9C78(void *, void *);
extern float func_001F9D48(void *, void *);
extern int func_0022ED80(int, int, int);
extern int func_L00_0028F210(int, int);
extern int func_L00_0028EB98(void *, int);
extern int func_001FA8A8(int, int, float);
extern int func_L14_002F05D8(char *);
extern void func_L14_002F0AB8(char *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_002617B0(char *, void *, void *, void *);
extern float func_001F9CB8(void *);
extern float func_001FA888(int);
extern float func_L00_0025C918(float *, float *, float, float, float, float);
extern int func_001FA898(float);
extern void func_L00_0028EBF0(int);
extern void func_L14_002F0868(char *);
extern char *D_L14_001B0F30[];
extern unsigned char D_L14_001BBCC0[];
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern unsigned char D_0014171B[] NOT_SDA;
extern char D_0013E633[];

/* Elevator update (moby class 685): runs its five-state switch, the lift-height test and the table lookups, then the shared follow-up. */
void func_L14_002EFD38(char *moby) {
    char *data;
    char *pos;
    char *cmp;
    char *base2;
    char *tbl;
    char *p;
    float f1v;
    float f0;
    float ft;
    int v;
    int s;
    int r;
    char v0[16];
    char v10[16];
    char v20[16];
    char v30[16];

    data = *(char **)(moby + 0x78);
    if (((unsigned char *)moby)[0x20] != 0) {
        if (((unsigned char *)moby)[0xBC] == 2) {
            if (*(float *)(data + 0xAC) < 0.0f) {
                tbl = D_L14_001B0F30[*(int *)(data + 0xB8)];
                *(float *)(data + 0xAC) = -*(float *)(data + 0xAC);
                *(int *)(data + 0xA4) = *(int *)tbl - 2;
                *(float *)(data + 0xA8) = *(float *)(tbl + (*(int *)(data + 0xA4) << 4) + 0x1C);
                ((unsigned char *)moby)[0xBC] = 1;
            }
        }
    }
    pos = moby + 0x10;
    qcopy(v0, pos);
    qcopy(v10, moby + 0x40);
    cmp = moby + 0x40;

    switch (((unsigned char *)moby)[0x20]) {
    case 0:
        ((unsigned char *)moby)[0x20] = 1;
        ((unsigned char *)moby)[0xBC] = 0;
        func_L14_002F03E8(moby);
        qcopy(pos, D_L14_001B0F30[*(int *)(data + 0xA0)] + 0x10);
        qcopy(moby + 0x40, data + 0xD0);
        {
            unsigned short hw = *(unsigned short *)(moby + 0xB2);
            int sh = (short)hw;
            if (D_L14_001BBCC0[sh + 0x454]) {
                *(short *)(data + 0x124) = 0;
            } else if (((*(int *)(D_0014171B + 0xAB75 + (sh >> 5) * 4 + (D_0015EE84_m << 8)) >> (hw & 0x1F)) ^ 1) & 1) {
                if (*((D_0014171B + 0xAA35) + *(int *)(data + 0x110) + (D_0015EE84_m << 4)) != 0xFF) {
                    *(short *)(data + 0x124) = 0;
                } else {
                    *(short *)(data + 0x124) = 1;
                }
            } else {
                *(short *)(data + 0x124) = 0;
            }
        }
        ((unsigned char *)moby)[0x30] = 0xFF;
        *(int *)(moby + 0x90) = 0x80303030;
        *(int *)(data + 0x134) = -1;
        *(int *)(data + 0x12C) = -1;
        *(int *)(data + 0x130) = -1;
        *(int *)(data + 0x138) = 0;
        break;
    case 1:
        func_L14_002F0B78(moby);
        v = *(int *)(data + 0x118);
        if (v >= 0) {
            if (func_00215570(D_0013E633 + 0xE9D, v) != 0) {
                ((unsigned char *)moby)[0xBC] = 0;
                *(float *)(data + 0xAC) = -1.0f;
                *(int *)(data + 0xA4) = 0;
                *(float *)(data + 0xA8) = 0.0f;
            }
        }
        v = *(int *)(data + 0x11C);
        if (v >= 0 && func_00215570(D_0013E633 + 0xE9D, v) != 0) {
            ((unsigned char *)moby)[0xBC] = 0;
            *(float *)(data + 0xAC) = 1.0f;
            p = D_L14_001B0F30[*(int *)(data + 0xA0)];
            *(int *)(data + 0xA4) = *(int *)p - 2;
            *(float *)(data + 0xA8) = *(float *)(p + (*(int *)(data + 0xA4) << 4) + 0x1C);
        }
        v = *(int *)(data + 0x120);
        if (v >= 0 && func_00215570(D_0013E633 + 0xE9D, v) != 0) {
            ((unsigned char *)moby)[0xBC] = 1;
            *(float *)(data + 0xAC) = 1.0f;
            p = D_L14_001B0F30[*(int *)(data + 0xB8)];
            *(int *)(data + 0xA4) = *(int *)p - 2;
            *(float *)(data + 0xA8) = *(float *)(p + (*(int *)(data + 0xA4) << 4) + 0x1C);
        }
        base2 = D_0013E633 + 0xE1D;
        if (*(int *)(base2 + 0x2FC) == (int)moby && *(short *)(base2 + 0x30C) == 0) {
            if (0.0f < func_001F9C78(moby + 0xE0, *(char **)(base2 + 0x2080) + 0xE0)) {
                f0 = func_001F9D48(base2 + 0x80, pos);
                if (f0 < 1.0f) {
                    r = func_0022ED80(1, 0, (int)moby);
                    if (r >= 0) {
                        if (*(int *)(data + 0x134) < 0) {
                            *(int *)(data + 0x134) = *(int *)(D_0013E633 + 0x10D);
                        }
                        func_L00_0028F210(r, *(int *)(data + 0x134));
                    }
                    f1v = *(float *)(data + 0xAC);
                    if (f1v == -1.0f) {
                        if (*(short *)(data + 0x124) != 0) {
                            ((unsigned char *)moby)[0xBC] = 2;
                        } else {
                            ((unsigned char *)moby)[0xBC] = 0;
                        }
                    }
                    ((unsigned char *)moby)[0x20] = 2;
                    *(int *)(data + 0xB0) = 0;
                    *(float *)(data + 0xAC) = -*(float *)(data + 0xAC);
                }
            }
        }
        break;
    case 2:
        s = func_L00_0028EB98(moby, *(int *)(data + 0x12C));
        if (s == 0) {
            s = func_0022ED80(0, 4, (int)moby);
            *(int *)(data + 0x12C) = s;
            if (s != 0) {
                if (*(int *)(data + 0x130) < 0) {
                    *(int *)(data + 0x130) = *(int *)(D_0013E633 + 0x9D);
                }
                func_L00_0028F210(*(int *)(data + 0x12C), *(int *)(data + 0x130));
            }
        }
        s = func_001FA8A8(*(int *)(moby + 0x90), 0x80808040, 0.1f);
        *(int *)(moby + 0x90) = s;
        if (func_L14_002F05D8(moby) != 0) {
            ((unsigned char *)moby)[0x20] = 3;
            *(short *)(data + 0x126) = *(unsigned short *)(data + 0x130);
        }
        func_L14_002F0AB8(moby);
        func_001F9BF0(v20, pos, v0);
        func_L00_002617B0(data + 0x60, v20, v10, cmp);
        break;
    case 3:
        ft = func_001F9CB8(data + 0xC0);
        if (0.001f <= ft) {
            s = *(int *)(data + 0x12C);
            if (func_L00_0028EB98(moby, s) == 0) {
                *(int *)(data + 0x12C) = func_0022ED80(0, 4, (int)moby);
            }
            f0 = func_001FA888(*(short *)(data + 0x126));
            *(float *)v30 = f0;
            f0 = func_001FA888(*(int *)(data + 0x130));
            f0 = func_L00_0025C918((float *)v30, (float *)(data + 0x128), f0 * 0.25f, 0.003f, 0.2f, 0.0f);
            s = func_001FA898(*(float *)v30);
            *(short *)(data + 0x126) = s;
            r = *(int *)(data + 0x12C);
            if (r >= 0) {
                func_L00_0028F210(r, (short)s);
            }
            func_L14_002F0AB8(moby);
        } else {
            func_L14_002F0B78(moby);
            v = *(int *)(data + 0x12C);
            if (v != -1) {
                if (*(int *)(D_0013E633 + 0x1D + 0x70 * v + 0x88) == (int)moby && D_0013E633[0x1D + 0x70 * v + 0x74] != 0) {
                    func_L00_0028EBF0(v);
                    v = -1;
                }
            }
            *(int *)(data + 0x12C) = v;
            s = func_0022ED80(1, 0, (int)moby);
            if (s >= 0) {
                func_L00_0028F210(s, *(int *)(data + 0x134) / 3);
            }
            ((unsigned char *)moby)[0x20] = 4;
            if (*(int *)(D_0013E633 + 0x1119) != (int)moby) {
                ((unsigned char *)moby)[0x20] = 1;
            }
        }
        break;
    case 4:
        func_L14_002F0B78(moby);
        if (*(int *)(D_0013E633 + 0x1119) != (int)moby) {
            ((unsigned char *)moby)[0x20] = 1;
        }
        break;
    default:
        break;
    }

    if (((unsigned char *)moby)[0x20] != 2) {
        if (((unsigned char *)moby)[0x20] != 0) {
            func_L14_002F0868(moby);
            if (*(int *)(D_0013E633 + 0x1119) == (int)moby) {
                func_001F9BF0(v20, pos, v0);
                func_L00_002617B0(data + 0x60, v20, v10, cmp);
            }
        }
    }
}
