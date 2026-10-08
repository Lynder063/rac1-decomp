/* NON_MATCHING func_L06_00300AB0 -- src/overlays/shared/vendor_002FF000.c
 * Best so far: SIZE ours 752 / retail 760, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 06 shared update (760 bytes), stopped at the budget (s01): best is 744 bytes (p1) and 752 (p5/p6), SIZE 
 *   Unblock: the source's exact pointer-walk structure for the inner loop and the outer-loop increment (retail com
 */
extern void func_00234C98(int, long);
extern int func_001F4868(int);
extern void func_001FA190(void *);
extern float func_002140F8(float, float);
extern void func_001F9BF0(void *dst, void *a, void *b);
extern void func_L00_001FF4B0(void *, void *, float);
extern int func_001FA8A8(int, int, float);
extern void func_L00_001FD1D8(void *, void *, int);
extern float D_L06_001F31E0[];
extern short D_L06_0016206C;
extern short D_L06_00162070;
extern short D_L06_00162074;
extern short D_L06_00162078;
extern short D_L06_0016207C;
extern short D_L06_00162080;
extern short D_L06_00162084;
extern short D_L06_00162088;
extern short D_L06_0016208C;
extern short D_L06_00162090;

/* Level 06 shared update: sweeps 15 steps over the moby's 4 vector pairs, packs the GS-style words and sends them on. */
void func_L06_00300AB0(char *moby) {
    float ent[4][4];
    int iv[4];
    float da[8];
    long pk0[2];
    long pk1[2];
    float gap[20];
    float de[8];
    long pk2[2];
    long pk3[2];
    float buf[16];
    float tmp[4];
    char *data;
    long va, vb;
    int r1, r2;
    int i, j;
    float *bt;
    int *b19;
    float *b21;
    float *b22;
    float *b23;
    float *b30;
    char *pz;

    func_00234C98(0x47, 0x5380B);
    data = *(char **)(moby + 0x78);
    r1 = func_001F4868(*(int *)&D_L06_00162080);
    i = 0;
    r2 = func_001F4868(*(int *)&D_L06_00162080);
    vb = (long)*(int *)&D_L06_0016206C | ((long)*(int *)&D_L06_00162070 << 2)
       | ((long)*(int *)&D_L06_00162074 << 4) | ((long)*(int *)&D_L06_00162078 << 6)
       | ((long)*(int *)&D_L06_0016207C << 32);
    va = 0xFF9000000260L;
    pk0[0] = 0;
    pk0[1] = r1;
    pk1[0] = va;
    pk1[1] = vb;
    pk2[0] = 0;
    pk2[1] = r2;
    pk3[0] = va;
    pk3[1] = vb;
    func_001FA190(buf);
    bt = tmp;
    b19 = iv;
    b21 = da;
    b22 = da + 1;
    b23 = de;
    b30 = de + 1;

    while (i < 15) {
        int nx = i + 1;
        int *p19 = b19;
        float *p21 = b21;
        float *p22 = b22;
        float *p23 = b23;
        float *p30 = b30;
        float *pd = D_L06_001F31E0;
        char *p16 = (char *)ent;
        D_L06_001F31E0[3] = D_L06_001F31E0[7];
        D_L06_001F31E0[7] = func_002140F8(0.0f, 0.2f);
        for (j = 0; j < 4; j++) {
            int off = 16 * (i + j / 2);
            char *q;
            qcopy(p16, data + off + 0x230);
            if (j & 1) {
                func_001F9BF0(bt, p16, data + 0x210);
                func_L00_001FF4B0(bt, bt, 0.5f);
                func_001F9BF0(p16, p16, bt);
                ((float *)p16)[2] = ((float *)p16)[2] - 0.125f;
                q = data + off;
                *p19 = func_001FA8A8(*(int *)&D_L06_0016208C, *(int *)&D_L06_00162090, *(float *)(q + 0xC));
            } else {
                q = data + off;
                *p19 = func_001FA8A8(*(int *)&D_L06_00162084, *(int *)&D_L06_00162088, *(float *)(q + 0xC));
            }
            p19++;
            *p21 = pd[0];
            *p22 = pd[1];
            *p23 = pd[0];
            *p30 = pd[1];
            pd += 2;
            p21 += 2;
            p22 += 2;
            p23 += 2;
            p30 += 2;
            p16 += 0x10;
        }
        func_L00_001FD1D8(ent, buf, 0);
        pz = (char *)ent;
        for (j = 0; j < 4; j++) {
            if (j & 1) {
                *(float *)(pz + 8) += 0.25f;
            }
            pz += 0x10;
        }
        i = nx;
        func_L00_001FD1D8(ent, buf, 0);
    }
    func_00234C98(0x47, 0x5360B);
}
