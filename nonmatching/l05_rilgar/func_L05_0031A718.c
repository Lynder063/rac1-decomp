/* NON_MATCHING func_L05_0031A718 -- src/overlays/l05_rilgar/vendor_0030EB68.c
 * Best so far: BYTES 56/416 (86.5% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L05_0031A718 (416 B)
 *   Best: c3.c, size exact, BYTES 56/416. Logic and jump table right (case 2 first, falls into 0/1/3/4).
 *   Left: m gets $s1 and the spot iterator $s0 (retail swaps them); the constant byte stores in both switch
 *   arms are scheduled earlier than retail's (retail keeps source order 0x20, 0x94, 0x34, 0x31); the final
 *   spots[idx] address is idx*4 + spots in ours, spots + idx*4 in retail. Store-order permutations: best 52.
 */
#include "common.h"

extern char *D_L05_001601AC_p __asm__("D_L05_001601AC") MACRO_ADDR;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern unsigned char D_0014171B_u[] __asm__("D_0014171B");
extern float func_001F9D10(void *, void *);

/* Picks which of the moby's five spots it stands on and switches it on (spot 2, when unlocked) or off. */
void func_L05_0031A718(char *m) {
    char *d = *(char **)(m + 0x78);
    int *spots = (int *)(d + 0x80);
    int i;
    int k;
    *(short *)(d + 0xB4) = -1;
    for (i = 0; i < 5; i++) {
        if (func_001F9D10(m + 0x10, D_L05_001601AC_p + spots[i] * 128 + 0x30) < 1.0f) {
            *(short *)(d + 0xB4) = i;
        }
    }
    switch (*(short *)(d + 0xB4)) {
    case 2:
        k = D_0015EE84_m * 16;
        if ((D_0014171B_u + 0xAA35)[*(int *)(d + 0xB8) + k] != 0xFF
            && (D_0014171B_u + 0xAA35)[*(int *)(d + 0xBC) + k] != 0xFF) {
            m[0x20] = 6;
            *(int *)(m + 0x94) = 0;
            *(unsigned short *)(m + 0x34) |= 1;
            m[0x31] = 0;
            break;
        }
    case 0:
    case 1:
    case 3:
    case 4:
        m[0x20] = 1;
        *(int *)(m + 0x94) = *(int *)(*(char **)(m + 0x24) + 0x10);
        *(unsigned short *)(m + 0x34) &= 0xFFFE;
        m[0x31] = 1;
        break;
    }
    {
        int off = spots[*(short *)(d + 0xB4)] << 7;
        int tab = (int)D_L05_001601AC_p;
        qcopy(d + 0x60, (char *)(off + tab) + 0x30);
        qcopy(d + 0x70, (char *)(off + tab) + 0x70);
    }
}
