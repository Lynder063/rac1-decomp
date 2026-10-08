/* NON_MATCHING func_L05_002D8388 -- src/overlays/l05_rilgar/vendor_002D28D0.c
 * Best so far: SIZE ours 1888 / retail 1872, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Scenery-ship moby update (class 79, level 05): switch on moby[0x20] (0 = float-scaled fit of a path, 1 = angle
 *   Differences left: the scheduling of the state-1 constant stores and the (v & 3) block (retail re-reads D_L05_0
 *   Stopped at 10 of 12 runs. Lombyte has no port for this function.
 */
typedef int u128 __attribute__((mode(TI)));
extern char *func_L00_0025B478(void *, int, int);
extern float func_00214158(void);
extern float func_L00_001FF860(float, float);
extern float func_001FA790(float, float);
extern float AbsoluteFloat(float input) __asm__("func_001F9B88");
extern float func_001F9D10_052A8(float *, float *) __asm__("func_001F9D10");
extern float func_001FA748(float, float);
extern float func_001F9FA8(float);
extern int func_001FA8A8(int, int, float);
extern void func_L05_002D8AD8(char *moby, int *path);
extern int func_L00_0028EB98(void *, int);
extern void func_0022ED80(int, int, int);
extern void func_001F9EC0(void *, void *, void *);
extern void func_001F9BD8_052A8(float *, float *, float *) __asm__("func_001F9BD8");
extern void func_001F49B0(void (*)(void), void *);
extern void func_001F9C30(void *, void *, float);
extern int func_001F9850(int);
extern void *func_L00_00265050(char *src, int cls, float *pos, void *mat, int a8, int a9, float *v10, float *v11, float scale, float *v12);
extern void func_0020D678(void *);
extern void func_L05_002D8268(char *moby);
extern void func_L05_002D8B68(void);
extern float D_L05_001672C8;
extern char *D_L05_001B0CB0_x[] __asm__("D_L05_001B0CB0");
extern float D_0015EE6C MACRO_ADDR;
extern int D_L05_0015F6B0 MACRO_ADDR;
extern char D_L05_0015F660[] MACRO_ADDR;
extern float D_0015EE60 MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern short D_L05_00161494;
extern short D_L05_00161498;
extern short D_L05_0016149C;
extern short D_L05_001614A0;
extern short D_L05_001614A4;
extern short D_L05_001614A8;
extern short D_L05_001614AC;

/* scenery_ship moby (class 79) update on level 05. */
void func_L05_002D8388(char *moby) {
    char *d = *(char **)(moby + 0x78);
    char *r;
    char *p;
    char *cur;
    char *prev;
    char *nxt;
    char *q;
    int i;
    int k;
    int v;
    int st;
    int flag;
    float buf[4];
    float buf2[4];
    float buf3[4];
    float ang;
    float a2;
    float v2;
    float f21v;
    float sc;

    if (D_L05_001672C8 < 55.0f) return;
    r = func_L00_0025B478(moby, 0x10000, 0);
    flag = 0;
    st = *(unsigned char *)(moby + 0x20);
    switch (st) {
    case 0: {
        *(unsigned char *)(moby + 0x30) = 0xFF;
        *(short *)(moby + 0x32) = 0xFF;
        *(float *)(moby + 0x2C) = *(float *)(*(char **)(moby + 0x24) + 0x24) * *(float *)&D_L05_00161494;
        *(float *)(d + 0x1C) = func_00214158();
        *(int *)(d + 0x328) = -1;
        *(float *)(d + 0x368) = func_00214158();
        p = D_L05_001B0CB0_x[*(int *)d];
        if (*(float *)(p + 0x1C) == -1.0f) {
            f21v = 0.0f;
            q = p + ((*(int *)p - 1) << 4);
            ang = func_L00_001FF860(*(float *)(p + 0x10) - *(float *)(q + 0x10), *(float *)(p + 0x14) - *(float *)(q + 0x14));
            a2 = func_L00_001FF860(*(float *)(p + 0x20) - *(float *)(p + 0x10), *(float *)(p + 0x24) - *(float *)(p + 0x14));
            *(float *)(p + 0x1C) = func_001FA790(a2, ang);
            for (i = 1; i < *(int *)p - 1; i++) {
                cur = p + i * 16;
                prev = p + (i - 1) * 16;
                ang = func_L00_001FF860(*(float *)(cur + 0x10) - *(float *)(prev + 0x10), *(float *)(cur + 0x14) - *(float *)(prev + 0x14));
                nxt = p + (i + 1) * 16;
                a2 = func_L00_001FF860(*(float *)(nxt + 0x10) - *(float *)(cur + 0x10), *(float *)(nxt + 0x14) - *(float *)(cur + 0x14));
                v2 = func_001FA790(a2, ang);
                *(float *)(cur + 0x1C) = v2;
                if (f21v < AbsoluteFloat(v2)) {
                    f21v = AbsoluteFloat(*(float *)(cur + 0x1C));
                }
            }
            ang = func_L00_001FF860(*(float *)(p + ((*(int *)p - 1) << 4) + 0x10) - *(float *)(p + ((*(int *)p - 2) << 4) + 0x10),
                                    *(float *)(p + ((*(int *)p - 1) << 4) + 0x14) - *(float *)(p + ((*(int *)p - 2) << 4) + 0x14));
            a2 = func_L00_001FF860(*(float *)(p + 0x10) - *(float *)(p + ((*(int *)p - 1) << 4) + 0x10),
                                   *(float *)(p + 0x14) - *(float *)(p + ((*(int *)p - 1) << 4) + 0x14));
            *(float *)(p + ((*(int *)p - 1) << 4) + 0x1C) = func_001FA790(a2, ang);
            sc = 1.04719755f / f21v;
            for (k = 0; k < *(int *)p; k++) {
                q = p + (k << 4);
                *(float *)(q + 0x1C) = *(float *)(q + 0x1C) * sc;
            }
        }
        *(float *)(d + 0xC) = func_001F9D10_052A8((float *)(p + 0x10), (float *)(p + 0x20));
        *(unsigned char *)(moby + 0x20) = 1;
        *(float *)(d + 0x8) = (float)*(int *)p * *(float *)(d + 0x4);
        break;
    }
    case 1: {
        float g = func_001FA748(*(float *)(d + 0x1C), D_0015EE6C * 12.566370614f);
        float h;
        *(float *)(d + 0x1C) = g;
        h = func_001F9FA8(g);
        *(int *)(moby + 0x90) = func_001FA8A8(*(int *)&D_L05_00161498, *(int *)&D_L05_0016149C, (h + 1.0f) * 0.5f);
        func_L05_002D8AD8(moby, (int *)D_L05_001B0CB0_x[*(int *)d]);
        v = func_L00_0028EB98(moby, *(int *)(d + 0x328));
        if (v == 0) {
            int g5 = D_L05_0015F6B0;
            func_0022ED80(1, 4, (int)moby);
            *(int *)(d + 0x328) = g5;
            v = D_L05_0015F6B0;
        }
        k = v & 3;
        if (k == 0) {
            *(short *)(d + 0x322) = (*(unsigned short *)(d + 0x322) + 1) & 0xF;
            if ((float)*(short *)(d + 0x320) < *(float *)&D_L05_001614A0) {
                *(short *)(d + 0x320) = *(short *)(d + 0x320) + 1;
            }
            k = 0;
        }
        *(u128 *)buf = (u128)k;
        buf[1] = 0.4f;
        buf[0] = -1.2f;
        buf[2] = 0.45f;
        func_001F9EC0(buf, buf, moby + 0xC0);
        func_001F9BD8_052A8((float *)(d + (*(short *)(d + 0x322) << 4) + 0x20), buf, (float *)(moby + 0x10));
        *(float *)(d + (*(short *)(d + 0x322) << 4) + 0x2C) = 1.0f;
        *(u128 *)buf2 = 0;
        buf2[0] = -1.5f;
        buf2[2] = -0.3f;
        func_001F9EC0(buf2, buf2, moby + 0xC0);
        func_001F9BD8_052A8((float *)(d + (*(short *)(d + 0x322) << 4) + 0x120), buf2, (float *)(moby + 0x10));
        *(float *)(d + (*(short *)(d + 0x322) << 4) + 0x12C) = 1.0f;
        *(u128 *)buf3 = 0;
        buf3[0] = -1.2f;
        buf3[1] = -0.4f;
        buf3[2] = 0.45f;
        func_001F9EC0(buf3, buf3, moby + 0xC0);
        func_001F9BD8_052A8((float *)(d + (*(short *)(d + 0x322) << 4) + 0x220), buf3, (float *)(moby + 0x10));
        *(float *)(d + (*(short *)(d + 0x322) << 4) + 0x22C) = 1.0f;
        {
            int g5 = D_L05_0015F6B0;
            int *pp = *(int **)(d + 0x324);
            if (*pp != g5) {
                *pp = g5;
                func_001F49B0(func_L05_002D8B68, moby);
            }
        }
        if (*(float *)(moby + 0x10) < 8.0f) {
            *(int *)(moby + 0x94) = 0;
        } else if (*(float *)(moby + 0x14) < 8.0f) {
            *(int *)(moby + 0x94) = 0;
        } else {
            *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);
        }
        if (r != 0 && 0.0f < *(float *)(r + 0x2C)) flag = 1;
        if (flag) *(unsigned char *)(moby + 0x20) = 2;
        break;
    }
    case 2: {
        func_0022ED80(0, 0, (int)moby);
        func_001F9C30(buf, moby + 0xC0, D_0015EE60 * *(float *)&D_L05_001614A8);
        buf[2] = buf[2] + *(float *)&D_L05_001614AC * D_0015EE60;
        v = func_001F9850(0x5A);
        func_L00_00265050(moby, 0x72E, (float *)(moby + 0x10), (float *)(moby + 0x40), v, 0, buf,
                          (float *)D_L05_0015F660, D_0015EE70 * 12.0f, (float *)D_L05_0015F660);
        v = func_001F9850(0x5A);
        func_L00_00265050(moby, 0x72E, (float *)(moby + 0x10), (float *)(moby + 0x40), v, 0, buf,
                          (float *)D_L05_0015F660, D_0015EE70 * 12.0f, (float *)D_L05_0015F660);
        v = func_001F9850(0x5A);
        func_L00_00265050(moby, 0x72E, (float *)(moby + 0x10), (float *)(moby + 0x40), v, 0, buf,
                          (float *)D_L05_0015F660, D_0015EE70 * 12.0f, (float *)D_L05_0015F660);
        func_0020D678(moby);
        return;
    }
    }
    if (*(int *)&D_L05_001614A4) func_L05_002D8268(moby);
}
