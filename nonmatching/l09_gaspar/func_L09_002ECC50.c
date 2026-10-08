/* NON_MATCHING func_L09_002ECC50 -- src/overlays/l09_gaspar/vendor_002C2B08.c
 * Best so far: SIZE ours 1388 / retail 1368, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Asteroid moby update: mode 1 and 2 dispatch to func_L09_002EC188 / func_L09_002EC010, otherwise a first-time s
 *   Left: m and d are swapped in registers ($fp holds m, retail holds d), the 0xBC re-read sits differently, and t
 */
typedef int q128 __attribute__((mode(TI)));

extern char *D_L09_001B0930[];
extern float D_0015EE6C MACRO_ADDR;
extern float D_L09_00166FC0[];
extern void func_L09_002EC010(unsigned char *m);
extern void func_L09_002EC188(void *m);
extern char *func_L09_002EBD30(void *m);
extern char *func_L09_002EBA58(void);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CB8(void *);
extern float func_002140F8(float, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern int func_002140B0(int);
extern int func_001F9850(int);
extern int func_001F9908(int *arg0);
extern float func_001FA748(float, float);
extern int func_L09_00295880(void *, void *, void *, int, int, float);
extern void func_0020D678(void *);
extern float func_001F9C78(void *a, void *b);

/* Asteroid moby update: picks a path from the moby's mode, then animates its spokes and drifts it. */
void func_L09_002ECC50(char *m) {
    char *d;
    char *a;
    char *q;
    char *p;
    char *t;
    int i;
    int k;
    int r;
    int n;
    unsigned char v;
    float f0;
    float f1;
    float f2;
    float f20;
    float f12;
    float v0[4];
    float v1[4];

    d = *(char **)(m + 0x78);
    if (*(int *)(d + 0x4C) == 2) {
        func_L09_002EC010((unsigned char *)m);
        return;
    }
    if (*(int *)(d + 0x4C) == 1) {
        func_L09_002EC188(m);
        return;
    }
    if (((unsigned char *)m)[0xBC] == 0) {
        if (*(int *)(d + 0x48) == 0) {
            f0 = D_0015EE6C * 10.0f;
            f1 = 0.0f;
            *(float *)(d + 0x30) = f1;
            *(float *)(d + 0x38) = f1;
            *(float *)(d + 0xC) = f0;
            *(float *)(d + 0x34) = f1;
            if (*(int *)(d + 0x10) >= 0) {
                a = D_L09_001B0930[*(int *)(d + 0x10)];
                if (*(int *)a > 0) {
                    for (i = 0; i < *(int *)a; i++) {
                        func_001F9BD8(d + 0x30, d + 0x30, a + 0x10 + i * 0x10);
                    }
                }
                f12 = 1.0f / (float)*(int *)a;
                func_001F9C30(d + 0x30, d + 0x30, f12);
                *(float *)(d + 0x38) = *(float *)(a + 0x18) - 10.0f;
                f20 = 32.0f;
                for (k = 22; k >= 0; k--) {
                    q = func_L09_002EBA58();
                    if (q != 0) {
                        char *d2 = *(char **)(q + 0x78);
                        func_001F9BF0(v0, d2 + 0x20, d2);
                        f0 = func_001F9CB8(v0);
                        f0 = func_002140F8(0.0f, f0 - f20);
                        func_L00_001FF4B0(v0, v0, f0);
                        func_001F9BD8(d2, d2, v0);
                    }
                }
                for (k = 49; k >= 0; k--) {
                    q = func_L09_002EBD30(m);
                    if (q != 0) {
                        char *q10 = q + 0x10;
                        char *d2 = *(char **)(q + 0x78);
                        char *d20 = d2 + 0x20;
                        n = func_002140B0(*(int *)a - 2);
                        f20 = func_002140F8(0.0f, 1.0f);
                        *(int *)(d2 + 0x14) = n;
                        i = n << 4;
                        p = a + i + 0x10;
                        func_001F9BF0(v0, a + i + 0x20, p);
                        func_001F9C30(v0, v0, f20);
                        func_001F9BD8(d20, v0, p);
                        *(q128 *)q10 = *(q128 *)d20;
                        func_001F9BD8(q10, a + 0x10, d2);
                        func_001F9BD8(q10, q10, D_L09_00166FC0);
                        func_001F9BF0(q10, q10, d2 + 0x30);
                    }
                }
            }
            *(int *)(d + 0x48) = 1;
        }
        if (((unsigned char *)m)[0xBC] == 0) {
            r = func_001F9850(40);
            if (func_002140B0(r) == 0) {
                func_L09_002EBA58();
            }
        }
    }

    ((unsigned char *)m)[0x30] = 0xFF;
    *(short *)(m + 0x32) = 0xFF;
    if (*(int *)(d + 0x10) < 0) return;
    *(q128 *)(m + 0x10) = *(q128 *)(d + 0x20);
    a = D_L09_001B0930[*(int *)(d + 0x10)];
    if (((unsigned char *)m)[0xBC] == 0) {
        if (*(int *)(d + 0x18) < 0x32) {
            if (func_001F9908((int *)(d + 0x1C)) != 0) {
                r = func_001F9850(15);
                n = func_001F9850(30);
                r = r + func_002140B0(n);
                *(int *)(d + 0x1C) = r;
                func_L09_002EBD30(m);
            }
        }
    }
    f12 = *(float *)(m + 0x40);
    *(float *)(m + 0x40) = func_001FA748(f12, *(float *)(d + 0x40));
    f12 = *(float *)(m + 0x44);
    *(float *)(m + 0x44) = func_001FA748(f12, *(float *)(d + 0x44));
    r = func_L09_00295880(m, a, m + 0x10, *(int *)(d + 0x14), 1, *(float *)(d + 0xC));
    *(int *)(d + 0x14) = r;
    if (r == *(int *)a - 1) {
        if (((unsigned char *)m)[0xBC] != 0) {
            t = *(char **)(*(char **)(*(char **)(m + 0x78) + 0x50) + 0x78);
            *(int *)(t + 0x18) = *(int *)(t + 0x18) - 1;
            func_0020D678(m);
        } else {
            *(int *)(d + 0x14) = 0;
            *(q128 *)(m + 0x10) = *(q128 *)(a + 0x10);
        }
    }
    if (*(int *)(d + 0x14) == 0) {
        func_001F9BF0(v0, a + 0x20, a + 0x10);
        f20 = func_001F9CB8(v0);
        func_L00_001FF4B0(v0, v0, 1.0f);
        func_001F9BF0(v1, m + 0x10, a + 0x10);
    } else if (*(int *)(d + 0x14) == *(int *)a - 2) {
        func_001F9BF0(v0, a + (*(int *)a << 4) - 0x10, a + (*(int *)a << 4));
        f20 = func_001F9CB8(v0);
        func_L00_001FF4B0(v0, v0, 1.0f);
        func_001F9BF0(v1, m + 0x10, a + (*(int *)a << 4));
    } else {
        *(unsigned char *)(m + 0x23) = 0x80;
        goto copy_back;
    }
    f0 = func_001F9C78(v1, v0);
    f1 = f0;
    f2 = 0.0f;
    if (f1 < f2) f1 = f2;
    f0 = 128.0f * f1;
    f0 = f0 / f20;
    v = (unsigned char)(int)f0;
    if (v < 0x81) {
        *(unsigned char *)(m + 0x23) = v;
    } else {
        *(unsigned char *)(m + 0x23) = 0x80;
    }
copy_back:
    *(q128 *)(d + 0x20) = *(q128 *)(m + 0x10);
    func_001F9BD8(m + 0x10, m + 0x10, d);
    func_001F9BD8(m + 0x10, m + 0x10, D_L09_00166FC0);
    func_001F9BF0(m + 0x10, m + 0x10, d + 0x30);
}
