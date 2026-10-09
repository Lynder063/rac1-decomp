/* NON_MATCHING func_L03_00295DB0 -- src/overlays/l03_kerwan/vendor_00293720.c
 * Best so far: SIZE ours 1408 / retail 1412, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moving platform update (level 03, classes 868/905/928): steps a path index in a state machine (switch on moby[
 *   Differences left: the case-0 path index (retail: count-1 then `bltzl` on the direction, with a reload of the p
 *   Unblock: the direction-sign store matched once written as a ternary into memory (branch form); the same trick 
 */
extern void func_001F9C30(void *, void *, float);
extern void func_001E9768(void *);
extern int func_001F9908(int *);
extern float func_001F9D10(void *, void *);
extern int func_001F9850(int);
extern float func_001FA888(int);
extern int func_L00_0028EB98(void *, int);
extern int func_L00_0028EF68_v(int, int, void *, int) __asm__("func_L00_0028EF68");
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_0028EBF0(int);
extern float func_00214D28(float *p, float target, float maxstep);
extern void func_L00_002607A8(void *, float);
extern void func_L00_002617B0(char *, void *, void *, void *);
extern char *D_L03_001B08B0[];
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern unsigned char D_0013E633[];

/* Moving platform update (level 03): steps the platform along its path and runs its motion state machine. */
void func_L03_00295DB0(char *moby) {
    char *data;
    char *p;
    char *q;
    char *e;
    float v0[4];
    float v1[4];
    float v2[4];
    float v3[4];
    float f20, f21, t;
    int idx, dir, cnt, n, r, c, cls, sel;

    data = *(char **)(moby + 0x78);
    func_001F9C30(v0, moby + 0x10, -1.0f);
    qcopy(v1, moby + 0x40);
    func_001E9768(moby);
    switch (*(unsigned char *)(moby + 0x20)) {
    case 0:
        *(char **)(data + 0xC0) = D_L03_001B08B0[*(int *)(data + 0xE0)];
        dir = 1;
        if (*(int *)(data + 0xF8) != 0) dir = -1;
        *(signed char *)(data + 0xB4) = dir;
        q = *(char **)(data + 0xC0);
        p = q + 0x10;
        if (*(signed char *)(data + 0xB4) < 0) p = q + 0x10 + (*(int *)q - 1) * 16;
        qcopy(moby + 0x10, p);
        if (*(signed char *)(data + 0xB4) < 0) idx = 0;
        else idx = *(int *)*(char **)(data + 0xC0) - 1;
        *(int *)(data + 0xB0) = idx;
        p = *(char **)(moby + 0x24);
        t = *(float *)(data + 0xFC);
        *(float *)(moby + 0x2C) = *(float *)(p + 0x24) * t;
        *(int *)(data + 0x104) = -1;
        r = func_001F9908((int *)(data + 0x100));
        if (r == 0) break;
        q = *(char **)(data + 0xC0);
        *(float *)(data + 0x110) = func_001F9D10(q + 0x10, q + (*(int *)q << 4));
        n = func_001F9850(240);
        c = func_001F9850(240);
        t = func_001FA888(n * c);
        *(int *)(data + 0x10C) = 0;
        *(float *)(data + 0x114) = *(float *)(data + 0x110) * 4.0f / t;
        *(unsigned char *)(moby + 0x20) = 1;
        break;
    case 1:
        p = data + 0xB0;
        f20 = *(float *)(data + 0x114);
        f21 = 0.0f;
        cls = *(short *)(moby + 0xA6);
        if (cls == 0x389 || cls == 0x364) {
            if (func_L00_0028EB98(moby, *(int *)(data + 0x104)) == 0) {
                *(int *)(data + 0x104) = func_L00_0028EF68_v(0, 4, moby, 0x389);
            }
        }
        c = *(int *)(data + 0x10C) + 1;
        *(int *)(data + 0x10C) = c;
        n = c;
        r = func_001F9850(240);
        if (r / 2 < *(int *)(data + 0x10C)) {
            f20 = -f20;
            n = func_001F9850(240) - *(int *)(data + 0x10C);
            f21 = *(float *)(data + 0x110);
        }
        t = func_001FA888(n * n);
        f21 = f21 + f20 * 0.5f * t;
        if (*(signed char *)(p + 4) < 0) f21 = *(float *)(data + 0x110) - f21;
        q = *(char **)(p + 0x10);
        func_001F9BF0(v3, q + (*(int *)q << 4), q + 0x10);
        qcopy(v2, v3);
        func_L00_001FF4B0(v2, v2, f21);
        func_001F9BD8(v3, *(char **)(p + 0x10) + 0x10, v2);
        qcopy(moby + 0x10, v3);
        if (*(int *)(data + 0x10C) < func_001F9850(240)) break;
        *(signed char *)(p + 4) = -*(signed char *)(p + 4);
        idx = *(int *)(data + 0x104);
        if (idx != -1) {
            e = D_0013E633 + 0x1D + idx * 0x70;
            if (*(char **)(e + 0x88) == moby && *(unsigned char *)(e + 0x74) != 0) func_L00_0028EBF0(idx);
        }
        *(int *)(data + 0x104) = -1;
        *(unsigned char *)(moby + 0x20) = 2;
        *(int *)(data + 0xE8) = func_001F9850(*(int *)(data + 0xF0));
        break;
    case 2:
        if (func_001F9908((int *)(data + 0xE8)) == 0) break;
        *(int *)(data + 0x10C) = 0;
        *(unsigned char *)(moby + 0x20) = 1;
        break;
    case 3:
        p = data + 0xB0;
        idx = *(int *)(data + 0xB0);
        q = *(char **)(p + 0x10);
        dir = *(signed char *)(p + 4);
        cnt = *(int *)q;
        sel = (dir < 0) ? 0 : cnt - 1;
        n = (idx + cnt + dir) % cnt;
        func_001F9BF0(data + 0xA0, q + 0x10 + n * 16, moby + 0x10);
        q = *(char **)(p + 0x10);
        if (*(int *)(data + 0x108) != 0) e = q + 0x10 + n * 16;
        else e = q + 0x10 + sel * 16;
        t = func_001F9D10(moby + 0x10, e);
        if (t < *(float *)(data + 0xF4)) {
            func_00214D28((float *)(data + 0xE4), D_0015EE6C * 0.5f,
                *(float *)(data + 0xEC) * *(float *)(data + 0xEC) / *(float *)(data + 0xF4) * D_0015EE70 * 0.5f);
        } else {
            func_00214D28((float *)(data + 0xE4), *(float *)(data + 0xEC) * D_0015EE6C,
                *(float *)(data + 0xEC) * *(float *)(data + 0xEC) / *(float *)(data + 0xF4) * D_0015EE70 * 0.5f);
        }
        func_L00_002607A8(data + 0xA0, *(float *)(data + 0xE4));
        func_001F9BD8(moby + 0x10, moby + 0x10, data + 0xA0);
        q = *(char **)(p + 0x10);
        t = func_001F9D10(moby + 0x10, q + 0x10 + n * 16 + 0x10);
        if (!(t < *(float *)(data + 0xE4) + *(float *)(data + 0xE4))) break;
        *(int *)p = n;
        if (*(int *)(data + 0x108) == 0) break;
        if (*(int *)(data + 0xF0) <= 0) break;
        idx = *(int *)(data + 0x104);
        if (idx != -1) {
            e = D_0013E633 + 0x1D + idx * 0x70;
            if (*(char **)(e + 0x88) == moby && *(unsigned char *)(e + 0x74) != 0) func_L00_0028EBF0(idx);
        }
        *(int *)(data + 0x104) = -1;
        *(unsigned char *)(moby + 0x20) = 4;
        *(int *)(data + 0xE8) = func_001F9850(*(int *)(data + 0xF0));
        break;
    case 4:
        if (func_001F9908((int *)(data + 0xE8)) != 0) *(unsigned char *)(moby + 0x20) = 3;
        break;
    }
    func_001F9BD8(v0, v0, moby + 0x10);
    func_L00_002617B0(data + 0x60, v0, v1, moby + 0x40);
}
