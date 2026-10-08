/* NON_MATCHING func_L08_002E6500 -- src/overlays/l08_batalia/vendor_002E0258.c
 * Best so far: BYTES 52/1108 (95.3% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Batalia effect (1108 bytes): packs the corner tiles of a vector into two 64-bit packets, sends them through fu
 *   Left: float register assignment. Retail keeps 16.0, pi/2, 4.71 and pi as long-lived values in f21, f21, f22, f
 *   Unblock: a wording that makes those four constants live across the function in retail's order, or a way to mak
 */
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CB8(void *a);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9EE8(void *, void *, void *);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern float func_001FA888(int);
extern float func_001F9FA8(float);
extern float func_001F9F90(float);
extern float func_001FA748(float, float);
extern void func_00234C98(int, long);
extern int func_001F4868(int);
extern void func_L02_0020BF88(long *, int *, int *, long, int);
extern char D_L08_00167640[];
extern char D_L08_0016D2C0[];
extern float D_L08_00161CEC SDATA(D_L08_00161CEC);
extern float D_L08_00161CF0 SDATA(D_L08_00161CF0);

/* Batalia effect: packs the four corner tiles of a vector into two packets and sends them. */
void func_L08_002E6500(char *m)
{
    char *d = *(char **)(m + 0x78);
    char *g;
    long packed[4];
    int tbl1[4];
    int tbl2[4];
    float a[4];
    float b[4];
    float f20, f21, f22, f24, f25, f26, f27, f28;
    float t;
    long hi;
    int ix, iy, iz, n;
    int *p1, *p2;
    int a0, a1, a2, a3, a4, a5, a6, a7;
    float r3, r5, r7, r9, r11, r13;

    if (*(short *)(d + 0x6C) == 0) return;
    qcopy(a, m + 0x10);
    func_L00_001FF4B0(b, m + 0xE0, D_L08_00161CEC);
    func_001F9BD8(a, a, b);
    func_L00_001FF4B0(b, m + 0xC0, D_L08_00161CF0);
    func_001F9BD8(a, a, b);
    func_001F9BF0(a, a, D_L08_00167640);
    f20 = func_001F9CB8(a);
    a[3] = 1.0f;
    func_001F9C30(a, a, 1024.0f);
    func_001F9EE8(a, a, D_L08_00167640 - 0x100);
    g = D_L08_0016D2C0;
    func_001F9C30(a, a, *(float *)(g + 0x210) / a[3]);
    ix = func_001FA898_r(a[0] * 16.0f) + 0x8000;
    iy = (func_001FA898_r(a[1] * 16.0f) + 0x8000) << 16;
    iz = func_001FA898_r(a[2] * 0.9997000098228455f + *(float *)(g + 0x1A8));
    hi = (long)iz << 32;
    if (16.0f < f20) f20 = 16.0f;
    else if (f20 < 4.0f) f20 = 4.0f;
    t = func_001FA888(*(signed char *)(d + 0x7B) + 0x10);
    f20 = (t * 0.015625f) * (50.0f - f20 * 2.5f);
    f25 = f20 * func_001F9FA8(*(float *)(d + 0x74));
    f24 = f20 * func_001F9F90(*(float *)(d + 0x74));
    r3 = func_001FA748(*(float *)(d + 0x74), 1.5707963705062866f);
    f26 = f20 * func_001F9FA8(r3);
    r5 = func_001FA748(*(float *)(d + 0x74), 1.5707963705062866f);
    f21 = f20 * func_001F9F90(r5);
    r7 = func_001FA748(*(float *)(d + 0x74), 4.71238899230957f);
    f27 = f20 * func_001F9FA8(r7);
    r9 = func_001FA748(*(float *)(d + 0x74), 4.71238899230957f);
    f22 = f20 * func_001F9F90(r9);
    r11 = func_001FA748(*(float *)(d + 0x74), 3.1415927410125732f);
    f28 = f20 * func_001F9FA8(r11);
    r13 = func_001FA748(*(float *)(d + 0x74), 3.1415927410125732f);
    f20 = f20 * func_001F9F90(r13);
    tbl2[0] = 0;
    tbl2[1] = 0x200;
    tbl2[2] = 0x2000000;
    tbl2[3] = 0x2000200;
    tbl1[0] = *(int *)(d + 0x78);
    tbl1[1] = tbl1[0];
    tbl1[2] = tbl1[0];
    tbl1[3] = tbl1[0];
    packed[0] = hi;
    packed[3] = hi;
    packed[2] = hi;
    packed[1] = hi;
    a0 = func_001FA898_r(f24);
    packed[0] += (long)((a0 << 20) + iy);
    a1 = func_001FA898_r(f25);
    packed[0] += (long)((a1 << 4) + ix);
    a2 = func_001FA898_r(f21);
    packed[1] += (long)((a2 << 20) + iy);
    a3 = func_001FA898_r(f26);
    packed[1] += (long)((a3 << 4) + ix);
    a4 = func_001FA898_r(f22);
    packed[2] += (long)((a4 << 20) + iy);
    a5 = func_001FA898_r(f27);
    packed[2] += (long)((a5 << 4) + ix);
    a6 = func_001FA898_r(f20);
    packed[3] += (long)((a6 << 20) + iy);
    a7 = func_001FA898_r(f28);
    packed[3] += (long)((a7 << 4) + ix);
    func_00234C98(0x42, ((long)0x8000 << 24) | 0x48);
    p2 = tbl2;
    p1 = tbl1;
    n = func_001F4868(0x13);
    func_L02_0020BF88(packed, p2, p1, n, 1);
    func_00234C98(0x42, ((long)0x8000 << 24) | 0x44);
}
