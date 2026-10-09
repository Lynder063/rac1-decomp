/* NON_MATCHING func_L09_002C73D0 -- src/overlays/shared/vendor_002C6B30.c
 * Best so far: SIZE ours 1404 / retail 1400, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped at budget (10 runs). Best candidate p9.c: size matches retail (1400 bytes), 891 of 1400 bytes equal. T
 *   Remaining differences: the r2==2 path (retail computes the constant 7 in the bne delay slot; ours puts the 0xA
 */
extern int func_001F9908(int *arg0);
extern int func_001F9850(int);
extern void func_L00_0025E4B0(void *m, short *p);
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, int, int, int);
extern int func_001FA898(float);
extern float func_L00_001FF860(float, float);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern void func_L00_0025D5B0(void *, void *, float, int, int, int);
extern void func_L01_0026F040(int, int);
extern void func_L00_002584A8(void *, int, int);
extern void func_L00_0025E590(void *, void *);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_002140B0(int);
extern int func_L00_00260D30(void *, void *, float);
extern int func_L00_00260FB0(void *, void *, float, int, int, void *, int);
extern float func_001F9D48(void *, void *);
extern float func_001F9B88(float);
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern char *D_L09_001B0930[];
extern float D_L09_00161494 SDATA(D_L09_00161494);
extern float D_L09_00161480 SDATA(D_L09_00161480);
extern float D_L09_00161488 SDATA(D_L09_00161488);
extern float D_L09_00161490 SDATA(D_L09_00161490);
extern float D_L09_0016148C SDATA(D_L09_0016148C);
extern char D_0013E633[];

/* Moby state machine: steps the moby at +0x78 through its states and calls the helpers (retail func_L09_002C73D0). */
void func_L09_002C73D0(char *m) {
    char vec[16];
    float f14, f18, f1c, f20;
    int o10, one, r2, r16;
    char *d, *t, *r19, *p20, *q4;

    if (*(unsigned char *)(m + 0x20) == 0) {
        return;
    }
    d = *(char **)(m + 0x78);
    t = *(char **)(m + 0x24);
    {
        float c = *(float *)(m + 0x2C);
        *(float *)(m + 0x2C) = c + ((*(float *)(t + 0x24) * D_L09_00161494) - c) * 0.1f;
    }
    r2 = func_001F9908((int *)(d + 0x184));
    if (r2 == 2) {
        *(unsigned char *)(m + 0x20) = 7;
        return;
    }
    if (*(int *)(d + 0x184) == func_001F9850(0xA) || *(int *)(d + 0x184) == func_001F9850(0x14)
        || *(int *)(d + 0x184) == func_001F9850(0x28) || *(int *)(d + 0x184) == func_001F9850(0x3C)
        || *(int *)(d + 0x184) == func_001F9850(0x78) || *(int *)(d + 0x184) == func_001F9850(0xB3)) {
        p20 = d + 0x60;
        *(unsigned char *)(d + 0x67) = 0xF0;
        func_L00_0025E4B0(m, (short *)(d + 0x60));
    } else {
        p20 = d + 0x60;
    }
    f20 = 0.0f;
    f14 = f20;
    one = 1;
    r19 = func_L00_0025B478(m, 0x330000, 0);
    r16 = func_L00_0025B4D0(m, r19, d + 0x20, 0, &o10, (int)&f14, 0, 4);
    if (o10 != one && *(unsigned char *)(m + 0x20) != 6) {
        float f0v = *(float *)(d + 0x20) - f14;
        *(float *)(d + 0x20) = f0v;
        if (f0v <= f20) {
            r16 = 1;
        }
        r2 = func_001FA898(512.0f);
        *(float *)(d + 0x98) = f20;
        *(int *)(d + 0x94) = one;
        *(unsigned char *)(d + 0xAD) = 0;
        *(int *)(d + 0x90) = r2;
        *(float *)(d + 0x80) = D_L09_00161480 * D_0015EE70;
        *(float *)(d + 0x84) = D_0015EE70 * 30.0f;
        func_0022ED80(8, 0, (int)m);

        switch (r16) {
        case 1:
        case 2:
            {
                unsigned short hv = *(unsigned short *)(m + 0x34);
                float g3 = D_L09_00161480 * D_0015EE70;
                float g1 = D_L09_00161490 * D_0015EE6C;
                float g0 = D_L09_0016148C * D_0015EE6C;
                *(unsigned short *)(m + 0x34) = hv & 0xEFFF;
                *(float *)(d + 0x80) = g3;
                *(float *)(d + 0xC0) = 14.0f;
                *(float *)(d + 0xC4) = 28.0f;
                *(float *)(d + 0x88) = g1;
                *(float *)(d + 0x8C) = g0;
                f1c = func_L00_001FF860(*(float *)(m + 0x10) - *(float *)(*(char **)(r19 + 0x20) + 0x10),
                                        *(float *)(m + 0x14) - *(float *)(*(char **)(r19 + 0x20) + 0x14));
                qcopy(vec, r19 + 0x10);
                func_L00_0025BBA0(vec, &f1c, d + 0x88, d + 0x8C);
                func_L00_0025D5B0(m, d + 0x70, f1c, 4, 1, 0);
                func_L00_002584A8(m, 0, -1);
                *(unsigned char *)(m + 0x20) = 6;
                *(unsigned char *)(d + 0x67) = 0xF0;
            }
            break;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
            {
                float g0 = D_L09_00161488 * D_0015EE6C;
                int a21;
                *(float *)(d + 0xC0) = 3.0f;
                *(float *)(d + 0xC4) = 6.0f;
                *(float *)(d + 0x88) = g0;
                *(int *)(d + 0x8C) = 0;
                f18 = func_L00_001FF860(*(float *)(m + 0x10) - *(float *)(*(char **)(r19 + 0x20) + 0x10),
                                        *(float *)(m + 0x14) - *(float *)(*(char **)(r19 + 0x20) + 0x14));
                qcopy(vec, r19 + 0x10);
                func_L00_0025BBA0(vec, &f18, d + 0x88, d + 0x8C);
                func_L00_0025D5B0(m, d + 0x70, f18, 4, 1, 0);
                a21 = *(unsigned char *)(m + 0x21);
                *(unsigned char *)(m + 0x20) = 5;
                if (a21 != 0xFF) {
                    func_L01_0026F040(a21, 1);
                }
                *(unsigned char *)(d + 0x67) = 0x78;
            }
            break;
        case 9:
        case 10:
            *(unsigned char *)(d + 0x67) = 0xFA;
            break;
        case 0:
        case 11:
            break;
        default:
            break;
        }
        func_L00_0025E4B0(m, (short *)p20);
    }

    func_L00_0025E590(m, p20);
    *(unsigned char *)(m + 0xA4) = 0xFF;
    if (*(int *)(d + 0x38) != 0 || *(unsigned char *)(m + 0xBC) == 1) {
        *(int *)(d + 0x190) = func_001FA898(func_001F9878(func_002140F8(180.0f, 240.0f)));
        *(int *)(d + 0x38) = 0;
        *(unsigned char *)(m + 0xBC) = 0;
    }
    func_001F9908((int *)(d + 0x190));
    r2 = func_002140B0(4);
    if (r2 != 0) {
        q4 = *(char **)(d + 0x160);
        if (q4 != 0 && *(unsigned char *)(q4 + 0x20) != 0xFE && *(unsigned char *)(q4 + 0x20) != 0xFD) {
            qcopy(d + 0x120, q4 + 0x10);
        } else {
            *(int *)(d + 0x160) = 0;
            *(int *)(d + 0x164) = 2;
        }
    } else {
        if (*(int *)(d + 0x190) != 0) {
            *(float *)(d + 0x188) = 24.0f;
            r2 = func_L00_00260D30(m, d + 0x120, 24.0f);
        } else {
            char *tb;
            *(float *)(d + 0x188) = 12.0f;
            tb = D_L09_001B0930[*(int *)(d + 0x180)];
            r2 = func_L00_00260FB0(m, d + 0x120, 12.0f, 0, 0, tb + 0x10, *(int *)tb);
        }
        if (r2 != 2 && *(int *)(d + 0x190) == 0) {
            float f0v = func_001F9D48(m + 0x10, d + 0x120);
            if (*(float *)(d + 0x188) < f0v) {
                *(int *)(d + 0x164) = 2;
            } else if (3.0f < func_001F9B88(*(float *)(m + 0x18) - *(float *)(d + 0x128))) {
                *(int *)(d + 0x164) = 2;
            }
        }
    }
    if (*(int *)(d + 0x160) == 0) {
        *(int *)(d + 0x160) = *(int *)(D_0013E633 + 0x2E9D);
    }
}
