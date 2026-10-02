/* NON_MATCHING func_L02_002228B0 -- src/overlays/l02_aridia/help_0021BC90.c
 * Best so far: SIZE ours 908 / retail 912, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L02_002228B0: camera collision probe: tries up to 8 candidate camera positions (func_L00_001F1D20|001F34F
 *   Best candidate p6.c: SIZE 908 vs retail 912 (no diff shown on size mismatch), 7 of 10 runs used when stopped. 
 *   Unblock: find the source form whose RTL lets the base pointer and the call-1 result share a register (9 pseudo
 */
#include "common.h"
extern char D_0013F4D0[];
extern unsigned char D_0013E633[] NOT_SDA;
extern short D_0015EE60_s __asm__("D_0015EE60");
extern char D_L02_001744F0[];
extern void func_001F9BC0(void *);
extern void func_L00_00235040(void);
extern void func_L00_00234090(float *dst, float *src, float dz);
extern void func_L00_00233D50(float *dst, float *src, float h);
extern void func_001F9BD8(void *, void *, void *);
extern int func_L00_001F1D20(float, float, void *, int, int);
extern int func_L00_001F34F0(float, void *);
extern int func_L00_001F10E0(float, void *, int, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CB8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
// Probes up to eight candidate camera positions and pulls the camera back if the view is blocked.
int func_L02_002228B0(int arg) {
    float a[4] __attribute__((aligned(16)));
    float b[4] __attribute__((aligned(16)));
    float c[4] __attribute__((aligned(16)));
    unsigned char *g = (unsigned char *)D_0013E633 + 0xE1D;
    int i, v;
    float len;
    if (*(int *)(g + 0x1CC) != 0) return 1;
    qcopy(a, g + 0x80);
    func_001F9BC0(b);
    if (*(short *)(g + 0x22DA) != 0) {
        func_L00_00235040();
        *(short *)(g + 0x22DA) = 0;
    }
    if (*(int *)(g + 0x208C) != 0x11) {
        unsigned char t = g[0x20B3];
        if (t == 0 && *(short *)(g + 0x1F8) == 0) {
            b[2] = *(float *)(g + 0x224);
        } else if (t == 1 || *(short *)(g + 0x1F8) != 0) {
            func_L00_00234090(b, b, 0.6f);
        } else {
            func_L00_00233D50(b, b, -*(float *)(g + 0x224));
        }
    }
    g = (unsigned char *)D_0013F4D0;
    func_001F9BD8(g, g, b);
    v = 0x324;
    if (*(int *)(g + 0x2004) == 0x7F) v = 0xD24;
    i = 0;
    while (i < 8) {
        g = (unsigned char *)D_0013E633 + 0xE1D;
        if (g[0x20B3] == 0) {
            float d = *(float *)(g + 0x220) - *(float *)(g + 0x224);
            if (d < 0.05f) d = 0.05f;
            if (!(func_L00_001F1D20(*(float *)(g + 0x234), d, g + 0x80, v, *(int *)(g + 0x2080)) |
                  func_L00_001F34F0(*(float *)(g + 0x234), g + 0x80)))
                break;
        } else {
            if (!func_L00_001F10E0(*(float *)&D_0015EE60_s * 0.4f, g + 0x80, v, (void *)*(int *)(g + 0x2080)))
                break;
        }
        g = (unsigned char *)D_0013F4D0;
        qcopy(g, D_L02_001744F0);
        qcopy(g + 0x180, D_L02_001744F0 + 0x10);
        qcopy(g + 0x190, D_L02_001744F0 - 0x10);
        g = g - 0x80;
        *(int *)(g + 0x23C) = *(int *)(D_L02_001744F0 - 0x18);
        g[0x257] = 1;
        i++;
    }
    g = (unsigned char *)D_0013F4D0;
    func_001F9BF0(g, g, b);
    func_001F9BF0(c, g, a);
    len = func_001F9CB8(c);
    if (*(float *)(g + 0x1B4) * 1.5f < len) {
        if (arg == 0xF) {
            if (512.0f < c[0]) c[0] = 512.0f;
            else if (c[0] < -512.0f) c[0] = -512.0f;
            if (512.0f < c[1]) c[1] = 512.0f;
            else if (c[1] < -512.0f) c[1] = -512.0f;
            if (512.0f < c[2]) c[2] = 512.0f;
            else if (c[2] < -512.0f) c[2] = -512.0f;
            g = (unsigned char *)D_0013E633 + 0xE1D;
            func_L00_001FF4B0(c, c, *(float *)(g + 0x234));
            func_001F9BD8(g + 0x80, a, c);
        }
        return -1;
    }
    return 1;
}
