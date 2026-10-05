/* NON_MATCHING func_L00_0029C070 -- src/overlays/shared/update_0029B6A0.c
 * Best so far: BYTES 93/628 (85.2% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L00_0029C070 (628 B)
 *   Best: c6.c, size exact, BYTES 93/628. Logic complete (vendor-screen setup; wait loop on q->5A != 3).
 *   Left: (1) retail reloads G->48 after the conditional `p->20B8 = 0` store (ours CSEs it: base_alias_check
 *   sees two different symbols); (2) the wait loop: retail keeps the %hi of D_0014171B in $s4 from the start,
 *   recomputes the lo_sum inside the loop, which loop.c hoists into $s1 (cse2 -> daddu $s1,$s0). Ours folds
 *   +0x5A into the symbol constant (lui+lh 0x182A). A plain copy (c7) is coalesced.
 */
#include "common.h"

extern int D_L00_001CA7C0[];
extern int D_L00_0015F6BC MACRO_ADDR;
extern int D_L00_0015F4FC MACRO_ADDR;
extern int D_L00_0016128C MACRO_ADDR;
extern short D_L00_0015F500;
extern char D_L00_001611B0;
extern unsigned char D_0014171B[] NOT_SDA;
extern char D_0013E633[];
extern char D_L00_0016C960[];
extern char D_L00_0017C440[];
extern int D_L00_00173F00[];
extern int D_L00_001CA320[];
typedef struct { char p0[0x10]; int f10; char p14[0x4C - 0x14]; } R_29c070;
extern R_29c070 D_L00_00179BC0_c[] __asm__("D_L00_00179BC0");
extern void func_L00_002EC0C8(int);
extern void func_001F9EC0(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern float func_00214358(void *, int, float);
extern void func_001F9BC0(void *);
extern float func_001FA748(float, float);
extern void func_001FA1F8(void *, void *);
extern void func_001F99B0();
extern void func_00234AC8(int);
extern void func_002348B8(void);
extern void func_L00_00210340(int, int);
extern void func_00205270(int, int);
extern void func_L00_00245E98(int);
extern void func_00205220(int);
extern void func_0022DD68(void);
extern void func_00122598(int);
extern int func_00216960(void);

/* Enters the vendor screen: sets up its camera in front of the vendor moby, resets the screen state and runs the screen until it closes. */
void func_L00_0029C070(void) {
    char *q;
    char *q2;
    char *g;
    char *s;
    int lvl;
    int n;
    int r;
    func_L00_002EC0C8(2);
    q = (char *)D_0014171B + 0x100B5;
    if ((unsigned short)(*(unsigned short *)(q + 0x5A) - 6) >= 2) *(short *)(q + 0x5A) = 5;
    g = (char *)D_L00_001CA7C0;
    D_L00_0015F6BC = 1;
    *(*(char **)(g + 0x1C) + 0x20) = 1;
    *(int *)g = 3;
    *(int *)(g + 4) = 0;
    func_001F9EC0(g + 0xC0, &D_L00_001611B0, *(char **)(g + 0x1C) + 0xC0);
    func_001F9BD8(g + 0xC0, g + 0xC0, *(char **)(g + 0x1C) + 0x10);
    *(float *)(g + 0xC8) += 2.0f;
    *(float *)(g + 0xC8) = func_00214358(g + 0xC0, 0, 0.5f);
    func_001F9BC0(g + 0xB0);
    *(float *)(g + 0xB8) = func_001FA748(*(float *)(*(char **)(g + 0x1C) + 0x48), 3.1415927f);
    func_001FA1F8(g + 0x80, g + 0xB0);
    s = D_L00_0016C960;
    func_001F99B0(s, 0, 0x1C0);
    func_001F99B0(D_L00_0017C440, 0, 0x40);
    func_00234AC8(1);
    func_002348B8();
    lvl = *(int *)(g + 0x48);
    n = D_L00_0016128C + (int)0xFFFC0000;
    *(int *)(s + 0x5C) = D_L00_00173F00[2] + n;
    *(int *)(s + 0x58) = D_L00_00173F00[1] + n;
    D_L00_0016128C = n;
    D_L00_0015F4FC = 0;
    *(int *)&D_L00_0015F500 = 0;
    r = D_L00_001CA320[lvl];
    {
        char *p = D_0013E633 + 0xE1D;
        if (*(int *)(p + 0x10B8) != 0 && lvl != *(int *)(p + 0x10B8)) {
            func_L00_00210340(0, 0);
        }
    }
    {
        char *h = (char *)D_L00_001CA7C0;
        char *p = D_0013E633 + 0xE1D;
        *(int *)(p + 0x20B8) = *(int *)(h + 0x48);
        if (*(int *)(h + 0x48) == 0x18) *(int *)(p + 0x20B8) = 0;
        func_00205270(D_L00_00179BC0_c[*(int *)(h + 0x48)].f10, -1);
    }
    q2 = (char *)D_0014171B + 0x100B5;
    func_L00_00245E98(r);
    *(int *)(q2 + 0x1C) = 0x2734;
    func_00205220(0);
    while (*(short *)((char *)D_0014171B + 0x100B5 + 0x5A) != 3) {
        func_0022DD68();
        func_00122598(0);
    }
    func_00216960();
}
