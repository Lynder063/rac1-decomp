/* NON_MATCHING func_L13_002E8040 -- src/overlays/shared/vendor_002B8FC0.c
 * Best so far: SIZE ours 1588 / retail 1584, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Rocket moby update (class 295): a steering step with three func_002140F8 samples, a loop of four interpolated 
 *   Best candidate p3.c: 1572 bytes against 1584 (3 instructions short). Two places the compiled code drops instru
 *   Would unblock: a way to keep the float constants in f20-f23 without a fifth live float across the func_L00_001
 *   Stopped at run 10 of 10.
 */
extern float func_002140F8(float, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001F9850(int);
extern unsigned char *func_L00_00272158(void *pos, float *vec, int s, int a, int col, int n, float x, float y, float z, float w, float pw);
extern void func_001F9EC0(void *, void *, void *);
extern float func_00214158(void);
extern void func_002156E0(void *dst, void *vec, void *axis, float angle);
extern void func_L00_0026DA50(void *, void *, int, int, int, int, float);
extern float func_001F9D10(void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001F9D48(void *, void *);
extern float func_L00_0025CE58(void *, float, void *, float, float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_L00_00250800(void *, int, void *);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int);
extern void func_0020D678(void *);
extern int func_001F9908(int *arg0);
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern char D_L13_001B2680[];
extern char D_L13_001741E0[];

/* Rocket moby update (class 295): steers and aims the rocket, then sets its target state. */
void func_L13_002E8040(char *moby) {
    float cp[4];
    float t30[4];
    float u[4];
    float w[4];
    float v[4];
    char *dat19;
    char *p2;
    char *p3;
    char *p5;
    char *obj;
    char *rv;
    int k;
    int ok;
    float x;
    float y;
    float r;
    float a;
    float b;
    unsigned short h;
    float d;

    qcopy(cp, moby + 0x10);
    dat19 = *(char **)(moby + 0x78);
    p2 = *(char **)(moby + 0x24);
    a = *(float *)(moby + 0x2C);
    b = *(float *)(p2 + 0x24) - a;
    *(float *)(moby + 0x2C) = a + b * 0.1f;

    qzero(v);
    v[0] = func_002140F8(-1.0f, 1.0f);
    v[1] = func_002140F8(-1.0f, 1.0f);
    v[2] = func_002140F8(-1.0f, 1.0f);
    qcopy(w, v);
    r = func_002140F8(0.1f, 0.2f);
    d = D_0015EE6C;
    func_L00_001FF4B0(w, w, r * d);

    d = D_0015EE6C;
    r = func_002140F8(d * 0.1f, d);
    func_L00_001FF4B0(u, dat19, -r);
    func_001F9BD8(w, w, u);
    k = func_001F9850(6);
    rv = (unsigned char *)func_L00_00272158(moby + 0x10, w, k, 0x7F, 0xB0B0B0, 3, 40000.0f, 1000.0f, 1.0f, -0.0001f, 0.0f);
    if (rv != 0) {
        rv[3] = 0x48;
    }
    obj = D_L13_001B2680;
    x = 0.0f;
    do {
        y = x + 0.33333334f;
        func_002140F8(x, y);
        r = func_002140F8(x, y);
        func_L00_001FF4B0(u, dat19, r * *(float *)(dat19 + 0x2C));
        func_001F9BD8(u, u, moby + 0x10);
        k = func_001F9850(0x3C);
        rv = (unsigned char *)func_L00_00272158(u, w, k, 0x7F, 0x606060, 3, 40000.0f, 1000.0f, 1.0f, -0.0001f, 0.0f);
        if (rv != 0) {
            rv[3] = 0x48;
            rv[2] = *(unsigned char *)*(char **)(obj + 0x5C);
        }
        qzero(v);
        v[2] = 0.02f;
        func_001F9EC0(v, v, moby + 0xC0);
        r = func_00214158();
        func_002156E0(v, v, moby + 0xC0, r);
        k = func_001F9850(5);
        func_L00_0026DA50(u, v, 0x4F007FFF, 0x1FFFFFFF, k, 1, 20000.0f);
        if (k != 0) {
            ((unsigned char *)k)[3] = 0x48;
        }
        x = y;
    } while (x < 1.0f);

    p3 = *(char **)(dat19 + 0x24);
    if (p3 != 0) {
        h = *(unsigned short *)(p3 + 0x34);
        if (!(h & 0x1000) && !(h & 1) && *(int *)(p3 + 0x94) == 0) {
            *(int *)(dat19 + 0x24) = 0;
        }
        p5 = *(char **)(dat19 + 0x24);
        if (p5 != 0 && *(short *)(p5 + 0xA6) == *(int *)(dat19 + 0x3C) && *(unsigned char *)(p5 + 0x20) != 0xFE && *(unsigned char *)(p5 + 0x20) != 0xFD) {
            ok = func_001F9D10(dat19 + 0x10, p5 + 0x10) < 3.0f;
        } else {
            ok = 0;
        }
    } else {
        ok = 0;
    }
    if (ok) {
        p2 = *(char **)(dat19 + 0x24);
        *(float *)(moby + 0x48) = func_L00_001FF860(*(float *)(p2 + 0x10) - *(float *)(moby + 0x10), *(float *)(p2 + 0x14) - *(float *)(moby + 0x14));
        r = func_001F9D48(moby + 0x10, *(char **)(dat19 + 0x24) + 0x10);
        p2 = *(char **)(dat19 + 0x24);
        *(float *)(moby + 0x44) = -func_L00_001FF860(r, *(float *)(p2 + 0x18) - *(float *)(moby + 0x18));
        qcopy(dat19 + 0x10, *(char **)(dat19 + 0x24) + 0x10);
    } else {
        d = D_0015EE70;
        d = d * 251.65f;
        r = func_L00_0025CE58(moby + 0x48, *(float *)(moby + 0x48), dat19 + 0x30, d, d, D_0015EE6C * 2433.1f);
        r = func_L00_0025CE58(moby + 0x44, *(float *)(moby + 0x44), dat19 + 0x34, D_0015EE70 * 251.65f, D_0015EE70 * 251.65f, D_0015EE6C * 2433.1f);
        *(int *)(dat19 + 0x24) = 0;
    }
    func_00215C00(dat19, *(float *)(dat19 + 0x2C), *(float *)(moby + 0x48), -*(float *)(moby + 0x44));
    func_001F9BD8(moby + 0x10, moby + 0x10, dat19);
    if (*(float *)(moby + 0x10) < 2.0f || *(float *)(moby + 0x10) > 1020.0f
        || *(float *)(moby + 0x14) < 2.0f || *(float *)(moby + 0x14) > 1020.0f
        || *(float *)(moby + 0x18) < 2.0f || *(float *)(moby + 0x18) > 1020.0f) {
        func_0020D678(moby);
        return;
    }
    func_L00_00250800(moby, 1, t30);
    if (func_L00_001EFFF0(cp, t30, 0, *(int *)(dat19 + 0x20), 0) != 0) {
        qcopy(u, D_L13_001741E0);
        func_L00_0025F4A8(moby, dat19, u, 2.0f, 10.0f, 10, 3, 0x10, 4.0f, 2.0f, 9.0f, 1.0f, 1, 20.0f, -1, 0, 0, 0);
        func_0020D678(moby);
        return;
    }
    if (func_001F9908((int *)(dat19 + 0x28)) != 0) {
        func_0020D678(moby);
    }
}
