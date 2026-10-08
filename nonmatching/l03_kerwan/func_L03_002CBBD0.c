/* NON_MATCHING func_L03_002CBBD0 -- src/overlays/l03_kerwan/vendor_002CB280.c
 * Best so far: SIZE ours 920 / retail 924, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Kerwan moby update: aims at a target (its item's 0x20 pointer, the level's player entry, or the fixed point at
 *   Left: one instruction. Retail reaches the 0xFF store through a delay-slot addiu after the m[0x20]==5 test (a s
 */
extern char D_0013E633[];
extern float D_0015EE70 MACRO_ADDR;
extern short D_L03_0016197C;
extern short D_L03_00161980;
extern short D_L03_00161984;
extern short D_L03_00161978;
extern short D_L03_00161988;
extern short D_L03_0016198C;
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern float func_L00_001FF860(float, float);
extern void func_L03_00251A58(float *, float, float);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern void func_L00_0025D5B0(void *, void *, float, int, int, int);
extern void func_L00_0025E4B0(void *m, short *p);
extern void func_L00_0025E590(void *, void *);

/* Kerwan moby update: aims at its target, steps its timer, and on each timer step switches its state and launches the motion. */
void func_L03_002CBBD0(unsigned char *m) {
    char *d = *(char **)(m + 0x78);
    char *item;
    float v0[4];
    float v14;
    float v18;
    int v10;
    int r;
    float a;
    char *tgt;
    char *X;

    v14 = 0.0f;
    item = func_L00_0025B478(m, 0x330000, 0);
    r = func_L00_0025B4D0(m, item, d + 0x20, 0, &v10, &v14, 0, 4);
    if (v10 != 1 && m[0x20] != 5) {
        X = D_0013E633 + 0xE1D;
        tgt = *(char **)(item + 0x20);
        if (tgt != 0) {
            if (tgt == *(char **)(X + 0x1090)) {
                a = func_L00_001FF860(*(float *)(m + 0x10) - *(float *)(X + 0x80), *(float *)(m + 0x14) - *(float *)(X + 0x84));
            } else {
                a = func_L00_001FF860(*(float *)(m + 0x10) - *(float *)(tgt + 0x10), *(float *)(m + 0x14) - *(float *)(tgt + 0x14));
            }
        } else {
            a = func_L00_001FF860(*(float *)(m + 0x10) - *(float *)(X + 0x80), *(float *)(m + 0x14) - *(float *)(X + 0x84));
        }
        v18 = a;
        *(float *)(d + 0x20) = *(float *)(d + 0x20) - v14;
        if (*(float *)(d + 0x20) <= 0.0f) {
            r = 1;
        }
        switch (r) {
        case 1:
            *(float *)(d + 0x80) = D_0015EE70 * *(float *)&D_L03_00161978;
            func_L03_00251A58((float *)(d + 0x70), *(float *)&D_L03_00161988, *(float *)&D_L03_0016198C);
            d[0xAD] = 0;
            *(int *)(d + 0x94) = 9;
            qcopy(v0, item + 0x10);
            func_L00_0025BBA0(v0, &v18, d + 0x88, d + 0x8C);
            a = func_L00_001FF860(*(float *)(m + 0x10) - *(float *)(X + 0x80), *(float *)(m + 0x14) - *(float *)(X + 0x84));
            func_L00_0025D5B0(m, d + 0x70, a, 5, 1, 0);
            *(float *)(d + 0xC0) = 8.0f;
            *(float *)(d + 0xC4) = 15.0f;
            *(unsigned short *)(m + 0x34) = *(unsigned short *)(m + 0x34) & 0xEFFF;
            d[0x67] = 250;
            m[0x20] = 5;
            break;
        case 3:
        case 6:
            *(float *)(d + 0x80) = D_0015EE70 * *(float *)&D_L03_0016197C;
            func_L03_00251A58((float *)(d + 0x70), *(float *)&D_L03_00161980, *(float *)&D_L03_00161984);
            d[0xAD] = 0;
            *(int *)(d + 0x94) = 9;
            qcopy(v0, item + 0x10);
            func_L00_0025BBA0(v0, &v18, d + 0x88, d + 0x8C);
            a = func_L00_001FF860(*(float *)(m + 0x10) - *(float *)(X + 0x80), *(float *)(m + 0x14) - *(float *)(X + 0x84));
            func_L00_0025D5B0(m, d + 0x70, a, 3, 1, 0);
            *(float *)(d + 0xC0) = 5.0f;
            *(float *)(d + 0xC4) = 10.0f;
            m[0x20] = 4;
            break;
        case 4:
        case 5:
            *(float *)(d + 0x80) = D_0015EE70 * *(float *)&D_L03_0016197C;
            func_L03_00251A58((float *)(d + 0x70), *(float *)&D_L03_00161980, *(float *)&D_L03_00161984);
            d[0xAD] = 0;
            *(int *)(d + 0x94) = 9;
            qcopy(v0, item + 0x10);
            func_L00_0025BBA0(v0, &v18, d + 0x88, d + 0x8C);
            a = func_L00_001FF860(*(float *)(m + 0x10) - *(float *)(X + 0x80), *(float *)(m + 0x14) - *(float *)(X + 0x84));
            func_L00_0025D5B0(m, d + 0x70, a, 4, 1, 0);
            *(float *)(d + 0xC0) = 7.5f;
            *(float *)(d + 0xC4) = 15.0f;
            m[0x20] = 4;
            break;
        default:
            break;
        }
        func_L00_0025E4B0(m, (short *)(d + 0x60));
    }
    m[0xA4] = 0xFF;
    func_L00_0025E590(m, d + 0x60);
}
