/* NON_MATCHING func_L01_002F9AF0 -- src/overlays/shared/vendor_002F7700.c
 * Best so far: SIZE ours 1340 / retail 1344, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moby update (1344 bytes): steers the data block with float maths, runs a 40-iteration particle burst loop, and
 *   Best candidate is p7.c (1340 bytes, 4 short, no logic difference seen). Remaining differences: (1) the prologu
 *   Would unblock: a source form that makes the compiler keep the float constants in registers across calls, plus 
 */
extern void func_001F9BD8(void *, void *, void *);
extern float func_001FA748(float, float);
extern int func_001F9908(void *);
extern int func_L00_001EFFF0(void *, void *, int, void *, void *);
extern int func_L00_001F10E0(float, void *, int, void *);
extern float func_L00_001FF860(float, float);
extern float func_002140F8(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L00_001FF610(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_001F9CB8(void *);
extern int func_L00_00258BC8(int, int);
extern int func_001F9850(int);
extern void func_L00_0026DD70(void *, void *, int, int, int, float);
extern void func_0020D678(void *);
extern float D_0015EE6C MACRO_ADDR;
extern char D_L01_00174380[];

typedef int u128_2F9AF0 __attribute__((mode(TI)));

/* Moby update: steers its data block, resolves its state, runs the particle burst loop. */
void func_L01_002F9AF0(char *moby) {
    float buf[16];
    float *w;
    char *pos = moby + 0x10;
    char *d = *(char **)(moby + 0x78);
    float f20, f23, r;
    int cnt, st;

    *(u128_2F9AF0 *)buf = *(u128_2F9AF0 *)pos;
    *(float *)(d + 8) = *(float *)(d + 8) - *(float *)(d + 0x24);
    func_001F9BD8(pos, pos, d);
    *(float *)(moby + 0x48) = func_001FA748(*(float *)(moby + 0x48), *(float *)(d + 0x18));
    if (*(float *)(moby + 0x10) < 2.0f || *(float *)(moby + 0x10) > 1021.0f ||
        *(float *)(moby + 0x14) < 2.0f || *(float *)(moby + 0x14) > 1021.0f ||
        *(float *)(moby + 0x18) < 2.0f || *(float *)(moby + 0x18) > 1021.0f) {
        func_0020D678(moby);
        return;
    }
    if (func_001F9908(d + 0x1C) &&
        (func_L00_001EFFF0(buf, pos, 0, moby, 0) ||
         func_L00_001F10E0(*(float *)(d + 0x14), pos, 0, moby))) {
        char *B = D_L01_00174380;
        float pi_n = -3.14159265f;
        float pi_p = 3.14159265f;
        f23 = func_L00_001FF860(*(float *)d, *(float *)(d + 4));
        r = func_002140F8(pi_n, pi_p);
        r = func_001FA748(f23, r);
        f20 = func_001F9F90(r);
        f20 = f20 * func_002140F8(0.0f, *(float *)(d + 8) * 0.35f);
        buf[4] = f20;
        r = func_002140F8(pi_n, pi_p);
        r = func_001FA748(f23, r);
        f20 = func_001F9FA8(r);
        f20 = f20 * func_002140F8(0.0f, *(float *)(d + 8) * 0.35f);
        buf[6] = 0.0f;
        buf[5] = f20;
        *(float *)(moby + 0x40) = func_002140F8(pi_n, pi_p);
        *(float *)(moby + 0x44) = func_002140F8(pi_n, pi_p);
        *(float *)(moby + 0x48) = func_002140F8(pi_n, pi_p);
        func_L00_001FF610(d, d, B);
        r = func_002140F8(0.07f, 0.13f);
        func_001F9C30(d, d, r);
        func_001F9BD8(d, d, buf + 4);
        func_L00_001FF4B0(B, B, 0.1f);
        func_001F9BD8(pos, B, B - 0x20);
        r = func_002140F8(D_0015EE6C * 1.5707964f, D_0015EE6C * 6.2831855f);
        if (0.0f < *(float *)(d + 0x18)) {
            r = -r;
        }
        *(float *)(d + 0x18) = r;
    }
    st = *(int *)(d + 0x20);
    if (st == 0) {
        if (func_001F9908(d + 0x10) == 0) {
            if (!(func_001F9CB8(d) < D_0015EE6C * 0.5f) || *(int *)(d + 0x1C) != 0) {
                return;
            }
        }
    } else {
        if (func_001F9908(d + 0x10) != 0) {
            func_0020D678(moby);
            return;
        }
        *(char *)(moby + 0x23) = (*(int *)(d + 0x10) * 127) / *(int *)(d + 0x28);
        return;
    }
    cnt = 0x27;
    w = buf + 4;
    do {
        *(u128_2F9AF0 *)(buf + 8) = 0;
        buf[8] = func_002140F8(-1.0f, 1.0f);
        cnt--;
        buf[9] = func_002140F8(-1.0f, 1.0f);
        buf[10] = func_002140F8(-1.0f, 1.0f);
        *(u128_2F9AF0 *)(buf + 12) = 0;
        *(u128_2F9AF0 *)(w) = *(u128_2F9AF0 *)(buf + 8);
        buf[12] = func_002140F8(-1.0f, 1.0f);
        buf[13] = func_002140F8(-1.0f, 1.0f);
        buf[14] = func_002140F8(-1.0f, 1.0f);
        *(u128_2F9AF0 *)(buf + 8) = *(u128_2F9AF0 *)(buf + 12);
        r = func_002140F8(0.0f, 0.5f);
        func_L00_001FF4B0(pos, pos, r);
        func_001F9BD8(pos, pos, pos);
        r = func_002140F8(0.0f, 0.5f);
        func_L00_001FF4B0(w, w, r * D_0015EE6C);
        func_001F9BD8(w, w, d);
        {
            float t = func_002140F8(70000.0f, 140000.0f);
            func_L00_0026DD70(pos, w, 0x1F0C1820, 0x81020,
                              func_001F9850(func_L00_00258BC8(20, 60)), t);
        }
    } while (cnt >= 0);
    func_0020D678(moby);
}
