/* NON_MATCHING func_L00_002BE3A8 -- src/overlays/shared/vendor_002BA7C8.c
 * Best so far: SIZE ours 2984 / retail 2992, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped after 7 of 14 runs (best p2.c: SIZE 2984 vs 2992, the flipped zero test in p3.c gave 2976). It is a pe
 *   Differences left: the store of D_L00_001618A0 sits early where retail fills the jal delay slot of 00215C00; &s
 *   Unblock: the frame and loop placement (retail reuses 0x80 for tbl[4] and s80), plus the scheduler order of the
 *   Note from the worker: the second claim printed QUEUE EMPTY and left a stray file at build-sn/try/_s20_claim2.t
 */
typedef struct { float f[4]; } V4f __attribute__((aligned(16)));
extern s32 func_L00_001EFFF0_C0358(void *, void *, s32, void *, s32) __asm__("func_L00_001EFFF0");
extern float func_001F9D48(void *, void *);
extern f32 func_001F9FA8(f32);
extern f32 func_001F9F90(f32);
extern int func_002140B0(int);
extern float D_0015EE6C MACRO_ADDR;
extern char D_L00_00173F60_a[] __asm__("D_L00_00173F60");
extern char D_L00_001DC260_a[] __asm__("D_L00_001DC260");
extern void func_L00_002BE2A0(void);
extern void func_00215C00(void *, float, float, float);
extern unsigned char *func_L00_0025D390(int);
extern void func_001F9C08(void *, void *, void *, float);
extern unsigned char *func_L00_00272F00(float *, int, float, float, int, int, int, float *, float);
extern unsigned char *func_L00_002767B0(void *, int, int, int, int, float *, int, float, float);
extern void func_L00_002BEF58(void);
typedef struct { int v[5]; } I5tbl;
extern float D_L00_001618A0 MACRO_ADDR;
extern float D_L00_001618A0_s SDATA(D_L00_001618A0);
extern float D_L00_0016189C MACRO_ADDR;
extern int D_L00_001618A8[3] MACRO_ADDR;
extern char D_L00_00161833 MACRO_ADDR;
extern float D_L00_001618D8[3] MACRO_ADDR;
extern float D_L00_001618C8[3] MACRO_ADDR;
extern float D_L00_001618B8[3] MACRO_ADDR;
extern Vu D_L00_001DD3A0[3] MACRO_ADDR;
extern Vu D_L00_001DC270[12] MACRO_ADDR;
extern Vu D_L00_001DD3D0[3] MACRO_ADDR;
extern Vu D_L00_001DC320[12] MACRO_ADDR;
extern Vu D_L00_001DC3E0[12] MACRO_ADDR;
extern Vu D_L00_001DC250[12] MACRO_ADDR;
extern Vu D_L00_001DC4A0[1] MACRO_ADDR;
extern float D_L00_0015F660[] MACRO_ADDR;
extern I5tbl D_L00_001E9E30 MACRO_ADDR;
extern int D_L00_001618F4 MACRO_ADDR;
extern int D_L00_001618E8[3] MACRO_ADDR;
extern float D_L00_001617AC SDATA(D_L00_001617AC);
extern float D_L00_001617C0 SDATA(D_L00_001617C0);
extern int D_L00_001617C4 SDATA(D_L00_001617C4);
extern float D_L00_001617C8 SDATA(D_L00_001617C8);
extern float D_L00_001617CC SDATA(D_L00_001617CC);
extern float D_L00_001617D4 SDATA(D_L00_001617D4);
extern float D_L00_001617D8 SDATA(D_L00_001617D8);
extern float D_L00_001617DC SDATA(D_L00_001617DC);
extern float D_L00_001617FC SDATA(D_L00_001617FC);
extern float D_L00_00161800 SDATA(D_L00_00161800);
extern float D_L00_00161804 SDATA(D_L00_00161804);
extern float D_L00_0016180C SDATA(D_L00_0016180C);
extern float D_L00_00161810 SDATA(D_L00_00161810);
extern int D_L00_00161814 SDATA(D_L00_00161814);
extern float D_L00_00161818 SDATA(D_L00_00161818);
extern int D_L00_0016181C SDATA(D_L00_0016181C);
extern int D_L00_00161820 SDATA(D_L00_00161820);
extern float D_L00_00161828 SDATA(D_L00_00161828);
extern float D_L00_0016182C SDATA(D_L00_0016182C);
extern float D_L00_00161838 SDATA(D_L00_00161838);

/* Per-moby effect update: builds the emitter set, runs the two spray loops and queues the sparks. */
void func_L00_002BE3A8(char *m) {
    V4f s00, s10, s20, s30, s40, s50, s60, s80, s90, sa0, sb0;
    int tbl[5];
    char *p;
    unsigned char *q;
    Vu *pm1, *pD3D0, *pD3A0;
    int i, j, k, r, r1, r2, r3, r4, r5, r16, r17, r18;
    float f0, f1, f2, f3, f4, f5, f12v;
    float f20, f21, f22, f23, f24;

    p = *(char **)(m + 0x78);
    s20.f[0] = 0.0f;
    s20.f[3] = 1.0f;
    func_L00_002BE2A0();
    D_L00_001618A0_s = func_L00_0025F368(D_L00_001618A0 + D_L00_001617C8);
    func_00215C00(&s00, D_L00_0016189C, *(float *)(p + 0x48), *(float *)(p + 0x4C));

    q = 0;
    if (*(char **)(p + 0x10) != 0) {
        q = func_L00_0025D390(*(int *)(p + 0x10));
    }
    if (q != 0) {
        s30 = *(V4f *)(*(char **)(p + 0x10) + 0x10);
        s30.f[2] = s30.f[2] + *(float *)(q + 0x10);
    } else {
        func_00215C00(&s30, D_L00_001617AC, *(float *)(p + 0x48), *(float *)(p + 0x4C));
        func_001F9BD8(&s30, &s30, p);
    }

    f24 = D_L00_001617AC;
    if (*(char **)(p + 0x10) == 0) {
        if (func_L00_001EFFF0_C0358(p, &s30, 20, (void *)*(int *)(D_0013E633 + 0x2E9D), 0)) {
            f24 = func_001F9D48(D_L00_00173F60_a, p);
        }
    } else {
        f24 = func_001F9D48(*(char **)(p + 0x10) + 0x10, p);
    }

    D_L00_0016189C = f24 * D_L00_001617C0;
    *(Vu *)D_L00_001DC260_a = *(Vu *)p;
    D_L00_001DC320[0] = *(Vu *)p;
    D_L00_001DC3E0[0] = *(Vu *)p;

    f23 = 1.0f;
    for (i = 1; i < 12; i++) {
        func_001F9BF0(&s10, (Vu *)D_L00_001DC260_a + i, D_L00_001DC250 + i);
        f22 = func_001FA888(i) * D_L00_001617C0;
        f20 = f22 * -0.49999997f + 0.9f;
        if (D_L00_001617C4 < i) {
            if (*(char **)(p + 0x10) != 0) {
                func_001F9BF0(&s40, *(char **)(p + 0x10) + 0x10, (Vu *)D_L00_001DC260_a + i);
                func_L00_001FF4B0(&s40, &s40, D_L00_0016189C);
                func_001F9C08(&s00, &s00, &s40, 0.2f);
            }
        }
        func_001F9C08(&s40, &s10, &s00, f20);
        f1 = func_001F9CB8(&s40);
        if (f1 != 0.0f) {
            func_001F9C30(&s40, &s40, D_L00_0016189C / f1);
            func_001F9BD8((Vu *)D_L00_001DC260_a + i, D_L00_001DC250 + i, &s40);
        } else {
            ((Vu *)D_L00_001DC260_a)[i] = D_L00_001DC250[i];
        }
        func_001F9BF0(&s50, (Vu *)D_L00_001DC260_a + i, D_L00_001DC250 + i);
        func_001F9CA0(&s60, &s50, D_0013E633 + 0x10AD);
        f12v = D_L00_001617D8 + (D_L00_001617DC - D_L00_001617D8) * f22;
        func_L00_001FF4B0(&s60, &s60, f12v);
        {
            char *q16 = (char *)D_L00_001DC4A0 + i * 0x140;
            for (j = 0; j < 20; j++) {
                func_002156E0(tbl, &s60, &s50, (float)j * D_L00_001617D4);
                func_001F9BD8(q16, tbl, (Vu *)D_L00_001DC260_a + i);
                q16 += 0x10;
            }
        }
                *(Vu *)&sb0 = *((Vu *)D_L00_001DC260_a + i);
        func_L00_001FF4B0(&s80, &s50, f23);
        func_L00_001FF4B0(&s90, &s60, f23);
        func_001F9CA0(&sa0, &s90, &s80);
        f21 = D_L00_001617FC;
        f1 = (D_L00_00161800 - f21) * f22;
        f21 = f21 + f1;
        f1 = func_001FA888(i);
        f12v = D_L00_001617CC * f1 + D_L00_001618A0;
        f20 = func_L00_0025F368(f12v);
        f1 = func_001F9FA8(f20);
        s20.f[1] = f21 * f1;
        f1 = func_001F9F90(f20);
        f21 = f21 * f1;
        s20.f[2] = f21;
        func_001F9EE8((Vu *)D_L00_001DC320 + i, &s20, &s80);
        s20.f[2] = -s20.f[2];
        func_001F9EE8((Vu *)D_L00_001DC3E0 + i, &s20, &s80);
    }

    func_001F49B0(func_L00_002BEF58, m);
    f23 = 0.1f;
    f22 = func_002140F8(f23, 2.0f);
    r1 = func_002140B0(2);
    r17 = (r1 != 0) ? r1 : r1 - 1;
    r2 = func_002140B0(2);
    if (r2 == 0) {
        *(Vu *)&s40 = D_L00_001DC320[11];
        f20 = 0.003f;
        r = func_001F9850(30);
        func_L00_00272F00(s40.f, r, f22 * f23, f22, 0x7F7F2020, 0, r17, D_L00_0015F660, f20);
        r17 = -r17;
        r = func_001F9850(30);
        func_L00_00272F00(s40.f, r, f22 * 0.07f, f22 * 0.7f, 0x7F7F7F7F, 1, r17, D_L00_0015F660, f20);
    }
    r3 = func_002140B0(2);
    if (r3 == 0) {
        *(Vu *)&s40 = D_L00_001DC3E0[11];
        f20 = 0.003f;
        r = func_001F9850(30);
        func_L00_00272F00(s40.f, r, f22 * f23, f22, 0x7F20207F, 0, r17, D_L00_0015F660, f20);
        r17 = -r17;
        r = func_001F9850(30);
        func_L00_00272F00(s40.f, r, f22 * 0.07f, f22 * 0.7f, 0x7F7F7F7F, 1, r17, D_L00_0015F660, f20);
    }

    pm1 = D_L00_001DC270 - 1;
    func_001F9BF0(&s50, D_L00_001DC270, pm1);
    f12v = D_L00_00161804 * D_0015EE60;
    func_L00_001FF4B0(&s50, &s50, f12v);
    r4 = func_002140B0(2);
    if (r4 == 0) {
        func_L00_001FF4B0(&s60, (char *)m + 0xD0, D_L00_00161810);
        func_001F9BD8(&s40, pm1, &s60);
        *(I5tbl *)tbl = D_L00_001E9E30;
        r5 = func_002140B0(5);
        r18 = tbl[r5];
        f21 = func_L00_00258C80(f20, D_L00_0016180C);
        f12v = func_L00_00258C80(f20, D_L00_0016180C);
        func_002156E0(&s90, &s50, D_0013E633 + 0x10AD, f12v);
        func_001F9CA0(&sa0, &s50, D_0013E633 + 0x10AD);
        func_002156E0(&s90, &s90, &sa0, f21);
        f0 = D_L00_00161804 * D_0015EE60;
        r16 = func_001FA898_r((f24 * 1.2f) / f0);
        if (*(int *)(p + 0x10) != 0) {
            r16 = r16 * 3;
        }
        func_L00_002767B0(&s40, r16, r18, 0, r17, s90.f, *(int *)(p + 0x10), f22 * f23, f22);
        func_L00_002767B0(&s40, r16, 0x7F7F7F7F, 1, -r17, s90.f, *(int *)(p + 0x10), f22 * 0.07f, f22 * 0.7f);
    }

    if (func_001F9908_r(&D_L00_001618F4) != 0) {
        D_L00_001618F4 = func_001F9850(D_L00_00161814);
        for (k = 0; k < 3; k++) {
            if (D_L00_001618E8[k] == 0) {
                D_L00_001618E8[k] = 1;
                r = func_001F9850(D_L00_0016181C);
                D_L00_001618A8[k] = r;
                f0 = D_L00_0016182C;
                D_L00_001618D8[k] = f0;
                *(int *)&D_L00_001618C8[k] = 0;
                f0 = func_001FA888(D_L00_00161833);
                D_L00_001618B8[k] = f0;
                D_L00_001DD3A0[k] = *(Vu *)p;
                func_001F9BF0(&s60, D_L00_001DC270, pm1);
                func_L00_001FF4B0(&D_L00_001DD3D0[k], &s60, 1.0f);
                goto ECE4;
            }
        }
    }
ECE4:
    f22 = 1.0f;
    pD3D0 = D_L00_001DD3D0;
    pD3A0 = D_L00_001DD3A0;
    for (k = 0; k < 3; k++, pD3D0++, pD3A0++) {
        if (D_L00_001618E8[k] != 0) {
            if (func_001F9908_r(&D_L00_001618A8[k]) != 0) {
                D_L00_001618E8[k] = 0;
                continue;
            }
            if (D_L00_001618A8[k] < D_L00_00161820) {
                D_L00_001618B8[k] = D_L00_001618B8[k] - D_L00_00161838;
            }
            f2 = D_L00_00161818;
            f0 = D_0015EE6C;
            f12v = f2 * f0;
            f4 = D_L00_001618C8[k] + f12v;
            f5 = D_L00_001617AC;
            f3 = f4 / f5;
            D_L00_001618C8[k] = f4;
            if (f22 < f3) {
                f3 = 1.0f;
            }
            f0 = D_L00_0016182C;
            f1 = D_L00_00161828 - f0;
            f1 = f1 * f3;
            f0 = f0 + f1;
            D_L00_001618D8[k] = f0;
            if (f5 <= f4) {
                func_001F9C30(&s60, pD3D0, f12v);
                func_001F9BD8(pD3A0, pD3A0, &s60);
                continue;
            }
            f1 = func_001FA898_r(f4 / D_L00_0016189C);
            r16 = f1;
            f0 = func_001FA888(r16);
            f1 = D_L00_0016189C;
            f2 = D_L00_001618C8[k];
            f0 = f0 * f1;
            f21 = f2 - f0;
            *pD3A0 = ((Vu *)D_L00_001DC260_a)[r16];
            if (r16 != 11) {
                func_001F9BF0(&s60, (Vu *)D_L00_001DC260_a + r16 + 1, (Vu *)D_L00_001DC260_a + r16);
            } else {
                func_001F9BF0(&s60, (Vu *)D_L00_001DC260_a + 11, D_L00_001DC250 + 11);
            }
            f0 = func_001F9CB8(&s60);
            f20 = f0;
            if (f20 == 0.0f) {
                continue;
            }
            f20 = f22 / f20;
            func_001F9C30(tbl, &s60, f21 * f20);
            func_001F9BD8(pD3A0, pD3A0, tbl);
            func_L00_001FF4B0(tbl, &s60, f20);
            func_001F9C08(pD3D0, pD3D0, tbl, 0.1f);
            func_L00_001FF4B0(pD3D0, pD3D0, f22);
        }
    }
}
