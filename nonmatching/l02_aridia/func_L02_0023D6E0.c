/* NON_MATCHING func_L02_0023D6E0 -- src/overlays/l02_aridia/hud_0023D600.c
 * Best so far: BYTES 13/980 (98.7% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L02_0023D6E0 (980 bytes): HUD element update; clamps two icon fractions from m+0x70 and the m+0x8 test, f
 *   Stopped at 7 runs; best is p6.c, BYTES 17/980 (same size). Sizes and the float clamps match. Left: the loaded 
 */
extern int func_L00_00236400(char *rec, int *x, int *y);
extern int func_001FA888_i(int) __asm__("func_001FA888");
extern float func_001FA888(int);
extern int func_00116248(char *str, const char *fmt, ...);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_00200198(int, int);
extern void func_00200468(int, int, int, int, int, int);
extern void func_00200650(int, int, int, int, int, int);
extern void func_L00_0023BAB8(char *, int, int, int, int, int);
extern int func_001FA8A8(int, int, float);
extern void func_001F6CF8_c(int, int, long, char *, int) __asm__("func_001F6CF8");
extern short D_L02_0015FA1C;
extern short D_L02_0015FA20;
extern short D_L02_0015F9F4;
extern short D_L02_0015F9F8;
extern short D_L02_0015FA30;
extern short D_L02_0015FA34;
extern short D_L02_0015FA28;
extern short D_L02_0015FA2C;
extern char D_L02_0015F930[];
extern int D_0015EE80 MACRO_ADDR;
extern char D_0013E15A[];

// HUD element update: clamps two icon fractions, formats the label and draws the two bars.
int func_L02_0023D6E0(char *m) {
    char buf[16];
    int x;
    int xr;
    int x4;
    int y;
    int flag;
    int r16;
    int r18;
    int r19;
    int r2;
    int t;
    int tex;
    int v;
    unsigned char *p;
    float f20;
    float f21;
    float ft;

    p = (unsigned char *)(m + 0x70);
    if (p[0] == 0) {
        return *(int *)(m + 0x58);
    }
    x = *(int *)(m + 0x50);
    y = *(int *)(m + 0x54);
    func_L00_00236400(m, &x, &y);
    flag = x < 0x101;
    if (flag) {
        x = *(int *)&D_L02_0015FA1C;
    } else {
        x = *(int *)&D_L02_0015FA20;
    }
    v = *(int *)((char *)D_0013E15A + 0x4AA);
    y = (D_0015EE80 != 0) ? (v - 0x2A) : (v - 0x32);
    ft = func_001FA888(p[0]);
    f21 = ft / func_001FA888(*(int *)&D_L02_0015F9F4);
    if (f21 > 1.0f) {
        f21 = 1.0f;
    } else if (f21 < 0.0f) {
        f21 = 0.0f;
    }
    ft = func_001FA888(p[1]);
    f20 = ft / func_001FA888(*(int *)&D_L02_0015F9F8);
    if (f20 > 1.0f) {
        f20 = 1.0f;
    } else if (f20 < 0.0f) {
        f20 = 0.0f;
    }
    func_00116248(buf, D_L02_0015F930, *(int *)(m + 0x74));
    r19 = func_001FA898_r((float)func_001FA898_r(f21 * 128.0f) * 0.7f);
    if (*(int *)(m + 0x8) < 0xA) {
        t = *(int *)&D_L02_0015FA30;
    } else {
        t = *(int *)&D_L02_0015FA34;
    }
    xr = x;
    x4 = xr + 4;
    r18 = func_001FA898_r((float)t * f21);
    if (flag) {
        tex = func_00200198(0x7580, 1);
        func_00200468(tex, xr - 0x1C, y, 0x20, 0x20, r19);
        tex = func_00200198(0x7580, 0);
        func_00200468(tex, x4, y, r18, 0x20, r19);
        tex = func_00200198(0x7580, 1);
        func_00200650(tex, x4 + r18, y, 0x20, 0x20, r19);
    } else {
        tex = func_00200198(0x7580, 1);
        r16 = x4 - r18;
        func_00200650(tex, x4, y, 0x20, 0x20, r19);
        tex = func_00200198(0x7580, 0);
        func_00200468(tex, r16, y, r18, 0x20, r19);
        tex = func_00200198(0x7580, 1);
        func_00200468(tex, r16 - 0x20, y, 0x20, 0x20, r19);
    }
    if (flag) {
        func_L00_0023BAB8(m, *(int *)(m + 0x44), x, y, 0, 0x80);
    } else {
        func_L00_0023BAB8(m, *(int *)(m + 0x44), x - 0x16, y, 0, 0x80);
    }
    r16 = func_001FA8A8(*(int *)&D_L02_0015FA28, *(int *)&D_L02_0015FA2C, f20);
    r2 = func_001FA8A8(0, 0x80000000, f20);
    if (flag) {
        func_001F6CF8_c(x + 0x43, y + 9, r2, buf, -1);
        func_001F6CF8_c(x + 0x42, y + 8, r16, buf, -1);
    } else {
        func_001F6CF8_c(x - 0x19, y + 9, r2, buf, -1);
        func_001F6CF8_c(x - 0x1A, y + 8, r16, buf, -1);
    }
    return *(int *)(m + 0x58);
}
