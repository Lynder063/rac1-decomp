/* NON_MATCHING func_L18_002D6878 -- src/overlays/l18_veldin2/vendor_002A8400.c
 * Best so far: BYTES 7/388 (98.2% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Spawns a particle spray (func_L00_00272158) and a second burst (func_L00_0026DA50) at moby+0x10 along dir.
 *   Best p4.c: 7 bytes differ (2 instrs): retail stores the 0.02f z swc1 to 0x28($sp) before the `daddu $a1,$s0`; 
 *   Would unblock: a way to make the zero-vector local addressed from $sp for the store while still keeping the la
 */
typedef int uq_2D6878 __attribute__((mode(TI)));
extern float D_0015EE6C MACRO_ADDR;
extern unsigned char *D_L18_001B2DDC;
extern void func_L00_00258DB0(float *, float, float);
extern float func_002140F8(float, float);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001F9850(int);
extern unsigned char *func_L00_00272158(void *pos, float *vec, int s, int a, int col, int n, float x, float y, float z, float w, float pw);
extern void func_001F9EC0(void *, void *, void *);
extern char *func_L00_0026DA50(void *pos, void *dir, int c, int d, int n, int k, float f);

// Spawns a spray of particles at the moby along dir.
void func_L18_002D6878(char *moby, float *dir) {
    unsigned char *p;
    float a[4];
    float b[4];
    uq_2D6878 cv;
    func_L00_00258DB0(a, D_0015EE6C * 0.1f, D_0015EE6C * 0.2f);
    func_001F9C30(b, dir, func_002140F8(0.0f, 1.0f));
    func_001F9BD8(b, b, moby + 0x10);
    p = func_L00_00272158(b, a, func_001F9850(0x14), 0x7F, 0x606060, 3, 40000.0f, 1000.0f, 1.0f, -0.0002f, 0.0f);
    if (p != 0) {
        p[2] = D_L18_001B2DDC[0];
        p[3] = 0x44;
    }
    cv = 0;
    ((float *)&cv)[2] = 0.02f;
    func_001F9EC0(&cv, &cv, moby + 0xC0);
    func_L00_0026DA50(b, &cv, 0x4F007FFF, 0x1FFFFFFF, func_001F9850(0x14), 1, 20000.0f);
}
