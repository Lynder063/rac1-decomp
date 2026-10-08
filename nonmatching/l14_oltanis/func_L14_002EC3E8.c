/* NON_MATCHING func_L14_002EC3E8 -- src/overlays/l14_oltanis/vendor_002E0538.c
 * Best so far: SIZE ours 1020 / retail 1024, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moby class 610 update on level 14: arms state on first call (three error paths through func_001E9730 and func_
 *   Left: the first call's pointer and the second and third calls' global reads come out as lui/lw in the body (re
 *   Unblock: the source order that gives retail's delay-slot placement for the first call's argument and the loop 
 */
extern int func_001F9850(int);
extern int func_001F9938(void *);
extern float func_001F9CB8(void *a);
extern float func_001FA888(int);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_00215570(void *, int);
extern void func_0020D678(void *);
extern int func_001E9730();
extern float D_0015EE6C MACRO_ADDR;
extern void func_L14_002EC7E8(void *, int, void *);
extern void func_L14_002EC9C8(void *);
extern float D_L14_00162300;
extern int D_L14_00162308;
extern float D_L14_00162310;
extern float D_L14_00162304;
extern char D_L14_001FCCF0[];
extern char D_L14_001FCD50[];
extern char D_L14_001FCDA8[];
extern char *D_L14_001601AC_t __asm__("D_L14_001601AC") MACRO_ADDR;
extern short D_L14_00161CD4;
extern short D_L14_00161CD8;
extern char D_0013E633[];

/* Update for moby class 610: arms a state on first call, scans 48 entries, then steers the moby toward its target. */
void func_L14_002EC3E8(unsigned char *m) {
    char *d;
    char *g2;
    char *g;
    char *ptr;
    float sv[4];
    float f0, f1, f2, f20, f21, a, b;
    int i, r, r2, r3, r4, v16;

    d = *(char **)(m + 0x78);
    if (m[0x20] == 0) {
        m[0x20] = 1;
        if (*(int *)d < 0) {
            func_001E9730(D_L14_001FCCF0, *(short *)(m + 0xB2));
            func_0020D678(m);
            return;
        }
        if (*(int *)(d + 0x504) < 0) {
            func_001E9730(D_L14_001FCD50, *(short *)(m + 0xB2));
            func_0020D678(m);
            return;
        }
        ptr = D_L14_001601AC_t;
        if (*(int *)(d + 0x500) < 0) {
            func_001E9730(D_L14_001FCDA8, *(short *)(m + 0xB2));
            func_0020D678(m);
            return;
        }
        *(short *)(d + 0xE) = 0;
        i = 0;
        f0 = func_001F9CB8(ptr + (*(int *)(d + 0x504) << 7));
        f0 = f0 + f0;
        *(float *)(d + 0x14) = f0;
        f0 = func_001F9CB8(D_L14_001601AC_t + (*(int *)(d + 0x504) << 7) + 0x10);
        *(float *)(d + 0x18) = f0;
        f0 = func_001F9CB8(D_L14_001601AC_t + (*(int *)(d + 0x504) << 7) + 0x20);
        *(float *)(d + 0x1C) = f0;
        r = func_001F9850(*(short *)(d + 0x508));
        *(short *)(d + 0x50A) = r;
        f0 = func_001FA888((short)r);
        f1 = 1.0f;
        f1 = f1 / f0;
        *(float *)(d + 0x50C) = f1;
        a = func_001F9F90(*(float *)(m + 0x48));
        sv[0] = a;
        b = func_001F9FA8(*(float *)(m + 0x48));
        sv[1] = b;
        *(int *)&sv[2] = 0;
        do {
            func_L14_002EC7E8(m, i, sv);
            i = i + 1;
        } while (i < 0x30);
    }
    g2 = D_0013E633 + 0xE9D;
    r = func_00215570(g2, *(int *)(d + 0x500));
    if (r == 0) goto L6A4;
    f21 = 1.0f;
    f0 = func_001F9F90(*(float *)(m + 0x48));
    f2 = D_0015EE6C;
    f1 = *(float *)&D_L14_00161CD8;
    f1 = f1 * f2;
    f0 = f0 * f1;
    D_L14_00162300 = f0;
    f0 = func_001F9FA8(*(float *)(m + 0x48));
    f1 = *(float *)&D_L14_00161CD8;
    f2 = D_0015EE6C;
    D_L14_00162308 = 0;
    f1 = f1 * f2;
    D_L14_00162310 = f21;
    f0 = f0 * f1;
    D_L14_00162304 = f0;
    func_L14_002EC9C8(m);
    if (*(short *)(g2 - 0x80 + 0x308) != 0) goto L6A4;
    if (*(int *)(g2 - 0x80 + 0x2284) == 0xD) goto L6A4;
    if (*(unsigned char *)(g2 - 0x80 + 0x12E2) == 0) {
        if (*(short *)(g2 - 0x80 + 0x30C) == 0) goto L6A4;
    }
    r = func_00215570(g2, *(int *)d);
    if (r == 0) goto L6A4;
    func_001F9938(d + 0x50A);
    f0 = func_001FA888(*(short *)(d + 0x50A));
    f1 = *(float *)(d + 0x50C);
    *(short *)(d + 0xE) = 1;
    f2 = D_0015EE6C;
    f20 = f0 * f1;
    f0 = *(float *)(d + 0x8) * f2;
    f20 = (f21 - f20) * f0;
    f0 = func_001F9F90(*(float *)(m + 0x48));
    f0 = f0 * f20;
    sv[0] = f0;
    f0 = func_001F9FA8(*(float *)(m + 0x48));
    f0 = f0 * f20;
    sv[1] = f0;
    *(int *)&sv[2] = 0;
    func_001F9BD8(g2 + 0x70, g2 + 0x70, sv);
    r = func_001F9850(*(int *)&D_L14_00161CD4);
    *(short *)(d + 0xC) = r;
    f0 = func_001FA888((short)r);
    *(float *)(d + 0x10) = f21 / f0;
    return;
L6A4:
    if (*(short *)(d + 0xE) == 0) return;
    if (*(short *)(d + 0xC) == 0) return;
    r = func_001F9938(d + 0xC);
    if (r != 0) {
        *(short *)(d + 0xE) = 0;
        r2 = func_001F9850(*(short *)(d + 0x508));
        *(short *)(d + 0x50A) = r2;
        f0 = func_001FA888((short)r2);
        f1 = 1.0f;
        f1 = f1 / f0;
        *(float *)(d + 0x50C) = f1;
    }
    g = D_0013E633 + 0xE1D;
    if (*(short *)(g + 0x308) != 0 || *(unsigned char *)(g + 0x12E2) == 0) {
        v16 = *(short *)(d + 0xC);
        r3 = func_001F9850(15);
        if (r3 < v16) {
            r4 = func_001F9850(15);
            *(short *)(d + 0xC) = r4;
            f0 = (float)(short)r4;
            f1 = 1.0f;
            f1 = f1 / f0;
            *(float *)(d + 0x10) = f1;
        }
    }
    f21 = 0.0f;
    f0 = func_001FA888(*(short *)(d + 0xC));
    f1 = D_0015EE6C;
    f20 = *(float *)(d + 0x8) * f1;
    f2 = *(float *)(d + 0x10);
    f0 = f0 * f2;
    f20 = f20 - f21;
    f20 = f20 * f0;
    f20 = f20 + f21;
    f0 = func_001F9F90(*(float *)(m + 0x48));
    f0 = f0 * f20;
    sv[0] = f0;
    f0 = func_001F9FA8(*(float *)(m + 0x48));
    f0 = f0 * f20;
    sv[1] = f0;
    sv[2] = f21;
    func_001F9BD8(D_0013E633 + 0xF0D, D_0013E633 + 0xF0D, sv);
}
