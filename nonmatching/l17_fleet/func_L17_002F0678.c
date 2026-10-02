/* NON_MATCHING func_L17_002F0678 -- src/overlays/l17_fleet/vendor_002AA068.c
 * Best so far: BYTES 24/3808 (99.4% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   p9 BYTES 32: 00265050 declared with scale before v10 (call-1 arg order fixed); zero pair hoist left
 *   p10 BYTES 24: zero assigned before 00260108 (after at): lui pair now before a0 (too early), s2 still in delay 
 *   p11 BYTES 32: zero assigned after 00260108 with new proto: same as p9 (s2 hoisted into delay slot, lui pair af
 *   p12 SIZE 3840: diagnostic only, p9 with TRY_CFLAGS=-fno-schedule-insns -> far worse, so retail has sched1 on; 
 *   p13 BYTES 24: zero and rot assigned before 00260108: same as p10
 *   p14 BYTES 24: at inline + zero before call: same as p10/p13 -> stop (tie won't move)
 *   BEST p10 (BYTES 24). Left: case 15 only. Retail: a0, f12, a1, lui/addiu s0 (zero vec D_L17_0015F660), jal 0026
 *   Prototype notes: func_L00_0025AC00 uses partupd's (int,int,int,void*,void*,float); func_L00_00265050 is declar
 */
typedef int u128_2F0678 __attribute__((mode(TI)));
typedef struct {
    char pad0[0x20];
    float f20;
    short s24;
    char pad26[3];
    unsigned char b29;
    char pad2A[0x58 - 0x2A];
    unsigned char b58;
    char pad59;
    unsigned char b5A;
    char pad5B[0xC8 - 0x5B];
    short sC8;
    char padCA[0xD0 - 0xCA];
    void *pD0;
    char padD4[0x120 - 0xD4];
    char a120[0x180 - 0x120];
    float v180[4];
    char pad190[0x1C0 - 0x190];
    unsigned char *target;
    char pad1C4[0x1D0 - 0x1C4];
    int path;
    float f1D4;
    float speed;
    float yawvel;
    short t1E0;
    short t1E2;
    unsigned char mode;
    unsigned char b1E5;
    char pad1E6[2];
    int i1E8;
    float f1EC;
    u128_2F0678 home;
    char pad200[0x230 - 0x200];
    char a230[0x2B0 - 0x230];
    int c2B0;
    int c2B4;
    int c2B8;
    int c2BC;
} Vars1382;
extern int func_00215570(void *, int);
extern void func_L17_002F1558(void *, int);
extern void func_L17_002F1BB0(void *);
extern void func_L17_002F1D20(void *);
extern void func_L00_00264BB0(void *, float);
extern float func_001F9D10(void *, void *);
extern void func_L00_0025B178(void *);
extern float func_002140F8(float, float);
extern int func_002140B0(int);
extern void func_00213DE0(void *, int, int, int);
extern int func_L00_002DDEA0(void *, void *);
extern float func_L00_0025CE58(float *p, float *v, float a, float b, float c, float d);
extern float func_001F9B88(float);
extern int func_001F9938(void *);
extern int func_L00_0025A778(void *, void *, int);
extern void func_L00_002592B0(char *moby, float *vel, float target, float k, float d, float max);
extern int func_L17_002F1858(char *moby, float *target, float speed);
extern float func_0020D830(void *);
extern float func_001FA850(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L00_0025AC00(int, int, int, void *, void *, float);
extern float func_001F9878(float);
extern int func_L00_0025D6F0(void *, void *);
extern void func_L00_00260108(void *, void *, int, float, float);
extern void *func_L00_00265050(char *src, int cls, float *pos, void *mat, int a8, int a9, float scale, float *v10, float *v11, float *v12);
extern void func_L00_00264EA8(void *, int, int, int, int, int, int);
extern void func_L00_002584A8(void *, int, int);
extern void func_0020D678(void *);
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_L17_0015F660[];
extern short D_L17_00162280;

/* UpdateMoby for class 1382: hides or shows the moby by its clip volumes, then runs its state machine. */
void func_L17_002F0678(unsigned char *m) {
    Vars1382 *d;
    unsigned char *tgt;
    int r;
    int a;
    int b;
    float tmp[4];
    float pos[4];

    r = 0;
    d = *(Vars1382 **)(m + 0x78);
    if (m[0x20] != 12) {
        a = d->c2B0;
        if (a != -1) {
            r = func_00215570(D_L17_00167740, a) == 0;
            b = d->c2B4;
            if (b != -1) {
                r &= func_00215570(D_L17_00167740, b) == 0;
            }
        } else if (d->c2B8 != -1) {
            r = func_00215570(D_L17_00167740, a);
            b = d->c2BC;
            if (b != -1) {
                r |= func_00215570(D_L17_00167740, b);
            }
        }
    }
    func_L17_002F1558(m, r);
    if (r != 0 && m[0x20] != 15) {
        m[0x31] = 0;
        *(unsigned short *)(m + 0x34) |= 1;
        return;
    }
    m[0x31] = 1;
    *(unsigned short *)(m + 0x34) &= 0xFFFE;
    func_L17_002F1BB0(m);
    func_L17_002F1D20(m);
    tgt = d->target;
    func_L00_00264BB0(d->a230, 2.1f);
    if (m[0x31] != 0 && func_001F9D10(m + 0x10, D_L17_00167740) < 29.0f) {
        func_L00_0025B178(m);
        m[0x7F] = 0x17;
    }
    switch (m[0x20]) {
    case 0:
        *(unsigned short *)(m + 0x34) |= 0x1000;
        qcopy(&d->home, m + 0x10);
        d->b58 = 8;
        d->b5A = 7;
        d->b29 = 0;
        d->s24 = 1;
        d->f20 = 1.0f;
        d->pD0 = &D_L17_00162280;
        d->f1EC = func_002140F8(D_0015EE6C * 7.2f, D_0015EE6C * 8.7f);
        m[0x20] = 1;
        func_00213DE0(m, 0, func_002140B0(*(unsigned char *)(*(char **)(*(char **)(m + 0x24) + 0x48) + 0x10)), 0);
        if (d->i1E8 == -1) {
            d->i1E8 = d->path;
        }
        break;
    case 12:
        if (func_L00_002DDEA0(m, d->a120)) {
            m[0x20] = 0;
            d->sC8 = 0;
        }
        break;
    case 1:
        if (d->mode != 0 && func_002140B0(0x1F) == 0) {
            m[0x20] = 2;
            if (m[0x53] != 1) {
                func_00213DE0(m, 1, 0, func_001F9850(10));
            }
        }
        break;
    case 2:
        if (m[0x70] & 2) {
            int s = d->mode;
            if (s == 2) {
                if (func_002140B0(3)) {
                    if (m[0x53] != s) {
                        func_00213DE0(m, 2, 0, func_001F9850(10));
                    }
                } else if (D_0013E633[0x2EC1] != 3) {
                    m[0x20] = 7;
                    if (m[0x53] != 8) {
                        func_00213DE0(m, 8, 0, func_001F9850(10));
                    }
                } else {
                    m[0x20] = 6;
                    if (m[0x53] != 7) {
                        func_00213DE0(m, 7, 0, func_001F9850(10));
                    }
                }
            } else {
                m[0x20] = 5;
                if (m[0x53] != 3) {
                    func_00213DE0(m, 3, 0, func_001F9850(10));
                }
                d->t1E0 = func_001F9850(120);
                d->t1E2 = func_001F9850(120);
            }
        }
        break;
    case 5:
        if (tgt != 0) {
            float turn;
            float ang;
            float *yaw = (float *)(m + 0x48);
            int mode;
            ang = func_L00_001FF860(*(float *)(tgt + 0x10) - *(float *)(m + 0x10),
                                    *(float *)(tgt + 0x14) - *(float *)(m + 0x14));
            turn = D_0015EE70 * 4.712389f;
            func_L00_0025CE58(yaw, &d->yawvel, ang, turn, turn, D_0015EE6C * 3.4906585f);
            if (func_001F9B88(d->yawvel) > D_0015EE6C * 0.08726646f) {
                if (d->yawvel < 0.0f) {
                    if (m[0x53] != 4) {
                        func_00213DE0(m, 4, 0, func_001F9850(10));
                    }
                } else {
                    if (m[0x53] != 5) {
                        func_00213DE0(m, 5, 0, func_001F9850(10));
                    }
                }
            } else {
                if (m[0x53] != 3) {
                    func_00213DE0(m, 3, 0, func_001F9850(10));
                }
            }
            *(float *)(m + 0x58) = 1.7f;
            mode = d->mode;
            if (mode == 2 && (func_001F9938(&d->t1E2) || D_0013E633[0x2EC1] != 3)) {
                if (func_002140B0(3) == 0) {
                    if (m[0x53] != mode) {
                        func_00213DE0(m, 2, 0, func_001F9850(10));
                    }
                } else if (D_0013E633[0x2EC1] != 3) {
                    m[0x20] = 7;
                    if (m[0x53] != 8) {
                        func_00213DE0(m, 8, 0, func_001F9850(10));
                    }
                } else {
                    m[0x20] = 6;
                    if (m[0x53] != 7) {
                        func_00213DE0(m, 7, 0, func_001F9850(10));
                    }
                }
            } else if (d->t1E0 == 0 && d->mode == 0) {
                m[0x20] = 3;
                if (m[0x53] != 0) {
                    a = func_002140B0(*(unsigned char *)(*(char **)(*(char **)(m + 0x24) + 0x48) + 0x10));
                    func_00213DE0(m, 0, a, func_001F9850(10));
                }
            }
        } else if (func_002140B0(0x1F) == 0) {
            m[0x20] = 3;
            if (m[0x53] != 0) {
                a = func_002140B0(*(unsigned char *)(*(char **)(*(char **)(m + 0x24) + 0x48) + 0x10));
                func_00213DE0(m, 0, a, func_001F9850(10));
            }
        }
        break;
    case 3:
        if (m[0x70] & 2) {
            m[0x20] = 1;
            if (m[0x53] != 0) {
                a = func_002140B0(*(unsigned char *)(*(char **)(*(char **)(m + 0x24) + 0x48) + 0x10) - 1);
                func_00213DE0(m, 0, a, func_001F9850(10));
            }
        }
        break;
    case 6:
    case 7: {
        int s = d->mode;
        if (s != 2) {
            if (func_002140B0(20) == 0) {
                m[0x20] = 5;
                if (m[0x53] != 3) {
                    func_00213DE0(m, 3, 0, func_001F9850(10));
                }
                d->t1E2 = func_001F9850(120);
                d->t1E0 = func_001F9850(120);
            }
            break;
        }
        if (d->f1D4 != 0.0f || func_L00_0025A778(D_0013E633 + 0xE9D, ((int **)D_L17_001B10B0)[d->path] + 4, ((int **)D_L17_001B10B0)[d->path][0]) != 0) {
            if (func_002140B0(20) == 0) {
                m[0x20] = 8;
                if (m[0x53] != 1) {
                    func_00213DE0(m, 1, 0, func_001F9850(10));
                }
            }
        } else if (m[0x70] & 2) {
            if (func_002140B0(3) == 0) {
                if (m[0x53] != s) {
                    func_00213DE0(m, 2, 0, func_001F9850(10));
                }
            } else if (func_002140B0(7) == 0) {
                if (m[0x53] != 8) {
                    func_00213DE0(m, 8, 0, func_001F9850(10));
                }
            } else {
                if (m[0x53] != 7) {
                    func_00213DE0(m, 7, 0, func_001F9850(10));
                }
            }
        }
        break;
    }
    case 8: {
        float ang;
        ang = func_L00_001FF860(d->v180[0] - *(float *)(m + 0x10), d->v180[1] - *(float *)(m + 0x14));
        func_L00_002592B0((char *)m, &d->yawvel, ang, 0.03f, 0.3f, D_0015EE6C * 7.8539815f);
        if (m[0x70] & 2) {
            if (d->f1D4 == 0.0f) {
                if (func_L00_0025A778(D_0013E633 + 0xE9D, ((int **)D_L17_001B10B0)[d->path] + 4, ((int **)D_L17_001B10B0)[d->path][0]) == 0) {
                    m[0x20] = 11;
                    if (m[0x53] != 9) {
                        func_00213DE0(m, 9, 0, func_001F9850(10));
                    }
                    break;
                }
            }
            m[0x20] = 9;
            if (m[0x53] != 9) {
                func_00213DE0(m, 9, 0, func_001F9850(10));
            }
        }
        break;
    }
    case 9:
        func_L17_002F1858((char *)m, d->v180, d->f1EC);
        *(float *)(m + 0x58) = 1.8f;
        if (func_L00_0025A778(D_0013E633 + 0xE9D, ((int **)D_L17_001B10B0)[d->path] + 4, ((int **)D_L17_001B10B0)[d->path][0]) == 0 && d->f1D4 == 0.0f) {
            m[0x20] = 11;
        } else if (func_001F9D48(m + 0x10, d->v180) < 1.8f) {
            m[0x20] = 10;
            if (m[0x53] != 10) {
                func_00213DE0(m, 10, 5, func_001F9850(10));
            }
        } else if (func_001F9D10(d->v180, &d->home) > 32.0f || func_001F9B88(d->v180[2] - *(float *)(m + 0x18)) > 3.0f) {
            m[0x20] = 11;
        }
        break;
    case 10:
        if (m[0x70] & 2) {
            m[0x20] = 11;
            if (m[0x53] != 9) {
                func_00213DE0(m, 9, 0, func_001F9850(10));
            }
        } else if (func_001F9B88(func_0020D830(m) - 17.5f) <= 0.25f
                   && func_001F9B88(d->v180[2] - *(float *)(m + 0x18)) < 1.0f
                   && func_001FA850(func_L00_001FF860(d->v180[0] - *(float *)(m + 0x10), d->v180[1] - *(float *)(m + 0x14)),
                                    *(float *)(m + 0x48)) < 0.2617994f
                   && d->target != 0
                   && func_001F9D48(m + 0x10, d->v180) < 2.75f) {
            tmp[0] = func_001F9F90(*(float *)(m + 0x48)) * 0.2f;
            tmp[1] = func_001F9FA8(*(float *)(m + 0x48)) * 0.2f;
            tmp[2] = 0.0f;
            qcopy(pos, d->v180);
            pos[2] += 0.75f;
            func_L00_0025AC00((int)d->target, (int)m, 1, pos, tmp, 1.0f);
        }
        break;
    case 11: {
        float dist;
        float far;
        float k1;
        float k2;
        float v;
        func_L17_002F1858((char *)m, (float *)&d->home, D_0015EE6C * 5.0f);
        *(float *)(m + 0x58) = 1.35f;
        dist = func_001F9D48(m + 0x10, &d->home);
        if ((dist < 1.4f && (m[0x70] & 2)) || dist < 0.3f) {
            m[0x20] = 5;
            if (m[0x53] != 3) {
                func_00213DE0(m, 3, 0, func_001F9850(10));
            }
            d->t1E2 = func_001F9850(120);
            d->t1E0 = func_001F9850(120);
        } else if (m[0x70] & 2) {
            far = func_001F9D48(m + 0x10, d->v180);
            k1 = func_001F9878(40.0f);
            k2 = func_001F9878(10.0f);
            v = d->speed * D_0015EE6C;
            if (far < v * k1 * 0.5f + v * k2 + 1.5f) {
                if (func_L00_0025A778(D_0013E633 + 0xE9D, ((int **)D_L17_001B10B0)[d->path] + 4, ((int **)D_L17_001B10B0)[d->path][0]) != 0) {
                    m[0x20] = 10;
                    if (m[0x53] != 10) {
                        func_00213DE0(m, 10, 0, func_001F9850(10));
                    }
                }
            }
        }
        break;
    }
    case 4:
        if (func_L00_0025D6F0(m, d->a120) & 0x60) {
            func_001F9BC0(tmp);
            m[0x20] = 5;
            if (m[0x53] != 3) {
                func_00213DE0(m, 3, 0, func_001F9850(10));
            }
            d->t1E2 = func_001F9850(120);
            d->t1E0 = func_001F9850(120);
        } else if (*(float *)(m + 0x18) < 2.0f) {
            func_L00_002584A8(m, 0, -1);
            func_0020D678(m);
        }
        break;
    case 15:
        *(unsigned short *)(m + 0x34) &= 0xEFFF;
        if (func_L00_0025D6F0(m, d->a120) & 0x60) {
            float *zero;
            func_001F9BC0(tmp);
            zero = D_L17_0015F660;
            func_L00_00260108(m, m + 0x10, -1, 0.5f, 13.0f);
            func_L00_00265050((char *)m, 0x6CE, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, zero, zero, zero);
            func_L00_00265050((char *)m, 0x6CF, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, zero, zero, zero);
            func_L00_00264EA8(m, 0x77D, 1, 0x77D, 1, 3, 2);
            func_L00_002584A8(m, 0, -1);
            func_0020D678(m);
        } else if (*(float *)(m + 0x18) < 2.0f) {
            func_L00_002584A8(m, 0, -1);
            func_0020D678(m);
        }
        break;
    }
}
