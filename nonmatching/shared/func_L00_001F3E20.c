/* NON_MATCHING func_L00_001F3E20 -- src/overlays/shared/draw_001F3A78.c
 * Best so far: SIZE ours 2484 / retail 2540, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Camera-follow update: reads the input flags at D_0013A5E0+0x2460, nudges the offsets at D_L00_0016C158 (c) and
 *   Runs 1-10 (p0..p7): sizes 2360, 2480, 2452, 2432, 2484, 2484, 2484, 2464 vs retail 2540. Best p4/p6 (2484): 56
 *   Unblock: the source shape for the pointer split (which accesses use a named pointer and which read the global 
 */
extern char D_0013A5E0[];
extern char D_0013E633[];
extern char D_L00_0016C158[];
extern char D_L00_00166D80[];
extern char D_L00_001670D0[];
extern char D_L00_001670E0[];
extern char D_L00_001670F0[];
extern char D_L00_00166ED0[];
extern void func_L00_001EBDA0(void);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001FA190(void *);
extern void func_001FA460(void *, void *);
extern void func_001FA540(void *, void *, void *);
extern void func_001FA480(void *, void *);
extern float func_001FA790(float, float);
extern float func_001F9B88(float);
extern void func_001FA218(void *, void *);
extern void func_L00_002E80A8(void *);

/* steers the camera offsets from the input flags, then queues the copy into the object */
void func_L00_001F3E20(void) {
    char *p = D_0013A5E0 + 0x2460;
    char *c = D_L00_0016C158;
    char *g = D_L00_00166D80;
    char *x;
    char *m;
    float t;
    float f20;
    float f21;
    char s[0xD0];
    long fl;
    int moved = 0;
    int k;

    if (*(int *)(p + 0x1A0) & 0x800) {
        return;
    }
    {
        if (*(int *)(c + 8) & 8) {
            func_L00_001EBDA0();
        }
        if (*(int *)(p + 0x1D8)) {
            return;
        }
        {
            fl = *(long *)(p + 0x1A0);
            k = *(short *)(D_0013E633 + 0x1125) == 2;
            if ((fl & 3) != 3) {
                if (*(int *)(p + 0x1A0) & 0x1000) {
                    if (k) {
                        x = D_L00_001670D0;
                        func_L00_001FF4B0(s, x, *(float *)(c + 0x70));
                        x -= 0x210;
                        func_001F9BD8(x, x, s);
                    } else {
                        t = func_001F9F90(*(float *)(g + 0x158));
                        *(float *)(g + 0x140) = *(float *)(g + 0x140) + t * *(float *)(c + 0x70);
                        t = func_001F9FA8(*(float *)(g + 0x158));
                        *(float *)(g + 0x144) = *(float *)(g + 0x144) + t * *(float *)(c + 0x70);
                    }
                    moved = 1;
                }
                if (*(int *)(D_0013A5E0 + 0x2460 + 0x1A0) & 0x4000) {
                    if (k) {
                        x = D_L00_001670D0;
                        func_L00_001FF4B0(s, x, *(float *)(D_L00_0016C158 + 0x70));
                        x -= 0x210;
                        func_001F9BF0(x, x, s);
                    } else {
                        t = func_001F9F90(*(float *)(D_L00_00166D80 + 0x158));
                        *(float *)(D_L00_00166D80 + 0x140) = *(float *)(D_L00_00166D80 + 0x140) - t * *(float *)(D_L00_0016C158 + 0x70);
                        t = func_001F9FA8(*(float *)(D_L00_00166D80 + 0x158));
                        *(float *)(D_L00_00166D80 + 0x144) = *(float *)(D_L00_00166D80 + 0x144) - t * *(float *)(D_L00_0016C158 + 0x70);
                    }
                    moved = 1;
                }
                if (*(int *)(D_0013A5E0 + 0x2460 + 0x1A0) & 1) {
                    if (k) {
                        x = D_L00_001670E0;
                        func_L00_001FF4B0(s, x, *(float *)(D_L00_0016C158 + 0x70));
                        x -= 0x220;
                        func_001F9BD8(x, x, s);
                    } else {
                        t = func_001F9FA8(*(float *)(D_L00_00166D80 + 0x158));
                        *(float *)(D_L00_00166D80 + 0x140) = *(float *)(D_L00_00166D80 + 0x140) - t * *(float *)(D_L00_0016C158 + 0x70);
                        t = func_001F9F90(*(float *)(D_L00_00166D80 + 0x158));
                        *(float *)(D_L00_00166D80 + 0x144) = *(float *)(D_L00_00166D80 + 0x144) + t * *(float *)(D_L00_0016C158 + 0x70);
                    }
                    moved = 1;
                }
                if (*(int *)(D_0013A5E0 + 0x2460 + 0x1A0) & 2) {
                    if (k) {
                        x = D_L00_001670E0;
                        func_L00_001FF4B0(s, x, *(float *)(D_L00_0016C158 + 0x70));
                        x -= 0x220;
                        func_001F9BF0(x, x, s);
                    } else {
                        t = func_001F9FA8(*(float *)(D_L00_00166D80 + 0x158));
                        *(float *)(D_L00_00166D80 + 0x140) = *(float *)(D_L00_00166D80 + 0x140) + t * *(float *)(D_L00_0016C158 + 0x70);
                        t = func_001F9F90(*(float *)(D_L00_00166D80 + 0x158));
                        *(float *)(D_L00_00166D80 + 0x144) = *(float *)(D_L00_00166D80 + 0x144) - t * *(float *)(D_L00_0016C158 + 0x70);
                    }
                    moved = 1;
                }
            }

            if (moved) {
                t = *(float *)(D_L00_0016C158 + 0x70) + 0.004f;
                *(float *)(D_L00_0016C158 + 0x70) = t;
                if (t > 0.3f) {
                    *(float *)(D_L00_0016C158 + 0x70) = 0.3f;
                }
            } else {
                t = *(float *)(D_L00_0016C158 + 0x70) * 0.5f;
                *(float *)(D_L00_0016C158 + 0x70) = t;
                if (t < 0.004f) {
                    *(int *)(D_L00_0016C158 + 0x70) = 0;
                }
            }

            if (!(k && (*(long *)(p + 0x1A0) & 3) == 3) && (*(int *)(D_0013A5E0 + 0x2460 + 0x1A0) & 0xA000)) {
                if (*(int *)(D_0013A5E0 + 0x2460 + 0x1A0) & 0x8000) {
                    *(float *)(D_L00_0016C158 + 0x80) = *(float *)(D_L00_0016C158 + 0x80) - 0.002f;
                } else {
                    *(float *)(D_L00_0016C158 + 0x80) = *(float *)(D_L00_0016C158 + 0x80) + 0.002f;
                }
                if (*(float *)(D_L00_0016C158 + 0x80) > 0.04f) {
                    *(float *)(D_L00_0016C158 + 0x80) = 0.04f;
                }
                if (*(float *)(D_L00_0016C158 + 0x80) < -0.04f) {
                    *(float *)(D_L00_0016C158 + 0x80) = -0.04f;
                }
                if (k) {
                    func_001F9FA8(*(float *)(D_L00_0016C158 + 0x80));
                    f20 = func_001F9F90(*(float *)(D_L00_0016C158 + 0x80));
                    f21 = f20;
                    func_001FA190(s + 0x10);
                    *(float *)(s + 0x20) = f20;
                    *(float *)(s + 0x14) = -f20;
                    *(float *)(s + 0x24) = f21;
                    *(float *)(s + 0x10) = f21;
                    func_001FA460(s + 0x50, D_L00_001670D0);
                    func_001FA540(s + 0x50, s + 0x50, s + 0x10);
                    func_001FA480(D_L00_001670D0, s + 0x50);
                } else {
                    *(float *)(D_L00_00166D80 + 0x158) = func_001FA790(*(float *)(D_L00_00166D80 + 0x158), *(float *)(D_L00_0016C158 + 0x80));
                }
            } else {
                t = *(float *)(D_L00_0016C158 + 0x80) / 1.5f;
                *(float *)(D_L00_0016C158 + 0x80) = t;
                if (func_001F9B88(t) < 0.002f) {
                    *(int *)(D_L00_0016C158 + 0x80) = 0;
                }
            }

            if ((*(long *)(p + 0x1A0) & 3) == 3 && (*(long *)(p + 0x1A0) & 0x5000)) {
                if (*(int *)(D_0013A5E0 + 0x2460 + 0x1A0) & 0x1000) {
                    *(float *)(D_L00_0016C158 + 0x7C) = *(float *)(D_L00_0016C158 + 0x7C) - 0.002f;
                } else {
                    *(float *)(D_L00_0016C158 + 0x7C) = *(float *)(D_L00_0016C158 + 0x7C) + 0.002f;
                }
                if (*(float *)(D_L00_0016C158 + 0x7C) > 0.04f) {
                    *(float *)(D_L00_0016C158 + 0x7C) = 0.04f;
                }
                if (*(float *)(D_L00_0016C158 + 0x7C) < -0.04f) {
                    *(float *)(D_L00_0016C158 + 0x7C) = -0.04f;
                }
                if (k) {
                    func_001F9FA8(*(float *)(D_L00_0016C158 + 0x7C));
                    f21 = func_001F9F90(*(float *)(D_L00_0016C158 + 0x7C));
                    f20 = f21;
                    func_001FA190(s);
                    *(float *)(s + 0x28) = f20;
                    *(float *)(s + 0x20) = -f21;
                    *(float *)(s + 0x00) = f20;
                    *(float *)(s + 0x08) = f21;
                    func_001FA460(s + 0x40, D_L00_001670D0);
                    func_001FA540(s + 0x40, s + 0x40, s);
                    func_001FA480(D_L00_001670D0, s + 0x40);
                } else {
                    *(float *)(D_L00_00166D80 + 0x154) = func_001FA790(*(float *)(D_L00_00166D80 + 0x154), *(float *)(D_L00_0016C158 + 0x7C));
                }
            } else {
                t = *(float *)(D_L00_0016C158 + 0x7C) / 1.5f;
                *(float *)(D_L00_0016C158 + 0x7C) = t;
                if (func_001F9B88(t) < 0.002f) {
                    *(int *)(D_L00_0016C158 + 0x7C) = 0;
                }
            }

            if (k && (*(long *)(p + 0x1A0) & 3) == 3 && (*(long *)(p + 0x1A0) & 0xA000)) {
                if (*(int *)(D_0013A5E0 + 0x2460 + 0x1A0) & 0x8000) {
                    *(float *)(D_L00_0016C158 + 0x78) = *(float *)(D_L00_0016C158 + 0x78) - 0.002f;
                } else {
                    *(float *)(D_L00_0016C158 + 0x78) = *(float *)(D_L00_0016C158 + 0x78) + 0.002f;
                }
                if (*(float *)(D_L00_0016C158 + 0x78) > 0.04f) {
                    *(float *)(D_L00_0016C158 + 0x78) = 0.04f;
                }
                if (*(float *)(D_L00_0016C158 + 0x78) < -0.04f) {
                    *(float *)(D_L00_0016C158 + 0x78) = -0.04f;
                }
                func_001F9FA8(*(float *)(D_L00_0016C158 + 0x78));
                f20 = func_001F9F90(*(float *)(D_L00_0016C158 + 0x78));
                f21 = f20;
                func_001FA190(s);
                x = s + 0x40;
                *(float *)(s + 0x24) = f20;
                *(float *)(s + 0x18) = -f20;
                *(float *)(s + 0x28) = f21;
                *(float *)(s + 0x14) = f21;
                func_001FA460(x, D_L00_001670D0);
                func_001FA540(s + 0x90, x, s);
                func_001FA480(D_L00_001670D0, s + 0x90);
            } else {
                t = *(float *)(D_L00_0016C158 + 0x78) / 1.5f;
                *(float *)(D_L00_0016C158 + 0x78) = t;
                if (func_001F9B88(t) < 0.002f) {
                    *(int *)(D_L00_0016C158 + 0x78) = 0;
                }
            }

            if (*(long *)(p + 0x1A0) & 0xC) {
                if (*(int *)(D_0013A5E0 + 0x2460 + 0x1A0) & 8) {
                    t = *(float *)(D_L00_0016C158 + 0x74) + 0.004f;
                    *(float *)(D_L00_0016C158 + 0x74) = t;
                    if (t > 0.3f) {
                        *(float *)(D_L00_0016C158 + 0x74) = 0.3f;
                    }
                } else {
                    t = *(float *)(D_L00_0016C158 + 0x74) - 0.004f;
                    *(float *)(D_L00_0016C158 + 0x74) = t;
                    if (t < -0.3f) {
                        *(float *)(D_L00_0016C158 + 0x74) = -0.3f;
                    }
                }
            } else {
                t = *(float *)(D_L00_0016C158 + 0x74) * 0.5f;
                *(float *)(D_L00_0016C158 + 0x74) = t;
                if (t < 0.004f) {
                    *(int *)(D_L00_0016C158 + 0x74) = 0;
                }
            }

            if (k) {
                x = D_L00_001670F0;
                func_L00_001FF4B0(s, x, *(float *)(D_L00_0016C158 + 0x74));
                x -= 0x230;
                func_001F9BD8(x, x, s);
            } else {
                *(float *)(D_L00_00166D80 + 0x148) = *(float *)(D_L00_00166D80 + 0x148) + *(float *)(D_L00_0016C158 + 0x74);
            }

            if (!k) {
                x = D_L00_00166ED0;
                func_001FA218(s, x);
                func_L00_001FF4B0(s, s, 1.0f);
                func_L00_001FF4B0(s + 0x10, s + 0x10, 1.0f);
                func_L00_001FF4B0(s + 0x20, s + 0x20, 1.0f);
                func_001FA480(x + 0x200, s);
            }

            if (*(int *)(D_L00_0016C158 + 0x14) == 2) {
                m = *(char **)(D_L00_00166D80 + 0x180);
                if (m != 0) {
                    qcopy(m + 0x30, D_L00_00166D80 + 0x140);
                    qcopy(m, D_L00_00166D80 + 0x350);
                    qcopy(m + 0x10, D_L00_00166D80 + 0x360);
                    qcopy(m + 0x20, D_L00_00166D80 + 0x370);
                    qcopy(m + 0x40, D_L00_00166D80 + 0x350);
                    *(float *)(m + 0x64) = *(float *)(D_L00_00166D80 + 0x140);
                    *(float *)(m + 0x68) = *(float *)(D_L00_00166D80 + 0x144);
                    *(float *)(m + 0x6C) = *(float *)(D_L00_00166D80 + 0x148);
                    func_L00_002E80A8(*(void **)(D_L00_00166D80 + 0x180));
                }
            }
        }
    }
}
