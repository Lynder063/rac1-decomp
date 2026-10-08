/* NON_MATCHING func_L13_002CF960 -- src/overlays/l13_gemlik/vendor_002C2638.c
 * Best so far: BYTES 50/1580 (96.8% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Gemlik spark emitter (1580 bytes): copies a1 into two stack vectors, runs two burst loops (k=4 once, then two 
 *   Best candidate p4.c: size 1580 matches; 50 bytes differ. What is left is register assignment only: retail keep
 *   Next step would be regalloc.py on p4.c for the counter/pB priorities; stopped at run 8 of 10 (runs 1-2 were co
 *   Run 9 (p7): one counter per loop as block-local variables, which is what retail's shared $s2 suggests; that gi
 */
typedef int u128z __attribute__((mode(TI)));
typedef struct { unsigned char b[24]; } Blk24;
extern unsigned char *func_L00_0026C630(void *pos, int spin, int col, float range, float f1, float f2, float f3, float scale);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_L00_002B0B98(void *, void *, void *, void *, int, int, float, float);
extern int func_002140B0(int);
extern void func_001F9BC0(void *);
extern float func_001F9CB8(void *a);
extern int func_001FA898_s(float) __asm__("func_001FA898");
extern int func_001F9850(int);
extern int func_L00_00258BC8(int, int);
extern void func_L00_0026B890(void *, void *, int, int, int, int, int, float, int, float);
extern int func_L00_002ADBB0(void *, void *, void *, float, int, int, int, int, int);
extern float func_002140F8(float, float);
extern float D_0015EE6C MACRO_ADDR;
extern float D_L13_0015F660[] MACRO_ADDR;
extern float D_L13_00167140[];
extern float D_L13_0015F6B4 MACRO_ADDR;
extern Blk24 D_L13_001F4C40;
extern Blk24 D_L13_001F4C58;

/* Gemlik spark emitter: builds a spark frame from a1, runs two burst loops of effect calls, and with a2 set, the extra burst set. */
void func_L13_002CF960(unsigned char *a0, void *a1, int a2)
{
    int k;
    float vA[4];
    float vB[4];
    float vE[4];
    float vD[4];
    float vC[4];
    Blk24 vG;
    Blk24 vH;
    int n;
    int t;
    int s;
    float len;
    float f21;
    float r;
    float yv;
    unsigned char *p;
    int *pa;
    int *pb;
    int ra;
    int rb;
    int A;
    int B;
    int C;
    int D;
    int E;
    int F;

    char *pA;
    char *pB;
    pA = (char *)vA;
    pB = (char *)vB;
    qcopy(vA, a1);
    qcopy(vB, pA);
    vB[2] = vB[2] + 0.3f;
    func_L00_0026C630(pB, 1, 0x40808080, 0.3f, 1.01f, 1.205f, 0.05f, 150000.0f);
    k = 4;
    do {
        func_L00_0026C630(pB, 1, 0x40808080, 0.3f, 1.01f, 1.1800001f, 0.05f, 150000.0f);
        k--;
    } while (k >= 0);
    k = 3;
    do {
        *(u128z *)vC = 0;
        vC[0] = func_002140F8(-1.875f, 1.875f);
        vC[1] = func_002140F8(-1.875f, 1.875f);
        vC[2] = func_002140F8(0.0f, 3.75f);
        *(u128z *)vD = *(u128z *)vC;
        func_001F9BD8(vD, vD, pB);
        func_001F9BF0(vE, vD, pA);
        func_L00_001FF4B0(vE, vE, func_002140F8(0.025f, 0.23f));
        func_L00_002B0B98(a0, vE, vD, D_L13_0015F660, 0x162, 0, 0.90000004f, 2.1f);
        k--;
    } while (k >= 0);
    k = 3;
    do {
        *(u128z *)vC = 0;
        vC[0] = func_002140F8(-1.875f, 1.875f);
        vC[1] = func_002140F8(-1.875f, 1.875f);
        vC[2] = func_002140F8(0.0f, 3.75f);
        *(u128z *)vD = *(u128z *)vC;
        func_001F9BD8(vD, vD, pB);
        func_001F9BF0(vE, vD, pA);
        func_L00_001FF4B0(vE, vE, func_002140F8(0.025f, 0.23f));
        t = func_002140B0(2);
        func_L00_002B0B98(a0, vE, vD, D_L13_0015F660, t + 0x163, 0, 1.2f, 2.4f);
        k--;
    } while (k >= 0);
    if (a2 == 0) {
        return;
    }
    func_001F9BF0(vD, D_L13_00167140, pA);
    func_001F9BC0(vC);
    len = func_001F9CB8(vD);
    n = (len < 8.0f) ? func_001FA898_s(len) + 2 : 10;
    f21 = (len < 7.0f) ? 7.0f - len : 0.0f;
    if (n > 0) {
        p = vG.b;
        k = n;
        do {
            r = func_002140F8(8.0f, 10.0f);
            k--;
            *(Blk24 *)vG.b = *(Blk24 *)&D_L13_001F4C40;
            yv = r * D_0015EE6C;
            *(Blk24 *)vH.b = *(Blk24 *)&D_L13_001F4C58;
            yv = yv - f21 * D_0015EE6C;
            ra = func_002140B0(6);
            pa = (int *)(p + ra * 4);
            rb = func_002140B0(6);
            pb = (int *)(vH.b + rb * 4);
            A = func_001F9850(15);
            B = func_001F9850(20);
            C = func_L00_00258BC8(A, B);
            D = func_001F9850(25);
            E = func_001F9850(30);
            F = func_L00_00258BC8(D, E);
            func_L00_0026B890(pA, vC, *pa, *pb, C, F, 0, 1200000.0f, 0, yv);
        } while (k != 0);
    }
    if (D_L13_0015F6B4 < 0.95f) {
        s = func_001F9850(15);
        func_L00_002ADBB0(a0, pA, vC, 9.0f, s, 0x7F, 0x7F, 0x7F, 0x20);
        s = func_001F9850(24);
        func_L00_002ADBB0(a0, pA, vC, 6.0f, s, 0x7F, 0x20, 0, 0x20);
    }
    s = func_001F9850(20);
    func_L00_002ADBB0(a0, pA, vC, 9.0f, s, 0x7F, 0x40, 0, 0x30);
    s = func_001F9850(27);
    func_L00_002ADBB0(a0, pA, vC, 6.0f, s, 0x60, 0x10, 0, 0x40);
    s = func_001F9850(29);
    func_L00_002ADBB0(a0, pA, vC, 3.0f, s, 0x20, 0, 0, 0x20);
}
