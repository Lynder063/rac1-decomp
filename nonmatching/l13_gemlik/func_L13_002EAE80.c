/* NON_MATCHING func_L13_002EAE80 -- src/overlays/l13_gemlik/vendor_002C2638.c
 * Best so far: SIZE ours 2232 / retail 2280, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Per-frame state update for a vehicle moby (m, d): first object at d+0xF0 probed through func_L00_0025B478/B4D0
 *   Runs p0 (2232 bytes) and p1 (2204 bytes, pointer locals for d+0x20 and the list entry) are 48-76 bytes short o
 *   Unblock: a block-by-block size comparison (first section, loop body, the m[0xBC]==7 tails) to find the 19 miss
 */
extern float func_001FA888(int);
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, void *, void *, int, int);
extern void func_L13_002EAC18(char *, char *, char *, char *);
extern int func_001F9850(int);
extern void func_L00_0025E4B0(void *m, short *p);
extern void func_0022ED80(int, int, int);
extern void func_L13_002EAAB8(void *unused, char *p, int idx);
extern void func_L00_0028EBF0(int);
extern void func_L00_0025E590(void *, void *);
extern int D_L13_001D3748[];
extern char D_0013E633[];

/* Per-frame state update for a vehicle moby: child list walk and state machine. */
void func_L13_002EAE80(char *m, char *d) {
    float f20 = 0.0f, f22 = 0.0f, f1, f0;
    float k6 = 6.0f;
    char *r16 = 0, *q, *p78, *e;
    char **list = (char **)(d + 0xC4);
    int hit = 0, rf = 0, mode = 0, i, k, ci, tv;
    unsigned short v;

    if (*(unsigned char *)(m + 0x20) < 6) {
        rf = 0;
        f20 = (float)*(short *)(d + 0x24) / k6;
        f22 = (k6 - func_001FA888(*(unsigned char *)(m + 0xBC))) * f20;
        if (*(unsigned char *)(m + 0xBC) >= 5) {
            f22 = (k6 - func_001FA888(*(unsigned char *)(m + 0xBC) - 1)) * f20;
        }
        f20 = f22 + f20 * 0.3f;
        q = d + 0x60;

        if (*(char **)(d + 0xF0) != 0) {
            r16 = func_L00_0025B478(*(char **)(d + 0xF0), 0x230000, 0);
            func_L00_0025B4D0(m, r16, d + 0x20, 0, (void *)&hit, 0, 0, 4);
            v = *(unsigned short *)(hit + 0xA6);
            if (r16 != 0 && *(int *)(r16 + 0x20) != 0 &&
                ((v >= 0x52 && v <= 0x53) || (short)v == 0xD4)) {
                *(unsigned char *)(*(char **)(d + 0xF0) + 0xA4) = 0xFF;
            } else if (hit >= 2) {
                f1 = *(float *)(r16 + 0x2C);
                if (0.0f < f1) {
                    if (*(unsigned short *)(r16 + 0x2A) == 0x3F1) {
                        *(float *)(r16 + 0x2C) = 0.3f;
                    }
                }
                if (r16 != 0 && *(unsigned char *)(m + 0xBC) == 7) {
                    *(float *)(r16 + 0x2C) = *(float *)(r16 + 0x2C) * 1.5f;
                }
                f1 = *(float *)(d + 0x20);
                if (f1 <= *(float *)(r16 + 0x2C)) {
                    func_L13_002EAC18(m, d, d + 0x20, r16);
                    mode = 3;
                    *(unsigned char *)(*(char **)(d + 0xF0) + 0xA4) = 0xFF;
                } else {
                    f0 = f1 - *(float *)(r16 + 0x2C);
                    *(float *)(d + 0x20) = f0;
                    mode = 1;
                    *(unsigned char *)(d + 0x67) = 0xFA;
                    func_001F9850(0);
                    *(short *)(d + 0x26) = 0xFA;
                    func_L00_0025E4B0(m, (short *)q);
                    *(unsigned char *)(*(char **)(d + 0xF0) + 0xA4) = 0xFF;
                }

                if (*(unsigned char *)(m + 0x20) == 7) {
                    *(unsigned char *)(m + 0xBC) = *(unsigned char *)(m + 0xBC) + 1;
                    rf = 1;
                    p78 = *(char **)(*(char **)(D_0013E633 + 0x240D) + 0x78);
                    *(int *)(p78 + 0x118) = 0;
                    *(int *)(p78 + 0x88) = 0;
                    *(int *)(p78 + 0xEC) = 0;
                    *(int *)(p78 + 0x8C) = 0;
                } else if (*(float *)(d + 0x20) < f22) {
                    k = *(unsigned char *)(m + 0xBC) - 1;
                    tv = D_L13_001D3748[k];
                    if (tv != -1) {
                        func_0022ED80(7, 0, (int)m);
                        func_L13_002EAAB8(m, d, tv);
                    }
                    if (*(unsigned char *)(m + 0x20) == 5) {
                        *(unsigned char *)(m + 0x20) = 4;
                    }
                    *(unsigned char *)(m + 0xBC) = *(unsigned char *)(m + 0xBC) + 1;
                    ci = *(int *)(d + 0x11C);
                    if (ci != -1) {
                        e = D_0013E633 + 0x1D + ci * 0x70;
                        if (*(char **)(e + 0x88) == m && *(unsigned char *)(e + 0x74) != 0) {
                            func_L00_0028EBF0(ci);
                        }
                        *(int *)(d + 0x11C) = -1;
                    }
                    rf = 1;
                    p78 = *(char **)(*(char **)(D_0013E633 + 0x240D) + 0x78);
                    *(int *)(p78 + 0x118) = 0;
                    *(int *)(p78 + 0x88) = 0;
                    *(int *)(p78 + 0xEC) = 0;
                    *(int *)(p78 + 0x8C) = 0;
                    *(short *)(d + 0x138) = 0;
                    *(unsigned char *)(d + 0x148) = 0;
                    if (*(unsigned char *)(m + 0xBC) == 7) {
                        mode = 2;
                        for (k = *(unsigned char *)(m + 0xBC) - 1; k < 10; k++) {
                            func_L13_002EAAB8(m, d, D_L13_001D3748[k]);
                        }
                        func_0022ED80(7, 0, (int)m);
                    }
                } else if (*(float *)(d + 0x20) < f20) {
                    *(unsigned char *)(d + 0x148) = 1;
                }
            }
        }

        if (mode == 0) {
            for (i = 0; i < 11 && mode == 0; i++) {
                if (list[i] == 0) {
                    continue;
                }
                r16 = func_L00_0025B478(list[i], 0x230000, 0);
                func_L00_0025B4D0(m, r16, d + 0x20, 0, (void *)&hit, 0, 0, 4);
                v = *(unsigned short *)(hit + 0xA6);
                if (r16 != 0 && *(int *)(r16 + 0x20) != 0 &&
                    ((v >= 0x52 && v <= 0x53) || (short)v == 0xD4)) {
                    *(unsigned char *)(list[i] + 0xA4) = 0xFF;
                } else if (hit >= 2) {
                    f1 = *(float *)(r16 + 0x2C);
                    if (0.0f < f1) {
                        if (*(unsigned short *)(r16 + 0x2A) == 0x127) {
                            *(float *)(r16 + 0x2C) = f1 * 0.5f;
                        } else if (*(unsigned short *)(r16 + 0x2A) == 0x3F1) {
                            *(float *)(r16 + 0x2C) = 0.1f;
                        }
                    }
                    if (r16 != 0 && *(unsigned char *)(m + 0xBC) == 7) {
                        *(float *)(r16 + 0x2C) = *(float *)(r16 + 0x2C) * 1.5f;
                    }
                    f1 = *(float *)(d + 0x20);
                    if (f1 <= *(float *)(r16 + 0x2C)) {
                        func_L13_002EAC18(m, d, d + 0x20, r16);
                        mode = 3;
                        *(unsigned char *)(list[i] + 0xA4) = 0xFF;
                    } else {
                        f0 = f1 - *(float *)(r16 + 0x2C);
                        *(float *)(d + 0x20) = f0;
                        mode = 1;
                        *(unsigned char *)(d + 0x67) = 0xFA;
                        func_001F9850(0);
                        *(short *)(d + 0x26) = 0xFA;
                        func_L00_0025E4B0(m, (short *)q);
                        *(unsigned char *)(list[i] + 0xA4) = 0xFF;
                    }
                }
                if (*(unsigned char *)(m + 0x20) == 7) {
                    *(unsigned char *)(m + 0xBC) = *(unsigned char *)(m + 0xBC) + 1;
                    rf = 1;
                    p78 = *(char **)(*(char **)(D_0013E633 + 0x240D) + 0x78);
                    *(int *)(p78 + 0x118) = 0;
                    *(int *)(p78 + 0x88) = 0;
                    *(int *)(p78 + 0xEC) = 0;
                    *(int *)(p78 + 0x8C) = 0;
                } else if (*(float *)(d + 0x20) < f22) {
                    k = *(unsigned char *)(m + 0xBC) - 1;
                    tv = D_L13_001D3748[k];
                    if (tv != -1) {
                        func_L13_002EAAB8(m, d, tv);
                    }
                    func_0022ED80(7, 0, (int)m);
                    if (*(unsigned char *)(m + 0x20) == 5) {
                        *(unsigned char *)(m + 0x20) = 4;
                    }
                    *(unsigned char *)(m + 0xBC) = *(unsigned char *)(m + 0xBC) + 1;
                    ci = *(int *)(d + 0x11C);
                    if (ci != -1) {
                        e = D_0013E633 + 0x1D + ci * 0x70;
                        if (*(char **)(e + 0x88) == m && *(unsigned char *)(e + 0x74) != 0) {
                            func_L00_0028EBF0(ci);
                        }
                        *(int *)(d + 0x11C) = -1;
                    }
                    rf = 1;
                    p78 = *(char **)(*(char **)(D_0013E633 + 0x240D) + 0x78);
                    *(int *)(p78 + 0x118) = 0;
                    *(int *)(p78 + 0x88) = 0;
                    *(int *)(p78 + 0xEC) = 0;
                    *(int *)(p78 + 0x8C) = 0;
                    *(short *)(d + 0x138) = 0;
                    *(unsigned char *)(d + 0x148) = 0;
                    if (*(unsigned char *)(m + 0xBC) == 7) {
                        mode = 2;
                        for (k = *(unsigned char *)(m + 0xBC) - 1; k < 10; k++) {
                            func_L13_002EAAB8(m, d, D_L13_001D3748[k]);
                        }
                        func_0022ED80(7, 0, (int)m);
                    }
                } else if (*(float *)(d + 0x20) < f20) {
                    *(unsigned char *)(d + 0x148) = 1;
                }
            }
        }

        if (mode > 0) {
            if (rf != 0) {
                switch (*(unsigned char *)(m + 0xBC) - 1) {
                case 0: break;
                case 1: func_L13_002E9B30(m, d, 0xC, 4); break;
                case 2:
                    *(int *)(d + 0x100) = func_001F9850(0x78);
                    func_L13_002E9B30(m, d, 0x10, 1);
                    break;
                case 3: func_L13_002E9B30(m, d, 0x11, 1); break;
                case 4: break;
                case 5: func_L13_002E9B30(m, d, 0x13, 1); break;
                case 6: func_L13_002E9B30(m, d, 0x16, 1); break;
                case 7: break;
                }
            } else if (*(unsigned char *)(m + 0xBC) == 7 && *(unsigned char *)(d + 0x148) != 0) {
                if (!(*(unsigned short *)(d + 0x138) & 1)) {
                    if (func_L13_002E9B30(m, d, 0x14, 2)) {
                        *(unsigned short *)(d + 0x138) |= 1;
                    }
                }
                if (!(*(unsigned short *)(d + 0x138) & 2)) {
                    if (func_L13_002E9B30(m, d, 0x14, 2)) {
                        *(unsigned short *)(d + 0x138) |= 2;
                    }
                }
            }
        }
    }
    func_L00_0025E590(m, d + 0x60);
}
