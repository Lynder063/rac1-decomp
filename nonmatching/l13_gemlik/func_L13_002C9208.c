/* NON_MATCHING func_L13_002C9208 -- src/overlays/l13_gemlik/vendor_002C2638.c
 * Best so far: SIZE ours 1112 / retail 1108, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 13 moby update (classes 127, 128, 159): six-state machine on the state byte at 0x20 with a jump table; s
 *   Left: the state-4 arm is laid out body-first in ours (retail tests the matched arm first with a bnel to the bo
 *   Unblock: a way to get retail's arm order for the state-4 test without an extra saved register.
 */
extern int D_0015EE84 MACRO_ADDR;
extern char D_0014171B[];
extern char *D_L13_00160058 MACRO_ADDR;
extern void func_0022ED80(int, int, int);
extern float func_001FA748(float, float);
extern float func_001FA790(float, float);

/* Level 13 moby update (classes 127, 128, 159): six-state machine on the state byte at 0x20. */
void func_L13_002C9208(unsigned char *m) {
    char *d = *(char **)(m + 0x78);
    unsigned int st;
    unsigned char *g;
    int v;
    float f2c;

    unsigned char b0 = m[0xB0];
    if (b0 != 0xFF) {
        unsigned char t = *(unsigned char *)((char *)D_0014171B + 0xAA35 + b0 + (D_0015EE84 << 4));
        if (t != 0xFF) {
        } else {
            *(int *)(d + 0x10) = -1;
        }
    }
    st = m[0x20];
    if (st < 6) {
        switch (st) {
        case 0:
            qcopy(d, m + 0x40);
            m[0x20] = *(int *)(d + 0x3C) != 0 ? 2 : 1;
            *(int *)(d + 0xC) = 0;
            if (*(float *)(d + 0xC) < *(float *)(d + 0x38))
                *(float *)(m + 0x2C) = *(float *)(*(char **)(m + 0x24) + 0x24) * *(float *)(d + 0x38);
            break;
        case 1:
            v = *(int *)(d + 0x10);
            if (v != -1) {
                g = (unsigned char *)D_L13_00160058 + (v << 8);
                if (g != 0 && g[0x20] != 0xFE && g[0x20] != 0xFD && g[0x20] != *(int *)(d + 0x14)) return;
            }
            if (*(int *)(d + 0x30) != -1) func_0022ED80(*(int *)(d + 0x30), 0, (int)m);
            *(int *)(d + 0xC) = 0;
            m[0x20] = 2;
            break;
        case 2:
            v = *(int *)(d + 0x10);
            if (v != -1) {
                g = (unsigned char *)D_L13_00160058 + (v << 8);
                if (g != 0 && g[0x20] != 0xFE && g[0x20] != 0xFD && g[0x20] == *(int *)(d + 0x18)) {
                    if (*(int *)(d + 0x30) != -1) func_0022ED80(*(int *)(d + 0x30), 0, (int)m);
                    m[0x20] = 4;
                    break;
                }
            }
            {
                float f20 = *(float *)(d + 0x2C) * 60.0f;
                float f22 = 1.0f;
                float f21 = 0.017453292f;
                float f13;
                f20 = f22 / f20;
                f13 = *(float *)(d + 0x1C) * f21 * f20;
                *(float *)(d + 0xC) = *(float *)(d + 0xC) + f20;
                *(float *)(m + 0x40) = func_001FA748(*(float *)(m + 0x40), f13);
                *(float *)(m + 0x44) = func_001FA748(*(float *)(m + 0x44), *(float *)(d + 0x20) * f21 * f20);
                *(float *)(m + 0x48) = func_001FA748(*(float *)(m + 0x48), *(float *)(d + 0x24) * f21 * f20);
                if (1.0f <= *(float *)(d + 0xC)) {
                    *(float *)(m + 0x40) = func_001FA748(*(float *)(d + 0x0), *(float *)(d + 0x1C) * f21);
                    *(float *)(m + 0x44) = func_001FA748(*(float *)(d + 0x4), *(float *)(d + 0x20) * f21);
                    *(float *)(m + 0x48) = func_001FA748(*(float *)(d + 0x8), *(float *)(d + 0x24) * f21);
                    *(float *)(d + 0xC) = 1.0f;
                    m[0x20] = 3;
                    if (*(int *)(d + 0x34) != -1) func_0022ED80(*(int *)(d + 0x30), 0, (int)m);
                }
            }
            break;
        case 3:
            v = *(int *)(d + 0x10);
            if (v == -1) return;
            g = (unsigned char *)D_L13_00160058 + (v << 8);
            if (g == 0 || g[0x20] == 0xFE || g[0x20] == 0xFD) return;
            if (g[0x20] != *(int *)(d + 0x18)) return;
            *(float *)(d + 0xC) = 1.0f;
            if (*(int *)(d + 0x30) != -1) func_0022ED80(*(int *)(d + 0x30), 0, (int)m);
            m[0x20] = 4;
            break;
        case 4:
            f2c = *(float *)(d + 0x2C);
            v = *(int *)(d + 0x10);
            if (v != -1) {
                g = (unsigned char *)D_L13_00160058 + (v << 8);
                if (g != 0 && g[0x20] != 0xFE && g[0x20] != 0xFD && g[0x20] != *(int *)(d + 0x14)) {
                    float f20 = 1.0f / (f2c * 60.0f);
                    float f21 = 0.017453292f;
                    float f13 = *(float *)(d + 0x1C) * f21 * f20;
                    *(float *)(d + 0xC) = *(float *)(d + 0xC) - f20;
                    *(float *)(m + 0x40) = func_001FA790(*(float *)(m + 0x40), f13);
                    *(float *)(m + 0x44) = func_001FA790(*(float *)(m + 0x44), *(float *)(d + 0x20) * f21 * f20);
                    *(float *)(m + 0x48) = func_001FA790(*(float *)(m + 0x48), *(float *)(d + 0x24) * f21 * f20);
                    if (!(*(float *)(d + 0xC) <= 0.0f)) return;
                    *(float *)(m + 0x40) = *(float *)(d + 0x0);
                    *(float *)(m + 0x44) = *(float *)(d + 0x4);
                    *(float *)(m + 0x48) = *(float *)(d + 0x8);
                    *(float *)(d + 0xC) = 0.0f;
                    if (*(int *)(d + 0x30) != -1) func_0022ED80(*(int *)(d + 0x34), 0, (int)m);
                    m[0x20] = 1;
                    break;
                }
            }
            if (*(int *)(d + 0x30) != -1) func_0022ED80(*(int *)(d + 0x30), 0, (int)m);
            m[0x20] = 2;
            break;
        case 5:
            break;
        }
    }
}
