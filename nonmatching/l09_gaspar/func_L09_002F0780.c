/* NON_MATCHING func_L09_002F0780 -- src/overlays/l09_gaspar/vendor_002C2B08.c
 * Best so far: SIZE ours 796 / retail 800, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 09 moby update (class 313): steers the moby, deletes it when out of range or after a splash loop, else s
 *   Wall-free so far; budget spent at 8 runs (p0 and p1 compile fails on the file's u128 typedefs, p2 onward compi
 */
extern void func_001F9BD8(void *, void *, void *);
extern float func_001F9D48(void *, void *);
extern float func_001FA748(float, float);
extern int func_001F9908(int *arg0);
extern float func_002140F8(float, float);
extern float func_001F9CB8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern int func_001F9850(int);
extern int func_L00_00258BC8(int, int);
extern char *func_L00_0026EBC0(char *pos, char *vel, int c, int d, float f);
extern void func_0020D678(void *);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern void func_L00_001FF610(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BC0(void *);
extern float D_L09_00166FC0[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern char D_L09_00174080[];

/* Level 9 moby update (class 313): keep the moby above ground, steer it, then delete it or spawn a splash. */
void func_L09_002F0780(char *moby) {
    char *pos = moby + 0x10;
    char *data = *(char **)(moby + 0x78);
    float v2[4];
    float v1[4];
    xu128 saved = *(xu128 *)pos;
    char *vp;
    char *wp;
    int n = 1;
    int a;
    int b;
    int r;
    char *addr;

    vp = (char *)v2;
    wp = (char *)v1;
    func_001F9BD8(pos, pos, data);
    if (*(float *)(moby + 0x10) < 0.0f || *(float *)(moby + 0x14) < 0.0f || *(float *)(moby + 0x18) < 0.0f) {
        func_0020D678(moby);
        return;
    }
    if (func_001F9D48(pos, D_L09_00166FC0) > 64.0f) {
        func_0020D678(moby);
        return;
    }
    *(float *)(moby + 0x48) = func_001FA748(*(float *)(moby + 0x48), *(float *)(data + 0x10));
    *(float *)(moby + 0x44) = func_001FA748(*(float *)(moby + 0x44), *(float *)(data + 0x14));
    *(float *)(data + 0x8) = *(float *)(data + 0x8) - D_0015EE70 * 9.8f;
    if (func_001F9908((int *)(data + 0x1C))) {
        do {
            *(xu128 *)wp = 0;
            ((float *)wp)[0] = func_002140F8(-1.0f, 1.0f);
            n--;
            ((float *)wp)[1] = func_002140F8(-1.0f, 1.0f);
            ((float *)wp)[2] = func_002140F8(-1.0f, 1.0f);
            *(xu128 *)vp = *(xu128 *)wp;
            func_L00_001FF4B0(vp, vp, func_001F9CB8(wp) * 0.5f);
            func_001F9BD8(vp, wp, vp);
            func_L00_001FF4B0(vp, vp, func_002140F8(D_0015EE6C * 3.0f, D_0015EE6C * 6.0f));
            a = func_001F9850(10);
            b = func_001F9850(15);
            r = func_L00_00258BC8(a, b);
            func_L00_0026EBC0(pos, vp, 0x7F2F4F6F, r, 30000.0f);
        } while (n >= 0);
        func_0020D678(moby);
        return;
    }
    if (func_L00_001EFFF0(&saved, pos, 2, (int)moby, 0)) {
        addr = D_L09_00174080;
        func_L00_001FF610(data, data, addr);
        func_001F9C30(data, data, func_002140F8(0.45f, 0.75f));
        if (func_001F9CB8(data) < D_0015EE70 * 10.0f) {
            func_001F9BC0(data);
        }
        func_L00_001FF4B0(addr, addr, 0.05f);
        func_001F9BD8(pos, addr - 0x20, addr);
    }
}
