/* NON_MATCHING func_L05_00304F60 -- src/overlays/l05_rilgar/vendor_002D28D0.c
 * Best so far: SIZE ours 844 / retail 840, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Steers a moby toward its goal (path point test, aim, timer set at data+0x2D4). p4.c is the closest: all of the
 *   The one remaining difference is the g < pi/2 branch: retail puts the load of D_L05_0015EE70 (-0x7E90($gp)) in 
 */
extern int func_L01_00277FD8(int *, int, int, void *, void *, void *, float);
extern float func_001F9D48(void *, void *);
extern int func_L05_003052A8(char *, float *, float);
extern float func_L00_001FF860(float, float);
extern float func_001FA748(float, float);
extern float func_L00_0025CE58(float *, float *, float, float, float, float);
extern float func_001FA850(float, float);
extern float func_00214D28(float *, float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern int func_L00_00259B88(void *, void *, void *, void *, float);
extern float func_L05_003054B0(int, void *, void *, float);
extern int func_001F9850(int);
extern short D_L05_00161B58;
extern int D_L05_0015F6B0 MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;

/* Steers a moby toward its goal: checks the path point, aims, and sets a timer. */
void func_L05_00304F60(char *moby, void *p2, float s) {
    char *data;
    float v[4];
    float w[4];
    float tmp[4];
    float rr;
    float d;
    float g;
    float h;
    float h2;
    char *q;
    int r;

    data = *(char **)(moby + 0x78);
    if ((((int)moby >> 8) & 3) == (D_L05_0015F6B0 & 3)) {
        r = func_L01_00277FD8((int *)(data + 0x2C0), 1, *(int *)(data + 0x2C4), moby + 0x10, p2, data + 0x280,
                              *(float *)&D_L05_00161B58 * 0.4f);
        if (r == 0) {
            *(int *)(data + 0x164) = 2;
        }
    }
    q = (char *)tmp;
    qcopy(tmp, data + 0x280);
    rr = func_001F9D48(moby + 0x10, tmp);
    if (5.0f < rr && s != 0.0f && func_L05_003052A8(moby, (float *)q, *(float *)&D_L05_00161B58 * 0.4f)) {
        d = func_001FA748(func_L00_001FF860(tmp[0] - *(float *)(moby + 0x10), tmp[1] - *(float *)(moby + 0x14)), s);
        func_L00_0025CE58((float *)(moby + 0x48), (float *)(data + 0x290), d, D_0015EE70 * 12.566371f,
                          D_0015EE70 * 12.566371f, D_0015EE6C * 25.132742f);
    } else {
        q = moby + 0x48;
        d = func_L00_001FF860(tmp[0] - *(float *)(moby + 0x10), tmp[1] - *(float *)(moby + 0x14));
        func_L00_0025CE58((float *)q, (float *)(data + 0x290), d, D_0015EE70 * 12.566371f,
                          D_0015EE70 * 12.566371f, D_0015EE6C * 25.132742f);
    }
    g = func_001FA850(*(float *)(moby + 0x48),
                      func_L00_001FF860(tmp[0] - *(float *)(moby + 0x10), tmp[1] - *(float *)(moby + 0x14)));
    if (g < 1.5707964f && 3.0f < rr) {
        func_00214D28((float *)(data + 0xF4), D_0015EE6C * 6.0f, D_0015EE70 * 6.0f);
    } else {
        func_00214D28((float *)(data + 0xF4), D_0015EE6C * 6.0f, D_0015EE70 * 6.0f);
    }
    h = func_001F9F90(*(float *)(moby + 0x48));
    v[0] = h + h;
    h = func_001F9FA8(*(float *)(moby + 0x48));
    v[1] = h + h;
    *(int *)&v[2] = 0;
    func_L00_00259B88(moby, data + 0xD0, v, w, 1.0f);
    if (*(int *)(data + 0x2D4) == 0) {
        h2 = func_L05_003054B0(*(int *)(data + 0x2C0), moby + 0x10, moby + 0x10, *(float *)&D_L05_00161B58 * 0.4f);
        if (2.0f < h2) {
            *(int *)(data + 0x2D4) = func_001F9850(5);
        }
    }
}
