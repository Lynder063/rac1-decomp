/* NON_MATCHING func_L07_00314730 -- src/overlays/l07_umbris/vendor_00313D28.c
 * Best so far: BYTES 28/208 (86.5% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
/* Collects the ids stored in the object at +0x170..+0x184 into out[], skipping -1, and returns how
 * many it found. The three bits of the byte at +0x19C switch off the last three slots
 * (+0x17C, +0x180, +0x184). */
void *func_L07_00314730(void *unused, void *obj, void *outp) {
    char *s = obj;
    int *out = outp;
    int n = 0;
    int v;
    int w;
    w = *(int *)(s + 0x170);
    if (w != -1) {
        *(out + n) = w;
        n++;
    }
    v = *(int *)(s + 0x174);
    if (v != -1) {
        *(out + n) = v;
        n++;
    }
    v = *(int *)(s + 0x178);
    if (v != -1) {
        *(out + n) = v;
        n++;
    }
    if (((s[0x19C] ^ 1) & 1) != 0) {
        v = *(int *)(s + 0x17C);
        if (v != -1) {
            *(out + n) = v;
            n++;
        }
    }
    if ((s[0x19C] & 2) == 0) {
        v = *(int *)(s + 0x180);
        if (v != -1) {
            *(out + n) = v;
            n++;
        }
    }
    if ((s[0x19C] & 4) == 0) {
        v = *(int *)(s + 0x184);
        if (v != -1) {
            *(out + n) = v;
            n++;
        }
    }
    return (void *)n;
}
