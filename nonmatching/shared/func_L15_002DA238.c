/* NON_MATCHING func_L15_002DA238 -- src/overlays/shared/vendor_002D7C00.c
 * Best so far: SIZE ours 704 / retail 696, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   4-iteration loops (func_001F9C30 scale, func_001F9EE8 combine, copy pairs into a float[8])
 *   each followed by func_L00_001FD1D8. Same size at best (p4.c, 696 bytes, 410 bytes differ).
 *   Difference: register allocation. Retail keeps the b-vector address in a separate saved reg ($fp)
 *   from the one used in the first calls ($s3), and loop pointers are s0,u1,v2,x3,i5; ours merges
 *   them or gets a different order. Also our stage 2 gets its D_39C0/D_3A00 lui/addiu hoisted above the
 *   func_L00_001FD1D8 call (gcse hoist) while retail recomputes them after func_L00_00258C80.
 *   Would unblock: the original spelling of the loop/pointer variables (maybe a struct local
 *   holding q/w/pr/pkt/b/c/d); 10 runs spent.
 */
extern int func_001F4868(int);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9CA0(void *, void *, void *);
extern float func_L00_00258C80(float lo, float hi);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9EE8(void *, void *, void *);
extern void func_L00_001FD1D8(void *, void *, int);
extern float D_L15_00167440[];
extern float D_L15_001D39C0[];
extern float D_L15_001D3A00[];
extern short D_L15_00161D2C;
extern short D_L15_00161D34;
extern short D_L15_00161CE0;
extern short D_L15_00161D38;
extern char D_0013E633[];

/* Builds a camera-facing basis around the moby and draws two layers of four jittered quads. */
void func_L15_002DA238(char *m) {
    float q[16];
    int w[4];
    float pr[8];
    long pkt[4];
    float b[4];
    float c[4];
    float d[4];
    float a[4];
    char *p = *(char **)(m + 0x78) + 0xF0;
    float f = 1.0f;
    float t0;
    float t1;
    float *s;
    float *t;
    float *u;
    float *v;
    float *x;
    int i;

    pkt[1] = func_001F4868(11);
    pkt[3] = 0x8000000048L;
    pkt[2] = 0xFF9000000260L;
    pkt[0] = 0;
    func_001F9BF0(a, D_L15_00167440, p);
    func_L00_001FF4B0(a, a, 0.3f);
    func_001F9BD8(a, a, p);
    a[3] = f;
    func_001F9BF0(b, D_L15_00167440, a);
    func_L00_001FF4B0(b, b, f);
    func_001F9CA0(c, b, D_0013E633 + 0x10AD);
    func_L00_001FF4B0(c, c, -1.0f);
    func_001F9CA0(d, c, b);
    w[0] = *(int *)&D_L15_00161D2C;
    w[3] = *(int *)&D_L15_00161D2C;
    w[2] = *(int *)&D_L15_00161D2C;
    w[1] = *(int *)&D_L15_00161D2C;
    f = *(float *)&D_L15_00161D34 + func_L00_00258C80(0.0f, 0.025f);
    s = q; t = D_L15_001D39C0; u = D_L15_001D3A00; v = &pr[0]; x = &pr[1];
    for (i = 3; i >= 0; i--) {
        func_001F9C30(s, t, f);
        t += 4;
        func_001F9EE8(s, s, b);
        s += 4;
        t0 = u[0];
        t1 = u[1];
        *v = t0;
        *x = t1;
        u += 2;
        v += 2;
        x += 2;
    }
    func_L00_001FD1D8(q, 0, 0);
    w[0] = *(int *)&D_L15_00161CE0;
    w[3] = *(int *)&D_L15_00161CE0;
    w[2] = *(int *)&D_L15_00161CE0;
    w[1] = *(int *)&D_L15_00161CE0;
    f = *(float *)&D_L15_00161D38 + func_L00_00258C80(0.0f, 0.05f);
    s = q; t = D_L15_001D39C0; u = D_L15_001D3A00; v = &pr[0]; x = &pr[1];
    for (i = 3; i >= 0; i--) {
        func_001F9C30(s, t, f);
        t += 4;
        func_001F9EE8(s, s, b);
        s += 4;
        t0 = u[0];
        t1 = u[1];
        *v = t0;
        *x = t1;
        u += 2;
        v += 2;
        x += 2;
    }
    func_L00_001FD1D8(q, 0, 0);
}
