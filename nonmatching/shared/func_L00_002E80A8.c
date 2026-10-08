/* NON_MATCHING func_L00_002E80A8 -- src/overlays/shared/vendor_002E1660.c
 * Best so far: SIZE ours 356 / retail 360, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L00_002E80A8: resets the state block (moby->0x70 data) of a moby from the game vector at D_0013E633+0xE9D
 *   Best candidate p1.c: 356 vs 360 bytes, everything the same except retail has one extra `daddu $18,$17,$0` -- r
 *   Tried: r as a local, p = data copy, reload of +0x70, float* r. A source form that makes gcc keep a copy of the
 *   q28/t09: p6.c (r as char*: `r = lw 0x70(moby); data = r; q = r + 0x130; r += 0x40;`, vector type renamed QV16 
 *   hq3 s10 (6 runs, p10-p15): best.c did not compile here (its VQ typedef clashes with the file's; p11 renames it
 */
typedef float VQ_E80A8[4] __attribute__((aligned(16)));
extern char D_0013E633[];
extern void func_001F9C30(void *, void *, float);
extern float func_001F9C78(void *, void *);
extern void func_001F9BC0(void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(float *, float *, float *);

/* reset the camera-like state block of a moby from the game vector */
void func_L00_002E80A8(char *moby) {
    VQ_E80A8 v, w;
    char *data;
    char *q;
    float *r;
    char *s;
    char *t;

    if (*(short *)(moby + 0x86) == 0) {
        data = *(char **)(moby + 0x70);
        q = data + 0x130;
        func_001F9C30(v, D_0013E633 + 0x10AD, -1.0f);
        r = (float *)(data + 0x40);
        qcopy(r, D_0013E633 + 0xE9D);
        qcopy(data + 0xA0, r);
        s = data + 0x90;
        func_001F9C30(data + 0x50, v, func_001F9C78(r, v));
        t = data + 0xD0;
        func_001F9BC0(data + 0xB0);
        func_001F9BC0(data + 0xC0);
        func_001F9BC0(data + 0xE0);
        func_001F9C30(w, v, *(float *)(q + 0x30));
        func_001F9BD8(s, w, r);
        func_001F9C30(w, v, r[44]);
        func_001F9BD8(t, w, r);
        qcopy(data + 0x80, t);
        func_001F9BF0((float *)q, (float *)(moby + 0x30), (float *)s);
        qcopy(data + 0x140, q);
        qcopy(data, moby + 0x30);
        func_001F9BD8(data + 0x1F0, s, q);
        *(int *)(data + 0x220) = 0;
    }
}
