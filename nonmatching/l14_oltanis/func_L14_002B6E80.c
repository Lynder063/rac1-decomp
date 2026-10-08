/* NON_MATCHING func_L14_002B6E80 -- src/overlays/l14_oltanis/vendor_002ACCC0.c
 * Best so far: SIZE ours 104 / retail 100, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Selects a path table entry and initializes the last segment index, float, and state vector.
 *   p5/p6/p7 compile identically at BYTES 15/100: data and entry use swapped a1/a2, early call-argument setup and 
 *   Stopped at three distinct wordings; data/entry allocator choice remains despite branch and table-address forms
 *   e01 resume: Existing p5/p6/p7 satisfy the three-identical-wordings stop (15/100 bytes differ); no rerun warran
 *   Initializes path segment fields; data/entry allocation and argument/address scheduling need a natural source s
 *   hq2 s03: three wordings this round (p8 declaration order, p9 count inlined, p10 int * entry; p8 and p10 with t
 */
extern char *D_L14_001B0F30_a[] __asm__("D_L14_001B0F30") MACRO_ADDR;
extern void func_001F9BC0(void *);

void func_L14_002B6E80(char *moby)
{
    char *data;
    char *entry;
    int index;
    data = *(char **)(moby + 0x78);
    index = (*(int *)(data + 0x10C) == 0) ? *(int *)(data + 0xD0) : *(int *)(data + 0x150);
    entry = D_L14_001B0F30_a[index];
    *(int *)(data + 0xE8) = *(int *)entry - 2;
    *(float *)(data + 0xEC) = *(float *)(entry + (*(int *)entry - 2) * 16 + 0x1C);
    *(int *)(data + 0xE4) = 0;
    func_001F9BC0(data + 0xF0);
}
