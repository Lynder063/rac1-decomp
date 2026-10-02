/* NON_MATCHING func_L18_002D93C0 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: BYTES 20/128 (84.4% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - `entry[0x74]` has to be read unsigned (retail `lbu`), so the blob is declared
 *   `extern unsigned char D_0013E633_u[] __asm__("D_0013E633");` -- the file
 *   declares it `char`.
 *   - One `*(int *)(state + 0x70) = next;` at the end instead of a store per branch.
 *   Remaining 20 bytes: retail re-materialises `addiu $v0,$zero,-1` on each of the
 *   three paths and shares a single `sw`; ours keeps -1 in $a3 and stores three
 *   times. Writing the three `next = -1` assignments out (r2.c) makes gcc duplicate
 *   the *store* instead, 136 bytes -- worse.
 */
#include "common.h"
extern int ebf0_i(int) __asm__("func_L00_0028EBF0");
extern unsigned char D_0013E633_u[] __asm__("D_0013E633");

void func_L18_002D93C0(unsigned char *moby) {
    char *state = *(char **)(moby + 0x78);
    if (moby[0x20] == 2) {
        int index;
        int next = -1;
        moby[0x20] = 3;
        index = *(int *)(state + 0x70);
        if (index != -1) {
            unsigned char *entry = D_0013E633_u + 0x1D + index * 0x70;
            if (*(unsigned char **)(entry + 0x88) == moby && entry[0x74] != 0) {
                next = ebf0_i(index);
            }
        }
        *(int *)(state + 0x70) = next;
    }
}
