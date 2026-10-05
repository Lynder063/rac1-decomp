/* NON_MATCHING func_L06_0030B3E8 -- src/overlays/l06_blarg/vendor_002FE5D0.c
 * Best so far: BYTES 21/416 (95.0% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L06_0030B3E8 (416 B)
 *   Best: c3.c BYTES 21/416. Retail computes m+0x10 in the delay slot of jal func_L01_00279790 and m+0x40
 *   after it ($s2/$s3); ours computes both before the call and swaps the registers. c4 (pos before / rot after
 *   the call as locals) gives the same bytes. Levers: file's func_0022ED80(int, int, void *) prototype,
 *   D_L06_0015F660 address in a local before the call, func_L00_00265050 float as the 7th parameter.
 */
#include "common.h"

extern char D_L06_0015F660[];
extern char *func_L00_0025B478(void *, int, int);
extern void func_0022ED80(int, int, void *);
extern void func_L01_00279790(void *);
extern void func_L00_00265050(void *, int, void *, void *, int, int, float, void *, void *, void *);
extern char *func_0020D348(int);
extern void func_L00_00251E30(void *);
extern void func_0020D678(void *);

/* Breakable moby: arms itself, waits to be hit, then bursts (two effects) and leaves its broken copy. */
void func_L06_0030B3E8(char *m) {
    int hit = 0;
    char *info = func_L00_0025B478(m, 0x10000, 0);
    char *n;
    char *e;
    switch (((unsigned char *)m)[0x20]) {
    case 0:
        m[0x20] = 1;
        break;
    case 1:
        if (info != 0 && 0.0f < *(float *)(info + 0x2C)) hit = 1;
        if (hit) m[0x20] = 2;
        break;
    case 2:
        func_0022ED80(0, 0, m);
        e = D_L06_0015F660;
        func_L01_00279790(m);
        func_L00_00265050(m, 0x682, m + 0x10, m + 0x40, 0, 0, 0.0f, e, e, e);
        func_L00_00265050(m, 0x682, m + 0x10, m + 0x40, 0, 0, 0.0f, e, e, e);
        n = func_0020D348(0x681);
        if (n != 0) {
            n[0x31] = 1;
            *(short *)(n + 0x32) = 0xFF;
            qcopy(n + 0x10, m + 0x10);
            qcopy(n + 0x40, m + 0x40);
            *(long *)(n + 0x38) = *(long *)(m + 0x38);
            func_L00_00251E30(n);
        }
        func_0020D678(m);
        break;
    }
}
