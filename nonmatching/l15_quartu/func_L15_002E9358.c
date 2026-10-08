/* NON_MATCHING func_L15_002E9358 -- src/overlays/l15_quartu/vendor_0029C1D0.c
 * Best so far: SIZE ours 944 / retail 948, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Poison-vessel update: 3 states (0 and 1 handled, other states go to a common tail that fires an effect when mo
 *   Still differs: the prologue saves $21 and $19 for the stack vector and data pointer (ours saves one register f
 *   Wall-free; needs a different register assignment for the stack vectors (u128 locals versus the caller's frame)
 */
extern char D_L15_001744C0[];
extern int D_L15_001744D8;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_L15_0016203C SDATA(D_L15_0016203C);
extern char *D_L15_00178580[];
extern int func_L00_001F10E0(float, void *, int, void *);
extern unsigned char *func_L00_0025D390(int);
extern char *func_L00_0025B478(void *, int, int);
extern void func_L00_001FF240(void *, void *, void *);
extern int func_L00_001EFFF0(void *, void *, int, void *, void *);
extern void func_L00_001FF610(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_00214358(void *, int, float);
extern int func_L00_00261478(int unused, char *m, char *a, void *b, char *c, void *d);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int);
extern int func_L00_0028EF68_v(int, int, void *, int) __asm__("func_L00_0028EF68");
extern void func_L00_001F2BE8(void *, int, void *, void *, float);
extern void func_L00_0025BA50(void *, void *, void *, int, int, int, int, int, float, float, float);
extern void func_0020D678(void *);
extern void func_001F9BC0(void *);

/* Poison vessel update (moby class 1257): tracks its target and fires its effect. */
void func_L15_002E9358(char *moby) {
    u128 s20, s30, s40;
    char *data = *(char **)(moby + 0x78);
    char *p20 = 0;
    unsigned char state;
    int ret;
    char *r;

    s20 = *(u128 *)(moby + 0x10);
    func_001F9BC0(&s30);
    if (func_L00_001F10E0(0.5f, moby + 0x10, 1, moby)) {
        int id = D_L15_001744D8;
        if (id == 0 || func_L00_0025D390(id) == 0)
            moby[0xBC] = 1;
    }
    r = func_L00_0025B478(moby, 0x830000, 0);
    if (r != 0) {
        char *q = *(char **)(r + 0x20);
        if (q != 0 && *(short *)(q + 0xA6) != *(short *)(moby + 0xA6))
            moby[0xBC] = 1;
    }
    ((unsigned char *)moby)[0xA4] = 0xFF;

    state = moby[0x20];
    if (state != 0) {
        char *v = moby + 0x10;
        if (state == 1) {
            unsigned char *d10;
                        func_00214358(v, 0, 0.5f);
            d10 = *(unsigned char **)(data + 0x10);
            if (d10 != 0) {
                if (d10[0x20] == 0xFE) {
                    moby[0xBC] = state;
                    *(int *)(data + 0x10) = 0;
                } else if (d10[0x20] == 0xFD) {
                    moby[0xBC] = state;
                    *(int *)(data + 0x10) = 0;
                } else {
                    int id2 = D_L15_001744D8;
                    if (id2 != 0) {
                        p20 = (char *)func_L00_0025D390(id2);
                        if (p20 != 0) {
                            func_L00_00261478((int)moby, *(char **)(data + 0x10), v, moby + 0x40, v, moby + 0x40);
                            func_001F9BF0(&s40, v, &s20);
                            *(u128 *)data = s40;
                        }
                    }
                }
            }
            if (p20 == 0) {
                moby[0x20] = 0;
                *(int *)(data + 0x8) = 0;
                *(int *)(data + 0x10) = 0;
            }
        }
    } else {
        *(float *)(data + 0x8) = *(float *)(data + 0x8) - D_L15_0016203C * D_0015EE70;
        p20 = moby + 0x10;
        func_L00_001FF240(&s40, moby + 0x10, data);
        if (func_L00_001EFFF0(&s20, moby + 0x10, 0x10, moby, 0)) {
            char *tb = D_L15_001744C0;
            if (*(int *)(tb + 0x18) != 0 && func_L00_0025D390(*(int *)(tb + 0x18)) != 0) {
                *(int *)(data + 0x10) = *(int *)(tb + 0x18);
                moby[0x20] = 1;
                *(int *)(data + 0x8) = 0;
                qcopy(moby + 0x10, tb + 0x20);
            } else if (*(int *)(tb + 0x18) == *(int *)(D_0013E633 + 0x2E9D)
                       || *(float *)(data + 0x8) < D_0015EE6C * -9.8f) {
                moby[0xBC] = 1;
                qcopy(p20, tb + 0x20);
                func_L00_001FF610(&s30, data, tb + 0x40);
                func_L00_001FF4B0(&s30, &s30, D_0015EE6C + D_0015EE6C);
            }
        }
    }

    if (((unsigned char *)moby)[0xBC] != 0) {
        func_L00_0025F4A8(moby, data, 0, 0.0f, 0.0f, 3, 3, 5, 2.0f, 1.0f, 4.0f, 1.0f, -1, 7.0f, 0, 1, -1, 0);
        ret = func_L00_0028EF68_v(0, 0, moby, 0x79);
        func_L00_001F2BE8(moby + 0x10, 0x10, moby, 0, 2.0f);
        s40 = *(u128 *)(moby + 0x10);
        func_L00_0025BA50(moby, &s40, D_L15_00178580, ret, 0, 0x830001, 2, 1, 1.0f, 1.0f, 1.0f);
        func_0020D678(moby);
    }
}
