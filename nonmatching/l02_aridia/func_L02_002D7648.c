/* NON_MATCHING func_L02_002D7648 -- src/overlays/l02_aridia/vendor_002A59D8.c
 * Best so far: BYTES 1/124 (99.2% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
extern void *func_L00_002DCFD0(void *);
extern char D_L02_00160058;

// Checks a moby's associated object; sets state 9 and decrements a counter, or restores state 1.
void *func_L02_002D7648(char *moby) {
    void *r = func_L00_002DCFD0(moby);
    if (r) {
        int idx;
        moby[0x20] = 9;
        idx = *(int *)(*(char **)(moby + 0x78) + 0x288);
        if (idx >= 0) {
            char *o = *(char **)(*(int *)&D_L02_00160058 + idx * 256 + 0x78);
            (*(int *)(o + 0x14C))--;
        }
    } else if (moby[0x20] == 9) {
        moby[0x20] = 1;
    }
    return r;
}
