/* NON_MATCHING func_L16_002D6E98 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: SIZE ours 240 / retail 244, checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - Use the matched same-file moby-list traversal shape already present in CAA18/CB000.
 *   1. SIZE284: structured inner/outer loops cause class287 and state1 to persist in extra saved registers. Retail
 *   2. SIZE232/244: source labels remove cached constants and recover traversal layout, but target-position root i
 *   Next: retain the inner retry label but restore the outer do/while, allowing target-root high-half hoisting acr
 *   3. SIZE260: outer do/while hoists target root, but also class/state literals. Restore outer labels and introdu
 *   4. SIZE240: explicit target pointer caches the complete address, changing null-return branch and pointer call 
 *   5. SIZE260 identical: class switch does not change literal hoisting. Try bottom-tested break inside the outer 
 *   6. SIZE260 identical: break exit, switch retry and ordinary outer loop all preserve class/state constants. Sto
 */
#include "common.h"
extern int *D_L16_001ABFC0[];
extern char *D_L16_00160098 MACRO_ADDR;
extern char D_L16_00167240[];
extern short D_L16_00161B40;
extern float func_001F9D10(void *, void *);
/* Activate the linked mobys and return the one nearest the challenge target. */
void *func_L16_002D6E98(int index, int secondary) {
    short *p = (short *)D_L16_001ABFC0[index];
    char *nearest = 0;
    float distance = 1000.0f;
    char *moby;
    char *data;
    float d;
    char *target;
    if (!p) return 0;
    target = D_L16_00167240;
next:
again:
        moby = D_L16_00160098 + ((*(unsigned short *)p & 0x7FFF) << 8);
        if (*(short *)(moby + 0xA6) != 0x287) goto again;
        d = func_001F9D10(target, moby + 0x10);
        if (d < distance) {distance = d; nearest = moby;}
        data = *(char **)(moby + 0x78);
        moby[0x20] = 1;
        d = *(float *)&D_L16_00161B40;
        *(float *)(data + 0x14) = d;
        if (secondary) *(float *)(data + 0x18) = d;
    if (*p++ >= 0) goto next;
    return nearest;
}
