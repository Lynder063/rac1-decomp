/* NON_MATCHING func_L09_002F9A50 -- src/overlays/l09_gaspar/vendor_002C2B08.c
 * Best so far: SIZE ours 1240 / retail 1236, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level-9 platform moby (class 664) update: a float steer of the platform height and tilt, two func_L00_0025CCF0
 *   Runs: 3 of 10 spent.
 */
extern void func_001F9C30(void *, void *, float);
extern int func_001F9850(int);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9C78(void *a, void *b);
extern float func_L00_0025CCF0(void *, float, void *, int, float, float, float);
extern void func_L07_00289960(void *a0, void *a1, void *a2, void *a3, void *a4);
extern void func_L00_00263B78(float, float, char *, float *, float *);
extern void func_L00_00263BF8(void *, char *, char *, float, float, float);
extern float func_001FA748(float, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_002617B0(char *, void *, void *, void *);
extern int func_0022ED80_r(int, int, char *) __asm__("func_0022ED80");
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern unsigned char D_0013E633[];
extern short D_L09_00161A74;
extern short D_L09_00161A78;
extern short D_L09_00161A7C;
extern short D_L09_00161A84;
extern short D_L09_00161A88;
extern short D_L09_00161A8C;
extern short D_L09_00161A90;
extern short D_L09_00161A94;
extern short D_L09_00161A98;

// Platform moby (class 664) update on level 9: steers its height and tilt from the owner's state.
void func_L09_002F9A50(char *moby) {
    char *data = *(char **)(moby + 0x78);
    char buf[0x60];
    char *ref;
    float f20, f21, f22, f23, f24, d2;
    int r;
    func_001F9C30(buf, moby + 0x10, -1.0f);
    qcopy(buf + 0x10, moby + 0x40);
    f23 = *(float *)(data + 0x84) - 0.25f;
    f24 = *(float *)(moby + 0x18);
    if (*(int *)(data + 0x80) == 0) {
        qcopy(data + 0x60, moby + 0x40);
        qzero(data + 0x70);
        *(float *)(moby + 0x18) = *(float *)(moby + 0x18) - 0.3f;
        *(int *)(data + 0x80) = 1;
        *(float *)(data + 0x84) = *(float *)(moby + 0x18);
    }
    if (*(short *)(D_0013E633 + 0xE1D + 0x30E) == 0 && *(int *)(D_0013E633 + 0xE1D + 0x2FC) == (int)moby) {
        if (*(int *)(data + 0x88) == 0) func_0022ED80_r(0, 0, moby);
        r = func_001F9850(30);
        if (*(int *)(data + 0x88) < r) *(int *)(data + 0x88) = func_001F9850(30);
    }
    if (*(int *)(data + 0x88) != 0) {
        func_001F9908((int *)(data + 0x88));
        ref = D_0013E633 + 0xE9D;
        func_001F9BF0(buf + 0x20, ref, moby + 0x10);
        f21 = 0.01745329238474369f;
        f22 = func_001F9C78(buf + 0x20, moby + 0xC0);
        d2 = func_001F9C78(buf + 0x20, moby + 0xD0);
        f20 = *(float *)&D_L09_00161A74;
        qcopy(buf + 0x30, data + 0x60);
        qcopy(buf + 0x40, moby + 0x10);
        func_L00_0025CCF0(data + 0x60, -f20 * d2, data + 0x70, 0,
            *(float *)&D_L09_00161A84 * f21 * D_0015EE70,
            *(float *)&D_L09_00161A88 * D_0015EE64,
            *(float *)&D_L09_00161A8C * f21 * D_0015EE6C);
        f20 = f20 * f22;
        func_L00_0025CCF0(data + 0x64, f20, data + 0x74, 0,
            *(float *)&D_L09_00161A84 * f21 * D_0015EE70,
            *(float *)&D_L09_00161A88 * D_0015EE64,
            *(float *)&D_L09_00161A8C * f21 * D_0015EE6C);
        *(float *)(moby + 0x18) = *(float *)(moby + 0x18) - *(float *)&D_L09_00161A78 * D_0015EE6C;
        if (f23 < f24) {
            if (*(float *)(moby + 0x18) <= f23) func_0022ED80_r(1, 0, moby);
        }
        ref = D_0013E633 + 0xE9D + 0;
        func_L07_00289960(ref, buf + 0x50, moby + 0x10, buf + 0x30, data + 0x60);
        func_001F9BF0(ref + 0x70, buf + 0x50, ref);
        *(float *)(ref + 0xF8 - 0x80) = *(float *)(ref + 0xF8 - 0x80) + (*(float *)(moby + 0x18) - *(float *)(buf + 0x48));
    } else {
        f21 = 0.01745329238474369f;
        func_L00_0025CCF0(data + 0x60, 0.0f, data + 0x70, 0,
            *(float *)&D_L09_00161A90 * f21 * D_0015EE70,
            *(float *)&D_L09_00161A94 * D_0015EE64,
            *(float *)&D_L09_00161A98 * f21 * D_0015EE6C);
        func_L00_0025CCF0(data + 0x64, 0.0f, data + 0x74, 0,
            *(float *)&D_L09_00161A90 * f21 * D_0015EE70,
            *(float *)&D_L09_00161A94 * D_0015EE64,
            *(float *)&D_L09_00161A98 * f21 * D_0015EE6C);
        f20 = 0.0f;
        {
            float f2 = *(float *)(moby + 0x18);
            float f1 = *(float *)&D_L09_00161A7C * D_0015EE6C;
            f2 = f2 + f1 * (*(float *)(data + 0x84) - f2);
            *(float *)(moby + 0x18) = f2;
            if (*(float *)(data + 0x84) < f2) *(float *)(moby + 0x18) = *(float *)(data + 0x84);
        }
        if (f24 < f23) {
            if (f23 <= *(float *)(moby + 0x18)) func_0022ED80_r(2, 0, moby);
        }
    }
    func_L00_00263B78(0.14000000059604645f, D_0015EE6C * 0.5235987901687622f, moby,
        (float *)(data + 0x98), (float *)(data + 0x9C));
    func_L00_00263BF8(moby, data + 0x90, data + 0x94, 0.0872664600610733f,
        D_0015EE6C * 0.3141592741012573f, D_0015EE6C * 0.48869219422340393f);
    *(float *)(moby + 0x40) = func_001FA748(*(float *)(data + 0x60), *(float *)(moby + 0x40));
    *(float *)(moby + 0x44) = func_001FA748(*(float *)(data + 0x64), *(float *)(moby + 0x44));
    func_001F9BD8(buf, buf, moby + 0x10);
    func_L00_002617B0(data + 0x20, buf, buf + 0x10, moby + 0x40);
}
