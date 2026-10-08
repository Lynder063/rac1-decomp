/* NON_MATCHING func_L09_00309688 -- src/overlays/l09_gaspar/vendor_002C2B08.c
 * Best so far: SIZE ours 1320 / retail 1332, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moby update: owner-link check, a bob timer driven by a float loop (sin-like calls through func_002140F8, func_
 *   Remaining differences: retail saves $fp (3 kept there for the modulus) and so has one more saved register; the
 */
extern int func_L00_001FEF78(void *);
extern void func_L09_002F0BB8(void *, void *, void *, float, int);
extern void func_L00_00260108(void *, void *, int, float, float);
extern float D_L09_0015F6B4 MACRO_ADDR;
extern float D_L09_0015F6B8 MACRO_ADDR;

/* moby update (barrier classes 1285-1287): steps a bob/sparkle timer, deletes the moby when its owner link is gone */
void func_L09_00309688(char *m) {
    char *r;
    char *tb;
    int i;
    int s;
    int neg1;
    int three;
    int flag18;
    float a20[4];
    float a30[4];
    float a40[4];
    float a50[4];
    float a60[4];
    struct { int *p; int f; int v; } st;
    float fa;
    float f20;
    float f21;
    float f1;
    float t0;
    float t1;
    float t2;
    float t3;
    float t4;
    float t5;
    float t6;
    float t8;
    float t9;
    float t10;
    unsigned char c;
    unsigned char v;

    st.p = *(int **)(m + 0x78);
    if (((unsigned char *)m)[0x20] == 0) {
        if (*st.p != -1) {
            tb = (char *)D_0013D355 + 0x13B + *st.p;
            tb[0x43] = 0;
        }
        ((unsigned char *)m)[0x20] = 1;
    }
    c = ((unsigned char *)m)[0xB0];
    if (c != 0xFF) {
        v = ((unsigned char *)D_0014171B + 0xAA35)[c + D_0015EE84 * 16];
        if (v == 0xFF) {
            if (*st.p != -1) {
                tb = (char *)D_0013D355 + 0x13B + *st.p;
                tb[0x43] = 1;
            }
            func_0020D678(m);
            return;
        }
    }

    st.f = 0;
    r = func_L00_0025B478(m, 0x40000, 0);
    if (!func_L00_001FEF78(m + 0xBC)) {
        return;
    }
    if (!r) {
        return;
    }
    s = *(short *)(m + 0xA6);
    if (s < 0x508) {
        st.f = func_L09_003095D0(m, s + 1) != 0;
    }
    m[0xBC] = func_001F9850(10);
    *(u128 *)a20 = *(u128 *)(m + 0x10);
    *(u128 *)a30 = *(u128 *)(m + 0x10);
    s = *(short *)(m + 0xA6);
    if (s < 0x508) {
        func_0022ED80_r(0, 0, m);
    } else {
        func_0022ED80_r(0, 0, m);
    }
    m[0xA4] = 0xFF;

    fa = 0.850000024f;
    st.v = 0x28;
    if (fa < D_L09_0015F6B4) {
        st.v = 0x1E;
    } else if (fa < D_L09_0015F6B8) {
        st.v = 0x1E;
    }

    neg1 = -1;
    three = 3;
    f21 = -3.1415927f;
    i = 0;
    if (st.v != 0) {
        do {
            *(u128 *)a50 = 0;
            t0 = func_002140F8(-0.400000006f, 0.400000006f);
            a50[0] = t0;
            t1 = func_002140F8(-0.600000024f, 0.600000024f);
            a50[1] = t1;
            t2 = func_002140F8(-0.400000006f, 0.400000006f);
            a50[2] = t2;
            *(u128 *)a40 = *(u128 *)a50;
            f20 = func_002140F8(0.300000012f, 2.5999999f);
            t3 = func_001F9F90(f21);
            t4 = f20 * t3;
            a40[0] = a40[0] + t4;
            t5 = func_001F9FA8(f21);
            f20 = f20 * t5;
            a40[2] = a40[2] + f20;
            func_001F9EC0(a40, a40, m + 0xC0);
            func_001F9BD8(a40, a40, a30);
            func_001F9BF0(a50, a40, a20);
            t6 = func_001F9CB8(a50);
            t8 = func_001F9B88(6.0f - t6);
            f20 = t8 / 6.0f;
            func_L00_001FF4B0(a60, r + 0x10, (f20 * f20) * 8.0f);
            func_001F9BD8(a50, a50, a60);
            t9 = func_002140F8(5.0f, 8.0f);
            func_L00_001FF4B0(a50, a50, f20 * (t9 * D_0015EE6C));

            s = *(short *)(m + 0xA6);
            if (s == 0x508) {
                t10 = func_002140F8(1.0f, 1.29999995f);
                func_L09_002F0BB8(m, a40, a50, t10, i & 1);
            }
            if (i % three == 0) {
                t9 = func_002140F8(0.300000012f, 0.600000024f);
                func_L00_00260108(m, a40, -1, t9, 0.0f);
            }
            t10 = func_001FA888(st.v);
            i++;
            f1 = 6.28318548f / t10;
            f21 = f21 + f1;
        } while (i < st.v);
    }

    func_001F9C30(a40, r + 0x10, 0.5f);
    flag18 = 1;
    neg1 = -1;
    func_L00_0025F4A8_alt(m, r + 0x10, a20, 0.0f, 0.0f, 10, 3, 16, 3.0f, 2.0f, 1.0f, 1.0f, -1, 15.0f, 1, flag18, neg1, 0);

    s = *(short *)(m + 0xA6);
    if (s == 0x508) {
        if (*st.p != neg1) {
            tb = (char *)D_0013D355 + 0x13B + *st.p;
            tb[0x43] = flag18;
        }
        if (*(short *)(m + 0xA6) == s) {
            func_0020D678(m);
        } else if (st.f) {
            func_0020D678(m);
        }
    } else if (st.f) {
        func_0020D678(m);
    }
}
