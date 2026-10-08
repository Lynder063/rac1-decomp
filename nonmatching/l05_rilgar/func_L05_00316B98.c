/* NON_MATCHING func_L05_00316B98 -- src/overlays/l05_rilgar/vendor_0030EB68.c
 * Best so far: SIZE ours 2056 / retail 2060, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Elevator-with-button update (moby class 877, level 05): a switch on m[0x20] (8 cases, jump table) that aims th
 *   Best so far p7.c: SIZE 2056 vs 2060 (one instruction short). Ours compiles every state arm with its own sb to 
 *   Unblock: find the one missing instruction (a `b` to the tail after the 6/7 arm) by reading the full diff from 
 *   Runs 9-10: sharing the m[0x20] store through an int (p9 in the switch arm, p10 in the P1-mismatch arm) gives 2
 */
typedef int u128 __attribute__((mode(TI)));
extern void func_001F9C30(void *, void *, float);
extern float func_00214158(void);
extern float func_00214D28(float *, float, float);
extern void func_L05_003173A8(char *, char *, char *);
extern void func_L00_002EBF50(void *, void *, int, int, int);
extern int func_L00_0028EB98(void *, int);
extern int func_0022ED80_i(int, int, void *) __asm__("func_0022ED80");
extern void func_L00_002EBE88(void *);
extern void func_L00_002EBEE0(void *);
extern float func_00214D88(float, float, float, float, float *, float *);
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern float func_001F9B88(float);
extern int func_001F9850(int);
extern void func_L00_0028EBF0(int);
extern float func_001F9D48(void *, void *);
extern void func_001F9908(int *);
extern void func_L00_002EC0C8(int);
extern float func_001F9FA8(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern void func_L05_00317438(char *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_002617B0(char *, void *, void *, void *);
extern char D_0013E633[];
extern char D_0014171B[];
extern float D_L05_0015F4FC MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern char *D_L05_001601AC_c __asm__("D_L05_001601AC") MACRO_ADDR;

// Elevator-with-button update: a state machine on m[0x20] that aims the button and moves the lift.
void func_L05_00316B98(char *m) {
    char buf[0x40];
    char *d = *(char **)(m + 0x78);
    char *c;
    char *p16;
    char *p17;
    float f0, f1, f2, f13v, f15v, f20;
    int st, r, r2;

    func_001F9C30(buf, m + 0x10, -1.0f);
    {
        char *dst = buf + 0x10;
        char *src = m + 0x40;
        *(u128 *)dst = *(u128 *)src;
        c = dst;
    }

    switch (*(unsigned char *)(m + 0x20)) {
    case 0:
        *(float *)(d + 0x80) = func_00214158();
        *(int *)(d + 0x74) = -1;
        *(float *)(d + 0x84) = *(float *)(m + 0x48);
        m[0x20] = 3;
        break;
    case 1:
        *(unsigned short *)(D_0014171B + 0xF) = *(unsigned short *)(d + 0x68);
        func_00214D28((float *)(d + 0x78), 1.0f, 0.133000001f);
        f1 = *(float *)(d + 0x78);
        D_L05_0015F4FC = f1;
        if (f1 == 1.0f) {
            p16 = buf + 0x20;
            p17 = buf + 0x30;
            func_L05_003173A8(m, p16, p17);
            func_L00_002EBF50(p16, p17, 1, 0, 0);
            st = *(unsigned char *)(m + 0xBC);
            m[0xBC] = 1;
            m[0x20] = st;
        }
        break;
    case 2:
    case 3:
        r = func_L00_0028EB98(m, *(int *)(d + 0x74));
        if (r == 0) *(int *)(d + 0x74) = func_0022ED80_i(0, 4, m);
        if (*(unsigned char *)(m + 0xBC) != 0) {
            p16 = buf + 0x20;
            p17 = buf + 0x30;
            *(unsigned short *)(D_0014171B + 0xF) = *(unsigned short *)(d + 0x68);
            func_00214D28((float *)(d + 0x78), 0.0f, 0.133000001f);
            D_L05_0015F4FC = *(float *)(d + 0x78);
            func_L05_003173A8(m, p16, p17);
            func_L00_002EBE88(p16);
            func_L00_002EBEE0(p17);
            f2 = 1.0f / (*(float *)(d + 0x60) - *(float *)(d + 0x64));
            if (*(unsigned char *)(m + 0xBC) == 0) f0 = D_0015EE6C * 16.0f;
            else f0 = D_0015EE6C * 6.0f;
            f15v = f0 * f2;
            if (*(unsigned char *)(m + 0xBC) == 0) f0 = D_0015EE70 * 16.0f;
            else f0 = D_0015EE70 * 6.0f;
            f13v = f0 * f2;
        } else {
            f15v = D_0015EE6C;
            f13v = D_0015EE70;
        }
        f20 = (*(unsigned char *)(m + 0x20) == 2) ? 1.0f : 0.0f;
        func_00214D88(f20, f13v, f13v, f15v, (float *)(d + 0x70), (float *)(d + 0x88));
        *(float *)(m + 0x18) = (*(float *)(d + 0x60) - *(float *)(d + 0x64)) * *(float *)(d + 0x70) + *(float *)(d + 0x64);
        {
            int idx = *(int *)(d + 0x6C);
            char *base = D_L05_001601AC_c;
            f0 = func_001FA790(*(float *)(base + (idx << 7) + 0x78), *(float *)(d + 0x84));
            f1 = f0 * *(float *)(d + 0x70);
            *(float *)(m + 0x48) = f1;
            *(float *)(m + 0x48) = func_001FA748(f1, *(float *)(d + 0x84));
        }
        f0 = func_001F9B88(*(float *)(d + 0x70) - f20);
        if (f0 < 0.00999999978f) {
            int idx;
            char *slot;
            r2 = func_001F9850(0x78);
            *(int *)(d + 0x7C) = r2;
            idx = *(int *)(d + 0x74);
            if (idx != -1) {
                slot = D_0013E633 + 0x1D + idx * 0x70;
                if (*(char **)(slot + 0x88) == m && *(unsigned char *)(slot + 0x74) != 0) func_L00_0028EBF0(idx);
            }
            f0 = *(float *)(d + 0x88);
            *(int *)(d + 0x74) = -1;
            if (0.00124999997f < f0) *(float *)(d + 0x88) = 0.00124999997f;
            else if (f0 < -0.00124999997f) *(float *)(d + 0x88) = -0.00124999997f;
            if (*(unsigned char *)(m + 0xBC) != 0) {
                st = *(unsigned char *)(m + 0x20);
                m[0x20] = (st == 2) ? 6 : 7;
            } else {
                st = *(unsigned char *)(m + 0x20);
                m[0x20] = (st == 2) ? 4 : 5;
            }
        }
        break;
    case 4:
    case 5:
        {
            float t = func_001FA748(*(float *)(d + 0x80), D_0015EE6C * 6.28318548f);
            *(float *)(d + 0x80) = t;
            f0 = func_001F9FA8(t);
            r = func_001FA898_r((f0 * 4.0f - 3.0f) * 128.0f);
            if (r >= 129) r = 128;
            else if (r <= 31) r = 32;
            *(unsigned int *)(m + 0x90) = 0x80000000u | (r << 8) | (r << 16) | r;
        }
        if (*(char **)(D_0013E633 + 0xE1D + 0x2FC) == m && *(short *)(D_0013E633 + 0xE1D + 0x30E) == 0 && func_001F9D48(D_0013E633 + 0xE9D, m + 0x10) < 0.5f) {
            func_0022ED80_i(1, 0, m);
            if (*(int *)(d + 0x68) != -1) func_L05_00317438(m);
            *(unsigned int *)(m + 0x90) = 0x80208020u;
            m[0xBC] = (*(unsigned char *)(m + 0x20) == 5) ? 2 : 3;
            m[0x20] = 1;
            *(int *)(d + 0x78) = 0;
        } else {
            st = *(unsigned char *)(m + 0x20);
            if (st == 4) {
                f20 = func_001F9D48(m + 0x10, D_0013E633 + 0xE9D);
                if (func_001F9B88(*(float *)(D_0013E633 + 0xE9D + 0x258) - *(float *)(d + 0x64)) < 2.0f) {
                    if (f20 < 32.0f && 5.0f < f20) {
                        m[0xBC] = 0;
                        m[0x20] = 3;
                    }
                }
            } else if (st == 5) {
                f20 = func_001F9D48(m + 0x10, D_0013E633 + 0xE9D);
                if (func_001F9B88(*(float *)(D_0013E633 + 0xE9D + 0x258) - *(float *)(d + 0x60)) < 2.0f) {
                    if (f20 < 32.0f && 5.0f < f20) {
                        m[0xBC] = 0;
                        m[0x20] = 2;
                    }
                }
            }
        }
        break;
    case 6:
    case 7:
        r = func_L00_0028EB98(m, *(int *)(d + 0x74));
        if (r != 0) {
            func_L00_0028EBF0(*(int *)(d + 0x74));
            *(int *)(d + 0x74) = -1;
        }
        r = func_001F9850(0x1E);
        if (r < *(int *)(d + 0x7C) || 0.5f < func_001F9D48(D_0013E633 + 0xE9D, m + 0x10)) func_001F9908((int *)(d + 0x7C));
        if (*(char **)(D_0013E633 + 0xE1D + 0x2FC) == m) {
            if (*(int *)(d + 0x7C) == 0) {
                float t = func_001FA748(*(float *)(d + 0x80), D_0015EE6C * 6.28318548f);
                *(float *)(d + 0x80) = t;
                f0 = func_001F9FA8(t);
                r = func_001FA898_r((f0 * 4.0f - 3.0f) * 128.0f);
                if (r >= 129) r = 128;
                else if (r <= 31) r = 32;
                *(unsigned int *)(m + 0x90) = 0x80000000u | (r << 8) | (r << 16) | r;
                if (*(char **)(D_0013E633 + 0xE1D + 0x2FC) == m && *(short *)(D_0013E633 + 0xE1D + 0x30E) == 0 && func_001F9D48(D_0013E633 + 0xE9D, m + 0x10) < 0.5f) {
                    func_0022ED80_i(1, 0, m);
                    *(unsigned int *)(m + 0x90) = 0x80208020u;
                    m[0x20] = (*(unsigned char *)(m + 0x20) == 7) ? 2 : 3;
                }
            }
        } else {
            func_L00_002EC0C8(1);
            m[0x20] = (*(unsigned char *)(m + 0x20) == 7) ? 5 : 4;
        }
        break;
    default:
        break;
    }
    func_001F9BD8(buf, buf, m + 0x10);
    func_L00_002617B0(d + 0x20, buf, c, m + 0x40);
}
