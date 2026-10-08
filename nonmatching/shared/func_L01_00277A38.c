/* NON_MATCHING func_L01_00277A38 -- src/overlays/shared/mobyutil_0026E8E0.c
 * Best so far: BYTES 8/500 (98.4% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Returns bitmask of sphere-table entries (D_L01_001B0C30[idx]) that none of n objects touch, optionally testing
 *   p3/p4/p5 match structurally (47 bytes differ): only $s2/$s3 swapped between the object-pointer walker and the 
 *   Declaration order and statement order of op/found did not move it; try making e a block-scoped local in the f!
 *   Round q30/w04: p6 (swept branch first with f != 0.0f, e computed per branch, zv zeroed as a u128, so por/sq an
 *   hq3 s07: indexing the walker as objs[j] instead of *op (p10) takes it to 8 of 500 bytes differing. What is lef
 */
extern void func_001F9BF0(void *dst, void *a, void *b);
extern void func_001F9CA0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_L00_002629E0(int, void *, void *);
extern char *D_L01_001B0C30[];
typedef int u128 __attribute__((mode(TI)));

// Returns a bitmask of the table's spheres that no listed object touches, testing swept offsets.
int func_L01_00277A38(int *objs, int n, int idx, float *pos, float f)
{
    char *t = D_L01_001B0C30[idx];
    int mask = 0;
    int k;
    int j;
    int found;
    float v[4];
    float w1[4];
    float w2[4];
    float zv[4];

    float fz = f;
    for (k = 0; k < *(int *)t; k++) {
        found = 0;
        for (j = 0; j < n; j++) {
            if (fz != 0.0f) {
                char *e = t + (k * 16 + 0x10);
                *(u128 *)zv = 0;
                zv[2] = 1.0f;
                func_001F9BF0(v, pos, e);
                func_001F9CA0(v, v, zv);
                func_L00_001FF4B0(v, v, fz);
                func_001F9BF0(w1, pos, v);
                func_001F9BD8(w2, pos, v);
                if (func_L00_002629E0(objs[j], w1, e) != 0) {
                    found = 1;
                } else if (func_L00_002629E0(objs[j], w2, e) != 0) {
                    found = 1;
                }
            } else {
                if (func_L00_002629E0(objs[j], pos, t + (k * 16 + 0x10)) != 0) found = 1;
            }
            if (found) break;
        }
        if (!found) mask |= 1 << k;
    }
    return mask;
}
