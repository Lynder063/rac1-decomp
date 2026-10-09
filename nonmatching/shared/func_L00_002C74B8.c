/* NON_MATCHING func_L00_002C74B8 -- src/overlays/shared/vendor_002C12B0.c
 * Best so far: SIZE ours 3692 / retail 3628, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - Swingshot update (moby class 208): a state machine on the byte at 0x20 (16-way jump table, cases 0 and 1 sha
 *   - Differences left: an extra saved register ($21, `sq $s5` in the prologue, the float locals f20/f21 and a 9th
 *   - Wall-ish: 900 instructions with about 16 nested tails, so a hand draft needs many rounds per hunk. Would unb
 */
extern void func_L00_00222B80(int, int);
extern unsigned char *func_L00_002C82E8(unsigned char *src, float f);
extern void func_L00_001EE2E0(int a0, int a1, float f12, float f13, int *a2, int a3, int t0, float f14, int t1);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern void func_L00_00250800(void *, int, void *);
extern void func_0022ED80(int, int, int);
extern float func_001F9D10(void *, void *);
extern void func_001F49B0(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001F9CB8(void *);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern int func_L00_00205618(int);
extern void func_L00_00232C10(int, int, float);
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE60 MACRO_ADDR;
extern unsigned char D_0013A5E0[] NOT_SDA;
extern unsigned char D_0013E633[] NOT_SDA;
extern void func_L00_002C7128(char *m);

/* Swingshot update: runs the state machine on the state byte at 0x20 and drives its rope and joint effects. */
void func_L00_002C74B8(unsigned char *m) {
    char *d, *p20, *g, *h;
    V4q lo, hi;
    float f0, f1, f2, f3, f4, f5, f20, f21;
    int r, v, v16, v2;
    if (m == 0) return;
    f21 = 0.0f;
    f20 = 90.0f;
    g = (char *)D_0013E633 + 0xE1D;
    if (*(int *)(g + 0x2084) == 1) func_L00_00222B80(0x1E, 1);
    d = *(char **)(m + 0x78);
    if (d == 0) return;
    p20 = 0;
    if (*(char **)(d + 0x14) == 0) {
        char *q = (char *)func_L00_002C82E8((unsigned char *)m, D_0015EE6C * 24.0f);
        *(char **)(d + 0x14) = q;
        if (q) p20 = *(char **)(q + 0x78);
    } else {
        p20 = *(char **)(*(char **)(d + 0x14) + 0x78);
    }
    if (*(int *)(g + 0x2084) == 1 || *(int *)(g + 0x2084) == 0x1E) {
        if (*(int *)(g + 0x198) >= 2) {
            func_L00_001EE2E0((int)m, 0xFF0000FF, 1.0f, f21, 0, 0x24, -1, f20, 4);
            if (*(char **)(g + 0x968) != 0 && *(char **)(g + 0x964) != 0) {
                func_L00_001EE2E0((int)m, 0xFF00FF00, 0.5f, 0.0f, (int *)(*(char **)(g + 0x964) + 0x10), 0x24, -1, f20, 4);
            } else {
                if (*(char **)(*(char **)(g + 0x968) + 0x990) != 0)
                    func_L00_001EE2E0((int)m, 0xFF00FF00, 0.5f, f21, (int *)(*(char **)(*(char **)(g + 0x968) + 0x990) + 0x10), 0x24, -1, f20, 4);
            }
        }
    }
    switch (*(unsigned char *)(m + 0x20)) {
    case 0:
    case 1:
        if (m[0x70] & 2) {
            if (m[0x53] != 1) {
                v = func_001F9850(0xA);
                func_00213DE0(m, 1, 0, v);
            }
            m[0x20] = 1;
        }
        if (*(char **)(d + 0x14)) {
            func_L00_00250800(m, 0, *(char **)(d + 0x14) + 0x10);
            qcopy(*(char **)(d + 0x14) + 0xC0, m + 0xC0);
            qcopy(*(char **)(d + 0x14) + 0xD0, m + 0xD0);
            qcopy(*(char **)(d + 0x14) + 0xE0, m + 0xE0);
        }
        h = g - 0xBB0;
        if (*(int *)(h + 0x2084) == 0x24 || (*(int *)(h + 0x208C) == 0xF && *(int *)(h + 0x5B4) != 0)) {
            if (p20) {
                f2 = D_0015EE6C * 24.0f;
                f3 = 0.280000001f;
                f1 = 1.0f;
                *(float *)(d + 0x20) = f3;
                *(float *)(d + 0x1C) = f1;
                *(int *)(d + 0x18) = 0;
                *(float *)(p20 + 0x4) = f2;
                if (m[0x53] != 3) {
                    v = func_001F9850(0xA);
                    func_00213DE0(m, 3, 0, v);
                }
                func_0022ED80(0, 0, (int)m);
                m[0x20] = 2;
            }
        }
        h = g - 0xBB0;
        if (*(int *)(h + 0x2084) == 0x2C && p20) {
            f20 = func_001F9D10(*(char **)(h + 0x994) + 0x10, *(char **)(d + 0x14) + 0x10);
            v16 = func_001F9850(7);
            v2 = func_001F9850(0x1E);
            if (*(int *)(h + 0x10B0) < v2) v16 = func_001F9850(5);
            f0 = f20 / (float)v16;
            f1 = 0.280000001f;
            f2 = 1.0f;
            *(float *)(p20 + 0x4) = f0;
            *(float *)(d + 0x20) = f1;
            *(float *)(d + 0x1C) = f2;
            *(int *)(d + 0x18) = 0;
            if (m[0x53] != 3) {
                v = func_001F9850(0xA);
                func_00213DE0(m, 3, 0, v);
            }
            func_0022ED80(0, 0, (int)m);
            m[0x20] = 9;
        }
        break;
    case 2:
        func_001F49B0((void *)func_L00_002C7128, m);
        if (m[0x70] & 2) {
            if (m[0x53] != 4) {
                v = func_001F9850(0xA);
                func_00213DE0(m, 4, 0, v);
            }
        }
        h = g - 0xBB0;
        func_001F9BF0(lo, *(char **)(h + 0x964) + 0x10, *(char **)(d + 0x14) + 0x10);
        f20 = *(float *)(p20 + 0x4);
        if (*(int *)(h + 0x208C) == 0xF) {
            f20 = f20 + *(float *)(h + 0x574);
        } else if (*(int *)(h + 0x2094) == 4 || *(int *)(h + 0x2094) == 2) {
            if (2.0f < *(float *)(h + 0x2DC)) f20 = D_0015EE6C * 48.0f;
        }
        qcopy(hi, g - 0x80);
        f21 = 0.5f;
        f0 = hi[2] + f21;
        hi[2] = f0;
        r = func_L00_001EFFF0(hi, *(char **)(g + 0x964) + 0x10, 2, 0, 0);
        if (r != 0) {
            if (f21 < *(float *)(g + 0x2DC)) {
                func_L00_00222B80(6, 1);
                m[0x20] = 6;
                break;
            }
            func_L00_00222B80(0, 0);
            v = func_L00_00205618(0);
            v2 = func_001F9850(0xE);
            func_L00_00232C10(v, 0, (float)v2);
            m[0x20] = 6;
            break;
        }
        f0 = func_001F9D10(*(char **)(d + 0x14) + 0x10, *(char **)(g + 0x964) + 0x10);
        if (f20 < f0) {
            func_L00_001FF4B0(lo, lo, f20);
            func_001F9BD8(*(char **)(d + 0x14) + 0x10, *(char **)(d + 0x14) + 0x10, lo);
            func_001F49B0((void *)func_L00_002C7128, m);
            break;
        }
        qcopy(*(char **)(d + 0x14) + 0x10, *(char **)(g + 0x964) + 0x10);
        m[0x20] = 3;
        break;
    case 3:
        func_0022ED80(1, 0, (int)m);
        func_001F49B0((void *)func_L00_002C7128, m);
        h = g - 0xBB0;
        qcopy(*(char **)(d + 0x14) + 0x10, *(char **)(h + 0x964) + 0x10);
        m[0x20] = 4;
        break;
    case 4:
        func_L00_00250800(m, 0, lo);
        qcopy(lo, g - 0x80);
        lo[2] = lo[2] + 0.5f;
        r = func_L00_001EFFF0(lo, *(char **)(g + 0x964) + 0x10, 2, 0, 0);
        if (r) {
            if (*(short *)(g + 0x30E)) func_L00_00222B80(6, 1);
            else func_L00_00222B80(0, 1);
            m[0x20] = 6;
            break;
        }
        if (m[0x70] & 2) {
            if (m[0x53] != 4) {
                v = func_001F9850(0xA);
                func_00213DE0(m, 4, 0, v);
            }
        }
        func_001F49B0((void *)func_L00_002C7128, m);
        f1 = D_0015EE60 * -0.100000024f;
        f5 = 1.0f;
        f1 = f1 + f5;
        f2 = *(float *)(d + 0x20);
        f0 = *(float *)(d + 0x18) + 0.698131680f;
        f2 = f2 * f1;
        *(float *)(d + 0x18) = f0;
        *(float *)(d + 0x20) = f2;
        if (!(f2 < 0.168000013f)) break;
        h = g - 0xBB0;
        *(int *)(h + 0x5B4) = 0;
        if (*(char **)(d + 0x14) == 0) {
            func_L00_00222B80(0, 1);
            m[0x20] = 6;
            break;
        }
        f0 = func_001F9D10(*(char **)(d + 0x14) + 0x10, h + 0x80);
        if (!(3.5f < f0)) {
            func_L00_00222B80(0, 1);
            m[0x20] = 6;
            break;
        }
        if ((*(int *)(D_0013A5E0 + 0x2600) & *(int *)(h + 0x10A0)) == 0) {
            *(int *)(h + 0x988) = 1;
            func_L00_00222B80(0, 0);
            v = func_L00_00205618(0);
            v2 = func_001F9850(0xE);
            func_L00_00232C10(v, 0, (float)v2);
            m[0x20] = 6;
            break;
        }
        func_0022ED80(2, 0, (int)m);
        if (*(int *)(h + 0x978)) func_L00_00222B80(0x26, 1);
        else func_L00_00222B80(0x25, 1);
        m[0x20] = 5;
        break;
    case 5:
        h = g - 0xBB0;
        qcopy(*(char **)(d + 0x14) + 0x10, *(char **)(h + 0x964) + 0x10);
        if (m[0x70] & 2) {
            if (m[0x53] != 4) {
                v = func_001F9850(0xA);
                func_00213DE0(m, 4, 0, v);
            }
        }
        f2 = D_0015EE60;
        f2 = f2 * -0.100000024f;
        f4 = 1.0f;
        f2 = f2 + f4;
        f1 = *(float *)(d + 0x20);
        f0 = *(float *)(d + 0x18);
        f3 = 0.698131680f;
        f0 = f0 + f3;
        f1 = f1 * f2;
        *(float *)(d + 0x18) = f0;
        *(float *)(d + 0x20) = f1;
        func_001F49B0((void *)func_L00_002C7128, m);
        h = g - 0xBB0;
        if ((unsigned int)(*(int *)(h + 0x2084) - 0x25) < 2) break;
        m[0x20] = 6;
        break;
    case 6:
        func_001F49B0((void *)func_L00_002C7128, m);
        f0 = D_0015EE6C * 80.0f;
        *(float *)(p20 + 0x4) = f0;
        m[0x20] = 7;
        break;
    case 7:
        func_L00_00250800(m, 0, hi);
        func_001F9BF0(lo, hi, *(char **)(d + 0x14) + 0x10);
        f0 = func_001F9D10(*(char **)(d + 0x14) + 0x10, hi);
        if (*(float *)(p20 + 0x4) < f0) {
            func_L00_001FF4B0(lo, lo, *(float *)(p20 + 0x4));
            func_001F9BD8(*(char **)(d + 0x14) + 0x10, *(char **)(d + 0x14) + 0x10, lo);
            func_001F49B0((void *)func_L00_002C7128, m);
            break;
        }
        qcopy(*(char **)(d + 0x14) + 0x10, hi);
        if (m[0x53] != 1) {
            v = func_001F9850(0xA);
            func_00213DE0(m, 1, 0, v);
        }
        m[0x20] = 1;
        break;
    case 8:
        break;
    case 9:
        func_001F49B0((void *)func_L00_002C7128, m);
        if (m[0x70] & 2) {
            if (m[0x53] != 4) {
                v = func_001F9850(0xA);
                func_00213DE0(m, 4, 0, v);
            }
        }
        h = g - 0xBB0;
        func_001F9BF0(lo, *(char **)(h + 0x994) + 0x10, *(char **)(d + 0x14) + 0x10);
        f0 = func_001F9CB8(lo);
        if (*(float *)(p20 + 0x4) < f0) {
            func_L00_001FF4B0(lo, lo, *(float *)(p20 + 0x4));
            func_001F9BD8(*(char **)(d + 0x14) + 0x10, *(char **)(d + 0x14) + 0x10, lo);
            break;
        }
        qcopy(*(char **)(d + 0x14) + 0x10, *(char **)(h + 0x994) + 0x10);
        m[0x20] = 0xB;
        func_0022ED80(1, 0, (int)m);
        break;
    case 10:
        func_001F49B0((void *)func_L00_002C7128, m);
        m[0x20] = 0xB;
        break;
    case 11:
        if (m[0x70] & 2) {
            if (m[0x53] != 4) {
                v = func_001F9850(0xA);
                func_00213DE0(m, 4, 0, v);
            }
        }
        func_001F49B0((void *)func_L00_002C7128, m);
        f1 = D_0015EE60 * -0.600000024f;
        f5 = 1.0f;
        f1 = f1 + f5;
        f2 = *(float *)(d + 0x20);
        f0 = *(float *)(d + 0x18) + 0.698131680f;
        f2 = f2 * f1;
        *(float *)(d + 0x18) = f0;
        *(float *)(d + 0x20) = f2;
        f4 = 0.168000013f;
        if (!(f2 < f4)) break;
        h = g - 0xBB0;
        *(short *)(h + 0x99C) = 1;
        m[0x20] = 0xC;
        break;
    case 12:
        h = g - 0xBB0;
        if (*(char **)(h + 0x994)) {
            qcopy(*(char **)(d + 0x14) + 0x10, *(char **)(h + 0x994) + 0x10);
        }
        if (m[0x70] & 2) {
            if (m[0x53] != 4) {
                v = func_001F9850(0xA);
                func_00213DE0(m, 4, 0, v);
            }
        }
        f2 = D_0015EE60;
        f0 = -0.600000024f;
        f2 = f2 * f0;
        f4 = 1.0f;
        f2 = f2 + f4;
        f1 = *(float *)(d + 0x20);
        f0 = *(float *)(d + 0x18) + 0.698131680f;
        f1 = f1 * f2;
        *(float *)(d + 0x18) = f0;
        *(float *)(d + 0x20) = f1;
        func_001F49B0((void *)func_L00_002C7128, m);
        h = g - 0xBB0;
        if (*(int *)(h + 0x2084) == 0x2C) break;
        m[0x20] = 0xD;
        break;
    case 13:
        if (m[0x70] & 2) {
            if (m[0x53] != 4) {
                v = func_001F9850(0xA);
                func_00213DE0(m, 4, 0, v);
            }
        }
        func_001F49B0((void *)func_L00_002C7128, m);
        f0 = D_0015EE6C * 80.0f;
        *(float *)(p20 + 0x4) = f0;
        m[0x20] = 0xE;
        break;
    case 14:
        if (m[0x70] & 2) {
            if (m[0x53] != 4) {
                v = func_001F9850(0xA);
                func_00213DE0(m, 4, 0, v);
            }
        }
        func_L00_00250800(m, 0, hi);
        func_001F9BF0(lo, hi, *(char **)(d + 0x14) + 0x10);
        f0 = func_001F9D10(*(char **)(d + 0x14) + 0x10, hi);
        if (*(float *)(p20 + 0x4) < f0) {
            func_L00_001FF4B0(lo, lo, *(float *)(p20 + 0x4));
            func_001F9BD8(*(char **)(d + 0x14) + 0x10, *(char **)(d + 0x14) + 0x10, lo);
            func_001F49B0((void *)func_L00_002C7128, m);
        } else {
            qcopy(*(char **)(d + 0x14) + 0x10, hi);
            if (m[0x53] != 1) {
                v = func_001F9850(0xA);
                func_00213DE0(m, 1, 0, v);
            }
            m[0x20] = 1;
        }
        h = g - 0xBB0;
        if (*(int *)(h + 0x2084) != 0x2C) break;
        if (!p20) break;
        f0 = func_001F9D10(*(char **)(h + 0x994) + 0x10, *(char **)(d + 0x14) + 0x10);
        f0 = f0 / 10.0f;
        *(float *)(p20 + 0x4) = f0;
        *(float *)(d + 0x1C) = 1.0f;
        *(int *)(d + 0x18) = 0;
        *(int *)(d + 0x20) = 0;
        if (m[0x53] == 3) {
            m[0x20] = 3;
            break;
        }
        v = func_001F9850(0xA);
        func_00213DE0(m, 3, 0, v);
        m[0x20] = 9;
        break;
    case 15:
        break;
    default:
        break;
    }
}
