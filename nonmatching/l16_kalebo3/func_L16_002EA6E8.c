/* NON_MATCHING func_L16_002EA6E8 -- src/overlays/l16_kalebo3/vendor_002E7C70.c
 * Best so far: SIZE ours 324 / retail 316, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L16_002EA6E8: sibling of func_L16_002EAC18 (draw-state setup, then a one-entry loop calling func_L16_002E
 *   Best: p1.c, 106/316 bytes; everything matches except the loop-counter and table-pointer saved registers are sw
 *   Tried: for/while forms, i<=0, pointer local incremented in the step, p[i] base local, result in a local; all s
 */
#include "common.h"
extern short D_L16_00162000;
extern short D_L16_00162020;
extern short D_L16_00162028;
extern short D_L16_00162030;
extern short D_L16_00162038;
extern char D_L16_00162040[][16];
extern char D_L16_001DDF50[];
extern int func_001F4868(int);
extern void func_00234C98(int, long);
extern void func_001F7868(void);
extern int func_L00_00200290(char *, float);
extern void func_L00_001FDE48(int, int, int, char *, int);

/* Sets up the draw state, then draws the one entry of the level's table. */
void func_L16_002EA6E8(void) {
    int *a = (int *)&D_L16_00162000;
    int *b = (int *)&D_L16_00162020;
    int *c = (int *)&D_L16_00162028;
    int *d = (int *)&D_L16_00162030;
    int *e = (int *)&D_L16_00162038;
    int i;
    char (*p)[16] = D_L16_00162040;

    VU1_addGSregister(6, GetEffectTex(0x29));
    VU1_addGSregister(0x42, 0x4000000064);
    VU1_addGSregister(8, 0);
    VU1_addGSregister(0x14, 0xFF9000000260);
    func_001F7868();
    for (i = 0; i < 1; i++) {
        if (FastBSphereCheck(p[i], 512.0f) != -1) {
            func_L16_002EA010(a[i], d[i], b[i], c[i], (float *)D_L16_001DDF50);
            func_L00_001FDE48(a[i], b[i], e[i], D_L16_001DDF50, 1);
        }
    }
}
