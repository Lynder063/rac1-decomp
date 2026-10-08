/* NON_MATCHING func_L02_002E1B58 -- src/overlays/l02_aridia/vendor_002A59D8.c
 * Best so far: SIZE ours 988 / retail 992, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Rock moby (class 762) update, level 02: two sampling loops (200 and 49 passes) that fill three Vec4 scratch bu
 *   Left: retail keeps a second pointer to the scratch vector across the loop boundary (daddu $18,$20 plus nop bef
 *   Unblock: the source's exact pointer variables for the scratch vectors. The struct copy of D_L02_00161D60 (ldl/
 */
extern unsigned char D_0013D4A5 NOT_SDA;
extern char D_L02_00161D60[];
extern short D_L02_00161D54;
extern short D_L02_00161D58;
extern float D_0015EE6C MACRO_ADDR;
extern char *func_L00_0025B478(void *, int, int);
extern void func_0020D678(void *);
extern int func_0022ED80(int, int, int);
extern float func_002140F8(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern int func_L00_00258BC8(int, int);
extern int func_001F9850(int);
extern void func_L00_0026DD70(void *, void *, int, int, float, int);
extern int func_002140B0(int);
extern void func_L01_002F9908(void *, void *, unsigned int, int, float, float, float, float, int);

typedef struct { int b[3]; } Int3;

/* Rock moby (class 762) update: runs two sampling loops over random directions, feeding the result to the level's helpers. */
void func_L02_002E1B58(unsigned char *moby)
{
    float C[4];
    float A[4];
    float B[4];
    float D[4];
    char *p;
    float k;
    float s;
    float t;
    float t2;
    int i;
    int r;
    int n;

    p = func_L00_0025B478(moby, 0x800000, 0);
    switch (moby[0x20]) {
    case 0:
        if (D_0013D4A5 != 0) {
            func_0020D678(moby);
        } else {
            moby[0x20] = 1;
        }
        return;
    case 1:
        break;
    default:
        return;
    }
    if (p == 0) return;
    D_0013D4A5 = 1;
    func_0022ED80(0, 0, (int)moby);
    i = 199;
    do {
        *(u128 *)A = 0;
        A[0] = func_002140F8(-1.0f, 1.0f);
        i--;
        A[1] = func_002140F8(-1.0f, 1.0f);
        A[2] = func_002140F8(-1.0f, 1.0f);
        *(u128 *)B = 0;
        *(u128 *)C = *(u128 *)A;
        t = func_002140F8(-2.0f, 2.0f);
        B[0] = t * func_001F9F90(*(float *)(moby + 0x48));
        t2 = func_002140F8(-1.0f, 1.0f);
        B[1] = t2 * func_001F9FA8(*(float *)(moby + 0x48));
        B[2] = func_002140F8(0.0f, 4.0f);
        *(u128 *)A = *(u128 *)B;
        func_001F9BD8(A, A, moby + 0x10);
        k = func_002140F8(1.5f, 3.5f) * D_0015EE6C;
        func_L00_001FF4B0(C, C, k);
        s = func_002140F8(1.5f, 3.5f) * 210000.0f;
        r = func_001F9850(func_L00_00258BC8(120, 240));
        func_L00_0026DD70(A, C, *(int *)&D_L02_00161D54, *(int *)&D_L02_00161D58, s, r);
    } while (i >= 0);

    i = 49;
    do {
        *(Int3 *)C = *(Int3 *)D_L02_00161D60;
        *(u128 *)B = 0;
        i--;
        B[0] = func_002140F8(-1.0f, 1.0f);
        B[1] = func_002140F8(-1.0f, 1.0f);
        B[2] = func_002140F8(-1.0f, 1.0f);
        *(u128 *)D = 0;
        *(u128 *)A = *(u128 *)B;
        t = func_002140F8(-2.0f, 2.0f);
        D[0] = t * func_001F9F90(*(float *)(moby + 0x48));
        t2 = func_002140F8(-1.0f, 1.0f);
        D[1] = t2 * func_001F9FA8(*(float *)(moby + 0x48));
        D[2] = func_002140F8(1.0f, 4.0f);
        *(u128 *)B = *(u128 *)D;
        func_001F9BD8(B, B, moby + 0x10);
        k = func_002140F8(1.0f, 5.0f) * D_0015EE6C;
        func_L00_001FF4B0(A, A, k);
        r = func_002140B0(3);
        s = func_002140F8(0.05f, 0.15f);
        n = func_L00_00258BC8(60, 180);
        func_L01_002F9908(B, A, ((unsigned int *)C)[r], n, s, 1.0f, 1.0f, 0.75f, 0);
    } while (i >= 0);
    func_0020D678(moby);
}
