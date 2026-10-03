/* NON_MATCHING func_L16_002E5D68 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: BYTES 11/340 (96.8% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Picks which of three target slots (list at data+0x80) is nearest, sets moby state 1 or 6, copies two vectors f
 *   Best p10.c/p11.c (budget spent): 7 bytes differ, only commutative addu operand order (retail list + sel*4, idx
 *   Would need the source spelling that puts base first in the two address adds; index-local or `base - (-(i*4))` 
 */
extern float func_001F9D10(void *, void *);
extern unsigned char D_0013D5C8_b[] __asm__("D_0013D5C8");

/* picks the nearest target slot and sets the moby's state */
void func_L16_002E5D68(void *moby_v) {
    char *moby = moby_v;
    char *data = *(char **)(moby + 0x78);
    int *list = (int *)(data + 0x80);
    int i;
    int idx;
    char *g;
    *(short *)(data + 0xAC) = -1;
    for (i = 0; i < 3; i++) {
        if (func_001F9D10(moby + 0x10, D_L16_001601AC + (list[i] << 7) + 0x30) < 1.0f) {
            *(short *)(data + 0xAC) = i;
        }
    }
    {
    if (D_0013D5C8_b[0x21] != 0 || *(short *)(data + 0xAC) == 2) {
        int v = *(int *)(*(char **)(moby + 0x24) + 0x10);
        moby[0x31] = 1;
        *(int *)(moby + 0x94) = v;
        *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) & 0xFFFE;
        moby[0x20] = 1;
    } else {
        moby[0x20] = 6;
        moby[0x31] = 0;
        *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) | 1;
        *(int *)(moby + 0x94) = 0;
    }
    }
    idx = *(int *)((char *)list + *(short *)(data + 0xAC) * 4) << 7;
    g = D_L16_001601AC;
    qcopy(data + 0x60, idx + g + 0x30);
    qcopy(data + 0x70, idx + g + 0x70);
}
