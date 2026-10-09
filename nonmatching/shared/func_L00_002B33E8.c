/* NON_MATCHING func_L00_002B33E8 -- src/overlays/shared/vendor_002B33E8.c
 * Best so far: SIZE ours 3824 / retail 3928, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped (s10, 3928 bytes, 16-run budget, 15 used). Best candidate p9.c (SIZE 3796 vs 3928, 132 bytes short); p
 *   Remaining differences: retail re-materializes the D_0013F450 pointer (lui/addiu -0xBB0) in each block where ou
 *   Unblock: a model of where retail recomputes D+0xE1D per block and which pointers it spills; without that the s
 */
extern char D_0013E633[];
extern char D_0013A5E0[];
extern char D_L00_00166D80[];
extern char D_0014171B[] NOT_SDA;
extern int D_0015EFA4 MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern int func_L00_00234638(int, int);
extern float func_L00_001FF860(float, float);
extern float func_001F9CE8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_00215C00(void *, float, float, float);
extern void func_00213DE0(void *, int, int, int);
extern void func_L00_00204130(void);
extern int func_L00_002B6BC8(void *, void *, float, float);
extern int func_001F9850(int);
extern int func_0022ED80(int, int, int);
typedef int u128 __attribute__((mode(TI)));
extern char D_L00_00166EC0[];
extern char *D_L00_001ABD80[];
extern char D_L00_00173F40[];
extern float D_L00_00173F68;
extern float D_L00_0017ADF4;
extern int D_L00_0015F6A8 MACRO_ADDR;
extern int D_L00_0015F6B0_w __asm__("D_L00_0015F6B0") MACRO_ADDR;
extern unsigned char D_L00_001803C0[];
extern float D_0015EE6C MACRO_ADDR;
extern int func_001F9908(int *);
extern void func_L00_002B2DD8(unsigned char *);
extern void func_001FA480(void *, void *);
extern void func_001FA4A0(void *, void *);
extern void func_L00_00222B80(int, int);
extern void func_001F9EE8(void *, void *, void *);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern float func_001FA888(int);
extern float func_001F9878(float);
extern float func_001FA7D8(float);
extern void func_L00_001EE2E0(int, int, float, float, void *, int, int, float, int);
extern int func_L00_00234718(int);
extern float func_001F9D10(void *, void *);
extern float func_001F9B88(float);
extern float func_001F9FC0(float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern float func_001F9D48(void *, void *);
extern float func_001FA850(float, float);
extern void func_001F9BC0(void *);
extern void func_L00_00250800(void *, int, void *);
extern unsigned char *func_L00_0025D390(void *);
extern int func_001F9938(void *);
extern void func_L00_0023F1D0(int);
extern int func_L00_0023F0D0(float *, float, float, float, float, float);
extern void func_L00_00232C10(int, int, float);
extern void func_L00_0020EB60(void);
extern int func_L00_002608F0(char *);
extern unsigned char *func_L00_002B0F58(unsigned char *, void *, unsigned char *, float, float, float, float, float);
extern float func_L00_002B1238(int);
extern void func_L00_002B30C8(void *);
extern void func_001F9EC0_33E8(void *, void *, void *) __asm__("func_001F9EC0");

/* Devastator (class 157) update: aims at its target, paces its shots and moves its spread points. */
void func_L00_002B33E8(unsigned char *m) {
    unsigned char *p = *(unsigned char **)(m + 0x78);
    unsigned char *g;
    unsigned char *u;
    unsigned char *o;
    unsigned char *o30 = 0;
    unsigned char *t18 = 0;
    unsigned char *w;
    unsigned char *ent;
    unsigned char *pp;
    float s0[4];
    float s30[4];
    float s70[4];
    float s80[4];
    float s90[4];
    float sa0[4];
    float f20, f21, f22, f23, f24, f25, f26, f27, f28, f29, f30, f31;
    float fb0, fx, fa, fv;
    int i, v3, r, r2, sh, k;

    func_L00_002B2DD8(m);
    f30 = 0.75f;
    f31 = 10000.0f;
    if (m[0x20] == 0) {
        m[0x20] = 1;
        *(short *)(p + 0x1C) = -1;
        *(short *)(p + 0x1E) = 0;
    }
    func_001FA480(s0, D_L00_00166D80);
    func_001FA4A0(s30, s0);
    func_001F9908((int *)p);
    if (func_001F9908((int *)(p + 0x14)) != 0) {
        *(unsigned char **)(p + 0x10) = 0;
    } else if (*(unsigned char **)(p + 0x10) != 0 && ((*(unsigned char **)(p + 0x10))[0x20] & 0x80)) {
        *(unsigned char **)(p + 0x10) = 0;
    }
    if (*(int *)(D_0013E633 + 0xE1D + 0x2084) == 1) func_L00_00222B80(0x1E, 1);
    g = D_0013E633 + 0xE1D;
    if (*(int *)(g + 0x2084) == 0x1E && (*(unsigned short *)(*(unsigned char **)(g + 0x2080) + 0x34) & 1) && g[0x20AC] == 0) {
        *(u128 *)s70 = 0;
        s70[2] = 70.0f;
        func_001F9EE8(s70, s70, s30);
        func_001F9BD8(s80, D_L00_00166EC0, s70);
        if (func_L00_001EFFF0(D_L00_00166EC0, s80, 0, (int)m, 0) != 0) {
            unsigned char *gg = D_L00_00173F40;
            w = *(unsigned char **)(gg + 0x18);
            if (w != 0 && (*(unsigned short *)(w + 0x34) & 0x1000)) {
                *(unsigned char **)(p + 0x10) = w;
                *(int *)(p + 0x14) = func_001F9850(0x14);
                *(float *)(p + 0x18) = *(float *)(gg + 0x28) - *(float *)(*(unsigned char **)(p + 0x10) + 0x18);
            }
        }
        f22 = 240.0f;
        r = func_001F9850(0xF0);
        f23 = 0.017453292f;
        f24 = 90.0f;
        f20 = func_001FA888(D_L00_0015F6B0_w % r);
        fx = func_001F9878(f22);
        f20 = f20 * 360.0f / fx;
        fx = func_001FA7D8(f20 * f23);
        func_L00_001EE2E0((int)m, 0xFF180A65, 1.0f, fx, 0, 0x27, -1, f24, 4);
        if (*(unsigned char **)(p + 0x10) != 0 && *(int *)p == 0 && func_L00_00234718(-1) != 0) {
            fx = func_001F9D10(D_L00_00166EC0, *(unsigned char **)(p + 0x10) + 0x10);
            pp = *(unsigned char **)(p + 0x10) + 0x10;
            *(u128 *)s90 = *(u128 *)pp;
            fx = fx / 100.0f;
            fx = fx * 0.57f;
            s90[2] = s90[2] + *(float *)(p + 0x18);
            f21 = func_001F9B88(0.9f - fx);
            r = func_001F9850(0xF0);
            f20 = func_001FA888(D_L00_0015F6B0_w % r);
            fx = func_001F9878(f22);
            f20 = f20 * -360.0f / fx;
            fx = func_001FA7D8(f20 * f23);
            func_L00_001EE2E0((int)m, 0xFF0FFF0F, f21, fx, s90, 0x27, -1, f24, 4);
        }
    }
    {
        unsigned char *g2 = D_0013E633 + 0xE1D;
        if (*(int *)(g2 + 0x12B0) != 0) {
            *(unsigned char **)(p + 0x10) = *(unsigned char **)(g2 + 0x12B8);
        *(int *)(p + 0x14) = func_001F9850(0x14);
        *(float *)(p + 0x18) = D_L00_00173F68 - *(float *)(*(unsigned char **)(p + 0x10) + 0x18);
        }
    g = g2;
    }
    if (D_L00_0015F6A8 != 2 && *(int *)p == 0 && g[0x20AC] == 0 && m[0x52] < 2 &&
        (*(int *)(D_0013A5E0 + 0x2600) & *(int *)(g + 0x10A0)) != 0) {
        r = func_001F9850(0x16);
        if (r < *(int *)(g + 0x10B0)) {
            *(u128 *)s70 = 0;
            if (m[0x53] == 0) func_00213DE0(m, 1, 0, func_001F9850(4));
            if (*(int *)(g + 0x2084) == 0x1E && (*(unsigned short *)(*(unsigned char **)(g + 0x2080) + 0x34) & 1)) {
                s70[2] = D_0015EE6C * 10.0f;
                func_001F9EE8(s70, s70, s30);
            } else {
                s70[0] = D_0015EE6C * 10.0f;
                func_001F9EC0_33E8(s70, s70, D_0013E633 + 0x145D);
            }
            if (func_L00_00234638(-1, 1) != 0) {
                o30 = 0;
                if (*(int *)(g + 0x12B0) != 0) f25 = *(float *)(g + 0x12BC);
                else f25 = func_L00_001FF860(s70[0], s70[1]);
                fb0 = f25;
                f24 = -func_L00_001FF860(func_001F9CE8(s70), s70[2]);
                f27 = f24;
                if (*(int *)(g + 0x2084) == 0x1E && (*(unsigned short *)(*(unsigned char **)(g + 0x2080) + 0x34) & 1)) {
                    func_001F9BC0(s80);
                    s80[0] = s80[0] + 0.15f;
                    s80[1] = s80[1] + 0.3f;
                    s80[2] = s80[2] + 0.75f;
                    func_001F9EE8(s80, s80, s30);
                    func_001F9BD8(s80, s80, D_L00_00166EC0);
                    if (*(unsigned char **)(p + 0x10) != 0) f30 = *(float *)(p + 0x18);
                    goto L3D00;
                }
                func_L00_00250800(m, 0, s80);
                f29 = 0.5f;
                f28 = 0.17453292f;
                for (i = 0; (o = (unsigned char *)D_L00_001ABD80[i]) != 0; i++) {
                    if ((signed char)o[0x20] < 0) continue;
                    *(u128 *)s90 = *(u128 *)(o + 0x10);
                    t18 = func_L00_0025D390(o);
                    if (t18 != 0) s90[2] = s90[2] + *(float *)(t18 + 0x10);
                    else s90[2] = s90[2] + f29;
                    if ((*(unsigned short *)(o + 0x34) & 0x1000) == 0) continue;
                    if (*(unsigned char **)(o + 0x24) == 0) continue;
                    if (*(short *)(*(unsigned char **)(o + 0x24) + 0x46) != 5) continue;
                    f26 = func_L00_001FF860(s90[0] - s80[0], s90[1] - s80[1]);
                    fa = func_001F9D48(s80, s90);
                    f23 = func_L00_001FF860(fa, s90[2] - s80[2]);
                    f21 = func_001F9D10(s80, s90);
                    if (f21 < 2.5f) {
                        fa = func_L00_001FF860(*(float *)(o + 0x10) - *(float *)(g + 0x80), *(float *)(o + 0x14) - *(float *)(g + 0x84));
                        w = *(unsigned char **)(g + 0x2080);
                        fa = func_001FA850(*(float *)(w + 0x48), fa);
                        if (fa < 1.0471976f) {
                            fa = func_001F9B88(f23);
                            if (fa < 0.7853982f) {
                                f31 = f21;
                                f24 = -f23;
                                o30 = o;
                                f25 = f26;
                                break;
                            }
                        }
                    }
                    if (f31 < f21) continue;
                    fv = func_001FA888(*(unsigned char *)(D_0014171B + 0x6C));
                    f22 = fv * 0.6981317f;
                    func_00215C00(sa0, f21, f25, f24 + *(float *)(g + 0x2E4) * f29);
                    func_001F9BD8(sa0, sa0, s80);
                    fa = func_001F9D10(sa0, s90);
                    f20 = func_001F9FC0(fa / (f21 + f21));
                    f20 = f20 + f20;
                    if (f22 + f28 < f20) {
                        if (t18 != 0) {
                            fa = func_001FA888(t18[0xA]) * 0.125f;
                            if (fa < f21) {
                                fa = func_001F9FC0(fa / f21);
                                f20 = f20 - fa;
                                if (f20 < 0.0f) f20 = 0.0f;
                            }
                        }
                    }
                    if (f20 < f22 + f28) {
                        if (func_L00_001EFFF0(D_L00_00166EC0, s90, 6, (int)m, 0) != 0) continue;
                        f31 = f21;
                        f24 = -f23;
                        f25 = f26;
                        o30 = o;
                        if (func_L00_002608F0((char *)o) != 0) continue;
                        f30 = 0.5f;
                        *(unsigned char **)(p + 0x10) = o;
                        if (t18 != 0) f30 = *(float *)(t18 + 0x10);
                    }
                }
L3D00:
                func_0022ED80(0, 0, (int)m);
                r = func_001F9850(5);
                r2 = func_001F9850(10);
                *(short *)(p + 0x1E) = (short)(r + r2);
                if (*(int *)(g + 0x2084) != 0x1E) func_L00_002B30C8(m);
                u = D_0014171B + 0x65;
                if (*(unsigned short *)(u + 0x58) <= 0xFFFE) *(short *)(u + 0x58) = (short)(*(unsigned short *)(u + 0x58) + 1);
                r = func_001F9850(D_0015EFA4);
                sh = 0;
                if ((int)*(unsigned short *)(u + 0x5A) < r / 600) {
                    sh = D_0015EE84;
                    r2 = func_001F9850(D_0015EFA4);
                    *(short *)(u + 0x5A) = (short)(r2 / 600);
                }
                *(int *)(u + 0x5C) = *(int *)(u + 0x5C) | (1 << sh) | 0x80000000;
                if (*(short *)(g + 0x22C8) == 1 && *(int *)(g + 0x2084) != 0x1E) {
                    f24 = D_L00_0017ADF4;
                    f25 = *(float *)(m + 0x48);
                    goto L3E24;
                }
                if (f31 < 2.0f) goto L3E24;
                goto L3E64;
L3E24:
                t18 = func_L00_0025D390(*(unsigned char **)(p + 0x10));
                if (t18 != 0) f30 = *(float *)(t18 + 0x10);
                func_L00_002B0F58(m, s80, *(unsigned char **)(p + 0x10), f25, f24, f30, f25, f24);
                goto L3FA8;
L3E64:
                if (*(unsigned char **)(p + 0x10) != 0) goto L3F84;
                if (o30 != 0) {
                    f31 = func_L00_002B1238(6);
                    *(u128 *)s90 = *(u128 *)(o30 + 0x10);
                    t18 = func_L00_0025D390(o30);
                    if (t18 != 0) s90[2] = s90[2] + *(float *)(t18 + 0x10);
                    else s90[2] = s90[2] + 0.5f;
                    fa = *(float *)(g + 0x2E4) * 0.5f;
                    f27 = f27 - fa;
                    func_00215C00(sa0, f31, fb0, f27);
                    func_001F9BD8(sa0, sa0, s80);
                    f25 = func_L00_001FF860(s90[0] - sa0[0], s90[1] - sa0[1]);
                    fa = func_001F9D48(sa0, s90);
                    f24 = -func_L00_001FF860(fa, s90[2] - sa0[2]);
                    goto L3F80;
                } else {
                    if (*(int *)(g + 0x2084) != 0x1E) {
                        fa = *(float *)(g + 0x2E4) * 0.5f;
                        f27 = f27 - fa;
                        f24 = f24 - fa;
                    }
                }
L3F80:
L3F84:
                func_L00_002B0F58(m, s80, *(unsigned char **)(p + 0x10), f25, f24, f30, fb0, f27);
L3FA8:
                if (*(int *)(g + 0x208C) != 0) {
                    if (*(int *)(g + 0x2084) != 2 || !(*(float *)(g + 0x229C) < 0.7f)) goto L4010;
                }
                r = func_001F9850(10);
                func_L00_00232C10(0x36, 1, (float)r);
                goto L402C;
L4010:
                func_L00_0020EB60();
L402C:
                *(int *)p = func_001F9850(0x23);
            } else {
                func_0022ED80(1, 0, (int)m);
                goto L402C;
            }
        }
    }
    v3 = m[0x52];
    if (v3 == 2) goto L42A0;
    if (*(short *)(p + 0x1E) <= 0) goto L42A0;
    r = func_001F9850(10);
    if (r < *(short *)(p + 0x1E)) {
        r = func_001F9850(5);
        r2 = func_001F9850(10);
        f20 = func_001FA888(r + r2 - *(short *)(p + 0x1E));
        r = func_001F9850(5);
        f22 = f20 / (float)r;
        r = func_001F9850(5);
        r2 = func_001F9850(10);
        f20 = func_001FA888(r + r2 - *(short *)(p + 0x1E));
        r = func_001F9850(5);
        fv = (float)r;
        f20 = f20 * 0.8f;
        r = func_001F9850(5);
        f21 = f20 / fv;
        r2 = func_001F9850(10);
        f20 = func_001FA888(r + r2 - *(short *)(p + 0x1E));
        k = 5;
    } else {
        f20 = func_001FA888(*(short *)(p + 0x1E));
        r = func_001F9850(10);
        f22 = f20 / (float)r;
        f20 = func_001FA888(*(short *)(p + 0x1E));
        r = func_001F9850(10);
        f20 = f20 * 0.8f;
        f21 = f20 / (float)r;
        f20 = func_001FA888(*(short *)(p + 0x1E));
        k = 10;
    }
    r = func_001F9850(k);
    f20 = f20 * 0.5f / (float)r;
    func_L00_00250800(m, 0, s70);
    fx = func_L00_001FF860(*(float *)(g + 0x670), *(float *)(g + 0x674));
    fx = func_001F9F90(fx);
    s70[0] = s70[0] + fx;
    fx = func_L00_001FF860(*(float *)(g + 0x670), *(float *)(g + 0x674));
    fx = func_001F9FA8(fx);
    s70[1] = s70[1] + fx;
    s70[2] = s70[2] + 0.3f;
    if (*(short *)(p + 0x1C) == -1) {
        func_L00_0023F0D0(s70, 7.0f, 0.0f, f22, f21, f20);
        *(short *)(p + 0x1C) = (short)((unsigned int)D_L00_001803C0 >> 16);
    } else {
        ent = D_L00_001803C0 + *(short *)(p + 0x1C) * 32;
        *(u128 *)(ent + 0x10) = *(u128 *)s70;
        *(float *)(ent + 0x8) = f20;
        *(float *)(ent + 0x1C) = 7.0f;
        *(float *)(ent + 0x0) = f22;
        *(float *)(ent + 0x4) = f21;
    }
    func_001F9938(p + 0x1E);
    v3 = m[0x53];
    goto L42C0;
L42A0:
    if (*(short *)(p + 0x1C) != -1) {
        func_L00_0023F1D0(*(short *)(p + 0x1C));
        *(short *)(p + 0x1C) = -1;
        *(short *)(p + 0x1E) = 0;
    }
    v3 = m[0x53];
L42C0:
    if (v3 == 2) {
        func_L00_0023F1D0(*(short *)(p + 0x1C));
        *(short *)(p + 0x1E) = 0;
        *(short *)(p + 0x1C) = -1;
    }
}
