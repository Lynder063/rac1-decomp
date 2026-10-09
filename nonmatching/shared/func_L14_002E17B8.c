/* NON_MATCHING func_L14_002E17B8 -- src/overlays/shared/vendor_002B2A28.c
 * Best so far: SIZE ours 1064 / retail 1060, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Best candidate p0.c: 1056 of 1060 bytes. Function: refreshes two spring records from the level table (func_L00
 *   Left: the loop's continue test comes out as beqz+nop where retail has beql with the i++ in its delay slot (p2 
 */
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_002141A8(void *, float, float);
extern char *func_L00_002757E8(void *, void *, int, void *);
extern float func_002140F8(float, float);
extern s32 func_002140B0(s32);
extern int func_001F9850(int);
extern float func_001FA888(int);
extern float func_001F9F90(float x);
extern float func_001F9FA8(float);
extern float func_L00_00258C80(float lo, float hi);
extern int func_L00_00258BC8(int, int);
extern void func_L00_0026DA50(void *, void *, int, int, int, int, float);
extern char *func_L00_0026DEA0_c(void *, int, void *, int, float, float, float, float) __asm__("func_L00_0026DEA0");
extern float D_L14_0015F660[] MACRO_ADDR;
extern float D_0015EE60 MACRO_ADDR;

// Refreshes the moby's two spring records from the level table, then steers its vectors toward the target.
void func_L14_002E17B8(char *moby) {
    char *d;
    char *tmp;
    char *q;
    char *e;
    char *p10 = moby + 0x10;
    char *pe0 = moby + 0xE0;
    char *p48;
    float v0[4];
    float v10[4];
    float v20[4];
    float v30[4];
    int i;
    int r, r2, r3, r6, r7, r8;
    float f0, f20, f21;

    d = *(char **)(moby + 0x78);
    func_L00_001FF4B0(v10, pe0, 0.2f);
    func_001F9BD8(v0, p10, v10);
    func_002141A8(v20, 0.00499999989f, 0.0299999993f);
    tmp = func_L00_002757E8(v0, v20, 0x7F, moby);
    if (tmp != 0) {
        *(float *)(tmp + 0xC) = func_002140F8(6000.0f, 32000.0f);
    }
    p48 = (char *)v30;
    f20 = 1.0f;
    f21 = 180000.0f;
    for (i = 0; i < 3;) {
        tmp = func_L00_002757E8(v0, D_L14_0015F660, 0x7F, moby);
        if (tmp == 0) {
            i++;
            continue;
        }
        q = tmp + 0x20;
        if (i == 2 && func_002140B0(8) == 0) {
            *(float *)(tmp + 0xC) = f21;
        } else {
            *(float *)(tmp + 0xC) = func_002140F8(80000.0f, 120000.0f);
        }
        r = func_001F9850(2);
        *(short *)(tmp + 0xA) = r;
        f0 = f20 / func_001FA888((short)r);
        *(short *)(q + 0x16) = 4;
        *(int *)(q + 0x18) = 0x7F7F7F;
        *(float *)(q + 0x10) = f0;
        i++;
    }
    v20[0] = *(float *)(d + 0x18);
    v20[2] = 0.0f;
    v20[3] = 1.0f;
    v20[1] = *(float *)(d + 0x1C);
    if (*(unsigned char *)(moby + 0x20) == 0) {
        func_L00_001FF4B0(v10, pe0, 0.949999988f);
    } else {
        func_L00_001FF4B0(v10, pe0, 1.14999998f);
        v20[2] = D_0015EE60 * 0.0299999993f;
    }
    f20 = 0.300000012f;
    func_001F9BD8(v0, p10, v10);
    f0 = func_001F9F90(*(float *)(moby + 0x48)) * f20;
    v30[0] = f0;
    f0 = func_001F9FA8(*(float *)(moby + 0x48)) * f20;
    v30[1] = f0;
    v30[2] = 0.0f;
    func_001F9BD8(v0, v0, p48);
    if (*(unsigned char *)(moby + 0x20) == 1) {
        v0[0] += func_L00_00258C80(0.0f, 0.100000001f);
        v0[1] += func_L00_00258C80(0.0f, 0.100000001f);
    }
    f20 = 60000.0f;
    r = func_001F9850(10);
    r2 = func_001F9850(20);
    r3 = func_L00_00258BC8(r, r2);
    func_L00_0026DA50(v0, v20, 0x4F007FFF, 0x1FFFFFFF, r3, 1, f20);
    r6 = func_002140B0(6);
    if (func_002140B0(2) != 0) {
        r6 = -r6;
    }
    f20 = func_002140F8(f20, 140000.0f);
    r7 = func_L00_00258BC8(0x30, 0xFF);
    e = func_L00_0026DEA0_c(v0, r6, v20, r7 | (r7 << 16) | ((r7 << 8) | 0x60000000), 0.0250000004f, 1.0f, 1.0f, f20);
    if (e != 0) {
        *(unsigned char *)(e + 3) = 0x44;
        r8 = func_001F9850(0x3C);
        q = e + 0x20;
        *(short *)(e + 0xA) = r8;
        *(unsigned char *)(q + 0xA) = 0x60;
        *(int *)(q + 4) = 2;
        *(unsigned char *)(q + 0xB) = *(unsigned char *)(e + 0xA);
    }
}
