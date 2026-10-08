/* NON_MATCHING func_L00_002E0E50 -- src/overlays/shared/vendor_002D9438.c
 * Best so far: SIZE ours 2056 / retail 2064, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Hydrodisplacer update (class 1251): a six-way state machine on the moby (jump table on 0x20), each state's sub
 *   Wall-ish difference: retail keeps the high half of the base symbol in $s4 and reaches the state block through 
 *   Compiles via try_func; the file-scope conflict on func_001FA748 is resolved by the file's two-float prototype,
 */
extern char D_0013E633[];
extern char D_0013A5E0[];
extern int D_L00_0015F6A8 MACRO_ADDR;
extern int D_L00_0015F504 MACRO_ADDR;
extern char *D_L00_00160098 MACRO_ADDR;
extern char *D_L00_001601AC MACRO_ADDR;
extern float D_L00_0015F4FC MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern char D_L00_00166EC0[] NOT_SDA;
extern float D_L00_00161C84;
extern void func_L00_002E1660(char *m);
extern int func_0022ED80(int, int, int);
extern int func_001F9850(int);
extern int func_L00_00267BA8(int, int, int *);
extern int func_L00_002E1790(char *a);
extern void func_L00_00222B80(int, int);
extern void func_L00_00232C10(int, int, float);
extern void func_L00_002EBF50(void *, void *, int, int, int);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern void func_L00_002E17F0(char *a);
extern float func_00214D28(float *, float, float);
extern float func_00214D88(float *, float *, float, float, float, float);
extern void func_L00_002EBE88(void *);
extern void func_L00_002EBEE0(void *);
extern void func_001F9C08(void *, void *, void *, float);
extern void func_001F9BC0(void *);
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern void func_L00_002EC0C8(int);
extern int func_001F9908_r(void *) __asm__("func_001F9908");

/* Hydrodisplacer update: state machine on the moby, driven by its data block. */
void func_L00_002E0E50(char *m) {
    char *d = *(char **)(m + 0x78);
    char *p;
    char *q;
    char *p2;
    float f0, f1, f2, f3, f4, f13, f15, f20;
    int v;
    float buf[8];
    int st;

    if (*(int *)(D_0013E633 + 0xE1D + 0x10B4) == 3) goto L124C;
    if (*(unsigned char *)(D_0013E633 + 0xE1D + 0x20B0) != 0) {
        if (D_L00_0015F6A8 == 0) {
            if (!((unsigned)(*(int *)(D_0013E633 + 0xE1D + 0x2084) - 0x38) < 2)) func_L00_002E1660(m);
        }
        if (*(unsigned char *)(D_0013E633 + 0xE1D + 0x20B0) != 0) {
            *(short *)(D_0013E633 + 0xE1D + 0x1990) = 1;
            f2 = D_0015EE64;
            f4 = f2 * 0.02f;
            f3 = f2 * 0.3f;
            *(float *)(D_0013E633 + 0xE1D + 0x199C) = 2.3f;
            *(float *)(D_0013E633 + 0xE1D + 0x1994) = f4;
            *(float *)(D_0013E633 + 0xE1D + 0x1998) = f3;
            if (!((unsigned)(*(int *)(D_0013E633 + 0xE1D + 0x2084) - 0x38) < 2)) {
                f1 = *(float *)(m + 0x2C);
                f0 = 1024.0f / f1;
                *(float *)(D_0013E633 + 0xE1D + 0x1AF8) = f3;
                *(short *)(D_0013E633 + 0xE1D + 0x1A40) = 2;
                *(short *)(D_0013E633 + 0xE1D + 0x1AF0) = 3;
                *(float *)(D_0013E633 + 0xE1D + 0x1AF4) = f4;
                *(float *)(D_0013E633 + 0xE1D + 0x1A44) = f4;
                *(float *)(D_0013E633 + 0xE1D + 0x1A48) = f3;
                f0 = f0 * -0.2f;
                *(float *)(D_0013E633 + 0xE1D + 0x1AE4) = f0;
                *(float *)(D_0013E633 + 0xE1D + 0x1A34) = f0;
            }
        }
    }

    switch (*(unsigned char *)(m + 0x20)) {
    case 0:
        func_0022ED80(0, 0, (int)m);
        *(unsigned char *)(m + 0x20) = 1;
        break;
    case 1:
        if (*(unsigned char *)(m + 0x70) & 2) *(unsigned char *)(m + 0x20) = 2;
        break;
    case 2:
        v = func_001F9850(8);
        if (func_L00_00267BA8(*(int *)(D_0013E633 + 0xE1D + 0x10A0), v, 0) == 0) break;
        if ((*(int *)(D_0013A5E0 + 0x2600) & *(int *)(D_0013E633 + 0xE1D + 0x10A0)) == 0) break;
        p = *(char **)(D_0013E633 + 0xE1D + 0x2FC);
        if (p == 0) break;
        if (*(short *)(D_0013E633 + 0xE1D + 0x30E) != 0) break;
        if (*(short *)(p + 0xA6) != 0x155) break;
        if (func_L00_002E1790(m) == 0) break;
        if ((unsigned)*(int *)(D_0013E633 + 0xE1D + 0x208C) >= 2) break;
        *(unsigned char *)(m + 0x20) = 3;
        func_L00_00222B80(0x38, 0);
        if (*(unsigned char *)(D_0013E633 + 0xE1D + 0x20B0) != 0) {
            f1 = (float)func_001F9850(6);
            func_L00_00232C10(0x83, 0, f1);
        } else {
            f1 = (float)func_001F9850(6);
            func_L00_00232C10(0x46, 0, f1);
        }
        break;
    case 3:
        p2 = *(char **)(D_0013E633 + 0xE1D + 0x2FC);
        if (p2 == 0) goto L124C;
        if (*(short *)(p2 + 0xA6) != 0x155) goto L124C;
        if (!(*(int *)(D_0013E633 + 0xE1D + 0xA98) & 2)) break;
        p = *(char **)(p2 + 0x78);
        q = D_L00_00160098 + (*(int *)p << 8);
        func_L00_00222B80(0x39, 0);
        if (*(unsigned char *)(D_0013E633 + 0xE1D + 0x20B0) != 0) {
            f1 = (float)func_001F9850(6);
            func_L00_00232C10(0x84, 0, f1);
        } else {
            f1 = (float)func_001F9850(6);
            func_L00_00232C10(0x47, 0, f1);
        }
        if (*(unsigned char *)(D_0013E633 + 0xE1D + 0x20B0) != 0) func_0022ED80(0x15, 0, *(int *)(D_0013E633 + 0xE1D + 0x2080));
        else func_0022ED80(0x14, 0, *(int *)(D_0013E633 + 0xE1D + 0x2080));
        if (*(int *)(p + 4) != -1 && *(int *)(p + 8) != -1) {
            *(unsigned char *)(m + 0xBC) = 0;
            *(unsigned char *)(m + 0x20) = 4;
            *(int *)(d + 0x10) = 0;
            func_L00_002EBF50(D_L00_00166EC0, D_L00_00166EC0 + 0x10, 1, 0, 0);
            if (*(unsigned char *)(D_0013E633 + 0xE1D + 0x20B0) != 0) {
                *(int *)(d + 8) = *(int *)(p + 4);
                *(int *)(d + 0xC) = *(int *)(p + 8);
            } else {
                *(int *)(d + 0xC) = *(int *)(p + 4);
                *(int *)(d + 8) = *(int *)(p + 8);
            }
            break;
        }
        *(unsigned char *)(m + 0x20) = 5;
        *(int *)d = func_001FA898_r(func_001F9878(D_L00_00161C84));
        if (*(unsigned char *)(D_0013E633 + 0xE1D + 0x20B0) == 0) {
            *(unsigned char *)(q + 0xBC) = 8;
            *(unsigned char *)(D_0013E633 + 0xE1D + 0x20B0) = 1;
        } else {
            *(unsigned char *)(q + 0xBC) = 4;
            *(unsigned char *)(D_0013E633 + 0xE1D + 0x20B0) = 0;
        }
        break;
    case 4:
        p2 = *(char **)(D_0013E633 + 0xE1D + 0x2FC);
        if (p2 == 0) goto L124C;
        if (*(short *)(p2 + 0xA6) != 0x155) goto L124C;
        st = *(unsigned char *)(m + 0xBC);
        if (st == 1) goto S1;
        if (st == 0) goto S0;
        if (st == 2) goto S2;
        break;
    case 5:
        p2 = *(char **)(D_0013E633 + 0xE1D + 0x2FC);
        if (p2 != 0 && *(short *)(p2 + 0xA6) == 0x155) {
            if (func_001F9908_r(d) == 0) break;
        }
        func_L00_002E17F0(m);
        *(unsigned char *)(m + 0x20) = 2;
        break;
    default:
        break;
    }
    return;

S0:
    f20 = 1.0f;
    v = func_001F9850(0xF);
    f13 = f20 / (float)v;
    func_00214D28(&D_L00_0015F4FC, f20, f13);
    if (!(f20 <= D_L00_0015F4FC)) return;
    p2 = *(char **)(D_0013E633 + 0xE1D + 0x2FC);
    p = *(char **)(p2 + 0x78);
    *(unsigned char *)(m + 0xBC) = 1;
    q = D_L00_00160098 + (*(int *)p << 8);
    func_L00_002EBE88(D_L00_001601AC + (*(int *)(d + 8) << 7) + 0x30);
    func_L00_002EBEE0(D_L00_001601AC + (*(int *)(d + 8) << 7) + 0x70);
    D_L00_0015F504 = 1;
    if (*(unsigned char *)(D_0013E633 + 0xE1D + 0x20B0) == 0) {
        *(unsigned char *)(q + 0xBC) = 8;
        *(unsigned char *)(D_0013E633 + 0xE1D + 0x20B0) = 1;
    } else {
        *(unsigned char *)(q + 0xBC) = 4;
        *(unsigned char *)(D_0013E633 + 0xE1D + 0x20B0) = 0;
    }
    return;

S1:
    f1 = *(float *)(d + 0x10);
    f20 = 0.0f;
    if (f1 == 0.0f && 0.0f < D_L00_0015F4FC) goto L1564;
    if (!(f1 < 1.0f)) goto L14E4;
    f20 = 1.0f;
    f13 = D_0015EE70 * 0.66673243f;
    f15 = D_0015EE6C * 0.5f;
    func_00214D88((float *)(d + 0x10), (float *)(d + 0x14), 1.0f, f13, f13, f15);
    func_001F9C08(buf, D_L00_001601AC + (*(int *)(d + 8) << 7) + 0x30, D_L00_001601AC + (*(int *)(d + 0xC) << 7) + 0x30, *(float *)(d + 0x10));
    func_001F9BC0((char *)buf + 0x10);
    f13 = func_001FA790(*(float *)(D_L00_001601AC + (*(int *)(d + 0xC) << 7) + 0x74), *(float *)(D_L00_001601AC + (*(int *)(d + 8) << 7) + 0x74)) * *(float *)(d + 0x10);
    buf[5] = f13;
    buf[5] = func_001FA748(*(float *)(D_L00_001601AC + (*(int *)(d + 8) << 7) + 0x74), f13);
    f13 = func_001FA790(*(float *)(D_L00_001601AC + (*(int *)(d + 0xC) << 7) + 0x78), *(float *)(D_L00_001601AC + (*(int *)(d + 8) << 7) + 0x78)) * *(float *)(d + 0x10);
    buf[6] = f13;
    buf[6] = func_001FA748(*(float *)(D_L00_001601AC + (*(int *)(d + 8) << 7) + 0x78), f13);
    func_L00_002EBE88(buf);
    func_L00_002EBEE0((char *)buf + 0x10);
    return;

L14E4:
    if (D_L00_0015F4FC < f20) {
        v = func_001F9850(0xF);
        f13 = f20 / (float)v;
        func_00214D28(&D_L00_0015F4FC, f20, f13);
        return;
    }
    *(unsigned char *)(m + 0xBC) = 2;
    func_L00_002EC0C8(3);
    D_L00_0015F504 = 0;
    return;

S2:
    f20 = 0.0f;
    if (!(0.0f < D_L00_0015F4FC)) {
        *(unsigned char *)(m + 0x20) = 2;
        goto L159C;
    }
L1564:
    v = func_001F9850(0xF);
    f13 = 1.0f / (float)v;
    func_00214D28(&D_L00_0015F4FC, f20, f13);
    return;

L159C:
    func_L00_00222B80(0x3A, 0);
    if (*(unsigned char *)(D_0013E633 + 0xE1D + 0x20B0) == 0) {
        f1 = (float)func_001F9850(6);
        func_L00_00232C10(0x85, 0, f1);
    } else {
        f1 = (float)func_001F9850(6);
        func_L00_00232C10(0x48, 0, f1);
    }
    return;

L124C:
    func_L00_002E17F0(m);
    return;
}
