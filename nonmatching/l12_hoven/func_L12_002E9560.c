/* NON_MATCHING func_L12_002E9560 -- src/overlays/l12_hoven/vendor_002C0310.c
 * Best so far: BYTES 23/1064 (97.8% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Hoven vendor moby update, 1064 bytes: counters at data+0x288 and the 0x278..0x284 sum, a check into func_00214
 *   Unblock: a source form that keeps the 0xA4 store between the compare and the branch (or regalloc for $f0/$f3 a
 */
extern int func_001F9850(int);
extern int func_001F9938(void *);
extern int func_L01_0026EFB8(int, int);
extern int func_002140B0(int);
extern float func_001FA748(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L00_0025AC00(void *, int, int, void *, void *, float);
extern int func_00215570(void *, int);
extern void func_L12_002E9A50();
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern void func_L00_0025D5B0(void *, void *, float, int, int, int);
extern void func_L00_0025E4B0(void *m, short *p);
extern void func_L00_0025E590(void *, void *);
extern void func_L01_0026F040(int, int);
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;

/* Hoven vendor moby update: counters, a timed check, then one of two anim setups; ends by setting moby+0xA4. */
void func_L12_002E9560(char *moby) {
    char *data = *(char **)(moby + 0x78);
    char *ret;
    float vc[4];
    int ii;
    float zf;
    float fx;
    float fy;
    float x, pi, b;
    int r, sum, t;
    int v21;
    float m80;

    if (*(int *)(data + 0x38) != 0) {
        *(int *)(data + 0x38) = 0;
        *(short *)(data + 0x240) = func_001F9850(0xF0);
    }
    if (*(unsigned char *)(moby + 0x20) != 0) {
        r = func_001F9938(data + 0x240);
        *(float *)(data + 0x230) = (r != 0) ? *(float *)(data + 0x28C) : 20.0f;
    }
    if (*(int *)(data + 0x274) != 0 && *(unsigned char *)(moby + 0x20) != 2) {
        t = *(int *)(data + 0x288) + 1;
        *(int *)(data + 0x288) = t;
        r = func_001F9850(60);
        if (r * 17 < *(int *)(data + 0x288)) {
            sum = 0;
            if (*(int *)(data + 0x278) != -1) sum = func_L01_0026EFB8(*(int *)(data + 0x278), 2);
            if (*(int *)(data + 0x27C) != -1) sum += func_L01_0026EFB8(*(int *)(data + 0x27C), 2);
            if (*(int *)(data + 0x280) != -1) sum += func_L01_0026EFB8(*(int *)(data + 0x280), 2);
            if (*(int *)(data + 0x284) != -1) sum += func_L01_0026EFB8(*(int *)(data + 0x284), 2);
            if (sum >= 9 && func_002140B0(0x27) == 0) {
                pi = 3.1415927f;
                vc[0] = func_001F9F90(func_001FA748(*(float *)(moby + 0x48), pi));
                b = func_001FA748(*(float *)(moby + 0x48), pi);
                vc[1] = func_001F9FA8(b);
                vc[2] = 0.0f;
                func_L00_0025AC00(moby, *(int *)(D_0013E633 + 0x2E9D), 0x10000, moby + 0x10, vc, 1.0f);
            }
        }
    }

    if (*(int *)(data + 0x290) != -1) {
        if (func_00215570(D_0013E633 + 0xE9D, *(int *)(data + 0x290)) != 0) {
            func_L12_002E9A50(moby);
            return;
        }
    }

    ret = func_L00_0025B478(moby, 0x330000, 0);
    zf = 0.0f;
    func_L00_0025B4D0(moby, ret, data + 0x20, 0, &ii, &zf, 0, 4);
    if (ret != 0) {
        if (*(short *)(*(char **)(ret + 0x20) + 0xA6) != *(short *)(moby + 0xA6)
            && *(short *)(*(char **)(ret + 0x20) + 0xA6) != 0xB8
            && *(unsigned char *)(moby + 0x20) != 9
            && zf != 0.0f) {
            v21 = *(unsigned char *)(moby + 0x21);
            if (v21 != 0xFF) {
                func_L01_0026F040(v21, 1);
            }
            x = *(float *)(data + 0x20) - zf;
            m80 = D_0015EE70 * 30.0f;
            *(unsigned char *)(data + 0xAD) = 0;
            *(float *)(data + 0xA8) = 1.0f;
            *(float *)(data + 0x20) = x;
            *(float *)(data + 0x80) = m80;
            *(int *)(data + 0x94) = 9;
            *(float *)(data + 0xA0) = 1.0f;
            *(float *)(data + 0xA4) = 1.0f;
            if (x <= 0.0f) {
                float d6 = D_0015EE6C;
                float p0 = d6 * 12.0f;
                float p1 = d6 * 9.0f;
                *(unsigned short *)(moby + 0x34) &= 0xEFFF;
                *(float *)(data + 0x88) = p0;
                *(float *)(data + 0x8C) = p1;
                *(u128 *)vc = *(u128 *)(ret + 0x10);
                func_L00_0025BBA0(vc, &fx, data + 0x88, data + 0x8C);
                func_L00_0025D5B0(moby, data + 0x70, fx, 9, 1, 0);
                *(float *)(data + 0xC0) = 10.0f;
                *(float *)(data + 0xC4) = 19.0f;
                *(unsigned char *)(moby + 0x20) = 9;
                *(unsigned char *)(data + 0x67) = 0x78;
                func_L00_0025E4B0(moby, (short *)(data + 0x60));
            } else {
                float d6 = D_0015EE6C;
                float p0 = d6 * 4.7f;
                float p1 = d6 * 7.7f;
                *(float *)(data + 0x88) = p0;
                *(float *)(data + 0x8C) = p1;
                *(u128 *)vc = *(u128 *)(ret + 0x10);
                func_L00_0025BBA0(vc, &fy, data + 0x88, data + 0x8C);
                func_L00_0025D5B0(moby, data + 0x70, fy, 6, 1, 0);
                *(float *)(data + 0xC0) = 4.0f;
                *(float *)(data + 0xC4) = 8.0f;
                *(unsigned char *)(moby + 0x20) = 4;
                *(unsigned char *)(data + 0x67) = 0xFA;
                *(short *)(data + 0x26) = func_001F9850(60);
                func_L00_0025E4B0(moby, (short *)(data + 0x60));
            }
        }
    }
    *(unsigned char *)(moby + 0xA4) = 0xFF;
    func_L00_0025E590(moby, data + 0x60);
}
