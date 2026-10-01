/* NON_MATCHING func_L11_0031FCC8 -- src/overlays/shared/vendor_002C99E0.c
 * Best so far: SIZE ours 212 / retail 216, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Runs a 5-iteration loop (i<5) calling func_L08_00259040 and func_L00_001FDE48 over four int tables, with &D_L1
 *   Body and registers match (p1, 30 bytes differ); only the prologue order of hoisted lui/addiu differs: retail c
 *   Tried index/local/struct/pointer wordings and a countdown loop: all same bytes or worse. Budget spent.
 */
extern void func_L08_00259040(void *, int, int, void *);
extern void func_L00_001FDE48(int, int, int, void *, int);
extern char D_L11_00217A30[];
extern int D_L11_002179D0[];
extern int D_L11_00215528[];
extern int D_L11_002179B8[];
extern int D_L11_00217A00[];
extern char D_L11_001626B8[];

// Runs two calls per entry over four table entries for slot a.
void func_L11_0031FCC8(int a) {
    int i;
    char *q;
    q = D_L11_001626B8 + a * 8;
    for (i = 0; i < 5; i++) {
        func_L08_00259040(D_L11_00217A30, D_L11_002179D0[i], D_L11_00215528[i], q);
        func_L00_001FDE48(D_L11_00215528[i], D_L11_002179B8[i], D_L11_00217A00[i], D_L11_00217A30, 1);
    }
}
