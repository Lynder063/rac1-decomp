/* NON_MATCHING func_L00_00205B50 -- src/overlays/shared/help_00203E98.c
 * Best so far: BYTES 9/196 (95.4% of the bytes match), checked 2026-10-03.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Walks 31 records of 0xB0 bytes at D_L00_0017A780: if byte 1 is set, looks up an owner with func_L00_00205728(s
 *   Best: p5.c (for i<31, p = D + i*0xB0, vectors as p+0x40/0x60/0x90) is BYTES 9/196: the exit test compares p (+
 *   The D_L00_0017A780 declaration is fixed as char[] in the file, so a struct array cannot be tried. Unblock: a w
 */
extern char D_L00_0017A780[];
extern void *func_L00_00205728(int);
extern void func_0020D9D8(void *, void *);
extern void func_001F9BC0(float *);

/* Loop over 31 records of 0xB0 bytes: release the owner, reset three vectors, set scale to 1.0. */
void func_L00_00205B50(void) {
    int i;
    for (i = 0; i < 31; i++) {
        char *p = D_L00_0017A780 + i * 0xB0;
        if (*(unsigned char *)(p + 1) != 0) {
            void *m = func_L00_00205728(*(short *)(p + 0xA2));
            if (m != 0) {
                func_0020D9D8(m, p);
            }
        }
        func_001F9BC0((float *)(p + 0x40));
        func_001F9BC0((float *)(p + 0x60));
        func_001F9BC0((float *)(p + 0x90));
        *(float *)(p + 0xAC) = 1.0f;
    }
}
