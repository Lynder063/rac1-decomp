/* NON_MATCHING func_L03_002CA970 -- src/overlays/l03_kerwan/vendor_00293720.c
 * Best so far: SIZE ours 1780 / retail 1784, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   What it does: per-frame update for a Kerwan object (timers at +0x20/+0x270, a target from func_L00_0025B4D0 an
 *   Where it differs: p4.c (run 6) is 1776 bytes, 8 short of retail's 1784, with the same stack layout (float arra
 *   Unblock: an FP-register tie in the 80.0 blocks and the constant placement at the shared tail; the size is othe
 */
/* Per-frame update for a Kerwan object: timers, a target from a nearby object, and a state switch that drives its motion and anim. */
extern char D_0013F450[];
extern short D_L03_00161960;
extern short D_L03_00161964;
extern short D_L03_00161968;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern int func_001F9850(int);
extern int func_001F9938(void *);
extern void *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern float func_L00_001FF860(float, float);
extern float func_001F9B50(float);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern float func_001FA850(float, float);
extern float func_001FA748(float, float);
extern void func_L00_0025D5B0(float, void *, void *, int, int, int);
extern void func_00213D28(void *, int, int);
extern int func_0022ED80(int, int, int);
extern void func_00213DE0(void *, int, int, int);
extern void func_L00_0025E4B0(void *, short *);
extern void func_L00_0025E590(void *, void *);

void func_L03_002CA970(void *mm) {
    u128 s0;
    char *m;
    int s10;
    float s14;
    float s18;
    char *d;
    char *q;
    char *p5;
    int n;
    float x;
    float y;
    float f0;
    float f1;
    float f2;
    float f3;
    float f4;
    float f12;
    float f20;
    float f21;
    float f22;

    m = mm;
    s14 = 0.0f;
    d = *(char **)(m + 0x78);
    if (*(int *)(d + 0x38) != 0) {
        *(int *)(d + 0x38) = 0;
        *(short *)(d + 0x252) = func_001F9850(0xF0);
    }
    if (func_001F9938(d + 0x252)) {
        *(float *)(d + 0x270) = *(float *)(d + 0x26C);
    } else {
        *(float *)(d + 0x270) = *(float *)(d + 0x26C) + 5.0f;
    }
    q = func_L00_0025B478(m, 0x330000, 0);
    n = func_L00_0025B4D0(m, q, d + 0x20, 0, &s10, &s14, 0, 4);
    p5 = d + 0x60;
    if (q == 0) goto B030;
    if (s10 == 1) goto B030;
    if (*(unsigned char *)(m + 0x20) == 0xD) goto B034;
    if (*(int *)(q + 0x20) == 0 || *(int *)(q + 0x20) == *(int *)(D_0013F450 + 0x1090)) {
        x = *(float *)(m + 0x10) - *(float *)(D_0013F450 + 0x80);
        y = *(float *)(m + 0x14) - *(float *)(D_0013F450 + 0x84);
    } else {
        x = *(float *)(m + 0x10) - *(float *)(q + 0x10);
        y = *(float *)(m + 0x14) - *(float *)(q + 0x14);
    }
    s18 = func_L00_001FF860(x, y);
    f0 = *(float *)(d + 0x20) - s14;
    *(float *)(d + 0x20) = f0;
    if (f0 <= 0.0f) n = 1;

    switch (n) {
    case 1: goto AEB4;
    case 3: case 7: case 8: goto AC74;
    case 4: case 5: goto AD84;
    case 6: goto AB18;
    case 12: case 13: goto AB0C;
    default: goto B01C;
    }

AB0C:
    *(unsigned char *)(d + 0x67) = 0x78;
    goto B01C;

AB18:
    *(unsigned char *)(d + 0x67) = 0x78;
    f20 = 80.0f;
    f0 = D_0015EE70 * f20;
    f12 = *(float *)&D_L03_00161960 + *(float *)&D_L03_00161960;
    *(float *)(d + 0x80) = f0;
    f21 = func_001F9B50(f12 * f0);
    f1 = *(float *)&D_L03_00161960 + *(float *)&D_L03_00161960;
    f12 = D_0015EE70 * f20;
    f0 = func_001F9B50(f1 * f12);
    f3 = D_0015EE70;
    f21 = f21 + f21;
    f0 = f0 + f0;
    f1 = *(float *)&D_L03_00161968;
    f20 = f3 * f20;
    f4 = 0.5f;
    f1 = f1 * f3;
    f2 = *(float *)&D_L03_00161964;
    f12 = *(float *)&D_L03_00161960;
    f21 = f21 / f20;
    f0 = f0 / f20;
    f1 = f1 * f4;
    f12 = f12 + f12;
    f2 = f2 / f21;
    f1 = f1 * f0;
    f12 = f12 * f20;
    f2 = f2 + f1;
    f2 = f2 * f4;
    *(float *)(d + 0x88) = f2;
    f0 = func_001F9B50(f12);
    *(float *)(d + 0x8C) = f0;
    *(int *)(d + 0x94) = 9;
    *(unsigned char *)(d + 0xAD) = 0;
    s0 = *(u128 *)(q + 0x10);
    func_L00_0025BBA0(&s0, &s18, d + 0x88, d + 0x8C);
    f12 = *(float *)(m + 0x48);
    f0 = func_001FA850(f12, s18);
    if (f0 < 1.0471975803375244f) {
        f0 = func_001FA748(s18, 3.1415927410125732f);
        *(float *)(m + 0x48) = f0;
    }
    func_L00_0025D5B0(s18, m, d + 0x70, 5, 5, 0);
    func_00213D28(m, 5, 5);
    f0 = 14.0f;
    f1 = 28.0f;
    *(unsigned char *)(m + 0x20) = 0xA;
    goto AE90;

AC74:
    *(unsigned char *)(d + 0x67) = 0x78;
    f21 = 80.0f;
    f1 = D_0015EE70;
    f12 = *(float *)&D_L03_00161960;
    f2 = f1 * f21;
    f0 = *(float *)&D_L03_00161968;
    f12 = f12 + f12;
    f0 = f0 * f1;
    *(float *)(d + 0x80) = f2;
    f12 = f12 * f2;
    f0 = func_001F9B50(f12);
    *(float *)(d + 0x84) = f0;
    f20 = f0;
    f1 = *(float *)&D_L03_00161960;
    f12 = D_0015EE70;
    f1 = f1 + f1;
    f12 = f12 * f21;
    f0 = func_001F9B50(f1 * f12);
    f3 = D_0015EE70;
    f20 = f20 + f20;
    f0 = f0 + f0;
    f1 = *(float *)&D_L03_00161968;
    f21 = f3 * f21;
    f4 = 0.5f;
    f1 = f1 * f3;
    f2 = *(float *)&D_L03_00161964;
    f12 = *(float *)&D_L03_00161960;
    f20 = f20 / f21;
    f0 = f0 / f21;
    f1 = f1 * f4;
    f12 = f12 + f12;
    f2 = f2 / f20;
    f1 = f1 * f0;
    f12 = f12 * f21;
    f2 = f2 + f1;
    *(float *)(d + 0x88) = f2;
    f0 = func_001F9B50(f12);
    *(float *)(d + 0x8C) = f0;
    *(int *)(d + 0x94) = 9;
    *(unsigned char *)(d + 0xAD) = 0;
    s0 = *(u128 *)(q + 0x10);
    func_L00_0025BBA0(&s0, &s18, d + 0x88, d + 0x8C);
    func_L00_0025D5B0(s18, m, d + 0x70, 5, 5, 0);
    f0 = 6.0f;
    f1 = 13.0f;
    *(unsigned char *)(m + 0x20) = 0xA;
    goto AE90;

AD84:
    *(unsigned char *)(d + 0x67) = 0x78;
    f21 = 80.0f;
    f1 = D_0015EE70;
    f12 = *(float *)&D_L03_00161960;
    f2 = f1 * f21;
    f0 = *(float *)&D_L03_00161968;
    f12 = f12 + f12;
    f0 = f0 * f1;
    *(float *)(d + 0x80) = f2;
    f12 = f12 * f2;
    f0 = func_001F9B50(f12);
    *(float *)(d + 0x84) = f0;
    f20 = f0;
    f1 = *(float *)&D_L03_00161960;
    f12 = D_0015EE70;
    f1 = f1 + f1;
    f12 = f12 * f21;
    f0 = func_001F9B50(f1 * f12);
    f3 = D_0015EE70;
    f20 = f20 + f20;
    f0 = f0 + f0;
    f1 = *(float *)&D_L03_00161968;
    f21 = f3 * f21;
    f4 = 0.5f;
    f1 = f1 * f3;
    f2 = *(float *)&D_L03_00161964;
    f12 = *(float *)&D_L03_00161960;
    f20 = f20 / f21;
    f0 = f0 / f21;
    f1 = f1 * f4;
    f12 = f12 + f12;
    f2 = f2 / f20;
    f1 = f1 * f0;
    f12 = f12 * f21;
    f2 = f2 + f1;
    *(float *)(d + 0x88) = f2;
    f0 = func_001F9B50(f12);
    *(float *)(d + 0x8C) = f0;
    *(int *)(d + 0x94) = 9;
    *(unsigned char *)(d + 0xAD) = 0;
    s0 = *(u128 *)(q + 0x10);
    func_L00_0025BBA0(&s0, &s18, d + 0x88, d + 0x8C);
    func_L00_0025D5B0(s18, m, d + 0x70, 6, 5, 2);
    f0 = 5.0f;
    f1 = 10.0f;
    *(unsigned char *)(m + 0x20) = 0xA;
    goto AE90;

AEB4:
    f2 = D_0015EE70;
    f20 = 40.0f;
    f0 = *(float *)&D_L03_00161968;
    f1 = f2 * f20;
    f22 = 4.0f;
    f0 = f0 * f2;
    *(float *)(d + 0x80) = f1;
    f12 = f1 * f22;
    f21 = func_001F9B50(f12);
    *(float *)(d + 0x84) = f0;
    f12 = D_0015EE70 * f20;
    f12 = f12 * f22;
    f0 = func_001F9B50(f12);
    f21 = f21 + f21;
    f0 = f0 + f0;
    f1 = *(float *)&D_L03_00161968;
    f4 = D_0015EE70;
    f20 = f4 * f20;
    f3 = 0.5f;
    f1 = f1 * f4;
    f2 = 3.0f;
    f21 = f21 / f20;
    f0 = f0 / f20;
    f1 = f1 * f3;
    f12 = f20 * f22;
    f2 = f2 / f21;
    f1 = f1 * f0;
    f2 = f2 + f1;
    *(float *)(d + 0x88) = f2;
    f0 = func_001F9B50(f12);
    *(float *)(d + 0x8C) = f0;
    *(int *)(d + 0x94) = 9;
    *(unsigned char *)(d + 0xAD) = 0;
    s0 = *(u128 *)(q + 0x10);
    func_L00_0025BBA0(&s0, &s18, d + 0x88, d + 0x8C);
    func_L00_0025D5B0(s18, m, d + 0x70, 7, 5, 2);
    f0 = D_0015EE6C;
    f0 = f0 + f0;
    f2 = 10.0f;
    f1 = 20.0f;
    *(float *)(d + 0xC0) = f2;
    *(float *)(d + 0xC4) = f1;
    *(float *)(d + 0xBC) = f0;
    *(unsigned char *)(d + 0x255) = 0;
    *(short *)(m + 0x34) = *(unsigned short *)(m + 0x34) & 0xEFFF;
    *(unsigned char *)(d + 0x67) = 0xFA;
    *(unsigned char *)(m + 0x20) = 0xD;
    func_0022ED80(3, 0, (int)m);
    if (*(unsigned char *)(m + 0x53) == 7) {
        d = d + 0x60;
        goto B020;
    }
    func_00213DE0(m, 7, 0, func_001F9850(6));
    goto B01C;

AE90:
    *(float *)(d + 0xC0) = f0;
    *(float *)(d + 0xC4) = f1;
    func_0022ED80(1, 0, (int)m);
    goto B01C;

B01C:
    d = d + 0x60;
B020:
    func_L00_0025E4B0(m, (short *)d);
    p5 = d;
B030:
B034:
    *(unsigned char *)(m + 0xA4) = 0xFF;
    func_L00_0025E590(m, p5);
}
