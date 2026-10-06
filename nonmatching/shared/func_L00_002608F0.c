/* NON_MATCHING func_L00_002608F0 -- src/overlays/shared/mobyutil_00258BC8.c
 * Best so far: SIZE ours 88 / retail 96, checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Generated code is 100 bytes vs retail 76 bytes (24-byte difference). The retail assembly uses optimized branch
 *   ## Wall hit
 *   Compiler optimization gap - the retail code likely uses specialized instruction ordering, loop unrolling, or c
 *   q29/u02: fragment: the loop's bne branches to func_L00_0026093C, outside the function (retail's not-found/loop
 *   mini2/a02: joined target is 96 bytes; corrected data access follows moby+0x78 then data+0x18. p7.c preserves t
 *   Stopped at QUEUE repeated-lui wall: p11.c emits a second lui for D_L00_001B0AF0 when its pointer uses MACRO_AD
 *   mini2/d02 resume: reviewed joined assembly, p11.c and all seven runs; existing repeated-lui wall remains valid
 *   Searches indexed moby data; unmatched setup and register allocation require a compatible per-function compiler
 */
extern short D_L00_001B0AF0[];
extern short D_L00_001B0AF0_m[] __asm__("D_L00_001B0AF0") MACRO_ADDR;
extern char *D_L00_00160098_60D30 __asm__("D_L00_00160098") MACRO_ADDR;
/* searches indexed moby data for a matching key */
char *func_L00_002608F0(int key) {
    int count = D_L00_001B0AF0[0];
    int i = 1;
    if (count > 0) {
        char *base = D_L00_00160098_60D30;
        short *p = D_L00_001B0AF0_m + 1;
        do {
            char *moby = (p[0] << 8) + base;
            char *data = *(char **)(moby + 0x78);
            ++i;
            if (*(int *)(data + 0x18) == key) return moby;
            ++p;
        } while (i <= count);
    }
    return 0;
}
