/* NON_MATCHING func_L08_002D6C58 -- src/overlays/l08_batalia/vendor_002B9438.c
 * Best so far: SIZE ours 956 / retail 952, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Best candidate p5.c (944 of 952 bytes; p4 is the same with dd kept as a local). Function: jitters a 16-byte ve
 *   Left: register ties. count and i come out $23/$22 (retail $22/$21); the five float constants are permuted (ret
 *   hq13 s01 (2 runs, p8-p9): best.c's jitter constants were -0.1f/0.1f; retail's are 0xBD4CCCCD and 0x3D4CCCCD, i
 */
extern void func_L00_00250800(void *, int, void *);
extern void func_0020DAF8(char *, int, char *);
extern float func_00214158(void);
extern float func_002140F8(float, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern char *func_00219780(void *, void *, void *, int, int, int, int, int, int);
extern float D_0015EE6C_d __asm__("D_0015EE6C") MACRO_ADDR;
extern short D_L08_0016196C;
extern short D_L08_00161978;
extern short D_L08_00161970;
extern short D_L08_0016197C;
extern short D_L08_0016198C;
extern short D_L08_00161988;
extern short D_L08_00161980;
extern short D_L08_00161984;
extern short D_L08_00161964;
extern short D_L08_00161968;

// Jitters the moby's vector, then spawns the effect groups for each of the count steps.
void func_L08_002D6C58(char *moby, int a1, int count) {
    char *d = *(char **)(moby + 0x78);
    char t10[32];
    float t30[8];
    float t50[4];
    float t60[4];
    float t70[4];
    float t80[4];
    float v90[4];
    char *vp;
    int i;
    int x1, x2, x3;
    float kneg, kpos;
    float s, t, r, r2, r3, r4, r5, r6, c1, c2, c3, k;

    func_L00_00250800(moby, a1, t50);
    func_0020DAF8(moby, a1, t10);
    vp = (char *)v90;
    kneg = -0.05f;
    kpos = 0.05f;
    for (i = 0; i < count; i++) {
        s = func_00214158();
        qcopy(vp, t50);
        v90[0] += func_002140F8(kneg, kpos);
        v90[1] += func_002140F8(kneg, kpos);
        v90[2] += func_002140F8(kneg, kpos);
        qcopy(t60, d + 0x40);
        qcopy(t70, d + 0x40);
        if (count / 3 < i) {
            float g = *(float *)&D_L08_0016196C;
            r = func_002140F8(g, g * 1.2f);
            func_L00_001FF4B0(t80, t30, r * D_0015EE6C_d);
            func_001F9BD8(t60, t60, t80);
            func_001F9C30(t70, t70, 0.5f);
            t = func_001F9F90(s);
            r2 = func_002140F8(0.0f, *(float *)&D_L08_00161978);
            t70[0] = t70[0] + t * (r2 * D_0015EE6C_d);
            t = func_001F9FA8(s);
            k = *(float *)&D_L08_00161978;
        } else {
            r = func_002140F8(0.0f, *(float *)&D_L08_0016196C);
            func_L00_001FF4B0(t80, t30, r * D_0015EE6C_d);
            func_001F9BD8(t60, t60, t80);
            func_001F9C30(t70, t70, 0.5f);
            t = func_001F9F90(s);
            r2 = func_002140F8(0.0f, *(float *)&D_L08_00161978 * 0.25f);
            t70[0] = t70[0] + t * (r2 * D_0015EE6C_d);
            t = func_001F9FA8(s);
            k = *(float *)&D_L08_00161978 * 0.25f;
        }
        r3 = func_002140F8(0.0f, k);
        t70[2] = *(float *)&D_L08_00161970 * D_0015EE6C_d;
        t70[1] = t70[1] + t * (r3 * D_0015EE6C_d);
        t70[3] = *(float *)&D_L08_0016198C;
        t60[3] = *(float *)&D_L08_00161988;
        c1 = (float)*(int *)&D_L08_0016197C;
        r4 = func_002140F8(c1, c1 * 1.2f);
        x1 = func_001FA898_r(func_001F9878(r4));
        c2 = (float)*(int *)&D_L08_00161980;
        r5 = func_002140F8(c2, c2 * 1.2f);
        x2 = func_001FA898_r(func_001F9878(r5));
        c3 = (float)*(int *)&D_L08_00161984;
        r6 = func_002140F8(c3, c3 * 1.5f);
        x3 = func_001FA898_r(func_001F9878(r6));
        func_00219780(t50, t60, t70, *(int *)&D_L08_00161964, *(int *)&D_L08_00161968, x1, x2, x3, -1);
    }
}
