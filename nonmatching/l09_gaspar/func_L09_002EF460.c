/* NON_MATCHING func_L09_002EF460 -- src/overlays/l09_gaspar/vendor_002C2B08.c
 * Best so far: BYTES 6/620 (99.0% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
extern char *func_L00_0025B478(void *, int, int);
extern void func_L00_0025E4B0(void *m, short *p);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern float func_002140F8(float, float);
extern float func_001F9CB8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001F9850(int);
extern int func_L00_00258BC8(int, int);
extern char *func_L00_0026EBC0(char *pos, char *vel, int c, int d, float f);
extern char *func_L09_002EF6D0(char *owner, void *position, float angle);
extern void func_0020D678(void *);
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE60 MACRO_ADDR;
typedef int xu128 __attribute__((mode(TI)));
typedef struct { float x, y, z, w; } __attribute__((aligned(16))) Vx;

// Update of a timed explosive moby: counts down, then bursts into sparks and spawns its remains.
void func_L09_002EF460(char *m) {
    char *d = *(char **)(m + 0x78);
    char *r = func_L00_0025B478(m, 0x10000, 0);
    Vx v;
    Vx b;
    int i;
    if (r != 0) {
        *(float *)d = *(float *)d - *(float *)(r + 0x2C);
        if (0.0f < *(float *)d) {
            d[0x47] = 0x46;
            func_L00_0025E4B0(m, (short *)(d + 0x40));
        } else {
            v.x = func_001F9F90(*(float *)(m + 0x48)) * (D_0015EE6C * 20.0f);
            v.y = func_001F9FA8(*(float *)(m + 0x48)) * (D_0015EE6C * 20.0f);
            v.z = 0.0f;
            for (i = 24; i >= 0; i--) {
                Vx t = {0};
                t.x = func_002140F8(-1.0f, 1.0f);
                t.y = func_002140F8(-1.0f, 1.0f);
                t.z = func_002140F8(-1.0f, 1.0f);
                b = t;
                func_L00_001FF4B0(&b, &b, func_001F9CB8(&v) * (D_0015EE60 * -0.35000002f + 1.0f));
                func_001F9BD8(&b, &v, &b);
                func_L00_001FF4B0(&b, &b, func_002140F8(D_0015EE6C * 3.0f, D_0015EE6C * 6.0f));
                d = (char *)func_L00_00258BC8(func_001F9850(5), func_001F9850(10));
                func_L00_0026EBC0(m + 0x10, (char *)&b, 0x5F7F4F2F, (int)d, func_002140F8(20000.0f, 50000.0f));
            }
            *(xu128 *)&b = *(xu128 *)(m + 0x10);
            func_L09_002EF6D0(m, &b, *(float *)(m + 0x48));
            func_0020D678(m);
            return;
        }
    }
    ((unsigned char *)m)[0xA4] = 0xFF;
}
