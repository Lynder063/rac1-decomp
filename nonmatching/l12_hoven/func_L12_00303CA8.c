/* NON_MATCHING func_L12_00303CA8 -- src/overlays/l12_hoven/vendor_002EDAA0.c
 * Best so far: SIZE ours 912 / retail 908, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * No longer builds in its file (COMPILE failed, 2026-10-09): match its declarations to the file's first.
 * What the last attempts found:
 *   Hoven vendor moby update: seeds three vector tables from data+0x2300 and the gp globals, then for four rings (
 */
extern void func_001FA218(void *, void *);
extern void func_001FA540(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001F4868(int);
extern float func_001FA888(int);
extern int func_001FA8A8(int, int, float);
extern void func_L00_001FD1D8(void *, void *, int);
extern char D_L12_001FB870[] MACRO_ADDR;
extern float D_L12_001FB7D0[] MACRO_ADDR;
extern float D_L12_001FB7F0[] MACRO_ADDR;
extern int D_L12_00161E84 MACRO_ADDR;
extern int D_L12_00161E88 MACRO_ADDR;
extern short D_L12_00161E4C;
extern short D_L12_00161E50;
extern short D_L12_00161E54;
extern short D_L12_00161E58;
extern short D_L12_00161E6C;
extern short D_L12_00161E70;
extern short D_L12_00161E74;
extern short D_L12_00161E78;

// Hoven vendor moby update: seeds three vector tables, then walks the four data rings and refreshes their angles.
void func_L12_00303CA8(char *moby) {
    unsigned char fr[0x2B0];
    char *data;
    char *pv;
    char *cp;
    char *q;
    char *tb;
    char *base160;
    char *base;
    int *tbl;
    float *src;
    float *dst;
    float f0, f1, f12, f20, f21;
    int i, j, k, m, idx, t, r;

    data = *(char **)(moby + 0x78);
    pv = moby + 0x10;
    func_001FA218(fr + 0x120, moby + 0x40);
    f20 = 1.0f;
    base160 = fr + 0x160;
    q = fr + 0x190;
    cp = base160;
    tb = D_L12_001FB870;
    for (i = 0; i < 2; i++) {
        func_001FA218(cp, tb);
        func_001FA540(cp, fr + 0x120, cp);
        if (!(i & 1) && *(int *)(data + 0x2314) != -1) {
            qcopy(fr + 0x2A0, (char *)(D_L12_00160058 + (*(int *)(data + 0x2314) << 8) + 0x10));
        } else {
            qcopy(fr + 0x2A0, pv);
        }
        func_001F9BD8(q, q, fr + 0x2A0);
        *(float *)(cp + 0x3C) = f20;
        tb += 0x10;
        q += 0x40;
        cp += 0x40;
    }

    tbl = (int *)(data + 0x2300);
    t = func_001F4868(0xE);
    *(s64 *)(fr + 0x108) = (s64)t;
    *(s64 *)(fr + 0x118) = (s64)*(int *)&D_L12_00161E4C | ((s64)*(int *)&D_L12_00161E50 << 2)
        | ((s64)*(int *)&D_L12_00161E54 << 4) | ((s64)*(int *)&D_L12_00161E58 << 6) | ((s64)0x8000 << 24);
    *(s64 *)(fr + 0x110) = ((s64)0xFF90 << 32) | 0x260;
    *(s64 *)(fr + 0x100) = 0;

    dst = (float *)(fr + 0xE4);
    src = D_L12_001FB7D0 + 1;
    for (k = 3; k >= 0; k--) {
        *dst = *src;
        src += 2;
        dst += 2;
    }

    for (idx = 0; idx < 4; idx++) {
        if (*(int *)&D_L12_00161E88 < tbl[idx]) {
            f20 = func_001FA888(tbl[idx] - D_L12_00161E88);
            f0 = func_001FA888(D_L12_00161E84 - D_L12_00161E88);
            f12 = f20 / f0;
        } else {
            f20 = func_001FA888(tbl[idx]);
            f0 = func_001FA888(D_L12_00161E88);
            f12 = 1.0f - f20 / f0;
        }
        *(int *)(fr + 0x2B8) = idx + 1;
        r = func_001FA8A8(*(int *)&D_L12_00161E6C, *(int *)&D_L12_00161E70, f12);
        *(int *)(fr + 0xD0) = r;
        *(int *)(fr + 0xDC) = r;
        *(int *)(fr + 0xD8) = r;
        *(int *)(fr + 0xD4) = r;

        f20 = 0.0f;
        if (*(int *)(data + 0x232C) - 1 > 0) {
            f21 = 1.0f;
            base = data + idx * 0x460;
            f0 = *(float *)&D_L12_00161E74;
            j = 0;
            do {
                f20 = f20 + f0;
                if (f21 < f20) f20 -= f21;
                f1 = *(float *)&D_L12_00161E78;
                src = D_L12_001FB7D0;
                dst = (float *)(fr + 0xE0);
                for (k = 3; k >= 0; k--) {
                    *dst = *src + f20 + f1;
                    src += 2;
                    dst += 2;
                }
                t = j + 1;
                q = fr + 0x90;
                for (m = 0; m < 4; m++) {
                    func_001F9BD8(q, D_L12_001FB7F0 + 4 * m, base + ((j + (m >> 1)) << 4));
                    q += 0x10;
                }
                cp = base160;
                for (k = 1; k >= 0; k--) {
                    func_L00_001FD1D8(fr + 0x90, cp, 0);
                    cp += 0x40;
                }
                j = t;
            } while (j < *(int *)(data + 0x232C) - 1);
        }
    }
}
