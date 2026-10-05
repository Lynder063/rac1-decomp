/* NON_MATCHING func_L06_002EB140 -- src/overlays/l06_blarg/vendor_002B5990.c
 * Best so far: BYTES 8/280 (97.1% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L06_002EB140(moby, pos): if moby state==15, copy pos, set state 6, flags, call vec helpers, set throw par
 *   Best is p10.c (`if (state==15) {...return 1;} return 0;`, D_0015EE70 read as `*(float*)((char*)&D_0015EE6C + 4
 *   Unblock: the source order/locals that make the scheduler emit loads of D_0015EE70/6C right after the jal func_
 */
#include "common.h"
extern void func_001F9BC0(void *);
extern float func_00214158(void);
extern void func_001FA1F8(void *, void *);
extern void func_L00_0025D5B0(float ang, char *o, float *s, int a, int b, int c);
extern float D_0015EE6C MACRO_ADDR;

// Launches a moby into its thrown state, setting its motion parameters; returns 1 if it was idle.
int func_L06_002EB140(void *mv, void *pos) {
    char *moby = mv;
    char *data = *(char **)(moby + 0x78);
    char *vec;
    char *pp;
    float a, t;
    if (*(unsigned char *)(moby + 0x20) == 15) {
    qcopy(moby + 0x10, pos);
    *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);
    moby[0x20] = 6;
    *(unsigned short *)(moby + 0x34) = (*(unsigned short *)(moby + 0x34) & 0xFFBE) | 0x1000;
    pp = moby + 0x40;
    func_001F9BC0(pp);
    vec = data + 0x120;
    *(float *)(moby + 0x48) = func_00214158();
    func_001FA1F8(moby + 0xC0, pp);
    a = *(float *)((char *)&D_0015EE6C + 4) * 20.0f;
    t = D_0015EE6C + D_0015EE6C;
    *(int *)(data + 0x134) = 0;
    *(int *)(data + 0x144) = 5;
    data[0x15D] = 3;
    *(float *)(data + 0x13C) = t;
    *(float *)(data + 0x130) = a;
    *(float *)(data + 0x138) = t;
    func_L00_0025D5B0(func_00214158(), moby, (float *)vec, 2, 1, 0);
    *(float *)(data + 0x128) = -*(float *)(data + 0x128);
    return 1;
    }
    return 0;
}
