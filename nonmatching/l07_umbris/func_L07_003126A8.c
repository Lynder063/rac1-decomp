/* NON_MATCHING func_L07_003126A8 -- src/overlays/l07_umbris/vendor_002CE470.c
 * Best so far: SIZE ours 2216 / retail 2212, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L07_003126A8 (2212 bytes): level 07 update function for moby class 1069. A state machine (switch on moby[
 *   Best candidate: p9.c (run 12). Size 2200 vs 2212 (12 bytes short). Registers now match (moby in $19, data poin
 *   Left: (1) case 0 scheduling: retail sets moby[0x20]=1 before the 0xC8 store and loads 0xFF later; (2) case 5: 
 *   Unblock: a way to keep the $f20 start load and a memory re-read of the same word past the call block without t
 */
extern void func_001F9C30(void *, void *, float);
extern int func_001160D8(void);
extern float func_001FA748(float, float);
extern void func_L01_0026F040(int, int);
extern float func_001FA888(int);
extern float func_L00_0025F368(float);
extern float func_001F9FA8(float);
extern float func_001F9F90(float);
extern int func_001F9908(int *arg0);
extern void func_0020D678(void *);
extern float func_002140F8(float, float);
extern float func_00214158(void);
extern int func_0022ED80(int, int, int);
extern int func_001F9850(int);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9C78(void *, void *);
extern void func_L07_00289960(void *, void *, void *, void *, void *);
extern float func_L00_0025CC58(float *, int, float, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_002617B0(void *, void *, void *, void *);
extern char *D_L07_00160058 MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern char D_0013E633[];
extern char D_0014171B[];

/* Level 07 update function for moby class 1069: runs its state machine and moves its parts. */
void func_L07_003126A8(unsigned char *m) {
    float v0[4];
    float v1[4];
    float v2[4];
    float v3[4];
    float v4[4];
    float v5[4];
    float v6[4];
    float f21;
    float f22;
    unsigned char *d = *(unsigned char **)(m + 0x78);
    unsigned char *a = 0;
    unsigned char *q = 0;
    int state;

    qcopy(v0, m + 0x10);
    func_001F9C30(v1, m + 0x10, -1.0f);
    qcopy(v2, m + 0x40);
    if (*(int *)(d + 0xA0) != -1) {
        a = (unsigned char *)D_L07_00160058 + (*(int *)(d + 0xA0) << 8);
        q = *(unsigned char **)(a + 0x78);
    }
    if (m[0xBC] == 2) {
        m[0x20] = 2;
        m[0xBC] = 3;
        *(int *)(d + 0xAC) = d[0xBD];
    }
    state = m[0x20];

    switch (state) {
    case 0:
        *(int *)(d + 0x20) = 0;
        *(short *)(d + 0x24) = 0;
        d[0x28] = 4;
        *(short *)(d + 0x3E) = 0xD;
        if (func_001160D8() & 1) {
            *(float *)(m + 0x48) = func_001FA748(*(float *)(m + 0x48), 3.1415927f);
        }
        *(float *)(d + 0xA4) = *(float *)(m + 0x40);
        *(int *)(d + 0xC8) = -1;
        *(float *)(d + 0xA8) = *(float *)(m + 0x44);
        m[0x20] = 1;
        m[0xBC] = 0;
        if (m[0xB0] != 0xFF
            && ((unsigned char *)(D_0014171B + 0xAA35))[m[0xB0] + (D_0015EE84 << 4)] == 0xFF) {
            *(float *)(m + 0x18) = *(float *)(m + 0x18) - 5.0f;
            if (d[0xBC] == 0) {
                func_0020D678(m);
                return;
            }
            m[0x20] = 5;
        }
        break;

    case 1:
        if (m[0xBC] == 1) {
            float k;
            float t;
            if (*(int *)(d + 0xAC) == 0) {
                *(int *)(d + 0xAC) = func_001160D8() % 10;
            }
            if (d[0xBE] != 0) {
                func_L01_0026F040(m[0x21], 2);
            }
            k = 0.017453292f;
            t = func_L00_0025F368(func_001FA888(*(int *)(d + 0xAC)) * 0.75f);
            t = func_001F9FA8(t);
            *(float *)(m + 0x40) = func_001FA748(*(float *)(d + 0xA4), t * k);
            t = func_L00_0025F368(func_001FA888(*(int *)(d + 0xAC)) * 0.89f);
            t = func_001F9F90(t);
            *(float *)(m + 0x44) = func_001FA748(*(float *)(d + 0xA8), t * k);
        }
        break;

    case 2:
        {
            float k = 0.017453292f;
            float t;
            int c3;
            t = func_L00_0025F368(func_001FA888(*(int *)(d + 0xAC)) * 0.75f);
            t = func_001F9FA8(t);
            *(float *)(m + 0x40) = func_001FA748(*(float *)(d + 0xA4), t * k);
            t = func_L00_0025F368(func_001FA888(*(int *)(d + 0xAC)) * 0.89f);
            t = func_001F9F90(t);
            *(float *)(m + 0x44) = func_001FA748(*(float *)(d + 0xA8), t * k);
            if (func_001F9908((int *)(d + 0xAC)) != 0) {
                c3 = 0xC;
                if (d[0xBE] != 0) {
                    q[0x19D] = d[0xBF];
                    a[0x20] = c3;
                }
                m[0x20] = 3;
            }
        }
        break;

    case 3:
        {
            float inc = (1.3962634f - *(float *)(m + 0x40)) * 0.05f;
            float r;
            float t;
            *(float *)(m + 0x40) = *(float *)(m + 0x40) + inc;
            r = func_001F9FA8(inc);
            t = r * 3.1f;
            *(float *)(m + 0x18) = *(float *)(m + 0x18) - t;
            *(float *)(d + 0xB0) = *(float *)(d + 0xB0) - *(float *)(d + 0xB4) * D_0015EE70;
            *(float *)(m + 0x18) = *(float *)(m + 0x18) + *(float *)(d + 0xB0);
            if (*(float *)(m + 0x18) < *(float *)(d + 0xB8) - 15.0f) {
                if (d[0xBC] == 0) {
                    func_0020D678(m);
                    return;
                }
                *(int *)(d + 0xB0) = 0;
                m[0x20] = 4;
            }
        }
        break;

    case 4:
        if (q[0xEF] >= 2 || a[0x20] < 0xC) {
            float r;
            float x1;
            float x2;
            r = func_002140F8(D_0015EE6C, D_0015EE6C * 4.0f);
            *(float *)(d + 0xB0) = r;
            x1 = func_00214158();
            *(float *)(d + 0xC0) = x1;
            x2 = func_00214158();
            *(float *)(d + 0xC4) = x2;
            m[0x20] = 5;
            *(int *)(m + 0x40) = 0;
            *(int *)(m + 0x44) = 0;
            *(int *)(d + 0xAC) = 0;
        }
        break;

    case 5:
        {
            unsigned char *p = (unsigned char *)(D_0013E633 + 0xE1D);
            float f20v = *(float *)(d + 0xB8);
            int r;
            f21 = *(float *)(m + 0x18) + *(float *)(d + 0xB0);
            if (*(short *)(p + 0x30E) == 0 && *(int *)(p + 0x2FC) == (int)m) {
                if (*(int *)(d + 0xAC) == 0) {
                    func_0022ED80(0, 0, (int)m);
                }
                r = func_001F9850(0x5A);
                if (*(int *)(d + 0xAC) < r) {
                    *(int *)(d + 0xAC) = func_001F9850(0x5A);
                }
            }
            if (*(int *)(d + 0xAC) != 0) {
                if (f20v - 2.6f < *(float *)(m + 0x18)) {
                    *(float *)(d + 0xB0) = -(D_0015EE6C * 0.25f);
                } else {
                    *(int *)(d + 0xB0) = 0;
                }
            } else {
                if (f21 < f20v) {
                    float t = (f20v - f21) * 0.2f;
                    if (0.9f < t) {
                        t = 0.9f;
                    } else if (t < -0.9f) {
                        t = -0.9f;
                    }
                    *(float *)(d + 0xB0) = *(float *)(d + 0xB0) + t;
                }
                *(float *)(d + 0xB0) = *(float *)(d + 0xB0) - D_0015EE70 * 9.8f;
                if (D_0015EE6C * 5.0f < *(float *)(d + 0xB0)) {
                    *(float *)(d + 0xB0) = D_0015EE6C * 5.0f;
                }
            }
            *(float *)(m + 0x18) = *(float *)(m + 0x18) + *(float *)(d + 0xB0);
            {
                float t = func_001FA748(*(float *)(d + 0xC0), 0.01f);
                *(float *)(d + 0xC0) = t;
                *(float *)(d + 0xC4) = func_001FA748(t, 0.017f);
                f21 = func_001F9FA8(*(float *)(d + 0xC0)) * 0.02f;
                f22 = func_001F9FA8(*(float *)(d + 0xC4)) * 0.02f;
            }
            if (*(int *)(d + 0xAC) != 0) {
                unsigned char *pos;
                unsigned char *g;
                float k;
                float c2r;
                float t1;
                float t2;
                func_001F9908((int *)(d + 0xAC));
                pos = m + 0x10;
                g = (unsigned char *)(D_0013E633 + 0xE9D);
                func_001F9BF0(v3, g, pos);
                k = func_001F9C78(v3, m + 0xC0);
                c2r = func_001F9C78(v3, m + 0xD0);
                t1 = func_001FA748(f21, c2r * -0.03f);
                t2 = func_001FA748(t1, k * 0.03f);
                f21 = t2;
                qcopy(v4, m + 0x40);
                qcopy(v5, m + 0x10);
                func_L07_00289960(g, v6, pos, v4, m + 0x40);
                func_001F9BF0(g + 0x70, v6, g);
                g = g - 0x80;
                *(float *)(g + 0xF8) = *(float *)(g + 0xF8) + (*(float *)(m + 0x18) - v5[2]);
            }
            func_L00_0025CC58((float *)(m + 0x40), 0, f21, D_0015EE6C * 0.17453292f);
            func_L00_0025CC58((float *)(m + 0x44), 0, f22, D_0015EE6C * 0.17453292f);
            if (*(float *)(m + 0x40) > 0.5235988f) {
                *(float *)(m + 0x40) = 0.5235988f;
            }
            if (*(float *)(m + 0x40) < -0.5235988f) {
                *(float *)(m + 0x40) = -0.5235988f;
            }
            if (*(float *)(m + 0x44) > 0.5235988f) {
                *(float *)(m + 0x44) = 0.5235988f;
            }
            if (*(float *)(m + 0x44) < -0.5235988f) {
                *(float *)(m + 0x44) = -0.5235988f;
            }
        }
        break;

    default:
        break;
    }

    if (m[0x20] == 5) {
        float mz = *(float *)(m + 0x18);
        if (func_001F9908((int *)(d + 0xC8)) != 0) {
            float fb8 = *(float *)(d + 0xB8);
            float fcc = *(float *)(d + 0xCC);
            int act = 0;
            if (fb8 <= fcc) {
                if (mz < fb8) {
                    act = 1;
                }
            } else {
                if (fcc <= fb8 && fb8 < *(float *)(m + 0x18)) {
                    act = 1;
                }
            }
            if (act) {
                int c1;
                int r2;
                int r3;
                func_0022ED80(0, 0, (int)m);
                c1 = func_001160D8();
                r2 = func_001F9850(0x14);
                r3 = func_001F9850(0x14);
                *(int *)(d + 0xC8) = c1 % r2 + r3;
            }
        }
    }

    *(float *)(d + 0xCC) = *(float *)(m + 0x18);
    func_001F9BD8(v1, v1, m + 0x10);
    func_L00_002617B0(d + 0x60, v1, v2, m + 0x40);
}
