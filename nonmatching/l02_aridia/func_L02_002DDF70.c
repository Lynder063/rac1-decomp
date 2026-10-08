/* NON_MATCHING func_L02_002DDF70 -- src/overlays/l02_aridia/vendor_002A59D8.c
 * Best so far: BYTES 12/1188 (99.0% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Sand shark nest update (moby class 668): five states (0 wind-up, 1 wait, 2 strike with a stack vector copy and
 *   Still differs: in case 0 retail keeps the index in $a1, the table word in $v0/$v1 and the 0xB4 value in $a0; o
 */
extern float func_001F9D10(void *, void *);
extern void func_L02_002DE418(char *m);
extern void func_L00_0025B178(void *);
extern int func_001F9850(int);
extern int func_001F9908(int *arg0);
extern char *func_L02_002DE6E0(char *m);
extern float func_0020D830(void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF500(void *, void *, float);
void func_L02_002D7550(unsigned char *moby, void *position, float *direction);
extern int func_L00_0025D6F0(void *, void *);
extern void func_00213DE0(void *, int, int, int);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, int, float, float, int, int, int, int);
extern void *func_L00_00265050(char *src, int cls, float *pos, void *mat, int a8, int a9, float scale, float *v10, float *v11, float *v12);
extern void func_0020D678(void *);
extern char D_L02_00167440[];
extern int D_L02_00160058_m __asm__("D_L02_00160058") MACRO_ADDR;
extern char D_L02_00160058;
extern float D_0015EE6C MACRO_ADDR;
extern float D_L02_0015F660[] MACRO_ADDR;
extern unsigned char D_0014171B[] NOT_SDA;

// Sand shark nest update: a five-state machine (idle, wait, strike, cooldown, fire) that times the attacks and aims the nest.
void func_L02_002DDF70(char *m)
{
    char *d = *(char **)(m + 0x78);
    func_L02_002DE418(m);
    if (*(signed char *)(m + 0x20) < 0) {
        return;
    }
    if (((unsigned char *)m)[0x31] != 0) {
        if (func_001F9D10(m + 0x10, D_L02_00167440) < 28.0f) {
            func_L00_0025B178(m);
            ((unsigned char *)m)[0x7F] = 0x16;
        }
    }
    switch (((unsigned char *)m)[0x20]) {
    case 0: {
        unsigned short b4 = *(unsigned short *)(m + 0xB4);
        unsigned char u5 = ((unsigned char *)m)[0xB1];
        char *tp = (char *)D_0014171B + 0xBF75 + (u5 << 2);
        int r = b4 - *(unsigned short *)(tp + 0x202);
        *(short *)(m + 0xB4) = r;
        if ((short)r <= 0) {
            *(short *)(m + 0xB4) = 1;
        }
        ((unsigned char *)m)[0x20] = 1;
        *(float *)(d + 0x20) = 3.0f;
        *(short *)(d + 0x24) = 3;
        *(unsigned char *)(d + 0x2E) = 1;
        *(int *)(d + 0xD8) = func_001F9850(*(int *)(d + 0xD4));
        if (*(int *)(d + 0xE0) >= 0) {
            char *p = *(char **)((*(int *)(d + 0xE0) << 8) + D_L02_00160058_m + 0x78);
            *(int *)(p + 0x150) += 1;
        }
        return;
    }
    case 1: {
        if (!func_001F9908((int *)(d + 0xD8))) {
            return;
        }
        if (func_L02_002DE6E0(m) != 0) {
            ((unsigned char *)m)[0x20] = 2;
            if (((unsigned char *)m)[0x53] == 1) {
                return;
            }
            func_00213DE0(m, 1, 0, func_001F9850(10));
            return;
        }
        *(int *)(d + 0xD8) = func_001F9850(*(int *)(d + 0xD4));
        return;
    }
    case 2: {
        if (((unsigned char *)m)[0x70] & 2) {
            ((unsigned char *)m)[0x20] = 1;
            if (((unsigned char *)m)[0x53] == 0) {
                return;
            }
            func_00213DE0(m, 0, 0, func_001F9850(10));
            return;
        }
        if (func_0020D830(m) != 12.0f) {
            return;
        }
        {
            int v = *(int *)((char *)D_0014171B + 0xD875 + (((unsigned char *)m)[0xB0] << 2));
            int w;
            int s;
            char *e;
            char *fr;
            float b[4];
            float a[4];
            if (v >= 21) {
                v = 20;
            }
            w = func_001F9850(v * 15);
            s = func_001F9850(*(int *)(d + 0xD4) + w);
            *(int *)(d + 0xD8) = s;
            e = func_L02_002DE6E0(m);
            if (e == 0) {
                return;
            }
            fr = *(char **)(e + 0x78);
            if (*(int *)(d + 0xE0) >= 0) {
                char *p = *(char **)((*(int *)(d + 0xE0) << 8) + D_L02_00160058_m + 0x78);
                *(int *)(p + 0x14C) += 1;
            }
            qcopy(a, m + 0x10);
            a[2] = a[2] + 1.5f;
            func_001F9BF0(b, fr + 0x220, m + 0x10);
            func_L00_001FF500(b, b, D_0015EE6C + D_0015EE6C);
            b[2] = D_0015EE6C * 6.0f;
            func_L02_002D7550((unsigned char *)e, a, b);
        }
        return;
    }
    case 3: {
        func_L00_0025D6F0(m, d + 0x70);
        if (!(((unsigned char *)m)[0x70] & 2)) {
            return;
        }
        ((unsigned char *)m)[0x20] = 1;
        if (((unsigned char *)m)[0x53] == 0) {
            return;
        }
        func_00213DE0(m, 0, 0, func_001F9850(20));
        return;
    }
    case 4: {
        float b[4];
        if (!(func_L00_0025D6F0(m, d + 0x70) & 0x40)) {
            return;
        }
        if (*(int *)(d + 0xE0) >= 0) {
            char *p = *(char **)((*(int *)(d + 0xE0) << 8) + *(int *)&D_L02_00160058 + 0x78);
            *(int *)(p + 0x150) -= 1;
        }
        qcopy(b, m + 0x10);
        func_L00_0025F4A8(m, d + 0x40, b, 0.0f, 0.0f, 5, 2, 4, 2.0f, 1.0f, 9.0f, -1, 1.0f, 15.0f, 1, 1, -1, 0);
        func_L00_00265050(m, 0x6E4, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, D_L02_0015F660, D_L02_0015F660, D_L02_0015F660);
        func_L00_00265050(m, 0x6E4, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, D_L02_0015F660, D_L02_0015F660, D_L02_0015F660);
        func_L00_00265050(m, 0x6E5, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, D_L02_0015F660, D_L02_0015F660, D_L02_0015F660);
        func_L00_00265050(m, 0x6E5, (float *)(m + 0x10), m + 0x40, 0, 0, 0.0f, D_L02_0015F660, D_L02_0015F660, D_L02_0015F660);
        func_0020D678(m);
        return;
    }
    }
}
