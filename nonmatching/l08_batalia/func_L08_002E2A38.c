/* NON_MATCHING func_L08_002E2A38 -- src/overlays/l08_batalia/vendor_002E0258.c
 * Best so far: SIZE ours 1484 / retail 1492, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   s07 (hq8): level 08 moby update, state machine (1 approach, 2 settle/draw, 3 retire) with random offsets fed t
 *   Remaining differences: (1) the 8-byte copy from D_L08_00161CC0 is ldl/ldr in retail, ld in ours; char[] gets 8
 *   Would unblock: a declaration of D_L08_00161CC0 that makes the compiler treat it as unaligned, or the sequence 
 */
extern float func_002140F8(float, float);
extern int func_001F9850(int);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001FA748(float, float);
extern void func_0020D678(void *);
extern int func_002140B0(int);
extern void func_001F9BC0(void *);
extern int func_L00_00258BC8(int, int);
extern void func_L00_0026B890(void *, void *, int, int, float, int, int, int, int, float);
extern float func_00214158(void);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern float func_001F9878(float);
extern int func_001FA898(float);
extern char *func_00219780(void *, void *, void *, int, int, int, int, int, int);
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern char D_L08_00161CC0[];
extern short D_L08_00161C90;
extern short D_L08_00161C94;
extern short D_L08_00161C98;
extern short D_L08_00161C9C;
extern short D_L08_00161CA0;
extern short D_L08_00161CA4;
extern short D_L08_00161CA8;
extern short D_L08_00161CAC;
extern short D_L08_00161CB0;
extern short D_L08_00161CB4;
extern short D_L08_00161CB8;
extern short D_L08_00161CBC;

// Update function for moby classes 441-443 on level 08: state machine that approaches, settles and retires the moby.
void func_L08_002E2A38(unsigned char *m) {
    char *d = *(char **)(m + 0x78);
    float v10[4];
    char tab[8];
    float v30[4];
    float a40[4];
    int i;
    int st = m[0x20];
    float x;
    int *q;
    int c;
    int g;
    int chain1;
    int chain2;
    int chain3;
    int n;

    if (st == 2) goto b20;
    if (st < 3) {
        if (st == 1) goto s1;
        return;
    }
    if (st == 3) goto f04;
    return;
s1:
    {
        float t;
        x = D_0015EE6C * 1.5707964f;
        t = func_002140F8(-x, x);
        x = D_0015EE6C * 1.5707964f;
        *(float *)(d + 0x10) = t;
        *(float *)(d + 0x14) = func_002140F8(-x, x);
    }
    {
        float f20a = (float)func_001F9850(0x5A);
        float f13a = (float)func_001F9850(0x96);
        *(int *)(d + 0x18) = (int)func_002140F8(f20a, f13a);
    }
    m[0x20] = 2;
b20:
    *(float *)(d + 0x8) = *(float *)(d + 0x8) - D_0015EE70 * 10.8f * 0.5f;
    func_001F9BD8(m + 0x10, m + 0x10, d);
    *(float *)(m + 0x40) = func_001FA748(*(float *)(m + 0x40), *(float *)(d + 0x10));
    *(float *)(m + 0x44) = func_001FA748(*(float *)(m + 0x44), *(float *)(d + 0x14));
    if (*(float *)(m + 0x10) < 8.0f || *(float *)(m + 0x14) < 8.0f
        || 500.0f < *(float *)(m + 0x10) || 500.0f < *(float *)(m + 0x14)
        || 500.0f < *(float *)(m + 0x18)) {
        func_0020D678(m);
        return;
    }
    if (func_002140B0(3) == 0) {
        func_001F9BC0(v10);
        {
            char *src = D_L08_00161CC0;
            char *dst = tab;
            *(long *)dst = *(long *)src;
        }
        q = (int *)tab + func_002140B0(2);
        {
            int a = func_001F9850(0xF);
            int b = func_001F9850(0x14);
            c = func_L00_00258BC8(a, b);
        }
        {
            int e = func_001F9850(0x19);
            g = func_L00_00258BC8(e, func_001F9850(0x1E));
        }
        func_L00_0026B890(m + 0x10, v10, 0x2F3F3F7F, *q, c, g, 0, 0,
                          400000.0f, func_002140F8(8.0f, 16.0f) * D_0015EE6C);
    }
    if (*(float *)(m + 0x18) < 15.2f) {
        for (i = 0; i < *(int *)&D_L08_00161C90; i++) {
            float r;
            float rr;
            float f20;
            f20 = func_00214158();
            qcopy(a40, m + 0x10);
            r = func_002140F8(-3.0f, 3.0f);
            a40[0] = a40[0] + r;
            rr = func_002140F8(-3.0f, 3.0f);
            a40[1] = a40[1] + rr;
            v10[2] = *(float *)&D_L08_00161C9C * D_0015EE6C;
            r = func_001F9F90(f20);
            v10[0] = v10[0] + r * *(float *)&D_L08_00161CA4;
            r = func_001F9FA8(f20);
            v10[1] = v10[1] + r * *(float *)&D_L08_00161CA4;
            v30[2] = *(float *)&D_L08_00161CA0 * D_0015EE6C;
            r = func_001F9F90(f20);
            v30[0] = v30[0] + r * *(float *)&D_L08_00161CA8;
            r = func_001F9FA8(f20);
            v30[1] = v30[1] + r * *(float *)&D_L08_00161CA8;
            n = *(int *)&D_L08_00161CAC;
            v10[3] = *(float *)&D_L08_00161CB8;
            v30[3] = *(float *)&D_L08_00161CBC;
            r = func_002140F8((float)n, (float)(n * 2));
            chain1 = func_001FA898(func_001F9878(r));
            r = func_002140F8((float)*(int *)&D_L08_00161CB0, (float)(*(int *)&D_L08_00161CB0 * 2));
            chain2 = func_001FA898(func_001F9878(r));
            r = func_002140F8((float)*(int *)&D_L08_00161CB4, (float)(*(int *)&D_L08_00161CB4 * 2));
            chain3 = func_001FA898(func_001F9878(r));
            func_00219780(a40, v10, v30, *(int *)&D_L08_00161C94, *(int *)&D_L08_00161C98,
                          chain1, chain2, chain3, -1);
        }
        m[0x20] = 3;
    }
    return;
f04:
    *(float *)(d + 0x8) = *(float *)(d + 0x8) - D_0015EE70 * 10.8f * 0.5f;
    func_001F9BD8(m + 0x10, m + 0x10, d);
    *(float *)(m + 0x40) = func_001FA748(*(float *)(m + 0x40), *(float *)(d + 0x10));
    *(float *)(m + 0x44) = func_001FA748(*(float *)(m + 0x44), *(float *)(d + 0x14));
    if (*(float *)(m + 0x10) < 8.0f || *(float *)(m + 0x14) < 8.0f
        || *(float *)(m + 0x18) < 8.0f || 500.0f < *(float *)(m + 0x10)
        || 500.0f < *(float *)(m + 0x14)) {
        func_0020D678(m);
    }
}
