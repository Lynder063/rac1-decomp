/* NON_MATCHING func_L15_002A4D88 -- src/overlays/l15_quartu/vendor_0029C1D0.c
 * Best so far: BYTES 41/796 (94.8% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - What it does: update function of moby class 93 (gate) on level 15. It walks the list at D_L15_00160064 with 
 *   - Best candidate p5: 804 of 796 bytes. Differences left: in case 0, retail loads D_L15_0016157C and builds the
 *   - Unblock: a way to order the level-constant loads in case 0 relative to the state-flag store, and the operand
 *   - Note: the diff shows the call in case 0 as `jal func_000000` on our side (retail `jal func_1F9790` in the di
 *   - Runs: 8 used. Run 1 and 2 failed to compile (a `D_0013E633` declaration clashed with the header's `unsigned 
 */
extern int func_00215570(void *arg0, int arg1);
extern unsigned char *func_L00_0025D390(int);
extern float func_001FA748(float, float);
extern int func_0022ED80(int, int, int);
extern float D_L15_00167440[];
extern unsigned char D_0013E633[];
extern char *D_L15_00160064 MACRO_ADDR;
extern int D_L15_00160058_m __asm__("D_L15_00160058") MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern short D_L15_0016157C;
extern short D_L15_00161580;

// Gate moby (class 93) update: picks the state from the moby list nearby, then runs that state's step.
void func_L15_002A4D88(char *moby)
{
    char *data = *(char **)(moby + 0x78);
    char *base;
    char *p;
    char *e;
    int hit = 0;
    int any = 0;
    int st;
    float v;
    float lim;
    float r;
    float f;

    if (*(int *)(data + 0x14) == -1) {
        if (((unsigned char *)moby)[0x20] != 0) {
            base = (char *)D_0013E633 + 0xE9D;
            if (func_00215570(base, *(int *)(data + 4))) {
                hit = 1;
            } else if (func_00215570(D_L15_00167440, *(int *)(data + 4))) {
                hit = 1;
            } else {
                if (!func_00215570(base, *(int *)(data + 8))) {
                    if (func_00215570(D_L15_00167440, *(int *)(data + 8)) == 0) {
                        any = 1;
                    }
                }
            }
            for (p = D_L15_00160064; p != 0; p = *(char **)(p + 0x28)) {
                if (func_L00_0025D390((int)p)) {
                    if (func_00215570(p + 0x10, *(int *)(data + 4))) {
                        hit = 1;
                    } else if (func_00215570(p + 0x10, *(int *)(data + 8)) == 0) {
                        any = 1;
                    }
                }
            }
        }
    } else {
        e = (char *)((*(int *)(data + 0x14) << 8) + D_L15_00160058_m);
        if (*(short *)(e + 0xA6) == 0x49B) {
            hit = (((unsigned char *)e)[0x20] == 2);
        }
    }
    if (hit) {
        any = 0;
    }

    st = ((unsigned char *)moby)[0x20];
    switch (st) {
    case 0:
        f = *(float *)&D_L15_0016157C;
        if (*(int *)(data + 0x10) != 0) {
            *(unsigned short *)(moby + 0x34) |= 0x8000;
        }
        {
            float k3 = 0.017453292f;
            r = f * k3;
            if (*(int *)(data + 0x10) == 0) {
                r = -r;
            }
        }
        r = func_001FA748(*(float *)(moby + 0x48), r);
        *(int *)(data + 0xC) = 0;
        moby[0x20] = 1;
        *(float *)data = r;
        *(float *)(moby + 0x48) = r;
        break;
    case 1:
        r = *(float *)data;
        *(int *)(data + 0xC) = 0;
        *(float *)(moby + 0x48) = r;
        if (hit) {
            moby[0x20] = 2;
            *(int *)(data + 0x18) = func_0022ED80(0, 0, (int)moby);
        }
        break;
    case 2:
        {
            float k2;
            v = func_001FA748(*(float *)(data + 0xC), *(float *)&D_L15_0016157C / *(float *)&D_L15_00161580 * 0.017453292f * D_0015EE6C);
            k2 = 0.017453292f;
            lim = *(float *)&D_L15_0016157C * k2;
        }
        *(float *)(data + 0xC) = v;
        if (v < lim) {
            *(float *)(data + 0xC) = lim;
            moby[0x20] = 3;
        }
        f = *(float *)(data + 0xC);
        if (*(int *)(data + 0x10) != 0) {
            f = -f;
        }
        r = func_001FA748(*(float *)data, f);
        *(float *)(moby + 0x48) = r;
        break;
    case 3:
        if (any) {
            moby[0x20] = 4;
            *(int *)(data + 0x18) = func_0022ED80(0, 0, (int)moby);
        }
        break;
    case 4:
        v = func_001FA748(*(float *)(data + 0xC), -(*(float *)&D_L15_0016157C / *(float *)&D_L15_00161580 * 0.017453292f * D_0015EE6C));
        *(float *)(data + 0xC) = v;
        if (0.0f < v) {
            *(float *)(data + 0xC) = 0.0f;
            moby[0x20] = 1;
        }
        f = *(float *)(data + 0xC);
        if (*(int *)(data + 0x10) != 0) {
            f = -f;
        }
        r = func_001FA748(*(float *)data, f);
        *(float *)(moby + 0x48) = r;
        if (hit) {
            moby[0x20] = 2;
        }
        break;
    }
}
