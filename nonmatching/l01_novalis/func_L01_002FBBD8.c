/* NON_MATCHING func_L01_002FBBD8 -- src/overlays/l01_novalis/vendor_002FABE8.c
 * Best so far: SIZE ours 1156 / retail 1152, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   BreakableWallUpdate (class 729 cave wall): burst check via a bit array at D_0014C290, a 500-iteration and a 10
 *   Left: retail keeps -1.0/1.0/1.5/3.5 in f20-f24 across calls (hoisting them into locals just rematerialises the
 *   Would unblock: a way to make the float constants stay in callee-saved FP registers, and a base-pointer spellin
 */
extern void func_0020D678(void *);
extern void *func_L00_0025B478_FB158(void *, s32, s32) __asm__("func_L00_0025B478");
extern int func_0022ED80(int, int, int);
extern f32 func_002140F8_FB158b(f32, f32) __asm__("func_002140F8");
extern f32 func_001F9F90_FB158b(f32) __asm__("func_001F9F90");
extern f32 func_001F9FA8_FB158b(f32) __asm__("func_001F9FA8");
extern void func_001F9BD8_FB158b(void *, void *, void *) __asm__("func_001F9BD8");
extern void func_L00_001FF4B0(void *, void *, float);
extern int func_L00_00258BC8_FB158b(int lo, int hi) __asm__("func_L00_00258BC8");
extern int func_001F9850(int);
extern void func_L00_0026DD70(void *, void *, int, int, float, int);
extern int func_002140B0(int);
extern void func_L01_002F9908(void *, void *, u32, s32, f32, f32, f32, f32, s32);
extern s32 D_0014C290[][64];
extern s32 D_L01_001BAC60[];
extern short D_0015EE84;
extern float D_0015EE6C MACRO_ADDR;
extern unsigned char D_0013D355[];
typedef struct { float f[3]; } V3;
extern V3 D_L01_00161D00;
typedef int QW128 __attribute__((mode(TI)));
typedef union { QW128 q; float f[4]; int i[4]; } QuadW;

/* BreakableWallUpdate: update for the cave wall moby (class 729) on level 01; a wall already burst is deleted, else it spawns its debris. */
void func_L01_002FBBD8(char *moby) {
    QuadW tab;
    QuadW a;
    QuadW b;
    QuadW c;
    unsigned char *p;
    int *pi;
    float x, t, u1;
    int n;
    int m;
    int r;
    s32 (*bits)[64];
    u16 uid;
    short id;

    uid = *(u16 *)(moby + 0xB2);
    id = uid;
    if (D_L01_001BB9C0.collected[id] != 0) {
        func_0020D678(moby);
        return;
    }
    bits = D_0014C290;
    if ((bits[*(int *)&D_0015EE84][id >> 5] >> (uid & 0x1F)) & 1) {
        func_0020D678(moby);
        return;
    }
    if (func_L00_0025B478_FB158(moby, 0x800000, 0) == 0) {
        return;
    }
    func_0022ED80(0, 0, (int)moby);
    n = 0x1F3;
    do {
        a.q = 0;
        n--;
        a.f[0] = func_002140F8_FB158b(-1.0f, 1.0f);
        a.f[1] = func_002140F8_FB158b(-1.0f, 1.0f);
        a.f[2] = func_002140F8_FB158b(-1.0f, 1.0f);
        tab.q = a.q;
        b.q = 0;
        t = func_002140F8_FB158b(-4.0f, 4.0f);
        t = t * func_001F9F90_FB158b(*(f32 *)(moby + 0x48));
        b.f[0] = t;
        u1 = func_002140F8_FB158b(-1.0f, 1.0f);
        b.f[1] = u1 * func_001F9FA8_FB158b(*(f32 *)(moby + 0x48));
        b.f[2] = func_002140F8_FB158b(0.0f, 8.0f);
        a.q = b.q;
        func_001F9BD8_FB158b(&a, &a, moby + 0x10);
        x = func_002140F8_FB158b(1.5f, 3.5f);
        func_L00_001FF4B0(&tab, &tab, x * D_0015EE6C);
        x = func_002140F8_FB158b(1.5f, 3.5f);
        t = x * 209920.0f;
        r = func_L00_00258BC8_FB158b(0x78, 0xF0);
        func_L00_0026DD70(&a, &tab, 0x5F787878, 0x181818, t, func_001F9850(r));
    } while (n >= 0);

    m = 99;
    do {
        *(V3 *)&tab = D_L01_00161D00;
        b.q = 0;
        b.f[0] = func_002140F8_FB158b(-1.0f, 1.0f);
        m--;
        b.f[1] = func_002140F8_FB158b(-1.0f, 1.0f);
        b.f[2] = func_002140F8_FB158b(-1.0f, 1.0f);
        c.q = 0;
        a.q = b.q;
        t = func_002140F8_FB158b(-4.0f, 4.0f);
        t = t * func_001F9F90_FB158b(*(f32 *)(moby + 0x48));
        c.f[0] = t;
        u1 = func_002140F8_FB158b(-1.0f, 1.0f);
        c.f[1] = u1 * func_001F9FA8_FB158b(*(f32 *)(moby + 0x48));
        c.f[2] = func_002140F8_FB158b(1.0f, 8.0f);
        b.q = c.q;
        func_001F9BD8_FB158b(&b, &b, moby + 0x10);
        x = func_002140F8_FB158b(1.0f, 5.0f);
        func_L00_001FF4B0(&a, &a, x * D_0015EE6C);
        r = func_002140B0(3);
        pi = &tab.i[r];
        x = func_002140F8_FB158b(0.05f, 0.15f);
        r = func_L00_00258BC8_FB158b(0x3C, 0xB4);
        func_L01_002F9908(&b, &a, *pi, r, x, 1.0f, 1.0f, 0.75f, 0);
    } while (m >= 0);

    D_0014C290[*(int *)&D_0015EE84][(short)*(u16 *)(moby + 0xB2) >> 5] |= 1 << (*(u16 *)(moby + 0xB2) & 0x1F);
    p = (unsigned char *)D_0013D355 + 0x13B;
    p[0xE] = 1;
    D_L01_001BAC60[(short)*(u16 *)(moby + 0xB2) >> 5] |= 1 << (*(u16 *)(moby + 0xB2) & 0x1F);
    func_0020D678(moby);
}
