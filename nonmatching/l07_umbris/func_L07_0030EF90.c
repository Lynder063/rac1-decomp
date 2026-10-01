/* NON_MATCHING func_L07_0030EF90 -- src/overlays/l07_umbris/vendor_002CE470.c
 * Best so far: BYTES 15/316 (95.2% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L07_0030EF90: spawns moby class 0x416, fills its data block (floats/ints from args), sets a global pair a
 *   Best is p9.c (BYTES 15/316): all instructions right, only the order of the 7 stores into the data block differ
 *   Budget spent. Idioms: short store first then byte stores keeps two 0xFF regs; `g=D; h=g-0x140;` before the cal
 */
extern char D_L07_00166EC0[];
extern float func_001F9D48(void *, void *);
extern int func_001F9850(int);
extern void func_L00_00251E30(void *);
extern int func_0022ED80(int, int, int);

// spawns a moby of class 0x416 and initialises its data from the arguments
unsigned char *func_L07_0030EF90(int a, void *pos, int b, float f0, float f1, float f2, float f3, float f4) {
    unsigned char *moby = (unsigned char *)func_0020D348_m(0x416);
    if (moby != 0) {
        char *data;
        char *g;
        char *h;
        data = *(char **)(moby + 0x78);
        moby[0x30] = 0xFF;
        *(short *)(moby + 0x32) = 0xFF;
        moby[0x31] = 1;
        qcopy(moby + 0x10, pos);
        *(float *)(data + 0x1C) = f4;
        *(int *)(data + 0x14) = a;
        *(float *)(data + 4) = f1;
        *(float *)(data + 0x10) = f2;
        *(float *)(data + 0xC) = f3;
        *(float *)(data + 8) = f0;
        *(int *)(data + 0x18) = b;
        *(float *)data = f0;
        *(unsigned short *)(moby + 0x34) |= 0x200;
        g = D_L07_00166EC0;
        h = g - 0x140;
        *(float *)(h + 0x160) = 0.3f - func_001F9D48(moby + 0x10, g) / 100.0f;
        *(int *)(h + 0x168) = func_001F9850(0x14);
        func_L00_00251E30(moby);
        func_0022ED80(0, 0, (int)moby);
    }
    return moby;
}
