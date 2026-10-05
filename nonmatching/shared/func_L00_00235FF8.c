/* NON_MATCHING func_L00_00235FF8 -- src/overlays/shared/hud_00235960.c
 * Best so far: BYTES 37/148 (75.0% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L00_00235FF8 (148 bytes)
 *   Swaps two 4-int groups {FB28,FB2C,FB30,FB34} and {160098,16009C,1600A0,1600A8} when arg != gp flag (gp -0x74F8
 *   Best c5.c BYTES 37/148 (right size). Remaining diff: retail stores FB28/FB2C right after their loads (interlea
 */
extern short D_L00_0015F808;
extern int D_L00_00160098 MACRO_ADDR;
extern int D_L00_0015FB28 MACRO_ADDR;
extern int D_L00_0015FB2C MACRO_ADDR;
extern int D_L00_0015FB30 MACRO_ADDR;
extern int D_L00_0015FB34 MACRO_ADDR;
extern int D_L00_0016009C MACRO_ADDR;
extern int D_L00_001600A0 MACRO_ADDR;
extern int D_L00_001600A8 MACRO_ADDR;
void func_L00_00235FF8(int a) {
    int f = *(int *)&D_L00_0015F808;
    int t0, t1, t2, t3, a2, a3, n;
    if (a == f) return;
    n = D_L00_00160098;
    t0 = D_L00_0015FB28;
    D_L00_0015FB28 = n;
    t1 = D_L00_0015FB2C;
    D_L00_0015FB2C = D_L00_0016009C;
    a2 = D_L00_001600A0;
    t2 = D_L00_0015FB30;
    a3 = D_L00_001600A8;
    t3 = D_L00_0015FB34;
    *(int *)&D_L00_0015F808 = f ^ 1;
    D_L00_00160098 = t0;
    D_L00_0016009C = t1;
    D_L00_001600A0 = t2;
    D_L00_0015FB30 = a2;
    D_L00_001600A8 = t3;
    D_L00_0015FB34 = a3;
}
