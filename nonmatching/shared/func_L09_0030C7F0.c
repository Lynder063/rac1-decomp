/* NON_MATCHING func_L09_0030C7F0 -- src/overlays/shared/vendor_002C6B30.c
 * Best so far: SIZE ours 2260 / retail 2268, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   What it does: spawner-egg update (class 0x75E). Dispatches on moby[0x20] (state 0/1/2), steers the egg with ve
 *   Best: p6.c, SIZE 2260 vs retail 2268 (8 bytes short, 10 runs of 16 used). Everything after the dispatch matche
 *   Would unblock: a source shape that makes GCC emit the `beql st,0` out-of-line with `b CF9C` back to the tail; 
 */
extern int func_L00_001FEF78(void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern int func_L00_001EFFF0(void *, void *, int, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF610(void *, void *, void *);
extern float func_001F9CE8(void *);
extern float func_L00_001FF860(float, float);
extern int func_L00_001F3958(void);
extern void func_001F9C30(void *, void *, float);
extern float func_001F9CB8(void *);
extern int func_L00_001F10E0(float, void *, int, void *);
extern int func_001F9938(void *);
extern int func_0022ED80(int, int, int);
extern float func_002140F8(float, float);
extern float func_L00_0025F368(float);
extern float func_00214358(void *, int, float);
extern int func_L09_0030BB28(void *, void *);
extern void func_L09_0030C790(void *moby, char *data);
extern void func_L00_0025B040(unsigned char *, float);
extern float D_0015EE60 MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern char D_L09_00174060[];

// Spawner egg update (class 0x75E): steers toward its target, checks nearby mobies, clamps its bounds.
void func_L09_0030C7F0(char *moby) {
    char *d = *(char **)(moby + 0x78);
    char *pos = moby + 0x10;
    char v0[16];
    char tmp[16];
    char tmp2[16];
    char *g;
    char *g20;
    char *g16;
    char *p;
    char *q;
    char *o;
    char **sl;
    float a, b, k, f, dist, s;
    int st, n, r, r2, r3;

    func_L00_001FEF78(d + 0x1B);
    qcopy(v0, pos);
    st = (unsigned char)moby[0x20];
    if (st != 1) {
        if (st < 2) {
            if (st == 0) {

        b = *(float *)(*(char **)(moby + 0x24) + 0x24);
        a = *(float *)(moby + 0x2C);
        k = D_0015EE60 * 0.05f;
        *(float *)(moby + 0x2C) = a + (b - a) * k;
        func_001F9BD8(pos, pos, d);
        func_L00_001FF4B0(tmp, d, 0.2f);
        func_001F9BD8(tmp, tmp, pos);
        *(int *)(moby + 0x94) = 0;
        *(int *)(*(char **)(d + 0x10) + 0x94) = 0;
        r = func_L00_001EFFF0(v0, tmp, 4, moby, 0);
        if (r != 0) {
            g = D_L09_00174060;
            func_001F9BF0(tmp, g, tmp);
            func_L00_001FF4B0(tmp, tmp, 0.215f);
            func_001F9BD8(pos, pos, tmp);
            g20 = g - 0x20;
            if (*(char **)(g20 + 0x18) == 0) {
                g16 = g + 0x20;
                func_L00_001FF610(d, d, g16);
                f = func_001F9CE8(g16);
                if (func_L00_001FF860(*(float *)(g20 + 0x48), f) < 0.698f) {
                    if (func_L00_001F3958() == -1) {
                        func_001F9C30(d, d, 0.5f);
                        if (func_001F9CB8(d) < 0.025f) {
                            moby[0x20] = 1;
                        }
                    }
                }
            } else if (*(short *)(*(char **)(g20 + 0x18) + 0xA6) != 0x75E) {
                g16 = g + 0x20;
                func_L00_001FF610(d, d, g16);
                f = func_001F9CE8(g16);
                if (func_L00_001FF860(*(float *)(g20 + 0x48), f) < 0.698f) {
                    if (func_L00_001F3958() == -1) {
                        func_001F9C30(d, d, 1.2f);
                    }
                }
            } else {
                f = func_002140F8(0.9f, 1.1f);
                *(float *)(d + 0x8) = *(float *)(d + 0x8) * f;
            }
            if (((unsigned char *)d)[0x1B] == 0) {
                func_0022ED80(0, 0, (int)moby);
                d[0x1B] = 12;
            }
        }
        r2 = func_L00_001F10E0(0.2f, moby + 0x10, 4, moby);
        if (r2 != 0) {
            g = D_L09_00174060;
            g16 = g + 0x10;
            func_001F9BF0(tmp, g, g16);
            func_L00_001FF4B0(tmp, tmp, 0.015f);
            func_001F9BD8(moby + 0x10, g16, tmp);
            g20 = g - 0x20;
            if (*(char **)(g20 + 0x18) == 0) {
                g16 = g + 0x20;
                func_L00_001FF610(d, d, g16);
                f = func_001F9CE8(g16);
                if (func_L00_001FF860(*(float *)(g20 + 0x48), f) < 0.698f) {
                    if (func_L00_001F3958() == -1) {
                        func_001F9C30(d, d, 0.5f);
                        if (func_001F9CB8(d) < 0.025f) {
                            moby[0x20] = 1;
                        }
                    }
                }
            } else if (*(short *)(*(char **)(g20 + 0x18) + 0xA6) != 0x75E) {
                g16 = g + 0x20;
                func_L00_001FF610(d, d, g16);
                f = func_001F9CE8(g16);
                if (func_L00_001FF860(*(float *)(g20 + 0x48), f) < 0.698f) {
                    if (func_L00_001F3958() == -1) {
                        func_001F9C30(d, d, 1.2f);
                    }
                }
            } else {
                f = func_002140F8(0.9f, 1.1f);
                *(float *)(d + 0x8) = *(float *)(d + 0x8) * f;
            }
            if (((unsigned char *)d)[0x1B] == 0) {
                func_0022ED80(0, 0, (int)moby);
                d[0x1B] = 12;
            }
        }
        p = *(char **)(d + 0x10);
        q = *(char **)(p + 0x78);
        sl = (char **)(q + 0xB0);
        for (n = 19; n >= 0; n--, sl++) {
            o = *sl;
            if (o == moby) continue;
            if (o == 0) continue;
            if (*(short *)(o + 0xA6) != 0x75E) continue;
            if ((unsigned char)o[0x20] == 0xFE) continue;
            if ((unsigned char)o[0x20] == 0xFD) continue;
            func_001F9BF0(tmp2, pos, o + 0x10);
            *(int *)(tmp2 + 8) = 0;
            dist = func_001F9CB8(tmp2);
            if (dist < 0.8f) {
                s = (0.8f - dist) * (D_0015EE60 * -0.5f + 1.0f);
                func_001F9C30(tmp2, tmp2, s);
                func_001F9BD8(pos, pos, tmp2);
            }
        }
        r3 = func_001F9938(d + 0x18);
        if (r3 != 0) {
            moby[0x20] = 2;
        }
        *(float *)(moby + 0x40) = func_L00_0025F368(*(float *)d);
        *(float *)(moby + 0x44) = func_L00_0025F368(*(float *)(d + 4));
        *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);
        p = *(char **)(d + 0x10);
        *(int *)(p + 0x94) = *(int *)(*(char **)(p + 0x24) + 0x10);
        *(float *)(d + 0x8) = *(float *)(d + 0x8) - D_0015EE70 * 9.8f;
        *(float *)(moby + 0x40) = *(float *)(moby + 0x40) + D_0015EE60 * 0.01f;
        *(float *)(moby + 0x44) = *(float *)(moby + 0x44) + D_0015EE60 * 0.02f;
            }
        } else {
            if (st == 2) {

        k = D_0015EE60 * 0.05f;
        a = *(float *)(moby + 0x2C);
        *(float *)(moby + 0x2C) = a - a * k;
        p = *(char **)(d + 0x14);
        if (p != 0 && ((unsigned char *)d)[0x1A] != 0) {
            q = *(char **)(p + 0x24);
            a = *(float *)(p + 0x2C);
            b = *(float *)(q + 0x24);
            *(float *)(p + 0x2C) = a + (b - a) * k;
        }
        a = *(float *)(moby + 0x2C);
        b = *(float *)(*(char **)(moby + 0x24) + 0x24);
        if (a < b * (D_0015EE60 * 0.05f)) {
            *(float *)(moby + 0x2C) = 0.0001f;
            p = *(char **)(d + 0x14);
            if (p == 0 || (unsigned char)p[0x20] == 0xFE || (unsigned char)p[0x20] == 0xFD
                || ((unsigned char *)d)[0x1A] == 0) {
                func_L09_0030C790(moby, d);
            } else {
                q = *(char **)(p + 0x24);
                if (*(float *)(q + 0x24) - 0.01f <= *(float *)(p + 0x2C)) {
                    func_L09_0030C790(moby, d);
                }
            }
        }
            }
        }
    } else {

        f = func_00214358(pos, 0, 0.5f);
        *(float *)(moby + 0x18) = f + 0.2f;
        *(int *)(moby + 0x1C) = 0;
        qcopy(tmp, pos);
        *(int *)(d + 0x14) = func_L09_0030BB28(*(void **)(d + 0x10), tmp);
        moby[0x20] = 2;
    }

    func_L00_0025B040((unsigned char *)moby,
                      (*(float *)(moby + 0x2C) * 0.3f) / *(float *)(*(char **)(moby + 0x24) + 0x24));
    if (*(float *)(moby + 0x18) < 5.0f || *(float *)(moby + 0x18) > 500.0f) {
        func_L09_0030C790(moby, d);
        return;
    }
    if (*(float *)(moby + 0x10) < 5.0f) *(float *)(moby + 0x10) = 5.0f;
    if (*(float *)(moby + 0x10) > 1020.0f) *(float *)(moby + 0x10) = 1020.0f;
    if (*(float *)(moby + 0x14) < 5.0f) *(float *)(moby + 0x14) = 5.0f;
    if (*(float *)(moby + 0x14) > 1020.0f) *(float *)(moby + 0x14) = 1020.0f;
    if (*(float *)(moby + 0x18) < 5.0f) *(float *)(moby + 0x18) = 5.0f;
    if (*(float *)(moby + 0x18) > 1020.0f) *(float *)(moby + 0x18) = 1020.0f;
}
