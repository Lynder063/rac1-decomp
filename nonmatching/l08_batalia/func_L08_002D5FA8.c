/* NON_MATCHING func_L08_002D5FA8 -- src/overlays/l08_batalia/vendor_002B9438.c
 * Best so far: SIZE ours 2328 / retail 2340, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Run 14 of 16 (p8.c, best candidate): 2328 bytes against retail 2340, still 12 short. Stopped with budget nearl
 *   Shape: per-frame moby state machine; calls B0 (out-param int/float), then state 0x63 path (DeleteMoby x3, retu
 *   Still differs: (1) arg choice (0x3C/0x1E after sp34<4 path): gcc emits movz/sltu against the local holding 1; 
 *   Unblock: a non-movz form of the 0x3C/0x1E choice, and the register order of m/data; a third pass with regalloc
 */
typedef int Q_2d5fa8 __attribute__((mode(TI)));
extern int D_0015EE84_r __asm__("D_0015EE84") MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern int D_L08_0015F694 MACRO_ADDR;
extern int D_L08_0015F698 MACRO_ADDR;
extern int D_L08_0015F69C MACRO_ADDR;
extern int D_L08_0015F6A0 MACRO_ADDR;
extern float D_L08_0015F660[] MACRO_ADDR;
extern int D_L08_001B0FB0[];
extern char D_0013E633[] NOT_SDA;
extern unsigned char D_0013D50F[] NOT_SDA;
extern char *func_L05_0028AA68(char *, char *, char *, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern void func_001F9BC0(void *);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int);
extern void *func_L00_00265050(char *, int, float *, void *, int, int, float, float *, float *, float *);
extern int func_0022EE28(int, int, int);
extern void func_L00_00264DB8(int, int);
extern void func_L00_002584A8(void *, int, int);
extern void func_0020D678(void *);
extern void func_L00_0025E4B0(void *m, short *p);
extern int func_L00_00260FB0(float, char *, void *, int, int, void *, int);
extern void func_001F9BF0(void *, void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001F9CE8(void *);
extern float func_001FA790(float, float);
extern float func_L00_0025CE58(void *, float, void *, float, float, float);
extern void func_L00_001FFED8(void *, int, float);
extern void func_001FA588(void *, void *, void *);
extern void func_L00_0025E590(void *, void *);

/* Per-frame update of a batalia moby: its state machine and its helper mobys. */
void func_L08_002D5FA8(char *m) {
    char *data = *(char **)(m + 0x78);
    char *t;
    char *u;
    char *c;
    float vec[4];
    int sp30;
    float sp34 = 0.0f;
    int arg;
    float k4;
    float k3;
    int s63;
    int one;

    t = func_L00_0025B478(m, 0x330000, 0);
    if (*(char **)(data + 0x160) != 0) {
        u = func_L00_0025B478(*(char **)(data + 0x160), 0x210000, 0);
    } else {
        u = 0;
    }
    if (*(char **)(data + 0x164) != 0) {
        c = func_L00_0025B478(*(char **)(data + 0x164), 0x210000, 0);
    } else {
        c = 0;
    }
    t = func_L05_0028AA68(t, u, c, 0);
    if (t != 0 && *(char **)(t + 0x20) != 0) {
        short h = *(short *)(*(char **)(t + 0x20) + 0xA6);
        if (h == 0x1A9 || h == 0x47) t = 0;
    }
    func_L00_0025B4D0(m, t, data + 0x20, 0, &sp30, &sp34, 0, 4);
    one = 1;

    if (sp30 != one && *(unsigned char *)(m + 0x20) != 0) {
        *(float *)(data + 0x20) -= sp34;
        if (sp34 != 0.0f) func_0022ED80(4, 0, (int)m);
        if (*(float *)(data + 0x20) > 0.0f) {
            if (sp34 < 4.0f) {
                if ((unsigned int)(*(unsigned short *)(*(char **)(t + 0x20) + 0xA6) - 0xB0) < 2) {
                    *(char *)(data + 0xA7) = 0x78;
                    arg = 0x3C;
                } else {
                    *(char *)(data + 0xA7) = 0x78;
                    arg = 0x1E;
                }
            } else {
                unsigned char v = 0xE6;
                if (sp34 < 6.0f) v = 0xC8;
                *(unsigned char *)(data + 0xA7) = v;
                arg = 0x1E;
            }
            *(short *)(data + 0x26) = func_001F9850(arg);
            if (*(unsigned char *)(m + 0x20) == 0xC && *(unsigned char *)(m + 0x53) != one) {
                func_00213DE0(m, 1, 0, 0);
            }
        } else {
            s63 = 0x63;
            if (*(unsigned char *)(m + 0x20) != s63) {
                float *z = D_L08_0015F660;
                *(Q_2d5fa8 *)vec = *(Q_2d5fa8 *)(m + 0x10);
                vec[2] += 3.0f;
                *(unsigned char *)(data + 0xA7) = 0xFA;
                func_001F9BC0(data + 0x120);
                func_L00_0025F4A8(m, data + 0x40, vec, 0.0f, 0.0f, 20, 8, 20, 4.0f, 2.0f, 9.0f, 1.0f, -1, 15.0f, 1, one, -1, 0);
                func_L00_00265050(m, 0x6C0, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, z, z, z);
                func_L00_00265050(m, 0x6C1, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, z, z, z);
                func_L00_00265050(m, 0x6C2, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, z, z, z);
                func_L00_00265050(m, 0x6C3, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, z, z, z);
                func_L00_00265050(m, 0x6C4, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, z, z, z);
                if (*(unsigned char *)(m + 0x53) != one) func_00213DE0(m, 1, 0, 3);
                *(unsigned char *)(m + 0x20) = s63;
                *(float *)(data + 0x20) = 6.0f;
                *(unsigned short *)(data + 0x3E) &= 0xFFFD;
            } else {
                float *z = D_L08_0015F660;
                if (D_0015EE84_r == 8) {
                    int k = *(int *)(data + 0x184);
                    if (k != 0) if (t != 0) if (*(char **)(t + 0x20) != 0)
                    if (*(short *)(*(char **)(t + 0x20) + 0xA6) == 0x661) {
                        if (k == 1) D_L08_0015F694 = one;
                        if (k == 2) D_L08_0015F698 = one;
                        if (k == 3) D_L08_0015F69C = one;
                        if (k == 4) D_L08_0015F6A0 = one;
                        if (D_L08_0015F694 != 0 && D_L08_0015F698 != 0) {
                            unsigned char *snd = D_0013D50F + 1;
                            if (snd[0xD] == 0) {
                                snd[0xD] = one;
                                func_0022EE28(1, 0, 0);
                                func_L00_00264DB8(0x53DB, -1);
                            }
                        }
                    }
                }
                *(Q_2d5fa8 *)vec = *(Q_2d5fa8 *)(m + 0x10);
                vec[2] += 1.0f;
                func_L00_002584A8(m, 0, -1);
                func_0022ED80(2, 0, (int)m);
                func_L00_0025F4A8(m, data + 0x40, vec, 0.0f, 0.0f, 20, 8, 20, 4.0f, 2.0f, 9.0f, 1.0f, -1, 15.0f, 1, one, -1, 0);
                func_L00_00265050(m, 0x6FE, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, z, z, z);
                func_L00_00265050(m, 0x6FE, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, z, z, z);
                func_L00_00265050(m, 0x6FF, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, z, z, z);
                func_L00_00265050(m, 0x6FF, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, z, z, z);
                func_L00_00265050(m, 0x6FF, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, z, z, z);
                if (*(char **)(data + 0x160) != 0) func_0020D678(*(char **)(data + 0x160));
                if (*(char **)(data + 0x164) != 0) func_0020D678(*(char **)(data + 0x164));
                func_0020D678(m);
                return;
            }
        }
        func_L00_0025E4B0(m, (short *)(data + 0xA0));
    }

    *(unsigned char *)(m + 0xA4) = 0xFF;
    if (*(char **)(data + 0x160) != 0) *(unsigned char *)(*(char **)(data + 0x160) + 0xA4) = 0xFF;
    if (*(char **)(data + 0x164) != 0) *(unsigned char *)(*(char **)(data + 0x164) + 0xA4) = 0xFF;

    {
        char *q = (char *)D_L08_001B0FB0[*(int *)(data + 0x154)];
        func_L00_00260FB0(100.0f, m, data + 0xB0, 0, 0, q + 0x10, *(int *)q);
    }
    if (*(int *)(data + 0xF0) == 0) *(int *)(data + 0xF0) = *(int *)(D_0013E633 + 0x2E9D);
    if (*(int *)(data + 0xF4) != 2) {
        float a, b, cc, dd, f22;
        func_001F9BF0(vec, data + 0xB0, m + 0x10);
        vec[2] -= 3.0f;
        a = func_L00_001FF860(vec[0], vec[1]);
        dd = func_001F9CE8(vec);
        cc = func_L00_001FF860(dd, vec[2]);
        f22 = -cc;
        if (0.3490658f < f22) {
            f22 = 0.3490658f;
        } else if (f22 < -0.7853982f) {
            f22 = -0.7853982f;
        }
        b = func_001FA790(a, *(float *)(m + 0x48));
        k4 = 12.566371f;
        k3 = 9.424778f;
        func_L00_0025CE58(data + 0x170, b, data + 0x174, D_0015EE70 * k4, D_0015EE70 * k4, D_0015EE6C * k3);
        func_L00_0025CE58(data + 0x178, f22, data + 0x17C, D_0015EE70 * k4, D_0015EE70 * k4, D_0015EE6C * k3);
    } else {
        k4 = 12.566371f;
        k3 = 9.424778f;
        func_L00_0025CE58(data + 0x170, 0.0f, data + 0x174, D_0015EE70 * k4, D_0015EE70 * k4, D_0015EE6C * k3);
        func_L00_0025CE58(data + 0x178, 0.0f, data + 0x17C, D_0015EE70 * k4, D_0015EE70 * k4, D_0015EE6C * k3);
    }
    func_L00_001FFED8(vec, 1, *(float *)(data + 0x178));
    func_L00_001FFED8(data + 0x110, 2, *(float *)(data + 0x170));
    func_001FA588(data + 0x110, vec, data + 0x110);
    {
        short a0 = *(short *)(data + 0xA0);
        short a2 = *(short *)(data + 0xA2);
        func_L00_0025E590(m, data + 0xA0);
        if (*(char **)(data + 0x160) != 0) {
            *(short *)(data + 0xA0) = a0;
            *(short *)(data + 0xA2) = a2;
            func_L00_0025E590(*(char **)(data + 0x160), data + 0xA0);
        }
        if (*(char **)(data + 0x164) != 0) {
            *(short *)(data + 0xA2) = a2;
            *(short *)(data + 0xA0) = a0;
            func_L00_0025E590(*(char **)(data + 0x164), data + 0xA0);
        }
    }
}
