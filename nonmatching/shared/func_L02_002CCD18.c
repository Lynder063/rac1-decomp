/* NON_MATCHING func_L02_002CCD18 -- src/overlays/shared/vendor_002A5218.c
 * Best so far: BYTES 2/44 (95.5% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Marks an object below the level's pointer bound. The first p1.c form compiles to 44 bytes with two differing i
 */
extern unsigned int D_L02_0016005C;

void func_L02_002CCD18(char *moby) {
    if ((unsigned int)moby < D_L02_0016005C) {
        *(int *)(moby + 0x58) = 0;
        *(unsigned short *)(moby + 0x34) |= 0x40;
    }
}
