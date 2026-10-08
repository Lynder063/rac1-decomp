/* NON_MATCHING func_L08_002EA0A8 -- src/overlays/l08_batalia/vendor_002E0258.c
 * Best so far: SIZE ours 2168 / retail 2180, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped at p7 (best: p5, 2168 of 2180 bytes; p7 is the same bytes with the clamp kept in f20). The function is
 *   Still different: the allocator gives the moby parameter $21 and d $22 (retail m=$20, d=$21, see tools/regalloc
 */
typedef int u128 __attribute__((mode(TI)));

extern char D_0014171B[];
extern int D_L08_001B0FB0[];
extern char *D_L08_00160058 MACRO_ADDR;
extern int D_L08_0015F6A8 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern s32 D_0015EE84 MACRO_ADDR;
extern short D_L08_00161DC0;
extern short D_L08_00161DB4;
extern long D_L08_0016D110 MACRO_ADDR;
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80(int, int, int);
extern void func_0020D678(void *);
extern float func_002140F8(float, float);
extern float func_00214158(void);
extern float func_001F9878(float);
extern s32 func_001FA898(f32);
extern void func_L08_002E9B60(char *moby);
extern float func_L00_001FF860(float, float);
extern void func_L00_002592B0(char *moby, float *vel, float target, float k, float d, float max);
extern void func_L08_002E9CB0(char *moby);
extern void func_L08_002E9F78(char *a);
extern float func_001F9D10(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CB8(void *a);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_00250800(void *, int, void *);
extern float func_001FA748(float, float);
extern char *func_L08_002DF758(void *, void *, void *, float, float);
extern float func_001FA790(float, float);
extern int func_001F9938(void *);
extern void func_L00_00260108(void *, void *, int, float, float);

/* Update for moby class 462 (shrub) on level 08: a state machine over m[0x20]. */
void func_L08_002EA0A8(char *m) {
    char *d;
    char *P;
    int st;

    if (*(int *)&D_L08_00161DC0 != 0) return;
    d = *(char **)(m + 0x78);
    if (func_L00_0028EB98(m, *(short *)(d + 0x13E)) == 0) {
        *(short *)(d + 0x13E) = func_0022ED80(3, 4, (int)m);
    }
    st = (unsigned char)m[0x20];

    switch (st) {
    case 0: {
        unsigned char c = ((unsigned char *)(D_0014171B + 0xAA35))[(unsigned char)m[0xB0] + (D_0015EE84 << 4)];
        if (c == 0xFF) {
            func_0020D678(m);
            return;
        }
        *(int *)(d + 0x10) = D_L08_001B0FB0[*(int *)(d + 0x14)];
        *(int *)(d + 0x40) = D_L08_001B0FB0[*(int *)(d + 0x44)];
        *(short *)(d + 0x13A) = func_001FA898(func_001F9878(func_002140F8(300.0f, 600.0f)));
        *(unsigned short *)(m + 0x34) |= 0x4000;
        qcopy(m + 0x10, *(char **)(d + 0x40) + 0x10);
        func_L08_002E9B60(m);
        m[0x20] = 2;
        P = *(char **)(d + 0x40);
        *(float *)(m + 0x48) = func_L00_001FF860(*(float *)(P + 0x20) - *(float *)(m + 0x10), *(float *)(P + 0x24) - *(float *)(m + 0x14));
        break;
    }
    case 1: {
        int idx, j, cnt, off;
        char *m10;
        char *t19;
        char *p;
        char **arr;
        float r, len, sc, ang, t, f20, r21;
        float vt[4];
        float w[4];
        float w3[4];
        float vt2[4];
        char *o;

        P = *(char **)(d + 0x10);
        cnt = *(int *)P;
        idx = (*(int *)d + cnt + *(signed char *)(d + 4)) % cnt;
        t19 = D_L08_00160058 + (*(int *)(d + 0x130) << 8);
        off = idx * 16;
        ang = func_L00_001FF860(*(float *)(P + off + 0x10) - *(float *)(m + 0x10), *(float *)(P + off + 0x14) - *(float *)(m + 0x14));
        func_L00_002592B0(m, (float *)(d + 0x134), ang, 0.004f, 0.3f, 0.02f);
        func_L08_002E9CB0(m);
        func_L08_002E9F78(m);
        *(u128 *)vt = *(u128 *)(P + off + 0x10);
        m10 = m + 0x10;
        r = func_001F9D10(m10, vt);
        if (r < 0.5f) *(int *)d = idx;
        func_001F9BF0(w, vt, m10);
        len = func_001F9CB8(w);
        sc = *(float *)&D_L08_00161DB4 * D_0015EE6C;
        if (sc < len) func_L00_001FF4B0(w, w, sc);
        func_001F9BD8(m10, m10, w);
        if (*(unsigned char *)(m + 0xBC) != 0) {
            *(unsigned char *)(m + 0xBC) = 0;
            func_L00_00250800(*(char **)(d + 0xA0), 1, vt2);
            r21 = func_002140F8(0.17453292f, 0.5235988f);
            t = func_L00_001FF860(*(float *)(t19 + 0x10) - *(float *)(m + 0x10), *(float *)(t19 + 0x14) - *(float *)(m + 0x14));
            func_001FA748(t, 3.1415927f);
            f20 = func_002140F8(-0.2617994f, 0.7853982f);
            f20 = func_001FA748(f20, f20);
            if (f20 > 0.0f && f20 < 0.34f) f20 = 0.34f;
            else if (f20 <= 0.0f && f20 > -0.34f) f20 = -0.34f;
            sc = (*(float *)&D_L08_00161DB4 + *(float *)&D_L08_00161DB4) * D_0015EE6C;
            func_L00_001FF4B0(w3, w, sc);
            o = func_L08_002DF758(vt2, t19, w3, r21, f20);
            *(float *)(o + 0x2C) = *(float *)(*(char **)(o + 0x24) + 0x24) / 5.0f;
            p = *(char **)(t19 + 0x78);
            arr = (char **)(p + 0x60);
            if (arr[0] == 0) {
                arr[0] = o;
            } else {
                j = 1;
                while (j < 8 && arr[j] != 0) j++;
                if (j < 8) arr[j] = o;
            }
        }
        break;
    }
    case 2: {
        int i, j1, j2, cnt;
        char *q2;
        char *e_i, *e_j1, *e_j2;
        float f20, f21, f22, r, len, sc, r21;
        float vt[4];
        float w[4];
        float w3[4];
        float vt2[4];
        char *o;
        char *m10 = m + 0x10;

        if (D_L08_0015F6A8 == st) {
            if (*(short *)(d + 0x138) != 0) {
                if (D_L08_0016D110 == ((long)0x8000 << 18)) {
                    qcopy(m10, *(char **)(d + 0x40) + 0x100);
                    *(int *)(d + 0x30) = 0xF;
                    P = *(char **)(d + 0x40);
                    *(float *)(m + 0x48) = func_L00_001FF860(*(float *)(P + 0xC0) - *(float *)(m10), *(float *)(P + 0xC4) - *(float *)(m + 0x14));
                }
            }
        }
        q2 = d + 0x30;
        P = *(char **)(q2 + 0x10);
        i = *(int *)q2;
        cnt = *(int *)P;
        j1 = (i + 1) % cnt;
        e_i = P + i * 16 + 0x10;
        j2 = (i + 2) % cnt;
        e_j1 = P + j1 * 16 + 0x10;
        e_j2 = P + j2 * 16 + 0x10;
        f20 = func_L00_001FF860(*(float *)e_j1 - *(float *)e_i, *(float *)(e_j1 + 4) - *(float *)(e_i + 4));
        f21 = func_L00_001FF860(*(float *)e_j2 - *(float *)e_j1, *(float *)(e_j2 + 4) - *(float *)(e_j1 + 4));
        f22 = func_001FA790(f20, f21);
        f20 = func_001F9D10(m10, e_j1);
        f20 = f20 / func_001F9D10(e_i, e_j1);
        *(float *)(m + 0x48) = func_001FA748(f22 * f20, f21);
        *(u128 *)vt = *(u128 *)e_j1;
        if (func_001F9D10(m10, vt) < 0.5f) *(int *)q2 = j1;
        func_001F9BF0(w, vt, m10);
        len = func_001F9CB8(w);
        sc = *(float *)&D_L08_00161DB4 * D_0015EE6C;
        if (sc < len) func_L00_001FF4B0(w, w, sc);
        func_001F9BD8(m10, m10, w);
        func_L08_002E9F78(m);
        if (func_001F9938(d + 0x13A)) {
            r = func_002140F8(300.0f, 600.0f);
            r = func_001F9878(r);
            *(short *)(d + 0x13A) = func_001FA898(r);
            func_L00_00250800(*(char **)(d + 0xA0), 1, vt2);
            r21 = func_002140F8(-0.5235988f, -0.2617994f);
            f20 = func_00214158();
            sc = (*(float *)&D_L08_00161DB4 + *(float *)&D_L08_00161DB4) * D_0015EE6C;
            func_L00_001FF4B0(w3, w, sc);
            o = func_L08_002DF758(vt2, (void *)0, w3, r21, f20);
            if (o) {
                o[0x20] = 5;
                *(float *)(o + 0x48) = *(float *)(*(char **)(d + 0xA0) + 0x48);
                *(int *)(o + 0x44) = 0;
            }
        }
        break;
    }
    case 3: {
        m[0x20] = 1;
        P = *(char **)(d + 0x10);
        qcopy(m + 0x10, P + 0x10);
        *(float *)(m + 0x48) = func_L00_001FF860(*(float *)(P + 0x20) - *(float *)(m + 0x10), *(float *)(P + 0x24) - *(float *)(m + 0x14));
        func_L08_002E9F78(m);
        break;
    }
    case 0x63: {
        int k;
        char *q = d + 0x70;
        char *c;
        char *cd;
        for (k = 11; k >= 0; k--, q += 0x10) {
            c = *(char **)q;
            if (c != 0) {
                cd = *(char **)(c + 0x78);
                func_L00_00260108(m, c + 0x10, -1, 3.0f, 13.0f);
                func_001F9BF0(cd, c + 0x10, m + 0x10);
                func_L00_001FF4B0(cd, cd, D_0015EE6C * 5.0f);
                c[0x20] = 1;
                *(int *)q = 0;
            }
        }
        func_L00_00260108(m, m + 0x10, -1, 5.0f, 13.0f);
        func_0020D678(m);
        break;
    }
    }
}
