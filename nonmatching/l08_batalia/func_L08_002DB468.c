/* NON_MATCHING func_L08_002DB468 -- src/overlays/l08_batalia/vendor_002B9438.c
 * Best so far: SIZE ours 732 / retail 720, checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 */
extern short D_L08_00161A00;
extern char D_L08_001D7320[];
extern char D_L08_0015F660[];
extern char D_0013E633_w[] __asm__("D_0013E633") NOT_SDA;
extern int D_0015EE84_w __asm__("D_0015EE84") MACRO_ADDR;
extern float D_0015EE6C_w __asm__("D_0015EE6C") MACRO_ADDR;
extern void func_L02_002A52B0(void *, float);
extern void func_00216270(void);
extern void func_001F49B0(void (*)(void), void *);
extern int func_L00_0028EB98(void *, int);
extern void func_L00_0028EBF0(int);
extern char *func_L00_002D9340(void *, float);
extern float func_00214158(void);
extern float func_002140F8(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern int func_L00_00258BC8(int, int);
extern int func_002140B0(int);
extern void func_L00_002703E8(void *, void *, int, int);
extern void func_L00_00258DB0(float *, float, float);
extern void func_001F9BD8(void *, void *, void *);
extern unsigned char *func_L00_00272770(void *, void *, void *, float, float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");

/* Water surface: when the player drops through it (in the swim state), stops the swim sound and splashes:
 * a splash, 16 drops and 16 ripple rings. */
void func_L08_002DB468(char *m) {
    float at[4];
    float v[4];
    if (*(int *)&D_L08_00161A00 == 0) {
        *(int *)&D_L08_00161A00 = 1;
        func_L02_002A52B0(D_L08_001D7320, 0.6666667f);
    }
    func_001F49B0(func_00216270, m);
    if (D_0015EE84_w == 8) {
        char *p = D_0013E633_w + 0xE1D;
        if (*(float *)(p + 0x88) < *(float *)(D_L08_001D7320 + 8) && *(float *)(D_L08_001D7320 + 8) <= *(float *)(p + 0x88) - *(float *)(p + 0x108)) {
            int i;
            char *o;
            if (func_L00_0028EB98(*(void **)(p + 0x2080), *(short *)(p + 0x22B2))) {
                func_L00_0028EBF0(*(short *)(p + 0x22B2));
                *(short *)(p + 0x22B2) = -1;
            }
            qcopy(at, p + 0x80);
            at[2] = *(float *)(D_L08_001D7320 + 8);
            o = func_L00_002D9340(at, 3.0f);
            if (o != 0) {
                o[0x23] = 0x70;
            }
            for (i = 0; i < 16; i++) {
                float a = func_00214158();
                float r = func_002140F8(D_0015EE6C_w * 0.0f, D_0015EE6C_w * 3.0f);
                v[0] = func_001F9F90(a) * r;
                v[1] = func_001F9FA8(a) * r;
                v[2] = func_002140F8(D_0015EE6C_w * 3.0f, D_0015EE6C_w * 6.5f);
                {
                    int c = func_L00_00258BC8(0x5A, 0x78);
                    func_L00_002703E8(at, v, func_002140B0(2), c);
                }
            }
            for (i = 0; i < 16; i++) {
                unsigned char *q;
                func_L00_00258DB0(v, 1.0f, 1.0f);
                func_001F9BD8(v, v, at);
                v[2] = *(float *)(D_L08_001D7320 + 8) + 0.05f;
                q = func_L00_00272770(v, D_L08_0015F660, D_L08_001D7320 + 8, func_002140F8(0.7f, 1.0f), i == 0 ? 2.0f : -2.0f);
                if (q != 0) {
                    *(short *)(q + 0xA) = func_001FA898_r(func_001F9878(func_002140F8(30.0f, 60.0f)));
                }
            }
        }
    }
}
