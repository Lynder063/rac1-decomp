/* NON_MATCHING func_L14_002FF358 -- src/overlays/l14_oltanis/vendor_002FF358.c
 * Best so far: SIZE ours 848 / retail 852, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Builds an effect ring for a moby: three 0x7F-alpha pieces per pass over 0026DEA0 with 9BD8/9C30 vector blends,
 */
extern float D_L14_0015F660[] MACRO_ADDR;
extern short D_L14_00162060;
extern short D_L14_00162064;
extern short D_L14_00162068;
extern short D_L14_0016206C;
extern short D_L14_00162070;
extern short D_L14_00162074;
extern char *func_L00_0026DEA0(void *, int, void *, int, float, float, float, float);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_002140B0(int);
extern int func_001F9850(int);
extern int func_L00_00258BC8(int, int);

// Spawns the effect pieces for a moby, the big ring pass and the final pair.
void func_L14_002FF358(char *p) {
    float A[4];
    float B[4];
    float C[4];
    char *e;
    char *f;
    char *q;
    int n;
    int m;
    int j;
    int col;
    int r;
    int k;
    float f22;
    float f21;
    float f20;

    f22 = 20000.0f;
    func_001F9C30(A, p + 0xC0, *(float *)&D_L14_00162060);
    func_001F9BD8(B, p + 0x10, A);
    func_001F9C30(A, p + 0xE0, *(float *)&D_L14_00162068);
    func_001F9BD8(B, B, A);
    qcopy(C, B);
    func_001F9C30(A, p + 0xD0, *(float *)&D_L14_00162064);
    func_001F9BD8(B, B, A);

    m = 1;
    do {
        n = func_002140B0(0x10);
        r = func_002140B0(2);
        k = -n;
        if (r == 0) k = n;
        e = func_L00_0026DEA0(B, k, D_L14_0015F660, *(int *)&D_L14_00162074, 0.2f, 1.0f, 0.9f, 200000.0f);
        if (e) {
            f = e + 0x20;
            *(short *)(e + 0xA) = func_001F9850(0xC);
            *(int *)(f + 4) = 2;
            f[0xA] = 0x7F;
            f[0xB] = e[0xA];
        }
    } while (--m >= 0);

    q = p + 0xC0;
    func_001F9C30(A, q, *(float *)&D_L14_0016206C);
    f20 = 100000.0f;
    f21 = 1.0f;
    func_001F9BD8(B, B, A);
    n = 0x10;
    m = func_001F9850(2);

    j = 2;
    do {
        e = func_L00_0026DEA0(B, n, D_L14_0015F660, 0x7FFFFFFF, 0.05f, f21, f21, f20);
        if (e) {
            f = e + 0x20;
            *(short *)(e + 0xA) = m;
            r = func_002140B0(0xFF);
            e[8] = r;
            *(int *)(f + 4) = 2;
            f[0xA] = 0x7F;
            f[0xB] = e[0xA];
        }
        n = -n;
        m = m << 1;
        f20 = f20 - f22;
    } while (--j >= 0);

    f20 = 300000.0f;
    func_001F9C30(A, q, *(float *)&D_L14_00162070);
    func_001F9BD8(B, C, A);
    r = func_L00_00258BC8(0x40, 0x80);
    col = r | ((r << 16) | ((r << 8) | 0x7F000000));

    if (func_002140B0(3)) {
        n = func_002140B0(4);
        r = func_002140B0(2);
        k = -n;
        if (r == 0) k = n;
        e = func_L00_0026DEA0(B, k, D_L14_0015F660, col, 0.05f, f21, f21, f20);
        if (e) {
            f = e + 0x20;
            *(short *)(e + 0xA) = func_001F9850(0x3C);
            if (func_002140B0(2)) e[3] = 0x44;
            f[0xA] = 0x40;
            *(int *)(f + 4) = 2;
            f[0xB] = func_001F9850(0x3C);
        }
    }
}
