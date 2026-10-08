/* NON_MATCHING func_L00_00245B88 -- src/overlays/shared/loaders_00240398.c
 * Best so far: SIZE ours 180 / retail 184, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Looks up table entries idx and idx+1 (two words) in D_00137C80 (+0x2C18 when D_0015EE80 set, else +0x2AFC) at 
 *   Budget spent at p9.c (BYTES 52/184, size equal): the `long` second parameter of func_00217628 produced retail'
 *   Would unblock: the right order/association of the per-arm address computation (retail computes (idx*4+L)+T, bo
 *   x01 round (p10-p15): best.c/p9 COMPILE-failed only because D_L00_0016C960/D_00137C80 conflict with the file's 
 *   mini9: reviewed p13/p14/p15; original pointer order, swapped ps/pe, and per-arm level local have the same 52/1
 *   Stopped without repeating them; typed-global alias fixes are known, but another per-arm allocation/address-ass
 *   hq3 s09 (7 runs, p16-p22): best.c did not compile here: its extern declarations of D_L00_0016C960 and D_00137C
 *   Stopped on the three-wording rule. Unblock: a wording that gets retail's end-index schedule and tail argument 
 */
extern int D_L00_0016C960_i[] __asm__("D_L00_0016C960");
extern int D_0015EE80 MACRO_ADDR;
extern int D_00137C80_i[] __asm__("D_00137C80");
extern void func_00217628(int, int, int);
extern void func_00217748(int);

// Looks up a stream's length in the level table and kicks off a load.
int func_L00_00245B88(int idx) {
    int *t = D_L00_0016C960_i;
    int a = t[0x5C / 4];
    int k = idx;
    char *base;
    char *tbl;
    int *ps, *pe;
    int n;
    if (D_0015EE80 != 0) {
        base = (char *)D_00137C80_i;
        tbl = base + 0x2C18;
        ps = (int *)((k * 4 + t[0x30 / 4] * 0x250) + tbl);
        pe = (int *)((((k + 1) << 2) + t[0x30 / 4] * 0x250) + tbl);
    } else {
        base = (char *)D_00137C80_i;
        tbl = base + 0x2AFC;
        ps = (int *)((k * 4 + t[0x30 / 4] * 0x250) + tbl);
        pe = (int *)((((k + 1) << 2) + t[0x30 / 4] * 0x250) + tbl);
    }
    n = *pe - *ps;
    if (n > 0) {
        func_00217628(a, *ps, n);
        func_00217748(0);
    }
    return 1;
}
