/* NON_MATCHING func_L15_002A48B0 -- src/overlays/l15_quartu/vendor_0029C1D0.c
 * Best so far: SIZE ours 1244 / retail 1240, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * No longer builds in its file (COMPILE failed, 2026-10-09): match its declarations to the file's first.
 * What the last attempts found:
 *   Claimed by mistake in worker s13 (a repeated claim call took it); no attempt was made. Needs a release or a fr
 *   Gate update (moby class 92, level 15): six-state machine; the states share the travel tail (sb 5; sub.s; swc1 
 *   Still differs: (1) the level constant at gp -0x5788 (D_L15_00161578, declared extern short) comes out as 0($gp
 */
extern int func_00215570(void *arg0, int arg1);
extern int func_0022ED80(int, int, int);
extern void func_L00_0028EBF0(int);
extern unsigned char D_0013DE55[] NOT_SDA;
extern unsigned char D_0013E633[];
extern short D_L15_00161578;
extern short D_L15_00160058;
extern float D_0015EE6C MACRO_ADDR;
extern int D_L15_00184B28;

typedef int u128_2A48B0 __attribute__((mode(TI)));

// Gate update: a six-state machine that opens, holds and closes the gate and drives its travel and the level-15 flags.
void func_L15_002A48B0(char *m)
{
    char *d = *(char **)(m + 0x78);
    switch (((unsigned char *)m)[0x20]) {
    case 0:
        *(u128_2A48B0 *)d = *(u128_2A48B0 *)(m + 0x10);
        ((unsigned char *)m)[0x20] = 1;
        *(int *)(d + 0x28) = 0;
        if (*(int *)(d + 0x20) != -1) {
            ((unsigned char *)m)[0x30] = 0xFF;
        }
        if (D_0013DE55[3] != 0 && *(int *)(d + 0x20) != -1) {
            ((unsigned char *)m)[0x20] = 5;
            *(float *)(m + 0x18) = *(float *)(m + 0x18) - *(float *)&D_L15_00161578;
        }
        break;
    case 1: {
        int idx;
        *(int *)(d + 0x18) = 0;
        if (*(int *)(d + 0x20) != -1) {
            D_L15_00184B28 = 0;
        }
        idx = *(int *)(d + 0x24);
        if (idx != -1) {
            char *p = (char *)(*(int *)&D_L15_00160058 + (idx << 8));
            if (p == 0 || ((unsigned char *)p)[0x20] == 0xFE || ((unsigned char *)p)[0x20] == 0xFD) {
                if (D_L15_00161B48 == 0) {
                    ((unsigned char *)m)[0x20] = 2;
                    *(int *)(d + 0x28) = 1;
                }
            }
        } else {
            if (func_00215570(D_0013E633 + 0xE9D, *(int *)(d + 0x10))) {
                if (*(int *)(d + 0x20) == -1 || ((unsigned char *)(D_0013E633 + 0xE9D))[0x2024] == 2) {
                    ((unsigned char *)m)[0x20] = 2;
                }
            }
        }
        if (D_0013DE55[3] == 0) {
            break;
        }
        if (*(int *)(d + 0x20) == -1) {
            break;
        }
        ((unsigned char *)m)[0x20] = 5;
        *(float *)(m + 0x18) = *(float *)(d + 0x8) - *(float *)&D_L15_00161578;
        break;
    }
    case 2: {
        float f20;
        float f0;
        char *q;
        f20 = (*(float *)&D_L15_00161578 / 0.6f) * D_0015EE6C;
        if (*(int *)(d + 0x20) != -1) {
            f20 = f20 * 5.0f;
        }
        q = D_0013E633 + 0x1D + *(int *)(d + 0x1C) * 0x70;
        if (*(int *)(q + 0x88) != (int)m || ((unsigned char *)q)[0x74] == 0) {
            *(int *)(d + 0x1C) = func_0022ED80(0, 4, (int)m);
        }
        f0 = *(float *)(d + 0x18) + f20;
        *(float *)(d + 0x18) = f0;
        if (*(float *)&D_L15_00161578 < f0) {
            int idx = *(int *)(d + 0x1C);
            if (idx == -1) {
                f0 = *(float *)&D_L15_00161578;
            } else {
                char *q2 = D_0013E633 + 0x1D + idx * 0x70;
                if (*(int *)(q2 + 0x88) != (int)m) {
                    f0 = *(float *)&D_L15_00161578;
                } else if (((unsigned char *)q2)[0x74] != 0) {
                    func_L00_0028EBF0(idx);
                    f0 = *(float *)&D_L15_00161578;
                }
            }
            *(int *)(d + 0x1C) = -1;
            *(float *)(d + 0x18) = f0;
            ((unsigned char *)m)[0x20] = 3;
        }
        {
            float t = *(float *)(d + 0x18);
            if (*(int *)(d + 0x20) != -1) {
                t = -t;
            }
            *(float *)(m + 0x18) = *(float *)(d + 0x8) + t;
        }
        break;
    }
    case 3: {
        char *g = D_0013E633 + 0xE9D;
        if (*(int *)(d + 0x20) != -1) {
            D_L15_00184B28 = 1;
        }
        if (func_00215570(g, *(int *)(d + 0x14)) != 0) {
            if (func_00215570(g, *(int *)(d + 0x20)) == 0) {
                break;
            }
        } else {
            if (func_00215570(D_L15_00167440, *(int *)(d + 0x14)) != 0) {
                if (func_00215570(g, *(int *)(d + 0x20)) == 0) {
                    break;
                }
            }
        }
        if (*(int *)(d + 0x28) == 0) {
            ((unsigned char *)m)[0x20] = 4;
        }
        break;
    }
    case 4: {
        float f20;
        float f0;
        char *q;
        f20 = (*(float *)&D_L15_00161578 / 0.6f) * D_0015EE6C;
        if (*(int *)(d + 0x20) != -1) {
            f20 = f20 * 5.0f;
        }
        q = D_0013E633 + 0x1D + *(int *)(d + 0x1C) * 0x70;
        if (*(int *)(q + 0x88) != (int)m || ((unsigned char *)q)[0x74] == 0) {
            *(int *)(d + 0x1C) = func_0022ED80(0, 4, (int)m);
        }
        f0 = *(float *)(d + 0x18) - f20;
        *(float *)(d + 0x18) = f0;
        if (f0 < 0.0f) {
            int idx = *(int *)(d + 0x1C);
            if (idx != -1) {
                char *q2 = D_0013E633 + 0x1D + idx * 0x70;
                if (*(int *)(q2 + 0x88) == (int)m && ((unsigned char *)q2)[0x74] != 0) {
                    func_L00_0028EBF0(idx);
                }
            }
            *(int *)(d + 0x18) = 0;
            *(int *)(d + 0x1C) = -1;
            ((unsigned char *)m)[0x20] = 1;
            if (*(int *)(d + 0x20) != -1) {
                ((unsigned char *)m)[0x20] = 5;
                D_L15_00184B28 = 0;
            }
        }
        {
            float t = *(float *)(d + 0x18);
            if (*(int *)(d + 0x20) != -1) {
                t = -t;
            }
            *(float *)(m + 0x18) = *(float *)(d + 0x8) + t;
        }
        if (func_00215570(D_0013E633 + 0xE9D, *(int *)(d + 0x10)) != 0 ||
            func_00215570(D_L15_00167440, *(int *)(d + 0x10)) != 0) {
            ((unsigned char *)m)[0x20] = 2;
        }
        break;
    }
    case 5:
        if (D_0013DE55[3] != 0) {
            *(float *)(m + 0x18) = *(float *)(d + 0x8) - *(float *)&D_L15_00161578;
            D_L15_00184B28 = 1;
        } else {
            if (((unsigned char *)(D_0013E633 + 0x2EC1))[0] == 2) {
                break;
            }
            ((unsigned char *)m)[0x20] = 1;
            *(float *)(m + 0x18) = *(float *)(d + 0x8);
            D_L15_00184B28 = 0;
        }
        break;
    }
}
