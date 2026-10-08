/* NON_MATCHING func_L01_002F7700 -- src/overlays/shared/vendor_002F7700.c
 * Best so far: SIZE ours 1408 / retail 1400, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Water-current update (class 679): for each path in the moby's list, refresh the segment lengths (closed loop),
 *   Where it stops: the size matches (p7 onward), but retail keeps moby in $23 and the state pointer in $21 while 
 *   Unblock: a register-order lever that gives moby the higher saved register, then the epilogue form follows.
 */
typedef struct { float x, y, z, len; } WPt;
typedef struct { int n; int pad[3]; WPt p[1]; } WPath;
typedef struct { int idx[24]; float f60; float f64; int flag68; int pad6c; int n70; } WState;

extern char D_0013E633_c[] __asm__("D_0013E633");
extern char *D_L01_001B0C30[];
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE60 MACRO_ADDR;
extern float func_001F9D10_1edff8(void *, void *) __asm__("func_001F9D10");
extern float func_001F9D48(void *, void *);
extern void func_L00_0025EFC0(void *, void *, void *, int *, float *, int, float, float, float);
extern int func_L00_0025E860(void *, void *, int *, float *, float, int);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CE8(void *);
extern float func_L00_001FF860(float, float);
extern float func_00214D28(float *p, float target, float maxstep);
extern float func_001F9CB8(void *a);
extern void func_L00_001FF4B0(void *, void *, float);
void func_L00_0025C918_20A28(float *, float *, float, float, float, float) __asm__("func_L00_0025C918");
extern void func_001F9BD8(void *, void *, void *);
extern int func_001F9850(int);
extern void func_001F9C30(void *, void *, float);

// Water current (class 679) update: refresh segment lengths, pick the path nearest the hero, steer the current.
void func_L01_002F7700(char *moby) {
    WState *w = *(WState **)(moby + 0x78);
    char *G;
    char *B;
    char **tab;
    int i, k, j, n, bi, ti, r;
    char *bestp;
    float best, f, s, s2, tf, bf, zf, speed;
    WPt tmp, bestv, v, u;

    if (w != 0 && w->idx[0] != -1 && w->n70 != 0) {
        if (w->flag68 == 0) {
            tab = D_L01_001B0C30;
            w->flag68 = 1;
            for (i = 0; i < w->n70; i++) {
                WPath *pt = (WPath *)tab[w->idx[i]];
                n = pt->n;
                for (k = 0; k < n - 1; k++) {
                    pt->p[k].len = func_001F9D10_1edff8(&pt->p[k], &pt->p[k + 1]);
                }
                pt->p[k].len = func_001F9D10_1edff8(&pt->p[k], &pt->p[0]);
            }
            *(unsigned char *)(moby + 0x30) = 0xFF;
        }
        G = D_0013E633_c + 0xE1D;
        if (*(int *)(G + 0x208C) == 0x10) {
            B = G + 0x80;
            best = 10000.0f;
            bestp = 0;
            tab = D_L01_001B0C30;
            for (k = 0; k < w->n70; k++) {
                char *pe = tab[w->idx[k]];
                func_L00_0025EFC0(pe, B, &tmp, &ti, &tf, 0, 996.0f, 5.0f, 0.0f);
                f = func_001F9D48(B, &tmp);
                if (f < best) {
                    bestp = pe;
                    bestv = tmp;
                    best = f;
                    bi = ti;
                    bf = tf;
                }
            }
            if (bestp != 0) {
                r = func_L00_0025E860(bestp, &tmp, &bi, &bf, 0.3f, 0);
                if (!(w->f64 < best)) {
                    if (D_0015EE84_m == 1) {
                        WPath *bp = (WPath *)bestp;
                        float c;
                        s = 0.0f;
                        n = bp->n;
                        if (bi < n - 1) {
                            for (j = bi; j < n - 1; j++) {
                                s += bp->p[j].len;
                            }
                        }
                        c = D_0015EE6C;
                        if (s < 8.0f) {
                            f = c * 3.0f;
                        } else if (s < 15.0f) {
                            f = c * 4.0f;
                        } else if (s < 30.0f) {
                            f = c * 5.0f;
                        } else {
                            f = c * 9.0f;
                        }
                        w->f60 = f;
                    }
                    if (r != 0) {
                        char *F6D = D_0013E633_c + 0xF6D;
                        float c2 = D_0015EE60 * -0.0099999905f + 1.0f;
                        func_001F9C30(F6D, F6D, c2);
                        qcopy(F6D - 0x60, F6D);
                        *(int *)(F6D - 0x54) = 0;
                    } else {
                        func_001F9BF0(&v, &tmp, &bestv);
                        s2 = func_001F9CE8(&v);
                        *(float *)(G + 0x9D4) = func_L00_001FF860(s2, v.z);
                        s2 = func_L00_001FF860(v.x, v.y);
                        *(float *)(G + 0x9D0) = s2;
                        *(int *)&v.z = 0;
                        if (*(float *)(G + 0x9DC) < w->f60) {
                            func_00214D28((float *)(G + 0x9DC), w->f60, D_0015EE70 * 6.0f);
                        } else {
                            func_00214D28((float *)(G + 0x9DC), w->f60, s2 * 6.0f);
                        }
                        f = func_001F9CB8(&v);
                        if (0.001f < f) {
                            char *F0D = D_0013E633_c + 0xF0D;
                            func_L00_001FF4B0(F0D, &v, *(float *)(F0D + 0x8EC));
                        }
                        B = D_0013E633_c + 0xE9D;
                        func_001F9BF0(&u, &bestv, B);
                        zf = 0.0f;
                        speed = D_0015EE6C * 5.0f;
                        u.z = zf;
                        {
                            float q0 = -func_001F9CE8(&u);
                            float d1 = D_0015EE64;
                            func_L00_0025C918_20A28(&q0, (float *)(B + 0x960), zf, d1 * 0.008f, d1 * 0.3f, speed);
                        }
                        f = func_001F9CB8(&u);
                        if (f < *(float *)(G + 0x9E0)) {
                            *(float *)(G + 0x9E0) = f;
                        }
                        if (*(float *)(G + 0x9E0) < f) {
                            func_L00_001FF4B0(&u, &u, *(float *)(G + 0x9E0));
                        }
                        func_001F9BD8(B + 0x70, B + 0x70, &u);
                        *(float *)(G + 0xFC) = zf;
                        qcopy(B + 0xD0, B + 0x70);
                        {
                            short old = *(short *)(G + 0x1E0);
                            if (old < func_001F9850(30)) {
                                *(short *)(G + 0x1E0) = func_001F9850(30);
                            }
                        }
                    }
                }
            }
        }
    }
}
