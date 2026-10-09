/* NON_MATCHING func_L00_002DDEA0 -- src/overlays/shared/vendor_002D9438.c
 * Best so far: SIZE ours 3784 / retail 3828, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Per-frame update of a child moby: aim at the owner, a switch on h68 (cases 0-7) with the arms calling into the
 *   Unblock: a per-arm alignment of the switch arms (both sides compared by instruction, with li.s counted as the 
 */
extern float D_0015EE64 MACRO_ADDR;
extern float D_0015EE60 MACRO_ADDR;
extern char D_0013E15A[];
extern char D_L00_001EA4B0[];
extern char D_L00_00173F70[];
extern char D_L00_00173F80[];
extern float func_001FA748(float, float);
extern float func_001FA790(float, float);
extern void func_L00_002592B0(char *moby, float *vel, float target, float k, float d, float max);
extern void func_00215328(void *, void *);
extern void func_002150B0(void *, void *);
extern void func_001FA5C8(void *, void *, void *, float);
extern void func_001FA6C0(void *, void *);
extern void func_001FA4A0(void *, void *);
extern void func_001F9EE8(void *, void *, void *);
extern void func_001E9768(void *, void *);
extern float func_L00_001FF3E0(void *);
extern float func_001F9B50(float);
extern void func_L00_0025A8C0(void *, void *, int, float, void *);
extern void func_L00_001FF500(void *, void *, float);
extern int func_L00_001F2BE8(float, void *, int, void *, void *);
extern int func_L00_001F10E0(float, void *, int, void *);
extern float func_L00_0025F368(float);
extern void func_001F9CA0(void *, void *, void *);
extern void func_00215380(void *, void *, float);
extern void func_001FA588(void *, void *, void *);
extern float func_001F9CE8(void *);
extern void func_L00_001FF610(void *, void *, void *);
extern void func_L00_0026D270(void *, void *);
extern float func_001F9CB8(void *);
extern s32 func_L00_00259B08_59B88(void *, void *, f32, s32, f32, s32) __asm__("func_L00_00259B08");
extern int func_L00_002DB6C8_fr(char *, void *) __asm__("func_L00_002DB6C8");
extern void func_001E9730_1(void *) __asm__("func_001E9730");

/* Steers a child moby toward its target, runs its state machine by mode, and retires or spawns its parts. */
int func_L00_002DDEA0(char *self, char *q) {
    char fr[0xF0];
    char *m, *o;
    float f20, f21, f22, t, u1, u2, sr, hf;
    int r, r1, r2, r18, r30, res, ret = 0;

    if (self == 0) goto out;
    if (*(unsigned char *)(self + 0x20) == 0xFE) goto out;
    if (*(unsigned char *)(self + 0x20) == 0xFD) goto out;
    m = func_L00_002DCD40(self);
    if (m != 0) {
        qcopy(m + 0x30, self + 0x10);
        switch ((short)(*(unsigned short *)(m + 0x68) - 1)) {
        case 0:
            f21 = 0.01f;
            f20 = func_001FA748(func_L00_001FF860(*(float *)m - *(float *)(self + 0x10), *(float *)(m + 4) - *(float *)(self + 0x14)), 3.1415927f);
            func_L00_002592B0(self, q + 0x44, f20, D_0015EE64 * 0.19634955f, D_0015EE64 * 0.19634955f, D_0015EE60 * 0.3927f);
            if (func_001FA790(f20, f21) < *(float *)(self + 0x48) && *(float *)(self + 0x48) < func_001FA748(f20, f21)) {
                *(short *)(m + 0x68) = 2;
                *(int *)(m + 0x6C) = 0;
            }
            func_001F9BC0(m + 0x10);
            break;
        case 1:
            f20 = 1.0f;
            *(float *)(self + 0x58) = *(float *)(m + 0x6C) + f20;
            r = func_001F9850(1);
            t = f20 / func_001FA888(r);
            *(float *)(m + 0x6C) = *(float *)(m + 0x6C) + t;
            if (f20 < *(float *)(m + 0x6C)) *(float *)(m + 0x6C) = f20;
            *(float *)(self + 0x18) += *(float *)(m + 0x6C) / 100.0f * D_0015EE60;
            func_00215328(m + 0x20, self + 0xC0);
            func_001F9BC0(m + 0x10);
            break;
        case 2:
            *(unsigned char *)(self + 0x31) = 1;
            *(unsigned short *)(self + 0x34) &= 0xFFFE;
            f20 = 1.0f;
            if (*(float *)(m + 0x6C) < f20) {
                r = func_001F9850(30);
                t = f20 / func_001FA888(r);
                *(float *)(m + 0x6C) = *(float *)(m + 0x6C) + t;
                qzero(fr);
                *(float *)(fr + 8) = -1.5707964f;
                *(float *)fr = -1.5707964f;
                func_001FA218(fr + 0xB0, fr);
                func_001FA460(fr + 0x30, *(char **)(m + 0x60) + 0xC0);
                func_001FA540(fr + 0x70, fr + 0x30, fr + 0xB0);
                func_002150B0(fr + 0x10, fr + 0x70);
                func_001FA5C8(fr + 0x20, m + 0x20, fr + 0x10, *(float *)(m + 0x6C));
                func_001FA6C0(fr + 0x20, fr + 0x30);
                func_001FA480(self + 0xC0, fr + 0x30);
                *(unsigned short *)(self + 0x34) = (*(unsigned short *)(self + 0x34) | 4) & 0x7FFF;
            } else {
                *(float *)(m + 0x6C) = f20;
            }
            hf = 0.5f;
            func_L00_00250800(*(char **)(m + 0x60), 0, fr);
            f20 = func_001F9D48(self + 0x10, fr);
            *(char **)(fr + 0xF0) = self + 0x10;
            *(float *)(self + 0x2C) = *(float *)(*(char **)(self + 0x24) + 0x24) * (f20 / (*(float *)(m + 0x64) + *(float *)(m + 0x64)) + hf);
            *(float *)(m + 0x98) = *(float *)(m + 0x98) + D_0015EE64 * 0.11f;
            if (D_0015EE60 * 0.75f < *(float *)(m + 0x98)) *(float *)(m + 0x98) = D_0015EE60 * 0.75f;
            if (f20 < *(float *)(m + 0x98) * 70.0f) {
                r = func_001F9850(2);
                func_00213DE0(*(char **)(m + 0x60), 4, 0, r);
            }
            if (f20 < 3.0f) {
                D_0013E633[0x1EC9] = 2;
                *(int *)(self + 0x94) = 0;
            }
            if (f20 < *(float *)(m + 0x98)) {
                G_2db508 *g = (G_2db508 *)(D_0013E633 + 0xE1D);
                int a = g->i207C;
                int b = g->i2078;
                g->i207C = a - 1;
                g->i2078 = b + 1;
                func_L00_002DB6C8_fr(self, fr);
                *(unsigned short *)(g->slot[*(short *)(m + 0x6A)] + 0x34) &= 0xEFFF;
            } else {
                func_001FA4A0(fr + 0x50, D_0013E633 + 0x145D);
                func_001F9BF0(fr + 0x20, *(char **)(fr + 0xF0), fr);
                func_001F9EE8(fr + 0x20, fr + 0x20, fr + 0x50);
                if (*(float *)(fr + 0x20) < 0.0f) {
                    if (0.0f < *(float *)(fr + 0x24)) {
                        t = -*(float *)(fr + 0x20);
                        f22 = 2.0f;
                        if (t < 2.0f) f22 = t;
                        *(float *)(fr + 0x34) = f22;
                    } else {
                        f22 = -2.0f;
                        if (-2.0f < *(float *)(fr + 0x20)) f22 = *(float *)(fr + 0x20);
                        *(float *)(fr + 0x34) = f22;
                    }
                    *(float *)(fr + 0x30) = -*(float *)(fr + 0x20) * 0.5f;
                } else {
                    *(float *)(fr + 0x34) = *(float *)(fr + 0x24) * hf;
                    t = func_001F9B88(*(float *)(fr + 0x24));
                    if (t < 2.0f) *(float *)(fr + 0x30) = func_001F9B88(*(float *)(fr + 0x24));
                    else *(float *)(fr + 0x30) = 2.0f;
                }
                *(int *)(fr + 0x38) = 0;
                func_001F9EC0(fr + 0x30, fr + 0x30, D_0013E633 + 0x145D);
                *(int *)(fr + 0x38) = 0;
                qcopy(fr + 0x40, fr);
                func_001F9BD8(fr, fr, fr + 0x30);
                func_001E9768(fr + 0x40, fr);
                func_001F9BF0(fr + 0x10, fr, *(char **)(fr + 0xF0));
                func_L00_001FF4B0(fr + 0x10, fr + 0x10, *(float *)(m + 0x98));
                func_001F9BD8(*(char **)(fr + 0xF0), *(char **)(fr + 0xF0), fr + 0x10);
                func_0020EEE8(self);
            }
            break;
        case 3:
            *(unsigned short *)(self + 0x34) = (*(unsigned short *)(self + 0x34) | 3) & 0xFFFB;
            *(unsigned char *)(self + 0x31) = 0;
            *(int *)(self + 0x94) = 0;
            if (*(unsigned char *)(self + 0x70) & 2) {
                o = *(char **)(m + 0x70);
                if (*(unsigned char *)(self + 0x53) != *(unsigned char *)(o + 4)) {
                    r18 = *(unsigned char *)(o + 4);
                    r = func_001F9850(3);
                    func_00213DE0(self, r18, 0, r);
                }
                *(float *)(self + 0x2C) = *(float *)(*(char **)(self + 0x24) + 0x24) * 0.3f;
                qzero(self + 0x40);
            }
            break;
        case 4:
        case 5:
            *(unsigned char *)(self + 0x31) = 1;
            *(unsigned short *)(self + 0x34) &= 0xFFFE;
            if (*(float *)(self + 0x18) < 2.0f) {
                func_L00_002DDDE8(self, m, 0);
                goto out;
            }
            qcopy(fr, m + 0x10);
            t = *(float *)(m + 0x7C) * D_0015EE60;
            o = *(char **)(self + 0x24);
            *(float *)(self + 0x2C) = *(float *)(self + 0x2C) + *(float *)(o + 0x24) * t;
            if (*(float *)(o + 0x24) < *(float *)(self + 0x2C)) *(float *)(self + 0x2C) = *(float *)(o + 0x24);
            *(char **)(fr + 0xF0) = self + 0x10;
            o = *(char **)(m + 0x74);
            if (o != 0 && *(unsigned char *)(o + 0x20) != 0xFE && *(unsigned char *)(o + 0x20) != 0xFD) {
                r1 = func_001F9850(0x12C);
                r2 = func_001F9850(5);
                if (*(int *)(m + 0x94) < r1 - r2) {
                    qcopy(fr + 0x30, *(char **)(m + 0x74) + 0x10);
                    *(float *)(fr + 0x38) = *(float *)(fr + 0x38) + *(float *)(m + 0x90);
                    func_001F9BF0(fr + 0x20, fr + 0x30, m + 0x40);
                    func_001F9BF0(fr + 0x10, fr + 0x30, *(char **)(fr + 0xF0));
                    qcopy(m + 0x40, fr + 0x30);
                    f22 = func_001F9CB8(m + 0x10);
                    f21 = f22 * f22 - func_L00_001FF3E0(fr + 0x20);
                    f20 = (*(float *)(fr + 0x20) * *(float *)(fr + 0x10) + *(float *)(fr + 0x24) * *(float *)(fr + 0x14) + *(float *)(fr + 0x28) * *(float *)(fr + 0x18)) * -2.0f;
                    t = func_L00_001FF3E0(fr + 0x10);
                    sr = func_001F9B50(f20 * f20 - f21 * 4.0f * -t);
                    f20 = -f20;
                    f21 = f21 + f21;
                    u1 = (f20 + sr) / f21;
                    u2 = (f20 - sr) / f21;
                    if (0.0f < u1) {
                        if (0.0f < u2) t = (u2 < u1) ? u1 : u2;
                        else t = u1;
                    } else if (0.0f < u2) {
                        t = u2;
                    } else {
                        t = -1.0f;
                    }
                    if (0.0f < t) {
                        func_001F9C30(fr + 0x40, fr + 0x20, t);
                        func_001F9BD8(fr + 0x40, fr + 0x40, fr + 0x10);
                        func_L00_001FF4B0(fr + 0x40, fr + 0x40, D_0015EE70 * 90.0f);
                        func_001F9BD8(m + 0x10, m + 0x10, fr + 0x40);
                        func_L00_001FF4B0(m + 0x10, m + 0x10, f22);
                    } else {
                        func_L00_001FF4B0(fr + 0x10, fr + 0x10, D_0015EE70 * 90.0f);
                        func_001F9BD8(m + 0x10, m + 0x10, fr + 0x10);
                        func_L00_001FF4B0(m + 0x10, m + 0x10, f22);
                    }
                }
            }
            f21 = 1.0f;
            func_001F9BD8(*(char **)(fr + 0xF0), *(char **)(fr + 0xF0), m + 0x10);
            func_L00_0025A8C0(fr + 0x10, self, 0x430000, 2.0f, m + 0x10);
            func_L00_001FF500(fr + 0x10, fr + 0x10, f21);
            *(short *)(fr + 0x2A) = 0x351;
            *(float *)(fr + 0x1C) = 5627.925f;
            *(unsigned char *)(fr + 0x28) = 1;
            *(unsigned char *)(fr + 0x29) = 3;
            *(float *)(fr + 0x18) = f21;
            r30 = func_L00_001F2BE8(*(float *)(m + 0x80), *(char **)(fr + 0xF0), 1, self, fr + 0x10);
            r = func_L00_001F10E0(*(float *)(m + 0x80), *(char **)(fr + 0xF0), 0, self);
            r30 |= r;
            if (r30 != 0) {
                qcopy(*(char **)(fr + 0xF0), D_L00_00173F70);
                func_001F9BF0(m + 0x50, D_L00_00173F70 - 0x10, *(char **)(fr + 0xF0));
            }
            o = (char *)D_L00_00173F40[6];
            if (o != 0 && *(short *)(o + 0xA6) == 0) r30 = 0;
            if (*(short *)(m + 0x68) == 6) {
                *(unsigned short *)(self + 0x34) = (*(unsigned short *)(self + 0x34) & 0x7FFF) | 4;
                *(int *)(self + 0x94) = *(int *)(*(char **)(self + 0x24) + 0x10);
                *(float *)(m + 0x58) = f21;
                *(int *)(m + 0x50) = 0;
                *(int *)(m + 0x54) = 0;
                *(float *)(m + 0x5C) = 0.01f;
                t = func_001F9CB8(fr);
                f20 = t / *(float *)(m + 0x80);
                func_00215328(fr + 0x10, self + 0xC0);
                func_L00_001FF4B0(m + 0x50, m + 0x50, f21);
                func_L00_0025F368(f20);
                func_L00_001FF4B0(fr + 0x40, m + 0x10, -1.0f);
                func_001F9CA0(fr + 0x30, fr + 0x40, m + 0x50);
                func_L00_001FF4B0(fr + 0x30, fr + 0x30, f21);
                func_00215380(fr + 0x20, fr + 0x30, f20);
                func_001FA588(fr + 0x50, fr + 0x10, fr + 0x20);
                func_001FA6C0(fr + 0x50, fr + 0x60);
                func_L00_001FF4B0(self + 0xC0, fr + 0x60, f21);
                func_L00_001FF4B0(self + 0xD0, fr + 0x70, f21);
                func_L00_001FF4B0(self + 0xE0, fr + 0x80, f21);
            }
            if (r30 != 0) {
                r18 = 0;
                o = (char *)D_L00_00173F40[6];
                if (o != 0 && *(char **)(o + 0x24) != 0) r18 = *(short *)(*(char **)(o + 0x24) + 0x46);
                func_L00_001FF4B0(D_L00_00173F80, D_L00_00173F80, 1.0f);
                o = *(char **)(m + 0x70);
                if (*(unsigned char *)(self + 0x53) != *(unsigned char *)(o + 6)) {
                    r1 = *(unsigned char *)(o + 6);
                    r = func_001F9850(0x14);
                    func_00213DE0(self, r1, 0, r);
                }
                *(int *)(self + 0x98) = *(int *)(m + 0x88);
                *(short *)(m + 0x68) = 6;
                t = func_001F9CE8(D_L00_00173F80);
                if (0.87266463f < func_L00_001FF860(*(float *)(D_L00_00173F80 + 8), t)) {
                    if (*(short *)(m + 0x9E) >= 0) func_0022ED80(*(short *)(m + 0x9E), 0, (int)self);
                    func_L00_002DDDE8(self, m, 1);
                    goto out;
                }
                if (*(unsigned char *)(D_0013E15A + 0x4CF) != 0 && r18 >= 5) {
                    if (*(short *)(m + 0x9E) >= 0) func_0022ED80(*(short *)(m + 0x9E), 0, (int)self);
                    func_L00_002DDDE8(self, m, 1);
                }
                qzero(fr + 0x10);
                *(float *)(fr + 0x18) = *(float *)((char *)D_L00_00173F40 + 0x48);
                func_L00_001FF610(m + 0x10, m + 0x10, fr + 0x10);
            }
            if (func_001F9908_r(m + 0x94) != 0) {
                func_L00_002DDDE8(self, m, 1);
                goto out;
            }
            if (60.0f < func_001F9D48(*(char **)(fr + 0xF0), D_0013E633 + 0xE9D)) {
                func_L00_002DDDE8(self, m, 1);
                goto out;
            }
            t = func_001F9CB8(m + 0x10);
            if (t < D_0015EE60 * 0.01f) {
                func_L00_002DDDE8(self, m, 1);
                goto out;
            }
            *(float *)(m + 0x18) = *(float *)(m + 0x18) - D_0015EE64 * 0.00925f;
            func_L00_0026D270(*(char **)(fr + 0xF0), self + 0xC0);
            break;
        case 6:
            *(unsigned char *)(self + 0x31) = 1;
            *(unsigned short *)(self + 0x34) &= 0xFFFE;
            *(float *)(m + 0x18) = *(float *)(m + 0x18) - D_0015EE64 * 0.013f;
            if (*(float *)(self + 0x18) < 2.0f) {
                func_L00_002DDDE8(self, m, 1);
                goto out;
            }
            res = func_001FA898(*(float *)(m + 0x8C) * 1024.0f);
            r = func_L00_00259B08_59B88(self, m + 0x10, 0.8f, res, 0.0f, 0);
            *(float *)(self + 0x40) = *(float *)(self + 0x40) / 1.5f;
            *(float *)(self + 0x44) = *(float *)(self + 0x44) / 1.5f;
            if (r != 0) {
                *(float *)(self + 0x44) = 0.0f;
                *(float *)(self + 0x58) = 1.0f;
                *(float *)(self + 0x40) = 0.0f;
                { ret = 1; goto out; }
            }
            if (*(unsigned char *)(self + 0x70) & 2) {
                *(float *)(self + 0x58) = *(float *)(m + 0x78);
            }
            break;
        case 7:
            func_001E9730_1(D_L00_001EA4B0);
            break;
        default:
            break;
        }
    }
    if (*(unsigned short *)(self + 0x34) & 4) func_0020EEE8(self);
    if (*(short *)(m + 0x68) >= 4) goto out;
    if (*(float *)(m + 0xC) <= 0.0f) {
        void (*fn)(char *) = *(void (**)(char *))(*(char **)(*(char **)(self + 0x24) + 0x2C) + 0xC);
        if (fn != 0) fn(self);
    }
    *(float *)(m + 0xC) = *(float *)(m + 0xC) - 1.0f;
out:
    return ret;
}
