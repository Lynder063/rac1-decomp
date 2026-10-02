/* NON_MATCHING func_L18_002FC188 -- src/overlays/l18_veldin2/vendor_002F9D48.c
 * Best so far: SIZE ours 280 / retail 288, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   UpdateMoby_1799: state 0 -> state 1; state 1, when D_L18_0015F6A8==2 and the selector word at D_L18_0016D2E0+0
 *   Closest is p3.c (276 vs 288 bytes): if-chain matches, stores and lbu match. Difference: retail uses two separa
 *   Would need a source form that keeps the selector re-read through a non-folded base; a switch with explicit ran
 */
extern void func_L00_00250800(void *, int, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_L00_00264BE8(void *, void *, void *, float, float);
extern int D_L18_0015F6A8;
extern char D_L18_0016D2E0[];
extern short D_L18_00162608;
extern short D_L18_0016260C;
extern short D_L18_00162610;

/* moby update: on its second state, builds an offset vector between two child mobys */
void func_L18_002FC188(char *m) {
    float a[4];
    float b[4];
    float c[4];
    int st = *(unsigned char *)(m + 0x20);
    if (st == 0) {
        m[0x30] = 0xFF;
        m[0x20] = 1;
    } else if (st == 1) {
        if (D_L18_0015F6A8 == 2) {
            char *d = D_L18_0016D2E0;
            int x = 0;
            char *o;
            if (*(unsigned int *)(d + 0x30) >= 4) return;
            switch (*(int *)(d + 0x30)) {
            case 0:
            case 2:
            case 3:
                x = 3;
                break;
            }
            if (*(int *)(d + 0x30) == 1) x = 4;
            o = *(char **)(d + 0x178 + x * 4);
            func_L00_00250800(o, 8, a);
            func_L00_00250800(o, 9, b);
            func_001F9BF0(c, a, b);
            func_L00_001FF4B0(c, c, *(float *)&D_L18_00162608);
            func_L00_00264BE8(a, a, c, *(float *)&D_L18_0016260C, *(float *)&D_L18_00162610);
        }
    }
}
