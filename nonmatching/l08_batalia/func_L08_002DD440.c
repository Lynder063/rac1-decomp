/* NON_MATCHING func_L08_002DD440 -- src/overlays/l08_batalia/vendor_002B9438.c
 * Best so far: BYTES 2/184 (98.9% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Transforms the eight 16-byte vectors of a table entry (when its first word is 8) with func_001F9EC0/func_001F9
 *   Best is p6/p7/p9 (BYTES 2/184): only the emission order of `addiu s0,a0,0x10` (table+0x10) vs `addiu s4,a2,0x1
 *   Tried locals order, int* vs char*, for vs do-while: all tie. Budget spent. Needs a different hoisting order of
 */
extern int D_L08_001B0FB0[];
extern char D_L08_001DB540[];
extern void func_001F9EC0(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);

// Transforms eight vectors of the current table entry by the moby's matrix.
void func_L08_002DD440(char *moby) {
    char *data = *(char **)(moby + 0x78);
    int *t = (int *)D_L08_001B0FB0[*(int *)(data + 0x8C)];
    if (*t == 8) {
        char *q = D_L08_001DB540;
        char *mat = moby + 0xC0;
        char *p = (char *)t + 0x10;
        int i;
        for (i = 7; i >= 0; i--) {
            func_001F9EC0(p, q, mat);
            q += 0x10;
            func_001F9BD8(p, p, moby + 0x10);
            p += 0x10;
        }
    }
}
