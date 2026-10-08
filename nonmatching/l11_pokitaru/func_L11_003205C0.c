/* NON_MATCHING func_L11_003205C0 -- src/overlays/l11_pokitaru/vendor_0031EFC0.c
 * Best so far: SIZE ours 952 / retail 960, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 11 moby update (class 1919, 960 bytes). State 0: seeds three tables with func_L08_002F2428, zeroes the 3
 *   Closest by size is p2.c (948 bytes, retail 960); p4.c and p5.c are 940 with the second store in $gp form. Rema
 *   Unblock: a way to keep the store order C0, C4 before the loop's pointer step without the delay-slot store beco
 */
extern int func_L00_00200290(void *, float);
extern void func_L08_002F2428(void *, int, void *, int, float, float, float, float);
extern void func_001F9BF0(void *dst, void *a, void *b);
extern float func_001F9CB8(void *a);
extern void func_L08_002F2760(int);
extern void func_L08_002F2618(float *, float *, float, float, float);
extern s32 func_001FA898(f32);
extern void func_L08_002F2838(int);
extern void func_001F49B0(void (*)(void), void *);
extern void func_L11_0031FDA0(char *m);

extern int D_L11_002154E0[];
extern int D_L11_00207BC0[];
extern int D_L11_00217A00[];
extern int D_L11_00215528[];
extern int D_L11_00207B98[];
extern int D_L11_002009E8[];
extern char D_L11_00217A18[];
extern Pair8 D_L11_001626B8[] MACRO_ADDR;
extern char D_L11_00167700[];
extern int D_L11_001626A0_w __asm__("D_L11_001626A0") MACRO_ADDR;
extern short D_L11_0016268C;
extern short D_L11_00162648;
extern float D_L11_0016264C;
extern float D_L11_00162650;
extern float D_L11_00162654;
extern float D_L11_00217A20[];
extern int D_L11_001626C0[];
extern int D_L11_001626C4;
extern float D_L11_001626AC[];
extern float D_L11_001626BC[];

/* Level 11 moby update: seeds its tables on first use, then steers and shades it. */
void func_L11_003205C0(char *moby) {
    float a[4];
    float w[4];
    float len;
    int n;
    int *p;
    Pair8 *pa;
    Pair8 *pb;
    float *pf;
    float *pf2;
    int st;

    st = *(unsigned char *)(moby + 0x20);
    if (st == 0) {
        if (*(int *)&D_L11_0016268C == 0) {
            func_L08_002F2428(D_L11_002154E0, 17, D_L11_00207BC0, 1, 0.7f, 1.0f, 0.9f, 0.5f);
            func_L08_002F2428(D_L11_00217A00, 5, D_L11_00215528, 1, 0.5f, 0.5f, 0.5f, 1.0f);
            func_L08_002F2428(D_L11_00207B98, 9, D_L11_002009E8, 1, 0.25f, 0.25f, 0.25f, 0.7f);
            *(int *)&D_L11_0016268C = 1;
        }
        *(unsigned char *)(moby + 0x20) = 1;

        p = (int *)D_L11_00217A18;
        n = 2;
        do {
            p[0] = 0;
            n--;
            p[1] = 0;
            D_L11_001626C0[0] = 0;
            D_L11_001626C4 = 0;
            p += 2;
        } while (n >= 0);

        pa = D_L11_001626A8;
        pf = D_L11_001626AC;
        for (n = 0; n < 2; n++) {
            pa->a = 0;
            pa++;
            *pf = (float)n * 0.4f;
            pf += 2;
        }

        pb = D_L11_001626B8;
        pf2 = D_L11_001626BC;
        n = 0;
        do {
            pb->a = 0;
            pb++;
            *pf2 = (float)n * 0.4f;
            n++;
            pf2 += 2;
        } while (n <= 0);
        return;
    }
    if (st != 1) {
        return;
    }

    if (*(float *)(D_L11_00167700 + 0x148) < 170.0f) {
        return;
    }
    a[0] = *(float *)&D_L11_00162648;
    a[1] = D_L11_0016264C;
    a[2] = D_L11_00162650;
    a[3] = D_L11_00162654;
    if (func_L00_00200290(a, 1000.0f) < 0) {
        return;
    }
    if (!(180.0f < *(float *)(D_L11_00167700 + 0x148))) {
        return;
    }
    w[0] = *(float *)&D_L11_00162648;
    w[1] = D_L11_0016264C;
    w[2] = D_L11_00162650;
    w[3] = 1.0f;
    func_001F9BF0(w, D_L11_00167700 + 0x140, w);
    len = func_001F9CB8(w);
    if (len <= 100.0f) {
        func_L08_002F2760(0);
        func_L08_002F2618(D_L11_00217A20, (float *)D_L11_001626C0, 0.52f, 0.62f, 0.06f);
        func_L08_002F2760(2);
        if (len < 80.0f) {
            *(unsigned char *)&D_L11_001626A0_w = 0xFF;
        } else if (len < 100.0f) {
            *(unsigned char *)&D_L11_001626A0_w =
                func_001FA898((1.0f - (len - 80.0f) / 20.0f) * 255.0f);
        } else {
            *(unsigned char *)&D_L11_001626A0_w = 0;
        }
    }
    func_L08_002F2838(0);
    func_L08_002F2838(0);
    func_L08_002F2838(1);
    func_001F49B0(func_L11_0031FDA0, moby);
}
