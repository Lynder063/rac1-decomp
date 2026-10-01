/* NON_MATCHING func_L18_002EB260 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: BYTES 15/640 (97.7% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # Round 1
 *   UpdateMoby_983 (level 18): eases two angle fields (data+0x2C/+0x30) toward gp-float targets via func_001FA748;
 *   Best p7.c: BYTES 17/640 (size matches). Mattered: switch for case tree, unsigned char state, qcopy for the 16-
 *   Remaining: float const regs: retail keeps 2.0 in $f22 and 5.0 in $f21 (ours swapped, so $f12/$f13 arg movs and
 */
#include "common.h"
extern void func_001F49B0(void (*)(void), void *);
extern void func_L18_002D9B00(char *);
extern float func_001FA748(float, float);
extern float D_0015EE6C MACRO_ADDR;
extern short D_L18_00161F60;
extern short D_L18_00161F64;
extern short D_L18_00161F68;
extern short D_L18_00161F70;
extern int func_001F9908(int *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001F9CB8(void *);
extern void func_L18_002EBBF0(void *);
extern void func_L18_002EC0C8(void *);
extern void func_L18_002EC290(void *);
extern void func_L18_002EB5E8(void);
extern void func_L00_00258DB0(float *, float, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_00214358(void *, int, float);
extern void func_L00_0025A8E8(int, float, void *, int, float, float, int, int, int);
extern float func_00214D28(float *p, float target, float maxstep);
extern void func_0020D678(void *);


void func_L18_002EB260(char *moby) {
    float *d = *(float **)(moby + 0x78);
    float t = func_001FA748(d[0xB], *(float *)&D_L18_00161F60 * 0.017453292f * D_0015EE6C);
    float u = *(float *)&D_L18_00161F64 * 0.017453292f * D_0015EE6C;
    d[0xB] = t;
    d[0xC] = func_001FA748(d[0xC], u);
    switch (((unsigned char *)moby)[0x20]) {
    case 0:
        if (func_001F9908((int *)(d + 10))) {
            func_0020D678(moby);
            return;
        }
        break;
    case 1: {
        float buf[4];
        float buf2[4];
        float *p = (float *)(moby + 0x10);
        float *q = d + 4;
        float lim = *(float *)&D_L18_00161F70 * D_0015EE6C;
        float len;
        func_001F9BF0(buf, d, p);
        len = func_001F9CB8(buf);
        func_L18_002EB988(moby);
        func_L00_00258DB0(q, *(float *)&D_L18_00161F68 * d[9], *(float *)&D_L18_00161F68 * d[9]);
        func_001F9BD8(q, q, p);
        func_L18_002EC0C8(moby);
        func_L18_002EC290(moby);
        func_001F49B0((void (*)(void))func_L18_002D9B00, moby);
        if (len < lim) {
            func_L18_002EBBF0(moby);
            func_0020D678(moby);
            return;
        }
        func_L00_001FF4B0(buf, buf, lim);
        func_001F9BD8(p, p, buf);
        qcopy(buf2, p);
        buf2[2] = func_00214358(buf2, 0, 0.5f);
        func_L00_0025A8E8(*(int *)(d + 8), 2.0f, p, 0x10001, 5.0f, 1.0f, 0, 1, 0);
        func_L00_0025A8E8(*(int *)(d + 8), 2.0f, buf2, 0x10001, 5.0f, 1.0f, 0, 1, 0);
        if (func_001F9908((int *)(d + 13))) {
            func_00214D28(d + 9, 0.0f, 0.2f);
            if (d[9] == 0.0f) {
                func_0020D678(moby);
                return;
            }
        }
        break;
    }
    }
    func_001F49B0(func_L18_002EB5E8, moby);
}
