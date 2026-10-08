/* NON_MATCHING func_L00_002C4E00 -- src/overlays/shared/vendor_002C12B0.c
 * Best so far: SIZE ours 1416 / retail 1444, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Vendor point step: two arms on arg1[0x20]==1 (a float transform of the point), then a 10-pass loop with a draw
 *   Differences seen: retail keeps the flag in $30 and arg2 in $23 where ours spills the flag to the stack and put
 *   Unblock: a per-instruction diff (the --diff list is cut off at the first ~40 rows); the loop shape at 528C/512
 */
extern unsigned char D_0013E633[];
extern int D_L00_0015F6A8 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70_f __asm__("D_0015EE70") MACRO_ADDR;
extern int D_L00_00173F40[];
extern char D_00173F60_alias[] __asm__("D_L00_00173F60");
extern void *D_L00_00173F58;
extern u8 D_L00_00173F80[];
extern char D_L00_00166EC0[];
extern float func_L00_001FF860(float, float);
extern float func_001FA748(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9BD8(void *, void *, void *);
extern unsigned char *func_L00_0025D390(int);
extern int func_001F9850(int);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern int func_L00_001F3958(void);
extern float func_00214358(void *, int, float);
extern int func_001F9908(int *arg0);
extern void func_001F49B0(void (*)(void), void *);
extern void func_L00_002C44C8(char *m);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);

// Steps a vendor point toward its target and runs the draw callback; returns 1 if it acted.
int func_L00_002C4E00(unsigned char *arg0, unsigned char *arg1, int arg2) {
    float v[4] __attribute__((aligned(16)));
    float p[4] __attribute__((aligned(16)));
    float t[4] __attribute__((aligned(16)));
    float w[4] __attribute__((aligned(16)));
    float z[4] __attribute__((aligned(16)));
    int n, flag, i, hit, r, b;
    int q;
    unsigned char *base;
    int *tb;
    unsigned char *m;
    float k;

    flag = 0;
    base = D_0013E633 + 0xE1D;
    if (*(int *)(base + 0x2084) == 0x72) return 0;
    if (D_L00_0015F6A8) return 0;
    qcopy(t, arg1 + 0x10);
    if (arg1[0x20] == 1) {
        v[0] = func_001F9F90(func_001FA748(-0.36196801f, func_L00_001FF860(*(float *)(base + 0x670), *(float *)(base + 0x674)))) * 0.85903901f;
        v[1] = func_001F9FA8(func_001FA748(-0.36196801f, func_L00_001FF860(*(float *)(base + 0x670), *(float *)(base + 0x674)))) * 0.85903901f;
        v[2] = 0.0f;
        func_001F9BD8(v, v, base + 0x80);
        v[2] = v[2] + 0.39081999f;
        qcopy(p, arg0 + 0x10);
        if (*(int *)(base + 0x208C) == 0xF) func_001F9BD8(p, p, base + 0x100);
        if (*(int *)(base + 0x2FC) && func_L00_0025D390(*(int *)(base + 0x2FC)) && arg2) func_001F9BD8(p, p, base + 0x100);
        n = func_001F9850(300);
    } else {
        m = *(unsigned char **)(*(unsigned char **)(arg0 + 0x40) + 0x78);
        qcopy(v, arg1 + 0x10);
        qcopy(p, arg0 + 0x10);
        n = *(short *)(arg0 + 0x44);
        if (*(int *)(m + 0x50)) *(short *)(arg0 + 0x46) = 1;
    }

    p[2] = p[2] - D_0015EE6C * 0.5f;
    q = *(int *)(base + 0x2080);
    *(u128 *)w = *(u128 *)((unsigned char *)q + 0x10);
    w[2] = v[2];
    hit = func_L00_001EFFF0(w, v, 16, q, 0);
    if (hit) {
        if (func_L00_001F3958() || 0.0f < p[2]) {
            tb = D_L00_00173F40;
            if (tb[7] > 0) {
                qcopy(arg0 + 0x20, D_00173F60_alias);
                flag = 1;
            } else if (tb[6] != 0) {
                int go = 1;
                if (tb[6] == *(int *)(base + 0x2080) || tb[6] == *(int *)(arg0 + 0x40)) {
                    r = func_001F9850(300);
                    b = func_001F9850(10);
                    go = n < r - b;
                }
                if (go) {
                    *(u128 *)z = 0;
                    z[2] = 0.5f;
                    qcopy(arg0 + 0x20, (unsigned char *)tb[6] + 0x10);
                    flag = 1;
                    func_001F9BD8(z, z, arg0 + 0x20);
                    func_00214358(z, 0, 0.5f);
                }
            }
        }
    }

    for (;;) {
        if (func_001F9908(&n) != 0) break;
        if (flag != 0) break;
        qcopy(t, v);
        k = 9.0f;
        i = 9;
        do {
            func_001F9BD8(v, v, p);
            i = i - 1;
            p[2] = p[2] - D_0015EE70_f * k;
        } while (i >= 0);
        hit = func_L00_001EFFF0(t, v, 16, (int)arg1, 0);
        if (hit) {
            if (func_L00_001F3958() || !(0.0f < p[2])) {
                tb = D_L00_00173F40;
                if (tb[6] == 0) {
                    if (tb[7] > 0) {
                        qcopy(arg0 + 0x20, D_00173F60_alias);
                        break;
                    }
                    continue;
                }
                if (tb[7] > 0) {
                    qcopy(arg0 + 0x20, D_00173F60_alias);
                    break;
                }
                if (tb[6] == *(int *)(base + 0x2080) || tb[6] == *(int *)(arg0 + 0x40)) {
                    r = func_001F9850(300);
                    b = func_001F9850(10);
                    if (!(n < r - b)) continue;
                }
                *(u128 *)z = 0;
                z[2] = 0.5f;
                qcopy(arg0 + 0x20, (unsigned char *)tb[6] + 0x10);
                func_001F9BD8(z, z, arg0 + 0x20);
                func_00214358(z, 0, 0.5f);
                break;
            }
        }
    }

    if (n == 0) return 0;
    if (arg2 == 0) {
        if (D_L00_00173F58 == 0) return 0;
        if (func_L00_0025D390((int)D_L00_00173F58) == 0) return 0;
    }
    {
        if (arg2 != 2 || D_L00_00173F58 == 0 || func_L00_0025D390((int)D_L00_00173F58) == 0)
            func_001F49B0((void (*)(void))func_L00_002C44C8, arg1);
        qcopy(arg0 + 0x30, D_L00_00173F80);
        func_001F9BF0(t, arg0 + 0x20, D_L00_00166EC0);
        func_001F9C30(t, t, 0.95f);
        func_001F9BD8(arg0 + 0x20, t, D_L00_00166EC0);
        return 1;
    }
}
