/* NON_MATCHING func_L12_0027CA68 -- src/overlays/l12_hoven/mobyutil_00272D90.c
 * Best so far: BYTES 1/172 (99.4% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
extern char *D_L12_001B0C30[];
extern float func_001F9D10(void *, void *);
typedef struct { float x, y, z, distance; } Entry;

void func_L12_0027CA68(int group) {
    int i;
    char *entries;
    int count;
    if (group == -1) return;
    entries = D_L12_001B0C30[group];
    count = *(int *)entries;
    for (i = 0; i < count - 1; i++) {
        int next = (i + 1) % count;
        ((Entry *)(entries + 0x10))[i].distance =
            func_001F9D10(&((Entry *)(entries + 0x10))[i],
                             &((Entry *)(entries + 0x10))[next]);
        count = *(int *)entries;
    }
}
