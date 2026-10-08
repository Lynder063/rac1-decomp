/* NON_MATCHING func_L02_002E3660 -- src/overlays/l02_aridia/vendor_002E21F8.c
 * Best so far: SIZE ours 1232 / retail 1240, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Liftcar platform update (1240 bytes, moby class 792): positions the platform from the track table, runs a 7-ca
 *   Left: our build keeps the address of the local vector in a saved register across the calls (retail recomputes 
 */
typedef int u128 __attribute__((mode(TI)));

extern void func_001F9C30(void *, void *, float);
extern void func_L00_00250800(void *, int, void *);
extern void func_0020DAF8(char *, int, char *);
extern void func_00213DE0(void *, int, int, int);
extern float func_001F9D48(void *, void *);
extern void func_00213D28(void *, int, int);
extern int func_0022ED80(int, int, int);
extern void func_L00_0028EBF0(int);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_002617B0(char *, void *, void *, void *);
extern unsigned char D_0014171B[] NOT_SDA;
extern int D_0015EE84 MACRO_ADDR;
extern char D_0013F450[] MACRO_ADDR;
extern char D_0013F4D0[] MACRO_ADDR;
extern char D_0013E650[] MACRO_ADDR;

/* Level 2 liftcar platform update: positions the platform on its track, runs its state machine and refreshes its target. */
void func_L02_002E3660(unsigned char *moby) {
    char *data = *(char **)(moby + 0x78);
    char *other = D_L02_00160058 + (*(int *)(data + 0xA0) << 8);
    u128 v0;
    u128 v10;
    u128 v20;
    u128 v60;
    float f;
    int s;
    int c16 = 0;
    char *pm = (char *)moby + 0x10;
    char *s10 = (char *)&v10;

    func_001F9C30(&v0, pm, -1.0f);
    v10 = *(u128 *)(moby + 0x40);
    func_L00_00250800(other, 0, &v60);
    *(u128 *)pm = v60;

    switch (moby[0x20]) {
    case 0:
        func_0020DAF8(other, 0, (char *)&v20);
        *(float *)(moby + 0x48) = func_L00_001FF860(*(float *)&v20, *(float *)((char *)&v20 + 4));
        moby[0x20] = 1;
        func_00213DE0(other, 3, 0, 0);
        break;
    case 1:
        if (D_0014171B[0xAA35 + moby[0xB0] + (D_0015EE84 << 4)] == 0xFF)
            moby[0x20] = 5;
        break;
    case 2:
    case 4:
        func_0020DAF8(other, 0, (char *)&v20);
        *(float *)(moby + 0x48) = func_L00_001FF860(*(float *)&v20, *(float *)((char *)&v20 + 4));
        if (func_001F9D48(pm, D_0013F4D0) < 1.5f) {
            if (*(float *)(D_0013F4D0 + 8) < *(float *)(moby + 0x18) - 1.5f) {
                *(int *)(other + 0x58) = 0;
                s = *(int *)(data + 0xA4);
                if (s != -1) {
                    char *t = D_0013E650 + s * 0x70;
                    if (*(int *)(t + 0x88) == (int)other && ((unsigned char *)t)[0x74] != 0)
                        func_L00_0028EBF0(s);
                }
                *(int *)(data + 0xA4) = -1;
            }
        }
        if (*(float *)(other + 0x58) == 0.0f) {
            f = func_001F9D48(pm, D_0013F4D0);
            if (2.0f < f || *(float *)(moby + 0x18) - 1.25f < *(float *)(D_0013F4D0 + 8)) {
                *(float *)(other + 0x58) = 1.0f;
                s = func_0022ED80(moby[0x20] != 2 ? 0 : 2, 4, (int)other);
                *(int *)(data + 0xA4) = s;
            }
        }
        if (((unsigned char *)other)[0x70] & 2) {
            s = *(int *)(data + 0xA4);
            if (s != -1) {
                char *t = D_0013E650 + s * 0x70;
                if (*(int *)(t + 0x88) == (int)other && ((unsigned char *)t)[0x74] != 0)
                    func_L00_0028EBF0(s);
            }
            *(int *)(data + 0xA4) = -1;
            if (moby[0x20] == 2) {
                moby[0x20] = 3;
                func_00213DE0(other, 1, 0, 0);
                func_0022ED80(3, 0, (int)other);
                moby[0xBC] = 1;
            } else {
                moby[0x20] = 5;
                func_00213DE0(other, 3, 0, 0);
                func_0022ED80(1, 0, (int)other);
                moby[0xBC] = 1;
            }
        }
        break;
    case 3:
    case 5:
        if (*(int *)(D_0013F450 + 0x2FC) == (int)moby && *(short *)(D_0013F450 + 0x30E) == 0 && moby[0xBC] == 0) {
            c16 = 1;
        } else if (func_001F9D48(pm, D_0013F4D0) < 16.0f) {
            if (moby[0x20] == 5) {
                if (*(float *)(D_0013F4D0 + 8) < *(float *)(moby + 0x18) - 5.0f)
                    c16 = 1;
            } else if (moby[0x20] == 3) {
                if (*(float *)(moby + 0x18) + 5.0f < *(float *)(D_0013F450 + 0x88))
                    c16 = 1;
            }
        }
        if (c16) {
            if (moby[0x20] == 5 || moby[0x20] == 1) {
                moby[0x20] = 2;
                func_00213D28(other, 0, 0);
                *(int *)(data + 0xA4) = func_0022ED80(2, 4, (int)other);
            } else {
                moby[0x20] = 4;
                func_00213D28(other, 2, 0);
                *(int *)(data + 0xA4) = func_0022ED80(0, 4, (int)other);
            }
        } else if (*(int *)(D_0013F450 + 0x2FC) != (int)moby) {
            moby[0xBC] = 0;
        }
        break;
    }

    func_001F9BD8(&v0, &v0, pm);
    func_L00_002617B0(data + 0x60, &v0, s10, moby + 0x40);
}
