/* NON_MATCHING func_L02_002D9F08 -- src/overlays/shared/vendor_002A5218.c
 * Best so far: SIZE ours 2032 / retail 2080, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - Run 1 (p0): COMPILE, "unsupported wide integer operation" at the `ld`/`and` 64-bit test on 0x1C0($16) (0xA00
 *   - Run 2 (p1): SIZE 2016 vs 2080. Dispatch order differs (retail: st==1 test, then st<2, then st==2/3); constan
 *   - Run 5 (p2): nested `st < 2` dispatch, SIZE 2032 vs 2080; still 48 bytes short. The state-0 and state-1 block
 *   - Stopped: the 64-bit compare is a wall for this compiler, and the size gap needs a per-block layout study tha
 */
extern void func_0022ED80(int, int, int);
extern int func_001F9850(int);
extern void func_L02_0022BE40(int, int);
extern void func_L00_00232C10(int, int, float);
extern void func_L00_002EBF50(void *, void *, int, int, int);
extern void func_L02_002DA728(char *);
extern void func_L02_002D9D48(float *, float *, char *);
extern float func_00214D88(float *, float *, float, float, float, float);
extern void func_001F9C08(void *, void *, void *, float);
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern void func_L00_002EBE88(void *);
extern void func_L00_002EBEE0(void *);
extern int func_00216028(int, int);
extern float func_001FA850(float, float);
extern void func_001F49B0(void (*)(void), void *);
extern void func_L02_002DA820(void);
extern int func_001F9938(void *);
extern void func_L00_002EC0C8(int);
extern void func_L01_00240CE8(void);
extern void func_L00_0025E590(void *, void *);
extern float D_L02_001D3680[4][4];
extern char D_L02_001BBB40[];
extern int D_0015EE84_x __asm__("D_0015EE84") MACRO_ADDR;
extern unsigned char D_0014171B_x[] __asm__("D_0014171B");
extern char D_L02_00167440[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern int D_L02_0017EB88 MACRO_ADDR;
extern char D_L02_00167300[];
extern char D_L02_00179A90[];
extern int D_L02_001BADE0[];
extern short D_L02_00161BAC;
extern short D_L02_00161B38;
extern short D_L02_00161B34;
extern short D_L02_00161B30;
extern char D_0013E633[];
extern char D_0013A5E0[];

// Tresspasser pad update: per-frame state machine (idle, arm, fire, reset) on its moby.
void func_L02_002D9F08(char *moby) {
    char *d;
    char *g;
    char *p;
    char *q;
    float a[4];
    float b[4];
    float z;
    float f;
    float t;
    int i;
    int st;
    int v;
    int x;
    int idle;
    int skip;

    d = *(char **)(moby + 0x78);
    if (d == 0) {
        return;
    }
    st = *(unsigned char *)(moby + 0x20);
    if (st == 1) {
        g = D_0013E633 + 0xE1D;
        if (*(char **)(g + 0x2FC) != moby || *(short *)(g + 0x30E) != 0) {
            *(short *)(d + 0x12) = 0;
            *(int *)(moby + 0x90) = *(int *)&D_L02_00161B38;
        } else {
            if (*(short *)(d + 0x12) == 0) {
                *(short *)(d + 0x12) = 1;
                func_0022ED80(3, 0, (int)moby);
            }
            q = *(char **)(g + 0x1090);
            if (q != 0 && *(int *)(g + 0x10B8) == 0x1A) {
                *(int *)(moby + 0x90) = *(int *)&D_L02_00161B30;
                if (q[0xBC] != 0) {
                    *(short *)(d + 0x10) = func_001F9850(0x12C);
                    *(short *)(d + 0x11C) = 0;
                    *(short *)(d + 0x11E) = 0;
                    func_L02_0022BE40(0x72, 0);
                    func_L00_00232C10(0x57, 0, (float)func_001F9850(6));
                    p = D_L02_00167440;
                    func_L00_002EBF50(p, p + 0x10, 1, 0, 0);
                    *(unsigned char *)(moby + 0x20) = 2;
                    *(short *)(d + 0x10) = func_001F9850(0x3C);
                    *(int *)(d + 0x110) = 0;
                    qcopy(d + 0xF0, p);
                    qcopy(d + 0x100, p + 0x10);
                }
            } else {
                *(int *)(moby + 0x90) = *(int *)&D_L02_00161B34;
            }
        }
    } else if (st < 2) {
        if (st == 0) {
        *(short *)(d + 0x12) = 0;
        D_L02_001D3680[3][1] = -17.0f;
        D_L02_001D3680[0][0] = 17.0f;
        D_L02_001D3680[2][1] = 17.0f;
        D_L02_001D3680[0][1] = 17.0f;
        D_L02_001D3680[1][0] = 17.0f;
        D_L02_001D3680[1][1] = -17.0f;
        D_L02_001D3680[2][0] = -17.0f;
        D_L02_001D3680[3][0] = -17.0f;
        *(unsigned char *)(moby + 0x20) = 1;
        *(int *)&D_L02_00161BAC = *(int *)(d + 0xEC);
        if (*(unsigned char *)(moby + 0xB0) != 0xFF) {
            v = *(unsigned short *)(moby + 0xB2);
            x = (short)v;
            if (D_L02_001BBB40[x + 0x454] != 0
                || ((*(int *)(D_0014171B_x + 0xAB75 + ((x >> 5) << 2) + (D_0015EE84_x << 8)) >> (v & 0x1F)) & 1)) {
                *(unsigned char *)(moby + 0x20) = 4;
            }
        }
        }
    } else if (st == 2) {
        func_L02_002DA728(moby);
        func_L02_002D9D48(a, b, moby);
        func_00214D88((float *)(d + 0x110), (float *)(d + 0x114), 1.0f,
                      D_0015EE70 + D_0015EE70, D_0015EE70 + D_0015EE70, D_0015EE6C + D_0015EE6C);
        func_001F9C08(a, d + 0xF0, a, *(float *)(d + 0x110));
        b[2] = func_001FA748(func_001FA790(b[2], *(float *)(d + 0x108)) * *(float *)(d + 0x110), *(float *)(d + 0x108));
        b[1] = func_001FA748(func_001FA790(b[1], *(float *)(d + 0x104)) * *(float *)(d + 0x110), *(float *)(d + 0x104));
        func_L00_002EBE88(a);
        func_L00_002EBEE0(b);
        D_L02_0017EB88 = 1;
        func_00216028(6, 0);
        p = D_L02_00167300;
        if (*(char **)(p + 0x180) != 0 && *(short *)(*(char **)(p + 0x180) + 0x86) != 5) {
            func_L00_002EBF50(p + 0x140, p + 0x150, 1, 0, 0);
        }
        i = 0;
        z = 0.0f;
        if (0.99f <= *(float *)(d + 0x110) && func_001FA850(*(float *)(p + 0x158), b[2]) < 0.017453292f) {
            func_001F49B0(func_L02_002DA820, moby);
            if (*(int *)(d + 0xB0) != 1) {
                for (i = 1; i < 12; i++) {
                    if (*(int *)(d + 0xB0 + i * 4) == 1) {
                        break;
                    }
                }
            }
            f = *(float *)(d + 0xE4);
            if (z < f) {
                t = func_001FA748(f, D_0015EE6C * 6.2831855f);
                *(float *)(d + 0xE4) = t;
                if (0.5235988f < t) {
                    *(float *)(d + 0xE4) = z;
                    if (*(int *)(d + 0xE0) == 1) {
                        *(int *)(d + 0x14) += 11;
                        *(int *)(d + 0x14) %= 12;
                    } else if (*(int *)(d + 0xE0) == 2) {
                        *(int *)(d + 0x18) += 11;
                        *(int *)(d + 0x18) %= 12;
                    } else {
                        *(int *)(d + 0x1C) += 11;
                        *(int *)(d + 0x1C) %= 12;
                    }
                }
            } else if (f < z) {
                t = func_001FA748(f, -(D_0015EE6C * 6.2831855f));
                *(float *)(d + 0xE4) = t;
                if (t < -0.5235988f) {
                    *(float *)(d + 0xE4) = z;
                    if (*(int *)(d + 0xE0) == 1) {
                        *(int *)(d + 0x14) += 13;
                        *(int *)(d + 0x14) %= 12;
                    } else if (*(int *)(d + 0xE0) == 2) {
                        *(int *)(d + 0x18) += 13;
                        *(int *)(d + 0x18) %= 12;
                    } else {
                        *(int *)(d + 0x1C) += 13;
                        *(int *)(d + 0x1C) %= 12;
                    }
                }
            } else {
                if (i == 12) {
                    if (func_001F9938(d + 0x10)) {
                        *(unsigned char *)(moby + 0x20) = 3;
                    }
                } else {
                    char *w = D_0013A5E0 + 0x2460;
                    if (*(int *)(w + 0x1C4) & 0xA000) {
                        *(unsigned short *)(d + 0x11E) |= 1;
                        func_0022ED80(0, 0, (int)moby);
                        if (*(int *)(w + 0x1C4) & 0x8000) {
                            *(float *)(d + 0xE4) = -(D_0015EE6C * 6.2831855f);
                        } else {
                            *(float *)(d + 0xE4) = D_0015EE6C * 6.2831855f;
                        }
                    } else if (*(int *)(w + 0x1A4) & 0x1000) {
                        *(unsigned short *)(d + 0x11E) |= 2;
                        *(int *)(d + 0xE0) -= 1;
                        if (*(int *)(d + 0xE0) == 0) {
                            *(int *)(d + 0xE0) = 1;
                        } else {
                            func_0022ED80(1, 0, (int)moby);
                        }
                    } else if (*(int *)(w + 0x1A4) & 0x4000) {
                        *(unsigned short *)(d + 0x11E) |= 2;
                        *(int *)(d + 0xE0) += 1;
                        if (*(int *)(d + 0xE0) == 4) {
                            *(int *)(d + 0xE0) = 3;
                        } else {
                            func_0022ED80(1, 0, (int)moby);
                        }
                    }
                }
            }
        } else {
            if (*(int *)(D_0013E633 + 0x18B5) & 2) {
                func_L00_00232C10(0x58, 0, (float)func_001F9850(6));
            }
        }
        if (i != 12) {
            idle = (*(int *)(D_0013A5E0 + 0x2604) & 0x10) && *(int *)D_L02_00179A90 == 0
                   && *(int *)(D_L02_00179A90 + 0x24) == -1;
            skip = 0;
            if (!idle) {
                g = D_0013E633 + 0xE1D;
                skip = *(int *)(g + 0x2084) == 0x72 && *(int *)(g + 0x10B8) == 0x1A;
            }
            if (idle || !skip) {
                *(unsigned char *)(moby + 0x20) = 1;
                func_L00_002EC0C8(1);
                func_L01_00240CE8();
                *(short *)(d + 0x10) = func_001F9850(0x3C);
            }
        }
    } else if (st == 3) {
        if (*(int *)(D_0013E633 + 0x18B5) & 2) {
            if (*(unsigned char *)(moby + 0xB0) != 0xFF) {
                v = *(unsigned short *)(moby + 0xB2);
                x = (short)v;
                *(int *)(D_0014171B_x + 0xAB75 + ((x >> 5) << 2) + (D_0015EE84_x << 8)) |= 1 << (v & 0x1F);
                D_L02_001BADE0[x >> 5] |= 1 << (v & 0x1F);
            }
            func_L00_002EC0C8(1);
            func_L02_0022BE40(0, 1);
            *(unsigned char *)(moby + 0xBC) = 1;
            *(unsigned char *)(moby + 0x20) = 4;
        }
    }
    func_L00_0025E590(moby, d);
}
