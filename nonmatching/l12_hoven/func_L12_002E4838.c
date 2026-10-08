/* NON_MATCHING func_L12_002E4838 -- src/overlays/l12_hoven/vendor_002C0310.c
 * Best so far: SIZE ours 976 / retail 968, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 12 moby update: a timer on d+0x2EA against a per-state table, a target search through matched helpers (f
 *   Left: the size is right and the prologue, timer and branch shapes match, but the float block is scheduled diff
 *   Unblock: a form of the constant products (0x138/0x13C) that gcc schedules the way retail does; the register ch
 */
extern int func_001F9850(int);
extern int func_001F9908(int *arg0);
extern s32 func_L01_0026EFB8_303590(s32, s32) __asm__("func_L01_0026EFB8");
extern int func_002140B0(int);
extern float func_001FA748(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L00_0025AC00(void *, int, int, void *, void *, float);
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern void func_L01_0026F040(int, int);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern void func_L00_0025D5B0(void *, void *, float, int, int, int);
extern void func_L00_0025E4B0(void *m, short *p);
extern void func_L00_0025E590(void *, void *);
extern void func_L12_002E43A8(void *);
extern float D_0015EE6C MACRO_ADDR;
extern short D_L12_00161950;
extern short D_L12_00161954;
extern char D_0013E633[];

/* One moby update step: the hit test against the target list, then the state change. */
void func_L12_002E4838(unsigned char *m) {
    char *d;
    char *q;
    float sv[4];
    int iv;
    float fv;
    float fa;
    float fb;
    short sh;
    int r;
    int t;
    short r16;
    float f5;
    float k;
    float t13c;
    float t138;
    int cnt;

    d = *(char **)(m + 0x78);
    if (*(int *)(d + 0x38) == 0) goto L4880;
    *(int *)(d + 0x38) = 0;
    *(int *)(d + 0x2C4) = func_001F9850(0xF0);
L4880:
    if (m[0x20] != 9) {
        if (m[0x20] != 0xB && m[0x20] != 0) {
            r = func_001F9908((int *)(d + 0x2C4));
            fa = 20.0f;
            if (r != 0) fa = 12.0f;
            *(float *)(d + 0x2AC) = fa;
        }
    }
    sh = *(short *)(d + 0x2E8);
    if (sh == 0 || m[0x20] == 9) goto L49B0;
    cnt = *(unsigned short *)(d + 0x2EA) + 1;
    *(short *)(d + 0x2EA) = cnt;
    r16 = (short)cnt;
    t = func_001F9850(0x3C);
    if (t * 15 < r16) {
        if (m[0x31] == 0 && m[0x21] < 0xFF) {
            r = func_L01_0026EFB8_303590(m[0x21], -1);
            if (r >= 4 && func_002140B0(0x45) == 0) {
                float a1 = func_001FA748(*(float *)(m + 0x48), 3.14159274f);
                float b1 = func_001F9F90(a1);
                float a2;
                float b2;
                sv[0] = b1;
                a2 = func_001FA748(*(float *)(m + 0x48), 3.14159274f);
                b2 = func_001F9FA8(a2);
                sv[1] = b2;
                *(int *)&sv[2] = 0;
                func_L00_0025AC00(m, *(int *)(D_0013E633 + 0x2E9D), 0x10000, m + 0x10, sv, 1.0f);
            }
        }
    }
L49B0:
    q = func_L00_0025B478(m, 0x330000, 0);
    fv = 0.0f;
    func_L00_0025B4D0(m, q, d + 0x20, 0, &iv, &fv, 0, 4);
    if (q == 0) goto L4BC8;
    if (m[0x20] == 0x63 || m[0x20] == 8) goto L4BC8;
    if (m[0x21] != 0xFF) func_L01_0026F040(m[0x21], 7);
    if (fv == 0.0f) goto L4BCC;
    k = D_0015EE6C;
    f5 = *(float *)(d + 0x20) - fv;
    *(float *)(d + 0x130) = 0.00800000038f;
    *(float *)(d + 0x134) = 0.000500000024f;
    t13c = *(float *)&D_L12_00161950 * k;
    t138 = *(float *)&D_L12_00161954 * k;
    *(float *)(d + 0x138) = t138;
    *(float *)(d + 0x13C) = t13c;
    *(int *)(d + 0x144) = 9;
    *(float *)(d + 0x158) = 1.0f;
    *(float *)(d + 0x20) = f5;
    ((unsigned char *)d)[0x15D] = 0;
    *(float *)(d + 0x150) = 1.0f;
    *(float *)(d + 0x154) = 1.0f;
    if (f5 <= 0.0f) {
        float f1 = D_0015EE6C;
        float f0 = f1 * 8.0f;
        float f1b = f1 * 10.0f;
        *(unsigned short *)(m + 0x34) = *(unsigned short *)(m + 0x34) & 0xEFFF;
        *(float *)(d + 0x138) = f0;
        *(float *)(d + 0x13C) = f1b;
        *(u128 *)sv = *(u128 *)(q + 0x10);
        func_L00_0025BBA0(sv, &fa, d + 0x138, d + 0x13C);
        func_L00_0025D5B0(m, d + 0x120, fa, 6, 1, 0);
        *(float *)(d + 0x170) = 11.0f;
        *(float *)(d + 0x174) = 18.0f;
        m[0x20] = 0x63;
        ((unsigned char *)d)[0x117] = 0x78;
        func_L00_0025E4B0(m, (short *)(d + 0x110));
    } else {
        *(u128 *)sv = *(u128 *)(q + 0x10);
        func_L00_0025BBA0(sv, &fb, d + 0x138, d + 0x13C);
        func_L00_0025D5B0(m, d + 0x120, fb, 0xE, 1, 0);
        *(float *)(d + 0x174) = -1.0f;
        *(float *)(d + 0x170) = -1.0f;
        m[0x20] = 7;
        ((unsigned char *)d)[0x117] = 0xFA;
        t = func_001F9850(0x3C);
        *(short *)(d + 0x26) = t;
        func_L00_0025E4B0(m, (short *)(d + 0x110));
    }
    func_L12_002E43A8(m);
L4BC8:
L4BCC:
    m[0xA4] = 0xFF;
    func_L00_0025E590(m, d + 0x110);
}
