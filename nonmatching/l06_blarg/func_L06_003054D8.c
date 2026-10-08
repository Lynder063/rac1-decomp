/* NON_MATCHING func_L06_003054D8 -- src/overlays/l06_blarg/vendor_002FE5D0.c
 * Best so far: SIZE ours 1828 / retail 1820, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - Red button (class 1118) update, level 06: a seven-state switch on m[0x20] over the D_L06_00160058 moby pool,
 *   - Blocked on the float allocation: regalloc.py shows the 13-reference variable (ours) at $f21 and the 3-refere
 */
extern char D_0013A5E0[];
extern char D_0013D4AF[];
extern char *D_0015B16C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern char *D_L06_0016016C MACRO_ADDR;
extern int D_L06_0015F504 MACRO_ADDR;
extern float D_L06_0015F4FC MACRO_ADDR;
extern char D_L06_00167500[];
extern short D_L06_00162228;
extern short D_L06_0016222C;
extern short D_L06_00162230;
extern short D_L06_00162234;
extern short D_L06_00162238;
extern short D_L06_00162240;
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern float func_00214D88(float *, float *, float, float, float, float);
extern void func_0022ED80(int, int, void *);
extern float func_001F9D48(void *, void *);
extern int func_00215F80_i(int, int) __asm__("func_00215F80");
extern int func_L00_00265558(int);
extern void func_001F4E08(int);
extern void func_L00_002EBF50(void *, void *, int, int, int);
extern void func_L02_002F9ED8(float, float, float, float, float, float);
extern void func_L00_002EBE88(void *);
extern void func_L00_002EBEE0(void *);
extern void func_L00_00217718(void *, void *, int, int);
extern void func_L00_002EC0C8(int);
extern void func_L06_00304590(char *);
extern void func_L06_00305C58(int, void *);
extern int func_0022EEB8(int, int, void *);
extern void func_001F9BC0(void *);

typedef struct { float x, y, z, w; } Vq_L06 __attribute__((aligned(16)));

// Red button (moby class 1118) update: seven-state machine driving its press, glow and timed effects.
void func_L06_003054D8(char *m) {
    char *data = *(char **)(m + 0x78);
    Vq_L06 v0, v10, v20;
    float f20;
    float f21;
    float f;
    float r;
    int i;
    int *ip;
    char *q;
    int cur;
    int t;
    int rr;
    char *a;
    char *b;
    int nz;

    switch ((unsigned char)m[0x20]) {
    case 0:
        m[0x30] = 0xFF;
        *(float *)(m + 0x40) = func_001FA790(*(float *)(m + 0x40), 0.78539819f);
        m[0x20] = 1;
        *(int *)(data + 0x48) = -1;
        break;
    case 1:
        break;
    case 2:
        func_00214D88((float *)(data + 0x2C), (float *)(data + 0x30), 1.0f, D_0015EE70, D_0015EE70, D_0015EE6C);
        f20 = *(float *)(data + 0x30) * 0.78539819f;
        *(float *)(m + 0x40) = func_001FA748(*(float *)(m + 0x40), f20);
        b = D_L06_00160058_p;
        r = func_001FA790(*(float *)(b + (*(int *)(data + 0x38) << 8) + 0x40), f20);
        b = D_L06_00160058_p;
        *(float *)(b + (*(int *)(data + 0x38) << 8) + 0x40) = r;
        r = func_001FA790(*(float *)(b + (*(int *)(data + 0x3C) << 8) + 0x40), f20);
        b = D_L06_00160058_p;
        *(float *)(b + (*(int *)(data + 0x3C) << 8) + 0x40) = r;
        func_L00_00251E30(b + (*(int *)(data + 0x38) << 8));
        func_L00_00251E30(D_L06_00160058_p + (*(int *)(data + 0x3C) << 8));
        if (1.0f <= *(float *)(data + 0x2C)) {
            m[0x20] = 3;
            func_0022ED80(1, 0, m);
            D_0013D4AF[3] = 1;
        }
        break;
    case 3:
        if (func_001F9D48(D_0013E633 + 0xE9D, m + 0x10) < 3.7f) {
            rr = func_00215F80_i(4, 0x1783);
            nz = rr != 0;
            if ((*(int *)(D_0013A5E0 + 0x2604) & 0x10) && nz) {
                func_0022ED80(2, 0, m);
                func_L00_00265558(4);
                m[0x20] = 4;
                *(int *)(data + 0x40) = func_001F9850(0x1E);
            }
        }
        break;
    case 4:
        if (func_001F9908(data + 0x40)) {
            cur = *(int *)data << 7;
            qcopy(&v0, D_0015B16C + cur + 0x30);
            qcopy(&v10, D_0015B16C + cur + 0x70);
            m[0x20] = 5;
            *(int *)(data + 0x2C) = 0;
            *(int *)(data + 0x30) = 0;
            func_001F4E08(func_001F9850(0xF));
            func_L00_002EBF50(&v0, &v10, 2, func_001F9850(0x12C), 0);
            func_L02_002F9ED8(*(float *)&D_L06_00162228, *(float *)&D_L06_0016222C, *(float *)&D_L06_00162230,
                *(float *)&D_L06_00162234, *(float *)&D_L06_00162238, *(float *)&D_L06_00162240);
            func_L00_002EBE88(&v0);
            func_L00_002EBEE0(&v10);
            D_L06_0015F504 = 1;
        }
        t = func_001F9850(10);
        if (*(int *)(data + 0x40) < t) {
            f20 = func_001FA888(*(int *)(data + 0x40));
            D_L06_0015F4FC = 1.0f - f20 / (float)func_001F9850(10);
        }
        break;
    case 5:
        t = func_001F9850(10);
        cur = *(int *)(data + 0x40);
        if (cur < t) {
            *(int *)(data + 0x40) = cur + 1;
            f20 = func_001FA888(cur + 1);
            D_L06_0015F4FC = 1.0f - f20 / (float)func_001F9850(10);
        }
        f20 = *(float *)(data + 0x2C);
        func_00214D88((float *)(data + 0x2C), (float *)(data + 0x30), 2.0f, D_0015EE70, D_0015EE70, D_0015EE6C * 0.5f);
        qcopy(&v0, D_L06_0016016C + (*(int *)data << 7) + 0x30);
        v0.z = v0.z + *(float *)(data + 0x2C) * 18.0f;
        func_L00_002EBE88(&v0);
        func_L00_002EBEE0(D_L06_0016016C + (*(int *)data << 7) + 0x70);
        f21 = *(float *)(data + 0x2C) * 100.0f * 0.0174532925f;
        f20 = f20 * 100.0f * 0.0174532925f;
        ip = (int *)(data + 8);
        for (i = 8; i >= 0; i--, ip++) {
            q = D_L06_0016016C + (*ip << 7);
            f = *(float *)(q + 0x78);
            if (f20 < f && f < f21) {
                func_L06_00305C58((int)m, q + 0x30);
                func_0022EEB8(0, 0, m);
            }
        }
        if (1.07f <= *(float *)(data + 0x2C)) {
            func_L00_00217718(D_L06_0016016C + (*(int *)(data + 4) << 7) + 0x30,
                D_L06_0016016C + (*(int *)(data + 4) << 7) + 0x70, 0x72, 0);
            func_001F4E08(func_001F9850(10));
            m[0x20] = 6;
            func_L00_002EC0C8(3);
            qcopy(&v20, D_L06_0016016C + (*(int *)(data + 4) << 7) + 0x30);
            v20.z = v20.z + 1.0f;
            v20.y = v20.y - 2.5f;
            func_001F9BC0(&v10);
            v10.y = -0.2617993878f;
            v10.z = *(float *)(D_0013E633 + 0xEB5);
            func_L00_002EBF50(&v20, &v10, 2, func_001F9850(0x12C), 0);
            *(float *)(D_L06_00167500 + 0x160) = 0.3f;
            *(int *)(D_L06_00167500 + 0x168) = func_001F9850(0x2D);
            func_0022EEB8(0, 0, m);
        }
        break;
    case 6:
        func_00214D88((float *)(data + 0x2C), (float *)(data + 0x30), 2.0f, D_0015EE70, D_0015EE70, D_0015EE6C + D_0015EE6C);
        qcopy(&v10, D_L06_0016016C + (*(int *)(data + 4) << 7) + 0x30);
        v10.z = v10.z + 1.0f;
        v10.y = v10.y - 2.5f;
        func_001F9BC0(&v0);
        v0.y = -0.2617993878f;
        v0.z = *(float *)(D_0013E633 + 0xEB5);
        func_L00_002EBE88(&v10);
        func_L00_002EBEE0(&v0);
        if (2.0f <= *(float *)(data + 0x2C)) {
            m[0x20] = 7;
            *(int *)(data + 0x44) = func_001F9850(0xE10);
            func_L00_00217718(D_L06_0016016C + (*(int *)(data + 4) << 7) + 0x30,
                D_L06_0016016C + (*(int *)(data + 4) << 7) + 0x70, 0, 0);
            func_L00_002EC0C8(3);
            func_L06_00304590(D_L06_00160058_p + (*(int *)(data + 0x34) << 8));
        }
        break;
    }
}
