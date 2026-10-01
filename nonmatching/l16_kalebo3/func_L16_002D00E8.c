/* NON_MATCHING func_L16_002D00E8 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: SIZE ours 332 / retail 336, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
extern float D_0015EE70 MACRO_ADDR;
extern float func_L00_0025CE58(float *, float *, float, float, float, float);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CB8(void *);
extern float func_00214D88(float, float, float, float, float *, float *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
int func_L16_002D00E8(char *moby, void *vec, float angle) {
    float a[4] __attribute__((aligned(16)));
    float b[4] __attribute__((aligned(16)));
    float speed;
    float dist;
    char *data = *(char **)(moby + 0x78);
    qcopy(a, vec);
    func_L00_0025CE58((float *)(moby + 0x48), (float *)(data + 0x100), angle, D_0015EE70 * 12.566371f, D_0015EE70 * 12.566371f, D_0015EE6C * 25.132742f);
    func_001F9BF0(b, a, moby + 0x10);
    dist = func_001F9CB8(b);
    speed = 0.0f;
    func_00214D88(dist, D_0015EE70 * 12.0f, D_0015EE70 * 12.0f, D_0015EE6C * 6.0f, &speed, (float *)(data + 0xFC));
    func_L00_001FF4B0(b, b, *(float *)(data + 0xFC));
    func_001F9BD8(moby + 0x10, moby + 0x10, b);
    return dist < 0.05f && *(float *)(data + 0xFC) < 0.005f;
}
