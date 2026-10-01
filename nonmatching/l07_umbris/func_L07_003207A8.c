/* NON_MATCHING func_L07_003207A8 -- src/overlays/l07_umbris/vendor_0031BDB8.c
 * Best so far: BYTES 16/460 (96.5% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L07_003207A8: state machine (same shape as the 0x10000-proximity family); state 2 emits three func_L00_00
 *   Best is p3.c (BYTES 16/460 differ): only the scheduling of `addiu m+0x40` (ours before the D_L07_0015F660 lui,
 *   Scheduler tie; rewording p/q/d locals moved it only between this and a register swap. Would need a wording tha
 */
#include "common.h"
extern char *func_L00_0025B478(void *, int, int);
extern int func_0022ED80(int, int, int);
extern void func_L01_00279790(void *);
extern void func_L00_00265050(void *, int, void *, void *, int, int, float, void *, void *, void *);
extern char *func_0020D348(int);
extern void func_L00_00251E30(void *);
extern void func_0020D678(void *);
extern char D_L07_0015F660[];
/* Level moby state machine: wait, detect proximity, then emit effects, spawn a replacement and delete itself. */
void func_L07_003207A8(char *m) {
    int hit = 0;
    char *r = func_L00_0025B478(m, 0x10000, 0);
    char *n;
    char *d;
    char *p;
    char *q;
    switch (*(unsigned char *)(m + 0x20)) {
    case 0:
        m[0x20] = 1;
        break;
    case 1:
        if (r != 0 && *(float *)(r + 0x2C) > 0.0f) hit = 1;
        if (hit) m[0x20] = 2;
        break;
    case 2:
        func_0022ED80(0, 0, (int)m);
        d = D_L07_0015F660;
        func_L01_00279790(m);
        q = m + 0x40;
        func_L00_00265050(m, 0x674, m + 0x10, q, 0, 0, 0.0f, d, d, d);
        func_L00_00265050(m, 0x675, m + 0x10, q, 0, 0, 0.0f, d, d, d);
        func_L00_00265050(m, 0x676, m + 0x10, q, 0, 0, 0.0f, d, d, d);
        n = func_0020D348(0x673);
        if (n != 0) {
            n[0x31] = 1;
            *(short *)(n + 0x32) = 0xFF;
            qcopy(n + 0x10, m + 0x10);
            qcopy(n + 0x40, q);
            *(long *)(n + 0x38) = *(long *)(m + 0x38);
            func_L00_00251E30(n);
        }
        func_0020D678(m);
        break;
    }
}
