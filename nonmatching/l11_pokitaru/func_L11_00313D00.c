/* NON_MATCHING func_L11_00313D00 -- src/overlays/l11_pokitaru/vendor_00312BD8.c
 * Best so far: SIZE ours 2512 / retail 2524, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * No longer builds in its file (COMPILE failed, 2026-10-09): match its declarations to the file's first.
 * What the last attempts found:
 *   - func_L11_00313D00 (2524 bytes, level 11): per-frame moby update. Timer and position steps at 0x64/0x68, spri
 *   - Wall: the block gated on (o+0xDC)==0 reads and writes an absolute resident address built as `lui 0x140000>>1
 *   - Unblock: the name for 0x140A4C, then the scheduling of the lui/lwc1 $gp loads at the top (retail puts the D_
 */
typedef int u128 __attribute__((mode(TI)));
extern float D_0015EE6C MACRO_ADDR;
extern int D_0015EFA4 MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_L11_0015F660[] MACRO_ADDR;
extern unsigned char D_0013A5E0[];
extern char D_0014171B[];
extern char D_0013E633[];
extern char D_L11_001748C0[];
extern float D_L11_0016D570;
extern short D_L11_00162120;
extern short D_L11_00162080;
extern short D_L11_00162078;
extern short D_L11_00162084;
extern short D_L11_00162088;
extern short D_L11_0016207C;
extern short D_L11_0016208C;
extern short D_L11_00162090;
extern short D_L11_00162094;
extern short D_L11_00162098;
extern short D_L11_0016209C;
extern short D_L11_001620A4;
extern short D_L11_001620A8;
extern short D_L11_001620AC;
extern short D_L11_001620B0;
extern short D_L11_001620C4;
extern short D_L11_001620C8;
extern short D_L11_001620CC;
extern short D_L11_001620DC;
extern short D_L11_001620E0;
extern short D_L11_001621DC;
extern short D_L11_0016210C;
extern short D_L11_00162110;
extern short D_L11_00162134;
extern short D_L11_00162138;
extern short D_L11_00162144;
extern short D_L11_00162148;
extern short D_L11_0016212C;
extern short D_L11_00162130;
extern short D_L11_0016213C;
extern short D_L11_00162140;
extern short D_L11_0016214C;
extern short D_L11_00162150;
extern short D_L11_00162154;
extern short D_L11_00162170;
extern short D_L11_00162174;
extern short D_L11_00162178;
extern short D_L11_0016217C;
extern short D_L11_00162180;
extern short D_L11_00162184;
extern short D_L11_00162188;
extern short D_L11_0016218C;
extern short D_L11_00162190;
extern short D_L11_00162194;
extern short D_L11_00162198;
extern short D_L11_0016219C;
extern short D_L11_001621A0;
extern short D_L11_001621A4;
extern short D_L11_001621A8;
extern short D_L11_001621AC;
extern short D_L11_001621B0;
extern short D_L11_001621B4;
extern short D_L11_001621B8;
extern short D_L11_001621BC;
extern short D_L11_001621C0;
extern short D_L11_001621C4;
extern short D_L11_001621C8;
extern short D_L11_001621E0;
extern short D_L11_001621E4;
extern short D_L11_001621E8;
extern int func_001F9850(int);
extern void func_L11_003153D0(char *, float *, float *);
extern float func_L00_0025C918(float *, float *, float, float, float, float);
extern float func_L00_0025CCF0(void *, float, void *, int, float, float, float);
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern void build_spherical_offset(float *out, float scale, float a, float b) __asm__("func_00215C00");
extern void func_L00_001FF4B0_313a70(void *, void *, float) __asm__("func_L00_001FF4B0");
extern void func_001F9BD8_313a70(void *, void *, void *) __asm__("func_001F9BD8");
extern void func_001FA1F8(void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern void func_L00_002EBE88(void *);
extern void func_L00_002EBEE0(void *);
extern float func_00214D88(float *, float *, float, float, float, float);
extern float func_001F9FA8(float);
extern float func_001F9F90(float);
extern void func_001F3140(void);
extern int func_L00_001F10E0(float, void *, int, void *);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, int, float, float, int, int, int, int);
extern void func_L00_001FF610(void *, void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001F9CE8(void *);
extern void func_001F9BF0(void *, void *, void *);
extern int func_L00_00203F20(int a, int b);
extern void func_001F49B0(void (*)(void), void *);
extern void func_L11_00313BC0(char *, char *);
extern void func_L11_00313A70(char *, char *, float, float);

/* Per-frame moby update: steps its timer and position, runs the pose helpers, then spawns and sets state. */
void func_L11_00313D00(char *moby, char *o) {
    float k = *(float *)&D_L11_00162120;
    float f0, f1, f2, f3, f8;
    float h20, h21;
    float fA, fB, fC, fF4, fF8;
    float pv[2];
    float v20[4], v30[4], v40[4], v50[4], v60[4], v70[4], v80[4], v90[4];
    float vA0[4], vB0[4], vC0[4];
    unsigned short c;
    char *X;
    int q;

    qzero(v40);
    v40[2] = D_0015EE6C * 8.0f * k;
    *(u128 *)v30 = *(u128 *)v40;
    qzero(v40);
    v40[2] = 1.0f;
    *(unsigned short *)(moby + 0x34) &= 0xFEFF;
    if (*(int *)&D_L11_00162080 < *(short *)(o + 0x68)) {
        if (*(int *)(D_0013A5E0 + 0x2460 + 0x1B0) & 0x40) {
            X = D_0014171B + 0x22D;
            c = *(unsigned short *)(X + 0xE0);
            if (c < 0xFFFF) *(unsigned short *)(X + 0xE0) = c + 1;
            q = func_001F9850(D_0015EFA4) / 600;
            if ((int)*(unsigned short *)(X + 0xE2) < q)
                *(short *)(X + 0xE2) = func_001F9850(D_0015EFA4) / 600;
            *(int *)(X + 0xE4) = *(int *)(X + 0xE4) | (1 << D_0015EE84) | 0x80000000;
            f1 = *(float *)&D_L11_0016208C * k;
            f2 = *(float *)&D_L11_00162088 * k;
            f0 = *(float *)(o + 0x64) + f1;
            *(float *)(o + 0x64) = f0;
            if (f2 < f0) *(float *)(o + 0x64) = f2;
        } else {
            f2 = *(float *)&D_L11_00162084 * k;
            f1 = *(float *)&D_L11_0016207C * k;
            f0 = f2 - f1;
            f3 = *(float *)(o + 0x64);
            if (f3 < f0) {
                *(float *)(o + 0x64) = f3 + f1;
            } else if (f2 < f3) {
                *(float *)(o + 0x64) = f3 + (f2 - f3) * *(float *)&D_L11_00162090;
            } else {
                *(float *)(o + 0x64) = f2;
            }
        }
    } else {
        c = *(unsigned short *)(o + 0x68);
        *(short *)(o + 0x68) = c + 1;
        *(float *)(o + 0x64) = *(float *)(o + 0x64) + *(float *)&D_L11_00162078 * k;
    }

    if (*(int *)&D_L11_00162094 < *(short *)(o + 0x68)) {
        char *tb = D_0013E633 + 0xE1D;
        float a2 = *(float *)(tb + 0x1D20);
        float a4 = *(float *)(tb + 0x1D24);
        h20 = *(float *)&D_L11_00162134;
        h21 = *(float *)&D_L11_00162144;
        pv[0] = a2;
        pv[1] = a4;
        if (*(int *)(D_0013A5E0 + 0x2460 + 0x1A0) & 0x200) {
            pv[0] = a2 / *(float *)&D_L11_001620A8 * *(float *)&D_L11_001620B0;
            pv[1] = a4 / *(float *)&D_L11_001620A4 * *(float *)&D_L11_001620AC;
            h20 = *(float *)&D_L11_00162138;
            h21 = *(float *)&D_L11_00162148;
        }
        func_L11_003153D0(moby, &pv[0], &pv[1]);
        func_L00_0025C918((float *)(o + 0x6C), (float *)(o + 0x90), pv[0], *(float *)&D_L11_0016212C, *(float *)&D_L11_00162130, h20);
        func_L00_0025C918((float *)(o + 0x70), (float *)(o + 0x94), pv[1], *(float *)&D_L11_0016213C, *(float *)&D_L11_00162140, h21);
        f0 = func_L00_0025CCF0((void *)(o + 0x30), *(float *)(o + 0x6C) * *(float *)&D_L11_0016210C, (void *)(o + 0x98), 0,
                               *(float *)&D_L11_0016214C, *(float *)&D_L11_00162150, *(float *)&D_L11_00162154);
        f0 = func_001FA790(*(float *)(o + 0x34), *(float *)(o + 0x70) * *(float *)&D_L11_001620A4);
        *(float *)(o + 0x34) = f0;
        if (1.3962634f < f0) {
            *(float *)(o + 0x34) = 1.3962634f;
        } else if (f0 < -1.3962634f) {
            *(float *)(o + 0x34) = -1.3962634f;
        }
        f0 = func_001FA790(*(float *)(o + 0x38), *(float *)(o + 0x6C) * *(float *)&D_L11_001620A8);
        *(float *)(o + 0x38) = f0;
    }

    build_spherical_offset(v50, *(float *)(o + 0x64), *(float *)(o + 0x38), -*(float *)(o + 0x34));
    func_L00_001FF4B0_313a70(moby + 0x10, v50, 1.0f);
    *(u128 *)v20 = *(u128 *)(moby + 0x10);
    func_001F9BD8_313a70(moby + 0x10, moby + 0x10, v50);

    {
        float ta = *(float *)(o + 0x64) - *(float *)&D_L11_00162084;
        float den = *(float *)&D_L11_00162088 - *(float *)&D_L11_00162084;
        f8 = (ta < 0.0f) ? 0.0f / den : ta / den;
    }
    f1 = *(float *)(o + 0x70) * *(float *)&D_L11_001621B8;
    f3 = f8 * *(float *)&D_L11_001621C0;
    vB0[0] = ((*(float *)&D_L11_001620B4 - f1) - f3) * *(float *)&D_L11_0016211C;
    vB0[1] = (*(float *)(o + 0x6C) * *(float *)&D_L11_00162110) * *(float *)&D_L11_0016211C;
    vB0[2] = (*(float *)&D_L11_001620B8 + *(float *)(o + 0x70) * *(float *)&D_L11_001621BC) * *(float *)&D_L11_0016211C;
    *(float *)(o + 0xC4) = f8;
    *(u128 *)vA0 = *(u128 *)vB0;
    func_L00_0025C918((float *)(o + 0xB4), (float *)(o + 0xC8), vA0[0], *(float *)&D_L11_00162194, *(float *)&D_L11_00162198, *(float *)&D_L11_0016219C);
    func_L00_0025C918((float *)(o + 0xB8), (float *)(o + 0xCC), vA0[1], *(float *)&D_L11_001621A0, *(float *)&D_L11_001621A4, *(float *)&D_L11_001621A8);
    func_L00_0025C918((float *)(o + 0xBC), (float *)(o + 0xD0), vA0[2], *(float *)&D_L11_001621AC, *(float *)&D_L11_001621B0, *(float *)&D_L11_001621B4);
    v90[0] = *(float *)(o + 0xB4);
    v90[1] = *(float *)(o + 0xB8);
    v90[2] = *(float *)(o + 0xBC);
    v90[3] = 0.0f;
    func_001FA1F8(vC0, o + 0x30);
    func_001F9EC0(v80, v90, vC0);
    func_001F9BD8_313a70(vB0, moby + 0x10, v80);
    func_L00_002EBE88(vB0);

    fA = func_001FA748(*(float *)(o + 0x30) * *(float *)&D_L11_001620C8, *(float *)(o + 0x6C) * *(float *)&D_L11_001620C4);
    fB = func_001FA748(*(float *)(o + 0x34), *(float *)&D_L11_001620CC);
    fC = func_001FA790(fB, *(float *)(o + 0x70) * *(float *)&D_L11_001620A4);
    fF8 = *(float *)(o + 0x38);
    fF4 = fC;
    func_L00_0025CCF0((void *)(o + 0x20), fA, (void *)(o + 0xA0), 0, *(float *)&D_L11_00162170, *(float *)&D_L11_00162174, *(float *)&D_L11_00162178);
    func_L00_0025CCF0((void *)(o + 0x24), fF4, (void *)(o + 0xA4), 0, *(float *)&D_L11_0016217C, *(float *)&D_L11_00162180, *(float *)&D_L11_00162184);
    func_L00_0025CCF0((void *)(o + 0x28), fF8, (void *)(o + 0xA8), 0, *(float *)&D_L11_00162188, *(float *)&D_L11_0016218C, *(float *)&D_L11_00162190);
    v70[0] = *(float *)(o + 0x20);
    fC = func_001FA790(*(float *)(o + 0x28), *(float *)(o + 0xD4));
    v70[2] = fC;
    v70[1] = func_001FA790(*(float *)(o + 0x24), *(float *)(o + 0xD8));
    func_L00_002EBEE0(v70);
    func_00214D88((float *)(o + 0xB0), (float *)(o + 0xC0),
                  (*(int *)(D_0013A5E0 + 0x2460 + 0x1B0) & 0x40) ? *(float *)&D_L11_001621C8 : *(float *)&D_L11_001621C4,
                  D_0015EE70 + D_0015EE70, D_0015EE70 + D_0015EE70, D_0015EE6C + D_0015EE6C);
    h20 = *(float *)(o + 0xB0) * 0.5f;
    {
        float ra = func_001F9FA8(h20);
        float rb = func_001F9F90(h20);
        h21 = ra / rb;
    }
    D_L11_0016D570 = h21;
    func_001F3140();
    *(float *)(moby + 0x40) = func_001FA748(*(float *)(o + 0x30), *(float *)(o + 0x6C) * *(float *)&D_L11_001621E0);
    *(float *)(moby + 0x44) = func_001FA748(*(float *)(o + 0x34), -*(float *)(o + 0x70) * *(float *)&D_L11_001621E4);
    *(float *)(moby + 0x48) = func_001FA748(*(float *)(o + 0x38), -*(float *)(o + 0x6C) * *(float *)&D_L11_001621E8);

    if (func_L00_001F10E0(2.0f, moby + 0x10, 0, moby)) {
        char *p = *(char **)(D_L11_001748C0 + 0x18);
        short t;
        if (p == 0) {
            func_L00_0025F4A8(moby, D_L11_0015F660, 0, 8.0f, 100.0f, 30, 10, 24, 16.0f, 8.0f, 9.0f, -1, 1.0f, 50.0f, 1, 1, -1, 0);
            *(unsigned char *)(moby + 0x31) = 0;
            *(unsigned char *)(moby + 0x20) = 7;
            *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) | 1;
            *(int *)(o + 0xF8) = func_001F9850(0x5A);
        } else {
            t = *(short *)(p + 0xA6);
            if (!(t == 0 || t == 0x192 || t == 0x4C2 || t == 0x4C3)) {
                *(u128 *)(moby + 0x10) = *(u128 *)(D_L11_001748C0 + 0x30);
                func_L00_001FF610(v50, v50, D_L11_001748C0 + 0x40);
                f0 = func_L00_001FF860(v50[0], v50[1]);
                f0 = func_001FA790(f0, *(float *)(o + 0x38));
                *(float *)(o + 0x38) = func_001FA748(*(float *)(o + 0x38), f0 * *(float *)&D_L11_00162098);
                f1 = func_001F9CE8(v50);
                f0 = func_L00_001FF860(f1, v50[2]);
                f0 = func_001FA790(-f0, *(float *)(o + 0x34));
                f0 = func_001FA748(*(float *)(o + 0x34), f0 * *(float *)&D_L11_0016209C);
                *(float *)(o + 0x34) = f0;
                *(float *)(o + 0x64) = *(float *)(o + 0x64) * *(float *)&D_L11_001620DC;
                if (*(int *)(o + 0xDC) == 0) {
                    float w;
                    w = *(float *)0x00140A4C - *(float *)&D_L11_001620E0;
                    if (w < 0.0f) *(float *)0x00140A4C = w;
                    func_001F9BF0(v60, D_L11_001748C0 + 0x50, D_L11_001748C0 + 0x60);
                    func_L00_001FF4B0_313a70(v60, v60, 1.0f);
                    func_L00_001FF610(v30, v50, D_L11_001748C0 + 0x40);
                    func_L00_001FF4B0_313a70(v30, v30, D_0015EE6C + D_0015EE6C);
                    func_L00_001FF4B0_313a70(v40, D_L11_001748C0 + 0x40, 1.0f);
                    func_L00_0025F4A8(moby, v30, 0, 8.0f, 100.0f, 30, 10, 24, 16.0f, 8.0f, 9.0f, -1, 1.0f, 50.0f, 1, 1, -1, 0);
                    *(unsigned char *)(moby + 0x20) = 7;
                    *(int *)(o + 0xDC) = *(int *)&D_L11_001621DC;
                }
            }
        }
    }
    if (*(unsigned short *)(D_0014171B + 0x5F5) == 0) {
        func_L00_00203F20(0x2AFC, 0x55);
    }
    h20 = 7.0f;
    func_001F49B0(func_L11_00313218, moby);
    func_L11_00313BC0(moby, o);
    f1 = func_001FA748(*(float *)(o + 0x28), -*(float *)(o + 0x6C) / h20);
    f0 = func_001FA748(*(float *)(o + 0x24), -(*(float *)(o + 0x70) / h20) - 0.1f);
    func_L11_00313A70(moby, o, f1, -f0);
}
