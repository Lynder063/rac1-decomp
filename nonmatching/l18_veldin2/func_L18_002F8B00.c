/* NON_MATCHING func_L18_002F8B00 -- src/overlays/l18_veldin2/vendor_002F2AE0.c
 * Best so far: BYTES 5/480 (99.0% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Spawns two particle bursts (func_L00_00272158 / func_L00_0026DA50) around a position along the moby's orientat
 *   Only the order of the four swc1 into the two local vectors ({0.23,0,0,1} and {1,0,0,1}; retail 0x10,0x1C,0x0,0
 */
typedef int u128 __attribute__((mode(TI)));
extern int func_L00_001FEF78(void *);
extern void func_001F9EC0(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern float func_002140F8(float, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_L00_00258C80(float lo, float hi);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_L00_00258BC8(int, int);
extern int func_001F9850(int);
extern unsigned char *func_L00_00272158(void *pos, float *vec, int s, int a, int col, int n, float x, float y, float z, float w, float pw);
extern char *func_L00_0026DA50(void *pos, void *dir, int c, int d, int n, int k, float f);
extern short D_L18_0016247C;
extern short D_L18_00162480;
extern short D_L18_00162498;
extern short D_L18_0016249C;
extern short D_L18_001624A0;
extern short D_L18_001624A4;
extern short D_L18_001624A8;
extern short D_L18_001624AC;
extern short D_L18_001624B0;
extern short D_L18_001624B4;
extern short D_L18_001624B8;
extern short D_L18_001624BC;
extern short D_L18_001624C0;
extern short D_L18_001624C8;
extern short D_L18_001624CC;
extern short D_L18_001624D0;
extern short D_L18_001624D4;
extern short D_L18_001624D8;
extern short D_L18_001624DC;

// Spawns two bursts of particles at pos, aimed along the moby's orientation.
void func_L18_002F8B00(char *moby, char *pos) {
    float a[4];
    float b[4];
    float c[4];
    float d[4];
    int i = 0;
    int j;
    int k;
    *(u128 *)a = 0;
    *(u128 *)b = 0;
    b[0] = 0.23f;
    a[3] = b[3] = a[0] = 1.0f;
    func_L00_001FEF78(moby + 0xBC);
    func_001F9EC0(b, b, moby + 0xC0);
    func_001F9BD8(c, moby + 0x10, b);
    func_001F9EC0(a, a, moby + 0xC0);
    for (; i < *(int *)&D_L18_00162498; ) {
        i++;
        func_L00_001FF4B0(d, a, func_002140F8(*(float *)&D_L18_0016249C, *(float *)&D_L18_001624A0));
        k = func_001FA898_r(func_L00_00258C80((float)*(int *)&D_L18_001624B0, (float)*(int *)&D_L18_001624B4));
        func_L00_00272158(pos, d,
            func_001F9850(func_L00_00258BC8(*(int *)&D_L18_001624B8, *(int *)&D_L18_001624BC)),
            0x7F, 0xFFFFFF, k,
            *(float *)&D_L18_001624A4, *(float *)&D_L18_001624A8, *(float *)&D_L18_001624C0, *(float *)&D_L18_001624AC, 0.85f);
    }
    for (j = 0; j < *(int *)&D_L18_001624C8; ) {
        j++;
        func_L00_001FF4B0(d, a, func_002140F8(*(float *)&D_L18_001624CC, *(float *)&D_L18_001624D0));
        func_L00_0026DA50(pos, d, *(int *)&D_L18_0016247C, *(int *)&D_L18_00162480,
            func_001F9850(func_L00_00258BC8(*(int *)&D_L18_001624D4, *(int *)&D_L18_001624D8)),
            1, *(float *)&D_L18_001624DC);
    }
}
