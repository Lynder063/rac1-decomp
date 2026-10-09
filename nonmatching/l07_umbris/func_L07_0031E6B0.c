/* NON_MATCHING func_L07_0031E6B0 -- src/overlays/l07_umbris/vendor_0031BDB8.c
 * Best so far: SIZE ours 1192 / retail 1196, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Claimed by mistake in worker s13 (a repeated claim call took it); no attempt was made. Needs a release or a fr
 *   hq6 s12 (2026-10-08): the state machine is decoded (state 0 spark-table pass, state 1 walk of D_L07_00161D30 w
 *   Would unblock: a form of the blend that GCC emits as a bare bc1f, and a way to get the table base hoisted with
 */
extern int func_00215570(void *arg0, int arg1);
extern float func_001FA888(int);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern float func_001F9D10(void *, void *);
extern int func_L00_0025E860(void *, void *, int *, float *, float, int);
extern float func_001F9D48(void *, void *);
extern int func_00120778(float);
extern char *func_L00_002C6608(void *, int, int, int);
extern float func_002140F8(float, float);
extern int func_001E9730();
extern void func_0020D678(void *);
extern char D_L07_00211DE0[];
extern char D_L07_00211E20[];
extern char *D_L07_001B0830[];
extern char D_L07_001C43B0[];
extern char D_L07_00211E40[];
extern char D_L07_00211E68[];
extern char D_L07_00211E98[];
extern short D_L07_00161D30;
extern char D_0013E633[];
extern char D_0013D50F[];

// Update for moby class 1142 on level 07: builds the spark table once, then walks the D_L07_00161D30 list.
void func_L07_0031E6B0(char *moby) {
    char *d;
    char *P;
    float vec[3];
    int ia;
    int fbz;
    int st;
    int i, j, k, N, nj, d1, q, r, m, rem, t, flag, dd, d9;
    int r0, r1, r2, r3;
    float f0, f20, f21, f22, f23, A, B, C, dist;
    char *ent;
    char **tab;

    d = *(char **)(moby + 0x78);
    st = ((unsigned char *)moby)[0x20];
    if (st != 1) {
        if (st >= 2) {
            return;
        }
        if (st != 0) {
            return;
        }
        flag = 0;
        if (*(int *)d == -1) {
            func_001E9730(D_L07_00211DE0);
            flag = 1;
        }
        if (*(int *)(d + 0x4) == -1) {
            func_001E9730(D_L07_00211DE0);
            flag = 1;
        }
        if (flag != 0) {
            func_001E9730(D_L07_00211E20, *(short *)(moby + 0xB2));
            func_0020D678(moby);
            return;
        }
        *(int *)(d + 0x20) = 0;
        tab = D_L07_001B0830;
        d1 = *(int *)(d + 0x4);
        j = 0;
        if (*(int *)tab[d1] > 0) {
            do {
                P = tab[d1];
                nj = (j + 1) % *(int *)P;
                f0 = func_001F9D10(P + (j * 16 + 0x10), P + (nj * 16 + 0x10));
                d1 = *(int *)(d + 0x4);
                *(float *)(tab[d1] + j * 16 + 0x1C) = f0;
                *(float *)(d + 0x20) = *(float *)(d + 0x20) + *(float *)(tab[d1] + j * 16 + 0x1C);
                j = j + 1;
            } while (j < *(int *)tab[d1]);
        }
        ((unsigned char *)moby)[0x20] = 1;
        return;
    } else {
        if (func_00215570(D_0013E633 + 0xE9D, *(int *)d) == 0) {
            return;
        }
        i = 0;
        if (*(int *)&D_L07_00161D30 != -1) do {
            k = ((int *)&D_L07_00161D30)[i];
            f23 = func_001FA888(((int *)(D_0013D50F + 0x21))[k]);
            ent = D_L07_001C43B0 + k * 24;
            f20 = func_001FA888(*(unsigned short *)(ent + 0xE));
            f21 = f23 / f20;
            f22 = func_002140F8(0.0f, *(float *)(d + 0x20));
            if (*(float *)(d + 0x8) / 100.0f <= f21) {
                if (f21 < *(float *)(d + 0xC) / 100.0f) {
                    A = f20 * (*(float *)(d + 0x10) / 100.0f);
                    B = f20 * (*(float *)(d + 0x14) / 100.0f);
                    C = A - f23;
                    f0 = B;
                    flag = B < C;
                    if (*(int *)(d + 0x18) == 0) {
                        flag = C < B;
                    }
                    if (flag) {
                        f0 = C;
                    }
                    r = func_001FA898_r(f0 + 0.5f);
                    dd = *(int *)(d + 0x1C);
                    m = r;
                    q = r / dd;
                    d1 = *(int *)(d + 0x4);
                    ia = 0;
                    fbz = 0;
                    P = D_L07_001B0830[d1];
                    if (q != 0) {
                        m = q;
                    }
                    func_001E9730(D_L07_00211E40, r, m);
                    if (r > 0) {
                        f21 = 12.0f;
                        f20 = 10.0f;
                        rem = r - m;
                        do {
                            for (;;) {
                                func_L00_0025E860(P, vec, &ia, (float *)&fbz, f22, 1);
                                d9 = *(int *)(d + 0x24);
                                if (d9 == -1) {
                                    break;
                                }
                                dist = func_001F9D48((char *)D_L07_00160058_ease + (d9 << 8) + 0x10, vec);
                                if (f21 < dist) {
                                    break;
                                }
                                f22 = f22 + f20;
                            }
                            r0 = func_00120778(vec[0]);
                            r1 = func_00120778(vec[1]);
                            r2 = func_00120778(vec[2]);
                            r3 = func_00120778(f22);
                            func_001E9730(D_L07_00211E68, k, m, r0, r1, r2, r3);
                            func_L00_002C6608(vec, k, m, 0);
                            f22 = f22 + func_002140F8(*(float *)(d + 0x20) / f20, 2.0f);
                            if (rem < m) {
                                m = rem;
                                func_001E9730(D_L07_00211E98, rem);
                            }
                            t = rem;
                            rem = t - m;
                        } while (t > 0);
                    }
                }
            }
            i = i + 1;
        } while (((int *)&D_L07_00161D30)[i] != -1);
        ((unsigned char *)moby)[0x20] = 2;
    }
}
