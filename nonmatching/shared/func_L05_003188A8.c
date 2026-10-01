/* NON_MATCHING func_L05_003188A8 -- src/overlays/shared/vendor_002CF2C0.c
 * Best so far: BYTES 14/216 (93.5% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L05_003188A8: if level flag == 2 and D_0015EEB0[0] set, loops over the list at D_L05_0016CD60+0x178 (coun
 *   Best is p4.c (14 bytes differ, same size): retail keeps the list base address in $v1 for the first count test 
 *   Unblock: some source form that makes the table address a distinct pseudo from the loop base (allocator tie); b
 */
extern void func_0020D960(char *, int, void *);
extern int D_L05_0015F6A8 MACRO_ADDR;
extern unsigned char D_0015EEB0[] MACRO_ADDR;
extern char D_L05_0016CD60[];
extern unsigned char D_L05_0017C9A0[];
extern short D_L05_00161FA8;

// Re-arms the level's marker effect for each registered moby matching the caller.
void func_L05_003188A8(char *moby) {
    int i;
    char *t;
    if (D_L05_0015F6A8 != 2) return;
    if (D_0015EEB0[0] == 0) return;
    t = D_L05_0016CD60;
    for (i = 0; i < *(short *)(t + 0x44); i++) {
        char *o = *(char **)(t + 0x178 + i * 4);
        if (*(short *)(o + 0xA6) == *(short *)(moby + 0xA6) && D_L05_0017C9A0[1] == 0) {
            func_0020D960(o, 0, D_L05_0017C9A0);
            *(float *)(D_L05_0017C9A0 + 0x20) = *(float *)&D_L05_00161FA8;
            *(float *)(D_L05_0017C9A0 + 0x24) = *(float *)&D_L05_00161FA8;
            *(float *)(D_L05_0017C9A0 + 0x28) = *(float *)&D_L05_00161FA8;
        }
    }
}
