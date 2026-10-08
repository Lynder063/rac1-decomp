/* NON_MATCHING func_L00_00238530 -- src/overlays/shared/hud_00235960.c
 * Best so far: SIZE ours 1748 / retail 1788, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   QuickSelectUpdate, HUD quick-select slot 3 update: reads the level's quick-select state, picks the next slot b
 *   Best candidate p0.c: 1748 bytes against retail 1788 (40 short); p3.c 1736. Not EXACT after 7 runs.
 *   Differences: (1) retail keeps the level-data hi in $21 and re-adds lo per access, we rematerialise lui per use
 *   Unblock: a way to make the hi-part CSE without CSE of the flag loads, and the f24/f25 pick; the 10-byte block 
 */
extern int func_001F9850(int);
extern int func_001F9938(void *);
extern float func_001F9B50(float);
extern float func_L00_001FF860(float, float);
extern float func_001FA888(int);
extern float func_001FA790(float, float);
extern float func_001FA850(float, float);
extern int func_001FA898(float);
extern float func_001FA7D8(float x);
extern int func_001FFCB0(int);
extern unsigned char D_0014171B[] NOT_SDA;
extern unsigned char D_0013A5E0[] NOT_SDA;
extern char D_0013E633[];
extern char D_0013D50F[];
extern unsigned char D_L00_001C43B0_r[] __asm__("D_L00_001C43B0");
extern int D_L00_0015FB48 MACRO_ADDR;
extern void *D_L00_0015FB78 MACRO_ADDR;
extern int D_L00_0015FB50 MACRO_ADDR;
extern int D_L00_0015FB4C MACRO_ADDR;
extern int D_L00_0015F4F8 MACRO_ADDR;
extern int D_L00_0015FB54 MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern int D_0015EFA4 MACRO_ADDR;
extern int D_L00_0017DD20;
extern int D_L00_0017DD24;
extern int D_L00_0017DD18;
extern int D_L00_0017DD1C;
extern short D_L00_0015F80C;
extern short D_L00_0015F860;
extern short D_L00_0015F864;
extern short D_L00_0015F868;

/* QuickSelectUpdate: quick-select HUD slot 3 update callback. */
void func_L00_00238530(unsigned char *p) {
    int old, sel, n6, v19, r, n17, ret, m, cur, q;
    float f0, f1, f2, f12, f20, f21, f22, f23, f24, f25;
    unsigned char *tab, *rec, *Q, *R, *G;
    int doMod;

    *(int *)(p + 0x7C) = func_001F9850(0xB4);
    *(int *)(p + 0x6C) = 0x18;
    if (func_001F9938(D_0014171B + 7)) {
        *(int *)(D_0013A5E0 + 0x2460 + 0x1CC) = 2;
    }
    f20 = *(float *)(D_0013A5E0 + 0x2460 + 0x148);
    f21 = *(float *)(D_0013A5E0 + 0x2460 + 0x14C);
    f22 = func_001F9B50(f20 * f20 + f21 * f21);
    if (f22 != 0) {
        f20 = f20 / f22;
        f21 = f21 / f22;
    }
    f24 = func_L00_001FF860(f20, f21);

    if (((*(int *)(p + 0x78)) >> 24) == 0) {
        if ((*(int *)(D_0013A5E0 + 0x2460 + 0x1C4) & 0xF000) != 0 || f22 < 0.5f) {
            *(int *)(p + 0x74) = -1;
            *(int *)(p + 0x78) = 0x10000FF;
        } else {
            int t = *(int *)(p + 0x78) - 1;
            if (t == -1) {
                *(int *)(p + 0x74) = -1;
                *(int *)(p + 0x78) = 0x10000FF;
            } else {
                *(int *)(p + 0x78) = t;
            }
        }
    }

    v19 = 0;
    old = *(int *)(p + 0x74);
    if (*(signed char *)(p + 0x7B) == 1) {
        if (*(int *)(D_0013A5E0 + 0x2460 + 0x1C0) & 0x10) {
            if (0.9f < f22) {
                f20 = 3.14159274f;
                f0 = f24 + f20;
                f21 = 6.28318548f;
                f1 = (float)D_L00_0015FB48;
                f23 = 1.57079637f;
                f0 = f0 + f20;
                f2 = f20 / f1;
                f1 = f1 / f21;
                f0 = f0 + f23;
                f25 = f0 + f2;
                f22 = f25 * f1;
                f0 = func_001FA888(D_L00_0015FB48);
                f1 = (float)old * f21;
                f1 = f1 / f0;
                f20 = f1 - f20;
                doMod = 1;
                if (old != -1) {
                    f0 = func_001FA790(f24, f23);
                    f0 = func_001FA850(f20, f0);
                    doMod = 0.589048624f < f0;
                }
                if (doMod) {
                    r = (int)f22 % D_L00_0015FB48;
                    if ((r ^ 1) & 1) {
                        q = func_001FA898(f22);
                        f1 = (float)q;
                        f2 = *(float *)&D_L00_0015F868;
                        f0 = 1.0f;
                        f12 = f22 - f1;
                        f0 = f0 - f2;
                        if (f0 < f12) {
                            r = r + 1;
                        } else if (f12 < f2) {
                            r = r - 1;
                        }
                        r = (r + D_L00_0015FB48) % D_L00_0015FB48;
                    }
                    v19 = -1;
                    *(int *)(p + 0x74) = r;
                    f12 = (float)r;
                    f0 = 0.785398185f;
                    f1 = 0.392699093f;
                    f12 = f12 * f0;
                    f12 = f12 + f1;
                    f0 = func_001FA7D8(f25 - f12);
                    *(float *)&D_L00_0015F864 = f0;
                    if (0.0f < f0) {
                        v19 = 1;
                    }
                }
            } else {
                if (*(int *)(D_0013A5E0 + 0x2460 + 0x1D8) == 0
                    && (*(int *)(D_0013A5E0 + 0x2460 + 0x1C4) & 0xF000) != 0) {
                    n6 = old;
                    if (*(int *)(D_0013A5E0 + 0x2460 + 0x1C4) & 0x1000) {
                        if (old == -1) {
                            n6 = D_L00_0017DD20;
                        } else {
                            n6 = *(int *)(((char **)D_L00_0015FB78)[*(int *)&D_L00_0015F80C] + old * 0x1C + 0x10);
                        }
                    }
                    if (*(int *)(D_0013A5E0 + 0x2460 + 0x1C4) & 0x4000) {
                        if (n6 == -1) {
                            n6 = D_L00_0017DD24;
                        } else {
                            n6 = *(int *)(((char **)D_L00_0015FB78)[*(int *)&D_L00_0015F80C] + n6 * 0x1C + 0x14);
                        }
                    }
                    if (*(int *)(D_0013A5E0 + 0x2460 + 0x1C4) & 0x8000) {
                        if (n6 == -1) {
                            n6 = D_L00_0017DD18;
                        } else {
                            n6 = *(int *)(((char **)D_L00_0015FB78)[*(int *)&D_L00_0015F80C] + n6 * 0x1C + 0x8);
                        }
                    }
                    if (*(int *)(D_0013A5E0 + 0x2460 + 0x1C4) & 0x2000) {
                        if (n6 == -1) {
                            n6 = D_L00_0017DD1C;
                        } else {
                            n6 = *(int *)(((char **)D_L00_0015FB78)[*(int *)&D_L00_0015F80C] + n6 * 0x1C + 0xC);
                        }
                    }
                    *(int *)(p + 0x74) = n6;
                }
            }

            /* selection tail */
            cur = *(int *)(p + 0x74);
            tab = ((unsigned char **)D_L00_0015FB78)[*(int *)&D_L00_0015F80C];
            if (*(int *)(tab + cur * 0x1C) == 0 && v19 != 0) {
                m = (cur + v19) % D_L00_0015FB48;
                if (*(int *)(tab + m * 0x1C) != 0) {
                    *(int *)(p + 0x74) = m;
                }
            }
        }
    }

    if (*(int *)(p + 0x74) == old) {
        if (p[0x71] < *(int *)&D_L00_0015F860) {
            p[0x71] = p[0x71] + 1;
        }
    } else {
        p[0x71] = 0;
    }

    if (*(int *)(D_0013A5E0 + 0x2460 + 0x1C0) & 0x10) {
        if (p[0] < *(int *)&D_L00_0015F860) {
            p[0] = p[0] + 1;
        }
    } else {
        cur = *(int *)(p + 0x74);
        if (cur >= 0) {
            tab = ((unsigned char **)D_L00_0015FB78)[*(int *)&D_L00_0015F80C];
            n17 = *(int *)(tab + cur * 0x1C + 0x18);
            if (n17 != 0) {
                Q = D_0013E633 + 0xE1D;
                R = D_0014171B + 0x22D;
                if (*(int *)(Q + 0x10B8) != n17) {
                    if (*(unsigned short *)(R + 0xA0) <= 0xFFFE) {
                        *(unsigned short *)(R + 0xA0) = *(unsigned short *)(R + 0xA0) + 1;
                    }
                }
                ret = func_001F9850(D_0015EFA4);
                if ((int)*(unsigned short *)(R + 0xA2) < ret / 600) {
                    ret = func_001F9850(D_0015EFA4);
                    *(unsigned short *)(R + 0xA2) = ret / 600;
                }
                *(int *)(R + 0xA4) = (*(int *)(R + 0xA4) | (1 << D_0015EE84)) | 0x80000000;
                if (n17 == 0x18) {
                    *(unsigned char *)(Q + 0x1FF5) = 1;
                } else {
                    *(int *)(Q + 0x20B8) = n17;
                }
                rec = D_L00_001C43B0_r + n17 * 0x18;
                if (*(unsigned short *)(rec + 8) != 0) {
                    if (*(unsigned short *)(rec + 0xE) < *(int *)(D_0013D50F + 0x21 + n17 * 4)) {
                        *(int *)(D_0013D50F + 0x21 + n17 * 4) = *(unsigned short *)(rec + 0xE);
                    }
                }
            }
            if (p[0] != 0) {
                p[0] = p[0] - 1;
            }
        } else {
            if (p[0] != 0) {
                p[0] = p[0] - 1;
            }
        }
    }

    if (p[0] == 0) {
        D_L00_0015FB50 = *(int *)(p + 0x78);
        D_L00_0015FB54 = *(int *)(p + 0x74);
        func_001FFCB0(*(int *)(p + 0x64));
        *(int *)(p + 0x6C) = -6;
        D_L00_0015FB4C = D_L00_0015F4F8;
    }
}
