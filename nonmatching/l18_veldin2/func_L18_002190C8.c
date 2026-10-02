/* NON_MATCHING func_L18_002190C8 -- src/overlays/l18_veldin2/help_00214138.c
 * Best so far: SIZE ours 1344 / retail 1328, checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * Cannot land as written (#define in a candidate): rewrite that in plain C first.
 * What the last attempts found:
 *   Best candidate p8.c is SIZE 1304/retail 1328 (326 vs 332 words); the body from the state switch on down matche
 *   instruction for instruction except three places. (1) Return-0 layout at the top: retail keeps one `b end; dadd
 *   block right after the third test (A==0x14||A==7||B==0x32) and sends later `return 0` tests back to it; ours ke
 *   block after the last test instead (cross-jump survivor differs; `||` chain and goto variants did not move it).
 *   (2) Retail's L==0x11 block has `bne skip; b sfx` where ours has `beq sfx`. (3) Retail keeps the last else arm
 *   (`func_L18_002284E0(0x16,1); dt = D_0015EE6C`) as its own copy; ours cross-jumps it into the shared call block
 *   What would unblock it: a source shape that makes the first return-0 block the cross-jump survivor and keeps th
 *   arm from merging (I suspect retail reaches these blocks through a different goto/label structure, not plain re
 */
#include "common.h"

extern int func_001FA898_r(float) __asm__("func_001FA898");
extern void func_L00_00207220(void);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001FA748(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L18_002284E0(int, int);
extern int func_L00_00217570(int, int);
extern void func_L00_00211338(float *v, int each, float s, float z);
extern void func_L00_002AAE80(void);
extern void func_001F9BC0(void *);
extern void func_001F9BD8(void *, void *, void *);
extern char D_0013E633[];
extern char D_0013DE6E[];
extern char D_L18_00178B80[];
extern int D_L18_0015F6A8;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern int D_0015EFA8_m __asm__("D_0015EFA8") MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;

#define I(p, o) (*(int *)((p) + (o)))
#define F(p, o) (*(float *)((p) + (o)))
#define H(p, o) (*(short *)((p) + (o)))
#define U(p, o) (*(unsigned char *)((p) + (o)))

/* Per-frame update of a pickup/interaction: bumps counters, picks an effect by mode and spawns it. */
int func_L18_002190C8(int flag) {
    char *a = (char *)D_0013E633 + 0xE1D;
    char *b, *q;
    char *c, *e, *p;
    int idx, x;
    float v[4];
    if (I(a, 0x208C) == 0x14 || I(a, 0x208C) == 7 || I(a, 0x2084) == 0x32) {
        return 0;
    }
    if (I(a, 0x1C0) != 0) {
        return 0;
    }
    if (D_L18_0015F6A8 != 0) {
        return 0;
    }
    I(a, 0x2280) = 0;
    c = *(char **)(a + 0x2080);
    idx = U(c, 0xA4);
    if (idx == 0xFF) {
        return 0;
    }
    e = D_L18_00178B80 + idx * 64;
    if (*(char **)(e + 0x34) != c) {
        return 0;
    }
    if (U(a, 0x20A4) == 2) {
        if (!(I(e, 0x24) & 2)) {
            return 0;
        }
    } else {
        if (!(I(e, 0x24) & 1)) {
            return 0;
        }
    }
    x = D_0015EE84_m;
    b = (char *)D_0013E633 + 0xE1D;
    I(b, 0x2280) = I(e, 0x20);
    ((int *)(D_0013DE6E + 0x222))[x]++;
    D_0015EFA8_m = D_0015EFA8_m + 1;
    if (I(b, 0x208C) == 0xF) {
        H(b, 0x5BE) = 1;
        return 0;
    }
    if (U(b, 0x20A4) == 2) {
        I(b, 0x1630) -= func_001FA898_r(F(e, 0x2C));
        if (I(b, 0x1630) < 0) {
            I(b, 0x1630) = 0;
        }
    }
    if (!flag) {
        return 1;
    }
    func_L00_00207220();
    flag = 0;
    if (I(e, 0x30) & 1) {
        qcopy(v, e + 0x10);
        if (F(e, 0x1C) == 5627.9248f) {
            flag = 1;
        }
    } else if (I(e, 0x20) != 0) {
        func_001F9BF0(v, D_0013E633 + 0xE9D, (char *)I(e, 0x20) + 0x10);
    } else {
        v[0] = func_001F9F90(func_001FA748(F(b, 0x98), 3.1415927f));
        v[1] = func_001F9FA8(func_001FA748(F(b, 0x98), 3.1415927f));
        v[2] = 0;
    }
    b = (char *)D_0013E633 + 0xE1D;
    switch (U(b, 0x20A4)) {
    case 0: {
        int L, code;
        float dt, f1, f2;
        p = *(char **)(b + 0x2280);
        if (p != 0) {
            int t = H(p, 0xA6);
            if (t == 0x4EB || t == 0x558) {
                func_L18_002284E0(0x80, 1);
                return 1;
            }
        }
        b = (char *)D_0013E633 + 0xE1D;
        L = I(b, 0x208C);
        if (L == 0x16) {
            func_L18_002284E0(0x6D, 1);
            F(b, 0x128) = D_0015EE6C * 7.0f;
            return 1;
        }
        if (L == 0x12) {
            code = 0x75;
            p = *(char **)(b + 0x2280);
            if (p != 0) {
                if (H(p, 0xA6) == 0x28F) {
                    func_L18_002284E0(0x82, 1);
                    return 1;
                }
            }
        } else if (L == 0x11) {
            code = 0x76;
            p = *(char **)(b + 0x2280);
            if (p != 0 && H(p, 0xA6) == 0x28F) {
                func_L18_002284E0(0x82, 1);
                return 1;
            }
            if (D_0015EE84_m == 0xF || D_0015EE84_m == 0x11) {
                q = (char *)D_0013E633 + 0xE1D;
                p = *(char **)(q + 0x2280);
                if (p != 0) {
                    int t = H(p, 0xA6);
                    if (t == 0x28F || t == 0x7B || t == 0x29D) {
                        func_L00_00217570(0x1C, 0);
                    }
                }
            }
        } else if (L == 3) {
            code = 0x16;
            p = *(char **)(b + 0x2280);
            if (p != 0) {
                if (H(p, 0xA6) == 0x28F) {
                    func_L18_002284E0(0x82, 1);
                    return 1;
                }
            }
        } else {
            func_L18_002284E0(0x16, 1);
            dt = D_0015EE6C;
            goto join;
        }
        func_L18_002284E0(code, 1);
        dt = D_0015EE6C;
    join:
        b = (char *)D_0013E633 + 0xE1D;
        f1 = dt * 5.7f;
        f2 = dt * 2.4f;
        if (U(b, 0x12E7) != 0) {
            f1 = 0.0f;
            f2 = dt * 1.7f;
        }
        func_L00_00211338(v, flag, f1, f2);
        if (flag) {
            if (U(e, 0x28) == 4) {
                v[2] = v[2] + v[2];
            }
        }
        break;
    }
    case 2:
        if ((I(e, 0x24) & 4) || I(b, 0x1630) <= 0) {
            func_L18_002284E0(0x5D, 1);
            func_L00_002AAE80();
            if (H(b, 0x30E) == 0) {
                func_L00_00211338(v, flag, D_0015EE6C * 7.0f, D_0015EE6C * 3.5f);
                break;
            }
        }
        func_001F9BC0(v);
        break;
    case 3:
        func_L18_002284E0(0x56, 1);
        func_L00_00211338(v, flag, D_0015EE6C * 5.0f, D_0015EE6C * 2.4f);
        break;
    }
    func_001F9BD8(D_0013E633 + 0xEFD, D_0013E633 + 0xEFD, v);
    func_001F9BD8(D_0013E633 + 0xEFD + 0x20, D_0013E633 + 0xEFD + 0x20, v);
    return 1;
}
