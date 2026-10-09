/* NON_MATCHING func_L10_002E9978 -- src/overlays/l10_orxon/vendor_002E30F8.c
 * Best so far: SIZE ours 1264 / retail 1268, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped at budget (10 runs, not EXACT). Best: p4.c (1264 vs 1268 bytes; the hero block E is written inline as 
 *   Unmatched: the state dispatch layout (retail puts the state-0 arm out of line and repeats the epilogue per ret
 *   Would unblock: a rule for where GCC 2.95 puts an early-return arm for a two-way state test, and whether retail
 */
extern int func_00215570(void *arg0, int arg1);
extern int func_L00_00203F20(int a, int b);
extern float func_001F9D48(void *, void *);
extern int func_001F9850(int);
extern int D_L10_0015F6A8 MACRO_ADDR;
extern char *D_L10_00160058_c __asm__("D_L10_00160058") MACRO_ADDR;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern int D_0015EFA4 MACRO_ADDR;
extern char D_L10_00179910[] MACRO_ADDR;
extern char *D_L10_00160064 MACRO_ADDR;
extern short D_L10_00161FB8;
extern unsigned char D_0013E633[];
extern unsigned char D_0014171B_t[] __asm__("D_0014171B") NOT_SDA;
extern unsigned char D_0013D5CA[];
extern unsigned char D_0013D605[];
extern unsigned char D_0013D355[];

/* Level 10 moby update (class 1344): tracks nearby targets and fires the level's event messages. */
void func_L10_002E9978(char *m) {
    char *d = *(char **)(m + 0x78);
    char *p;
    unsigned char *s;
    unsigned char *pb;
    char *e;
    unsigned int v;
    int r, flag, q, sub, idx, w;
    float f, f2;

    r = func_00215570((D_0013E633 + 0xE9D), *(int *)(d + 0x1C));
    if (r) *(int *)&D_L10_00161FB8 = 1;
    else *(int *)&D_L10_00161FB8 = 0;

    if (*(unsigned char *)(m + 0x20) == 0) {
        m[0x20] = 1;
        *(unsigned char *)(m + 0x30) = 0xFF;
    } else {
    if (*(unsigned char *)(m + 0x20) != 1) return;

    r = func_00215570((D_0013E633 + 0xE9D), *(int *)d);
    if (r != 0) {
        v = *(unsigned int *)((D_0013E633 + 0xE9D) + 0x200C);
        if ((v < 2 || v == 9) && *(int *)D_L10_00179910 == 0 &&
            *(int *)(D_L10_00179910 + 0x24) == -1 &&
            *(unsigned short *)(D_0014171B_t + 0x4F5) == 0)
            func_L00_00203F20(0x2710, 0x35);
    }

    r = func_00215570((D_0013E633 + 0xE9D), *(int *)(d + 4));
    if (r != 0) {
        v = *(unsigned int *)((D_0013E633 + 0xE9D) + 0x200C);
        if ((v < 2 || v == 9) && *(int *)D_L10_00179910 == 0 &&
            *(int *)(D_L10_00179910 + 0x24) == -1) {
            pb = D_0013D355 + 0x13B;
            if (pb[4] == 0) {
                if (*(unsigned short *)(D_0014171B_t + 0x505) == 0)
                    func_L00_00203F20(0x2712, 0x37);
            } else if (pb[5] == 0) {
                if (*(unsigned short *)(D_0014171B_t + 0x50D) == 0)
                    func_L00_00203F20(0x2713, 0x38);
            }
        }
    }

    if (D_L10_0015F6A8 == 0) {
        if (D_0013D605[7] != 0 && *(int *)D_L10_00179910 == 0 &&
            *(int *)(D_L10_00179910 + 0x24) == -1 &&
            *(unsigned short *)(D_0014171B_t + 0x4FD) == 0)
            func_L00_00203F20(0x2711, 0x36);
    }

    r = func_00215570((D_0013E633 + 0xE9D), *(int *)(d + 8));
    if (r != 0) {
        v = *(unsigned int *)((D_0013E633 + 0xE9D) + 0x200C);
        if ((v < 2 || v == 9) && D_0013D5CA[9] == 0 &&
            *(int *)D_L10_00179910 == 0 &&
            *(int *)(D_L10_00179910 + 0x24) == -1 &&
            *(unsigned short *)(D_0014171B_t + 0x62D) == 0)
            func_L00_00203F20(0x2715, 0x5C);
    }

    flag = 0;
    for (p = D_L10_00160064; p != 0; p = *(char **)(p + 0x28)) {
        if (*(short *)(p + 0xA6) == 0x359 && *(unsigned char *)(p + 0x20) != 1)
            flag = 1;
    }
    if (flag == 0) return;

    if (*(int *)(d + 0x10) != -1) {
        f = func_001F9D48((D_0013E633 + 0xE9D), D_L10_00160058_c + (*(int *)(d + 0x10) << 8) + 0x10);
        if (f < 15.0f) {
            w = *(int *)(d + 0x14);
            if (w != -1) {
                f = func_001F9D48((D_0013E633 + 0xE9D), D_L10_00160058_c + (w << 8) + 0x10);
                if (f < 15.0f && *(unsigned short *)(D_0014171B_t + 0x69D) == 0)
                    func_L00_00203F20(0x2717, 0x6A);
            }
        }
    }

    if (flag == 0) return;
    r = func_00215570((D_0013E633 + 0xE9D), *(int *)(d + 0x18));
    if (r == 0) return;
    idx = *(int *)(d + 0x20);
    if (idx == -1) return;
    e = D_L10_00160058_c + (idx << 8);
    if (*(short *)(e + 0xA6) != 0x3F7) return;
    if (*(unsigned char *)(e + 0x20) == 4) return;
    s = D_0014171B_t + 0x34D;
    if (*(unsigned short *)(s + 0x358) != 0) {
        sub = func_001F9850(D_0015EFA4) - *(unsigned short *)(s + 0x35A) * 600;
        f2 = (float)func_001F9850(0x12);
        if ((int)(f2 * 60.0f) < sub || *(unsigned short *)(s + 0x35A) * 600 == 0) {
            func_L00_00203F20(0x2718, 0x6B);
            return;
        }
        if (*(unsigned short *)(s + 0x35A) < func_001F9850(D_0015EFA4) / 600) {
            *(short *)(s + 0x35A) = func_001F9850(D_0015EFA4) / 600;
        }
        return;
    }
    *(unsigned short *)(s + 0x358) = *(unsigned short *)(s + 0x358) + 1;
    q = func_001F9850(D_0015EFA4) / 600;
    if (*(unsigned short *)(s + 0x35A) < q) {
        *(short *)(s + 0x35A) = func_001F9850(D_0015EFA4) / 600;
    }
    *(int *)(s + 0x35C) |= (1 << D_0015EE84_m) | 0x80000000;
}
    }
