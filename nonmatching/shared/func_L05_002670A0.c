/* NON_MATCHING func_L05_002670A0 -- src/overlays/shared/hud_00263490.c
 * Best so far: SIZE ours 852 / retail 848, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Timer HUD draw: three clock fields from the per-block base at D_0013E15A+0x4A6, then a 60-tick split of G->0x8
 *   Left: the divide-by-zero check. Retail checks the 60 divisor (`beql $a0`) before the G->0x894 load and before 
 *   Unblock: which expression gcc 2.95 expands first in retail (the r/60 division or the period division), or a fo
 */
extern int D_0015EE80 MACRO_ADDR;
extern unsigned char D_0013E15A[];
extern char D_0013E633[];
extern unsigned char D_0013D355[];
extern char D_L05_0015F868[];
extern char D_L05_0015FAB0[];
extern char D_L05_0015FB08[];
extern char D_L05_0015FB10[];
extern char D_L05_0015FB20[];
extern char D_L05_0015FB28[];
extern short D_L05_0015FAD0;
extern short D_L05_0015FAEC;
extern short D_L05_0015FAFC;
extern short D_L05_0015FADC;
extern short D_L05_0015FAD4;
extern short D_L05_0015FAD8;
extern short D_L05_0015FACC;
extern short D_L05_0015FAE8;
extern short D_L05_0015FAE0;
extern short D_L05_0015FAE4;
extern void func_00201960(s32, s32, s32, s32, s32);
extern void *func_001FE540_id(int) __asm__("func_001FE540");
extern int func_00116248(char *, const char *, ...);
extern int func_001F6600(unsigned char *, int);
extern void func_L00_001FB7F8(void *a, void *b, long c, void *d, int e);

/* Draws the timer digits: splits the clock into minutes and tenths, then emits the labels through func_00116248. */
int func_L05_002670A0(char *arg) {
    char buf[0x40];
    int k, flag, off, t, s9, s19, s20, s17, s18, s22, s23, s30, n, r, tt;
    char *g;
    char *b;

    if (*(int *)(arg + 0x6C) <= 0) {
        return 0;
    }
    flag = D_0015EE80;
    b = D_0013E15A + 0x4A6;
    t = *(int *)(b + 4);
    if (flag) {
        off = *(int *)&D_L05_0015FAD0 + 0xA;
    } else {
        off = *(int *)&D_L05_0015FAD0 + 0x12;
    }
    s9 = t - off;
    b = D_0013E15A + 0x4A6;
    t = *(int *)(b + 4);
    if (flag) {
        off = *(int *)&D_L05_0015FAEC + 0xA;
    } else {
        off = *(int *)&D_L05_0015FAEC + 0x12;
    }
    s19 = t - off;
    b = D_0013E15A + 0x4A6;
    t = *(int *)(b + 4);
    if (flag) {
        off = *(int *)&D_L05_0015FAFC + 0xA;
    } else {
        off = *(int *)&D_L05_0015FAFC + 0x12;
    }
    s20 = t - off;

    n = 60;
    g = D_0013E633 + 0xE1D;
    k = 100;
    r = flag ? 0xBB8 : 0xE10;
    tt = *(int *)(g + 0x894);
    s23 = tt / r;
    n = r / n;
    tt = tt - s23 * r;
    s22 = tt / n;
    tt = tt - s22 * n;
    s30 = (tt * k) / n;

    if (*(D_0013D355 + 0x13B)) {
        s17 = s19 + 1;
        func_00201960(*(int *)&D_L05_0015FACC, s9, *(int *)&D_L05_0015FAD4, *(int *)&D_L05_0015FAD8, *(int *)&D_L05_0015FADC);
        s18 = *(int *)&D_L05_0015FAE8;
        func_00116248(buf, D_L05_0015F868, func_001FE540_id(0x50A6), *(int *)(g + 0x8A8));
        s18 = s18 - (func_001F6600(buf, -1) >> 1);
        func_00116248(buf, D_L05_0015FAB0, func_001FE540_id(0x50A6));
        func_L00_001FB7F8((void *)(s18 + 1), (void *)s17, 0x80000000UL, buf, -1);
        func_L00_001FB7F8((void *)s18, (void *)s19, *(int *)&D_L05_0015FAE0, buf, -1);
        s18 = s18 + func_001F6600(buf, -1);
        func_00116248(buf, D_L05_0015FB08, *(int *)(g + 0x8A8));
        func_L00_001FB7F8((void *)(s18 + 1), (void *)s17, 0x80000000UL, buf, -1);
        func_L00_001FB7F8((void *)s18, (void *)s19, *(int *)&D_L05_0015FAE4, buf, -1);
    }
    s18 = *(int *)&D_L05_0015FAE8;
    func_00116248(buf, D_L05_0015FB10, func_001FE540_id(0x5246));
    s17 = s20 + 1;
    s18 = s18 - (func_001F6600(buf, -1) >> 1);
    func_00116248(buf, D_L05_0015FB20, func_001FE540_id(0x5246));
    func_L00_001FB7F8((void *)(s18 + 1), (void *)s17, 0x80000000UL, buf, -1);
    func_L00_001FB7F8((void *)s18, (void *)s20, *(int *)&D_L05_0015FAE0, buf, -1);
    s18 = s18 + func_001F6600(buf, -1);
    func_00116248(buf, D_L05_0015FB28, s23, s22, s30);
    func_L00_001FB7F8((void *)(s18 + 1), (void *)s17, 0x80000000UL, buf, -1);
    func_L00_001FB7F8((void *)s18, (void *)s20, *(int *)&D_L05_0015FAE4, buf, -1);
    return *(int *)(arg + 0x58);
}
