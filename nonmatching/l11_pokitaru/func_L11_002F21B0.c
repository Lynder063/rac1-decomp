/* NON_MATCHING func_L11_002F21B0 -- src/overlays/l11_pokitaru/vendor_002CC828.c
 * Best so far: SIZE ours 1736 / retail 1756, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Pokitaru moby update (class 298): switch on moby[0x20] (states 0/1/2), then a tail that runs when moby[0x53] =
 *   Runs 1-8: best is p6.c (1732 bytes vs 1756). Fixed: lbu for moby, literal /600 division checks, base pointer f
 *   Wall: retail computes the address D_0013E633+0xEED with its own lui twice (the copy into state+0x150 and the c
 */
extern void func_L02_002E2110(void *);
extern float func_001F9D10(void *, void *);
extern void func_L00_0025B178(void *);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern void func_0020D678(void *);
extern int func_L00_002676E8(void *, void *);
extern int func_L00_00267290(void *, void *);
extern void func_L01_00279398(float, void *);
extern int func_L00_00203F20(int, int);
extern float func_001F9B88(float);
extern void func_L00_002512D8(int);
extern void func_L00_00286128(void *, void *);
extern void func_L00_00264DB8(int, int);
extern int func_0020BFC8(int, int);
extern float func_001F9D48(void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern float func_001F9CB8(void *);
extern int func_001F9908(int *);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898(float);
extern float func_001FA748(float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001FA790(float, float);
extern float func_001F9CE8(void *);
extern void func_L00_00263950(char *, char *, int, float, float);
extern float D_L11_00167840[];
extern unsigned char D_0013D5EB[];
extern int D_0015EE84 MACRO_ADDR;
extern char *D_L11_0016016C MACRO_ADDR;
extern unsigned char D_0015EEB0[] MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern int D_L11_0015F6A8 MACRO_ADDR;
extern int D_0015EFA4 MACRO_ADDR;
extern char D_0013E633[];
extern unsigned char D_0013D355[];
extern unsigned char D_0013D605[];
extern char D_0014171B[];

/* Pokitaru moby update: state machine on moby[0x20], then aims the attached piece and runs its sub-updates. */
void func_L11_002F21B0(unsigned char *moby) {
    char *state = *(char **)(moby + 0x78);
    u128 va;
    float vb[4];
    float vc[4];
    float f22 = 0.02f;
    float f23 = 0.3f;
    unsigned char *tab = (unsigned char *)(D_0014171B + 0xAA35);

    func_L02_002E2110(moby);
    if (moby[0x31]) {
        if (func_001F9D10(moby + 0x10, D_L11_00167840) < 30.0f) {
            func_L00_0025B178(moby);
            moby[0x7F] = 0x18;
        }
    }
    switch ((unsigned char)moby[0x20]) {
    case 0:
        moby[0x20] = 1;
        if (moby[0x53] != 1) {
            func_00213DE0(moby, 1, 0, func_001F9850(0x14));
        }
        if (D_0013D605[0xE]) {
            func_0020D678(moby);
            return;
        }
        func_L00_002676E8(moby, state);
        *(float *)(state + 0xC) = 4.0f;
        break;
    case 1:
        if (func_L00_00267290(moby, state)) {
            func_L01_00279398(3.0f, moby);
            moby[0x20] = 2;
        }
        if (D_0013D355[0x13C] == 0 && D_0013D5EB[0] == 0) {
            if (func_001F9D10(moby + 0x10, D_0013E633 + 0xE9D) < 4.0f) {

                int k = 600;
                int a1 = func_001F9850(D_0015EFA4);
                char *p = D_0014171B + 0x34D;
                int lim = a1 - *(unsigned short *)(p + 0x432) * k;
                int a2 = func_001F9850(0x12);
                int v = (int)((float)a2 * 60.0f);
                if (v < lim || *(unsigned short *)(p + 0x432) * k == 0) {
                    func_L00_00203F20(0x2B03, 0x86);
                } else {
                    int a3 = func_001F9850(D_0015EFA4);
                    if (*(unsigned short *)(p + 0x432) < a3 / k) {
                        *(short *)(p + 0x432) = func_001F9850(D_0015EFA4) / k;
                    }
                }
            }
        }
        if (tab[(unsigned char)moby[0xB0] + (D_0015EE84 << 4)] != 0xFF) {
            char *x = D_0013E633 + 0xE9D;
            float four = 4.0f;
            if (func_001F9D10(x, moby + 0x10) < four) {
                if (func_001F9B88(*(float *)(x + 8) - *(float *)(moby + 0x18)) < four) {
                    char *base;
                    func_L00_002512D8((unsigned char)moby[0xB0]);
                    base = D_L11_0016016C + (*(int *)(state + 0x48) << 7);
                    func_L00_00286128(base + 0x30, base + 0x70);
                }
            }
        }
        break;
    case 2:
        if (D_L11_0015F6A8 != 2) {
            moby[0x20] = 1;
            if (*(short *)(state + 4) == 2) {
                D_0013D5EB[0] = 1;
                D_0013D605[0xE] = 1;
                D_0013D355[0x13C] = 0;
                func_L00_00264DB8(0x2B06, func_001F9850(0x12C));
                func_0020BFC8(0, -1);
                func_L00_00203F20(0x2AF9, 0x3B);
            }
        }
        break;
    }
    if (moby[0x53] == 1) {
        char *x = D_0013E633 + 0xE9D;
        int ok = 0;
        if (func_001F9D48(moby + 0x10, x) < 8.0f) {
            float r4 = func_001FA850(*(float *)(moby + 0x48),
                func_L00_001FF860(*(float *)(x + 0x50) - *(float *)(moby + 0x10),
                                  *(float *)(x + 0x54) - *(float *)(moby + 0x14)));
            if (r4 < 1.5707964f) {
                float r5 = func_001F9CB8(x + 0x80);
                if (0.01f < r5) {
                    *(int *)(state + 0x160) = func_001F9850(0x78);
                } else {
                    func_001F9908((int *)(state + 0x160));
                }
                ok = 1;
            }
        }
        if (!ok && *(int *)(state + 0x160) != 0) {
            *(int *)(state + 0x160) = 0;
            *(u128 *)(state + 0x150) = *(u128 *)(D_0013E633 + 0xEED);
        }
        if (func_001F9908((int *)(state + 0x164)) != 0) {
            float r = func_002140F8(180.0f, 300.0f);
            float r2 = func_001F9878(r);
            int s = func_001FA898(r2);
            float t;
            float u;
            float f20;
            *(int *)(state + 0x164) = s;
            t = func_002140F8(-90.0f, 90.0f);
            f20 = func_001FA748(*(float *)(moby + 0x48), t * 0.01745329f);
            u = func_002140F8(0.0f, 30.0f);
            func_00215C00(state + 0x150, 6.0f, f20, u * 0.01745329f);
            func_001F9BD8(state + 0x150, state + 0x150, moby + 0x10);
        }
        if (*(int *)(state + 0x160) != 0) {
            *(u128 *)&va = *(u128 *)(D_0013E633 + 0xEED);
            f22 = 0.04f;
            f23 = 0.3f;
        } else {
            *(u128 *)&va = *(u128 *)(state + 0x150);
        }
        *(u128 *)vb = *(u128 *)(moby + 0x10);
        vb[2] = vb[2] + 1.0f;
        func_001F9BF0(vc, &va, vb);
        {
            float a = func_L00_001FF860(vc[0], vc[1]);
            float f20 = func_001FA790(a, *(float *)(moby + 0x48));
            float c = func_001F9CE8(vc);
            float w = func_L00_001FF860(c, vc[2]);
            float nw = -w;
            if (1.5707964f < f20) {
                f20 = 1.5707964f;
            } else if (f20 < -1.5707964f) {
                f20 = -1.5707964f;
            }
            if (0.5235988f < nw) {
                nw = 0.5235988f;
            }
            if (nw < -0.5235988f) {
                nw = -0.5235988f;
            }
            *(float *)(state + 0xB4) = nw;
            *(float *)(state + 0x138) = f20 * 0.5f;
            *(float *)(state + 0xB8) = f20 * 0.5f;
        }
    }
    if (D_0015EEB0[0]) {
        *(float *)(state + 0xC0) = 2.75f;
    }
    func_L00_00263950(moby, state + 0x50, 0, f22 * D_0015EE64, f23 * D_0015EE64);
    func_L00_00263950(moby, state + 0xD0, 1, f22 * D_0015EE64, f23 * D_0015EE64);
}
