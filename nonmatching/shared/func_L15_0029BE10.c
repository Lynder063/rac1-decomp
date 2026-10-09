/* NON_MATCHING func_L15_0029BE10 -- src/overlays/shared/vendor_00298BB8.c
 * Best so far: BYTES 13/484 (97.3% of the bytes match), checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   UpdateMoby_49: plays a sound when near the player, then (state 0) builds a swept segment, calls the collision 
 *   w11 (p5-p9): p5.c compiles now (best.c failed on declarations: use `extern float D_L15_00167440[4];` and `exte
 *   hq1 s10 (6 runs): p12 is the closest at 476/484 with every instruction matching except the sixth callee-saved 
 *   Unblock: a C form that keeps two live copies of moby+0x10 through the store (or the allocator's order for s5);
 *   hq13 s02 (8 runs, closest p23.c at 13/484 bytes, same size as retail): the second copy of moby+0x10 now lives 
 */
#include "common.h"
extern char D_0013E633[];
extern float D_L15_00167440[4];
extern int D_L15_001744D8;
extern float D_0015EE6C MACRO_ADDR;
extern float func_001F9D10(void *, void *);
extern int func_L00_0028EF68(int i, int a1, int v, int k);
extern float func_001FA748(float, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern int func_002140B0(int);
extern void func_L00_0025A8C0(char *arg, void *a, int b, void *src, float scale);
extern int func_L00_001EFFF0(void *, void *, int, void *, void *);
extern int func_001F9908(void *);
extern void func_L15_0029C168(char *moby);
extern void func_0020D678(void *);
extern void func_L15_0029BFF8(char *moby);

// Update for moby class 49: plays a sound near the player, then moves toward the target until it hits something.
void func_L15_0029BE10(unsigned char *moby) {
    char *d = *(char **)(moby + 0x78);
    float v[16];
    float s;
    char *pv;
    char *p1;
    char *vec2;
    char gap[16];
    char *m2;
    m2 = (char *)moby;
    if (*(int *)(d + 0x10) == 0) {
        if (func_001F9D10(moby + 0x10, D_L15_00167440) < 15.0f) {
            func_L00_0028EF68(9, 0, (int)moby, 0x27E);
            *(int *)(d + 0x10) = 1;
        }
    }
    if (moby[0x20] == 0) {
        s = 1.0f;
        *(float *)(moby + 0x40) = func_001FA748(*(float *)(moby + 0x40), D_0015EE6C * 6.2831855f);
        func_001F9BD8(v, (char *)moby + 0x10, d);
        p1 = (char *)(v + 4);
        func_001F9C30(p1, d, -2.0f);
        func_001F9BD8(p1, p1, (char *)moby + 0x10);
        pv = p1;
        if (*(unsigned char *)(D_0013E633 + 0x2EC1) == 2 && func_002140B0(5) != 0) {
            s = 0.0f;
        }
        p1 = (char *)(v + 8);
        vec2 = p1;
        func_L00_0025A8C0(vec2, moby, 0x10003, d, s);
        *(short *)((char *)v + 0x3A) = *(unsigned short *)(moby + 0xA6);
        if (func_L00_001EFFF0(pv, v, 0x10, moby, vec2) != 0 || func_001F9908(d + 0x14) != 0) {
            if (D_L15_001744D8 != *(int *)(d + 0x18)) {
                func_L00_0028EF68(8, 0, (int)moby, 0x27E);
                func_L15_0029C168((char *)moby);
                func_0020D678(moby);
                return;
            }
        }
        qcopy(m2 + 0x10, v);
        func_L15_0029BFF8((char *)moby);
    }
}
