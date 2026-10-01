/* NON_MATCHING func_L06_002F68D0 -- src/overlays/l06_blarg/vendor_002B5990.c
 * Best so far: BYTES 5/252 (98.0% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Puts a state-6 moby into state 2 and its seven linked mobys (array at data+0x24) into state 3, resetting headi
 *   Best p5.c: BYTES 5/252. Only difference is v0/v1 swapped in the first block (lhu flags goes to $v1 and the con
 *   Three wordings (store order, flags local, a[0x20]=2 earlier) compile to the same bytes: allocator tie. Key fin
 */
extern float func_001FA790(float, float);
extern void func_L00_00251E30(void *);

/* Puts a moby in state 2 and its seven linked mobys in state 3, resetting each one's heading. */
void func_L06_002F68D0(char *a) {
    char *data = *(char **)(a + 0x78);
    char **p;
    int i;
    a[0xBC] = 1;
    if (*(unsigned char *)(a + 0x20) == 6) {
        a[0x31] = 1;
        a[0x20] = 2;
        *(unsigned short *)(a + 0x34) &= 0xFFFE;
        *(int *)(data + 0x14) = 0;
        *(float *)(a + 0x40) = func_001FA790(*(float *)(data + 0x10), *(float *)(data + 0x14));
        func_L00_00251E30(a);
        p = (char **)(data + 0x24);
        for (i = 0; i < 7; i++) {
            char *c = p[i];
            char *d;
            c[0x20] = 3;
            d = *(char **)(c + 0x78);
            *(unsigned short *)(p[i] + 0x34) &= 0xFFFE;
            p[i][0x31] = 1;
            *(int *)(d + 0x14) = 0;
            *(float *)(p[i] + 0x40) = func_001FA790(*(float *)(d + 0x10), *(float *)(d + 0x14));
            func_L00_00251E30(p[i]);
        }
    }
}
