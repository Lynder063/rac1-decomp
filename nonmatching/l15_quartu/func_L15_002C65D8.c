/* NON_MATCHING func_L15_002C65D8 -- src/overlays/l15_quartu/vendor_0029C1D0.c
 * Best so far: SIZE ours 880 / retail 888, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Copies a2 (0x50 bytes) into a stack buffer, scans the moby list for neighbours closer than 10, then steers a1 
 *   Remaining: the final `if (d < 1.0f)` pick is laid out with the copy path first (retail: bc1t to the copy, a1 v
 */
extern float func_001F9D48(void *, void *);
extern void func_001F9BC0_t(void *) __asm__("func_001F9BC0");
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_L00_001FF860(float, float);
extern char *D_L15_00160064 MACRO_ADDR;

/* Steers a moby away from its neighbours on the list: scans the list, backs off when one is close. */
void func_L15_002C65D8(char *moby, char *a1, char *a2) {
    char L[0x50];
    char o[0x10];
    char *p;
    float *v;
    float f20;
    float f21;
    float d;
    float d2;
    float t;
    int flag;

    char *src = a2;
    char *dst = L;
    char *end = a2 + 0x40;
    do {
        qcopy(dst, src);
        qcopy(dst + 0x10, src + 0x10);
        src += 0x20;
        dst += 0x20;
    } while (src != end);
    qcopy(dst, src);
    flag = 1;
    f20 = func_001F9D48(moby + 0x10, L);
    func_001F9BC0_t(a1);
    f21 = 0.0f;
    p = D_L15_00160064;
    while (p != 0) {
        if (p != moby && *(short *)(p + 0xA6) == *(short *)(moby + 0xA6) && (unsigned char)p[0x20] != 1 &&
            (unsigned char)p[0x20] != 0x40) {
            d = func_001F9D48(p + 0x10, moby + 0x10);
            if (d < 10.0f) {
                func_001F9BF0(o, moby + 0x10, p + 0x10);
                f21 = f21 + 6.0f;
                func_001F9C30(o, o, 6.0f);
                func_001F9BD8(a1, a1, o);
            }
            d2 = func_001F9D48(p + 0x10, L);
            if (d2 < f20) {
                flag = 0;
            }
        }
        p = *(char **)(p + 0x28);
    }
    if (flag != 0) {
        func_001F9BF0(o, moby + 0x10, L);
        if (f20 < 9.5f) {
            t = 10.0f;
        } else if (10.5f < f20) {
            t = -10.0f;
        } else {
            t = 0.0f;
        }
        f21 = f21 + 10.0f;
        func_L00_001FF4B0(o, o, t * 10.0f);
        func_001F9BD8(a1, a1, o);
        func_001F9C30(a1, a1, 1.0f / f21);
        func_001F9BD8(a1, a1, moby + 0x10);
    } else {
        func_001F9BF0(o, moby + 0x10, L);
        if (f20 < 14.5f) {
            t = 15.0f;
        } else if (15.5f < f20) {
            t = -15.0f;
        } else {
            t = 0.0f;
        }
        f21 = f21 + 10.0f;
        func_L00_001FF4B0(o, o, t * 10.0f);
        func_001F9BD8(a1, a1, o);
        func_001F9C30(a1, a1, 1.0f / f21);
        func_001F9BD8(a1, a1, moby + 0x10);
    }
    v = (float *)a1;
    if (func_001F9D48(moby + 0x10, a1) < 1.0f) {
        qcopy(a1, moby + 0x10);
        v = (float *)L;
    }
    func_L00_001FF860(v[0] - *(float *)(moby + 0x10), v[1] - *(float *)(moby + 0x14));
}
