/* NON_MATCHING func_L00_002C9820 -- src/overlays/shared/vendor_002C96D0.c
 * Best so far: SIZE ours 1416 / retail 1444, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Per-frame moby update: copies the moby's position into stack vectors, two branches on a1[0x20]==1 (allocates f
 *   Differences left: a2 is spilled to the stack (sw $a2,0x54) where retail keeps it in $23; g and a0 take other s
 */
typedef int q128 __attribute__((mode(TI)));

extern char D_0013E633[];
extern int D_L00_0015F6A8 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern int D_L00_00173F40[];
extern char D_L00_00173F60[];
extern void *D_L00_00173F58;
extern float D_L00_00173F80[];
extern float D_L00_00166EC0[];
extern float func_L00_001FF860(float, float);
extern float func_001FA748(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_L00_0025D390(char *);
extern int func_001F9850(int);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern int func_L00_001F3958(void);
extern float func_00214358(void *, int, float);
extern int func_001F9908(int *);
extern void func_001F49B0(void (*)(void), void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_L00_002ADE90(void);

/* Per-frame update of a moby against its collision volume; returns 1 when the position was resolved. */
int func_L00_002C9820(char *a0, char *a1, int a2) {
    int k = a2;
    int flag = 0;
    int r50;
    float t40[4];
    float t30[4];
    q128 t20;
    float t10[4];
    float v[4];
    char *g = (char *)D_0013E633 + 0xE1D;
    char *p2080;
    char *x;
    int r;
    int c;

    if (*(int *)(g + 0x2084) == 0x72) return 0;
    if (D_L00_0015F6A8 != 0) return 0;

    t20 = *(q128 *)(a1 + 0x10);

    if ((unsigned char)a1[0x20] == 1) {
        v[0] = func_001F9F90(func_001FA748(-0.361968011f, func_L00_001FF860(*(float *)(g + 0x670), *(float *)(g + 0x674)))) * 0.859039009f;
        v[1] = func_001F9FA8(func_001FA748(-0.361968011f, func_L00_001FF860(*(float *)(g + 0x670), *(float *)(g + 0x674)))) * 0.859039009f;
        *(int *)&v[2] = 0;
        func_001F9BD8(v, v, g + 0x80);
        v[2] = v[2] + 0.390819997f;
        *(q128 *)t10 = *(q128 *)a0;
        if (*(int *)(g + 0x208C) == 0xF) func_001F9BD8(t10, t10, g + 0x100);
        if (*(int *)(g + 0x2FC) != 0) {
            if (func_L00_0025D390((char *)*(int *)(g + 0x2FC)) != 0 && k != 0) {
                func_001F9BD8(t10, t10, g + 0x100);
            }
        }
        r50 = func_001F9850(300);
    } else {
        char *m3 = (char *)*(int *)(a0 + 0x30);
        char *m5 = (char *)*(int *)(m3 + 0x78);
        *(q128 *)v = *(q128 *)(a1 + 0x10);
        *(q128 *)t10 = *(q128 *)a0;
        r50 = *(short *)(a0 + 0x38);
        if (*(int *)(m5 + 0x50) != 0) *(short *)(a0 + 0x3A) = (short)k;
    }

    t10[2] = t10[2] - D_0015EE6C * 0.5f;
    p2080 = (char *)*(int *)(g + 0x2080);
    *(q128 *)t30 = *(q128 *)(p2080 + 0x10);
    t30[2] = v[2];
    r = func_L00_001EFFF0(t30, v, 16, (int)p2080, 0);
    if (r == 0) goto done;
    if (func_L00_001F3958() == 0 && !(0.0f < t10[2])) goto done;

    /* phase one: D_L00_00173F40 */
    x = (char *)D_L00_00173F40;
    if (*(int *)(x + 0x18) != 0) {
        if (*(int *)(x + 0x1C) > 0) {
            *(q128 *)(a0 + 0x10) = *(q128 *)D_L00_00173F60;
            flag = 1;
        } else {
            if (*(int *)(x + 0x18) == *(int *)(g + 0x2080) || *(int *)(x + 0x18) == *(int *)(a0 + 0x30)) {
                int lim = func_001F9850(300);
                int lim2 = func_001F9850(10);
                if (!(r50 < lim - lim2)) goto done;
            }
            goto c3;
        }
    } else {
        if (*(int *)(x + 0x1C) > 0) {
            *(q128 *)(a0 + 0x10) = *(q128 *)D_L00_00173F60;
            flag = 1;
        }
    }
    goto done;

c3:
    *(q128 *)t40 = 0;
    t40[2] = 0.5f;
    *(q128 *)(a0 + 0x10) = *(q128 *)(*(char **)(x + 0x18) + 0x10);
    flag = 1;
    func_001F9BD8(t40, t40, a0 + 0x10);
    func_00214358(t40, 0, 0.5f);

done:
    for (;;) {
        if (func_001F9908(&r50) != 0 || flag != 0) break;
        /* phase two: copy v, nine steps of the height drop, then the volume test again */
        t20 = *(q128 *)v;
        c = 9;
        do {
            func_001F9BD8(v, v, t10);
            c = c - 1;
            t10[2] = t10[2] - D_0015EE70 * 9.0f;
        } while (c >= 0);
        r = func_L00_001EFFF0(&t20, v, 16, (int)a1, 0);
        if (r == 0) continue;
        if (func_L00_001F3958() == 0 && !(0.0f < t10[2])) continue;
        x = (char *)D_L00_00173F40;
        if (*(int *)(x + 0x18) != 0) {
            if (*(int *)(x + 0x1C) > 0) {
                *(q128 *)(a0 + 0x10) = *(q128 *)D_L00_00173F60;
                break;
            }
            p2080 = (char *)*(int *)(g + 0x2080);
            if (*(int *)(x + 0x18) == (int)p2080 || *(int *)(x + 0x18) == *(int *)(a0 + 0x30)) {
                int lim = func_001F9850(300);
                int lim2 = func_001F9850(10);
                if (!(r50 < lim - lim2)) continue;
            }
            *(q128 *)t40 = 0;
            t40[2] = 0.5f;
            *(q128 *)(a0 + 0x10) = *(q128 *)(*(char **)(x + 0x18) + 0x10);
            func_001F9BD8(t40, t40, a0 + 0x10);
            func_00214358(t40, 0, 0.5f);
            break;
        } else {
            if (*(int *)(x + 0x1C) > 0) {
                *(q128 *)(a0 + 0x10) = *(q128 *)D_L00_00173F60;
                break;
            }
            continue;
        }
    }

    if (r50 == 0) return 0;

    if (k == 0) {
        if (D_L00_00173F58 == 0) return 0;
        if (func_L00_0025D390(D_L00_00173F58) == 0) return 0;
        func_001F49B0(func_L00_002ADE90, a1);
    } else if (k == 2) {
        if (D_L00_00173F58 == 0 || func_L00_0025D390(D_L00_00173F58) == 0) {
            func_001F49B0(func_L00_002ADE90, a1);
        }
    } else {
        func_001F49B0(func_L00_002ADE90, a1);
    }

    *(q128 *)(a0 + 0x20) = *(q128 *)D_L00_00173F80;
    func_001F9BF0(&t20, a0 + 0x10, D_L00_00166EC0);
    func_001F9C30(&t20, &t20, 0.949999988f);
    func_001F9BD8(a0 + 0x10, &t20, D_L00_00166EC0);
    return 1;
}
