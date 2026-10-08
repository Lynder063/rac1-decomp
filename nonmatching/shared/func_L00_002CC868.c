/* NON_MATCHING func_L00_002CC868 -- src/overlays/shared/vendor_002C96D0.c
 * Best so far: SIZE ours 2204 / retail 2212, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped at run 11 of 14 (best p6.c: 2204 bytes vs retail 2212, still 8 short, many instructions differ). Moby 
 *   Differences left: retail keeps -1.0f and 1.0f in $f20/$f21 across the loop's random calls (ours rebuilds lui/m
 *   Unblock: a source form that keeps the -1.0f/1.0f constants live in saved FP regs across calls, and an exit sha
 */
extern char D_0013E633[];
extern char D_0013E15A[];
extern char D_L00_00173F60[];
extern char D_L00_00173F80[];
extern char D_L00_001670F0[];
extern char D_L00_00166EC0[];
extern float D_L00_00161964;
extern short D_L00_00161950;
extern short D_L00_0016194C;
extern short D_L00_00161954;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern void func_L00_002CD110(char *m, int flag);
extern float func_001F9D48(void *, void *);
extern int func_L00_00258BC8(int, int);
extern void func_L00_0026EBC0(char *, char *, int, int, float);
extern void func_L00_001FF500(void *, void *, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_L00_001FF860(float, float);
extern float func_L00_00259148(float *, float, float, float, float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_L00_001FF610(void *, void *, void *);
extern float func_002140F8(float, float);
extern void func_002156E0(void *, void *, void *, float);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9CA0(void *, void *, void *);
extern float func_001F9CE8(void *);
extern void func_0022ED80(int, int, char *);
extern float func_001FA888(int);
extern int func_002140B0(int);
extern float func_L00_00258C80(float, float);
extern int func_001F9938(void *);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern int func_L00_001F3958(void);
extern int func_001F9850(int);
extern float func_001FA748(float, float);
extern float func_001F9CB8(void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_0020D678(void *);

typedef int U128X __attribute__((mode(TI)));

typedef struct {
    float v[4];
} __attribute__((aligned(16))) Q4x;

/* Update for moby class 305: steers the moby toward its target, applies the spring step to its two velocity terms and runs the attached effect. */
void func_L00_002CC868(char *m) {
    char *d;
    char *pos;
    Q4x c0, tmp;
    char q[0x24];
    Q4x v20, v60, v70;
    float f20, f21, f22, f23;
    char *g;
    char *g6;
    char *w;
    char *r17;
    unsigned char *fl;
    char **p;
    int i;
    int s;
    int lim;
    int r16;
    int t;
    int v;

    *(float *)(m + 0x44) = func_001FA748(*(float *)(m + 0x44), -D_L00_00161964);
    d = *(char **)(m + 0x78);

    if (func_001F9CB8(d) < 0.1f) {
        s = *(short *)(d + 0x24);
        lim = func_001F9850(0x23);
        lim = lim - func_001F9850(1);
        if (s < lim && *(int *)(d + 0x28) == 0) {
            f21 = *(float *)(d + 0x18);
            f23 = *(float *)(d + 0x1C);
        } else {
            f21 = *(float *)(m + 0x48);
            f23 = *(float *)(m + 0x44);
        }
        pos = m + 0x10;
    } else {
        pos = m + 0x10;
        func_L00_001FF860(*(float *)d - *(float *)(m + 0x10), *(float *)(d + 4) - *(float *)(m + 0x14));
        {
            float r = func_001F9D48(pos, d);
            f21 = r;
            f23 = -func_L00_001FF860(r, *(float *)(d + 8) - *(float *)(m + 0x18));
        }
    }

    if (func_001F9CB8(d) < 0.1f) {
        float g70 = D_0015EE70;
        float t13 = f21;
        f20 = 6.28318548f;
        f21 = 3.14159274f;
        {
            float h = D_0015EE6C;
            *(float *)(m + 0x48) = func_L00_00259148((float *)(d + 0x10), *(float *)(m + 0x48), t13, g70 * f20, g70 * f21, h * f20);
        }
        {
            float h = D_0015EE6C;
            g70 = D_0015EE70;
            *(float *)(m + 0x44) = func_L00_00259148((float *)(d + 0x14), *(float *)(m + 0x44), f23, g70 * f20, g70 * f21, h * f20);
        }
    } else {
        float g70 = D_0015EE70;
        float t13 = f21;
        f22 = 6.28318548f;
        f21 = 3.14159274f;
        f20 = 4.71238899f;
        {
            float h = D_0015EE6C;
            *(float *)(m + 0x48) = func_L00_00259148((float *)(d + 0x10), *(float *)(m + 0x48), t13, g70 * f22, g70 * f21, h * f20);
        }
        {
            float h = D_0015EE6C;
            g70 = D_0015EE70;
            *(float *)(m + 0x44) = func_L00_00259148((float *)(d + 0x14), *(float *)(m + 0x44), f23, g70 * f22, g70 * f21, h * f20);
        }
    }

    func_00215C00(&tmp, D_0015EE6C * 40.0f, *(float *)(m + 0x48), -*(float *)(m + 0x44));
    qcopy(&c0, pos);
    func_001F9BD8(pos, pos, &tmp);

    if (*(float *)(m + 0x10) < 0.0f) {
        goto ret0;
    }
    if (*(float *)(m + 0x14) < 0.0f) {
        goto ret0;
    }
    if (*(float *)(m + 0x18) < 0.0f) {
        goto ret0;
    }
    if (64.0f < func_001F9D48(pos, D_L00_00166EC0)) {
        goto ret0;
    }

    *(int *)(q + 0x14) = 0x10001;
    *(float *)(q + 0x1C) = 0.25f;
    *(char **)(q + 0x10) = m;
    *(int *)(q + 0x20) = 1;
    f20 = 1.0f;
    func_001F9BF0(q, pos, D_0013E633 + 0xE9D);
    func_L00_001FF500(q, q, f20);
    *(unsigned char *)(q + 0x19) = 1;
    *(float *)(q + 0x0C) = 5627.92480f;
    *(unsigned short *)(q + 0x1A) = *(unsigned short *)(m + 0xA6);
    *(float *)(q + 0x08) = f20;
    *(unsigned char *)(q + 0x18) = 1;
    if (func_001F9938(d + 0x24) != 0) {
        goto ret0;
    }

    if (func_L00_001EFFF0(&c0, pos, 0, *(int *)(d + 0x20), (int)q) == 0) goto CCEB8;

    if (func_L00_001F3958() == 0) {
        s = *(short *)(d + 0x24);
        if (func_001F9850(3) < s) {
            *(short *)(d + 0x24) = func_001F9850(3);
        }
        goto CCEB8;
    }

    qcopy(pos, D_L00_00173F60);
    f21 = f20;
    f20 = -1.0f;
    for (i = 4; i >= 0; i--) {
        *(U128X *)&v60 = 0;
        v60.v[0] = func_002140F8(f20, f21);
        v60.v[1] = func_002140F8(f20, f21);
        v60.v[2] = func_002140F8(f20, f21);
        *(U128X *)&v20 = *(U128X *)&v60;
        func_L00_001FF610(&v60, &tmp, D_L00_00173F80);
        func_L00_001FF4B0(&v20, &v20, func_001F9CB8(&v60) * 0.5f);
        func_001F9BD8(&v60, &v60, &v20);
        func_L00_001FF4B0(&v60, &v60, func_002140F8(D_0015EE6C * 3.0f, D_0015EE6C * 6.0f));
        r16 = func_001F9850(10);
        t = func_001F9850(15);
        t = func_L00_00258BC8(r16, t);
        func_L00_0026EBC0(pos, (char *)&v60, 0x7F2F4F6F, t, 30000.0f);
    }

    fl = D_0013E15A + 0x4C6;
    if (fl[0xF] != 0) {
        *(int *)(d + 0x28) = *(int *)(d + 0x28) + 1;
        v = func_L00_001F3958();
        switch (v) {
        case 0: *(int *)(d + 0x28) = 1000; break;
        case 1: *(int *)(d + 0x28) = 1000; break;
        case 2: break;
        case 3: *(int *)(d + 0x28) = 1000; break;
        case 4: *(int *)(d + 0x28) = 1000; break;
        case 5: break;
        case 6: break;
        case 7: *(int *)(d + 0x28) = 1000; break;
        case 8: break;
        case 9: break;
        case 10: break;
        case 11: *(int *)(d + 0x28) = 1000; break;
        case 12: break;
        case 13: *(int *)(d + 0x28) = 1000; break;
        }
        fl = D_0013E15A + 0x4C6;
        if ((int)fl[0xF] + 5 < *(int *)(d + 0x28)) {
            goto ret1;
        }
    } else {
        goto ret0;
    }

    g = D_L00_00173F80;
    func_L00_001FF610(&v20, &tmp, g);
    *(float *)(m + 0x48) = func_L00_001FF860(*(float *)&v20.v[0], *(float *)&v20.v[1]);
    *(float *)(m + 0x44) = -func_L00_001FF860(func_001F9CE8(&v20), *(float *)&v20.v[2]);
    *(int *)(d + 0x10) = 0;
    *(int *)(d + 0x14) = 0;
    func_L00_001FF4B0(&v60, g, 0.05f);
    func_001F9BD8(pos, g - 0x20, &v60);

    g6 = *(char **)(D_0013E633 + 0x1EAD);
    if (g6 != 0 && *(short *)(g6 + 0xA6) == 0xA8 && (unsigned char)g6[0x20] != 0xFE && (unsigned char)g6[0x20] != 0xFD) {
        func_0022ED80(4, 0, g6);
    }

CCEB8:
    *(float *)(m + 0x44) = func_001FA748(*(float *)(m + 0x44), D_L00_00161964);
    r16 = *(short *)(d + 0x26) - *(short *)(d + 0x24);
    if (r16 < func_001F9850(13)) {
        f20 = func_001FA888(r16);
        f20 = f20 / func_001FA888(func_001F9850(13));
        f20 = f20 * *(float *)&D_L00_00161950;
    } else {
        f20 = *(float *)&D_L00_00161950;
    }
    func_001F9BF0(&tmp, &c0, pos);
    func_L00_001FF4B0(&tmp, &tmp, f20);
    qcopy(&v20, pos);
    w = *(char **)(d + 0x2C);
    if (w != 0) {
        qcopy(w + 0x10, &v20);
    }

    p = (char **)(d + 0x30);
    f20 = 0.0f;
    for (i = 15; i >= 0; i--, p++) {
        r17 = *p;
        if (r17 == 0) continue;
        func_001F9BD8(r17 + 0x10, &v20, &tmp);
        qcopy(&v20, r17 + 0x10);
        *(float *)(r17 + 0x10) = *(float *)(r17 + 0x10) + func_L00_00258C80(f20, *(float *)&D_L00_0016194C);
        *(float *)(r17 + 0x14) = *(float *)(r17 + 0x14) + func_L00_00258C80(f20, *(float *)&D_L00_0016194C);
        *(float *)(r17 + 0x18) = *(float *)(r17 + 0x18) + func_L00_00258C80(f20, *(float *)&D_L00_0016194C);
        func_001F9C30(&tmp, &tmp, *(float *)&D_L00_00161954);
    }

    if (func_002140B0(5) != 0) {
        goto end;
    }
    func_001F9CA0(&v60, &tmp, D_L00_001670F0);
    f20 = 0.0f;
    func_002156E0(&v60, &v60, &tmp, func_L00_00258C80(f20, 3.14159274f));
    f21 = func_001F9CB8(&v60);
    if (f21 == f20) {
        goto end;
    }
    func_001F9C30(&v70, &v60, func_002140F8(D_0015EE6C * 0.5f, D_0015EE6C + D_0015EE6C) / f21);
    r16 = func_001F9850(10);
    t = func_001F9850(15);
    t = func_L00_00258BC8(r16, t);
    func_L00_0026EBC0(pos, (char *)&v70, 0x7F2F4F6F, t, 30000.0f);
    goto end;
ret1:
    func_L00_002CD110(m, 1);
    goto tail;
ret0:
    func_L00_002CD110(m, 0);
tail:
    func_0020D678(m);
end:
    return;
}
