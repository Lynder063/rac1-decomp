/* NON_MATCHING func_L09_002C6B30 -- src/overlays/shared/vendor_002C6B30.c
 * Best so far: SIZE ours 2212 / retail 2208, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Seeker moby update (2208 bytes): state machine on m[0x20] (jump table of 8 used entries; table tail entries ar
 *   Calls into func_L09_002C73D0 at entry (separate function, not a joined entry).
 *   Run 1: compiles, SIZE 2216 vs 2208. Extra saved $f22 and early 0.5f in case 0 held across call.
 *   Budget spent (16 of 16). Best candidate p14.c: size matches (2208), 868 bytes differ. Left: float temporary re
 *   Unblock: a near-miss from a worker who fixes the float temporaries of the two tails; the stack-arg order of fu
 *   Note: p0.c was edited in place in round two, against the one-file-per-round rule; p1..p14 are the runs logged 
 */
extern char D_0013E633[];
extern float D_L09_00166FC0[];
extern int D_L09_0015F6A8 MACRO_ADDR;
extern char D_L09_00208610[];
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE60 MACRO_ADDR;

extern void func_L09_002C73D0(void *);
extern void func_L00_00264B40(float, int, int, unsigned char *);
extern float func_001F9D10(void *, void *);
extern void func_L00_0025B178(void *);
extern int func_001E9730();
extern void func_L01_0026E8E0(char *p);
extern int func_001FA898(float);
extern float func_L00_001FF860(float, float);
extern float func_L00_0025CE58(float *, float *, float, float, float, float);
extern int func_002140B0(int);
extern int func_L00_00258BC8(int, int);
extern float func_002140F8(float, float);
extern void func_L01_0026F040(int, int);
extern int func_0022ED80(int, int, int);
extern float func_001F9D48(void *, void *);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_00213DE0(void *, int, int, int);
extern float func_00214358(void *, int, float);
extern int func_001F9850(int);
extern void func_L00_00259868(void *, void *, float, float, float, int);
extern void func_L00_0028EBF0(int);
extern void func_001F9BC0(void *);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, int, float, float, int, int, int, int);
extern void func_0020D678(void *);
extern int func_L00_0025D6F0(void *, void *);
extern float func_001F9CB8(void *a);
extern void func_L00_00260108(void *, void *, int, float, float);
extern void func_L00_002584A8(void *, int, int);

/* seeker moby update: state machine on the moby's state byte, steering its data block */
void func_L09_002C6B30(unsigned char *m) {
    unsigned char *p;
    unsigned char *q;
    unsigned char *e;
    unsigned char *mp;
    float loc[4] __attribute__((aligned(16)));
    float a, t, k, h, f20, f21, dx, dy, ang, g1, g2, fk;
    int v, r;

    p = *(unsigned char **)(m + 0x78);
    func_L09_002C73D0(m);
    q = *(unsigned char **)(p + 0x160);
    func_L00_00264B40(2.7f, (int)m, 0, p + 0x280);
    if (m[0x31] != 0) {
        a = func_001F9D10(m + 0x10, D_L09_00166FC0);
        if (a < 29.0f) {
            func_L00_0025B178(m);
            m[0x7F] = 0x17;
        }
    }
    v = D_L09_0015F6A8;
    if (v == 2) {
        return;
    }
    switch (m[0x20]) {
    case 0:
        *(float *)(p + 0x20) = 3.0f;
        *(short *)(p + 0x24) = 3;
        p[0x28] = 2;
        p[0x5A] = 6;
        p[0x58] = 8;
        if (*(int *)(p + 0x180) == -1) {
            func_001E9730(D_L09_00208610, *(short *)(m + 0xB2));
            goto tail72d4;
        }
        func_L01_0026E8E0(p + 0xD0);
        h = 0.5f;
        *(float *)(p + 0xD8) = h;
        *(float *)(p + 0xDC) = h;
        r = func_001FA898(512.0f);
        g1 = D_0015EE6C;
        *(int *)(p + 0xD0) = r;
        *(float *)(p + 0xF4) = g1 * 7.75f;
        m[0x20] = 1;
        if (m[0x53] != 1) {
            r = func_001F9850(10);
            func_00213DE0(m, 1, 0, r);
        }
        *(int *)(p + 0x194) = -1;
        return;
    case 1:
        mp = m + 0x48;
        f20 = 0.5f;
        t = func_00214358(m + 0x10, 0, f20) + f20;
        a = *(float *)(m + 0x18);
        a = a + (t - a) * 0.1f;
        *(float *)(m + 0x18) = a;
        dx = *(float *)(q + 0x10) - *(float *)(m + 0x10);
        dy = *(float *)(q + 0x14) - *(float *)(m + 0x14);
        ang = func_L00_001FF860(dx, dy);
        g1 = D_0015EE70 * 8.726646f;
        g2 = D_0015EE6C * 12.566371f;
        func_L00_0025CE58((float *)mp, (float *)(p + 0x18C), ang, g1, g1, g2);
        if (m[0x70] & 2) {
            if (func_002140B0(0x13) == 0) {
                if (m[0x53] != 2) {
                    r = func_L00_00258BC8(7, 12);
                    func_00213DE0(m, 2, 0, r);
                }
            } else {
                if (m[0x53] != 1) {
                    r = func_L00_00258BC8(7, 14);
                    func_00213DE0(m, 1, 0, r);
                }
            }
            *(float *)(m + 0x58) = func_002140F8(0.95f, 1.05f);
        }
        v = *(int *)(p + 0x164);
        if (v != 2) {
            if (m[0x21] != 0xFF) {
                func_L01_0026F040(m[0x21], 1);
            }
            if (*(int *)(p + 0x194) == -1) {
                *(int *)(p + 0x194) = func_0022ED80(1, 4, (int)m);
            }
            *(int *)(p + 0x198) = 1;
            m[0x20] = 2;
        }
        return;
    case 3:
        if (m[0x70] & 2) {
            if (m[0x21] != 0xFF) {
                func_L01_0026F040(m[0x21], 1);
            }
            *(int *)(p + 0x198) = 1;
            m[0x20] = 4;
            if (*(int *)(p + 0x194) == -1) {
                *(int *)(p + 0x194) = func_0022ED80(1, 4, (int)m);
            }
            if (m[0x53] != 4) {
                r = func_001F9850(10);
                func_00213DE0(m, 4, 0, r);
            }
            if (*(int *)(p + 0x184) == 0) {
                *(int *)(p + 0x184) = func_001F9850(0xB4);
            }
        }
        return;
    case 2:
    case 4:
        mp = m + 0x48;
        f20 = *(float *)(m + 0x18);
        dx = *(float *)(q + 0x10) - *(float *)(m + 0x10);
        dy = *(float *)(q + 0x14) - *(float *)(m + 0x14);
        ang = func_L00_001FF860(dx, dy);
        g1 = D_0015EE70 * 8.726646f;
        g2 = D_0015EE6C * 12.566371f;
        func_L00_0025CE58((float *)mp, (float *)(p + 0x18C), ang, g1, g1, g2);
        f21 = func_001F9D48(m + 0x10, q + 0x10);
        if (1.9f < f21) {
            *(int *)(p + 0x198) = 1;
        }
        if (f21 < 1.4f) {
            *(int *)(p + 0x198) = 0;
        }
        if (*(int *)(p + 0x198) != 0) {
            float t, k, fk;
            a = func_001F9F90(*(float *)(m + 0x48)) * *(float *)(p + 0xF4);
            loc[0] = a;
            fk = func_001F9FA8(*(float *)(m + 0x48)) * *(float *)(p + 0xF4);
            t = *(float *)(D_0013E633 + 0xEA5) + 0.8f;
            loc[2] = 0.0f;
            if (*(float *)(m + 0x18) < t) {
                k = 0.1f;
            } else {
                k = 0.05f;
            }
            loc[1] = fk;
            a = loc[2] + (t - f20) * k;
            loc[2] = a;
            if (D_0015EE60 * 0.3f < a) {
                loc[2] = D_0015EE60 * 0.3f;
            } else if (a < D_0015EE60 * -0.3f) {
                loc[2] = D_0015EE60 * -0.3f;
            }
            func_L00_00259868(m, loc, 0.0f, 0.5f, 0.0f, 0);
        } else {
            float t, k;
            qzero(loc);
            t = *(float *)(D_0013E633 + 0xEA5) + 0.2f;
            k = 0.05f;
            if (*(float *)(m + 0x18) < t) {
                k = 0.1f;
            }
            a = loc[2] + (t - f20) * k;
            loc[2] = a;
            if (D_0015EE60 * 0.3f < a) {
                loc[2] = D_0015EE60 * 0.3f;
            } else if (a < D_0015EE60 * -0.3f) {
                loc[2] = D_0015EE60 * -0.3f;
            }
            func_L00_00259868(m, loc, 0.0f, 0.5f, 0.0f, 0);
        }
        if (f21 < 6.0f) {
            if (m[0x20] == 2) {
                m[0x20] = 3;
                if (m[0x53] != 3) {
                    r = func_001F9850(10);
                    func_00213DE0(m, 3, 0, r);
                }
            }
        }
        return;
    case 5:
        t = *(float *)(m + 0x18);
        func_L00_0025D6F0(m, p + 0x70);
        *(float *)(m + 0x18) = t;
        *(int *)(p + 0x78) = 0;
        if (func_001F9CB8(p + 0x70) < 2.0f * D_0015EE6C) {
            if (*(int *)(p + 0x194) == -1) {
                *(int *)(p + 0x194) = func_0022ED80(1, 4, (int)m);
            }
            *(int *)(p + 0x198) = 1;
            m[0x20] = 4;
            if (*(int *)(p + 0x184) == 0) {
                *(int *)(p + 0x184) = func_001F9850(0xB4);
            }
        }
        return;
    case 6:
        v = *(int *)(p + 0x194);
        if (v != -1) {
            e = D_0013E633 + 0x1D + 0x70 * v;
            if (*(unsigned char **)(e + 0x88) == m) {
                if (e[0x74] != 0) {
                    func_L00_0028EBF0(v);
                }
            }
        }
        *(int *)(p + 0x194) = -1;
        r = func_L00_0025D6F0(m, p + 0x70);
        if (r & 0x121) {
            func_L00_00260108(m, m + 0x10, 0, 0.5f, 13.0f);
            goto tail72d4;
        }
        return;
tail72d4:
        func_0020D678(m);
        return;
    case 7:
        func_L00_002584A8(m, 0, -1);
        v = *(int *)(p + 0x194);
        if (v != -1) {
            e = D_0013E633 + 0x1D + 0x70 * v;
            if (*(unsigned char **)(e + 0x88) == m) {
                if (e[0x74] == 0) {
                    goto l733c;
                }
                func_L00_0028EBF0(v);
            }
        }
l733c:
        func_001F9BC0(loc);
        *(int *)(p + 0x194) = -1;
        func_L00_0025F4A8(m, loc, m + 0x10, 2.0f, 1.0f, 10, 3, 16, 4.0f, 2.0f, 9.0f, 0, 1.0f, 15.0f, 0, 0, 0, -1);
        func_0020D678(m);
        return;
    default:
        return;
    }
}
