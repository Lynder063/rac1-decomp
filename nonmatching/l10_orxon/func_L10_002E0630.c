/* NON_MATCHING func_L10_002E0630 -- src/overlays/l10_orxon/vendor_00296BD8.c
 * Best so far: SIZE ours 2500 / retail 2504, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L10_002E0630: level 10 update function for moby class 1196 (screamer). It dispatches on moby[0x20] throug
 *   Best so far: p7.c (SIZE 2500 vs retail 2504, p5.c has the same size). Runs 1-14 used of a budget of 16 (run 3 
 *   Remaining differences (from diff_p5.txt / diff_p7.txt):
 *   - Prologue: retail saves $ra at 0x80 and $s5 at 0x70; ours orders the saves differently (frame now 0xB0 matche
 *   - Case 5 (0x1C0-0x2C0): retail loads D_0015EE70 before the 8*pi constant; ours emits the constant first. Retai
 *   - Case 8 (0x6F0-0x728): retail computes D_0015EE6C*6.0 into $f3 before the 0x128 store and the 2.0 constant in
 *   - The 4-byte shortfall is one instruction; the diff does not show it on its own.
 *   What would unblock it: a per-line listing of the case 5 and case 8 instruction streams (try_func lists only of
 */
extern void func_L10_002E0FF8(void *);
extern void func_L00_00264B40(float x, int a, int b, unsigned char *m);
extern float func_001F9D10(void *, void *);
extern void func_L00_0025B178(void *);
extern void func_0020D678(void *);
extern int func_001F9850(int);
extern void func_001F9BC0(float *);
extern float func_00214D88(float *, float *, float, float, float, float);
extern float func_001F9CB8(void *);
extern float func_L00_001FF860(float, float);
extern float func_L00_0025CE58(float *, float *, float, float, float, float);
extern float func_001FA850(float, float);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_002607A8(void *, float);
extern void func_L00_00259B08(int a, int b, int g, int e, float c, float d);
extern void func_00213DE0(void *, int, int, int);
extern float func_00214358(void *, int, float);
extern int func_001FA898(float);
extern void func_L10_002E14F8(unsigned char *);
extern float func_L00_0025CC58(float *, int, float, float);
extern void func_L00_002592B0(char *moby, float *vel, float target, float k, float d, float max);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern float func_001F9D48(void *, void *);
extern int func_001F9908(int *);
extern float func_002140F8(float, float);
extern float func_00214158(void);
extern void func_001F9BD8(void *, void *, void *);
extern int func_L00_001F10E0(float, void *, int, void *);
extern int func_L00_0025D6F0(void *, void *);
extern void func_L00_002584A8(void *, int, int);
extern void func_L00_00260460(void *, void *, int, float, float);
extern u128 D_L10_001672C0;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern int *D_L10_001B0C30[];
extern u128 D_L10_00174360;
extern char *D_L10_00160058_c __asm__("D_L10_00160058") MACRO_ADDR;

/* Update function for moby class 1196 (screamer) on level 10. */
void func_L10_002E0630(char *moby) {
    char *d = *(char **)(moby + 0x78);
    char *P = *(char **)(d + 0x100);
    unsigned char *m = (unsigned char *)moby;
    float v[6];

    func_L10_002E0FF8(moby);
    func_L00_00264B40(2.5f, (int)moby, 0, (unsigned char *)(d + 0x270));
    if (m[0x31] != 0) {
        if (func_001F9D10(moby + 0x10, &D_L10_001672C0) < 29.0f) {
            func_L00_0025B178(moby);
            moby[0x7F] = 0x17;
        }
    }
    *(float *)(moby + 0x58) = 1.0f;
    switch (m[0x20]) {
    case 0:
        *(float *)(d + 0x30) = 0.5f;
        *(float *)(d + 0x20) = 1.0f;
        *(short *)(d + 0x24) = 1;
        d[0x28] = 0;
        d[0x29] = 1;
        *(unsigned short *)(moby + 0x34) |= 0x1000;
        qcopy(d + 0x130, moby + 0x10);
        qcopy(d + 0x140, d + 0x130);
        if (*(int *)(d + 0x174) != 1) {
            func_0020D678(moby);
        } else {
            moby[0x20] = 1;
        }
        break;
    case 1: {
        int w = *(int *)(d + 0x104);
        int r;
        if (w == 2 && *(int *)(d + 0x174) != 0) break;
        moby[0x20] = 2;
        if (m[0x53] != 1) {
            r = func_001F9850(10);
            func_00213DE0(moby, 1, 0, r);
        }
        break;
    }
    case 2: {
        int r;
        if ((m[0x70] & 2) == 0) break;
        moby[0x20] = 4;
        func_001F9BC0((float *)(d + 0x120));
        if (m[0x53] != 4) {
            r = func_001F9850(10);
            func_00213DE0(moby, 4, 0, r);
        }
        break;
    }
    case 3:
        break;
    case 4: {
        float r;
        *(float *)(moby + 0x58) = 4.0f;
        r = func_00214D88((float *)(moby + 0x18), (float *)(d + 0x128),
                          *(float *)(d + 0x138) + 2.0f,
                          D_0015EE70 * 18.0f, D_0015EE70 * 18.0f,
                          D_0015EE6C * 6.0f);
        if (r == 0.0f) {
            moby[0x20] = 5;
        }
        break;
    }
    case 5: {
        char *src;
        char *ent;
        int i, w;
        float r2, r3, f21;
        float half = 0.5f;
        int **lst = D_L10_001B0C30;
        *(float *)(moby + 0x58) = 4.0f;
        src = (char *)lst[*(int *)(d + 0x150)] + *(int *)(d + 0x158) * 16 + 0x10;
        qcopy(v, src);
        v[5] = func_001F9CB8(d + 0x120);
        f21 = func_001F9D10(v, moby + 0x10);
        *(int *)&v[4] = 0;
        r2 = func_L00_001FF860(v[0] - *(float *)(moby + 0x10), v[1] - *(float *)(moby + 0x14));
        {
            float c8 = 8.0f * 3.1415927f;
            float c16 = 16.0f * 3.1415927f;
            float g70 = D_0015EE70;
            float g6c = D_0015EE6C;
            func_L00_0025CE58((float *)(moby + 0x48), (float *)(d + 0x170), r2,
                              g70 * c8, g70 * c8, g6c * c16);
        }
        r2 = func_L00_001FF860(v[0] - *(float *)(moby + 0x10), v[1] - *(float *)(moby + 0x14));
        r3 = func_001FA850(r2, *(float *)(moby + 0x48));
        if (r3 < 3.1415927f / 4.0f) {
            func_00214D88((float *)&v[4], (float *)&v[5], f21,
                          D_0015EE70 * 20.0f, D_0015EE70 * 20.0f,
                          D_0015EE6C * 20.0f);
            func_001F9BF0(d + 0x120, v, moby + 0x10);
            func_L00_002607A8(d + 0x120, v[5]);
        } else {
            func_001F9BC0((float *)(d + 0x120));
        }
        func_L00_00259B08((int)moby, (int)(d + 0x120), 0x200, 0, half, 0.0f);
        if (!(f21 < 1.0f)) break;
        w = *(int *)(d + 0x158);
        i = *(int *)(d + 0x150);
        *(int *)(d + 0x158) = w + 1;
        ent = (char *)lst[i] + w * 16;
        if (0.0f < *(float *)(ent + 0x1C)) {
            moby[0x20] = 6;
            if (m[0x53] != 3) {
                int r = func_001F9850(10);
                func_00213DE0(moby, 3, 0, r);
            }
        } else {
            if (*(int *)lst[i] != w + 1) break;
            moby[0x20] = 10;
            if (m[0x53] != 4) {
                int r = func_001F9850(10);
                func_00213DE0(moby, 4, 0, r);
            }
            func_00214358(moby + 0x10, 0, half);
            qcopy(d + 0x130, &D_L10_00174360);
            qcopy(d + 0x140, moby + 0x10);
        }
        break;
    }
    case 6: {
        float r;
        int w, i, q, k;
        char *ptr;
        r = func_L00_001FF860(*(float *)(P + 0x10) - *(float *)(moby + 0x10),
                              *(float *)(P + 0x14) - *(float *)(moby + 0x14));
        func_L00_0025CE58((float *)(moby + 0x48), (float *)(d + 0x170), r,
                          D_0015EE70 * (8.0f * 3.1415927f),
                          D_0015EE70 * (8.0f * 3.1415927f),
                          D_0015EE6C * (16.0f * 3.1415927f));
        if ((m[0x70] & 2) == 0) break;
        i = *(int *)(d + 0x150);
        w = *(int *)(d + 0x158);
        ptr = (char *)D_L10_001B0C30[i] + (w - 1) * 16;
        k = func_001FA898(*(float *)(ptr + 0x1C));
        k = k - 1;
        if (D_L10_00160058_c + ((*(int *)(d + 0x160 + k * 4)) << 8) != 0) {
            func_L10_002E14F8(m);
        }
        i = *(int *)(d + 0x150);
        if (*(int *)(d + 0x158) == *(int *)D_L10_001B0C30[i]) {
            moby[0x20] = 10;
            if (m[0x53] != 4) {
                int rr = func_001F9850(10);
                func_00213DE0(moby, 4, 0, rr);
            }
            func_00214358(moby + 0x10, 0, 0.5f);
            qcopy(d + 0x130, &D_L10_00174360);
            qcopy(d + 0x140, moby + 0x10);
        } else {
            moby[0x20] = 5;
            if (m[0x53] != 4) {
                int rr = func_001F9850(10);
                func_00213DE0(moby, 4, 0, rr);
            }
        }
        break;
    }
    case 7:
        break;
    case 8: {
        float g, h, t, cap, lo, r1, r2, r3;
        float z = 0.0f;
        r1 = func_L00_0025CC58((float *)(moby + 0x44), 0, z, D_0015EE6C * (4.0f * 3.1415927f));
        r2 = func_L00_001FF860(*(float *)(d + 0x130) - *(float *)(moby + 0x10),
                               *(float *)(d + 0x134) - *(float *)(moby + 0x14));
        func_L00_002592B0((char *)moby, (float *)(d + 0x170), r2, 0.02f, 0.3f,
                          D_0015EE6C * (2.0f * 3.1415927f));
        g = func_001F9F90(*(float *)(moby + 0x48));
        *(float *)(d + 0x120) = g * (D_0015EE6C * 6.0f);
        h = func_001F9FA8(*(float *)(moby + 0x48));
        *(float *)(d + 0x128) = z;
        *(float *)(d + 0x124) = h * (D_0015EE6C * 6.0f);
        cap = D_0015EE6C * 6.0f;
        t = *(float *)(d + 0x138) + 2.0f - *(float *)(moby + 0x18);
        if (cap < t) {
            t = cap;
        } else {
            lo = D_0015EE6C * -6.0f;
            if (t < lo) t = lo;
        }
        *(float *)(d + 0x128) = t;
        func_L00_00259B08((int)moby, (int)(d + 0x120), 0x200, 0, 0.5f, 0.0f);
        r3 = func_001F9D48(moby + 0x10, d + 0x130);
        if (r3 < 2.0f) moby[0x20] = 7;
        break;
    }
    case 9: {
        float f20v, f21v;
        if (!func_001F9908((int *)(d + 0x19C))) break;
        *(int *)(d + 0x19C) = func_001F9850(0x78);
        f21v = func_002140F8(0.0f, 3.0f);
        f20v = func_00214158();
        v[0] = func_001F9F90(f20v) * f21v;
        v[1] = func_001F9FA8(f20v) * f21v;
        v[2] = 0.0f;
        v[2] = func_002140F8(5.0f, 7.0f);
        func_001F9BD8(d + 0x140, v, d + 0x130);
        moby[0x20] = 10;
        break;
    }
    case 10: {
        char *p40 = d + 0x40;
        char *mp = moby + 0x10;
        float r;
        int q;
        r = func_L00_001FF860(*(float *)(d + 0x140) - *(float *)(moby + 0x10),
                              *(float *)(d + 0x144) - *(float *)(moby + 0x14));
        func_L00_002592B0((char *)moby, (float *)(d + 0x170), r, 0.05f, 0.3f, 0.2f);
        func_001F9BF0(p40, d + 0x140, mp);
        func_L00_002607A8(p40, D_0015EE6C * 4.0f);
        func_001F9BD8(v, p40, mp);
        q = func_L00_001F10E0(0.4f, v, 0, moby);
        if (q != 0) {
            func_001F9BC0((float *)p40);
            moby[0x20] = 9;
        } else {
            qcopy(mp, v);
        }
        if (func_001F9CB8(p40) == 0.0f) moby[0x20] = 9;
        break;
    }
    case 11:
        if ((func_L00_0025D6F0(moby, d + 0x60) & 1) == 0) break;
        func_L00_002584A8(moby, 0x200, -1);
        func_L00_00260460(moby, moby + 0x10, -1, 0.5f, 10.0f);
        func_0020D678(moby);
        break;
    default:
        break;
    }
}
