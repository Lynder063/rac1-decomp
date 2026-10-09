/* NON_MATCHING func_L08_003091B0 -- src/overlays/shared/vendor_002D3DF8.c
 * Best so far: SIZE ours 2016 / retail 2020, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moby class 1400 update (levels 08, 12, 14): mode flag from D_0015EE84 (0xC or 0x200), then a state switch on m
 *   Runs 1-5 (p0 was an unrun draft and is invalid C; p1 was the full draft, p2 is p1 minus a stray copy: 2016, 4 
 *   Unblock: the register choice for flag and dst (regalloc.py priorities) and the placement of the f22-vs-f25 bra
 */
extern int D_0015EE84 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern char D_L08_00167640[];
extern char D_L08_001602D0[];
extern float D_L08_00162400 MACRO_ADDR;
extern float D_L08_001623F0[2] MACRO_ADDR;
extern float D_L08_001623F4 MACRO_ADDR;
extern int D_L08_00162404 MACRO_ADDR;
extern short D_L08_001623D0;
extern short D_L08_001623D4;
extern short D_L08_001623D8;
extern short D_L08_001623E4;
extern short D_L08_001623E8;
extern short D_L08_001623EC;
extern short D_L08_001602E0;
extern void func_L08_00309050(int);
extern int func_L08_00211A38(float *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_00263D68(void *, void *, float, float, float);
extern float func_002140F8(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern float func_001F9CE8(void *);
extern float func_L00_002644E0(void *);
extern void func_L08_00273A80(void *, void *, void *, float);
extern void func_L08_002803B8(void *, int, void *, float);
extern void func_L00_00264570(void *);

/* moby class 1400 update: steers the offset vectors from the mode, fans them out to the object over counted loops */
void func_L08_003091B0(char *moby) {
    char s[0x60];
    char *obj;
    char *dst;
    char *R;
    char *v;
    void *q;
    int flag;
    int st;
    int n;
    int n18;
    int cnt;
    int h;
    float t, u, r, z, y, t1, t2, t3, t4, w, x2, x3, v2, f0, f1, f2;
    float f20, f21, f22, f23, f24, f25, f26, f27, f28, f29;

    flag = 0;
    if (D_0015EE84 == 0xC || D_0015EE84 == 0x200) {
        flag = 1;
    }
    if (flag == 1) {
        *(int *)(s + 0x50) = 0;
        f29 = 0.2f;
        f26 = 5.0f;
        f27 = 0.5f;
        f23 = D_0015EE6C;
    } else {
        f0 = D_0015EE6C;
        *(int *)(s + 0x50) = 1;
        f23 = f0 + f0;
        f29 = 0.15f;
        f26 = 18.0f;
        f27 = *(float *)&D_L08_001623D0;
    }
    f0 = *(float *)&D_L08_001623E4;
    f20 = 0.0f;
    if (f20 <= f0) {
        f27 = f0;
    }

    st = *(unsigned char *)(moby + 0x20);
    obj = *(char **)(moby + 0x78);
    if (st == 0) {
        *(unsigned char *)(moby + 0x30) = 0xFF;
        *(unsigned char *)(moby + 0x20) = 2;
        func_L08_00309050(flag);
        dst = obj + 0x30;
    } else if (st == 2) {
        if (func_L08_00211A38(&D_L08_00162400)) {
            func_L08_00309050(flag);
        }
        obj = obj + 0x30;
        dst = obj;
        R = D_L08_00167640 - 0x140;
        func_001F9BF0(s + 0x10, D_L08_00167640, obj);
        qcopy(D_L08_001602D0, s + 0x10);
        qcopy(s + 0x20, D_L08_00167640);
        func_L00_00263D68(s + 0x20, s + 0x20, 16.0f, *(float *)(R + 0x158), *(float *)(R + 0x154));
        n = D_L08_00162404;
        *(float *)(s + 0x28) = *(float *)(R + 0x148) + *(float *)&D_L08_001623D4;
        if (n > 0) {
            cnt = n;
            f28 = 6.2831853f;
            f25 = 8.0f;
            f24 = f20;
            v = s + 0x30;
            do {
                qcopy(s, s + 0x20);
                t1 = func_002140F8(f24, f28);
                r = func_001F9F90(t1);
                f20 = r;
                t2 = func_002140F8(f24, *(float *)&D_L08_001623D8);
                f20 = f20 * t2;
                *(float *)s = *(float *)s + f20;
                t3 = func_002140F8(f24, f28);
                z = func_001F9FA8(t3);
                f20 = z;
                t4 = func_002140F8(f24, *(float *)&D_L08_001623D8);
                f20 = f20 * t4;
                *(float *)(s + 0x4) = *(float *)(s + 0x4) + f20;
                func_001F9BF0(v, s, D_L08_00167640);
                f22 = func_001F9CE8(v);
                if (f22 <= f25) {
                    f20 = -f23;
                    t = func_002140F8(f20, f23);
                    *(float *)(s + 0x40) = D_L08_001623F0[0] + t;
                    u = func_002140F8(f20, f23);
                    t = D_0015EE6C * f26;
                } else {
                    f0 = f22 - f25;
                    f21 = f0 * f29;
                    f21 = f26 - f21;
                    if (f21 < f27) {
                        f21 = f27;
                    }
                    f20 = -f23;
                    t = func_002140F8(f20, f23);
                    *(float *)(s + 0x40) = D_L08_001623F0[0] + t;
                    u = func_002140F8(f20, f23);
                    t = D_0015EE6C * f21;
                }
                *(float *)(s + 0x4C) = f24;
                *(float *)(s + 0x44) = D_L08_001623F4 + u;
                *(float *)(s + 0x48) = -t;
                f1 = *(float *)(R + 0x148) - *(float *)&D_L08_001623EC;
                *(float *)&D_L08_001602E0 = f1;
                f2 = func_L00_002644E0(s);
                f1 = *(float *)(R + 0x148) + *(float *)&D_L08_001623D4;
                if (f2 < f1) {
                    f0 = *(float *)&D_L08_001602E0;
                    f20 = f2;
                    if (f2 < f0) {
                        f20 = f0;
                    }
                    q = (f22 > f25) ? (void *)*(int *)&D_L08_001623E8 : (void *)0;
                    if (flag == 0) {
                        func_L08_00273A80(s, q, s + 0x40, f20);
                    }
                    if (flag == 1) {
                        func_L08_002803B8(s, (int)q, s + 0x40, f20);
                    }
                }
                cnt--;
            } while (cnt != 0);
        }

        /* L598: scale the count by 1.4 */
        t = (float)n * 1.4f;
        n = (int)t;
        qcopy(s + 0x20, D_L08_00167640);
        *(float *)(s + 0x28) = *(float *)(R + 0x148) + *(float *)&D_L08_001623D4;
        if (n > 0) {
            cnt = n;
            f22 = -f23;
            f25 = 6.2831853f;
            f21 = 0.0f;
            f24 = 8.0f;
            do {
                t = func_002140F8(f22, f23);
                *(float *)(s + 0x30) = D_L08_001623F0[0] + t;
                u = func_002140F8(f22, f23);
                t1 = D_0015EE6C * f26;
                *(int *)(s + 0x3C) = 0;
                qcopy(s, s + 0x20);
                *(float *)(s + 0x34) = D_L08_001623F4 + u;
                *(float *)(s + 0x38) = -t1;
                v2 = func_002140F8(f21, f25);
                w = func_001F9F90(v2);
                f20 = w;
                x2 = func_002140F8(f21, f24);
                f20 = f20 * x2;
                *(float *)s = *(float *)s + f20;
                y = func_002140F8(f21, f25);
                z = func_001F9FA8(y);
                f20 = z;
                x3 = func_002140F8(f21, f24);
                f20 = f20 * x3;
                *(float *)(s + 0x4) = *(float *)(s + 0x4) + f20;
                *(float *)&D_L08_001602E0 = *(float *)(R + 0x148) - *(float *)&D_L08_001623EC;
                f2 = func_L00_002644E0(s);
                f1 = *(float *)(R + 0x148) + *(float *)&D_L08_001623D4;
                if (f2 < f1) {
                    f0 = *(float *)&D_L08_001602E0;
                    f20 = f2;
                    if (f2 < f0) {
                        f20 = f0;
                    }
                    if (flag == 0) {
                        func_L08_00273A80(s, (void *)0, s + 0x30, f20);
                    }
                    if (flag == 1) {
                        func_L08_002803B8(s, 0, s + 0x30, f20);
                    }
                }
                cnt--;
            } while (cnt != 0);
        }

        /* L758 */
        if (*(int *)(s + 0x50) != 0) {
            f20 = 30.0f;
            qcopy(s + 0x20, D_L08_00167640);
            func_L00_00263D68(s + 0x20, s + 0x20, f20, *(float *)(R + 0x158), *(float *)(R + 0x154));
            n18 = n >> 31;
            *(float *)(s + 0x28) = *(float *)(R + 0x148) + *(float *)&D_L08_001623D4;
            if (n > 0) {
                cnt = n;
                f23 = f20;
                f21 = 0.0f;
                f22 = 6.2831853f;
                do {
                    qcopy(s, s + 0x20);
                    t1 = func_002140F8(f21, f22);
                    r = func_001F9F90(t1);
                    f20 = r;
                    t2 = func_002140F8(f21, f23);
                    f20 = f20 * t2;
                    *(float *)s = *(float *)s + f20;
                    t3 = func_002140F8(f21, f22);
                    z = func_001F9FA8(t3);
                    f20 = z;
                    t4 = func_002140F8(f21, f23);
                    f20 = f20 * t4;
                    *(float *)(s + 0x4) = *(float *)(s + 0x4) + f20;
                    func_L00_00264570(s);
                    cnt--;
                } while (cnt != 0);
            }
            /* L848 */
            qcopy(s + 0x20, D_L08_00167640);
            func_L00_00263D68(s + 0x20, s + 0x20, 4.0f, *(float *)(R + 0x158), *(float *)(R + 0x154));
            *(float *)(s + 0x28) = *(float *)(R + 0x148) + *(float *)&D_L08_001623D4;
            h = (n - n18) >> 1;
            if (h > 0) {
                cnt = h;
                f21 = 0.0f;
                f23 = 6.2831853f;
                f22 = 8.0f;
                do {
                    qcopy(s, s + 0x20);
                    t1 = func_002140F8(f21, f23);
                    r = func_001F9F90(t1);
                    f20 = r;
                    t2 = func_002140F8(f21, f22);
                    f20 = f20 * t2;
                    *(float *)s = *(float *)s + f20;
                    t3 = func_002140F8(f21, f23);
                    z = func_001F9FA8(t3);
                    f20 = z;
                    t4 = func_002140F8(f21, f22);
                    f20 = f20 * t4;
                    *(float *)(s + 0x4) = *(float *)(s + 0x4) + f20;
                    func_L00_00264570(s);
                    cnt--;
                } while (cnt != 0);
            }
        }
    } else {
        dst = obj + 0x30;
    }
    qcopy(dst, D_L08_00167640);
}
