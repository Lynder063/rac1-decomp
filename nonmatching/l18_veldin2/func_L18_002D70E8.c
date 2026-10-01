/* NON_MATCHING func_L18_002D70E8 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: BYTES 6/552 (98.9% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   ## Round 1
 *   Spawns/finds the moby of class 0x238 with state 5 in list D_L18_001AC540[idx], resets it, places it at p6, bui
 *   Mattered: alias D_L18_00160058_m (__asm__ + MACRO_ADDR) for lui access; lhu loop var with (short)s>=0; unsigne
 *   func_L18_002D70E8: EXACT as p6.c with an alias , but it cannot share vendor_002A8400.c with func_L18_002D8140 
 *   Round 2 result: EXACT as p6.c, but parked as a stub in the PR: its alias for D_L18_00160058 (MACRO_ADDR) canno
 */
#include "common.h"
extern int *D_L18_001AC540[];
extern unsigned char *D_L18_00160058_m __asm__("D_L18_00160058") MACRO_ADDR;
extern short D_L18_00161A24;
extern float D_0015EE70 MACRO_ADDR;
extern void func_00213DE0(void *, int, int, int);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CE8(void *);
extern void func_L00_001FF500(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_L00_0025BC48(float *a, float *b, float *out, float speed, float g);
extern float func_L00_001FF860(float, float);
extern void func_0022ED80(int, int, int);

char *func_L18_002D70E8(int a0, int idx, float *p6, float *p7, int a8, float f) {
    float v[4];
    float r;
    float g;
    char *found = 0;
    short *p = (short *)D_L18_001AC540[idx];
    char *moby;
    char *data;
    char *d2;
    if (p == 0) {
        return 0;
    }
    {
        char *base = (char *)D_L18_00160058_m;
        unsigned short s;
        do {
            s = *p;
            {
                char *m = base + ((s & 0x7FFF) << 8);
                if (*(short *)(m + 0xA6) == 0x238) {
                    if (((unsigned char *)m)[0x20] == 5) {
                        found = m;
                    }
                }
            }
            p++;
        } while ((short)s >= 0);
    }
    moby = found;
    if (moby != 0) {
        ((unsigned char *)moby)[0x30] = 0xFF;
        *(short *)(moby + 0x32) = 0xFF;
        moby[0x31] = 1;
        moby[0x20] = 1;
        *(unsigned short *)(moby + 0x34) = (*(unsigned short *)(moby + 0x34) & 0xFFBE) | 0x1000;
        moby[0xBC] = 0;
        *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);
        if (((unsigned char *)moby)[0x53] != 0) {
            func_00213DE0(moby, 0, 0, 1);
        }
        qcopy(moby + 0x10, p6);
        r = *(float *)&D_L18_00161A24;
        *(int *)(moby + 0x40) = 0;
        *(float *)(moby + 0x44) = -r;
        p7[2] = p7[2] + 0.75f;
        func_001F9BF0(v, p7, p6);
        func_L00_001FF500(v, v, func_001F9CE8(v) - *(float *)&D_L18_00161A24);
        func_001F9BD8(v, v, p6);
        data = *(char **)(moby + 0x78);
        qcopy(data + 0x170, v);
        func_001F9BF0(data + 0x180, v, p6);
        *(int *)(data + 0x188) = 0;
        func_L00_001FF4B0(data + 0x180, data + 0x180, f);
        g = D_0015EE70 * 10.0f;
        *(short *)(data + 0xC8) = 0;
        *(float *)(data + 0x188) = func_L00_0025BC48(p6, v, 0, f, -g);
        *(float *)(moby + 0x48) = func_L00_001FF860(*(float *)(data + 0x180), *(float *)(data + 0x184));
        *(int *)(data + 0x194) = a8;
        *(int *)(data + 0x198) = a0;
        *(int *)(data + 0x19C) = 0;
        func_0022ED80(0, 0, (int)moby);
    }
    return moby;
}
