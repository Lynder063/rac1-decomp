/* NON_MATCHING func_L18_002F3108 -- src/overlays/l18_veldin2/vendor_002F2AE0.c
 * Best so far: BYTES 13/352 (96.3% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Loop over the entries of a table record (count at +0x26, array at +0x28, 32-byte entries): subtracts a referen
 *   Best p5.c (13 bytes differ, same bytes for p6/p7 wordings): only the saved-register pair swapped: retail i->$s
 *   Would need a way to change the allocation priority of the loop counter against the hoisted table base.
 */
extern void func_001F9BF0(void *dst, void *a, void *b);
extern void func_001F9EC0(void *, void *, void *);
extern float func_001F9B88(float);
extern unsigned char D_L18_001C6780[];
extern char *D_L18_001C6480[];
extern char *D_L18_0016016C MACRO_ADDR;

/* clear the weights of entries in a table that are close to a reference */
void func_L18_002F3108(int off, int idx) {
    int i = 0;
    float v[4];
    if (*(short *)(D_L18_001C6480[D_L18_001C6780[off]] + 0x26) > 0) {
        do {
            func_001F9BF0(v, *(char **)(D_L18_001C6480[D_L18_001C6780[off]] + 0x28) + i * 32, D_L18_0016016C + idx * 128 + 0x30);
            func_001F9EC0(v, v, D_L18_0016016C + idx * 128 + 0x40);
            if (func_001F9B88(v[0]) < 1.0f && func_001F9B88(v[1]) < 1.0f) {
                *(int *)(*(char **)(D_L18_001C6480[D_L18_001C6780[off]] + 0x28) + i * 32 + 0xC) = 0;
                *(float *)(*(char **)(D_L18_001C6480[D_L18_001C6780[off]] + 0x28) + i * 32 + 0x14) = 1.0f;
            }
            i++;
        } while (i < *(short *)(D_L18_001C6480[D_L18_001C6780[off]] + 0x26));
    }
}
