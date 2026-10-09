/* NON_MATCHING func_L02_002A52D0 -- src/overlays/shared/vendor_002A5218.c
 * Best so far: SIZE ours 1512 / retail 1516, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Builds a GS draw packet for one moby: DMA tag cursor in D_L02_00161240, two vertex-table interpolations, a cal
 *   Best candidate p1.c is 1512 bytes against 1516 (one instruction short). p3.c (two cursor writes at the tail, t
 *   Would unblock: a form for the globals that gives retail's per-access lui+lw without changing the count elsewhe
 */
extern void func_001F3140(void);
extern void func_001F2608(void);
extern void func_001FA1C0(float *, float);
extern void func_001F9C30(void *, void *, float);
extern void func_00234B48(void *, int);
extern void func_001FA540(void *, void *, void *);
extern void func_L02_00250C78(void *, void *, void *, void *, void *, float);
extern char D_L02_0016D0C0[];
extern int D_L02_0015F558 MACRO_ADDR;
extern float D_L02_00161378 MACRO_ADDR;
extern float D_L02_0016137C MACRO_ADDR;
extern float D_L02_00161380 MACRO_ADDR;
extern float D_L02_00161384 MACRO_ADDR;
extern char D_L02_00167440[];
extern unsigned short D_0010E800 NOT_SDA;
extern char D_0010E810[];
extern int *D_L02_00161240 MACRO_ADDR;
extern char D_L02_001CBB70[];
extern char D_L02_0016D800[];
extern int D_L02_0015F6B0 MACRO_ADDR;
extern char *D_L02_0015F520 MACRO_ADDR;
extern int D_0015EF74 MACRO_ADDR;
extern u64 D_L02_00161370 MACRO_ADDR;

/* Builds one moby's GS draw packet: DMA tags, interpolated vertex tables, texture set-up. */
void func_L02_002A52D0(char *arg) {
    char *m = D_L02_0016D0C0;
    char *s = D_L02_00167440;
    float va[16];
    char *o;
    char *q11;
    char *dst13;
    u64 p11;
    char *c;

    D_L02_00161378 = *(float *)(m + 0x218);
    D_L02_0016137C = *(float *)(m + 0x21C);
    D_L02_00161380 = *(float *)(m + 0x228);
    D_L02_00161384 = *(float *)(m + 0x22C);
    if (D_L02_0015F558 != 1) {
        *(float *)(m + 0x218) = *(float *)(arg + 0x20);
        *(float *)(m + 0x21C) = *(float *)(arg + 0x24);
        *(float *)(m + 0x228) = *(float *)(arg + 0x28);
        *(float *)(m + 0x22C) = *(float *)(arg + 0x2C);
    }
    func_001F3140();
    func_001F2608();
    func_001FA1C0(va, 1024.0f);
    func_001F9C30(va + 12, s, -1024.0f);
    va[15] = 1.0f;
    func_00234B48(D_0010E810, D_0010E800);

    D_L02_00161240[0] = 0x10000000;
    D_L02_00161240[1] = 0;
    D_L02_00161240[2] = 0x11000000;
    D_L02_00161240[3] = 0x1000404;
    o = (char *)D_L02_00161240;
    *(int *)(o + 0x10) = 0;
    *(int *)(o + 0x14) = 0;
    *(int *)(o + 0x18) = 0;
    *(int *)(o + 0x1C) = 0x6C0C43A4;
    func_001FA540(o + 0x20, s - 0x100, va);
    func_001FA540(o + 0x60, s - 0x80, va);
    *(int *)(o + 0xA0) = 0x8000;
    *(int *)(o + 0xA4) = 0x303EC000;
    *(int *)(o + 0xA8) = 0x412;
    *(float *)(o + 0xAC) = *(float *)(m + 0x210);
    qcopy(o + 0xB0, m + 0x190);
    qcopy(o + 0xC0, m + 0x1A0);
    *(float *)(o + 0xD0) = *(float *)(m + 0x22C);
    *(int *)(o + 0xE4) = 0x20001D2;
    *(float *)(o + 0xD4) = *(float *)(m + 0x228);
    *(int *)(o + 0xE0) = 0x3000000;
    *(int *)(o + 0xE8) = 0x15000000;
    *(int *)(o + 0xD8) = 0;
    *(int *)(o + 0xDC) = 0;
    *(int *)(o + 0xEC) = 0;

    q11 = o + 0xF0;
    D_L02_00161240[0] |= ((q11 - (char *)D_L02_00161240) >> 4) - 1;
    D_L02_00161240 = (int *)q11;
    *(int *)(o + 0xF0) = 0x30000003;
    D_L02_00161240[1] = (int)D_L02_001CBB70;
    D_L02_00161240[2] = 0;
    D_L02_00161240[3] = 0x50000003;
    {
        int *c1 = D_L02_00161240;
        D_L02_00161240 = c1 + 4;
        c1[4] = 0x10000009;
    }
    D_L02_00161240[1] = 0;
    D_L02_00161240[2] = 0;
    D_L02_00161240[3] = 0x50000009;
    D_L02_00161240 += 4;

    {
        int a;
        unsigned char d;
        int q;
        unsigned char n;
        unsigned short base;
        float frac;
        char *e1;
        char *e2;
        char *pa;
        char *pb;
        char *pc;
        char *pd;
        a = D_L02_0015F6B0;
        dst13 = *(char **)(arg + 0x1C);
        d = *(unsigned char *)(arg + 0x33);
        q = a / d;
        n = *(unsigned char *)(arg + 0x3E);
        base = *(unsigned short *)(arg + 0x3C);
        frac = (float)a / (float)d - (float)q;
        e1 =D_L02_0016D800 + (base + q % n) * 16;
        e2 = D_L02_0016D800 + (base + (q + 1) % n) * 16;
        pa = D_L02_0015F520 + *(unsigned short *)(e1 + 8) * 16;
        pb = D_L02_0015F520 + *(unsigned short *)(e1 + 0xA) * 16;
        pc = D_L02_0015F520 + *(unsigned short *)(e2 + 8) * 16;
        pd = D_L02_0015F520 + *(unsigned short *)(e2 + 0xA) * 16;
        *(u64 *)dst13 = 0x0800000000000400ULL;
        *(u64 *)(*(char **)(arg + 0x1C) + 8) = 0;
        func_L02_00250C78(*(char **)(arg + 0x1C) + 0x10, pa, pb, pc, pd, frac);
    }
    D_L02_00161370 = (s64)(D_0015EF74 >> 8) | (s64)0x18100000 | ((u64)0xB000 << 19);

    {
        unsigned int w;
        w = *(unsigned char *)(arg + 0x30) | (*(unsigned char *)(arg + 0x31) << 8)
            | (*(unsigned char *)(arg + 0x32) << 16);
        if (D_L02_0015F558 == 1) {
            w = *(unsigned int *)(m + 0x230) | (*(unsigned int *)(m + 0x234) << 8)
                | (*(unsigned int *)(m + 0x238) << 16);
        }
        p11 = w;
    }

    c = (char *)D_L02_00161240;

    *(u64 *)c = 0x8000000000008001ULL;
    *(u64 *)(c + 0x8) = 0xEEEEEEEEULL;
    *(u64 *)(c + 0x18) = 0x42;
    *(u64 *)(c + 0x28) = 6;
    *(u64 *)(c + 0x30) = p11;
    *(u64 *)(c + 0x38) = 0x3D;
    *(u64 *)(c + 0x20) = D_L02_00161370;
    *(u64 *)(c + 0x10) = ((u64)*(unsigned char *)(arg + 0x3F) << 32) | 0x64;
    *(u64 *)(c + 0x40) = ((u64)(s64)(D_0015EF74 >> 8) << 32) | 0x0001000000000000ULL;
    *(u64 *)(c + 0x48) = 0x50;
    *(u64 *)(c + 0x58) = 0x51;
    *(u64 *)(c + 0x60) = 0x4000000040ULL;
    *(u64 *)(c + 0x68) = 0x52;
    *(u64 *)(c + 0x78) = 0x53;
    *(u64 *)(c + 0x88) = 0x47;
    *(u64 *)(c + 0x50) = 0;
    *(u64 *)(c + 0x70) = 0;
    {
        unsigned int lim;
        unsigned int sel;
        lim = 0x60;
        sel = 0x5360A;
        if (!(lim < *(unsigned char *)(arg + 0x3F))) {
            sel = 0x5370B;
        }
        *(u64 *)(c + 0x80) = sel;
    }
    *(int *)(c + 0x90) = 0x30000401;
    D_L02_00161240 = (int *)(c + 0x90);
    D_L02_00161240[1] = *(int *)(arg + 0x1C);
    D_L02_00161240[2] = 0;
    D_L02_00161240[3] = 0x50000401;
    {
        int *c2 = D_L02_00161240;
        D_L02_00161240 = c2 + 4;
        c2[4] = 0x10000002;
    }
    D_L02_00161240[1] = 0;
    D_L02_00161240[2] = 0;
    D_L02_00161240[3] = 0x50000002;
    {
        char *c5 = (char *)D_L02_00161240;
        D_L02_00161240 = (int *)(c5 + 0x30);
        *(u64 *)(c5 + 0x10) = 0x1000000000008001ULL;
        *(u64 *)(c5 + 0x28) = 0x3F;
        *(u64 *)(c5 + 0x18) = 0xE;
        *(u64 *)(c5 + 0x20) = 0;
    }
    D_0015EF74 += 0x4000;
}
