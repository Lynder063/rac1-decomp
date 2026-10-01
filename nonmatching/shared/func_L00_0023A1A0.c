/* NON_MATCHING func_L00_0023A1A0 -- src/overlays/shared/hud_00235960.c
 * Best so far: BYTES 2/1208 (99.8% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L00_0023A1A0 (HUD health bar + orbs): budget spent at p9.c, BYTES 2/1208 (only difference: register of th
 *   Retail loads 0x42400000 straight into $f20 (`mtc1 $at,$f20; mul.s $f20,$f21,$f20`) in the cnt==8 arm; ours use
 *   Would unblock: a wording of `f20 = f21 * 48.0f` that puts the constant in f20 (e.g. `f20 = 48.0f; f20 = f21 * 
 */
#include "common.h"

extern char D_0013E633[];
extern short D_0015EE80_g __asm__("D_0015EE80");
extern int D_0015EEA0 MACRO_ADDR;
extern short D_L00_0015F8E8;
extern short D_L00_0015F8D0;
extern short D_L00_0015F900;
extern short D_L00_0015F8F0;
extern short D_L00_0015F8FC;
extern short D_L00_0015F8EC;
extern short D_L00_0015F8D8;
extern short D_L00_0017E578[];
extern short D_L00_0017E560[];

extern float func_001FA888(int);
extern int func_001FA898(float);
extern int func_00200198(int, int);
extern void func_00200650(int, int, int, int, int, int);
extern void func_00200468(int, int, int, int, int, int);
extern void func_L00_0023BAB8(char *, int, int, int, int, int);

#define GB(T, o) ({ char *gb = D_0013E633 + 0xE1D; *(T *)(gb + (o)); })
#define F8D0 (*(int *)&D_L00_0015F8D0)
#define F8FC (*(int *)&D_L00_0015F8FC)

/* Draws the health bar (and its nanotech orbs) of a HUD element; returns the element's field 0x58. */
int func_L00_0023A1A0(char *e) {
    int y0, n, alpha;
    char *ip;
    short *tbl;
    int cnt, tex2;
    int x, y, bw, bw2, tex;
    int x0, w, i, phase;
    float f20, f21, f22;
    unsigned char *q;

    if (GB(unsigned char, 0x20A4) == 2 || GB(int, 0x2084) == 0x32) {
        return *(int *)(e + 0x58);
    }
    x0 = *(int *)(e + 0x50);
    if (*(int *)&D_0015EE80_g) {
        y0 = *(int *)&D_L00_0015F8E8 + 0xA;
    } else {
        y0 = *(int *)&D_L00_0015F8E8 + 0x12;
    }
    n = *(int *)(e + 0x78);
    q = (unsigned char *)e + 0x70;
    if (((unsigned char *)e)[0x70] == 0) {
        return *(int *)(e + 0x58);
    }
    f20 = func_001FA888(((unsigned char *)e)[0x70]);
    f21 = f20 / func_001FA888(F8D0);
    if (f21 > 1.0f) {
        f21 = 1.0f;
    } else if (f21 < 0.0f) {
        f21 = 0.0f;
    }
    f20 = func_001FA888(q[1]);
    f22 = f20 / func_001FA888(F8D0);
    if (f22 > 1.0f) {
        f22 = 1.0f;
    } else if (f22 < 0.0f) {
        f22 = 0.0f;
    }
    alpha = func_001FA898(f22 * 128.0f);
    w = func_001FA898((float)*(int *)&D_L00_0015F900 * f21);
    ip = *(char **)(e + 0x80);
    phase = *(short *)ip >> 1;
    if (n == 0) {
        phase = 0x1E;
    }
    cnt = D_0015EEA0;
    if (GB(unsigned char, 0x20A4) == 1) {
        cnt = GB(int, 0x22AC);
    }
    if (cnt == 8) {
        f20 = f21 * 48.0f;
        tbl = D_L00_0017E578;
        bw = func_001FA898(f20);
        bw2 = func_001FA898(f20);
    } else if (cnt == 5) {
        tbl = D_L00_0017E560;
        bw = func_001FA898(f21 * 32.0f);
        bw2 = func_001FA898(f21 * 16.0f);
    } else {
        bw2 = 0;
        tbl = &D_L00_0015F8D8;
        bw = func_001FA898(f21 * 48.0f);
    }
    x = x0 - bw;
    y = y0 + *(int *)&D_L00_0015F8F0;
    tex = func_00200198(0x7580, 1);
    tex2 = func_00200198(0x7580, 0);
    func_00200650(tex, x0 + bw, y, F8FC, F8FC, w);
    func_00200468(tex2, x, y, bw << 1, F8FC, w);
    {
        int h = F8FC;
        func_00200468(tex, x - h, y, h, h, w);
    }
    if (bw2) {
        int x2;
        y += *(int *)&D_L00_0015F8EC;
        func_00200650(tex, x0 + bw2, y, F8FC, F8FC, w);
        x2 = x0 - bw2;
        func_00200468(tex2, x2, y, bw2 << 1, F8FC, w);
        {
            int h = F8FC;
            func_00200468(tex, x2 - h, y, h, h, w);
        }
    }
    for (i = 0; i < cnt; i++) {
        func_L00_0023BAB8(e, func_00200198(0x7536, phase), x0 + tbl[i * 2], y0 + tbl[i * 2 + 1], 1, alpha);
        if (phase != 0x1E) {
            int a, b, px, py;
            func_L00_0023BAB8(e, func_00200198(0x7536, 0x1E), x0 + tbl[i * 2], y0 + tbl[i * 2 + 1], 1, alpha);
            a = func_00200198(0x7536, 0x1F);
            px = x0 + tbl[i * 2];
            py = y0 + tbl[i * 2 + 1];
            px += 0xE;
            py -= 0x11;
            b = func_001FA898((float)(*(short *)(ip + 2) >> 4) * f22);
            func_00200468(a, px, py, 0x22, 0x22, b);
            if (n == i + 1) {
                phase = 0x1E;
            } else {
                phase = (phase + 6) % 0x1E;
            }
        }
    }
    return *(int *)(e + 0x58);
}
