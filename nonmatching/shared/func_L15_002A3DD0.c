/* NON_MATCHING func_L15_002A3DD0 -- src/overlays/shared/vendor_00298BB8.c
 * Best so far: SIZE ours 1348 / retail 1352, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Shared class-78 moby update: state 0 (flags at 0x34/0x31, bit test on the 0xAB75 table), state 2 (counter at d
 *   Left: retail keeps -5.0, 5.0 and 1.0 in saved float registers ($f20, $f21, $f23; swc1 in the prologue) while o
 */
extern char D_L15_001BBB40[];
extern char D_0014171B[];
extern char D_0013E633[];
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern short D_L15_00160058_s __asm__("D_L15_00160058");
extern float func_002140F8(float, float);
extern int func_002140B0(int);
extern int func_001F9850(int);
extern float func_001F9B88(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern void func_001F9BF0(void *dst, void *a, void *b);
extern void func_001F9EE8(void *, void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001FA4A0(void *, void *);
extern void func_L15_002A47B8(int);
extern int func_0022ED80(int, int, int);
extern void func_001F49B0(void (*)(void), void *);
extern void func_L15_002A4318(void);
extern unsigned char *func_L15_002655D0(void *pos, float *p, float *c, int d, int e, int f, int g, int h, char *owner);

/* Level 15/17 moby update (class 78): three states; state 1 runs the particle-style sweep over 16 steps. */
void func_L15_002A3DD0(char *moby) {
    char *data;
    char *addr;
    char *ps[2];
    int cnt[4];
    float V[4];
    float W[4];
    float A[4];
    float B[4];
    float C[4];
    float f20;
    float f21;
    float f22;
    float f23;
    float f;
    int st;
    int idx;
    int call47;
    int w;
    int s;
    int ra;
    int rb;
    int rc;
    int m16;
    int m17;
    int r1;
    int r2;
    int r3;
    int r4;
    int r5;
    int rg;
    unsigned char v;

    data = *(char **)(moby + 0x78);
    st = *(unsigned char *)(moby + 0x20);
    if (st == 1) {
        idx = *(int *)(data + 0x10);
        call47 = 0;
        if (idx != -1) {
            if (*(unsigned char *)((char *)*(int *)&D_L15_00160058_s + (idx << 8) + 0x20) == 2) {
                call47 = 1;
            }
        }
        if (!call47) {
            v = *(unsigned char *)(D_0014171B + 0xAA35 + ((D_0015EE84_m << 4) + *(unsigned char *)(moby + 0xB0)));
            if (v == 0xFF) {
                call47 = 1;
            }
        }
        if (call47) {
            func_L15_002A47B8((int)moby);
        } else {
            addr = D_0013E633 + 0x1D + *(unsigned char *)(moby + 0xBC) * 0x70;
            if (*(int *)(addr + 0x88) != (int)moby || *(unsigned char *)(addr + 0x74) == 0) {
                *(unsigned char *)(moby + 0xBC) = func_0022ED80(0, 4, (int)moby);
            }
            ps[0] = moby + 0x10;
            ps[1] = moby + 0xC0;
            f21 = -5.0f;
            f20 = 5.0f;
            f23 = 1.0f;
            func_001F9BF0(V, D_0013E633 + 0xEED, ps[0]);
            func_001FA4A0(W, ps[1]);
            func_001F9EE8(V, V, W);
            *(int *)&V[0] = 0;
            f22 = V[0];
            cnt[0] = 15;
            do {
                cnt[0] = cnt[0] - 1;
                A[0] = func_002140F8(-0.25f, 0.25f);
                A[1] = func_002140F8(f21, f20);
                A[2] = func_002140F8(f22, f20);
                B[0] = f22;
                B[1] = func_002140F8(f21, f20);
                B[2] = func_002140F8(f21, f20);
                C[0] = f22;
                C[1] = func_002140F8(f21, f20);
                C[2] = func_002140F8(f21, f20);
                func_001F9EC0(A, A, ps[1]);
                func_001F9EC0(B, B, ps[1]);
                func_001F9EC0(C, C, ps[1]);
                func_001F9BD8(A, A, ps[0]);
                r1 = func_001F9850(0x1E);
                func_L00_001FF4B0(B, B, f23 / (float)r1);
                r2 = func_001F9850(0x1E);
                func_L00_001FF4B0(C, C, f23 / (float)r2);
                B[3] = 0.125f;
                ra = func_002140B0(0x10);
                rb = func_002140B0(0x20);
                rc = func_002140B0(0x20);
                m16 = ((rb + 0x60) << 8) | 0x60000000;
                m17 = ((ra + 0x20) << 16) | m16;
                m17 |= rc + 0x60;
                r3 = func_001F9850(0x1E);
                func_001FA898_r((float)(r3 / 4));
                r4 = func_001F9850(0x1E);
                func_001FA898_r((float)(r4 / 2));
                r5 = func_001F9850(0x1E);
                rg = func_001FA898_r((float)(r5 / 4));
                func_L15_002655D0(A, B, C, m17, 0x60808080, r4, r5, rg, moby);
            } while (cnt[0] >= 0);
            f = func_001F9B88(V[1]);
            if (f < f20 && f22 < V[2] && V[2] < f20) {
                func_001F9EC0(data, V, ps[1]);
                func_001F9BD8(data, data, ps[0]);
            } else {
                qzero(data);
            }
            func_001F49B0(func_L15_002A4318, moby);
        }
    } else if (st == 0) {
        *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) | 1;
        *(unsigned char *)(moby + 0x31) = 0;
        s = (short)*(unsigned short *)(moby + 0xB2);
        v = *(unsigned char *)(D_L15_001BBB40 + s + 0x454);
        if (v == 0) {
            v = 0xFF;
            w = *(int *)(D_0014171B + 0xAB75 + ((s >> 5) * 4 + (D_0015EE84_m << 8)));
            if (((w >> (s & 31)) & 1) == 0) {
                *(unsigned char *)(moby + 0x20) = 1;
            } else {
                *(unsigned char *)(moby + 0x20) = 3;
                *(unsigned char *)(moby + 0xBC) = v;
                *(int *)(moby + 0x94) = 0;
            }
        } else {
            *(unsigned char *)(moby + 0x20) = 3;
            *(unsigned char *)(moby + 0xBC) = v;
            *(int *)(moby + 0x94) = 0;
        }
    } else if (st == 2) {
        w = *(int *)(data + 0x14);
        *(int *)(data + 0x14) = w + 1;
        if (w < 0x3D) {
            qzero(data);
            func_001F49B0(func_L15_002A4318, moby);
        } else {
            *(unsigned char *)(moby + 0x20) = 3;
        }
    }
}
