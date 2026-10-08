/* NON_MATCHING func_L13_002B4B90 -- src/overlays/l13_gemlik/vendor_002B2020.c
 * Best so far: SIZE ours 1648 / retail 1660, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Elevator update (state machine on moby[0x20], 0..7; common tail calls func_001F9BD8(A,A,moby+0x10) and func_L0
 */
extern void func_001F9C30(void *, void *, float);
extern float func_00214158(void);
extern float func_00214D88(float *, float *, float, float, float, float);
extern void func_L13_002B5210(unsigned char *moby, float *v, float *w);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern void func_L00_002EBE88(void *);
extern void func_L00_002EBEE0(void *);
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80(int, int, int);
extern float func_001F9B88(float);
extern void func_L00_00222B80(int, int);
extern void func_L00_002EC0C8(int);
extern void func_L00_0028EBF0(int);
extern float func_001F9D48(void *, void *);
extern float func_001F9FA8(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern void func_L00_002EBF50(void *, void *, int, int, int);
extern void func_L00_002617B0(char *, void *, void *, void *);
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE6C_v[] __asm__("D_0015EE6C") MACRO_ADDR;
extern float D_L13_00167140[];
extern unsigned char D_0013E633[];

// Elevator update: runs its state machine (0..7) and steers the lift between its stops.
void func_L13_002B4B90(unsigned char *moby)
{
    unsigned char *data = *(unsigned char **)(moby + 0x78);
    float A[4];
    float B[4];
    float C[4];
    float D[4];
    float E[4];
    float *p;

    func_001F9C30(A, moby + 0x10, -1.0f);
    qcopy(B, moby + 0x40);
    switch (moby[0x20]) {
    case 0: {
        float f = func_00214158();
        *(float *)(data + 0x78) = f;
        *(int *)(data + 0x6C) = -1;
        moby[0x20] = 3;
        break;
    }
    case 1: {
        float old = *(float *)(data + 0x70);
        float k = D_0015EE6C_v[1] * 4.0f;
        float j = D_0015EE6C * 4.0f;
        float cur, t, x;
        func_00214D88((float *)(data + 0x70), (float *)(data + 0x74), 1.0f, k, k, j);
        cur = *(float *)(data + 0x70);
        if (cur < 1.0f) {
            t = (1.0f - cur) / (1.0f - old);
            func_L13_002B5210(moby, D, E);
            p = D_L13_00167140;
            func_001F9BF0(C, p, D);
            p -= 0x50;
            func_001F9C30(C, C, t);
            func_001F9BD8(D, D, C);
            x = func_001FA790(p[0x55], E[1]);
            func_001FA748(x * t, E[1]);
            E[1] = func_001FA790(p[0x56], E[2]);
            E[2] = func_001FA748(E[1] * t, E[2]);
            func_L00_002EBE88(D);
            func_L00_002EBEE0(E);
        } else {
            unsigned char s = moby[0xBC];
            moby[0xBC] = 1;
            moby[0x20] = s;
        }
        break;
    }
    case 2:
    case 3: {
        int r = func_L00_0028EB98(moby, *(int *)(data + 0x6C));
        float f20, g;
        if (r == 0) *(int *)(data + 0x6C) = func_0022ED80(0, 4, (int)moby);
        if (moby[0xBC]) {
            func_L13_002B5210(moby, C, D);
            func_L00_002EBE88(C);
            func_L00_002EBEE0(D);
        }
        if (moby[0x20] == 2) f20 = *(float *)(data + 0x60);
        else f20 = *(float *)(data + 0x64);
        func_00214D88((float *)(moby + 0x18), (float *)(data + 0x68), f20,
                      D_0015EE6C_v[1] * 8.0f, D_0015EE6C_v[1] * 8.0f, D_0015EE6C * 40.0f);
        g = func_001F9B88(*(float *)(moby + 0x18) - f20);
        if (g == 0.0f) {
            moby[0x20] = (moby[0x20] == 2) ? 6 : 7;
            if (moby[0xBC]) {
                func_L00_00222B80(0, 0);
                func_L00_002EC0C8(1);
            }
        }
        break;
    }
    case 6:
    case 7: {
        unsigned char *x;
        if (func_L00_0028EB98(moby, *(int *)(data + 0x6C))) {
            func_L00_0028EBF0(*(int *)(data + 0x6C));
            *(int *)(data + 0x6C) = -1;
        }
        x = D_0013E633 + 0xE1D;
        if (*(int *)(x + 0x2FC) == (int)moby
            && *(short *)(x + 0x30E) == 0) {
            if (!(0.5f < func_001F9D48(x + 0x80, moby + 0x10))) break;
        }
        if (moby[0x20] == 7) {
            data[0x7C] = 0;
            moby[0x20] = 5;
        } else {
            data[0x7C] = 0;
            moby[0x20] = 4;
        }
        break;
    }
    case 4:
    case 5: {
        float a;
        int r;
        int v;
        unsigned char *x;
        unsigned char *y;
        a = func_001FA748(*(float *)(data + 0x78), D_0015EE6C * 6.2831855f);
        *(float *)(data + 0x78) = a;
        a = func_001F9FA8(a);
        a = a * 4.0f - 3.0f;
        r = func_001FA898_r(a * 128.0f);
        if (r > 128) {
            r = 128;
        } else {
            int w = r;
            if (!(r > 31)) w = 32;
            r = w;
        }
        v = (int)0x80000000 | (r << 16) | (r << 8) | r;
        x = D_0013E633 + 0xE1D;
        *(int *)(moby + 0x90) = v;
        if (*(int *)(x + 0x2FC) != (int)moby) {
            data[0x7C] = 1;
        } else if (*(short *)(x + 0x30E) != 0) {
            data[0x7C] = 1;
        } else if (1.1f < func_001F9D48(x + 0x80, moby + 0x10)) {
            data[0x7C] = 1;
        }
        if (data[0x7C] != 0) {
            if (*(int *)(x + 0x2FC) == (int)moby
                && *(short *)(x + 0x30E) == 0
                && func_001F9D48(x + 0x80, moby + 0x10) < 0.5f) {
                *(int *)(moby + 0x90) = (int)0x80208020;
                if (moby[0x20] == 5) moby[0xBC] = 2;
                else moby[0xBC] = 3;
                moby[0x20] = 1;
                func_L00_00222B80(0x72, 1);
                func_L00_002EBF50(D_L13_00167140, D_L13_00167140 + 4, 1, 0, 0);
                *(int *)(data + 0x70) = 0;
                break;
            }
        }
        y = D_0013E633 + 0xE9D;
        if (moby[0x20] == 4) {
            float h = func_001F9D48(moby + 0x10, y);
            float q = func_001F9B88(*(float *)(y + 0x258) - *(float *)(data + 0x64));
            if (q < 2.0f) {
                if (h < 32.0f) {
                    if (5.0f < h) {
                        moby[0xBC] = 0;
                        moby[0x20] = 3;
                        *(float *)(data + 0x68) = -(D_0015EE6C * 5.0f);
                    }
                }
            }
        } else if (moby[0x20] == 5) {
            float h = func_001F9D48(moby + 0x10, y);
            float q = func_001F9B88(*(float *)(y + 0x258) - *(float *)(data + 0x60));
            if (q < 2.0f) {
                if (h < 32.0f) {
                    if (5.0f < h) {
                        moby[0xBC] = 0;
                        moby[0x20] = 2;
                        *(float *)(data + 0x68) = -(D_0015EE6C * 5.0f);
                    }
                }
            }
        }
        break;
    }
    }
    func_001F9BD8(A, A, moby + 0x10);
    func_L00_002617B0((char *)data + 0x20, A, B, moby + 0x40);
}
