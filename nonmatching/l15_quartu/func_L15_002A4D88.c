/* NON_MATCHING func_L15_002A4D88 -- src/overlays/l15_quartu/vendor_0029C1D0.c
 * Best so far: BYTES 30/796 (96.2% of the bytes match), checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Outline: gate update. Trigger scan (volumes or a trigger moby), then a five-state jump table on moby->state;
 *   states 0/2/4 call func_001FA748 with the level floats D_L15_0016157C and D_L15_00161580 ($gp) and D_0015EE6C.
 *   - c0 (carried-over file unchanged): COMPILE. The destination file defines Vec4f, struct MobyClass and
 *   struct Moby below this stub now.
 *   - c1: those three names suffixed _A4D88: BYTES 25, case 2: the read of D_L15_0016157C through a cast waits
 *   behind the store to vars->swing (retail loads it first and puts the store in the branch's delay slot).
 *   - c2: both $gp floats as `extern f32 X_A4D88 SDATA(X);` used plainly: EXACT.
 *   - run 1, p0.c (= c2.c): EXACT.
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
    float k3 = 0.017453292f;

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
    case 0: {
        float g = *(float *)&D_L15_0016157C;
        if (*(int *)(data + 0x10) != 0) {
            *(unsigned short *)(moby + 0x34) |= 0x8000;
            g = *(float *)&D_L15_0016157C;
        }
        r = g * k3;
        if (*(int *)(data + 0x10) == 0) {
            r = -r;
        }
        r = func_001FA748(*(float *)(moby + 0x48), r);
        *(int *)(data + 0xC) = 0;
        *(float *)data = r;
        moby[0x20] = 1;
        *(float *)(moby + 0x48) = r;
        break;
    }
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
