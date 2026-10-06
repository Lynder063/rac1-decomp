/* NON_MATCHING func_L00_0024B920 -- src/overlays/shared/menu_00249720.c
 * Best so far: BYTES 1/60 (98.3% of the bytes match), checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Sets a menu memory card state from D_0013D3AC and D_0015EFB4.
 *   Three wordings compile to the same mismatch: the initial global load uses $v1 instead of retail's $v0, moving 
 *   An allocator or scheduler change is needed to place the immediate in $a0 before loading the global.
 */
extern char D_0013D355[];
extern int D_0015EFB4 MACRO_ADDR;
extern int D_0015EFB0 MACRO_ADDR;

// Sets the menu memory card state.
void func_L00_0024B920(void) {
    if (*(int *)(D_0013D355 + 0x57) != -2) {
        D_0015EFB4 = 3;
        return;
    }
    if (D_0015EFB4 & 2) {
        D_0015EFB0 = 6;
    }
}
