/* NON_MATCHING func_L00_002E3700 -- src/overlays/shared/vendor_002E1660.c
 * Best so far: SIZE ours 2184 / retail 2208, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Per-slot sample builder (2208 bytes): fills two 20-entry tables when the counter is 2, runs the 19-step spark 
 *   Left: float saves (ours spills an extra $f30 copy of the loop-3 r2 value, retail keeps it in $f21), and a few 
 *   Unblock: a source form that keeps loop-3's r2 in its own register and matches the loop-1 block placement; comp
 */
typedef int u128 __attribute__((mode(TI)));
extern char D_L00_001E70A0_a[] __asm__("D_L00_001E70A0");
extern char D_L00_001E7190_a[] __asm__("D_L00_001E7190");
extern char D_L00_001E7160_a[] __asm__("D_L00_001E7160");
extern char D_L00_001E72B0_a[] __asm__("D_L00_001E72B0");
extern unsigned char D_L00_001803C0_a[] __asm__("D_L00_001803C0");
extern float D_L00_0015F660[] MACRO_ADDR;
extern short D_L00_00161CC0;
extern float func_001F9CB8(void *);
extern float func_001FA790(float, float);
extern float func_L00_0025F368(float);
extern float func_001F9FA8(float);
extern float func_001F9F90(float);
extern float func_L00_00258C80(float, float);
extern void func_001F9CA0(void *, void *, void *);
extern void func_001F9EE8(void *, void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern char *func_L00_002757E8(void *, void *, int, void *);
extern int func_002140B0(int);
extern void func_001F9C30(void *, void *, float);
extern void func_002141A8(void *, float, float);
extern int func_L00_0023F0D0(float *, float, float, float, float, float);

/* Builds the sample tables for one slot, then runs the spark and glow passes and their emitter updates. */
void func_L00_002E3700(int unused, int idx) {
    float v0[4] __attribute__((aligned(16)));
    float v10[4] __attribute__((aligned(16)));
    float v20[4] __attribute__((aligned(16)));
    float v30[4] __attribute__((aligned(16)));
    float v40[4] __attribute__((aligned(16)));
    float v50[4] __attribute__((aligned(16)));
    float v60[4] __attribute__((aligned(16)));
    float v70[4] __attribute__((aligned(16)));
    float v80[4] __attribute__((aligned(16)));
    char *pA = (char *)D_L00_001E70A0_a + (idx << 6);
    char *pB = (char *)D_L00_001E7130 + (idx << 4);
    float f20, f21, f22, f23, f24, f25, f26, f27, f28, f29;
    float c0;
    float *pa;
    float *pb;
    float *pc;
    float *pd;
    char *pE;
    char *pF;
    char *r;
    int acoff;
    int i;
    int j;
    int j2;
    int idx2 = idx * 2;
    float *q;
    float *qa;
    float *qb;
    float *q3;

    func_001F9BF0(v0, (float *)pB, (float *)pA);
    c0 = func_001F9CB8(v0);
    f24 = c0 / 20.0f;
    if (D_L00_00161CC8[idx] == 2) {
        qa = (float *)(D_L00_001E7190_a + idx2 * 0x140);
        qb = (float *)(D_L00_001E7190_a + (idx2 + 1) * 0x140);
        D_L00_00161CC8[idx] = 3;
        for (i = 0; i < 20; i++) {
            float fi = (float)i;
            qa[0] = f24 * fi;
            qa[1] = 0.0f;
            qa[2] = 0.0f;
            qa[3] = 1.0f;
            qb[0] = f24 * fi;
            qb[1] = 0.0f;
            qb[2] = 0.0f;
            qb[3] = 1.0f;
            qa += 4;
            qb += 4;
        }
    }
    acoff = idx << 6;
    pa = (float *)&D_L00_00161CD8[idx];
    pb = (float *)&D_L00_00161CE8[idx];
    pc = (float *)&D_L00_00161CF8[idx];
    pd = (float *)&D_L00_00161D58[idx];
    *pa = func_001FA748(*pa, 0.17453292f);
    f25 = 0.1f;
    f26 = 0.3f;
    f23 = 1.0f;
    *pb = func_001FA790(*pb, 0.80285144f);
    *pc = func_001FA748(*pc, 0.05236f);
    f22 = (3.6e+02f / (func_001FA888(20) * 0.5f)) * 0.017453292f;
    q = (float *)(D_L00_001E7190_a + idx2 * 0x140);
    j = 0;
    do {
        float fj = (float)j;
        float a0 = func_001FA888(j);
        j++;
        f20 = a0 / func_001FA888(20);
        f20 = f20 * f26 + f25;
        {
            float g = func_L00_0025F368(*pa + fj * f22);
            float rr = func_001F9FA8(g);
            f20 = f20 * rr;
        }
        f21 = f24 * fj;
        q[1] = 0.0f;
        q[3] = f23;
        q[2] = f20;
        q[0] = f21;
        q += 4;
    } while (j < 19);

    *(u128 *)v40 = *(u128 *)(D_L00_001E70A0_a + acoff);
    func_001F9BF0(v50, (float *)pB, (float *)v40);
    f20 = 1.0f;
    func_L00_001FF4B0(v10, v50, f20);
    func_001F9CA0(v20, v10, (char *)D_0013E633 + 0x10AD);
    func_L00_001FF4B0(v20, v20, -1.0f);
    func_001F9CA0(v30, v20, v10);
    func_001F9EE8(v60, D_L00_001E72B0_a + idx2 * 0x140, v10);
    *(u128 *)(D_L00_001E7160_a + (idx << 4)) = *(u128 *)v60;

    f28 = 0.99483764f;
    f27 = 0.20944f;
    f26 = 0.5f;
    f25 = 0.3f;
    f29 = f20;
    j2 = 0;
    q3 = (float *)(D_L00_001E7190_a + (idx2 + 1) * 0x140);
    do {
        float fj2 = (float)j2;
        float x1;
        float x2;
        float t;
        float z;
        q3[2] = 0.0f;
        j2++;
        x1 = func_L00_0025F368(*pb + fj2 * f28);
        f22 = fj2 * f27;
        x2 = func_L00_0025F368(*pc + f22);
        f23 = x1;
        f20 = func_001F9FA8(x2) * f26;
        f21 = func_001F9FA8(f23);
        t = func_L00_00258C80(0.0f, 0.2f);
        f20 = f20 * f21;
        f20 = f20 + t;
        q3[2] = f20;
        z = func_001F9F90(f23);
        q3[1] = z * f25;
        q3[3] = f29;
        f22 = f24 * fj2;
        q3[0] = f22;
        q3 += 4;
    } while (j2 < 19);

    pE = (char *)D_L00_001E7070 + acoff;
    f22 = 1.0f;
    f20 = func_002140F8(0.01f, 0.05f);
    f21 = func_L00_00258C80(0.34906584f, 0.6981317f);
    *(u128 *)v70 = 0;
    v70[0] = f22;
    f0tmp: ;
    {
        float z = func_001F9F90(f21);
        v70[3] = f22;
        v70[0] = f20 * z;
        f20 = f20 * func_001F9FA8(f21);
        v70[1] = f20;
    }
    func_001F9EC0(v70, v70, pE);
    pF = (char *)D_L00_001E7070 + acoff + 0x30;
    func_L00_002757E8(pF, v70, 0x7F, (void *)*(int *)pd);
    if (func_002140B0(3) == 0) {
        func_001F9C30(v80, pE, 0.3f);
        func_001F9BD8(v80, v80, pF);
        r = func_L00_002757E8(v80, D_L00_0015F660, 0x7F, (void *)*(int *)pd);
        if (r) {
            short sv = (short)func_001F9850(4);
            float fa;
            *(float *)(r + 0xC) = 1.2e+05f;
            *(short *)(r + 0xA) = sv;
            fa = func_001FA888((int)sv);
            *(float *)(r + 0x30) = 1.0f / fa;
            *(int *)(r + 0x38) = 0x7F7F7F;
            if (D_L00_00161D38[idx] == 1) *(short *)(r + 0x36) = 1;
        }
    }
L3D0C:
    f21 = 0.01f;
    f20 = 0.05f;
    func_002140F8(f21, f20);
    func_002141A8(v70, f21, f20);
    func_L00_002757E8(v60, v70, 0x7F, (void *)*(int *)pd);
    if (func_002140B0(3) == 0) {
        r = func_L00_002757E8(v60, D_L00_0015F660, 0x7F, (void *)*(int *)pd);
        if (r) {
            short sv = (short)func_001F9850(4);
            float fa;
            *(float *)(r + 0xC) = 1.2e+05f;
            *(short *)(r + 0xA) = sv;
            fa = func_001FA888((int)sv);
            *(float *)(r + 0x30) = 1.0f / fa;
            *(int *)(r + 0x38) = 0x7F7F7F;
            if (D_L00_00161D38[idx] == 1) *(short *)(r + 0x36) = 2;
        }
    }
    {
        int f28v = D_L00_00161D28[idx];
        if (f28v) {
            if (f28v & 1) {
                *(u128 *)v80 = *(u128 *)(D_L00_001E70A0_a + acoff);
                v80[2] = v80[2] - 0.25f;
                if (D_L00_00161D08[idx] == -1) {
                    D_L00_00161D08[idx] = func_L00_0023F0D0(v80, *(float *)&D_L00_00161CC0, 0.0f, 1.0f, 1.0f, 2.0f);
                }
                if (D_L00_00161D08[idx] >= 0) {
                    char *q4 = (char *)D_L00_001803C0_a + (D_L00_00161D08[idx] << 5);
                    *(u128 *)(q4 + 0x10) = *(u128 *)v80;
                    *(float *)(q4 + 0x1C) = *(float *)&D_L00_00161CC0;
                }
            }
            if (f28v & 2) {
                v60[2] = v60[2] + 0.5f;
                if (D_L00_00161D18[idx] == -1) {
                    D_L00_00161D18[idx] = func_L00_0023F0D0(v60, *(float *)&D_L00_00161CC0, 0.0f, 1.0f, 1.0f, 2.0f);
                }
                if (D_L00_00161D18[idx] >= 0) {
                    char *q4 = (char *)D_L00_001803C0_a + (D_L00_00161D18[idx] << 5);
                    *(u128 *)(q4 + 0x10) = *(u128 *)v60;
                    *(float *)(q4 + 0x1C) = *(float *)&D_L00_00161CC0;
                }
            }
        }
    }
    return;
}
