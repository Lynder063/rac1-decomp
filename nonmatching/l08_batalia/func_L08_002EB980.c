/* NON_MATCHING func_L08_002EB980 -- src/overlays/l08_batalia/vendor_002EAF48.c
 * Best so far: SIZE ours 784 / retail 800, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Update for moby classes 468/469: func_001FA790/748/850 chain decides a zero or non-zero branch; class 0x1D4 us
 *   Left: retail places the zero-path branch as bc1t to the zero code (ours falls through), the lui/lw of D_L08_00
 */
extern int func_L00_0028EB98(void *, int);
extern int func_L00_0028F210(int, int);
extern void func_L00_0028EBF0(int);
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern float func_001FA850(float, float);
extern int func_0022ED80(int, int, int);
extern int func_001F9850(int);
extern void func_001FA218(float *, float *);
extern void func_001F9EE8(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern char *D_L08_00160058 MACRO_ADDR;
extern int D_L08_0015F6A8 MACRO_ADDR;
extern char D_0013E633[];
extern char D_0013D355[];

// Update for moby classes 468 and 469 on level 08: steers toward a target.
void func_L08_002EB980(char *moby) {
    char *data = *(char **)(moby + 0x78);
    char *tab = D_0013E633 + 0x1D;
    float v[4];
    float tmp[4];
    float f21;
    float f20;
    float f0;
    int flags;
    int cls;
    int idx;
    int q;
    unsigned char st;
    char *w;
    char *p;

    v[0] = 0.0f;
    v[1] = 0.0f;
    v[2] = 30.0f;
    v[3] = 0.0f;
    p = D_L08_00160058 + (*(int *)data << 8);
    f21 = *(float *)*(char **)(p + 0x78);
    if (D_L08_0015F6A8 == 2) {
        moby[0x31] = 0;
        flags = *(unsigned short *)(moby + 0x34) | 1;
    } else {
        moby[0x31] = 1;
        flags = *(unsigned short *)(moby + 0x34) & 0xFFFE;
    }
    *(unsigned short *)(moby + 0x34) = flags;
    st = *(unsigned char *)(moby + 0x20);
    if (st == 0) {
        moby[0x20] = 1;
        qcopy(data + 0x10, moby + 0x10);
        return;
    }
    if (st != 1) {
        return;
    }
    f20 = 0.017453292f;
    f0 = func_001FA790(*(float *)(data + 4) * f20, *(float *)(data + 8) * f20);
    f0 = func_001FA748(f0 * f21, *(float *)(data + 8) * f20);
    f20 = f0;
    f0 = func_001FA850(*(float *)(moby + 0x44), f20);
    cls = *(short *)(moby + 0xA6);
    if (f0 == 0.0f) {
        if (cls == 0x1D4) {
            if (func_L00_0028EB98(moby, *(int *)(data + 0x20)) != 0) {
                idx = *(int *)(data + 0x20);
                if (*(int *)(tab + idx * 0x70 + 0x80) < 0x100) {
                    func_L00_0028EBF0(idx);
                    *(int *)(data + 0x20) = -1;
                } else {
                    q = 0x400 / func_001F9850(0x3C);
                    func_L00_0028F210(idx, *(int *)(tab + idx * 0x70 + 0x80) - q);
                }
            }
        }
    } else {
        *(float *)(moby + 0x44) = f20;
        if (cls == 0x1D4) {
            if (func_L00_0028EB98(moby, *(int *)(data + 0x20)) != 0) {
                idx = *(int *)(data + 0x20);
                if (*(int *)(tab + idx * 0x70 + 0x80) < 0x400) {
                    q = 0x400 / func_001F9850(0x3C);
                    func_L00_0028F210(idx, *(int *)(tab + idx * 0x70 + 0x80) + q);
                }
            } else {
                idx = func_0022ED80(0, 4, (int)moby);
                *(int *)(data + 0x20) = idx;
                func_L00_0028F210(idx, 1);
            }
        }
    }
    func_001FA218(tmp, (float *)(moby + 0x40));
    func_001F9EE8(v, v, tmp);
    func_001F9BD8(moby + 0x10, data + 0x10, v);
    if (f21 == 1.0f) {
        cls = *(short *)(moby + 0xA6);
        if (cls == 0x1D4) {
            w = D_0013D355 + 0x13B;
            w += *(int *)(data + 0xC);
            w[0x30] = 1;
            moby[0x20] = 2;
            func_0022ED80(1, 0, (int)moby);
            if (*(short *)(moby + 0xA6) == cls) {
                if (func_L00_0028EB98(moby, *(int *)(data + 0x20)) != 0) {
                    func_L00_0028EBF0(*(int *)(data + 0x20));
                }
            }
        }
    }
}
