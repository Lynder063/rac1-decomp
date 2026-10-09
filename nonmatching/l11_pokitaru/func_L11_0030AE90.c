/* NON_MATCHING func_L11_0030AE90 -- src/overlays/l11_pokitaru/vendor_002CC828.c
 * Best so far: SIZE ours 2488 / retail 2492, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Pokitaru boat update (moby class 1075): copies its position, runs a switch on moby[0x20] (six states), some st
 *   Runs 1-9: the first candidate failed to compile on a clash with the file's `func_0022ED80_u` (void), renamed t
 *   Best: p7.c, 2488 bytes (4 short). Fixed: lbu for moby[0x20]/[0x53]/tb[0x74], the 0x14-sized pad gap before F (
 *   Left: prologue and per-case pointer slots (sp+0x80..0x94) are stored in a different order and spilled differen
 *   Unblock: a near-identical retail source shape for the per-case pointer-slot stores, or a way to see which of t
 */
extern void func_L11_0030B8D0(void *);
extern void func_00213DE0(void *, int, int, int);
extern void func_001FA4A0(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9EE8(void *, void *, void *);
extern float func_00214158(void);
extern float func_L00_001FF860(float, float);
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80_r(int, int, void *) __asm__("func_0022ED80");
extern void func_L00_0028EBF0(int);
extern float func_00214D28(float *, float, float);
extern void func_L00_002607A8(void *, float);
extern void func_001F9BD8_u(void *, void *, void *) __asm__("func_001F9BD8");
extern float func_001F9D10(void *, void *);
extern float func_001F9CE8(void *);
extern float func_L00_0025CE58(float *, float, float *, float, float, float);
extern void func_L00_002E9900(float, float, int);
extern void func_L00_002E9968(float, float);
extern void func_001F9EC0(void *, void *, void *);
extern int func_L11_0030BC20(char *);
extern float func_00214D88_f(float *, float *, float, float, float, float) __asm__("func_00214D88");
extern float func_001FA748_f(float, float) __asm__("func_001FA748");
extern float func_001F9FA8(float);
extern void func_L00_00263BF8(void *, char *, char *, float, float, float);
extern void func_L00_002617B0(char *, void *, void *, void *);
extern int *D_L11_001B11B0[];
extern char D_0013E633[];
extern float D_0015EE6C_f __asm__("D_0015EE6C") MACRO_ADDR;
extern float D_0015EE70_f __asm__("D_0015EE70") MACRO_ADDR;
extern short D_L11_00161E64;
extern short D_L11_00161E68;
extern short D_L11_00161E6C;
extern short D_L11_00161E7C;
extern short D_L11_00161E80;

/* Pokitaru boat update: follows its path points, turns toward the next one and swings its rotor. */
void func_L11_0030AE90(char *moby) {
    char *state = *(char **)(moby + 0x78);
    float A[4], B[4], C[4], D[4], E[4];
    char pad[32];
    float F[4];
    char *a80, *a84, *a88, *a8c;
    int *LA, *LB, *p;
    int i, n, c;
    char *ea, *eb, *q, *tb;
    float *fp;
    float k, f21, w, r2, hd, f1, c13;

    qcopy(A, moby + 0x10);
    qcopy(B, moby + 0x40);
    if (*(unsigned char *)(moby + 0x20)) *(float *)(moby + 0x18) = *(float *)(state + 0xE4);
    func_L11_0030B8D0(moby);
    a80 = moby + 0x10;
    a84 = moby + 0x40;
    a88 = state + 0xE8;
    a8c = state + 0xEC;

    switch (*(unsigned char *)(moby + 0x20)) {
    case 0:
        a80 = moby + 0x10;
        a84 = moby + 0x40;
        a88 = state + 0xE8;
        a8c = state + 0xEC;
        *(short *)(moby + 0x32) = 0xFF;
        if (*(unsigned char *)(moby + 0x53) != 1) func_00213DE0(moby, 1, 0, 1);
        LA = D_L11_001B11B0[*(int *)(state + 0xA8)];
        LB = D_L11_001B11B0[*(int *)(state + 0xAC)];
        func_001FA4A0(D, moby + 0xC0);
        i = 0;
        ea = (char *)LA + 0x10;
        eb = (char *)LB + 0x10;
        for (; i < LA[0]; i++) {
            func_001F9BF0(F, ea, a80);
            func_001F9EE8(eb, F, D);
            ea += 16;
            eb += 16;
        }
        p = D_L11_001B11B0[*(int *)(state + 0xA0)];
        *(int **)(state + 0xC4) = p;
        qcopy(a80, (char *)p + 0x10);
        *(int *)(state + 0xD4) = 1;
        moby[0x20] = 1;
        fp = (float *)(state + 0xF0);
        for (i = 3; i >= 0; i--) *fp++ = func_00214158();
        *(int *)(state + 0x9C) |= 1;
        *(int *)(state + 0xCC) = -1;
        *(int *)(state + 0xC8) = -1;
        break;

    case 1:
        a80 = moby + 0x10;
        a84 = moby + 0x40;
        a88 = state + 0xE8;
        a8c = state + 0xEC;
        if (*(int *)(state + 0xB8) == 0) break;
        p = D_L11_001B11B0[*(int *)(state + 0xA0)];
        *(int **)(state + 0xC4) = p;
        n = p[0];
        q = (char *)p + 16 * n - 16;
        qcopy(a80, q);
        *(float *)(moby + 0x48) = func_L00_001FF860(*(float *)(q + 0x10) - *(float *)(moby + 0x10),
                                                   *(float *)(q + 0x14) - *(float *)(moby + 0x14));
        moby[0x20] = 5;
        break;

    case 2:
        a80 = moby + 0x10;
        a84 = moby + 0x40;
        a88 = state + 0xE8;
        a8c = state + 0xEC;
        p = *(int **)(state + 0xC4);
        qcopy(D, (char *)p + 16 * *(int *)(state + 0xD4) + 0x10);
        if (*(char **)(D_0013E633 + 0x1119) == moby) {
            if (!func_L00_0028EB98(moby, *(int *)(state + 0xCC)))
                *(int *)(state + 0xCC) = func_0022ED80_r(1, 4, moby);
            if (func_L00_0028EB98(moby, *(int *)(state + 0xC8))) {
                c = *(int *)(state + 0xC8);
                if (c != -1) {
                    tb = D_0013E633 + 0x1D + c * 0x70;
                    if (*(char **)(tb + 0x88) == moby && *(unsigned char *)(tb + 0x74)) func_L00_0028EBF0(c);
                }
                *(int *)(state + 0xC8) = -1;
            }
            func_00214D28((float *)(state + 0xD0), *(float *)&D_L11_00161E64 * D_0015EE6C_f,
                          D_0015EE70_f * 6.0f);
        } else {
            if (!func_L00_0028EB98(moby, *(int *)(state + 0xC8)))
                *(int *)(state + 0xC8) = func_0022ED80_r(0, 4, moby);
            if (func_L00_0028EB98(moby, *(int *)(state + 0xCC))) {
                c = *(int *)(state + 0xCC);
                if (c != -1) {
                    tb = D_0013E633 + 0x1D + c * 0x70;
                    if (*(char **)(tb + 0x88) == moby && *(unsigned char *)(tb + 0x74)) func_L00_0028EBF0(c);
                }
                *(int *)(state + 0xCC) = -1;
            }
            func_00214D28((float *)(state + 0xD0), 0.0f, D_0015EE70_f * 6.0f);
        }
        func_001F9BF0(E, D, moby + 0x10);
        func_L00_002607A8(E, *(float *)(state + 0xD0));
        func_001F9BD8_u(moby + 0x10, moby + 0x10, E);
        p = *(int **)(state + 0xC4);
        if (*(int *)(state + 0xD4) < p[0] - 1) {
            if (func_001F9D10(moby + 0x10, D) < *(float *)&D_L11_00161E64 * D_0015EE6C_f) {
                *(int *)(state + 0xD4) += 1;
                if (*(float *)((char *)p + 16 * *(int *)(state + 0xD4) + 0x1C) == 37.0f)
                    *(int *)(state + 0xC0) = 1;
            }
        } else {
            if (func_001F9CE8(E) < 0.0010000000f) {
                if (func_L00_0028EB98(moby, *(int *)(state + 0xCC))) {
                    c = *(int *)(state + 0xCC);
                    if (c != -1) {
                        tb = D_0013E633 + 0x1D + c * 0x70;
                        if (*(char **)(tb + 0x88) == moby && *(unsigned char *)(tb + 0x74)) func_L00_0028EBF0(c);
                    }
                    *(int *)(state + 0xCC) = -1;
                }
                if (func_L00_0028EB98(moby, *(int *)(state + 0xC8))) {
                    c = *(int *)(state + 0xC8);
                    if (c != -1) {
                        tb = D_0013E633 + 0x1D + c * 0x70;
                        if (*(char **)(tb + 0x88) == moby && *(unsigned char *)(tb + 0x74)) func_L00_0028EBF0(c);
                    }
                    *(int *)(state + 0xC8) = -1;
                }
                moby[0x20] = 3;
            }
        }
        hd = func_L00_001FF860(D[0] - *(float *)(moby + 0x10), D[1] - *(float *)(moby + 0x14));
        func_L00_0025CE58((float *)(moby + 0x48), hd, (float *)(state + 0xD8),
                          *(float *)&D_L11_00161E68 * 0.0174532924f * D_0015EE70_f,
                          *(float *)&D_L11_00161E68 * 0.0174532924f * D_0015EE70_f,
                          *(float *)&D_L11_00161E6C * 0.0174532924f * D_0015EE6C_f);
        if (*(int *)(state + 0xC0)) {
            func_L00_002E9900(*(float *)&D_L11_00161E7C, 0.0029999999f, 0);
            func_L00_002E9968(*(float *)&D_L11_00161E80, 0.0029999999f);
        }
        LB = D_L11_001B11B0[*(int *)(state + 0xAC)];
        LA = D_L11_001B11B0[*(int *)(state + 0xA8)];
        a84 = moby + 0x40;
        a88 = state + 0xE8;
        a8c = state + 0xEC;
        ea = (char *)LA + 0x10;
        eb = (char *)LB + 0x10;
        for (i = 0; i < LA[0]; i++) {
            func_001F9EC0(ea, eb, moby + 0xC0);
            eb += 16;
            func_001F9BD8_u(ea, ea, a80);
            ea += 16;
        }
        break;

    case 3:
        a80 = moby + 0x10;
        a84 = moby + 0x40;
        a88 = state + 0xE8;
        a8c = state + 0xEC;
        if (func_L11_0030BC20(moby)) {
            if (*(int *)(state + 0xB0)) {
                *(int *)(state + 0xD0) = 0;
                moby[0x20] = 4;
            } else {
                moby[0x20] = 5;
            }
        }
        break;

    case 4:
        p = *(int **)(state + 0xC4);
        qcopy(D, (char *)p + 16 * *(int *)(state + 0xD4) + 0x10);
        a80 = moby + 0x10;
        a84 = moby + 0x40;
        a88 = state + 0xE8;
        a8c = state + 0xEC;
        func_00214D88_f((float *)(moby + 0x18), (float *)(state + 0xD0), D[2] + 6.0f,
                        D_0015EE70_f, D_0015EE70_f, D_0015EE6C_f);
        if (D[2] + 5.9000001f <= *(float *)(moby + 0x18)) moby[0x20] = 5;
        break;

    case 5:
        p = *(int **)(state + 0xC4);
        qcopy(D, (char *)p + 16 * *(int *)(state + 0xD4) + 0x10);
        a80 = moby + 0x10;
        a84 = moby + 0x40;
        a88 = state + 0xE8;
        a8c = state + 0xEC;
        if (*(int *)(state + 0xB0)) {
            if (*(float *)&D_L11_00161E64 < *(float *)(moby + 0x18))
                func_00214D88_f((float *)(moby + 0x18), (float *)(state + 0xD0), D[2] + 1.0f,
                                D_0015EE70_f, D_0015EE70_f, D_0015EE6C_f);
            else
                func_00214D88_f((float *)(moby + 0x18), (float *)(state + 0xD0), D[2] + 8.0f,
                                D_0015EE70_f, D_0015EE70_f, D_0015EE6C_f);
        }
        break;
    }

    k = D_0015EE6C_f;
    f21 = k * 0.4363323f;
    *(float *)(state + 0xE4) = *(float *)(moby + 0x18);
    r2 = func_001FA748_f(*(float *)(state + 0xE0), k * 1.5707963f);
    w = k * 0.6108652f;
    c13 = 0.13f;
    *(float *)(state + 0xE0) = r2;
    f1 = func_001F9FA8(r2);
    *(float *)(moby + 0x18) = *(float *)(moby + 0x18) + f1 * c13;
    func_L00_00263BF8(moby, a88, a8c, 0.0418879f, f21, w);
    func_001F9BF0(C, a80, A);
    func_L00_002617B0(state + 0x60, C, B, a84);
}
