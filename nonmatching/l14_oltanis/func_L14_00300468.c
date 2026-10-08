/* NON_MATCHING func_L14_00300468 -- src/overlays/l14_oltanis/vendor_002FF358.c
 * Best so far: SIZE ours 1620 / retail 1628, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Class-924 (sam) update on L14 (0x300468): reads moby+0x20 state (0..3 cases), calls the target search (0021557
 *   Best: p3.c, SIZE 1620 vs 1628 (8 bytes, two instructions short). p4 (no tmp pointer for D_L14_0016D060) went t
 *   Differing: ours saves $21 as well as $16-$20 (retail's frame is 0xB0, ours 0xC0). The extra saved reg is the D
 *   Wall: none. Next lever: the constant 1 kept live in $16 (retail reuses $16 for the table after the L608 call),
 */
extern void func_L02_002E2110(void *);
extern int func_L00_002676E8(void *, void *);
extern int func_00215570(void *arg0, int arg1);
extern void func_L00_002512D8(int);
extern void func_L00_00286128(void *, void *);
extern int func_L00_00267290(void *, void *);
extern void func_001F9BC0(void *);
extern void func_L00_00261848(int);
extern void func_L00_00263DB0(int);
extern int func_0020BFC8(int, int);
extern void func_0020D678(void *);
extern float func_001F9D48(float *, float *);
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern float func_001F9CB8(void *a);
extern int func_001F9850(int);
extern int func_001F9908_r(int *arg0) __asm__("func_001F9908");
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern float func_001FA748(float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *dst, void *a, void *b);
extern float func_001FA790(float, float);
extern float func_001F9CE8(void *);
extern void func_L00_00263950(char *, char *, int, float, float);
extern char D_L14_001BBCC0[];
extern char D_L14_001620B8[];
extern char *D_L14_001601AC_t __asm__("D_L14_001601AC") MACRO_ADDR;
extern char D_L14_0016D060_c[] __asm__("D_L14_0016D060");
extern int D_L14_0015F6A8 MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern char D_L14_001BAF60[];
extern unsigned char D_0015EEB0[] MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern unsigned char D_0013DE55[];
extern char D_0014171B[];
extern char D_0013E633[];

typedef int u128 __attribute__((mode(TI)));

/* Update of moby class 924 (sam) on level 14: state machine that tracks a target and aims the moby. */
void func_L14_00300468(char *moby) {
    char vA[16];
    char vB[16];
    char vC[16];
    char *data;
    char *tmp;
    char *w;
    int c;
    int k;
    int fl;
    float f20;
    float f22;
    float f23;
    float f21;
    float fr;
    float fq;
    float g2;

    data = *(char **)(moby + 0x78);
    func_L02_002E2110(moby);
    c = *(unsigned char *)(moby + 0x20);
    if (c == 1) goto L_578;
    if (c >= 2) goto L_4C8;
    if (c == 0) goto L_4E0;
    goto L_724;
L_4C8:
    if (c == 2) goto L_668;
    if (c == 3) goto L_714;
    goto L_724;
L_4E0:
    if (D_0013DE55[2] != 0) goto L_714;
    k = *(unsigned short *)(moby + 0xB2);
    if (*(unsigned char *)(D_L14_001BBCC0 + ((k << 16) >> 16) + 0x454) != 0) goto L_714;
    if ((*(int *)(D_0014171B + 0xAB75 + ((((k << 16) >> 16) >> 5) << 2) + (D_0015EE84 << 8)) >> (k & 0x1F)) & 1) goto L_714;
    if (*(int *)(data + 0x44) == -1) goto L_714;
    if (*(int *)(data + 0x48) == -1) goto L_714;
    *(char **)(data + 0x20) = D_L14_001620B8;
    func_L00_002676E8(moby, data);
    *(unsigned char *)(moby + 0x20) = 1;
    *(unsigned char *)(data + 8) = 1;
    goto L_724;
L_578:
    if (*(unsigned char *)(data + 8) != 1) goto L_5F8;
    c = func_00215570(D_0013E633 + 0xE9D, *(int *)(data + 0x40));
    k = D_0015EE84;
    if (c == 0) goto L_5F8;
    tmp = D_0014171B + 0xAA35;
    if (*(unsigned char *)(tmp + (k << 4) + *(unsigned char *)(moby + 0xB0)) == 0xFF) goto L_5E8;
    func_L00_002512D8(*(unsigned char *)(moby + 0xB0));
    k = *(int *)(data + 0x44);
    w = D_L14_001601AC_t + (k << 7);
    func_L00_00286128(w + 0x30, w + 0x70);
L_5E8:
    *(float *)(data + 0xC) = 255.0f;
    goto L_608;
L_5F8:
    *(float *)(data + 0xC) = 3.0f;
L_608:
    if (func_L00_00267290(moby, data) == 0) goto L_724;
    tmp = D_L14_0016D060_c;
    w = D_L14_001601AC_t + (*(int *)(data + 0x48) << 7);
    tmp[0x4A] = 1;
    *(u128 *)(tmp + 0x10) = *(u128 *)(w + 0x30);
    func_001F9BC0(tmp + 0x20);
    *(float *)(tmp + 0x28) = *(float *)(w + 0x78);
    *(unsigned char *)(moby + 0x20) = 2;
    goto L_724;
L_668:
    if (D_L14_0015F6A8 == c) goto L_724;
    *(unsigned char *)(moby + 0x20) = 1;
    if (*(short *)(data + 4) != 4) goto L_724_53;
    func_L00_00261848(0xF);
    func_L00_00263DB0(0xF);
    k = *(unsigned short *)(moby + 0xB2);
    *(int *)(D_0014171B + 0xAB75 + ((((k << 16) >> 21) << 2) + (D_0015EE84 << 8))) |= 1 << (k & 0x1F);
    k = *(unsigned short *)(moby + 0xB2);
    *(int *)(D_L14_001BAF60 + ((((k << 16) >> 21)) << 2)) |= 1 << (k & 0x1F);
    func_0020BFC8(0, -1);
L_714:
    func_0020D678(moby);
    goto L_END;
L_724:
    c = *(unsigned char *)(moby + 0x53);
L_728:
    f22 = 0.02f;
    f23 = 0.3f;
    fl = 0;
    if (c != 0) goto L_918;
    w = D_0013E633 + 0xE9D;
    fl = 1;
    fr = func_001F9D48((float *)(moby + 0x10), (float *)w);
    if (!(fr < 8.0f)) goto L_810;
    tmp = w - 0x80;
    f20 = func_L00_001FF860(*(float *)(tmp + 0xD0) - *(float *)(moby + 0x10), *(float *)(tmp + 0xD4) - *(float *)(moby + 0x14));
    fq = func_001FA850(*(float *)(moby + 0x48), f20);
    if (!(fq < 1.5707964f)) goto L_814;
    fr = func_001F9CB8(w + 0x80);
    if (!(0.01f < fr)) goto L_800;
    *(int *)(data + 0x160) = func_001F9850(0x78);
    goto L_830;
L_800:
    func_001F9908_r((int *)(data + 0x160));
    goto L_830;
L_810:
    if (*(int *)(data + 0x160) == 0) goto L_830;
L_814:
    if (*(int *)(data + 0x160) == 0) goto L_830;
    *(int *)(data + 0x160) = 0;
    *(u128 *)(data + 0x150) = *(u128 *)(D_0013E633 + 0xEED);
L_830:
    if (func_001F9908_r((int *)(data + 0x164)) == 0) goto L_8D8;
    f21 = 0.0174532923f;
    w = data + 0x150;
    fr = func_002140F8(180.0f, 300.0f);
    fq = func_001F9878(fr);
    *(int *)(data + 0x164) = func_001FA898_r(fq);
    fr = func_002140F8(-90.0f, 90.0f);
    fq = func_001FA748(*(float *)(moby + 0x48), fr * f21);
    f20 = func_002140F8(0.0f, 30.0f);
    func_00215C00(w, 6.0f, f20, f20 * f21);
    func_001F9BD8(w, w, moby + 0x10);
L_8D8:
    if (*(int *)(data + 0x160) == 0) goto L_90C;
    *(u128 *)vA = *(u128 *)(D_0013E633 + 0xEED);
    f22 = 0.04f;
    f23 = 0.3f;
    goto L_918;
L_90C:
    *(u128 *)vA = *(u128 *)(data + 0x150);
L_918:
    if (fl == 0) goto L_A34;
    *(u128 *)vB = *(u128 *)(moby + 0x10);
    *(float *)(vB + 8) = *(float *)(vB + 8) + 1.0f;
    func_001F9BF0(vC, vA, vB);
    fr = func_L00_001FF860(*(float *)vC, *(float *)(vC + 4));
    f20 = func_001FA790(fr, *(float *)(moby + 0x48));
    fr = func_001F9CE8(vC);
    fq = func_L00_001FF860(fr, *(float *)(vC + 8));
    g2 = -fq;
    if (1.5707964f < f20) f20 = 1.5707964f;
    else if (f20 < -1.5707964f) f20 = -1.5707964f;
    if (0.5235988f < g2) g2 = 0.5235988f;
    else if (g2 < -0.5235988f) g2 = -0.5235988f;
    *(float *)(data + 0xB4) = g2;
    *(float *)(data + 0xB8) = f20 * 0.6f;
    *(float *)(data + 0x138) = f20 * 0.4f;
L_A34:
    if (D_0015EEB0[0] == 0) goto L_A5C;
    *(float *)(data + 0xC0) = 2.75f;
L_A5C:
    func_L00_00263950(moby, data + 0x50, 0, f22 * D_0015EE64, f23 * D_0015EE64);
    func_L00_00263950(moby, data + 0xD0, 1, f22 * D_0015EE64, f23 * D_0015EE64);
L_END:
    return;
L_724_53:
    c = *(unsigned char *)(moby + 0x53);
    goto L_728;
}
