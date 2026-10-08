/* NON_MATCHING func_L02_00222D18 -- src/overlays/shared/help_0021A2E0.c
 * Best so far: SIZE ours 1288 / retail 1292, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Shared help routine: steers and blends a vector set at D_0013E633+0xE9D (state tested at 0x2084/0x208C), then 
 *   Left: the tail global D_0015EE6C is read as $gp in a branch delay slot (retail has lui+lwc1 in the join); the 
 */
typedef int q128 __attribute__((mode(TI)));
extern char D_0013E633[];
extern float D_0015EE6C MACRO_ADDR;
extern void func_L00_00234800(int, void *, void *);
extern float func_L00_00234250(float *v);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_L00_002342F8(float *);
extern void func_L00_002343A0(float *, float *, float);
extern float func_001F9CB8(void *a);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BC0(void *);
extern void func_L00_00213E60(void);
extern void func_L02_00221CE0(void);
extern void func_001F9BF0(void *dst, void *a, void *b);
extern void func_L00_002136A8(void);
extern float func_001F9C78(void *a, void *b);
extern void func_L00_00234150(float *, float *);
extern void func_L00_00234420(float *, float *, float);
extern float func_001F9CE8(void *);
extern float func_L00_00213A08(void *);
extern void func_001F9C30(void *, void *, float);

/* Steers and blends the vector set of the object at D_0013E633+0xE9D, then clamps the parameter at +0x16C. */
void func_L02_00222D18(void) {
    char *a;
    char *x;
    char *p;
    char *q;
    char *v;
    char *v2;
    char *s;
    char *y;
    char *w;
    char *z;
    char *xq;
    char *e;
    q128 t0;
    q128 t1;
    q128 t2;
    float r;
    float g;
    float h;
    float k;
    float d;
    float one;
    float zero;
    int st;

    a = D_0013E633 + 0xE9D;
    qcopy(&t0, a);
    x = a - 0x80;
    func_L00_00234800(*(int *)(x + 0x4F8), a + 0x70, a + 0x10);
    st = *(int *)(x + 0x2084);
    if (st == 0x22 || st == 0x14) {
        if (*(int *)(x + 0x1CC) == 0) {
            r = func_L00_00234250((float *)(a + 0x60));
            h = *(float *)(x + 0x234) - 0.02f;
            if (h < r) func_L00_001FF4B0(a + 0x60, a + 0x60, h);
        }
        p = D_0013E633 + 0xEFD;
        r = func_L00_002342F8((float *)p);
        k = -*(float *)(p + 0x1FC);
        if (r < k) {
            if (0.0f < k) k = 0.0f;
            func_L00_002343A0((float *)p, (float *)p, k);
        }
    } else {
        if (*(int *)(x + 0x208C) != 0xD) {
            if (*(int *)(x + 0x208C) != 0xE) {
                if (*(int *)(x + 0x1CC) == 0) {
                    r = func_001F9CB8(a + 0x60);
                    h = *(float *)(x + 0x234) - 0.02f;
                    if (h < r) func_L00_001FF4B0(a + 0x60, a + 0x60, h);
                }
            }
        }
    }
    a = D_0013E633 + 0xE9D;

    func_001F9BD8(a, a, a + 0x60);
    func_001F9BD8(a, a, a + 0x8A0);
    func_001F9BC0(a + 0x8A0);
    x = a - 0x80;
    *(int *)(x + 0x23C) = 0;
    *(char *)(x + 0x257) = 0;
    r = func_001F9CB8(a + 0x70);
    if (r <= 0.0001f) {
        func_L00_00213E60();
        func_L02_00221CE0();
        func_001F9BF0(a + 0x80, a, &t0);
        func_L00_002136A8();
    } else {
        func_L02_00221CE0();
    }

    q = D_0013E633 + 0xF2D;
    y = q - 0x90;
    v = q + 0x20;
    func_001F9BF0(q, y, &t0);
    qcopy(v, q);
    s = q + 0x10;
    qcopy(s, q);
    one = 1.0f;
    zero = 0.0f;
    z = q - 0x30;
    func_L00_001FF4B0(q, q, one);
    r = func_001F9C78(q, z);
    if (r < zero) r = zero;
    func_L00_001FF4B0(q, z, r);
    qcopy(&t1, z);
    func_L00_00234150((float *)&t1, (float *)&t1);
    func_L00_00234150((float *)v, (float *)v);
    func_L00_001FF4B0(v, v, one);
    r = func_001F9C78(v, &t1);
    if (r < zero) r = zero;
    func_L00_001FF4B0(v, &t1, r);
    qcopy(&t2, z);
    func_L00_00234420((float *)&t2, (float *)&t2, zero);
    func_L00_00234420((float *)s, (float *)s, zero);
    func_L00_001FF4B0(s, s, one);
    r = func_001F9C78(s, &t2);
    if (r < zero) r = zero;
    func_L00_001FF4B0(s, &t2, r);

    v2 = q - 0x110;
    *(float *)(v2 + 0x160) = func_001F9CB8(q);
    *(float *)(v2 + 0x164) = func_001F9CE8(q);
    qcopy(&t1, q);
    r = func_L00_00213A08(&t1);
    *(float *)(v2 + 0x168) = r;
    if (r < zero) *(float *)(v2 + 0x168) = zero;

    qcopy(&t1, y);
    w = q - 0x20;
    xq = q - 0x10;
    r = func_001F9CB8(w);
    if (0.0001f < r) {
        func_001F9BD8(y, y, w);
        g = *(float *)(v2 + 0xFC);
        func_001F9BC0(w);
        *(float *)(v2 + 0xFC) = g;
        func_L00_00213E60();
        func_L02_00221CE0();
        func_001F9BF0(xq, y, &t0);
        func_L00_002136A8();
    }

    func_001F9BF0(q + 0x30, y, &t1);
    g = *(float *)(v2 + 0xFC);
    *(float *)(v2 + 0xFC) = zero;
    *(float *)(v2 + 0x14C) = g;
    func_001F9BF0(xq, y, &t0);
    *(float *)(v2 + 0x16C) = zero;
    if (0.004f < *(float *)(v2 + 0x164)) {
        r = *(float *)(v2 + 0x108) / *(float *)(v2 + 0x164);
        *(float *)(v2 + 0x16C) = r;
        if (0.5f < r) *(float *)(v2 + 0x16C) = 0.5f;
        else if (r < -0.5f) *(float *)(v2 + 0x16C) = -0.5f;
    }

    x = D_0013E633 + 0xE1D;
    d = D_0015EE6C * 52.0f;
    e = x + 0x100;
    if (d < *(float *)(x + 0x160)) {
        func_001F9C30(e, e, d / *(float *)(x + 0x160));
        *(float *)(x + 0x160) = D_0015EE6C * 52.0f;
    }
}
