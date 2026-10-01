/* NON_MATCHING func_L14_00302968 -- src/overlays/l14_oltanis/vendor_002FF358.c
 * Best so far: BYTES 12/236 (94.9% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Spawns moby 0x4A9 and fills its data block (0x78 ptr) from args; scales moby[0x2C] by a gp float.
 *   Best p6/p8: only 4 instructions differ (12 bytes): retail hoists the gp `lhu` (D_L14_0016215C) above the 0x1C 
 *   Early-load variants (p3/p7) get the hoist but swap $a0/$a1 (data ptr vs const 1). Float tail is solved with t/
 */
extern char *func_0020D348(int);
extern float func_L00_001FF860(float, float);
extern void func_L00_00251E30(void *);
extern short D_L14_0016215C;
extern short D_L14_00162168;

/* Spawns a moby with its data block filled from the arguments. */
char *func_L14_00302968(int a0, float *a1, float *a2, int a3, float f) {
    char *moby = func_0020D348(0x4A9);
    float t, u;
    if (moby != 0) {
        char *d = *(char **)(moby + 0x78);
        ((unsigned char *)moby)[0x30] = 0xFF;
        *(short *)(moby + 0x32) = 0xFF;
        moby[0x31] = 1;
        moby[0x20] = 0;
        *(int *)(d + 0x24) = a0;
        qcopy(moby + 0x10, a1);
        qcopy(d + 0x10, a2);
        *(int *)(d + 0x20) = a3;
        *(float *)(d + 0x1C) = f;
        *(unsigned short *)(d + 0x28) = D_L14_0016215C;
        *(short *)(d + 0x2A) = 0;
        *(int *)(moby + 0x40) = 0;
        *(int *)(moby + 0x44) = 0;
        t = func_L00_001FF860(a2[0], a2[1]);
        u = *(float *)(moby + 0x2C) * *(float *)&D_L14_00162168;
        *(float *)(moby + 0x48) = t;
        *(float *)(moby + 0x2C) = u;
        func_L00_00251E30(moby);
    }
    return moby;
}
