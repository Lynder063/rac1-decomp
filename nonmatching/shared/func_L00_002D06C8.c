/* NON_MATCHING func_L00_002D06C8 -- src/overlays/shared/vendor_002C96D0.c
 * Best so far: SIZE ours 2684 / retail 2720, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   CrateUpdate (crate moby update, all levels). Best candidate p0.c (= p4.c): 2684 of 2720 bytes, not EXACT. Othe
 *   Where it differs: the frame is 0xE0 against retail 0xC0 and we save one more register ($s5, the &sp4C address 
 *   Unblock: a way to let the allocator reuse flag's register for &sp4C (retail reuses $s4); the rest is 36 bytes 
 */
extern char D_0013E633[] __attribute__((section(".data")));
extern char D_0013D50F[] __attribute__((section(".data")));
extern char D_L00_001C43B0[];
extern int D_L00_0015F6B0 __attribute__((section(".sdata")));
extern int D_0015EE84 __attribute__((section(".sdata")));
extern unsigned char D_L00_00197F40[] __attribute__((section(".data")));
extern char *D_L00_00197680[] __attribute__((section(".data")));
extern int func_L00_0025F410(int);
extern void func_L00_002D28D8(char *a);
extern void *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern void func_001F9BC0(void *);
extern void func_L00_002D1168(char *a);
extern char *func_L00_002D95E8(char *a);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern void func_0020D6D0_p(void *) __asm__("func_0020D6D0");
extern int func_001F9850(int);
extern void func_L00_002D1E68(void *, int, int);
extern void func_L00_002D19E8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001FA888(int);
extern int func_L00_001F2BE8(float, void *, int, void *, void *);
extern int func_L00_00258BC8(int, int);
extern void func_0020D678(void *);
extern int func_L00_00200290(char *, float);
extern int func_L00_001FEF78(void *);
extern int func_L00_0025A208(int *, int, int, int);
extern float func_001F9D48(void *, void *);
extern int func_L00_0025A2F0(int *, int, int, int);
extern float func_00214358(void *, int, float);
extern void func_L00_00251328(void *, int, int, int);
extern void func_0022ED80(int, int, char *);

/* CrateUpdate: per-frame update of a crate moby (classes 500/501/502/505/511). */
void func_L00_002D06C8(char *a) {
    char *d;
    char *b;
    char *p;
    char *p16;
    char *cur;
    char *q;
    char *g;
    int flag;
    int f5;
    int v;
    int ok;
    int f7;
    int f8;
    int i;
    int m;
    int m2;
    int t1;
    int t2;
    int t3;
    int r5;
    int r6;
    int r;
    int sp40;
    float sp44;
    int sp48;
    int sp4C;
    float vec[4];
    float vec30[3];
    struct { int z0; int z4; int z8; int zc; char *m; int i14; int i18; float f; int i20; } sc;
    float k;
    float k8;
    float f20;
    unsigned char bc;
    unsigned char c;
    unsigned short t16;
    short t16s;
    u64 t64;
    char *q4;
    int *q6;
    char *q9;

    d = *(char **)(a + 0x78);
    flag = 0;
    if (*(int *)(d + 0xA0) != 0) {
        if (func_L00_0025F410(*(int *)(d + 0xA0)) == 0) *(int *)(d + 0xA0) = 0;
    }
    v = D_L00_0015F6B0;
    if (*(int *)(d + 0xA4) != 0) {
        if (func_L00_0025F410(*(int *)(d + 0xA4)) == 0) *(int *)(d + 0xA4) = 0;
        v = D_L00_0015F6B0;
    }
    p = d + 0x20;
    *(int *)(d + 0xFC) = v;
    if (*(int *)(d + 0xA0) == 0) *(unsigned short *)(p + 0x1E) |= 1;
    else *(unsigned short *)(p + 0x1E) &= 0xFFFE;

    if (*(int *)(d + 0xB4) != D_L00_0015F6B0) {
        if (*(unsigned char *)(a + 0x20) != 0 && (*(int *)(d + 0xAC) & 0xC) != 0) func_L00_002D28D8(a);
    }
    flag = 0;
    b = func_L00_0025B478(a, 0x1830000, 0);
    if (b != 0 && *(int *)(b + 0x24) == 0x1000000) {
        b = 0;
        flag = 1;
    }
    if ((unsigned int)(*(unsigned short *)(a + 0xA6) - 0x1FB) < 3) {
        func_L00_0025B4D0(a, b, p, 0, &sp40, &sp44, (int)&sp48, 4);
    }

    switch (*(unsigned char *)(a + 0x20)) {
    case 0:
        func_001F9BC0(d + 0x40);
        if (D_0015EE84 == 0x12 && *(short *)(a + 0xA6) == 0x1FF) {
            if (*(unsigned char *)(d + 0xC8) != 0) {
                a[0x20] = 6;
                *(int *)(a + 0x94) = 0;
                *(unsigned short *)(a + 0x34) = (*(unsigned short *)(a + 0x34) | 0x41) & 0xEFFF;
            } else {
                a[0x20] = 1;
            }
        } else {
            a[0x20] = 1;
        }
        *(int *)(d + 0xA8) = 0;
        if (!(*(int *)(d + 0xAC) & 1)) func_L00_002D1168(a);
        *(int *)(d + 0xAC) |= 0x14;
        if (*(short *)(a + 0xA6) == 0x1FF) *(short *)(d + 0xC6) = 0x64;
        else if (*(short *)(a + 0xA6) == 0x1F5) func_L00_002D95E8(a);
        break;

    case 1:
        if (*(short *)(a + 0xA6) == 0x1F9) {
            g = D_0013E633 + 0xE1D;
            if (*(int *)(g + 0x240) == (int)a || *(int *)(g + 0x23C) == (int)a
                || (*(int *)(g + 0x2FC) == (int)a && *(short *)(g + 0x30E) == 0)
                || *(int *)(g + 0x4F8) == (int)a || flag != 0) {
                a[0xBC] = 0;
                a[0x20] = 5;
                break;
            }
        }
        if (b != 0 && 0.0f < *(float *)(b + 0x2C)) {
            f5 = 1;
            if (*(short *)(a + 0xA6) == 0x1F6) f5 = (*(int *)(b + 0x24) & 0x20000) != 0;
            if (*(short *)(a + 0xA6) == 0x1F9) {
                a[0x20] = 5;
                v = 1;
                if ((*(int *)(b + 0x24) & 0x20000) == 0) {
                    v = func_001FA898_r(func_001F9878(func_002140F8(5.0f, 15.0f)));
                }
                a[0xBC] = v;
                *(s64 *)(d + 0xB8) = *(s64 *)(a + 0x38);
                f5 = 0;
            }
            if ((unsigned int)(*(unsigned short *)(a + 0xA6) - 0x1FB) < 3) {
                if ((*(int *)(b + 0x24) & 0x20000) != 0) *(short *)(a + 0xA6) = 0x1FE;
                if (sp40 == 3) *(short *)(a + 0xA6) = 0x1FE;
                t64 = *(u64 *)(b + 0x20);
                if ((t64 & (0xA000ULL << 39)) != 0 || sp48 == 0xB4) {
                    v = *(short *)(a + 0xA6) + 1;
                    *(short *)(a + 0xA6) = (v < 0x1FF) ? v : 0x1FE;
                }
                if (*(short *)(a + 0xA6) != 0x1FE) {
                    t16 = *(unsigned short *)(a + 0xA6) + 1;
                    *(unsigned short *)(a + 0xA6) = t16;
                    c = D_L00_00197F40[(short)t16];
                    a[0x22] = c;
                    *(int *)(a + 0x24) = (int)D_L00_00197680[c];
                    func_0020D6D0_p(a);
                    a[0x20] = 2;
                    a[0x72] = *(unsigned char *)(*(char **)(a + 0x24) + 0xE);
                    a[0xBC] = func_001F9850(0xF);
                    f5 = 0;
                }
            }
            if (f5) {
                func_L00_002D1E68(a, *(short *)(a + 0xA6) == 0x1F9, (int)b);
                q = *(char **)(b + 0x20);
                if (*(unsigned char *)(d + 0xC8) != 0 && q != 0
                    && (*(short *)(q + 0xA6) == 0x2CD || *(short *)(q + 0xA6) == 0x22C)) {
                    t16s = *(short *)(a + 0xB4);
                    *(short *)(a + 0xB4) = 0;
                    func_L00_002D19E8(a);
                    *(short *)(a + 0xB4) = t16s;
                } else {
                    func_L00_002D19E8(a);
                }
            }
        }
        break;

    case 2:
        {
            int nv = *(unsigned char *)(a + 0xBC) - 1;
            a[0xBC] = nv;
            if ((nv & 0xFF) == 0xFF) {
                a[0xA4] = nv & 0xFF;
                a[0x20] = 1;
            }
        }
        break;

    case 3:
        if (*(short *)(a + 0xA6) == 0x1F9) {
            bc = *(unsigned char *)(d + 0xCA);
            if (!(func_L00_001F9850(0x14) < bc)) {
                sc.m = a;
                sc.f = 2.0f;
                p16 = (char *)vec30;
                sc.i20 = 0;
                func_L00_001FF4B0(p16, a + 0xE0, 0.5f);
                func_001F9BD8(p16, p16, a + 0x10);
                f20 = func_001FA888(*(unsigned char *)(d + 0xCA));
                f20 = f20 / func_001F9878(20.0f);
                sc.i14 = 1;
                func_L00_001F2BE8(f20 + f20, p16, 0x10, a, &sc);
                sc.i14 = 0x30000;
                func_L00_001F2BE8(f20 * 3.0f, p16, 0x10, (void *)*(int *)(D_0013E633 + 0x2E9D), &sc);
                d[0xCA] = d[0xCA] + 1;
                break;
            }
        }
        if (*(unsigned char *)(d + 0xC8) == 0) {
            func_0020D678(a);
            return;
        }
        *(int *)(a + 0x94) = 0;
        a[0x31] = 0;
        *(unsigned short *)(a + 0x34) = (*(unsigned short *)(a + 0x34) | 1) & 0xEFFF;
        if (!(*(short *)(d + 0xB4) < 2)) *(short *)(d + 0xB4) = 1;
        a[0x20] = 6;
        if (D_0015EE84 == 0x12) {
            r = func_L00_00258BC8(0x12C, 0x2D0);
        } else {
            r = func_L00_00258BC8(0x1E, 0x3C);
        }
        d[0xC9] = r;
        break;

    case 4:
        if (func_L00_001FEF78(a + 0xBC)) {
            a[0x20] = 1;
            *(unsigned short *)(a + 0x34) &= 0xFFFE;
        }
        break;

    case 5:
        bc = *(unsigned char *)(a + 0xBC);
        if (bc == 0) {
            t1 = func_L00_001F9850(0x3C);
            a[0xBC] = t1 * 3 - 1;
            *(s64 *)(d + 0xB8) = *(s64 *)(a + 0x38);
        } else if (func_L00_001F9850(0xF) < bc) {
            if (b != 0) {
                a[0xBC] = func_001FA898_r(func_001F9878(func_002140F8(5.0f, 15.0f)));
            }
        }
        t1 = func_L00_001F9850(0x3C);
        m = *(unsigned char *)(a + 0xBC) % t1;
        t2 = func_L00_001F9850(0x3C);
        if (m == t2 - 3) {
            func_0022ED80(1, 0x20, a);
        } else {
            bc = *(unsigned char *)(a + 0xBC);
            t3 = func_L00_001F9850(0xD);
            if (bc == t3) func_0022ED80(1, 0x20, a);
        }
        t1 = func_L00_001F9850(0x3C);
        m2 = *(unsigned char *)(a + 0xBC) % t1;
        r5 = func_L00_001F9850(0x28);
        if (r5 < m2) {
            func_L00_00251328(a, 0xC8, 0x40, 0x40);
        } else {
            bc = *(unsigned char *)(a + 0xBC);
            r6 = func_L00_001F9850(0xF);
            if (bc < r6) func_L00_00251328(a, 0xC8, 0x40, 0x40);
            else *(s64 *)(a + 0x38) = *(s64 *)(d + 0xB8);
        }
        bc = *(unsigned char *)(a + 0xBC);
        if (bc == 1 || *(int *)(D_0013E633 + 0x2EA9) == 0x16) {
            *(s64 *)(a + 0x38) = *(s64 *)(d + 0xB8);
            func_L00_002D1E68(a, 1, 0);
            func_L00_002D19E8(a);
            bc = *(unsigned char *)(a + 0xBC);
        }
        a[0xBC] = bc - 1;
        break;

    case 6:
        *(u128 *)vec = *(u128 *)(a + 0x10);
        b = a + 0x10;
        vec[2] = vec[2] + 0.5f;
        vec[3] = 1.0f;
        r = func_L00_00200290((char *)vec, (float)*(short *)(a + 0x32));
        if (r != -1) break;
        if (func_L00_001FEF78(d + 0xC9) == 0) break;
        if (*(unsigned char *)(a + 0x21) == 0xFF) {
            a[0x31] = 1;
            t16 = *(unsigned short *)(a + 0x34) & 0xFFFE;
            a[0x20] = 1;
            *(unsigned short *)(a + 0x34) = t16;
            q = *(char **)(a + 0x24);
            *(unsigned short *)(a + 0x34) = t16 | 0x1000;
            *(int *)(a + 0x94) = *(int *)(q + 0x10);
            break;
        }
        ok = 1;
        if (D_0015EE84 == 0x12) {
            q4 = D_L00_001C43B0;
            q6 = (int *)(D_0013D50F + 0x21);
            q9 = D_0013D50F + 0xB9;
            k8 = 0.8f;
            f7 = 0;
            f8 = 0;
            for (i = 0; i < 0x25; i++) {
                if (q9[i] != 0) {
                    f7++;
                    if (*(unsigned short *)(q4 + 0xE) != 0) {
                        if ((float)*q6 < (float)*(unsigned short *)(q4 + 0xE) * k8) f8++;
                    }
                }
                q6++;
                q4 += 0x18;
            }
            if (f8 < 3 && f7 >= 3) ok = 0;
            if (f7 < 3 && f8 != f7) ok = 0;
        }
        if (!ok) break;
        func_L00_0025A208(&sp4C, *(unsigned char *)(a + 0x21), 0, 0);
        if (sp4C != 0) {
            k = 0.1f;
            cur = (char *)sp4C;
            do {
                if (a != cur) {
                    if (!(k < func_001F9D48(b, cur + 0x10))) {
                        if (*(unsigned char *)(cur + 0x20) == 1
                            && *(int *)(*(char **)(cur + 0x78) + 0xA0) == 0) {
                            *(u128 *)b = *(u128 *)(cur + 0x10);
                            *(float *)(a + 0x18) = *(float *)(a + 0x18) + 1.0f;
                            *(int *)(*(char **)(cur + 0x78) + 0xA0) = (int)a;
                            *(int *)(d + 0xA0) = 0;
                            *(int *)(d + 0xA4) = sp4C;
                            a[0x31] = 1;
                            t16 = *(unsigned short *)(a + 0x34) & 0xFFFE;
                            a[0x20] = 1;
                            *(unsigned short *)(a + 0x34) = t16;
                            q = *(char **)(a + 0x24);
                            *(unsigned short *)(a + 0x34) = t16 | 0x1000;
                            *(int *)(a + 0x94) = *(int *)(q + 0x10);
                            *(int *)(d + 0xAC) |= 4;
                            break;
                        }
                    }
                }
                func_L00_0025A2F0(&sp4C, sp4C, 0, 0);
                cur = (char *)sp4C;
            } while (cur != 0);
        }
        if (*(unsigned char *)(a + 0x20) != 1) {
            *(float *)(a + 0x18) = func_00214358(b, 0, 0.5f);
            a[0x20] = 1;
            *(int *)(d + 0xA4) = 0;
            *(int *)(d + 0xA0) = 0;
            a[0x31] = 1;
            t16 = *(unsigned short *)(a + 0x34) & 0xFFFE;
            *(unsigned short *)(a + 0x34) = t16;
            q = *(char **)(a + 0x24);
            *(unsigned short *)(a + 0x34) = t16 | 0x1000;
            *(int *)(a + 0x94) = *(int *)(q + 0x10);
        }
        break;

    default:
        break;
    }
    a[0xA4] = 0xFF;
}
