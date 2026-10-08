/* NON_MATCHING func_L03_002D4560 -- src/overlays/l03_kerwan/vendor_002CB280.c
 * Best so far: SIZE ours 1928 / retail 1916, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Taxi (moby class 816) update on level 03: a 1916-byte state machine on m[0x20] (switch of 8 arms, three loops 
 *   Still different: the gp load of D_L03_00161B84 at the top of the first block (lw -0x517C($gp) placed one instr
 */
typedef int q128 __attribute__((mode(TI)));

extern int func_L03_002D44A0(void);
extern void func_L00_002676A0(void *, int);
extern void func_L01_00286530(void *p, float f, void *a, int b, int c, int d, int e, int g);
extern float func_L00_001FF860(float, float);
extern void func_0020D678(void *);
extern int func_00215570(void *, int);
extern int func_L03_002D4CE0(void *, int, void *);
extern float func_L00_0025CE58(void *, float, void *, float, float, float);
extern void func_L03_002D44C8(void *arg, int mode);
extern void func_L00_00234768(float *pos, int arg, float t);
extern int func_L00_002347B8(void);
extern int func_L01_00278FA8(void *);
extern float func_001F9D10(void *, void *);
extern float func_001F9D48(void *, void *);
extern void func_L03_002D5008(char *m);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_002617B0(char *, void *, void *, void *);
extern char *D_L03_001B08B0[];
extern unsigned char D_L03_001BB640[];
extern char D_0014171B[];
extern char D_0013E633[];
extern char D_0013A5E0[];
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern short D_L03_00161B84;
extern short D_L03_00161B88;
extern short D_L03_00161B90;
extern short D_L03_00161B98;
extern short D_0015EE84;
extern short D_L03_0015F674;

// Taxi (moby class 816) update on level 03: runs its state machine from m[0x20].
void func_L03_002D4560(char *m) {
    char *d = *(char **)(m + 0x78);
    float v0[4];
    float v1[4];
    float out[4];
    float *pos;
    float *pv1;
    int k;

    k = func_L03_002D44A0();
    func_L00_002676A0(m, k);
    pv1 = v1;

    if (*(int *)&D_L03_00161B84 != 0) {
        int i;
        for (i = 0; i < *(int *)D_L03_001B08B0[*(int *)(d + 0x94)]; i++) {
            { float fc = 0.3330000042915344f;
            func_L01_00286530((char *)D_L03_001B08B0[*(int *)(d + 0x94)] + 0x10 + i * 16,
                              fc, m, 4, 0x800000FF, 0x7F, 2, 0xFF);
            }
        }
        for (i = 0; i < *(int *)D_L03_001B08B0[*(int *)(d + 0xA8)]; i++) {
            { float fc = 0.3330000042915344f;
            func_L01_00286530((char *)D_L03_001B08B0[*(int *)(d + 0xA8)] + 0x10 + i * 16,
                              fc, m, 4, 0x8000FF00, 0x7F, 2, 0xFF);
            }
        }
        for (i = 0; i < *(int *)D_L03_001B08B0[*(int *)(d + 0xBC)]; i++) {
            { float fc = 0.3330000042915344f;
            func_L01_00286530((char *)D_L03_001B08B0[*(int *)(d + 0xBC)] + 0x10 + i * 16,
                              fc, m, 4, 0x80FF0000, 0x7F, 2, 0xFF);
            }
        }
    }

    *(q128 *)v0 = *(q128 *)(m + 0x10);
    *(q128 *)v1 = *(q128 *)(m + 0x40);

    switch ((unsigned char)m[0x20]) {
    case 0: {
        int a = *(int *)(d + 0x94);
        int sel = -1;
        int doit = 1;
        if (a == -1) {
            sel = *(int *)(d + 0xA8);
            if (sel == -1) doit = 0;
        } else {
            sel = a;
        }
        if (doit) {
            char *node = D_L03_001B08B0[sel];
            float f;
            *(q128 *)pos = *(q128 *)(node + 0x10);
            f = func_L00_001FF860(*(float *)(node + 0x20) - *(float *)(m + 0x10),
                                  *(float *)(node + 0x24) - *(float *)(m + 0x14));
            *(float *)(m + 0x48) = f;
        }
        m[0x30] = 0xFF;
        *(short *)(m + 0x32) = 0;
        *(int *)(d + 0x74) = -1;
        m[0x20] = 1;
        {
            unsigned short raw = *(unsigned short *)(m + 0xB2);
            int s = (short)raw;
            *(int *)(m + 0x94) = 0;
            if (D_L03_001BB640[s + 0x454] != 0) {
                func_0020D678(m);
                return;
            }
            {
                int bits = *(int *)((char *)D_0014171B + 0xAB75 + ((s >> 5) << 2) + (*(int *)&D_0015EE84 << 8));
                if ((bits >> (raw & 0x1F)) & 1) {
                    func_0020D678(m);
                    return;
                }
            }
        }
        break;
    }
    case 1: {
        int cnt = 0;
        int *p = (int *)(d + 0x80);
        if (*(int *)(d + 0x7C) == 0) break;
        while (cnt < 5) {
            int v = *p;
            int skip = 0;
            if (v == -1 && *(int *)(d + 0x74) != cnt) {
                skip = 1;
            } else {
                int r = func_00215570((char *)D_0013E633 + 0xE9D, v);
                if (r == 0 && *(int *)(d + 0x74) != cnt) skip = 1;
            }
            if (skip) {
                cnt++;
                p++;
                continue;
            }
            {
                int *pm = *(int **)(m + 0x24);
                int idx;
                *(int *)(m + 0x94) = *(int *)((char *)pm + 0x10);
                idx = *(int *)(d + 0x94 + cnt * 4);
                if (idx == -1) idx = *(int *)(d + 0xA8 + cnt * 4);
                if (idx != -1) {
                    char *node = D_L03_001B08B0[idx];
                    float f;
                    *(q128 *)pos = *(q128 *)(node + 0x10);
                    f = func_L00_001FF860(*(float *)(node + 0x20) - *(float *)(m + 0x10),
                                          *(float *)(node + 0x24) - *(float *)(m + 0x14));
                    *(float *)(m + 0x48) = f;
                }
                m[0xBC] = cnt;
                m[0x20] = 2;
                *(short *)(m + 0x32) = 0x80;
                *(int *)(d + 0x64) = 1;
                *(float *)(d + 0x60) = *(float *)&D_L03_00161B88 * D_0015EE6C;
                *(int *)(d + 0x74) = -1;
                break;
            }
        }
        break;
    }
    case 2: {
        int idx = (unsigned char)m[0xBC];
        int v = *(int *)(d + 0x94 + idx * 4);
        if (v != -1) {
            if (func_L03_002D4CE0(m, v, d + 0x78) == 0) break;
        }
        m[0x20] = 3;
        *(int *)(d + 0xE4) = -1;
        break;
    }
    case 3: {
        float k22 = 0.01745329238474369f;
        float k21 = 12.566370964050293f;
        float a13 = *(float *)&D_L03_00161B90 * k22 * D_0015EE70;
        float z = D_0015EE6C * k21;
        float b13;
        func_L00_0025CE58(m + 0x44, 0.0f, d + 0x6C, a13, a13, z);
        b13 = *(float *)&D_L03_00161B98 * k22 * D_0015EE70;
        z = D_0015EE6C * k21;
        func_L00_0025CE58(m + 0x40, 0.0f, d + 0x70, b13, b13, z);
        if (*(int *)((char *)D_0013E633 + 0xE1D + 0x2FC) != (int)m) break;
        if (*(short *)((char *)D_0013E633 + 0xE1D + 0x30E) != 0) break;
        func_L03_002D44C8(m, *(int *)(d + 0xD0 + ((unsigned char)m[0xBC] << 2)));
        if ((*(int *)((char *)D_0013A5E0 + 0x2604) & 0x10) == 0) break;
        if (*(int *)&D_L03_0015F674 != 8) break;
        func_L00_00234768(pos, 0, *(float *)(m + 0x48));
        m[0x20] = 4;
        *(int *)(d + 0x64) = 1;
        break;
    }
    case 4:
        if (func_L00_002347B8() == 0) m[0x20] = 5;
        break;
    case 5: {
        int idx;
        if (func_L01_00278FA8(m)) {
            *(short *)((char *)D_0013E633 + 0xE1D + 0x1F4) = 4;
            *(short *)((char *)D_0013E633 + 0xE1D + 0x1F2) = 4;
        }
        idx = (unsigned char)m[0xBC];
        if (func_L03_002D4CE0(m, *(int *)(d + 0xA8 + idx * 4), d + 0x78) != 0) m[0x20] = 6;
        break;
    }
    case 6: {
        int idx;
        float k22 = 0.01745329238474369f;
        float k21 = 12.566370964050293f;
        float a13 = *(float *)&D_L03_00161B90 * k22 * D_0015EE70;
        float z = D_0015EE6C * k21;
        float b13;
        func_L00_0025CE58(m + 0x44, 0.0f, d + 0x6C, a13, a13, z);
        b13 = *(float *)&D_L03_00161B98 * k22 * D_0015EE70;
        z = D_0015EE6C * k21;
        func_L00_0025CE58(m + 0x40, 0.0f, d + 0x70, b13, b13, z);
        idx = (unsigned char)m[0xBC];
        if (*(int *)(d + 0xBC + idx * 4) != -1) {
            if (func_001F9D10(pos, (char *)D_0013E633 + 0xE9D) > 15.0f) {
                *(int *)(d + 0x64) = 1;
                m[0x20] = 7;
                break;
            }
            if (*(int *)(d + 0xBC + idx * 4) != -1) break;
        }
        if (func_001F9D48(pos, (char *)D_0013E633 + 0xE9D) > 5.0f) m[0x20] = 1;
        break;
    }
    case 7: {
        int idx = (unsigned char)m[0xBC];
        if (func_L03_002D4CE0(m, *(int *)(d + 0xBC + idx * 4), d + 0x78) == 0) break;
        m[0x20] = 1;
        *(short *)(m + 0x32) = 0;
        *(int *)(m + 0x94) = 0;
        break;
    }
    default:
        break;
    }

    func_L03_002D5008(m);
    func_001F9BF0(out, pos, v0);
    func_L00_002617B0(d + 0x20, out, pv1, m + 0x40);
}
