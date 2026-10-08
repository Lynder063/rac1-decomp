/* NON_MATCHING func_L10_002CD6A8 -- src/overlays/shared/vendor_00299AF0.c
 * Best so far: SIZE ours 1452 / retail 1488, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Rocket update (class 819): state 1 solves a ballistic intercept (quadratic in A, B, C from func_L00_001FF3E0 a
 *   p0.c is 1448 bytes and p1.c 1452 against retail 1488; the diff is spread over about 50 hunks (float operand or
 *   Budget: 2 runs used, not spent; stopped on the spread of differences.
 */
typedef int u128 __attribute__((mode(TI)));

extern s32 D_0015EE84 MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern char D_0013E633[];
extern char D_L10_00174340[];
extern float func_001F9CB8(void *a);
extern float func_00214358(void *, int, float);
extern void func_001F9BF0(void *, void *, void *);
extern float func_L00_001FF3E0(void *);
extern float func_001F9B50(float);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(float *, float *, float *);
extern float func_L00_001FF860(float, float);
extern float func_001F9CE8(void *);
extern float func_L00_00259148(float *vel, float cur, float target, float k, float d, float max);
extern float func_001FA748(float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9BC0(float *);
extern int func_L00_00258BC8(int, int);
extern int func_001F9850(int);
extern void func_L00_0026A7F8(void *, void *, int, int, int, int, int, int);
extern float func_001F9D10(void *, void *);
extern void func_0022ED80(int, int, int);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern void func_L00_001FF500(void *, void *, float);
extern void func_L00_0025AC00(void *, int, int, void *, void *, float);
extern int func_001F9908(int *);
extern void func_L00_00260108(void *, void *, int, float, float);
extern int func_L00_0028EF68(int i, int a1, int v, int k);
extern void func_0020D678(void *);

// Rocket update: on state 1 solves the intercept, steers the orientation and lands the rocket (state 2 deletes it).
void func_L10_002CD6A8(unsigned char *moby)
{
    char *data;
    char *pos;
    char *e;
    char *p;
    u128 pc;
    float s10[4];
    float v20[4];
    float v30[4];
    float s40[4];
    float out[4];
    float A, B, C, t1, t2, dot, sq, r1, r2, t, yaw, horiz, z, pitch, f1, f20, f23;
    int r, v16, r2i;

    data = *(char **)(moby + 0x78);
    if (moby[0x20] != 1) {
        if (moby[0x20] == 2) {
            if (D_0015EE84 == 10) {
                func_L00_00260108(moby, moby + 0x10, -1, 0.25f, 0.0f);
            } else {
                func_L00_00260108(moby, moby + 0x10, -1, 0.25f, 13.0f);
            }
            func_L00_0028EF68(0, 0, (int)moby, 0x99);
            func_0020D678(moby);
        }
    } else {
        pos = (char *)moby + 0x10;
        pc = *(u128 *)pos;
        e = *(char **)(data + 0x14);
        if (e == 0 || e[0x20] == 0xFE || e[0x20] == 0xFD)
            moby[0x20] = 2;
        p = (char *)D_0013E633 + 0xE1D;
        if ((unsigned int)(p[0x20A4] - 1) < 2) {
            if (*(int *)(p + 0x2080) == (int)e) {
                f23 = func_001F9CB8(data);
                *(u128 *)s40 = *(u128 *)(e + 0x10);
                f1 = func_00214358(s40, 0, 0.5f) + 0.2f;
                *(u128 *)v30 = *(u128 *)(p + 0x100);
                *(int *)&v30[2] = 0;
                s40[2] = f1;
                if (p[0x20A4] == 2)
                    s40[2] = f1 + 2.0f;
                func_001F9BF0(v20, s40, pos);
                t1 = func_L00_001FF3E0(v30);
                A = f23 * f23;
                A = A - t1;
                dot = v30[0] * v20[0];
                dot = dot + v30[1] * v20[1];
                dot = dot + v30[2] * v20[2];
                B = dot * -2.0f;
                t2 = func_L00_001FF3E0(v20);
                C = -t2;
                f1 = B * B;
                sq = f1 - (A * 4.0f) * C;
                sq = func_001F9B50(sq);
                f20 = -B;
                f1 = A + A;
                r1 = (f20 + sq) / f1;
                r2 = (f20 - sq) / f1;
                if (0.0f < r1 && 0.0f < r2)
                    t = (r2 < r1) ? r1 : r2;
                else if (0.0f < r1)
                    t = r1;
                else if (0.0f < r2)
                    t = r2;
                else
                    t = -1.0f;
                if (0.0f < t) {
                    func_001F9C30(out, v30, t);
                    func_001F9BD8(out, out, v20);
                    yaw = func_L00_001FF860(out[0], out[1]);
                    horiz = func_001F9CE8(out);
                    z = out[2];
                } else {
                    yaw = func_L00_001FF860(v20[0], v20[1]);
                    horiz = func_001F9CE8(v20);
                    z = v20[2];
                }
                pitch = func_L00_001FF860(horiz, z);
                f20 = -pitch;
                f1 = D_0015EE70;
                *(float *)(moby + 0x48) = func_L00_00259148((float *)(data + 0x28), *(float *)(moby + 0x48), yaw, f1 * 6.2831855f, f1 * 3.1415927f, D_0015EE6C * 6.2831855f);
                *(float *)(moby + 0x44) = func_L00_00259148((float *)(data + 0x2C), *(float *)(moby + 0x44), f20, f1 * 6.2831855f, f1 * 3.1415927f, D_0015EE6C * 6.2831855f);
                *(float *)(moby + 0x40) = func_001FA748(*(float *)(moby + 0x40), D_0015EE6C * 6.2831855f);
                func_00215C00(data, f23, -*(float *)(moby + 0x44), *(float *)(moby + 0x48));
            }
        }
        func_001F9BC0(s10);
        r = func_L00_00258BC8(0xF, 0x16);
        r = func_001F9850(r);
        v16 = r;
        r2i = func_L00_00258BC8(0x14, 0x23);
        func_L00_0026A7F8(pos, s10, 0x6F00AFFF, 0xFF, v16, 0x28, r2i, 1);
        r = func_L00_00258BC8(0x1E, 0x3C);
        v16 = func_001F9850(r);
        r2i = func_L00_00258BC8(0x32, 0x4B);
        func_L00_0026A7F8(pos, s10, 0x1FFFFFFF, 0x4F4F4F, v16, 0x28, r2i, 0);
        f20 = func_001F9D10(pos, (char *)D_0013E633 + 0xE9D);
        func_001F9BD8((float *)pos, (float *)pos, (float *)data);
        if (*(int *)(data + 0x34) == 0 && *(int *)(data + 0x30) != 0 && *(float *)(data + 0x38) < f20) {
            if (f20 < 5.0f) {
                func_0022ED80(0, 0, (int)moby);
                *(int *)(data + 0x34) = 1;
            }
        }
        if (f20 < *(float *)(data + 0x38))
            *(int *)(data + 0x30) = 1;
        *(float *)(data + 0x38) = f20;
        r = func_L00_001EFFF0(pos, &pc, 16, *(int *)(data + 0x10), 0);
        if (r != 0) {
            char *dd = D_L10_00174340;
            if (*(int *)(dd + 0x18) != *(int *)(data + 0x10)) {
                if (*(int *)(dd + 0x18) != 0) {
                    func_L00_001FF500(v20, data, 1.0f);
                    *(float *)(data + 0x8) = 1.0f;
                    func_L00_0025AC00((void *)*(int *)(dd + 0x18), moby, 0x10003, dd + 0x20, v20, 1.0f);
                }
                moby[0x20] = 2;
            }
        }
        if (func_001F9908((int *)(data + 0x18)))
            moby[0x20] = 2;
    }
}
