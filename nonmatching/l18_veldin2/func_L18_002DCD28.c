/* NON_MATCHING func_L18_002DCD28 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: BYTES 14/232 (94.0% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Spawns moby 0x270 (func_0020D348): sets bytes 0x30/0x31/0x20, scales float 0x2C by gp float D_L18_00161C88, fl
 *   Difference (best = p2/p8, 14 bytes, all scheduling): retail hoists lw $v1,-0x5074($gp) before the sh 0x32 and 
 *   Might need a different source shape for the 0x90/0x32 stores (e.g. struct member order); budget spent.
 */
extern char *func_0020D348(int);
extern float func_L00_001FF860(float, float);
extern short D_L18_00161C88;
extern short D_L18_00161C8C;

/* spawns moby 0x270 at a position with the given data */
void func_L18_002DCD28(unsigned char *pos, float *vec, int arg, float a, float b) {
    unsigned char *m = (unsigned char *)func_0020D348(0x270);
    if (m != 0) {
        char *data;
        m[0x30] = 0xFF;
        m[0x31] = 1;
        m[0x20] = 0;
        *(float *)(m + 0x2C) = *(float *)(m + 0x2C) * *(float *)&D_L18_00161C88;
        *(short *)(m + 0x32) = 0xFF;
        *(unsigned short *)(m + 0x34) |= 0x10;
        *(int *)(m + 0x90) = *(int *)&D_L18_00161C8C;
        data = *(char **)(m + 0x78);
        qcopy(m + 0x10, pos);
        *(float *)(m + 0x48) = func_L00_001FF860(vec[0], vec[1]);
        qcopy(data, vec);
        *(int *)(data + 0x34) = arg;
        *(float *)(data + 0x28) = a;
        *(float *)(data + 0x20) = b;
        *(int *)(data + 0x30) = 0;
    }
}
