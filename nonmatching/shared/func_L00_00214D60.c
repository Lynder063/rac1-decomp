/* NON_MATCHING func_L00_00214D60 -- src/overlays/shared/help_00214D60.c
 * Best so far: SIZE ours 2236 / retail 2248, checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Hero movement-state velocity update (Lombyte FUN_L00_00214658 ported; control flow/consts/callees all mapped, 
 *   Best candidate p1.c (single `char *g = D_0013E633 + 0xE1D`): SIZE 2200/2248, only addressing/scheduling differ
 *   Would unblock: the spelling that makes the compiler re-materialise D_0013E633+0xE1D after calls like retail (p
 */
extern char D_0013E633[];
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern float D_L00_0017BED0[];
extern void func_L00_00213970(float, float);
extern int func_001F9850(int);
extern float func_00214D28(float *, float, float);
extern void func_L00_00212740(float, float);
extern void func_L00_00234420(float *dst, float *src, float z);
extern void func_L00_00233F88(void *, void *, float);
extern void func_L00_002124E8(int, float, float, float);
extern void func_L00_00214520(float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern int func_L00_0020DB30(int);
extern int func_L00_00217570(int, int);
extern float func_001FA850(float, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_L00_0025CCF0(char *, char *, int, float, float, float, float);
extern float func_001FA790(float, float);
extern void func_L00_00209850(float, float, float);
extern float func_001F9CE8(void *);
extern void func_L00_001FF500(void *, void *, float);
extern void func_L00_00211F80(int, float);

// Per-state horizontal velocity and turn updates for the hero's movement states. Adapted from Lombyte (MIT) for PAL: src/overlays/shared/ui_help_00214658.c, FUN_L00_00214658.
void func_L00_00214D60(void) {
    float tmp[4];
    float x;
    float speed;
    float a;
    float d;
    float arg;
    int state;

    state = *(int *)(D_0013E633 + 0xE1D + 0x2084);
    if (state == 10) {
        char *g = D_0013E633 + 0xE1D;
        func_L00_00213970(0.7f, D_0015EE6C * 0.0f);
        qcopy(g + 0x150, g + 0x920);
        *(float *)(g + 0x194) = *(float *)(g + 0x164);
    } else if (state == 0x10) {
        char *g = D_0013E633 + 0xE1D;
        if (func_001F9850(0x36) < *(int *)(g + 0x198)) {
            func_00214D28((float *)(g + 0x4A0), D_0015EE70 * 25.0f, D_0015EE70 * 7.0f);
        }
        if (*(int *)(g + 0x198) < func_001F9850(0x37)) {
            *(float *)(g + 0x190) = *(float *)(g + 0x3F4);
        } else {
            *(float *)(g + 0x190) = D_0015EE6C * 3.5f;
        }
        func_L00_00212740(D_0015EE70 * 44.0f, D_0015EE70 * 45.0f);
        func_L00_00234420((float *)(g + 0xE0), (float *)(g + 0xE0), 0.0f);
        func_L00_00233F88(g + 0xE0, g + 0xE0, *(float *)(g + 0x194));
    } else if (state == 0x1C) {
        char *g = D_0013E633 + 0xE1D;
        if (func_001F9850(0x28) < *(int *)(g + 0x198)) {
            func_L00_002124E8(0, D_0015EE64 * 0.04f, D_0015EE64 * 0.2f, D_0015EE6C * 15.009831f);
            func_L00_00214520(D_0015EE70 * 20.0f);
        }
        if (13.0f <= *(float *)(g + 0xAA8) && *(float *)(g + 0xAA8) <= 30.0f) {
            if (27.0f < *(float *)(g + 0xAA8)) {
                func_00214D28((float *)(g + 0x45C), 0.0f, D_0015EE70 * 8.0f);
            } else {
                func_00214D28((float *)(g + 0x45C), D_0015EE6C * 2.0f, D_0015EE70 * 8.0f);
            }
        }
        *(float *)(g + 0xE0) = func_001F9F90(*(float *)(g + 0x98)) * *(float *)(g + 0x45C);
        *(float *)(g + 0xE4) = func_001F9FA8(*(float *)(g + 0x98)) * *(float *)(g + 0x45C);
    } else if (state == 0x4C) {
        char *g = D_0013E633 + 0xE1D;
        if (5.0f <= *(float *)(g + 0xAA8) && *(float *)(g + 0xAA8) <= 18.0f) {
            if (15.0f < *(float *)(g + 0xAA8)) {
                func_00214D28((float *)(g + 0x45C), 0.0f, D_0015EE70 * 8.0f);
            } else {
                func_00214D28((float *)(g + 0x45C), D_0015EE6C * 1.25f, D_0015EE70 * 8.0f);
            }
        }
        *(float *)(g + 0xE0) = func_001F9F90(*(float *)(g + 0x98)) * *(float *)(g + 0x45C);
        *(float *)(g + 0xE4) = func_001F9FA8(*(float *)(g + 0x98)) * *(float *)(g + 0x45C);
    } else if (state == 11 || state == 12) {
        char *g = D_0013E633 + 0xE1D;
        if (D_0015EE84 != 0xE && func_L00_0020DB30(3) == 3 && func_001F9850(5) == *(int *)(g + 0x198)) {
            func_L00_00217570(1, 0);
        }
        *(float *)(g + 0x180) = *(float *)(g + 0x43C);
        func_L00_002124E8(0, D_0015EE64 * 0.04f, D_0015EE64 * 0.2f, D_0015EE6C * 6.981317f);
        if (*(int *)(g + 0x450) != 3) {
            *(float *)(g + 0x194) = *(float *)(g + 0x454);
        } else {
            *(float *)(g + 0x194) = 0.0f;
        }
        if (*(int *)(g + 0x2084) == 11) {
            if (*(short *)(g + 0x41E) != 0 && *(int *)(g + 0x44C) < func_001F9850(0xC)) {
                func_00214D28((float *)(g + 0x458), 0.0f, D_0015EE70 * 8.0f);
            } else {
                func_00214D28((float *)(g + 0x458), D_0015EE6C * 4.2f, D_0015EE70 * 8.0f);
            }
        }
        *(float *)(g + 0xE0) = func_001F9F90(*(float *)(g + 0x438)) * *(float *)(g + 0x458);
        *(float *)(g + 0xE4) = func_001F9FA8(*(float *)(g + 0x438)) * *(float *)(g + 0x458);
        a = *(float *)(g + 0x454) * func_001F9FA8(func_001FA850(*(float *)(g + 0x43C), *(float *)(g + 0x438)));
        *(float *)(g + 0xE0) += func_001F9F90(*(float *)(g + 0x43C)) * a;
        *(float *)(g + 0xE4) += func_001F9FA8(*(float *)(g + 0x43C)) * a;
        func_L00_00213970(0.7f, D_0015EE6C * 0.0f);
        qcopy(g + 0x150, g + 0x920);
    } else if (state == 0x11) {
        char *g = D_0013E633 + 0xE1D;
        *(float *)(g + 0x180) = *(float *)(g + 0x47C);
        qcopy(g + 0x170, g + 0x470);
        if (func_001F9850(9) < *(int *)(g + 0x198)) {
            func_L00_002124E8(-1, D_0015EE64 * 0.042f, D_0015EE64 * 0.2f, D_0015EE6C * 11.868238f);
        }
        if (func_001F9850(9) <= *(int *)(g + 0x198)) {
            if (*(short *)(g + 0x308) == 0) {
                *(float *)(g + 0xE0) = func_001F9F90(*(float *)(g + 0x180)) * (D_0015EE6C * 4.9f);
                *(float *)(g + 0xE4) = func_001F9FA8(*(float *)(g + 0x180)) * (D_0015EE6C * 4.9f);
            } else {
                func_L00_00234420((float *)(g + 0xE0), (float *)(g + 0xE0), 0.0f);
                func_L00_001FF4B0(tmp, g + 0x170, D_0015EE6C * 4.9f);
                func_001F9BD8(g + 0xE0, g + 0xE0, tmp);
            }
        }
        *(float *)(g + 0x194) = *(float *)(g + 0x164);
    } else {
        char *g = D_0013E633 + 0xE1D;
        if (state == 0x2D) {
            x = *(float *)(g + 0x98);
            *(float *)(g + 0x188) = func_L00_0025CCF0((char *)&x, g + 0x184, 0, *(float *)(g + 0x180), D_0015EE64 * 0.018f, D_0015EE64 * 0.2f, D_0015EE6C * 7.330383f);
            a = func_001FA790(x, *(float *)(g + 0x98));
            func_L00_00209850(0.0f, 0.0f, a);
        } else {
            func_L00_002124E8(0, D_0015EE64 * 0.04f, D_0015EE64 * 0.2f, *(float *)(g + 0x414));
        }
        func_L00_00213970(0.7f, D_0015EE6C * 0.0f);
        qcopy(g + 0x150, g + 0x920);
        arg = D_0015EE70 * 20.0f;
        if (*(float *)(g + 0x190) < D_L00_0017BED0[0] * D_0015EE6C * 0.2f) {
            if (*(int *)(g + 0x208C) == 2) {
                d = *(float *)(g + 0x944);
                if (*(unsigned char *)(g + 0x12E2)) d = D_0015EE70 * 0.17f;
                speed = func_001F9CE8(g + 0xE0);
                func_00214D28(&speed, 0.0f, d);
                func_L00_001FF500(g + 0xE0, g + 0xE0, speed);
                return;
            }
            if (*(short *)(g + 0x30A) != 0) {
                arg = D_0015EE70 * 6.0f;
            } else {
                arg = D_0015EE70 * 2.0f;
            }
        }
        if (*(short *)(g + 0x4A8) && *(unsigned char *)(g + 0x12E2)) {
            arg = D_0015EE70 * 0.17f;
            if (*(int *)(g + 0x2084) == 15) {
                func_L00_00211F80(0, D_0015EE6C * 2.5f);
                arg = D_0015EE70 * 3.0f;
            }
            if (0.2617994f < *(float *)(g + 0x2E0)) {
                *(float *)(g + 0x190) = 0.0f;
                arg = *(float *)(g + 0x2E0) * (D_0015EE70 * 9.0f) / 0.7853982f;
            }
        }
        func_L00_00214520(arg);
    }
}
