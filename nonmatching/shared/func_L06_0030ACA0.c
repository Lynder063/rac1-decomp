/* NON_MATCHING func_L06_0030ACA0 -- src/overlays/shared/vendor_002FF000.c
 * Best so far: BYTES 16/460 (96.5% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   UpdateMoby state machine (0 -> 1, 1 -> 2 when *(float*)(p+0x2C) > 0, 2 -> three func_L00_00265050 effects, spa
 *   Best: p7.c (16 bytes differ): all right except schedule of moby+0x40 (retail computes it after the jal func_L0
 *   Keeping a=s2/b=s3 needs b created first; that hoists it. Needs some source form that creates b first but evalu
 */
extern char *func_L00_0025B478(void *, int, int);
extern void func_L01_00279790(void *);
extern void func_L00_00265050(void *, int, void *, void *, int, int, float, void *, void *, void *);
extern char *func_0020D348(int);
extern void func_L00_00251E30(void *);
extern void func_0020D678(void *);
extern char D_L06_0015F660[];

/* Update: waits for a positive value, then spawns effects and a child moby and deletes itself. */
void func_L06_0030ACA0(char *moby) {
    char *p;
    int f;
    float z;
    char *a;
    char *b;
    char *m;
    char *d;
    f = 0;
    p = func_L00_0025B478(moby, 0x10000, 0);
    switch (((unsigned char *)moby)[0x20]) {
    case 0:
        moby[0x20] = 1;
        break;
    case 1:
        if (p != 0 && *(float *)(p + 0x2C) > 0.0f) {
            f = 1;
        }
        if (f != 0) {
            moby[0x20] = 2;
        }
        break;
    case 2:
        z = 0.0f;
        func_0022ED80(0, 0, (int)moby);
        d = D_L06_0015F660;
        func_L01_00279790(moby);
        b = moby + 0x40;
        a = moby + 0x10;
        func_L00_00265050(moby, 0x679, a, b, 0, 0, z, d, d, d);
        func_L00_00265050(moby, 0x67A, a, b, 0, 0, z, d, d, d);
        func_L00_00265050(moby, 0x67B, a, b, 0, 0, z, d, d, d);
        m = func_0020D348(0x678);
        if (m != 0) {
            m[0x31] = 1;
            *(short *)(m + 0x32) = 0xFF;
            qcopy(m + 0x10, a);
            qcopy(m + 0x40, b);
            *(long *)(m + 0x38) = *(long *)(moby + 0x38);
            func_L00_00251E30(m);
        }
        func_0020D678(moby);
        break;
    }
}
