/* NON_MATCHING func_L09_002F0D00 -- src/overlays/l09_gaspar/vendor_002C2B08.c
 * Best so far: SIZE ours 1020 / retail 1016, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 09 moby update (classes 320/321), 1016 bytes: a position range test, then either a 8-pass spark/vector l
 *   Left to fix: the register assignment of pos/w/v (retail $17 is reused for the buffer in the loop), and the lui
 */
extern void func_001F9BD8(void *, void *, void *);
extern float func_001F9D48(void *, void *);
extern float func_001FA748(float, float);
extern int func_001F9908(void *);
extern float func_001F9CB8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern int func_001F9850(int);
extern int func_L00_00258BC8(int, int);
extern char *func_L00_0026EBC0(char *pos, char *vel, int c, int d, float f);
extern void func_0020D678(void *);
extern int func_L00_001EFFF0(void *, void *, int, void *, void *);
extern int func_L00_001F3958(void);
extern void func_001F9C30(void *, void *, float);
extern void func_L00_001FF610(void *, void *, void *);
extern float func_002140F8(float, float);
extern float D_L09_00166FC0[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern char D_L09_00174080[];

// Level 09 moby update (classes 320 and 321): drifts the moby and sprays sparks or sets its velocity.
void func_L09_002F0D00(char *moby) {
    float pc[4];
    float v[4];
    float w[4];
    char *pos;
    char *data;
    char *t;
    float f;
    float lo, hi, half;
    int a, b, c, i;

    pos = moby + 0x10;
    data = *(char **)(moby + 0x78);
    *(xu128 *)pc = *(xu128 *)pos;
    func_001F9BD8(pos, pos, data);
    if (*(float *)(moby + 0x10) < 2.0f || 1021.0f < *(float *)(moby + 0x10) ||
        *(float *)(moby + 0x14) < 2.0f || 1021.0f < *(float *)(moby + 0x14) ||
        *(float *)(moby + 0x18) < 2.0f || 1021.0f < *(float *)(moby + 0x18)) {
        func_0020D678(moby);
        return;
    }
    if (64.0f < func_001F9D48(pos, D_L09_00166FC0)) {
        func_0020D678(moby);
        return;
    }
    *(float *)(moby + 0x48) = func_001FA748(*(float *)(moby + 0x48), *(float *)(data + 0x10));
    *(float *)(moby + 0x44) = func_001FA748(*(float *)(moby + 0x44), *(float *)(data + 0x14));
    *(float *)(data + 0x8) = *(float *)(data + 0x8) - D_0015EE70 * 12.74f;
    if (func_001F9908(data + 0x1C)) {
        lo = -1.0f;
        hi = 1.0f;
        half = 0.5f;
        *(xu128 *)v = 0;
        for (i = 7; i >= 0; i--) {
            v[0] = func_002140F8(lo, hi);
            v[1] = func_002140F8(lo, hi);
            v[2] = func_002140F8(lo, hi);
            *(xu128 *)w = *(xu128 *)v;
            func_L00_001FF4B0(w, w, func_001F9CB8(v) * half);
            func_001F9BD8(w, v, w);
            f = func_002140F8(D_0015EE6C * 3.0f, D_0015EE6C * 6.0f);
            func_L00_001FF4B0(w, w, f);
            a = func_001F9850(10);
            b = func_001F9850(15);
            c = func_L00_00258BC8(a, b);
            func_L00_0026EBC0(pos, w, 0x7F2F4F6F, c, 100000.0f);
        }
        func_0020D678(moby);
    } else {
        if (!func_L00_001EFFF0(pc, pos, 2, moby, 0)) {
            return;
        }
        if (func_L00_001F3958() == 1) {
            func_001F9C30(data, data, 0.4f);
            *(float *)(data + 0x10) = *(float *)(data + 0x10) * 0.25f;
            *(float *)(data + 0x14) = *(float *)(data + 0x14) * 0.25f;
        } else {
            t = D_L09_00174080;
            *(float *)(moby + 0x2C) = *(float *)(moby + 0x2C) * 0.8f;
            func_L00_001FF610(data, data, t);
            f = func_002140F8(0.3f, 0.1f);
            func_001F9C30(data, data, f);
            f = func_001F9CB8(data);
            if (f < D_0015EE6C * 5.0f) {
                *(int *)(data + 0x1C) = 0;
            }
            *(float *)(data + 0x10) = func_002140F8(0.0f, -*(float *)(data + 0x10));
            *(float *)(data + 0x14) = func_002140F8(0.0f, -*(float *)(data + 0x14));
            func_L00_001FF4B0(t, t, 0.05f);
            func_001F9BD8(pos, t - 0x20, t);
        }
    }
}
