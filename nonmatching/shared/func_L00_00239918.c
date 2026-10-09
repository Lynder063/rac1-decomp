/* NON_MATCHING func_L00_00239918 -- src/overlays/shared/hud_00235960.c
 * Best so far: SIZE ours 1572 / retail 1576, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   HUD element update: four corner calls to func_00200468 with the func_00200198 handle, then a loop over D_L00_0
 *   Remaining differences: the prologue order (retail sets the loop counter before the cnt check, ours after), and
 */
extern int D_L00_0015F6B0 MACRO_ADDR;
extern int D_L00_0015FB48 MACRO_ADDR;
extern void *D_L00_0015FB78 MACRO_ADDR;
extern short D_L00_0015F860;
extern short D_L00_0015F890;
extern short D_L00_0015F7F8;
extern short D_L00_0015F7FC;
extern short D_L00_0015F800;
extern short D_L00_0015F804;
extern short D_L00_0015F80C;
extern short D_L00_0015F86C;
extern short D_L00_0015F8A0;
extern short D_L00_0015F8A4;
extern short D_L00_0015F8B4;
extern short D_L00_0015F8B8;
extern short D_L00_0015F8BC;
extern char D_L00_0015F8C0[];
extern float func_001FA888(int);
extern float func_001F9FA8(float);
extern int func_001FA898(float);
extern float func_001F9F90(float);
extern float func_001FA748(float, float);
extern int func_00200198(int, int);
extern void func_00200468(int, int, int, int, int, int);
extern void func_L00_0023BAB8(char *, int, int, int, int, int);
extern int func_001FE540(int);
extern int func_00116810(int);
extern int func_001FA8A8(int, int, float);
extern int func_001F6EA8(int, int, int, int, int);
typedef struct { unsigned long long v[2]; } __attribute__((packed)) U16P;

/* HUD element update: lays out the element's four-corner quad, then draws its glyphs; returns the element's word at 0x58. */
int func_L00_00239918(char *e) {
    float f0, f20, f21, f22, f23;
    int x, y, h17, h16, r, b, s16, a, X, Y, i, off, o2, o3, cnt, k, v17, v16, r17, r18, r2, idx;
    char tmp[16];

    char *q = e + 0x70;
    f20 = func_001FA888(*(unsigned char *)q);
    f0 = func_001FA888(*(int *)&D_L00_0015F860);
    f22 = f20 / f0;
    if (1.0f < f22) f22 = 1.0f;
    else if (f22 < 0.0f) f22 = 0.0f;

    f20 = func_001FA888(*(unsigned char *)(q + 1));
    f0 = func_001FA888(*(int *)&D_L00_0015F860);
    f23 = f20 / f0;
    if (1.0f < f23) f23 = 1.0f;
    else if (f23 < 0.0f) f23 = 0.0f;

    {
        int m = D_L00_0015F6B0 % *(int *)&D_L00_0015F890;
        f20 = func_001FA888(m);
        f0 = func_001FA888(*(int *)&D_L00_0015F890);
        f20 = f20 / f0;
    }
    f20 = f20 * 6.2831802f;
    f20 = func_001F9FA8(f20 - 3.1415901f);
    f21 = f22 * 128.0f;
    a = func_001FA898(f21);
    f20 = f20 * 0.125f + 0.875f;
    b = func_001FA898(f21 * f20);

    x = *(int *)(e + 0x50);
    y = *(int *)(e + 0x54);
    func_L00_00236400((HudElem *)e, &x, &y);

    v17 = *(int *)&D_L00_0015F7F8;
    v16 = *(int *)&D_L00_0015F7FC;
    h17 = v17 / 2;
    h16 = v16 / 2;
    r = func_00200198(0xE934, 1);
    func_00200468(r, x, y, h17, h16, a);
    r = func_00200198(0xE934, 1);
    func_00200468(r, x + v17, y + v16, -h17, -h16, a);
    r = func_00200198(0xE934, 1);
    func_00200468(r, x + v17, y, -h17, h16, a);
    r = func_00200198(0xE934, 1);
    func_00200468(r, x, y + v16, h17, -h16, a);

    cnt = D_L00_0015FB48;
    if (cnt > 0) {
        f21 = 3.1415927f;
        for (i = 0, off = 0, o2 = 0, o3 = 0; i < cnt; i++, off += 0x1C, o2 += 0x1C, o3 += 0x1C, cnt = D_L00_0015FB48) {
            f0 = (float)cnt;
            f20 = func_001FA748(((float)i + (float)i) * f21 / f0 - f21, 1.5707964f);
            f0 = func_001F9F90(f20);
            f0 = *(float *)&D_L00_0015F86C * f0 * *(float *)&D_L00_0015F8A4;
            X = x + *(int *)&D_L00_0015F800 + (int)f0;
            f0 = func_001F9FA8(f20);
            Y = y + *(int *)&D_L00_0015F804 + (int)(*(float *)&D_L00_0015F86C * f0);

            if (*(int *)(e + 0x74) == i) {
                idx = *(int *)&D_L00_0015F80C;
                if (*(int *)(o3 + ((int *)D_L00_0015FB78)[idx]) != 0) {
                    r = func_00200198(0xE99C, 0);
                    func_00200468(r, X - 0x13, Y - 0x13, 0x26, 0x26, b);
                }
            }

            idx = *(int *)&D_L00_0015F80C;
            if (*(int *)(off + ((int *)D_L00_0015FB78)[idx]) != 0) {
                if (*(int *)(e + 0x74) != i) s16 = func_001FA898((float)a * *(float *)&D_L00_0015F8A0);
                else s16 = a;
                if (*(int *)((char *)&D_L00_0017E5D8_234fd0 + 0x2C) != 0) {
                    int *p = (int *)(off + ((int *)D_L00_0015FB78)[idx]);
                    r = func_00200198(p[0], p[1]);
                    func_L00_0023BAB8(e, r, X, Y, 1, s16);
                } else {
                    int *p = (int *)(off + ((int *)D_L00_0015FB78)[idx]);
                    r = func_00200198(p[0], p[1] + 4);
                    func_L00_0023BAB8(e, r, X, Y, 1, a);
                }
            }
        }
    }

    k = *(int *)(e + 0x74);
    if (k >= 0) {
        idx = *(int *)&D_L00_0015F80C;
        if (*(int *)(k * 0x1C + ((int *)D_L00_0015FB78)[idx]) != 0) {
            *(U16P *)tmp = *(U16P *)D_L00_0015F8C0;
            if (*(int *)(k * 0x1C + ((int *)D_L00_0015FB78)[idx]) != 0) {
                r18 = func_001FE540(*(int *)(tmp + k * 4));
                if (r18 != 0 && func_00116810(r18) != 0) {
                    f20 = f23 * f22;
                    r17 = func_001FA8A8(*(int *)&D_L00_0015F8B4, *(int *)&D_L00_0015F8B8, f20);
                    r2 = func_001FA8A8(0, 0x80000000, f20);
                    func_001F6EA8(x + *(int *)&D_L00_0015F800 - 1,
                                  y + *(int *)&D_L00_0015F8BC + *(int *)&D_L00_0015F804 - 1, r2, r18, -1);
                    func_001F6EA8(x + *(int *)&D_L00_0015F800,
                                  y + *(int *)&D_L00_0015F8BC + *(int *)&D_L00_0015F804, r17, r18, -1);
                }
            }
        }
    }
    return *(int *)(e + 0x58);
}
