/* NON_MATCHING func_L16_002E7890 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: BYTES 8/420 (98.1% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Steers and moves a moby toward a target point, then returns the distance.
 *   Best p6.c is 8/420 bytes off: `addiu $a1,$s2,0x204` and `mov.s $f12,$f23` are swapped around the `func_00214D8
 *   Three equivalent source forms kept the same scheduling. A compiler scheduling insight is needed to move this t
 */
extern float func_L00_001FF860(float, float);
extern float func_001FA748(float, float);
extern float func_001F9D10(void *, void *);
extern float func_L00_0025CE58(float *, float *, float, float, float, float);
extern float func_00214D88_7890(float *, float *, float, float, float, float) __asm__("func_00214D88");
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_L00_00259868(void *, void *, float, float, float, int);
extern void func_L00_00262DF0(float, void *, void *, void *);
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;

/* Steers and moves a moby toward a target point, returning the distance. */
float func_L16_002E7890(void *m_v, void *t_v) {
    char *m = m_v;
    float *t = t_v;
    char *d = *(char **)(m + 0x78);
    float vel;
    float vec[4];
    float dist;
    float oldz;
    float a = func_L00_001FF860(t[0] - *(float *)(m + 0x10), t[1] - *(float *)(m + 0x14));
    a = func_001FA748(a, *(float *)(d + 0x1F8));
    oldz = *(float *)(m + 0x18);
    vel = 0.0f;
    dist = func_001F9D10(m + 0x10, t);
    func_L00_0025CE58((float *)(m + 0x48), (float *)(d + 0x1F4), a,
                         D_0015EE70 * 12.566371f, D_0015EE70 * 12.566371f,
                         D_0015EE6C * 12.566371f);
    func_00214D88_7890(&vel, (float *)(d + 0x204), dist,
                   D_0015EE70 * 8.0f, D_0015EE70 * 12.0f,
                   D_0015EE6C * 4.0f);
    func_L00_001FF4B0(vec, m + 0xC0, *(float *)(d + 0x204));
    vec[2] = *(float *)(d + 0x208) - D_0015EE70 * 10.0f;
    func_L00_00259868(m, vec, 0.5f, 0.5f, 0.0f, 0x10);
    func_L00_00262DF0(0.333f, *(void **)(d + 0x1F0), m + 0x10, m + 0x10);
    *(float *)(d + 0x208) = oldz - *(float *)(m + 0x18);
    return dist;
}
