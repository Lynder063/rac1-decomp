/* NON_MATCHING func_L18_002D6B58 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: BYTES 2/432 (99.5% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Draws a 4-corner quad: phase from moby data, builds GS packet struct on stack, calls func_L00_001FD1D8.
 *   Best p4.c: 2 instructions differ (BYTES 2/432): which of the two lui'd bases gets $a0 vs $v0 (D_L18_001D3900 /
 *   Unblock: a way to order the two lui's without changing which s-reg holds which pointer.
 */
extern float func_001FA7D8(float x);
extern float func_001F9FA8(float);
extern int func_001FA8A8(int, int, float);
extern int func_001F4868(int);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_001FD1D8(void *, void *, int);
extern float D_L18_001D3900[];
extern float D_L18_001D3940[];
extern short D_L18_00161A00;
extern short D_L18_00161A04;
extern short D_L18_00161A08;
extern short D_L18_00161A0C;
extern short D_L18_00161A10;
extern short D_L18_00161A14;

// Draws a four-corner quad built from the moby's phase, with a GS packet of tag words.
void func_L18_002D6B58(char *m) {
    struct {
        float v[4][4];
        int c[4];
        float uv[4][2];
        long pk[4];
    } s;
    char *d = *(char **)(m + 0x78);
    int i;
    float *pv, *pa, *pb, *src, *tab;
    int *pc;
    int col;
    int cnt;
    float x;
    x = (float)(*(int *)(d + 0x2C) & 0xF) * 0.0625f * 6.28318f;
    x = func_001FA7D8(x);
    x = func_001F9FA8(x);
    col = func_001FA8A8(*(int *)&D_L18_00161A10, *(int *)&D_L18_00161A14, (x + 1.0f) * 0.5f);
    cnt = func_001F4868(0xD);
    s.pk[0] = 0;
    s.pk[1] = cnt;
    s.pk[2] = 0xFF9000000260LL;
    s.pk[3] = (long)*(int *)&D_L18_00161A00 | ((long)*(int *)&D_L18_00161A04 << 2) | ((long)*(int *)&D_L18_00161A08 << 4) | ((long)*(int *)&D_L18_00161A0C << 6) | 0x8000000000L;
    tab = D_L18_001D3940;
    src = D_L18_001D3900;
    pb = &s.uv[0][1];
    pa = &s.uv[0][0];
    pc = &s.c[0];
    pv = &s.v[0][0];
    i = 3;
    do {
        func_001F9BD8(pv, src, d + 0x10);
        src += 4;
        pv[3] = 1.0f;
        pv += 4;
        *pc = col;
        pc++;
        *pa = tab[0];
        *pb = tab[1];
        tab += 2;
        pa += 2;
        pb += 2;
    } while (--i >= 0);
    func_L00_001FD1D8(&s, 0, 0);
}
