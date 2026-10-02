/* NON_MATCHING func_L00_0020BFD8 -- src/overlays/shared/help_00203E98.c
 * Best so far: SIZE ours 1428 / retail 1424, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * Cannot land as written (#define in a candidate): rewrite that in plain C first.
 * What the last attempts found:
 *   Camera/help event dispatcher: reads the pending event (short at base+0x12E0), sets per-event flags in the shar
 *   Shape: every top-level statement has its own `char *g = (char *)D_0013E633 + 0xE1D;` local, the second 12E5 te
 *   Difference: retail orders `addiu g; li; sb; lui v1; lw v1` (g and the reloaded value share $v1); ours emits `l
 */
extern unsigned char D_0013E633[] NOT_SDA;
extern short D_0015EE84;
extern int D_0015EE84_far __asm__("D_0015EE84") NOT_SDA;
extern void func_001F99D8(void *, int);
extern int func_L00_001F10E0(float, void *, int, void *);
extern int func_L00_001F3958(void);
extern void func_L00_0020BFA8(void);
extern float func_001F9B88(float);
extern void func_L00_00222B80(int, int);
extern void func_L00_00211908(void);

#define G g
#define U8(o) (*(unsigned char *)(G + (o)))
#define S16(o) (*(short *)(G + (o)))
#define I32(o) (*(int *)(G + (o)))
#define F32(o) (*(float *)(G + (o)))

/* Per-frame camera/help state update: reacts to the pending camera event and requests a follow-up event. */
void func_L00_0020BFD8(void) {
    int s;
    int v;
    unsigned char saved;
    float f;
    char *g = (char *)D_0013E633 + 0xE1D;

    saved = U8(0x12ED);
    s = S16(0x12E0);
    func_001F99D8(G + 0x12E0, 0x10);
    U8(0x12ED) = saved;
    S16(0x12E0) = -1;
    U8(0x20A9) = 0;
    S16(0x308) = 0;
    if (s == -1) return;
    if (s == 2) {
        if (S16(0x30C) == 0 || F32(0x2DC) < 0.3f) {
            U8(0x12E7) = 1;
            if (U8(0x20A4) == 0) {
                if (I32(0x10E0) != 0 && *(short *)(I32(0x10E0) + 0xA6) == 0xAD) {
                    S16(0x308) = 1;
                }
            }
        }
    }
    if (s == 14) { char *g = (char *)D_0013E633 + 0xE1D;
        U8(0x12E4) = 1;
        F32(0x22A4) = 0.2f;
        F32(0x2F0) = F32(0x2D8) + 0.2f;
    }
    if (s == 0) { char *g = (char *)D_0013E633 + 0xE1D;
        f = F32(0x2F0) - F32(0x2D8);
        F32(0x22A4) = f;
        if (f < 0.85f && 0.25f < f) {
            U8(0x20A9) = 1;
        }
        { char *h = (char *)D_0013E633 + 0xE1D; h[0x12E4] = 1; }
    }
    v = *(int *)&D_0015EE84;
    if (s == 3) { char *g = (char *)D_0013E633 + 0xE1D;
        U8(0x12E6) = 1;
        v = D_0015EE84_far;
    }
    if (v == 13) { char *g = (char *)D_0013E633 + 0xE1D;
        if (I32(0x2084) != 0x7B) {
            if (func_L00_001F10E0(F32(0x234) + 0.03f, G + 0xD0, 2, 0)) {
                if (func_L00_001F3958() == 11) {
                    func_L00_00222B80(0x7B, 1);
                    return;
                }
            }
        }
    }
    if (s == 11) { char *g = (char *)D_0013E633 + 0xE1D; U8(0x12EB) = 1; }
    if (s == 2) { char *g = (char *)D_0013E633 + 0xE1D; U8(0x12E7) = 1; }
    if (s == 4) { char *g = (char *)D_0013E633 + 0xE1D; U8(0x12E3) = 1; }
    if (s == 7) { char *g = (char *)D_0013E633 + 0xE1D; U8(0x12E2) = 1; }
    if (s == 13) { char *g = (char *)D_0013E633 + 0xE1D; U8(0x12EC) = 1; }
    if (s == 1) { char *g = (char *)D_0013E633 + 0xE1D; U8(0x12E5) = 1; }
    if (s == 8) { char *g = (char *)D_0013E633 + 0xE1D; U8(0x12EA) = 1; }
    if (s == 9) { char *g = (char *)D_0013E633 + 0xE1D; U8(0x12EE) = 1; }
    if (s == 12) { char *g = (char *)D_0013E633 + 0xE1D; U8(0x12EA) = 1; }
    { char *g = (char *)D_0013E633 + 0xE1D;
    if (U8(0x12E3)) {
        if (I32(0x300) != 0) {
            v = I32(0x208C);
            if (v != 0x10 && v != 0x14 && v != 7) {
                func_L00_00222B80(0x31, 1);
                return;
            }
        }
    } }
    { char *g = (char *)D_0013E633 + 0xE1D;
    if (U8(0x12E5)) {
        if (I32(0x300) != 0 && U8(0x20A4) == 1 && I32(0x2084) != 0x7D) {
            func_L00_00222B80(0x7D, 1);
            return;
        }
        { char *g = (char *)D_0013E633 + 0xE1D;
        if (U8(0x12E5)) {
            if (I32(0x300) != 0) {
                if (I32(0x2084) != 0x3C || S16(0x41E) != 0) {
                    func_L00_0020BFA8();
                    if (I32(0x22A8) != 0) {
                        func_L00_00222B80(0x3C, 1);
                    } else {
                        func_L00_00222B80(0x7C, 1);
                    }
                    return;
                }
            }
        } }
    } }
    { char *g = (char *)D_0013E633 + 0xE1D;
    if (U8(0x12EC)) {
        if (I32(0x2084) != 0x7F) {
            if (func_001F9B88(F32(0x2F0) - (F32(0x88) + 0.25f)) < 1.0f) {
                if (F32(0x2F0) - F32(0x88) > 0.0f) {
                    if (F32(0x108) < 0.0f) {
                        func_L00_0020BFA8();
                        func_L00_00222B80(0x7F, 1);
                        return;
                    }
                }
            }
        }
    } }
    { char *g = (char *)D_0013E633 + 0xE1D;
    if (U8(0x12E6)) {
        v = I32(0x2084);
        if (v != 0x68 && v != 0x7B) {
            if (func_001F9B88(F32(0x2F4) - (F32(0x88) + 0.25f)) < 1.0f) {
                if (F32(0x2F4) - F32(0x88) > 0.0f) {
                    if (I32(0x2084) != 0x69 || S16(0x41E) != 0) {
                        if (F32(0x108) < 0.0f) {
                            func_L00_0020BFA8();
                            if (I32(0x22A8) != 0) {
                                func_L00_00222B80(0x68, 1);
                            } else {
                                func_L00_00222B80(0x7B, 1);
                            }
                            return;
                        }
                    }
                }
            }
        }
    } }
    { char *g = (char *)D_0013E633 + 0xE1D;
    if (U8(0x12EB)) {
        if (I32(0x2084) != 0x7B) {
            if (func_001F9B88(F32(0x2F4) - (F32(0x88) + 0.25f)) < 1.0f) {
                if (F32(0x2F4) - F32(0x88) > 0.0f) {
                    if (F32(0x108) < 0.0f) {
                        if ((unsigned)(U8(0x20A4) - 1) < 2) {
                            func_L00_00211908();
                            return;
                        }
                        func_L00_0020BFA8();
                        func_L00_00222B80(0x7B, 1);
                    }
                }
            }
        }
    } }
}
