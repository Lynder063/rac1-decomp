/* NON_MATCHING func_L01_002F44F8 -- src/overlays/l01_novalis/vendor_002BA898.c
 * Best so far: SIZE ours 1096 / retail 1092, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Water current update for moby class 613: walks a ring of 16-byte points (p+0x10 + 16i), stores a per-point ang
 *   Left: register allocation. Retail keeps moby in $s7 and hoists the hi part of D_0013E633+0xE1D into $fp at ent
 *   Would unblock: a source form that keeps the hi part in a saved register from entry and gives moby the first sa
 */
extern char *D_L01_001B0C30[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE60 MACRO_ADDR;
extern short D_0015EE6C_s __asm__("D_0015EE6C");
extern char D_0013E633[];
extern float func_001F9D10(void *, void *);
extern float func_001F9D48(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001F9CB8(void *);
extern int func_001F9850(int);
extern void func_001F9BC0(void *);
extern int func_L00_0025E860(void *, void *, int *, float *, float, int);
extern void func_L00_0025EFC0(void *, void *, void *, int *, float *, int, float, float, float);

// Water current update (moby class 613): averages the current ring and steers the moby's flow vector.
void func_L01_002F44F8(char *moby) {
    char *data = *(char **)(moby + 0x78);
    char *p;
    char *g;
    char *e;
    char *base;
    char *a;
    char *b;
    char *o;
    int i;
    int n;
    int v;
    int r2;
    int ci;
    float cf;
    float f;
    float dist;
    float zero;
    float len;
    float t;
    float v0[4];
    float v1[4];
    float u[4];
    float w2[4];

    if (data == 0) {
        return;
    }
    if (*(int *)(data + 0x20) == -1) {
        return;
    }
    p = D_L01_001B0C30[*(int *)(data + 0x20)];

    if (*(short *)(data + 0x2E) == 0) {
        i = 0;
        *(short *)(data + 0x2E) = 1;
        n = *(int *)p;
        base = p + 0x10;
        o = p + 0x1C;
        b = p + 0x20;
        a = base;
        if (n - 1 > 0) {
            do {
                f = func_001F9D10(a, b);
                i++;
                *(float *)o = f;
                b += 0x10;
                o += 0x10;
                a += 0x10;
            } while (i < n - 1);
        }
        i = i << 4;
        f = func_001F9D10(p + 0x10 + i, base);
        *(float *)(p + i + 0x1C) = f;
        *(unsigned char *)(moby + 0x30) = 0xFF;
    }

    g = (char *)D_0013E633 + 0xE1D;
    v = *(int *)(g + 0x208C);
    if ((unsigned)(v - 0x11) < 2u) {
        goto P1;
    }
    if (*(int *)(g + 0x2094) == 0x11) {
        goto P1;
    }
    if (*(int *)(g + 0x2094) == 0x12) {
        goto P1;
    }
    if (*(int *)(g + 0x2084) == 0x12) {
        goto P1;
    }
    if (*(int *)(g + 0x2090) != 0x12) {
        return;
    }
P1:
    zero = 0.0f;
    e = (char *)D_0013E633 + 0xE9D;
    func_L00_0025EFC0(p, e, v0, &ci, &cf, 0, 999.0f, 5.0f, zero);
    r2 = func_L00_0025E860(p, v1, &ci, &cf, 2.0f, 0);
    dist = func_001F9D48(e, v0);
    if (*(float *)(data + 0x28) < dist) {
        return;
    }
    g = e - 0x80;
    v = *(int *)(g + 0x208C);
    if ((unsigned)(v - 0x11) < 2u) {
        if (*(float *)(g + 0x22B8) < dist) {
            return;
        }
        *(float *)(g + 0x22B8) = dist;
        if (r2 == 0) {
            func_001F9BF0(u, v1, v0);
            func_L00_001FF4B0(u, u, D_0015EE70 * 7.0f);
            func_001F9BD8(data, data, u);
            *(float *)(data + 0x8) = zero;
            len = func_001F9CB8(data);
            if (*(float *)(data + 0x24) < len) {
                func_L00_001FF4B0(data, data, *(float *)(data + 0x24));
            }
            qcopy(e + 0x70, data);
            if (*(short *)(data + 0x2C) != 0) {
                func_001F9BF0(w2, v0, e);
                w2[2] = zero;
                zero = *(float *)(data + 0x24) * 0.4000000059604645f;
                len = func_001F9CB8(w2);
                if (zero < len) {
                    func_L00_001FF4B0(w2, w2, zero);
                }
                func_001F9BD8(e + 0x70, e + 0x70, w2);
            }
        } else {
            len = func_001F9CB8(data);
            t = D_0015EE60 * -0.004999995231628418f;
            t = t * len;
            func_L00_001FF4B0(data, data, t + len);
            qcopy(e + 0x70, data);
        }
    } else {
        if (*(int *)(g + 0x2094) != 0x12) {
            if (*(int *)(g + 0x20A0) != 0x12) {
                return;
            }
        }
        if ((unsigned)(v - 4) >= 2u) {
            return;
        }
        len = func_001F9CB8(data);
        t = D_0015EE60 * -0.014999985694885254f;
        t = t * len;
        func_L00_001FF4B0(data, data, t + len);
        qcopy(e + 0x70, data);
        i = *(short *)(g + 0x1D8);
        if (i < func_001F9850(0x23)) {
            *(short *)(g + 0x1D8) = func_001F9850(0x23);
        }
        return;
    }

    if (*(int *)(g + 0x208C) != 0x12) {
        return;
    }
    if (*(int *)(g + 0x2090) != *(int *)(g + 0x208C)) {
        return;
    }
    v = func_001F9850(3);
    if (!(*(int *)(g + 0x198) < v)) {
        return;
    }
    f = *(float *)&D_0015EE6C_s * 1.5f;
    if (f < *(float *)(g + 0x194)) {
        *(float *)(g + 0x194) = f;
    }
    func_001F9BC0(g + 0x150);
}
