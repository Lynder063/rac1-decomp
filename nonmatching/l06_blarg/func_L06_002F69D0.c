/* NON_MATCHING func_L06_002F69D0 -- src/overlays/l06_blarg/vendor_002B5990.c
 * Best so far: SIZE ours 2028 / retail 2008, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L06_002F69D0 (hq10 s08, level 06 moby class 1028 update, 2008 bytes)
 *   Outline: state byte at moby+0x20 jumps through a 7-entry table. State 0 looks up a table byte at D_0014171B+0x
 *   Run 1 (p1): compiles, 1960 bytes vs 2008. Run 2 (p2): loop body re-reads the slot pointer after each store, 20
 *   Left: 48 bytes short. The largest hunk is around retail +0x3cc (state 3/4 boundary): ours lays out about 140 b
 */
extern char D_0013E633[];
extern char D_0013D5DD[];
extern char D_0014171B[];
extern int D_0015EE84 MACRO_ADDR;
extern char *D_L06_0016016C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern int D_L06_0015F6A8 MACRO_ADDR;
extern short D_L06_0015F4FC;
extern short D_L06_00161E08;
extern short D_L06_00161E0C;
extern short D_L06_00161E10;
extern short D_L06_00161E14;
extern short D_L06_00161E18;
extern short D_L06_00161E1C;
extern short D_L06_00161E20;
extern short D_L06_00161E24;
extern short D_L06_00161E28;
extern short D_L06_00161E2C;
extern short D_L06_00161E30;
extern short D_L06_00161E34;
extern short D_L06_00161E3C;
extern short D_L06_00161E40;
extern short D_L06_0015F16C;
extern char *func_0020D348(int);
extern void func_L06_002F71A8(void *);
extern int func_001F9850(int);
extern float func_00214D28(float *, float, float);
extern float func_001F9B88(float);
extern void func_L00_00217718(void *, void *, int, int);
extern void func_L00_002EBF50(void *, void *, int, int, int);
extern void func_0022ED80(int, int, int);
extern void func_L00_002512D8(int);
extern float func_00214D88(float *, float *, float, float, float, float);
extern int func_L00_0028EB98(void *, int);
extern void func_L00_0028EBF0(int);
extern void func_001F9C08(void *, void *, void *, float);
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern void func_L00_002EBE88(void *);
extern void func_L00_002EBEE0(void *);
extern void func_L06_00239CD0(void);
extern void func_L00_002EC0C8(int);
extern int func_L00_00203F20(int, int);
extern void func_L00_00264DB8(int, int);
extern int func_0020BFC8(int, int);

/* Level 6 moby update (class 1028): a state machine that spawns two rings of child mobys, then steers the hub along its path. */
void func_L06_002F69D0(char *m) {
    char *s;
    float buf[24];
    float f12, f13, f15, f20, f21, f0, f1;
    int i, r;
    char *base;
    char **pa, **pb;
    char *o;
    unsigned char r16;

    s = *(char **)(m + 0x78);
    switch (*(unsigned char *)(m + 0x20)) {
    case 0: {
        unsigned char t = *(unsigned char *)(D_0014171B + 0xAA35 + (*(unsigned char *)(m + 0xB0) + (D_0015EE84 << 4)));
        if (t == 0xFF) {
            m[0x20] = 6;
            *(float *)&D_L06_00161E08 = 20.0f;
            *(float *)&D_L06_00161E10 = 1000.0f;
            *(float *)&D_L06_00161E0C = 1000.0f;
        } else {
            m[0x20] = 1;
        }
        pa = (char **)(s + 0x70);
        pb = (char **)(s + 0xC0);
        for (i = 0x13; i >= 0; i--) {
            *pa = func_0020D348(0x405);
            *(short *)(*pa + 0x32) = 0x40;
            *(unsigned char *)(*pa + 0x31) = 1;
            *(s64 *)(*pa + 0x38) = *(s64 *)(*(char **)(D_0013E633 + 0xE1D + 0x2080) + 0x38);
            *(short *)(*pa + 0x34) = *(unsigned short *)(m + 0x34);
            qcopy(*pa + 0x10, m + 0x10);
            qcopy(*pa + 0x40, m + 0x40);
            *pb = func_0020D348(0x405);
            *(short *)(*pb + 0x32) = 0x40;
            *(unsigned char *)(*pb + 0x31) = 1;
            *(s64 *)(*pb + 0x38) = *(s64 *)(m + 0x38);
            *(short *)(*pb + 0x34) = *(unsigned short *)(m + 0x34);
            qcopy(*pb + 0x10, m + 0x10);
            qcopy(*pb + 0x40, m + 0x40);
            pa++;
            pb++;
        }
        pa = (char **)(s + 0x110);
        pb = (char **)(s + 0x138);
        for (i = 9; i >= 0; i--) {
            *pa = func_0020D348(0x406);
            *(short *)(*pa + 0x32) = 0x40;
            *(unsigned char *)(*pa + 0x31) = 1;
            *(s64 *)(*pa + 0x38) = *(s64 *)(*(char **)(D_0013E633 + 0xE1D + 0x2080) + 0x38);
            *(short *)(*pa + 0x34) = *(unsigned short *)(m + 0x34);
            qcopy(*pa + 0x10, m + 0x10);
            qcopy(*pa + 0x40, m + 0x40);
            *pb = func_0020D348(0x406);
            *(short *)(*pb + 0x32) = 0x40;
            *(unsigned char *)(*pb + 0x31) = 1;
            *(s64 *)(*pb + 0x38) = *(s64 *)(m + 0x38);
            *(short *)(*pb + 0x34) = *(unsigned short *)(m + 0x34);
            qcopy(*pb + 0x10, m + 0x10);
            qcopy(*pb + 0x40, m + 0x40);
            pa++;
            pb++;
        }
        func_L06_002F71A8(m);
        return;
    }
    case 1:
        if (((unsigned char *)D_0013E633)[0x2EC1] != 1) return;
        if (((unsigned char *)D_0013D5DD)[1] == 0) return;
        if (D_L06_0015F6A8 != 0) return;
        *(float *)&D_L06_0015F4FC = 1.0f;
        m[0x20] = 3;
        *(float *)(s + 0x6C) = -0.01f;
        return;
    case 2:
        return;
    case 3:
    case 5: {
        f21 = *(float *)(s + 0x6C);
        r = func_001F9850(0x14);
        f20 = 1.0f;
        f13 = (float)r;
        func_00214D28((float *)(s + 0x6C), f20, f20 / f13);
        f0 = func_001F9B88(*(float *)(s + 0x6C));
        f20 = f20 - f0;
        *(float *)&D_L06_0015F4FC = f20;
        if (m[0x20] == 3) {
            if (f21 < 0.0f && 0.0f <= *(float *)(s + 0x6C)) {
                func_L00_00217718(D_0013E633 + 0xE9D, D_0013E633 + 0xE9D + 0x10, 0x72, 1);
                func_L00_002EBF50(D_L06_0016016C + (*(int *)(s + 0x60) << 7) + 0x30,
                                  D_L06_0016016C + (*(int *)(s + 0x60) << 7) + 0x70, 1, 0, 0);
                return;
            }
            if (1.0f <= *(float *)(s + 0x6C)) {
                m[0x20] = 4;
                func_0022ED80(0, 4, *(int *)(s + 0x134));
                m[0xBC] = 4;
            }
            return;
        }
        if (f21 < 0.0f && 0.0f <= *(float *)(s + 0x6C)) {
            func_L06_00239CD0();
            func_L00_002EC0C8(3);
            return;
        }
        if (1.0f <= *(float *)(s + 0x6C)) {
            m[0x20] = 6;
            func_L00_00203F20(0x1776, 0x2D);
            func_L00_00264DB8(0x177C, -1);
            func_0020BFC8(0, -1);
        }
        return;
    }
    case 4:
        func_L00_002512D8(*(unsigned char *)(m + 0xB0));
        if (*(float *)&D_L06_00161E08 < 20.0f) {
            f13 = *(float *)&D_L06_00161E20 * D_0015EE70;
            f15 = *(float *)&D_L06_00161E14 * D_0015EE6C;
            func_00214D88((float *)&D_L06_00161E08, (float *)&D_L06_00161E2C, 20.0f, f13, f13, f15);
        }
        if (*(float *)&D_L06_00161E3C < *(float *)&D_L06_00161E08) {
            if (*(float *)&D_L06_00161E0C < 1000.0f) {
                f13 = *(float *)&D_L06_00161E24 * D_0015EE70;
                f15 = *(float *)&D_L06_00161E18 * D_0015EE6C;
                func_00214D88((float *)&D_L06_00161E0C, (float *)&D_L06_00161E30, 1000.0f, f13, f13, f15);
            }
        }
        if (*(float *)&D_L06_00161E40 < *(float *)&D_L06_00161E0C) {
            if (*(float *)&D_L06_00161E10 < 1000.0f) {
                f13 = *(float *)&D_L06_00161E28 * D_0015EE70;
                f15 = *(float *)&D_L06_00161E1C * D_0015EE6C;
                func_00214D88((float *)&D_L06_00161E10, (float *)&D_L06_00161E34, 1000.0f, f13, f13, f15);
            }
        }
        if (1000.0f <= *(float *)&D_L06_00161E10) {
            m[0x20] = 5;
            *(float *)(s + 0x6C) = -1.0f;
        }
        {
            unsigned char b = m[0xBC];
            r16 = b;
            if (20.0f <= *(float *)&D_L06_00161E08) {
                if (func_L00_0028EB98(*(void **)(s + 0x134), r16) != 0) {
                    char *e = D_0013E633 + 0x1D + 0x70 * r16;
                    if (*(int *)(e + 0x88) == *(int *)(s + 0x134)) {
                        if (((unsigned char *)e)[0x74] != 0) {
                            func_L00_0028EBF0(r16);
                        }
                    }
                    m[0xBC] = -1;
                }
            }
        }
        func_L06_002F71A8(m);
        base = *(char **)&D_L06_0015F16C;
        if (*(float *)&D_L06_00161E08 < 20.0f) {
            f20 = *(float *)&D_L06_00161E08 / 20.0f;
            qcopy(&buf[8], base + (*(int *)(s + 0x60) << 7) + 0x30);
            qcopy(&buf[16], base + (*(int *)(s + 0x64) << 7) + 0x30);
            qcopy(&buf[12], base + (*(int *)(s + 0x60) << 7) + 0x70);
            qcopy(&buf[20], base + (*(int *)(s + 0x64) << 7) + 0x70);
        } else {
            f20 = *(float *)&D_L06_00161E10 / 1000.0f;
            qcopy(&buf[8], base + (*(int *)(s + 0x64) << 7) + 0x30);
            qcopy(&buf[16], base + (*(int *)(s + 0x68) << 7) + 0x30);
            qcopy(&buf[12], base + (*(int *)(s + 0x64) << 7) + 0x70);
            qcopy(&buf[20], base + (*(int *)(s + 0x68) << 7) + 0x70);
        }
        func_001F9C08(buf, &buf[8], &buf[16], f20);
        f0 = func_001FA790(buf[20], buf[12]);
        f0 = f0 * f20;
        buf[4] = f0;
        f0 = func_001FA748(buf[12], f0);
        buf[4] = f0;
        f0 = func_001FA790(buf[21], buf[13]);
        f0 = f0 * f20;
        buf[5] = f0;
        f0 = func_001FA748(buf[13], f0);
        buf[5] = f0;
        f0 = func_001FA790(buf[22], buf[14]);
        f0 = f0 * f20;
        buf[6] = f0;
        f0 = func_001FA748(buf[14], f0);
        buf[6] = f0;
        func_L00_002EBE88(buf);
        func_L00_002EBEE0(&buf[4]);
        return;
    case 6:
        return;
    default:
        return;
    }
}
