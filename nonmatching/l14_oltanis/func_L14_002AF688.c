/* NON_MATCHING func_L14_002AF688 -- src/overlays/l14_oltanis/vendor_002ACCC0.c
 * Best so far: BYTES 3/656 (99.5% of the bytes match), checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L14_002AF688 (656 B) - staged c3 at 3 B
 *   Logic complete. Left: the segment-length store address in the first two loops and the third:
 *   retail `addu $s0, $s1(p), $s0(i*16)`, ours `addu $s0, $s0, $s1`. Same wall as func_L13_0030D028.
 *   Tried: i*16 + (char *)p, Seg struct / Path struct (SIZE), &p[i*4], p[i*4+7], (float *)p + i*4,
 *   index-first (i*16 + 0x1C), offset variable o (fixes the order but swaps s0/s1 and the dest; 48 B).
 */
extern int *D_L14_001B0F30[];
extern float func_001F9D10(void *, void *);
extern int func_L00_0025E860_2AF688(void *, void *, void *, void *, int, float) __asm__("func_L00_0025E860");

/* Measures the segments of the moby's three paths, sums two of them and places it on the first two. */
void func_L14_002AF688(char *m) {
    char *d = *(char **)(m + 0x78);
    int *p;
    int i;
    float len;
    p = D_L14_001B0F30[*(int *)(d + 0x78)];
    *(int *)(d + 0x16C) = 0;
    for (i = 0; i < p[0]; i++) {
        len = func_001F9D10((char *)p + (i * 16 + 0x10), (char *)p + (((i + 1) % p[0]) * 16 + 0x10));
        *(float *)((char *)p + i * 16 + 0x1C) = len;
        if (i != p[0] - 1) {
            *(float *)(d + 0x16C) += len;
        }
    }
    p = D_L14_001B0F30[*(int *)(d + 0x74)];
    *(int *)(d + 0x190) = 0;
    for (i = 0; i < p[0]; i++) {
        len = func_001F9D10((char *)p + (i * 16 + 0x10), (char *)p + (((i + 1) % p[0]) * 16 + 0x10));
        *(float *)((char *)p + i * 16 + 0x1C) = len;
        if (i != p[0] - 1) {
            *(float *)(d + 0x190) += len;
        }
    }
    p = D_L14_001B0F30[*(int *)(d + 0x204)];
    for (i = 0; i < p[0]; i++) {
        *(float *)((char *)p + i * 16 + 0x1C) = func_001F9D10((char *)p + (i * 16 + 0x10), (char *)p + (((i + 1) % p[0]) * 16 + 0x10));
    }
    if (*(float *)(d + 0x210) != 0.0f) {
        int *q = D_L14_001B0F30[*(int *)(d + 0x78)];
        *(int *)(d + 0x84) = 0;
        *(float *)(d + 0x1CC) = 0.0f;
        func_L00_0025E860_2AF688(q, m + 0x10, d + 0x84, d + 0x1CC, *(short *)(d + 0x8A), *(float *)(d + 0x210) * *(float *)(d + 0x16C));
        *(float *)(d + 0x8C) = 0.0f;
        *(int *)(d + 0x80) = 0;
        func_L00_0025E860_2AF688(q, m + 0x10, d + 0x80, d + 0x8C, *(short *)(d + 0x8A), *(float *)(d + 0x210) * *(float *)(d + 0x190));
    } else {
        *(int *)(d + 0x80) = 0;
        *(int *)(d + 0x84) = 0;
        *(float *)(d + 0x8C) = 0.0f;
        *(float *)(d + 0x1CC) = 0.0f;
    }
}
