/* NON_MATCHING func_L10_002DB278 -- src/overlays/l10_orxon/vendor_00296BD8.c
 * Best so far: BYTES 3/1040 (99.7% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Orxon item-pickup update (1040 bytes): collected/bitmap test, then a 30-pass loop of float helper calls, two e
 *   Nothing else differs; the remaining tie is register choice on that one address computation, so a plain reword 
 */
extern unsigned char D_0014171B[] NOT_SDA;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern unsigned char D_L10_001BB9C0_x[] __asm__("D_L10_001BB9C0");
extern int D_L10_001BAC60[];
extern char *func_L10_002DEC08(char *owner);
extern char *func_L10_002ECC80(char *owner);
extern char *func_L00_0025B478(void *, int, int);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int);
extern int func_L00_0028EF68_v(int, int, void *, int) __asm__("func_L00_0028EF68");
extern void func_001F9EC0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_L00_001FF240(void *, void *, void *);
extern void func_L01_002F9908(void *, void *, unsigned int, float, int, float, float, float, int);

/* Orxon moby update: destroys itself when its item is taken, else fires its effect once per pass. */
void func_L10_002DB278(char *moby) {
    typedef union { u128 q; float f[4]; } UVec;
    UVec v20, v30, v40, v50;
    unsigned short id = *(unsigned short *)(moby + 0xB2);
    int n;
    int k;
    int c16;
    int r2;
    float f20, f21;

    int ix = (short)id;
    unsigned char *cp = (unsigned char *)D_L10_001BB9C0_x + ix;
    if (cp[0x454] != 0
        || ((*(int *)(D_0014171B + 0xAB75 + (((short)id >> 5) * 4 + (D_0015EE84_m << 8))) >> (id & 0x1F)) & 1)) {
        func_L10_002DEC08(moby);
        func_L10_002ECC80(moby);
        func_0020D678(moby);
        return;
    }
    if (func_L00_0025B478(moby, 0x40000, 0)) {
        char *c0 = moby + 0xC0;
        v20.q = 0;
        func_L00_0025F4A8(moby, &v20, moby + 0x10, 0.0f, 0.0f, 5, 3, 4, 4.0f, 2.0f, 100000.0f, 3.0f, -1, 15.0f, 1, 1, -1, 0);
        func_L00_0028EF68_v(0, 0, moby, 0x99);
        n = 0x1D;
        do {
            k = 0x70F;
            v40.q = 0;
            v40.f[0] = -1.0f;
            v40.f[1] = func_002140F8(-3.0f, 3.0f);
            v40.f[2] = func_002140F8(-3.0f, 3.0f);
            n--;
            v30.q = v40.q;
            func_001F9EC0(&v30, &v30, c0);
            func_L00_001FF4B0(&v40, &v30, func_002140F8(5.0f, 10.0f) * D_0015EE6C);
            func_L00_001FF240(&v50, &v30, moby + 0x10);
            if (func_002140B0(1) == 0)
                k = 0x70E;
            f21 = func_002140F8(0.5f, 1.0f);
            c16 = func_L00_00258BC8(0x3C, 0x78);
            f20 = func_002140F8(2.0f, 3.0f);
            r2 = func_002140B0(4);
            func_L01_002F9908(&v30, &v40, k, f21, c16, f20, 1.0f, 3.0f, r2 == 0);
        } while (n >= 0);
        v30.q = 0;
        v30.f[0] = 2.8599999f;
        v30.f[1] = 1.57000005f;
        v30.f[2] = 1.83099997f;
        func_001F9EC0(&v30, &v30, c0);
        func_L00_0025F4A8(moby, &v20, &v30, 0.0f, 0.0f, 5, 3, 4, 4.0f, 2.0f, 100000.0f, 3.0f, -1, 15.0f, 1, 1, -1, 0);
        func_L10_002DEC08(moby);
        func_L10_002ECC80(moby);
        *(int *)(D_0014171B + 0xAB75 + (((short)*(unsigned short *)(moby + 0xB2) >> 5) * 4 + (D_0015EE84_m << 8))) |= 1 << (*(unsigned short *)(moby + 0xB2) & 0x1F);
        D_L10_001BAC60[(short)*(unsigned short *)(moby + 0xB2) >> 5] |= 1 << (*(unsigned short *)(moby + 0xB2) & 0x1F);
        func_0020D678(moby);
    }
}
