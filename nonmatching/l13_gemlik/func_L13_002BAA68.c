/* NON_MATCHING func_L13_002BAA68 -- src/overlays/l13_gemlik/vendor_002B2020.c
 * Best so far: SIZE ours 1508 / retail 1536, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Gemlik moby update: reads data = moby[0x78], calls func_L13_002BA828, then either a random-spark branch (A) or
 *   Wall: the packet's callee func_001F5E60 does not match the bytes. Retail's jal goes to 0x2065D8 (the diff labe
 *   Other differences (not yet chased): size is 1508 against retail 1536, with the prologue and the 0xE0/0xE4 floa
 *   Also tried: alias "func_002065D8" and an __asm__ alias of func_002065D8 (p2.c); both still resolve as func_000
 */
void func_L13_002BA828(int a, char *p);
extern void func_L11_003126D8(void *, void *, void *, int);
extern int func_001F9850(int);
extern float func_001FA888(int);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern float func_L00_0025F368(float);
void func_L13_002B9590(unsigned char a, unsigned char b, unsigned char c, unsigned char d, float x, float y, float s, float ang);
extern void func_L11_00311F98(float, float, float, void *, int, int, long);
extern int func_001F4868(int);
extern void func_F5E60(float, float, float, float, float, int, int, int, int, int, int, int, float, float) __asm__("func_002065D8");
extern void *func_001FE540_id(int) __asm__("func_001FE540");
extern int func_001F6F40_c(int, int, long, void *, int) __asm__("func_001F6F40");
extern float func_001F9B88(float);
extern void func_001F5800(int, int, int, int, int, int, int, int, long, long);
extern int D_L13_0015F6B0 MACRO_ADDR;
extern char D_L13_001CBEE0[];
extern int D_L13_001CC0F0[];
extern short D_L13_00161450;
extern char D_0013E15A[];

/* Gemlik moby update: sets the spark state from random draws, runs the emitter table and calls the draw helpers. */
void func_L13_002BAA68(char *moby) {
    char *data = *(char **)(moby + 0x78);
    int t1, t2, r, rr, r2, i;
    int r17;
    int r18;
    unsigned char r16;
    float f20, f21, f22, f23, f24, f25, ang;
    unsigned char *x;

    func_L13_002BA828((int)moby, data);
    if (*(char **)(data + 0x88) != 0) {
        func_L11_003126D8(*(char **)(data + 0x88) + 0x10, &t1, &t2, 0);
        if (func_001F9850(500) < *(int *)(data + 0x8C)) {
            float q;
            float t;
            r = func_001F9850(500);
            q = func_001FA888(*(int *)(data + 0x8C) - r);
            f20 = q;
            r = func_001F9850(75);
            q = func_001FA888(r);
            f20 = f20 / q;
            t = 1.0f - f20;
            f20 = f20 * 5.0f;
            t = t + t;
            f22 = f20 + 1.0f;
            if (1.0f < t) {
                t = 1.0f;
            }
            r16 = func_001FA898_r(t * 96.0f);
            f21 = func_001FA888(t1);
            f20 = func_001FA888(t2);
            ang = func_L00_0025F368(func_001FA888(D_L13_0015F6B0) / 30.0f);
            func_L13_002B9590(0, 0xFF, 0, r16, f21, f20, f22, ang);
            *(int *)(data + 0xEC) = 0;
        } else {
            r = func_001F9850(20);
            r16 = ((*(int *)(data + 0x8C) / r) & 1) ? 0 : 0xFF;
            f20 = func_001FA888(t1);
            f21 = func_001FA888(t2);
            func_L13_002B9590(0xFF, r16, 0, 0x60, f20, f21, 1.0f, 0.0f);
            *(int *)(data + 0xEC) = *(int *)(data + 0x88);
        }
    }

    r17 = 0x40;
    r18 = 0x18;
    x = (unsigned char *)(D_0013E633 + 0xE1D);
    if (x[0x15F7] != 0) {
        i = 0;
        do {
            if (i < x[0x15F6]) {
                func_L11_00311F98((float)r18, (float)r17, 0.5f, D_L13_001CBEE0, 0x19, 0xFFFFF3, 0x50008F00);
            } else {
                func_L11_00311F98((float)r18, (float)r17, 0.5f, D_L13_001CBEE0, 0x19, 0xFFFFF3, 0x20004F00);
            }
            if (i == (x[0x15F7] >> 1)) {
                r17 = 0x2E;
                r18 += 0x1E;
            }
            i++;
            r17 += 0x12;
        } while (i < x[0x15F7]);
    }

    f25 = (float)*(int *)(data + 0xE0);
    f24 = (float)*(int *)(data + 0xE4);
    f21 = 0.5f;
    r2 = func_001F4868(0x11);
    f20 = 40.0f;
    f23 = 0.0f;
    func_F5E60(f25, f24, f20, f20, f23, 0x3F, 0x3F, r2, 0xFFFFF3, 0xFF20FF20, 0, 0, f21, f21);
    f22 = 10.0f;
    r2 = func_001F4868(0x12);
    func_F5E60(f25, f24, f20, f20, f23, 0x3F, 0x3F, r2, 0xFFFFF3, 0xFF20FF20, 0, 0, f21, f21);
    r2 = func_001F4868(0x8);
    func_F5E60(f25, f24, f22, f22, f23, 0x1F, 0x1F, r2, 0xFFFFF3, 0xFF20FF20, 0, 0, f21, f21);

    if (*(float *)(x + 0x15FC) < *(float *)(x + 0x1600) / f22) {
        if ((D_L13_0015F6B0 / 90) & 1) {
            r2 = (int)func_001FE540_id(0x526E);
            func_001F6F40_c(0x100, 0x186, 0x80000080L, (void *)r2, 0x64);
        }
    }
    {
        float g = 0.2f;
        f20 = (*(float *)(x + 0x15FC) - *(float *)(data + 0xF0)) * g;
        f21 = func_001F9B88(f20);
        if (1.0f < f21) {
            f20 = f20 / f21;
        }
        *(float *)(data + 0xF0) = *(float *)(data + 0xF0) + f20;
        r = func_001FA898_r(*(float *)(data + 0xF0) * 255.0f / *(float *)(x + 0x1600));
        r18 = r + 2;
        if (r18 >= 254) {
            r18 = 253;
        }
        if (r18 <= 1) {
            r18 = 2;
        }
        {
            int f4 = *(int *)(data + 0xF4);
            int mx = (f4 < r18) ? r18 : f4;
            int mn = (r18 < f4) ? r18 : f4;
            if (!(mx < mn)) {
                for (i = mn; i <= mx; i++) {
                    int idx = (i & 0xE7) | ((i & 0x10) >> 1) | ((i & 8) << 1);
                    if (i < r18) {
                        *(int *)(*(int *)&D_L13_00161450 + idx * 4) = D_L13_001CC0F0[idx];
                    } else {
                        *(int *)(*(int *)&D_L13_00161450 + idx * 4) = (int)0x80000000;
                    }
                }
            }
        }
    }
    {
        char *base = D_0013E15A + 0x4A6;
        r2 = func_001F4868(*(int *)(data + 0x104) + 0x28);
        func_001F5800(0x170, *(int *)(base + 4) - 0x90, 0x80, 0x80, 0, 0, 0x80, 0x80, 0x70808080L, (long)r2);
        r2 = func_001F4868(*(int *)(data + 0x104) + 0x29);
        func_001F5800(0x170, *(int *)(base + 4) - 0x90, 0x80, 0x80, 0, 0, 0x80, 0x80, 0x70808080L, (long)r2);
    }
    *(int *)(data + 0xF4) = r18;
}
