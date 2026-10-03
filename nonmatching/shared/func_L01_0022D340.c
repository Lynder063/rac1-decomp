/* NON_MATCHING func_L01_0022D340 -- src/overlays/shared/help_002274A8.c
 * Best so far: SIZE ours 832 / retail 836, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Hero surface reaction per-frame update (sibling of func_L14_0021E3A8, which matched; p3.c here is that source 
 *   Differs by 4 bytes: retail has `addiu $3,$19,%lo(..)` right after `sb $2,0x20A9($3)` (a second lo_sum of the s
 *   Would unblock: some wording that keeps a second, uncombined base computation on the d>0.25 path only.
 */
#include "common.h"
extern unsigned char D_0013E633[];
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern void func_001F99D8(void *, int);
extern int func_L00_001F10E0(float, void *, int, void *);
extern int func_L00_001F3958(void);
extern float func_001F9B88(float);
extern void func_L00_0020BFA8(void);
extern void func_L01_0023D688(int, int);

/* Resolve the hero's surface reaction for the frame from the previous state and flags. */
void func_L01_0022D340(void) {
    char *h;
    char *g = (char *)D_0013E633 + 0xE1D;
    int keep = *(unsigned char *)(g + 0x12ED);
    int st = *(short *)(g + 0x12E0);
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
                if (p != 0 && *(short *)(p + 0xA6) == 0xAD) {
                    *(short *)(g + 0x308) = 1;
                }
            }
        }
    }
    if (st == 0xE) {
        char *q = (char *)D_0013E633 + 0xE1D;
        *(unsigned char *)(q + 0x12E4) = 1;
        *(float *)(q + 0x22A4) = 0.2f;
        *(float *)(q + 0x2F0) = *(float *)(q + 0x2D8) + 0.2f;
    }
    if (st == 0) {
        char *q = (char *)D_0013E633 + 0xE1D;
        float d = *(float *)(q + 0x2F0) - *(float *)(q + 0x2D8);
        *(float *)(q + 0x22A4) = d;
        if (d < 0.85f) {
            if (d > 0.25f) {
                *(unsigned char *)(q + 0x20A9) = 1;
                q = (char *)D_0013E633 + 0xE1D;
            }
        }
        *(unsigned char *)(q + 0x12E4) = 1;
    }
    if (D_0015EE84_m == 0xD) {
        char *q = (char *)D_0013E633 + 0xE1D;
        if (*(int *)(q + 0x2084) != 0x7B) {
            if (func_L00_001F10E0(*(float *)(q + 0x234) + 0.03f, q + 0xD0, 2, 0)) {
                if (func_L00_001F3958() == 0xB) {
                    func_L01_0023D688(0x7B, 1);
                    return;
                }
            }
        }
    }
    if (st == 0xB) { char *q = (char *)D_0013E633 + 0xE1D; *(unsigned char *)(q + 0x12EB) = 1; }
    if (st == 4) { char *q = (char *)D_0013E633 + 0xE1D; *(unsigned char *)(q + 0x12E3) = 1; }
    if (st == 0xD) { char *q = (char *)D_0013E633 + 0xE1D; *(unsigned char *)(q + 0x12EC) = 1; }
    if (st == 8) { char *q = (char *)D_0013E633 + 0xE1D; *(unsigned char *)(q + 0x12EA) = 1; }
    if (st == 9) { char *q = (char *)D_0013E633 + 0xE1D; *(unsigned char *)(q + 0x12EE) = 1; }
    if (st == 0xC) { char *q = (char *)D_0013E633 + 0xE1D; *(unsigned char *)(q + 0x12EA) = 1; }
    {
        char *q = (char *)D_0013E633 + 0xE1D;
        if (*(unsigned char *)(q + 0x12E3) != 0 && *(int *)(q + 0x300) != 0) {
            int k = *(int *)(q + 0x208C);
            if (k != 0x10 && k != 0x14 && k != 7) {
                func_L01_0023D688(0x31, 1);
                return;
            }
        }
    }
    h = (char *)D_0013E633 + 0xE1D;
    if (*(unsigned char *)(h + 0x12EC) != 0) {
        if (*(int *)(h + 0x2084) == 0x7F) return;
        if (func_001F9B88(*(float *)(h + 0x2F0) - (*(float *)(h + 0x88) + 0.25f)) < 1.0f) {
            if (*(float *)(h + 0x2F0) - *(float *)(h + 0x88) > 0.0f) {
                if (*(float *)(h + 0x108) < 0.0f) {
                    func_L00_0020BFA8();
                    func_L01_0023D688(0x7F, 1);
                }
            }
        }
    }
}
