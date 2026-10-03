/* NON_MATCHING func_L11_0031FBF0 -- src/overlays/l11_pokitaru/vendor_0031EFC0.c
 * Best so far: BYTES 29/216 (86.6% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Runs nine iterations of two calls (func_L08_00259040 then func_L00_001FDE48) over parallel level tables, with 
 *   Code is right (29 bytes differ, all in the loop-invariant prologue): retail hoists the lui/addiu of D_L11_0016
 */
extern void func_L08_00259040(void *, int, int, void *);
extern void func_L00_001FDE48(int, int, int, void *, int);
extern char D_L11_00217A30[];
extern int D_L11_00207B48[];
extern int D_L11_002009E8[];
extern int D_L11_00207B20[];
extern int D_L11_00207B98[];
typedef struct { int a, b; } P8;
extern P8 D_L11_001626A8[];

/* sets up nine entries from the level tables */
void func_L11_0031FBF0(int arg) {
    int i;
    for (i = 0; i < 9; i++) {
        func_L08_00259040(D_L11_00217A30, D_L11_00207B48[i], D_L11_002009E8[i], &D_L11_001626A8[arg]);
        func_L00_001FDE48(D_L11_002009E8[i], D_L11_00207B20[i], D_L11_00207B98[i], D_L11_00217A30, 1);
    }
}
