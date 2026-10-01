/* NON_MATCHING func_L13_002B5A88 -- src/overlays/l13_gemlik/vendor_002B2020.c
 * Best so far: BYTES 2/124 (98.4% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
extern void func_L00_00260D30(void *, void *, float);

void func_L13_002B5A88(unsigned char *moby) {
    char *data = *(char **)(moby + 0x78);
    float distance;
    if (moby[0x20] == 3) distance = 22.0f;
    else distance = 20.0f;
    func_L00_00260D30(moby, data, distance);
    if (*(volatile int *)(data + 0x40) == 0) {
        *(int *)(data + 0x40) = *(int *)(D_0013E633 + 0x2E9D);
    }
    if (moby[0xBC] >= 4) moby[0x20] = moby[0xBC];
}
