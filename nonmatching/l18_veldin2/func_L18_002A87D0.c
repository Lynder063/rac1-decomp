/* NON_MATCHING func_L18_002A87D0 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: BYTES 34/240 (85.8% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L18_002A87D0(parent, pos, vec, arg): spawns moby type 0x29, sets colour bytes, scales field 0x2C by 3.0, 
 *   Best p1 (BYTES 34/240): all instructions right, only scheduling differs: retail emits li 0xFF, li 1, lui/mtc1(
 *   Unblock: unknown wording that changes the scheduler's ready order; maybe a struct-typed source.
 */
extern char *func_0020D348(int);
extern int func_001F9850(int);
extern float func_L00_001FF860(float, float);
extern float func_001F9CE8(void *);

/* Spawns a type 0x29 moby from a parent, copying position and setting up its data. */
char *func_L18_002A87D0(char *parent, void *pos, float *vec, int arg) {
    char *moby = func_0020D348(0x29);
    if (moby != 0) {
        char *data;
        *(unsigned char *)(moby + 0x30) = 0xFF;
        *(short *)(moby + 0x32) = 0xFF;
        *(float *)(moby + 0x2C) = *(float *)(moby + 0x2C) * 3.0f;
        moby[0x31] = 1;
        moby[0x20] = 0;
        *(long *)(moby + 0x38) = *(long *)(parent + 0x38);
        qcopy(moby + 0x10, pos);
        data = *(char **)(moby + 0x78);
        qcopy(data, vec);
        *(short *)(data + 0x10) = func_001F9850(0xF0);
        *(short *)(data + 0x12) = arg;
        *(char **)(data + 0x14) = parent;
        *(float *)(moby + 0x48) = func_L00_001FF860(vec[0], vec[1]);
        *(float *)(moby + 0x44) = -func_L00_001FF860(func_001F9CE8(vec), vec[2]);
    }
    return moby;
}
