/* NON_MATCHING func_L18_002DD848 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: SIZE ours 100 / retail 96, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stores f to data[0], adds 2 to data[2], then clamps data[2] to func_001F9850(D_L18_00161D2C) if the limit is b
 *   Retail has `lw $a0,gp` hoisted above the swc1 and the `sw` of data[2] in the jal delay slot; ours puts lw $a0 
 *   Would need a source form whose stores come after the argument load in insn order without keeping the limit in 
 */
extern int func_001F9850(int);
extern short D_L18_00161D2C;

// Resets a moby's position and advances its counter, wrapping at a limit.
void func_L18_002DD848(char *moby, void *pos, float f)
{
    int *d = *(int **)(moby + 0x78);
    int lim = *(int *)&D_L18_00161D2C;
    qcopy(moby + 0x10, pos);
    d[2] += 2;
    *(float *)d = f;
    if (func_001F9850(lim) < d[2]) {
        d[2] = func_001F9850(*(int *)&D_L18_00161D2C);
    }
}
