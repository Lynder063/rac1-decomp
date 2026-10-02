/* NON_MATCHING func_L01_002428E0 -- src/overlays/shared/help_002274A8.c
 * Best so far: BYTES 20/648 (96.9% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
extern void func_L00_00211F80(int, float);
extern int hl_next(int, int) __asm__("func_L01_0023D688");
extern void func_L00_00232C10(int, int, float);
extern void func_L00_00232E60(int bank, int seq);
extern int func_001F9850(int);
extern void func_L00_002607A8(void *a, float x);
extern int func_L01_002274A8(int a);
extern int D_L01_0015F7BC;
extern float D_0015EE6C MACRO_ADDR;
extern char D_0013A5E0[];

// Chooses the next hero state when landing, with sounds and effects.
void func_L01_002428E0(void) {
    char *b, *c, *d;
    int n;
    float fn;
    b = D_0013E633 + 0xE1D;
    *(int *)(b + 0x2284) = 0;
    func_L00_00211F80(0, 1.0f);
    if (*(int *)(D_0013A5E0 + 0x2600) & 0xA) {
        hl_next(4, 0);
        func_L00_00232C10(0xD, 2, -2.0f);
        func_L00_00232E60(3, 0x12);
        return;
    }
    c = D_0013E633 + 0xE1D;
    if (0.3f < *(float *)(c + 0x229C) && *(int *)(c + 0x1C4) == 0) {
        if (*(unsigned char *)(c + 0x12E2) != 0 || *(unsigned char *)(c + 0x20A9) != 0) {
            hl_next(2, 1);
            return;
        }
        if (hl_next(2, 0)) {
            *(int *)(c + 0x2088) = 1;
            n = func_001F9850(8);
            if (func_001F9850(5) < *(int *)(c + 0x418)) n = func_001F9850(14);
            fn = n;
            func_L00_00232C10(4, D_L01_0015F7BC, fn);
            *(short *)(c + 0x3BC) = 1;
        }
        return;
    }
    d = D_0013E633 + 0xE1D;
    if ((*(float *)&D_0015EE6C * 3.0f < *(float *)(d + 0x168) && func_001F9850(3) < *(int *)(d + 0x418)) || *(int *)(d + 0x2084) == 0x10) {
        if (hl_next(3, 0)) {
            func_L00_00232C10(5, 0, -1.0f);
            func_L00_002607A8(D_0013E633 + 0xF6D, D_0015EE6C * 5.0f);
        }
        return;
    }
    if (func_001F9850(12) < *(int *)(d + 0x418) || (*(int *)(d + 0xA98) & 2)) {
        if (hl_next(0, 0)) {
            if (func_L01_002274A8(0) == 0x54) {
                n = func_L01_002274A8(0);
                func_L00_00232C10(n, 0, (float)func_001F9850(15));
            } else if (*(int *)(d + 0xA98) & 2) {
                func_L00_00232C10(func_L01_002274A8(0), 0, -2.0f);
            }
        }
    }
}
