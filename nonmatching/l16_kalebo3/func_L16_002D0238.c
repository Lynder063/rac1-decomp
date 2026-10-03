/* NON_MATCHING func_L16_002D0238 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: SIZE ours 232 / retail 236, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Walks a list of moby ids (short list from D_L16_001ABFC0[moby[0x21]], negative entry ends it), finds the moby 
 *   Best (p3/p6, 232 vs 236 bytes): retry-on-mismatch loop with lhu/lh in the loop. Retail hoists the D_L16_001600
 *   Unblock: a source form where only the global base is loop-invariant but *p is re-read (p0, p1, p2, p4, p5 vari
 *   Also tried (p7) a local base with a while-spin on the expression: 268 bytes. Stopped at run 8 of 10.
 */
extern float func_001FA748(float, float);
extern float D_0015EE6C MACRO_ADDR;
extern int *D_L16_001ABFC0[];
extern char *D_L16_00160098 MACRO_ADDR;
extern int D_L16_0015F6B0 MACRO_ADDR;
extern void func_L16_002D0328(void);
extern short D_L16_00161A9C;
/* spins the level's rotating parts by the current angle and queues the draw callback */
void func_L16_002D0238(char *moby) {
    short *p;
    float f;
    char *m;
    char *data;
    if (((unsigned char *)moby)[0x21] != 0xFF) {
        f = *(float *)&D_L16_00161A9C * 0.017453292f * D_0015EE6C;
        p = (short *)D_L16_001ABFC0[((unsigned char *)moby)[0x21]];
        for (;;) {
            m = D_L16_00160098 + ((*(unsigned short *)p & 0x7FFF) << 8);
            if (*(short *)(m + 0xA6) == 0x21D) {
                data = *(char **)(m + 0x78);
                *(int *)(data + 0x118) = D_L16_0015F6B0;
                *(float *)(data + 0x11C) = func_001FA748(*(float *)(data + 0x11C), f);
                if (*p++ < 0) {
                    break;
                }
            }
        }
        func_001F49B0(func_L16_002D0328, moby);
    }
}
