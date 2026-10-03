/* NON_MATCHING func_L00_00261848 -- src/overlays/shared/mobyutil_00258BC8.c
 * Best so far: SIZE ours 140 / retail 144, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   UnlockPlanet(planet): if (flags[planet]==0) { count = number of nonzero bytes in flags[0..19]; list[count] = p
 *   Best (p0/p7): SIZE 136 vs retail 144. Retail keeps the %hi register ($9) live across the loop and re-does addi
 *   Budget burned partly by a mistake (three parallel runs in one directory, runs 7 x3). Unblock: a form that make
 */
extern unsigned char D_0013D605[] NOT_SDA;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern void func_L00_00263DB0(int planet);

/* marks a planet unlocked, appends it to the unlock list, notifies if it is not the current one */
void func_L00_00261848(int planet) {
    unsigned char *flags = D_0013D605 + 0x843;
    int count = 0;
    int i;

    if (flags[planet] == 0) {
        for (i = 0; i < 20; i++) {
            if (flags[i] != 0) count++;
        }
        *(int *)(D_0013D605 + 0x13 + count * 4) = planet;
        D_0013D605[0x843 + planet] = 1;
        if (planet != D_0015EE84_m) {
            func_L00_00263DB0(planet);
        }
    }
}
