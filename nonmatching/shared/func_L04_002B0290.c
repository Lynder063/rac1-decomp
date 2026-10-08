/* NON_MATCHING func_L04_002B0290 -- src/overlays/shared/vendor_002B0068.c
 * Best so far: SIZE ours 1040 / retail 1044, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moby update for class 184 (levels 04, 12). Best is p7.c: 1036 bytes against retail 1044, first half of the bod
 *   Left: the 5-pass loop's float constants -1.0/1.0 are rematerialised (lui/mtc1) before each of the three func_0
 */
extern float func_001F9D10(void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_0022ED80(int, int, int);
extern float func_001F9D48(void *, void *);
extern void func_L00_001FF500(void *, void *, float);
extern int func_001F9938(void *);
extern void func_0020D678(void *);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern float func_002140F8(float, float);
extern void func_L00_001FF610(void *, void *, void *);
extern float func_001F9CB8(void *a);
extern void func_L00_001FF4B0(void *, void *, float);
extern int func_001F9850(int);
extern int func_L00_00258BC8(int, int);
extern char *func_L00_0026EBC0(char *pos, char *vel, int c, int d, float f);
extern float D_L04_00166FC0[4];
extern char D_L04_00174060[];
extern char D_L04_00174080[];
extern float D_0015EE6C MACRO_ADDR;
extern short D_0015EE84;
extern char D_0013E633[];

/* Moby update for class 184 (levels 04, 12): steers the moby toward its target, spawns effects, deletes it when done. */
void func_L04_002B0290(char *m)
{
    char S0[0x10];
    char A[0x30];
    char B[0x10];
    float vv[4];
    char *d = *(char **)(m + 0x78);
    char *p = m + 0x10;
    char *r17;
    char *q;
    float f21, f20, f0, fa, fb, f;
    int v2, v3, i, r16, r2w;
    int r2v;
    float f0v;
    short h;

    f21 = 64.0f;
    if (*(short *)(*(char **)(d + 0x18) + 0xA6) == 0xFF)
        f21 = 128.0f;
    if (*(int *)&D_0015EE84 == 12)
        f21 = 100.0f;
    f20 = func_001F9D10(p, D_0013E633 + 0xE9D);
    func_001F9BD8(p, p, d);
    if (*(int *)(d + 0x28) == 0 && *(int *)(d + 0x24) != 0 && *(float *)(d + 0x20) < f20 && f20 < 3.0f) {
        func_0022ED80(0, 0, (int)m);
        *(int *)(d + 0x28) = 1;
    }
    if (f20 < *(float *)(d + 0x20))
        *(int *)(d + 0x24) = 1;
    *(float *)(d + 0x20) = f20;
    if (*(float *)(m + 0x10) < 0.0f || *(float *)(m + 0x14) < 0.0f || *(float *)(m + 0x18) < 0.0f) {
        func_0020D678(m);
        return;
    }
    f0 = func_001F9D48(p, D_L04_00166FC0);
    if (f21 < f0) {
        func_0020D678(m);
        return;
    }

    r17 = 0;
    if (*(unsigned char *)(m + 0xBC) == 0) {
        r17 = A;
        *(char **)(A + 0x10) = m;
        q = *(char **)(d + 0x18);
        h = *(short *)(q + 0xA6);
        if (h == 0xFF || h == 0x4B1) {
            r2v = 0x50001;
            f0v = 3.0f;
        } else {
            r2v = 0x10001;
            f0v = 1.0f;
        }
        *(int *)(A + 0x14) = r2v;
        *(float *)(A + 0x1C) = f0v;
        *(int *)(A + 0x20) = 1;
        qcopy(A, d);
        func_L00_001FF500(A, A, 1.0f);
        *(float *)(A + 0x8) = 1.0f;
        *(float *)(A + 0xC) = 5627.9248046875f;
        A[0x19] = 1;
        *(unsigned short *)(A + 0x1A) = *(unsigned short *)(m + 0xA6);
        A[0x18] = 1;
    }

    v2 = func_001F9938(d + 0x1C);
    if (v2 == 0 || *(unsigned char *)(m + 0xBC) != 0) {
        v2 = *(short *)(d + 0x1C);
        if (v2 <= 0 && *(unsigned char *)(m + 0xBC) != 0) {
            func_0020D678(m);
            return;
        }
    } else {
        *(unsigned char *)(m + 0xBC) = 1;
        *(short *)(d + 0x1C) = *(short *)(d + 0x1E) / 4;
    }

    v3 = func_L00_001EFFF0(S0, p, 0, *(int *)(d + 0x18), (int)r17);
    if (v3 != 0) {
        qcopy(p, D_L04_00174060);
        if (*(unsigned char *)(m + 0xBC) == 0) {
            fa = -1.0f;
            fb = 1.0f;
            i = 4;
            do {
                qzero(vv);
                vv[0] = func_002140F8(fa, fb);
                i--;
                vv[1] = func_002140F8(fa, fb);
                vv[2] = func_002140F8(fa, fb);
                qcopy(B, vv);
                func_L00_001FF610(vv, d, D_L04_00174080);
                f = func_001F9CB8(vv);
                func_L00_001FF4B0(B, B, f * 0.5f);
                func_001F9BD8(B, vv, B);
                f = func_002140F8(D_0015EE6C * 3.0f, D_0015EE6C * 6.0f);
                func_L00_001FF4B0(B, B, f);
                r16 = func_001F9850(10);
                r2w = func_001F9850(15);
                r2w = func_L00_00258BC8(r16, r2w);
                func_L00_0026EBC0(p, B, 0x7F2F4F6F, r2w, 30000.0f);
            } while (i >= 0);
        }
        func_0020D678(m);
    }
}
