/* NON_MATCHING func_L17_002F6ED0 -- src/overlays/l17_fleet/vendor_002F1558.c
 * Best so far: BYTES 22/316 (93.0% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   UpdateMoby_1876: switch on state (0 -> 1; 1 -> 2 once *(float*)(func_L00_0025B478(m,0x10000,0)+0x2C) > 0; 2 ->
 *   Only difference: scheduling in the func_L00_00265050 call setup (retail: lui, addiu, mtc1 f12, t2=ptr, sw ptr 
 *   Four wordings (float position, local pointer, char* vs uchar*) give the same bytes: a scheduler tie. Real prot
 *   l17s s01: with the real prototype (char*,int,float*,void*,int,int,float*,float*,float scale,float*) and float[
 *   n05 (l17n): UpdateMoby_1876 as above. Fresh budget, 3 runs: global used directly in all three args (q0), comma
 *   t04 (l17n2): fresh budget, 3 runs: first arg as int (p14), pointer args as int casts (p15), global declared sc
 */
extern char *func_L00_0025B478(void *, int, int);
extern int func_0022ED80(int, int, int);
extern void func_L00_002584A8(void *, int, int);
extern void func_L01_00279790(void *);
extern void *func_L00_00265050(char *src, int cls, float *pos, void *mat, int a8, int a9, float *v10, float *v11, float scale, float *v12);
extern void func_L00_00264EA8(void *, int, int, int, int, int, int);
extern void func_L01_00279E10(void *, int);
extern void func_0020D678(void *);
extern float D_L17_0015F660;

/* Update moby 1876: waits for a trigger, then plays an effect and finishes. */
void func_L17_002F6ED0(unsigned char *m) {
    int flag = 0;
    char *r = func_L00_0025B478(m, 0x10000, 0);
    switch (m[0x20]) {
    case 0:
        m[0x20] = 1;
        break;
    case 1:
        if (r) {
            if (*(float *)(r + 0x2C) > 0.0f) flag = 1;
        }
        if (flag) m[0x20] = 2;
        break;
    case 2:
        func_0022ED80(0, 0, (int)m);
        func_L00_002584A8(m, 0, -1);
        func_L01_00279790(m);
        func_L00_00265050((char *)m, 0x753, (float *)(m + 0x10), m + 0x40, 0, 0, &D_L17_0015F660, &D_L17_0015F660, 0.0f, &D_L17_0015F660);
        func_L00_00264EA8(m, 0x756, 1, 0x756, 1, 1, 2);
        func_L01_00279E10(m, 0x755);
        func_0020D678(m);
        break;
    }
}
