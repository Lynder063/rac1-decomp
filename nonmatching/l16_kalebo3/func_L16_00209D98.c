/* NON_MATCHING func_L16_00209D98 -- src/overlays/l16_kalebo3/help_00209D98.c
 * Best so far: SIZE ours 904 / retail 908, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L16_00209D98: per-frame hero item/pickup flag update from a state code (st = short at g+0x12E0, then rese
 *   Best is p4.c (same size 908, 82 bytes differ): structure matches; fresh `char *q = D_0013E633 + 0xE1D;` per bl
 *   Difference: retail reads D_0015EE84 via gp-rel lw in a bnez delay slot AND via lui/lw at the end of the st==0 
 */
extern char D_0013E633[];
extern short D_0015EE84;
extern int D_0015EE84_far __asm__("D_0015EE84") NOT_SDA;
extern void func_001F99D8(void *, int);
extern int func_L00_001F10E0(float, void *, int, void *);
extern int func_L00_001F3958(void);
extern void func_L16_0021EA88(int, int);
extern float func_001F9B88(float);
extern void func_L00_0020BFA8(void);

/* Per-frame update of the pickup/hit state flags from the state code. */
void func_L16_00209D98(void) {
    char *g = D_0013E633 + 0xE1D;
    int keep = *(unsigned char *)(g + 0x12ED);
    int st = *(short *)(g + 0x12E0);
    int v;
    func_001F99D8(g + 0x12E0, 0x10);
    *(unsigned char *)(g + 0x12ED) = keep;
    *(short *)(g + 0x12E0) = -1;
    *(unsigned char *)(g + 0x20A9) = 0;
    *(short *)(g + 0x308) = 0;
    if (st == -1) return;
    if (st == 2) {
        if (*(short *)(g + 0x30C) == 0 || *(float *)(g + 0x2DC) < 0.3f) {
            *(unsigned char *)(g + 0x12E7) = 1;
            if (*(unsigned char *)(g + 0x20A4) == 0) {
                char *p = *(char **)(g + 0x10E0);
                if (p != 0 && *(short *)(p + 0xA6) == 0xAD)
                    *(short *)(g + 0x308) = 1;
            }
        }
    }
    if (st == 0xE) {
        char *q = D_0013E633 + 0xE1D;
        q[0x12E4] = 1;
        *(float *)(q + 0x22A4) = 0.2f;
        *(float *)(q + 0x2F0) = *(float *)(q + 0x2D8) + 0.2f;
    }
    if (st == 0) {
        char *q = D_0013E633 + 0xE1D;
        float d = *(float *)(q + 0x2F0) - *(float *)(q + 0x2D8);
        *(float *)(q + 0x22A4) = d;
        if (d < 0.85f && 0.25f < d)
            q[0x20A9] = 1;
        q[0x12E4] = 1;
        v = D_0015EE84_far;
    } else {
        v = *(int *)&D_0015EE84;
    }
    if (v == 0xD) {
        char *q = D_0013E633 + 0xE1D;
        if (*(int *)(q + 0x2084) != 0x7B) {
            if (func_L00_001F10E0(*(float *)(q + 0x234) + 0.03f, q + 0xD0, 2, 0)) {
                if (func_L00_001F3958() == 0xB) {
                    func_L16_0021EA88(0x7B, 1);
                    return;
                }
            }
        }
    }
    if (st == 0xB) {
        char *q = D_0013E633 + 0xE1D;
        q[0x12EB] = 1;
    }
    if (st == 0x5) {
        char *q = D_0013E633 + 0xE1D;
        q[0x12E8] = 1;
    }
    if (st == 0x6) {
        char *q = D_0013E633 + 0xE1D;
        q[0x12E9] = 1;
    }
    if (st == 0x2) {
        char *q = D_0013E633 + 0xE1D;
        q[0x12E7] = 1;
    }
    if (st == 0x4) {
        char *q = D_0013E633 + 0xE1D;
        q[0x12E3] = 1;
    }
    if (st == 0xD) {
        char *q = D_0013E633 + 0xE1D;
        q[0x12EC] = 1;
    }
    if (st == 0x8) {
        char *q = D_0013E633 + 0xE1D;
        q[0x12EA] = 1;
    }
    if (st == 0x9) {
        char *q = D_0013E633 + 0xE1D;
        q[0x12EE] = 1;
    }
    if (st == 0xC) {
        char *q = D_0013E633 + 0xE1D;
        q[0x12EA] = 1;
    }
    {
        char *q = D_0013E633 + 0xE1D;
        char *h;
        if (*(unsigned char *)(q + 0x12E3) != 0 && *(int *)(q + 0x300) != 0) {
            int k = *(int *)(q + 0x208C);
            if (k != 0x10 && k != 0x14 && k != 7) {
                func_L16_0021EA88(0x31, 1);
                return;
            }
        }
        h = D_0013E633 + 0xE1D;
        if (*(unsigned char *)(h + 0x12EC) != 0 && *(int *)(h + 0x2084) != 0x7F) {
            if (func_001F9B88(*(float *)(h + 0x2F0) - (*(float *)(h + 0x88) + 0.25f)) < 1.0f) {
                if (*(float *)(h + 0x2F0) - *(float *)(h + 0x88) > 0.0f) {
                    if (*(float *)(h + 0x108) < 0.0f) {
                        func_L00_0020BFA8();
                        func_L16_0021EA88(0x7F, 1);
                    }
                }
            }
        }
    }
}
