/* NON_MATCHING func_L16_002D6F90 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: SIZE ours 236 / retail 240, checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   ## Assembly map
 *   - Frame70/currentS0/listS1/nearestS2/secondaryS3/target highS4/F20 distance1000.
 *   - Null list returns0; unsigned masked short picks pool moby, inner retry class287.
 *   - Distance to target root; keep nearest. Set state1 and reset data14/optional18 to integerzero.
 *   - Process final signed-negative entry before terminating and return nearest.
 *   - Start D6E98 verified near with the distinct reset semantics; check whether zero stores alter invariant alloc
 *   1. SIZE228/240: same missing target-high lifetime as D6E98; try structured outer loop now that reset stores ar
 *   2. SIZE256: structured outer loop caches class/state and adds saves as in D6E98. Retain p0 SIZE228; known sibl
 */
extern float func_001F9D10(void *, void *);
extern short *D_L16_001ABFC0_2CB000[] __asm__("D_L16_001ABFC0");
extern char D_L16_00167240[];
extern char *D_L16_00160098 MACRO_ADDR;

/* Finds the nearest moby of type 0x287 in a list, marks each as state 1 and optionally clears its data. */
void *func_L16_002D6F90(int index, int clear) {
    short *list = D_L16_001ABFC0_2CB000[index];
    char *best = 0;
    float bestDist = 1000.0f;
    char *pos;
    if (list == 0) {
        return 0;
    }
    pos = D_L16_00167240;
top:
    {
        char *moby = D_L16_00160098 + ((*(unsigned short *)list & 0x7FFF) << 8);
        if (*(short *)(moby + 0xA6) == 0x287) {
            float d = func_001F9D10(pos, moby + 0x10);
            int *data = *(int **)(moby + 0x78);
            if (d < bestDist) {
                bestDist = d;
                best = moby;
            }
            moby[0x20] = 1;
            if (clear) {
                data[6] = 0;
                data[5] = 0;
            }
            if (*list++ < 0) {
                return best;
            }
        }
        goto top;
    }
}
