/* NON_MATCHING func_L09_00305710 -- src/overlays/l09_gaspar/vendor_002C2B08.c
 * Best so far: SIZE ours 1912 / retail 1932, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Airship part (class 1181) update on level 09: state 0 (two linked-part lookups, DeleteMoby on a table hit), st
 *   Differences: the prologue keeps the constant 1 in $s0 (retail `addiu $16,$0,1` at entry, used for the state-1 
 */
typedef struct { char b[16]; } blk16;

extern void func_L00_00250800(void *, int, void *);
extern char *func_L09_00305580(char *, char *, int);
extern int func_001E9730();
extern float func_001F9D10(void *, void *);
extern float func_001F9D48(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CB8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA790(float, float);
extern float func_001FA748(float, float);
extern int func_001F9850(int);
extern float func_001FA888(int);
extern int func_001F9938(void *);
extern void func_L00_0025F4A8_alt(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int) __asm__("func_L00_0025F4A8");
extern void func_0020D678(void *);
extern float D_0015EE70 MACRO_ADDR;
extern int D_L09_0015F6B0 MACRO_ADDR;
extern int D_L09_00160058_m __asm__("D_L09_00160058") MACRO_ADDR;
extern float D_L09_00166FC0[];
extern char D_L09_00209340[];
extern char D_L09_00209370[];
extern char D_0013D355[];

/* Airship part (class 1181) update: two linked parts, blade pose and state 0-3 machine */
void func_L09_00305710(char *moby) {
    char *data = *(char **)(moby + 0x78);
    unsigned char st = *(unsigned char *)(moby + 0x20);
    char *rec20 = 0;
    char *rec17 = 0;
    char *rec = 0;
    char *rv = 0;
    char *mv = 0;
    blk16 s20, s30, s40;
    float f0, f1, f2, f3, f20, f21;
    int v, v2, r, h;

    if (st != 1) {
        if (st < 2) {
            if (st == 0) {
        int lbv = *(signed char *)(data + 0x69);
        if (lbv != -1 && *(unsigned char *)(D_0013D355 + 0x13B + lbv + 0x39) != 0) {
            func_0020D678(moby);
            return;
        }
        v = *(int *)(data + 0x60);
        if (v == -1) {
            func_L00_00250800(moby, 0, s20.b);
            r = (int)func_L09_00305580(moby, s20.b, -1);
            if (r != 0) {
                *(int *)(data + 0x60) = (r - D_L09_00160058_m) >> 8;
            } else {
                func_001E9730(D_L09_00209340, *(short *)(moby + 0xB2));
            }
        }
        v2 = *(int *)(data + 0x64);
        if (v2 == -1) {
            qcopy(s20.b, moby + 0x10);
            r = (int)func_L09_00305580(moby, s20.b, 0);
            if (r != 0) {
                *(int *)(data + 0x64) = (r - D_L09_00160058_m) >> 8;
            } else {
                func_001E9730(D_L09_00209370, *(short *)(moby + 0xB2));
            }
        }
        *(unsigned char *)(moby + 0x20) = 1;
        return;
            }
        } else if (st == 2) {
        mv = moby + 0x10;
        *(unsigned char *)(moby + 0x30) = 0xFF;
        v = *(int *)(data + 0x60);
        if (v != -1) {
            rec20 = (char *)(D_L09_00160058_m + (v << 8));
            if (rec20 == 0 || *(unsigned char *)(rec20 + 0x20) == 0xFE || *(unsigned char *)(rec20 + 0x20) == 0xFD) rec20 = 0;
        }
        if (rec20 != 0) {
            rv = rec20 + 0x10;
            func_001F9BF0(s20.b, rv, mv);
            f0 = func_001F9CB8(s20.b);
            func_L00_001FF4B0(s20.b, s20.b, f0 - 1.3f);
            qcopy(s30.b, s20.b);
            f20 = 0.5f;
            r = func_001F9850(10);
            h = *(short *)(data + 0x6A);
            f0 = func_001FA888(r - (h - 3));
            f3 = 9.8f;
            f1 = D_0015EE70 * f3;
            f1 = f1 + f1;
            f1 = f1 * f0;
            f2 = *(float *)(s30.b + 8) - f1;
            *(float *)(s30.b + 8) = f2;
            func_001F9BD8(mv, mv, s30.b);
            f0 = func_001F9D48(mv, rv);
            f1 = *(float *)(rec20 + 0x18);
            f0 = func_L00_001FF860(f0, f1 - *(float *)(moby + 0x18));
            f0 = func_001FA790(-f0, *(float *)(moby + 0x44));
            f0 = func_001FA748(*(float *)(moby + 0x44), f0 * f20);
            *(float *)(moby + 0x44) = f0;
            f0 = *(float *)(moby + 0x10);
            f1 = *(float *)(rec20 + 0x14);
            f0 = *(float *)(rec20 + 0x10) - f0;
            f1 = f1 - *(float *)(moby + 0x14);
            f0 = func_L00_001FF860(f0, f1);
            f0 = func_001FA790(f0, *(float *)(moby + 0x48));
            f0 = func_001FA748(*(float *)(moby + 0x48), f0 * f20);
            *(float *)(moby + 0x48) = f0;
        }
        r = func_001F9938(data + 0x6A);
        if (r == 0) return;
        v = *(int *)(data + 0x60);
        if (v != -1) {
            rec = (char *)(D_L09_00160058_m + (v << 8));
            if (rec != 0 && *(unsigned char *)(rec + 0x20) != 0xFE && *(unsigned char *)(rec + 0x20) != 0xFD) {
                h = *(short *)(rec + 0xA6);
                if (h == 0x494 || h == 0x49D || h == 0x4A0) {
                    *(unsigned char *)(rec + 0xBC) = 1;
                    *(unsigned char *)(rec + 0x30) = 0xFF;
                }
            }
        }
        v2 = *(int *)(data + 0x64);
        if (v2 != -1) {
            rec = (char *)(D_L09_00160058_m + (v2 << 8));
            if (rec != 0 && *(unsigned char *)(rec + 0x20) != 0xFE && *(unsigned char *)(rec + 0x20) != 0xFD) {
                h = *(short *)(rec + 0xA6);
                if (h == 0x494 || h == 0x49D || h == 0x4A0) {
                    *(unsigned char *)(rec + 0xBC) = 1;
                    *(unsigned char *)(rec + 0x30) = 0xFF;
                }
            }
        }
        *(unsigned char *)(moby + 0x20) = 3;
        return;
    } else if (st == 3) {
        func_001F9BF0(s20.b, D_L09_00166FC0, moby + 0x10);
        func_L00_0025F4A8_alt(moby, s20.b, 0, 0.0f, 0.0f, 10, 5, 8, 2.0f, 1.0f, 10.0f, 1.0f, 0, 10.0f, 0, 1, -1, 0);
        func_0020D678(moby);
    }
    } else {
        int run = 0;
        mv = moby + 0x10;
        if (*(unsigned char *)(moby + 0x31) == 0) {
            run = 1;
        } else {
            f0 = func_001F9D10(moby + 0x10, D_L09_00166FC0);
            if (32.0f < f0) run = 1;
        }
        if (run) {
            short sv = *(short *)(moby + 0xB2);
            if (D_L09_0015F6B0 % 8 != (short)(sv % 8)) return;
        }
        v = *(int *)(data + 0x60);
        if (v != -1) {
            rec20 = (char *)(D_L09_00160058_m + (v << 8));
            if (rec20 == 0 || *(unsigned char *)(rec20 + 0x20) == 0xFE || *(unsigned char *)(rec20 + 0x20) == 0xFD) rec20 = 0;
        }
        v2 = *(int *)(data + 0x64);
        if (v2 != -1) {
            rec17 = (char *)(D_L09_00160058_m + (v2 << 8));
            if (rec17 == 0 || *(unsigned char *)(rec17 + 0x20) == 0xFE || *(unsigned char *)(rec17 + 0x20) == 0xFD) {
                *(unsigned char *)(data + 0x68) = 0;
                rec17 = 0;
            } else if (*(unsigned char *)(*(char **)(rec17 + 0x78) + 0x68) == 0) {
                *(unsigned char *)(data + 0x68) = 0;
            }
        }
        if (*(unsigned char *)(data + 0x68) != 0 || rec20 == 0 || rec17 == 0 || *(short *)(rec17 + 0xA6) != 0x49D) {
            *(unsigned char *)(data + 0x68) = 1;
        } else {
            rv = rec20 + 0x10;
            if (*(unsigned char *)(*(char **)(rec17 + 0x78) + 0x68) == 0) {
                func_001F9BF0(s20.b, rv, mv);
                f20 = 1.3f;
                f21 = 0.7f;
                f0 = func_001F9CB8(s20.b) - f20;
                func_L00_001FF4B0(s20.b, s20.b, f0 * f21);
                if (*(unsigned char *)(rec17 + 0x20) != 0xFE && *(unsigned char *)(rec17 + 0x20) != 0xFD) {
                    func_001F9BF0(s30.b, rec17 + 0x10, mv);
                    f0 = func_001F9CB8(s30.b) - f20;
                    func_L00_001FF4B0(s30.b, s30.b, f0 * f21);
                    func_001F9BD8(s40.b, s20.b, s30.b);
                } else {
                    qcopy(s40.b, s20.b);
                }
                f2 = 9.8f;
                f1 = D_0015EE70 * f2;
                f0 = *(float *)(s40.b + 8) - f1;
                *(float *)(s40.b + 8) = f0;
                f20 = 0.1f;
                func_001F9BD8(mv, mv, s40.b);
                f0 = func_001F9D48(mv, rv);
            } else {
                f0 = func_001F9D48(mv, rv);
                f20 = 0.1f;
            }
            f1 = *(float *)(rec20 + 0x18);
            f0 = func_L00_001FF860(f0, f1 - *(float *)(moby + 0x18));
            f0 = func_001FA790(-f0, *(float *)(moby + 0x44));
            f0 = func_001FA748(*(float *)(moby + 0x44), f0 * f20);
            *(float *)(moby + 0x44) = f0;
            f0 = *(float *)(moby + 0x10);
            f1 = *(float *)(rec20 + 0x14);
            f0 = *(float *)(rec20 + 0x10) - f0;
            f1 = f1 - *(float *)(moby + 0x14);
            f0 = func_L00_001FF860(f0, f1);
            f0 = func_001FA790(f0, *(float *)(moby + 0x48));
            f0 = func_001FA748(*(float *)(moby + 0x48), f0 * f20);
            *(float *)(moby + 0x48) = f0;
        }
        if (*(unsigned char *)(moby + 0xBC) == 1) {
            v = *(int *)(data + 0x6C);
            if (v != -1) {
                rec = (char *)(D_L09_00160058_m + (v << 8));
                if (*(unsigned char *)(rec + 0x20) == 1) *(unsigned char *)(rec + 0xBC) = 1;
            }
            *(short *)(data + 0x6A) = func_001F9850(10);
            *(unsigned char *)(moby + 0x20) = 2;
            *(unsigned char *)(moby + 0x30) = 0xFF;
        }
        return;
    }
}
