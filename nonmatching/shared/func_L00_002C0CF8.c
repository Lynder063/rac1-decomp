/* NON_MATCHING func_L00_002C0CF8 -- src/overlays/shared/vendor_002BA7C8.c
 * Best so far: SIZE ours 1040 / retail 1044, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Steps a moby's motion state from its two neighbour blocks (vector sums, a 40000.0f clamp via func_L00_002C0B18
 *   Best candidate p5.c: 1024 bytes vs 1044. Differences: `ok` lives in $s7 where retail has $s4 (and the bv point
 *   Unblock: the allocator tie between `ok` and the bv/V50 pointers. A source shape that makes the V50/V20 pointer
 */
extern void func_001F9BF0(void *, void *, void *);
extern int func_L00_001FF5B0(float, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern float func_001F9CE8(void *);
extern f32 func_L00_002BFF88_C0358(void *, void *) __asm__("func_L00_002BFF88");
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_001F9B88(float);
extern void func_L00_002BFF08(char *a);
extern void func_L00_002BFF50(char *a);
extern void func_L00_002C0BB8(unsigned char *m, unsigned char *o, void *src);
extern float func_L00_0025A4A0(float *a, float *b, int *out, float f);
extern void func_L00_002C0B18_C0358(char *a, char *b, int n, int c, int d, int e, float g, int f) __asm__("func_L00_002C0B18");
extern s32 func_L00_001EFFF0_C0358(void *, void *, s32, void *, s32) __asm__("func_L00_001EFFF0");
extern char D_L00_00173F80_20b5b8[] __asm__("D_L00_00173F80");
extern Hit * D_L00_00173F58_C0358 __asm__("D_L00_00173F58");
extern char D_0013E633[];

/* Steps the moby's motion state m from its two neighbour blocks, recursing while the state holds. */
int func_L00_002C0CF8(char *m, char *p, void *q, int flag) {
    float a0[4], bv[4], cv[4], v20[4], v30[4], v50[4], v60[4];
    char *mo = m + 0x10;
    int ok = 1;
    float f21 = 0.5f;
    float f20;

    func_001F9BF0(a0, q, mo);
    func_L00_001FF5B0(*(float *)(m + 0x2C) * 5.2f / *(float *)(*(char **)(m + 0x24) + 0x24), a0, a0);
    func_001F9BD8(bv, mo, a0);
    func_001F9C30(cv, a0, f21);
    f20 = func_001F9CE8(cv);
    func_001F9BD8(cv, mo, cv);
    if (!(f21 < f20)) ok = 0;
    bv[2] = func_L00_002BFF88_C0358(bv, m);
    a0[2] = bv[2] - *(float *)(m + 0x18);
    if (bv[2] == 0.0f) goto e08;
    if (*(float *)(m + 0x2C) * 3.0f / *(float *)(*(char **)(m + 0x24) + 0x24) < a0[2]) goto e08;
    qcopy(v50, D_L00_00173F80_20b5b8);
    func_L00_001FF4B0(v50, v50, 1.0f);
    f20 = func_001F9B88(v50[0]);
    f20 = f20 + func_001F9B88(v50[1]);
    if (func_001F9B88(v50[2]) < f20) goto e08;
    f20 = 0.1f;
    bv[2] = bv[2] + *(float *)(m + 0x2C) * f20 / *(float *)(*(char **)(m + 0x24) + 0x24);
    if (func_L00_002BFDB8(m, 6, bv)) goto e08;
    bv[2] = bv[2] - *(float *)(m + 0x2C) * f20 / *(float *)(*(char **)(m + 0x24) + 0x24);
    qcopy(v20, mo);
    v20[2] = v20[2] + *(float *)(m + 0x2C) * 0.2f / *(float *)(*(char **)(m + 0x24) + 0x24);
    qcopy(v30, bv);
    v30[2] = v30[2] + *(float *)(m + 0x2C) * 0.2f / *(float *)(*(char **)(m + 0x24) + 0x24);
    if (flag) {
        if (func_L00_001EFFF0_C0358(v20, v30, 6, m, 0) == 0) goto e08;
    }
    func_L00_002BFF08(p);
    func_L00_002C0BB8((unsigned char *)m, (unsigned char *)D_0013E633 + 0x2D2D, bv);
    func_L00_002BFF50(p);
    func_001F9C30(v50, a0, 0.5f);
    func_001F9BD8(v50, v50, m + 0x10);
    qzero(v60);
    v60[2] = *(float *)(p + 0x50);
    f20 = 40000.0f;
    v50[2] = func_L00_0025A4A0((float *)(m + 0x10), v60, 0, *(float *)(D_0013E633 + 0x2D49));
    func_L00_002C0B18_C0358((char *)v20, (char *)v50, 10, 0, 32, 32, f20, 60);
    func_L00_002C0B18_C0358((char *)v30, (char *)v50, 10, 0, 32, 32, f20, 60);
    if (func_L00_001EFFF0_C0358(v20, v50, 6, m, 0) == 0) goto l1070;
    if ((int)D_L00_00173F58_C0358 != *(int *)(p + 0x38)) goto e08;
l1070:
    if (func_L00_001EFFF0_C0358(v50, v30, 6, m, 0) == 0) goto l10c8;
    if ((int)D_L00_00173F58_C0358 == *(int *)(p + 0x38)) goto l10cc;
    if (!ok) return 0;
    return func_L00_002C0CF8(m, p, cv, 1);
l10c8:
    *(unsigned char *)(m + 0xBC) = 0xD;
    return 1;
l10cc:
    *(unsigned char *)(m + 0xBC) = 0xD;
    return 1;
e08:
    if (ok) return func_L00_002C0CF8(m, p, cv, 1);
    return 0;
}
