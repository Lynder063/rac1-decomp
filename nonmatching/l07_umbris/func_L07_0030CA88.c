/* NON_MATCHING func_L07_0030CA88 -- src/overlays/l07_umbris/vendor_002CE470.c
 * Best so far: SIZE ours 1000 / retail 996, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moby update: copies pos (moby+0x10) to a stack vector, samples three random values per loop pass into a vector
 *   Best p2.c: 992 of 996 bytes, all control flow in place. Remaining: the allocator keeps pos/moby/d in other sav
 */
extern void func_001F9BD8(void *, void *, void *);
extern float func_001F9D48(void *, void *);
extern float func_002140F8(float, float);
extern float func_001F9CB8(void *a);
extern void func_L00_001FF4B0(void *, void *, float);
extern unsigned char *func_L07_0029B070(char *, char *);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern void func_L00_001FF610(void *, void *, void *);
extern int func_001F9850(int);
extern int func_L00_00258BC8(int, int);
extern char *func_L00_0026EBC0(char *pos, char *vel, int c, int d, float f);
extern int func_0022ED80(int, int, int);
extern void func_0020D678(void *);
extern float D_0015EE6C MACRO_ADDR;
extern char D_L07_00173F60[];
extern char D_L07_00173F80[];
extern char D_0013E633[];

typedef int u128 __attribute__((mode(TI)));

// Update function for moby class 880 on level 07: samples random offsets into a vector, then moves the moby and spawns children
void func_L07_0030CA88(unsigned char *moby) {
    float t0[4];
    float ta[4];
    float tb[4];
    char *pos;
    char *d;
    int flag;
    int r3;

    pos = (char *)moby + 0x10;
    d = *(char **)(moby + 0x78);
    *(u128 *)t0 = *(u128 *)pos;
    func_001F9BD8(pos, pos, d + 0x30);
    flag = (*(int *)(d + 0x54) == 0);
    if (30.0f < func_001F9D48(pos, d + 0x40)) {
        if (moby[0x31] != 0) {
            char *pp = pos;
            char *pa = (char *)ta;
            char *pb = (char *)tb;
            int k;
            for (k = 2; k >= 0; k--) {
                float len;
                *(u128 *)tb = 0;
                tb[0] = func_002140F8(-1.0f, 1.0f);
                tb[1] = func_002140F8(-1.0f, 1.0f);
                tb[2] = func_002140F8(-1.0f, 1.0f);
                *(u128 *)pa = *(u128 *)pb;
                len = func_001F9CB8(tb);
                func_L00_001FF4B0(ta, ta, len * 0.1f);
                func_001F9BD8(ta, tb, ta);
                func_L00_001FF4B0(ta, ta, func_002140F8(D_0015EE6C + D_0015EE6C, D_0015EE6C * 4.0f));
                func_L07_0029B070(pp, pa);
            }
        }
        func_0020D678(moby);
        return;
    }
    if (moby[0x31] != 0 || func_001F9D48(pos, D_0013E633 + 0xE9D) < 30.0f) {
        r3 = func_L00_001EFFF0(t0, pos, flag, *(int *)(d + 0x50), (int)d);
        if (r3 != 0) {
            *(u128 *)pos = *(u128 *)D_L07_00173F60;
            if (moby[0x31] != 0) {
                int k;
                for (k = 4; k >= 0; k--) {
                    float len;
                    int a, b, c;
                    *(u128 *)tb = 0;
                    tb[0] = func_002140F8(-1.0f, 1.0f);
                    tb[1] = func_002140F8(-1.0f, 1.0f);
                    tb[2] = func_002140F8(-1.0f, 1.0f);
                    *(u128 *)ta = *(u128 *)tb;
                    func_L00_001FF610(tb, d + 0x30, D_L07_00173F80);
                    len = func_001F9CB8(tb);
                    func_L00_001FF4B0(ta, ta, len * 0.5f);
                    func_001F9BD8(ta, tb, ta);
                    func_L00_001FF4B0(ta, ta, func_002140F8(D_0015EE6C * 3.0f, D_0015EE6C * 6.0f));
                    a = func_001F9850(0xA);
                    b = func_001F9850(0xF);
                    c = func_L00_00258BC8(a, b);
                    func_L00_0026EBC0(pos, ta, 0x7F2F4F6F, c, 30000.0f);
                }
            }
            func_0022ED80(0, 0, (int)moby);
            func_0020D678(moby);
            return;
        }
    }
    if (*(float *)(moby + 0x10) < 2.0f || 1020.0f < *(float *)(moby + 0x10) || *(float *)(moby + 0x14) < 2.0f || 1020.0f < *(float *)(moby + 0x14) || *(float *)(moby + 0x18) < 2.0f || 1020.0f < *(float *)(moby + 0x18)) {
        func_0020D678(moby);
    }
}
