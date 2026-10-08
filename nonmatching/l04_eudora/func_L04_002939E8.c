/* NON_MATCHING func_L04_002939E8 -- src/overlays/l04_eudora/vuchain_00293490.c
 * Best so far: SIZE ours 1172 / retail 1168, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moby steering from an arg block: a height probe (func_00214358) and a two-element loop over the 0xB6 mask, the
 *   Left: retail counts the loop up (slti j<4 at the bottom, j kept in $19); ours is counted down (bgez). The &D_L
 *   Would unblock: a way to keep the loop index counting up and the address in a saved register (not reloaded); on
 */
extern float func_00214358(void *, int, float);
extern void func_001F9BC0(float *);
extern float func_L04_00293490(float *);
extern float func_001F9B88(float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9CA0(void *, void *, void *);
extern float func_001F9CE8(void *);
extern float func_L00_001FF860(float, float);
extern char D_L04_00174040[];

/* Steers a moby from the arg block: height and push terms, returns 2 when the tilt is past pi/4. */
int func_L04_002939E8(char *m, char *a) {
    float sp[8];
    int ret = 0;
    int flag23 = 0;
    int bit = 1;
    int j;
    char *e;
    char *g;
    float f20, f21, f22, f23, f24, f25, f26, t;

    f22 = 0.0f;
    f24 = f22;
    if (*(unsigned short *)(a + 0xEE) & 4) {
        f21 = func_00214358(m + 0x10, 0, 0.5f);
        if (*(float *)(m + 0x18) < f21 - 0.1f) {
            f22 = *(float *)(m + 0x18) - f21;
        } else {
            if (*(float *)(a + 0xD8) < f22 && *(float *)(m + 0x18) < f21 + 0.4f - *(float *)(a + 0xD8)) {
                f22 = f21 - *(float *)(m + 0x18);
            } else {
                f22 = -1.0f;
            }
        }
        *(float *)(a + 0xB8) = 0.0f;
    } else {
        func_001F9BC0(sp);
        f23 = f22;
        f25 = f22;
        f26 = 4.0f;
        e = a;
        g = D_L04_00174040;
        j = 0;
        do {
            if (*(unsigned char *)(a + 0xB6) & bit) {
                f21 = func_L04_00293490((float *)e);
                if (f25 < f21) {
                    f23 += f21;
                    f20 = func_001F9B88(*(float *)(g + 0x40));
                    f20 = f20 + func_001F9B88(*(float *)(g + 0x44));
                    if (f20 < func_001F9B88(*(float *)(g + 0x48))) {
                        func_001F9BD8(sp, sp, g + 0x40);
                        f24 += f26;
                        f22 += f21 - *(float *)(e + 8);
                    }
                }
            }
            j += 2;
            bit <<= 2;
            e += 0x20;
        } while (j < 4);
        if (f23 == 0.0f) {
            f21 = func_00214358(m + 0x10, 0, 0.5f);
            if (0.0f < f21) {
                f24 += 4.0f;
                f22 += f21 - *(float *)(m + 0x18);
            }
        }
        if (sp[0] == 0.0f && sp[1] == 0.0f && sp[2] == 0.0f) {
            *(float *)(a + 0xB8) = 0.0f;
        } else {
            sp[4] = func_001F9F90(*(float *)(m + 0x48));
            sp[5] = func_001F9FA8(*(float *)(m + 0x48));
            sp[6] = 0.0f;
            func_001F9CA0(sp + 4, sp + 4, sp);
            func_001F9CA0(sp + 4, sp + 4, sp);
            t = func_001F9CE8(sp + 4);
            *(float *)(a + 0xB8) = func_L00_001FF860(t, sp[6]);
        }
        if (0.7853982f < func_001F9B88(*(float *)(a + 0xB8))) {
            ret = 2;
        }
        if (*(unsigned char *)(a + 0xB7) == 0xD) {
            if (0.0f < *(float *)(a + 0xE4) && (*(unsigned char *)(a + 0xB6) & 0xF) == 0) {
                t = *(float *)(a + 0xE4) - *(float *)(m + 0x18);
                f20 = func_L00_001FF860(*(float *)(*(char **)(a + 0x8C) + 4), t);
                f20 = -f20;
                if (func_001F9B88(f20) < 0.5216f) {
                    flag23 = 1;
                    f22 += *(float *)(a + 0xE4) - *(float *)(m + 0x18);
                    *(float *)(a + 0xB8) = f20;
                    f24 += 4.0f;
                }
            }
        }
    }
    if (f24 != 0.0f) {
        f22 = f22 / f24;
    }
    if (*(unsigned short *)(a + 0xEE) & 8) {
        if (f22 < -0.1f) {
            f22 = 0.0f;
        }
        *(float *)(a + 0xD8) = 0.0f;
    } else {
        if (-0.1f < f22) {
            if (0.1f < f22 && flag23 == 0) {
                f22 = 0.0f;
            }
            *(float *)(a + 0xD8) = 0.0f;
        } else {
            *(float *)(a + 0xD8) = *(float *)(a + 0xD8) - *(float *)(a + 0xDC);
            f22 = *(float *)(a + 0xD8);
        }
    }
    for (j = 0; j < 6; j++) {
        *(float *)(a + 8 + j * 16) += f22;
    }
    *(float *)(m + 0x18) = *(float *)(m + 0x18) + f22;
    return ret;
}
