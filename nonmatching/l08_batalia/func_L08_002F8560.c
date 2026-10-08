/* NON_MATCHING func_L08_002F8560 -- src/overlays/l08_batalia/vendor_002EAF48.c
 * Best so far: SIZE ours 1056 / retail 1052, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 08 moby class 671 update (1052 bytes): reads the two angle fields of the light entry (func_001FA888 scal
 *   Left to fix: retail puts flag = 0 before the moby[0x20] test (ours sinks it), the 0x74 compare reuses its load
 */
typedef int u128_l8 __attribute__((mode(TI)));
extern float func_002140F8(float, float);
extern float func_001FA888(int);
extern int func_L00_00200290(char *, float);
extern void func_001F49B0(void (*)(void), void *);
extern int func_L00_0023F0D0(float *, float, float, float, float, float);
extern void func_L00_0023F1D0(int);
extern int func_001E9730();
extern int func_00120778(float);
extern float func_001F9D10(void *, void *);
extern char D_L08_00167640[];
extern char D_L08_001FC510[];
extern char D_L08_001FC540[];
extern char D_L08_001FC590[];
extern char D_L08_001FC5C0[];
extern char D_L08_00180B40[];
extern void func_L08_002F7318(void);

// Level 08 moby class 671 update: tracks two angles, the light table entry and the vector it aims with.
void func_L08_002F8560(char *moby) {
    char *data;
    char *pos;
    char *w;
    float vb[4];
    float a, b, c, d, e, g, h, t;
    float *q16;
    float *q18;
    int flag, ret, i, v;

    if (moby == 0) {
        return;
    }
    data = *(char **)(moby + 0x78);
    if (data == 0) {
        return;
    }
    pos = moby + 0x10;
    flag = 0;
    if (((unsigned char *)moby)[0x20] == 0) {
        *(int *)(data + 0xF8) = *(unsigned char *)(data + 0xF3);
        data[0x13B] = -1;
        qcopy(data + 0x140, pos);
        if (*(float *)(data + 0x70) == 0.0f) {
            func_001E9730(D_L08_001FC510);
            *(float *)(data + 0x70) = 1.0f;
        } else if (8.0f < *(float *)(data + 0x74)) {
            v = func_00120778(*(float *)(data + 0x74));
            func_001E9730(D_L08_001FC540, v);
        }
        if (*(float *)(data + 0x74) == 0.0f) {
            func_001E9730(D_L08_001FC590);
            *(float *)(data + 0x74) = 1.0f;
        } else if (8.0f < *(float *)(data + 0x70)) {
            v = func_00120778(*(float *)(data + 0x70));
            func_001E9730(D_L08_001FC5C0, v);
        }
        q16 = (float *)(data + 0x90);
        q18 = (float *)(data + 0xB0);
        for (i = 7; i >= 0; i--) {
            *q16 = func_002140F8(*(float *)(data + 0x88), 1.0f);
            q16++;
            *q18 = func_002140F8(*(float *)(data + 0x88), 1.0f);
            q18++;
        }
        ((unsigned char *)moby)[0x20] = 1;
    }

    a = *(float *)(data + 0x0);
    b = *(float *)(data + 0x4);
    c = *(float *)(*(char **)(moby + 0x24) + 0x24);
    if (b < a) {
        c = c * a;
    } else {
        c = c * b;
    }
    c = c * 0.25f;
    *(float *)(moby + 0x2C) = c;
    d = func_001FA888(*(short *)(moby + 0x32));
    e = func_001F9D10(pos, D_L08_00167640);
    g = *(float *)(data + 0x150);
    h = d - g;
    if (h < 0.0f) {
        h = 0.0f;
    }
    if (d < e) {
        *(float *)(data + 0x154) = 0.0f;
        flag = 1;
    } else {
        if (h < e) {
            t = 1.0f - (e - h) / g;
        } else {
            t = 1.0f;
        }
        *(float *)(data + 0x154) = t;
    }

    *(u128_l8 *)vb = *(u128_l8 *)pos;
    vb[3] = func_001FA888(*(unsigned char *)(data + 0x137));
    if (((unsigned char *)moby)[0x31] == 0) {
        if (func_L00_00200290(vb, 255.0f) == -1) {
            goto blk918;
        }
    }
    if (flag != 0) {
        goto blk918;
    }
    func_001F49B0(func_L08_002F7318, moby);
    if (!(*(unsigned short *)(data + 0xA) & 4)) {
        goto blk930;
    }
    v = *(signed char *)(data + 0x13B);
    if (v == -1) {
        float f24, f23, f21, f20, f16;
        char *p140;
        p140 = data + 0x140;
        f24 = (float)*(unsigned char *)(data + 0x137);
        f23 = func_001FA888(*(unsigned char *)(data + 0x138)) / 100.0f;
        t = func_001FA888(*(unsigned char *)(data + 0x134));
        f21 = *(float *)(data + 0x154) * t / 100.0f;
        t = func_001FA888(*(unsigned char *)(data + 0x135));
        f20 = *(float *)(data + 0x154) * t / 100.0f;
        t = func_001FA888(*(unsigned char *)(data + 0x136));
        f16 = *(float *)(data + 0x154) * t / 100.0f;
        data[0x13B] = func_L00_0023F0D0((float *)p140, f24, f23, f21, f20, f16);
    } else {
        w = D_L08_00180B40 + (v << 5);
        t = func_001FA888(*(unsigned char *)(data + 0x134));
        *(float *)w = *(float *)(data + 0x154) * t / 100.0f;
        t = func_001FA888(*(unsigned char *)(data + 0x135));
        *(float *)(w + 4) = *(float *)(data + 0x154) * t / 100.0f;
        t = func_001FA888(*(unsigned char *)(data + 0x136));
        *(float *)(w + 8) = *(float *)(data + 0x154) * t / 100.0f;
    }
    goto blk930;
blk918:
    v = *(signed char *)(data + 0x13B);
    if (v != -1) {
        func_L00_0023F1D0(v);
        data[0x13B] = -1;
    }
blk930:
    *(short *)(data + 0xA) = *(unsigned short *)(data + 0xA) | 2;
}
