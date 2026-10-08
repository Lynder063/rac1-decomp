/* NON_MATCHING func_L03_0029ED60 -- src/overlays/l03_kerwan/vendor_00293720.c
 * Best so far: SIZE ours 2016 / retail 1996, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped at run 8 of 14 (best p7.c: 2016 bytes vs retail 1996, 20 over; the rest of the function is in the same
 *   Differences left: retail reloads 0($20) for the bgtzl then-arm (ours reuses the test value), the 7 divisor is 
 *   Unblock: a source form whose loads are not CSE'd across the branch, and retail's argument-setup order before t
 */
extern char *D_L03_00160058 MACRO_ADDR;
extern float func_002140F8(float, float);
extern unsigned char D_0013E633[];
extern char D_L03_001E2D18[];
extern char *D_L03_001B08B0[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern int func_L00_00200290(void *, float);
extern int func_L00_0025A208(int *, int, int, int);
extern int func_L00_0025A2F0(int *, int, int, int);
extern int func_L01_00276680(char *, float);
extern float func_001FA888(int);
extern int func_001F9850(int);
extern float func_001F9D10(void *, void *);
extern int func_001FA898(float);
extern int func_001E9730();
extern int func_001F9938(void *);
extern float func_001FA790(float, float);
extern float func_001F9CE8(void *);
extern float func_00214158(void);
extern void func_001F9BC0(void *);
extern void func_L01_0028C1D8(char *p);
extern int func_L01_0028C2D8(void *, void *, float);
extern void func_L01_0028C690(void *out, int *l, int idx, float a, float b);
extern int func_L01_0028C640(char *p);
extern int func_L01_0028C5F0(char *effect, int steps);
extern void func_L01_0028C848(float t, void *out, void *p1, void *p2, void *p3, void *p4);
extern void func_L01_0028C958(void *, int, void *, float, float);
extern void func_L00_0028EBF0(int);
extern void func_L03_0029DC60(char *moby, void *v, int flag);
extern void func_L03_0029E498(char *moby, void *v, int flag);

typedef int U128Y __attribute__((mode(TI)));

typedef struct {
    float v[4];
} __attribute__((aligned(16))) Q4y;

/* Update for moby class 75/115/116 (ship): ... see NOTES.md; steers the ship and its effects from the path data at data+0x60. */
void func_L03_0029ED60(unsigned char *moby) {
    int r22 = 0;
    char *data;
    char *o20;
    int kk;
    char *o50;
    char *r16;
    int k16;
    int t20;
    int r17;
    int r2;
    int r3;
    int r4;
    int r5;
    float f0, f1, f2, f3, f12, f13, f20;
    Q4y z0, s10, s20, s30, s40;
    char *p;
    char *q;

    *(U128Y *)&z0 = 0;
    data = *(char **)(moby + 0x78);
    if (moby[0x31] == 0) {
        short h = *(short *)(moby + 0x32);
        s30 = *(Q4y *)(moby + 0x10);
        s30.v[3] = 7.0f;
        r2 = func_L00_00200290(&s30, (float)h);
        r22 = (r2 == -1);
    }

    if (data == 0) goto L_F500;
    if (moby[0x21] == 0xFF) goto L_EED4;
    o20 = data + 0x60;
    if (moby[0x20] == 0) goto L_EED4;
    if (moby[0x20] == 3) goto L_EED4;
    r17 = 0;
    r2 = func_L00_0025A208((int *)&o50, ((unsigned char *)moby)[0x21], 0, 0);
    if ((int)o50 != (int)moby) goto L_EED8;
    r16 = o50;
    goto L_EE44;

L_EE30:
    func_L00_0025A2F0((int *)&o50, (int)o50, 0, 0);
    r16 = o50;
L_EE44:
    if (r16 == 0) goto L_EE70;
    f0 = func_001FA888(*(short *)(r16 + 0x32));
    r2 = func_L01_00276680(r16, f0);
    if (r2 == -1) goto L_EE30;
    r17 = 1;
L_EE70:
    if (r17 != 0) goto L_EED8;
    r2 = func_L00_0025A208((int *)&o50, ((unsigned char *)moby)[0x21], 0, 0);
    if (o50 == 0) goto L_EED8;
    r17 = 3;
    do {
        r16 = *(char **)(o50 + 0x78);
        o50[0x20] = (char)r17;
        *(short *)(r16 + 0x12C) = (short)func_001F9850(5);
        func_L00_0025A2F0((int *)&o50, (int)o50, 0, 0);
    } while (o50 != 0);
L_EED4:
L_EED8:
    func_L03_0029DB88((unsigned char *)moby);
    func_L03_0029E370(moby);
    k16 = moby[0x20];
    if (k16 == 1) goto L_F36C;
    if (k16 < 2) {
        if (k16 == 0) goto L_EF24;
        goto L_END;
    }
    if (k16 == 2) goto L_F2FC;
    if (k16 == 3) goto L_F354;
    goto L_END;

L_EF24:
    *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) | 0x1000;
    r4 = *(int *)(o20 + 0x14);
    if (r4 == -1) goto L_EF90;
    r16 = D_L03_001B08B0[r4];
    r5 = *(int *)r16;
    f0 = func_001F9D10(r16 + 0x10, r16 + (r5 << 4));
    if (f0 < 0.5f) {
        *(int *)r16 = *(int *)r16 - 1;
    }
    goto L_EFD0_ALT;

L_EF90:
    r2 = (int)D_L03_00160058;
    r16 = D_L03_001E2D18;
    r2 = ((int)moby - r2) >> 8;
    r17 = *(short *)(moby + 0xA6);
    r2 = func_001FA898((float)r2);
    func_001E9730(r16, r17, r2);
    r2 = 0xFF;
    goto L_EFD0_ALT;

L_EFD0_ALT:
    r2 = 0xFF;
    moby[0x30] = (char)r2;
    data[0x2B] = 1;
    f20 = 500.0f;
    data[0x2C] = 0x25;
    f0 = *(float *)(data + 0x140);
    if (f20 < f0) {
        f12 = func_002140F8(-1.0f, 1.0f);
        *(float *)(data + 0x140) = f12 * *(float *)(data + 0x140) / 1000.0f;
    }
    f0 = *(float *)(data + 0x144);
    if (f20 < f0) {
        f12 = func_002140F8(-1.0f, 1.0f);
        *(float *)(data + 0x144) = f12 * *(float *)(data + 0x144) / 1000.0f;
    }
    r3 = *(int *)(o20 + 0x14);
    r2 = (int)D_L03_00160058_t;
    if (r3 != -1) goto L_F08C;
    r2 = 2;
    moby[0x20] = (char)r2;
    goto L_END;

L_F08C:
    {
        int seven = 7;
        int d = (int)moby - r2;
        int sg;
        int qv;
        r17 = (int)moby + 0x10;
        sg = (unsigned)d >> 31;
        qv = ((d >> 8) + sg) >> 1;
        data[0x131] = (char)(qv % seven);
    }
    func_L01_0028C1D8(o20);
    if (((unsigned char *)o20)[5] != 0) goto L_F184;
    if (*(int *)o20 > 0) r5 = *(int *)o20;
    else r5 = *(int *)(o20 + 0x10);
    r4 = func_L01_0028C2D8(moby + 0x10, (void *)r5, 0.0f);
    *(int *)o20 = r4;
    if (o20[4] >= 0) {
        if (r4 == **(int **)(o20 + 0x10) - 1) *(int *)o20 = 0;
    } else {
        if (r4 == 0) *(int *)o20 = 0;
    }
    r5 = *(int *)o20;
    f0 = func_001F9D10(moby + 0x10, *(char **)(o20 + 0x10) + ((r5 << 4) + 0x10));
    *(float *)(o20 + 0xC) = f0;
    r2 = *(int *)o20;
    r3 = *(int *)(o20 + 0x10);
    r2 = r2 << 4;
    r3 = r3 + r2;
    f1 = *(float *)(r3 + 0x14);
    f0 = *(float *)(r3 + 0x10);
    f12 = *(float *)(moby + 0x10);
    f13 = *(float *)(moby + 0x14);
    f0 = func_L00_001FF860(f0 - f12, f1 - f13);
    *(float *)(o20 + 0x18) = f0;
    o20[5] = 2;
    *(int *)(o20 + 8) = 0;
    *(int *)(o20 + 0x1C) = 0;
    r2 = *(int *)o20;

L_F184:
    r16 = data + 0xA0;
    r3 = *(int *)(o20 + 0x10);
    r2 = (r2 << 4) + r3;
    f0 = 1.0f;
    f12 = *(float *)(data + 0x104);
    f13 = *(float *)(data + 0x108);
    *(float *)(data + 0x100) = f0;
    *(U128Y *)(data + 0xE0) = *(U128Y *)(r2 + 0x10);
    func_L01_0028C690(r16, (int *)o20, 0, f12, f13);
    r3 = *(int *)o20;
    r5 = *(int *)(o20 + 0x10);
    r3 = (r3 << 4) + r5;
    {
        U128Y qq = *(U128Y *)(r3 + 0x10);
        *(U128Y *)(data + 0xB0) = qq;
        *(U128Y *)(data + 0xC0) = qq;
    }
    *(int *)(moby + 0x40) = 0;
    f0 = func_001F9CE8(r16);
    f13 = *(float *)(data + 0xA8);
    f0 = func_L00_001FF860(f0, f13);
    *(float *)(moby + 0x44) = -f0;
    f2 = *(float *)((char *)&z0 + 4);
    f1 = *(float *)((char *)&z0 + 0);
    f12 = *(float *)(data + 0xA0) - f1;
    f13 = *(float *)(data + 0xA4) - f2;
    f0 = func_L00_001FF860(f12, f13);
    *(float *)(moby + 0x48) = f0;
    *(int *)(data + 0x114) = 0;
    *(int *)(data + 0x11C) = 0;
    *(U128Y *)(moby + 0x10) = *(U128Y *)(data + 0xE0);
    func_L03_0029DA60(moby, (float *)(moby + 0x10));
    f2 = *(float *)(data + 0x13C);
    data[0x131] = 7;
    if (6.28318548f < f2) {
        f0 = f2 * 0.0174532925f;
        *(float *)(data + 0x13C) = f0;
    } else {
        f1 = *(float *)(data + 0x134);
        if (f1 == 0.0f) goto L_F2BC;
        if (f2 == -1.0f) {
            *(float *)(data + 0x13C) = func_00214158();
        }
    }
L_F2BC:
    *(U128Y *)(data + 0xD0) = *(U128Y *)(data + 0xC0);
    func_L01_0028C958(o20, 0, moby, *(float *)(data + 0x104), *(float *)(data + 0x108));
    r2 = *(short *)(data + 0x12C);
    if (r2 > 0) {
        moby[0x20] = 3;
        goto L_END;
    }
    *(short *)(data + 0x14A) = 0;
    moby[0x20] = 1;
    goto L_END;

L_F2FC:
    r2 = *(int *)(o20 + 0x14);
    if (r2 != -1) moby[0x20] = 0;
    r5 = *(int *)(data + 0x150);
    if (r5 == -1) goto L_F348;
    p = (char *)(D_0013E633 + 0x1D) + r5 * 0x70;
    r4 = *(int *)(p + 0x88);
    if (r4 != (int)moby) { r2 = -1; goto L_F34C; }
    r2 = ((unsigned char *)p)[0x74];
    if (r2 == 0) { r2 = -1; goto L_F34C; }
    func_L00_0028EBF0(r5);
L_F348:
    r2 = -1;
L_F34C:
    *(int *)(data + 0x150) = r2;
    goto L_END;

L_F354:
    r2 = func_001F9938(data + 0x12C);
    if (r2 != 0) {
        moby[0x20] = 1;
    }
    goto L_END;

L_F36C:
    s10 = *(Q4y *)(moby + 0x40);
    s20 = *(Q4y *)(moby + 0x10);
    f1 = 1.0f;
    f0 = *(float *)(data + 0x100);
    if (f1 <= f0) {
        r17 = (int)data + 0xA0;
        f0 = f0 - f1;
        *(float *)(data + 0x100) = f0;
        kk = func_L01_0028C640(o20);
        *(U128Y *)(data + 0x90) = *(U128Y *)(data + 0xA0);
        func_L01_0028C690((char *)r17, (int *)o20, 1, *(float *)(data + 0x104), *(float *)(data + 0x108));
        *(U128Y *)(data + 0xB0) = *(U128Y *)(data + 0xC0);
        r2 = func_L01_0028C5F0(o20, kk + 1);
        r4 = *(int *)(o20 + 0x10);
        r2 = (r2 << 4) + r4;
        *(U128Y *)(data + 0xC0) = *(U128Y *)(r2 + 0x10);
    }
    func_001F9FA8(*(float *)(data + 0x13C));
    f1 = *(float *)(data + 0x134);
    f2 = *(float *)(data + 0x10C);
    f1 = f1 * f0;
    f3 = *(float *)(data + 0xBC);
    f0 = *(float *)(data + 0x138);
    f13 = f0 * 0.0174532925f;
    f2 = f2 + f1;
    f20 = f2 / f3;
    f0 = func_001FA748(*(float *)(data + 0x13C), f13);
    *(float *)(data + 0x13C) = f0;
    f12 = *(float *)(data + 0x100);
    *(U128Y *)(data + 0xE0) = *(U128Y *)(data + 0xD0);
    func_L01_0028C848(f12 + f20, data + 0xD0, data + 0xB0, data + 0xC0, data + 0x90, data + 0xA0);
    if (r22 == 0) {
        func_L03_0029E1A8(moby);
        f0 = *(float *)(data + 0x100);
        goto L_F4A0;
    }
    func_001F9BC0(moby + 0x40);
    f1 = *(float *)(data + 0xD0);
    f12 = *(float *)(data + 0xE0);
    f0 = *(float *)(data + 0xD4);
    f13 = *(float *)(data + 0xE4);
    f0 = func_L00_001FF860(f1 - f12, f0 - f13);
    *(float *)(moby + 0x48) = f0;
    f0 = *(float *)(data + 0x100);

L_F4A0:
    r17 = (int)moby + 0x10;
    f0 = f0 + f20;
    *(float *)(data + 0x100) = f0;
    *(U128Y *)(moby + 0x10) = *(U128Y *)(data + 0xE0);
    if (r22 != 0) goto L_F4C4;
    func_L03_0029DA60(moby, (float *)r17);

L_F4C4:
    func_001F9BF0(&s40, (void *)r17, &s20);
    *(U128Y *)&s30 = *(U128Y *)&s40;
    func_L03_0029DC60(moby, &s30, r22);
    func_L03_0029E498(moby, &s30, r22);
    goto L_END;

L_F500:
L_END:
    return;
}
