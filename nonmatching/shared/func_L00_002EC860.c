/* NON_MATCHING func_L00_002EC860 -- src/overlays/shared/vendor_002EB0D8.c
 * Best so far: BYTES 19/204 (90.7% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Initialises the moby data block (m->0x70) with 12 float constants + 3 zero ints, then calls func_001EB430 x2, 
 *   Only difference: scheduling order of the 12 swc1 stores and of the constant loads (.04/.07/.3/1.0/.99 to f0/f1
 *   Unblock: the source store order that yields A4,48,4C,34,38,A0,3C,40,44,28,2C,30 (not retail order, not ascendi
 */
extern void func_L00_001EB430(void *);
extern void func_L00_001FF200(void *);
extern void func_L00_002EC728(void *);

/* resets the object's data block to default float parameters */
void func_L00_002EC860(void *arg) {
    char *m = arg;
    char *p;
    *(int *)(*(char **)(m + 0x70) + 0xF0) = 0;
    p = *(char **)(m + 0x70);
    *(int *)(p + 0x9C) = 0;
    *(int *)(p + 0xA8) = 0;
    *(int *)(p + 0xAC) = 0;
    *(float *)(p + 0x4C) = 0.04f;
    *(float *)(p + 0x3C) = 0.04f;
    *(float *)(p + 0x40) = 0.04f;
    *(float *)(p + 0x44) = 0.04f;
    *(float *)(p + 0x38) = 0.07f;
    *(float *)(p + 0x28) = 0.07f;
    *(float *)(p + 0x30) = 0.07f;
    *(float *)(p + 0xA0) = 0.3f;
    *(float *)(p + 0xA4) = 0.3f;
    *(float *)(p + 0x34) = 1.0f;
    *(float *)(p + 0x2C) = 1.0f;
    *(float *)(p + 0x48) = 0.99f;
    func_L00_001EB430(p + 0x50);
    func_L00_001EB430(p);
    func_L00_001FF200(p + 0x90);
    func_L00_002EC728(m);
    *(short *)(m + 0x7E) = 0;
}
