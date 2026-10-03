/* NON_MATCHING func_L12_002E7EE0 -- src/overlays/shared/vendor_002BD3D0.c
 * Best so far: BYTES 17/232 (92.7% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L12_002E7EE0: if a level state word is 2 and a flag byte set, walks the level's moby list (struct extern:
 *   Best is p2.c (17 of 232 bytes): body is identical; only the prologue register choice differs (retail loads D_L
 */
extern void func_0020D960(char *, int, unsigned char *);
extern int D_L12_0015F6A8;
extern unsigned char D_0015EEB0[] __asm__("D_0015EEB0") MACRO_ADDR;
extern struct {
    char pad0[0x44];
    short count;
    char pad1[0x178 - 0x46];
    char *mobs[1];
} D_L12_0016CD60;
extern unsigned char D_L12_0017C940[];

/* flags the matching moby's effect slot when its owner is in the list */
void func_L12_002E7EE0(char *m) {
    int i;
    if (D_L12_0015F6A8 != 2) {
        return;
    }
    if (D_0015EEB0[0] == 0) {
        return;
    }
    for (i = 0; i < D_L12_0016CD60.count; i++) {
        char *o = D_L12_0016CD60.mobs[i];
        if (*(short *)(o + 0xA6) == *(short *)(m + 0xA6)) {
            unsigned char *p = D_L12_0017C940;
            if (p[1] == 0) {
                func_0020D960(o, 1, p);
                *(float *)(p + 0x20) = 2.75f;
                *(float *)(p + 0x24) = 2.75f;
                *(float *)(p + 0x28) = 2.75f;
            }
        }
    }
}
