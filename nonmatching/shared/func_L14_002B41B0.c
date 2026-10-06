/* NON_MATCHING func_L14_002B41B0 -- src/overlays/shared/vendor_002B2A28.c
 * Best so far: BYTES 2/772 (99.7% of the bytes match), checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
extern char D_0013E633_x[] __asm__("D_0013E633");
extern float D_0015EE6C_x __asm__("D_0015EE6C") MACRO_ADDR;
extern short D_L14_00161590;
extern void func_L00_0025E590(void *, void *);
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern void func_L00_002E34F0(char *);
extern int func_001F9850(int);
extern float func_L00_001FF860(float, float);
extern void func_L00_0025D5B0_i(void *, void *, float, int, int, int) __asm__("func_L00_0025D5B0");
extern int func_001FA898(float);
extern void func_L00_002584A8(void *, int, int);
extern void func_L00_0025E4B0(void *m, short *p);

/* Enemy hit reaction: takes damage from attacks (not from its own kind), staggers or is knocked away and dies. */
void func_L14_002B41B0(char *m) {
    char *d = *(char **)(m + 0x78);
    int hit;
    float dmg;
    char *h;
    int r;
    if (((unsigned char *)m)[0x20] == 0 || ((unsigned char *)m)[0x20] == 0xB) {
        if (((unsigned char *)m)[0x20] == 0xB) {
            ((unsigned char *)m)[0xA4] = 0xFF;
            func_L00_0025E590(m, d + 0xC0);
        }
        return;
    }
    dmg = 0.0f;
    h = func_L00_0025B478(m, 0x330000, 0);
    if (h != 0 && *(char **)(h + 0x20) != 0
        && (*(short *)(*(char **)(h + 0x20) + 0xA6) == *(short *)(m + 0xA6) || *(short *)(*(char **)(h + 0x20) + 0xA6) == 0x370)) {
        h = 0;
    }
    r = func_L00_0025B4D0(m, h, d + 0x20, 0, &hit, &dmg, 0, 4);
    if (hit != 1 && ((unsigned char *)m)[0x20] != 0xB) {
        *(float *)(d + 0x20) -= dmg;
        if (*(float *)(d + 0x20) <= 0.0f) r = 1;
        switch (r) {
        case 3: case 4: case 5: case 6: case 7: case 8: case 9: case 10:
        {
            char *p60 = d + 0x60;
            int t;
            float e, g, k;
            func_L00_002E34F0(m);
            m[0x20] = 0xA;
            t = func_001F9850(0x3C);
            e = D_0015EE6C_x;
            g = *(float *)&D_L14_00161590 * e;
            k = e * 8.0f;
            *(short *)(d + 0x26) = t;
            *(float *)(d + 0x78) = k;
            *(float *)(d + 0x7C) = g;
            *(float *)(d + 0xB0) = 11.0f;
            *(float *)(d + 0xB4) = 29.0f;
            func_L00_0025D5B0_i(m, p60, func_L00_001FF860(*(float *)(h + 0x10), *(float *)(h + 0x14)), 7, 1, 0);
        }
            ((unsigned char *)d)[0xC7] = 0xFA;
            break;
        case 1: case 2: {
            float y;
            if (*(int *)(h + 0x24) & 0x800000) {
                m[0x20] = 0xC;
            } else {
                m[0x20] = 0xB;
            }
            *(unsigned short *)(m + 0x34) &= 0xEFFF;
            {
                int r80 = func_001FA898(*(float *)(d + 0x88) * 1024.0f);
                float k = D_0015EE6C_x * 10.0f;
                *(float *)(d + 0x88) = 0.3f;
                *(float *)(d + 0x78) = k;
                *(float *)(d + 0x7C) = k;
                *(float *)(d + 0xB0) = 9.0f;
                *(int *)(d + 0x80) = r80;
                *(float *)(d + 0xB4) = 15.0f;
            }
            y = func_L00_001FF860(*(float *)(h + 0x10), *(float *)(h + 0x14));
            func_L00_0025D5B0_i(m, d + 0x60, y, 8, func_001F9850(5), 0);
            ((unsigned char *)d)[0xC7] = 0xFA;
            if (((unsigned char *)D_0013E633_x)[0x2EC1] == 2) {
                func_L00_002584A8(m, 0x200, -1);
            } else {
                func_L00_002584A8(m, 0, -1);
            }
            *(int *)(m + 0x94) = 0;
            break;
        }
        case 0: case 11:
            break;
        }
        func_L00_0025E4B0(m, (short *)(d + 0xC0));
    }
    ((unsigned char *)m)[0xA4] = 0xFF;
    func_L00_0025E590(m, d + 0xC0);
}
