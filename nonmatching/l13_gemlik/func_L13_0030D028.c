/* NON_MATCHING func_L13_0030D028 -- src/overlays/l13_gemlik/vendor_0030CAE0.c
 * Best so far: BYTES 1/636 (99.8% of the bytes match), checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L13_0030D028 (636 B)
 *   Best: d1.c BYTES 1/636. Only the operand order of one addu: the store address of
 *   path[i].dist (path + i*16, then swc1 0x1C) is `addu s0,s2,s0` in retail, `addu s0,s0,s2` in ours.
 *   Tried: i*16 + path, ((float *)(path + 0x1C))[i*4], (int) arithmetic, path + (i*16 + 0x1C),
 *   carried j = i + 1, Pt struct records, separate float temp (all 1 B); an `e` pointer local is 57 B.
 *   Levers that got here: o[0x20] < 7 copy path as the else of the main path, idx > d[2] / t > d[3]
 *   (local loaded first), a separate local for the second path.
 */
#include "common.h"

extern char *D_L13_001B0AB0[];
extern int D_L13_00160058_m __asm__("D_L13_00160058") MACRO_ADDR;
extern float D_0015EE60 MACRO_ADDR;
extern float func_001F9D10(void *, void *);
extern void func_0020D678(void *);
extern int func_L00_0025EFC0(void *, void *, float *, int *, float *, int, float, float, float);
extern int func_L09_00295880(void *, void *, void *, int, int, float);

/* Follows its target moby along a path: snaps to the nearest path point, then walks the path segments. */
void func_L13_0030D028(char *m) {
    int *d = *(int **)(m + 0x78);
    char *path;
    char *pth;
    char *o;
    float v[4];
    int idx;
    float t;
    int i;
    if (((unsigned char *)m)[0x20] == 0) {
        ((unsigned char *)m)[0x30] = 0xFF;
        if (d[1] != -1) {
            path = D_L13_001B0AB0[d[1]];
            for (i = 0; i < *(int *)path; i++) {
                *(float *)(path + i * 16 + 0x1C) = func_001F9D10(path + (i * 16 + 0x10), path + ((i + 1) % *(int *)path * 16 + 0x10));
            }
        }
        d[2] = 0;
        d[3] = 0;
        m[0x20] = 1;
        d[4] = 0;
    }
    if (d[0] == -1) return;
    o = (char *)(D_L13_00160058_m + (d[0] << 8));
    if (o == 0 || ((unsigned char *)o)[0x20] == 0xFE || ((unsigned char *)o)[0x20] == 0xFD) {
        func_0020D678(m);
        return;
    }
    if (((unsigned char *)o)[0x20] >= 7) {
        d[4]++;
        if (d[1] == -1) return;
        pth = D_L13_001B0AB0[d[1]];
        if (((unsigned char *)m)[0x20] == 1) {
            func_L00_0025EFC0(pth, o + 0x10, v, &idx, &t, 0, 100.0f, 1.0f, 0.0f);
            if (idx > d[2] || t > ((float *)d)[3] || d[4] < 0x1E) {
                d[2] = idx;
                ((float *)d)[3] = t;
                qcopy(m + 0x10, v);
            } else {
                m[0x20] = 2;
            }
        }
        if (((unsigned char *)m)[0x20] == 2) {
            if (d[2] < *(int *)pth - 1) {
                int k = func_L09_00295880(m, pth, m + 0x10, d[2], 1, D_0015EE60 * 0.25f);
                d[2] = k;
                ((float *)d)[3] = func_001F9D10(m + 0x10, pth + (k * 16 + 0x10));
            } else {
                m[0x20] = 3;
            }
        }
    } else {
        qcopy(m + 0x10, o + 0x10);
    }
}
