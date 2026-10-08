/* NON_MATCHING func_L05_003165B8 -- src/overlays/l05_rilgar/vendor_0030EB68.c
 * Best so far: SIZE ours 1492 / retail 1500, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Update moby (class 855, level 05): state 0 claims a table entry, state 1 calls func_L01_0026F090, state 2 scan
 *   Remaining differences: the dispatch layout (retail tests state==1 with beq and places the state-0 block after 
 */
extern void func_L01_0026F090(int list, int state);
extern float func_001F9D10(void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_0022ED80_i(int, int, void *) __asm__("func_0022ED80");
extern float func_002140F8(float, float);
extern unsigned char *func_L05_0029CCB8(void *pos, void *vel, int arg2, int arg3, float a, float b, float c);
extern int func_002140B0(int);
extern float func_001F9B50(float);
extern float func_00214158(void);
extern void func_001F9C30(void *, void *, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern unsigned char *func_L00_00272770(void *, void *, void *, float, float);
extern char D_L05_001672C0[];
extern void *D_L05_00161390 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern char D_L05_0015F660[] MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern short D_L05_00160098;
extern short D_L05_00161F78;
extern short D_L05_00161F7C;
extern short D_L05_00161F6C;
extern short D_L05_00161F70;
extern short D_L05_00161F74;
extern short D_L05_00161F68;
extern short D_L05_00161F64;
extern short D_L05_00161F60;
extern short D_L05_00161F58;
extern short D_L05_00161F5C;
extern char D_0013E633[];
extern char D_0014171B[];
typedef int u128 __attribute__((mode(TI)));

/* Moby update for class 855 on level 05: state machine that claims and tracks nearby objects. */
void func_L05_003165B8(char *moby) {
    char *data = *(char **)(moby + 0x78);
    char *pos = moby + 0x10;
    char a[16];
    char b[16];
    char c[16];
    float f0, f1, f20, f21, f23, f22;
    int state, flag, i, v16, idx, t, k;
    char *m, *base21;
    unsigned char *e;

    if (data == 0) return;
    state = *(unsigned char *)(moby + 0x20);
    if (state == 1) {
        int n = *(int *)(data + 8);
        char *tb;
        if (n < 0) return;
        tb = (char *)(*(int *)&D_L05_00160098 + (n << 8));
        if (*(unsigned char *)(tb + 0xBC) == 0) return;
        func_L01_0026F090(*(unsigned char *)(moby + 0x21), 2);
        return;
    }
    if (state < 2) {
        if (state == 0) {
            e = (unsigned char *)D_0014171B + 0xAA35 + *(unsigned char *)(moby + 0xB0) + (D_0015EE84 << 4);
            if (*e == 0xFF) *(unsigned char *)(moby + 0x20) = 3;
            else *(unsigned char *)(moby + 0x20) = 1;
        }
        return;
    }
    if (state != 2) return;

    *(int *)(data + 0x10) = *(int *)(data + 0x10) + 1;
    f0 = func_001F9D10(pos, D_L05_001672C0);
    if (f0 < 64.0f) {
        idx = **(int **)(data + 0xC);
        base21 = D_0013E633 + 0x1D;
        m = 0;
        if (idx >= 0) m = *(char **)(base21 + idx * 0x70 + 0x88);
        if (idx < 0 || m == 0 || *(short *)(m + 0xA6) != 0x357) {
            **(int **)(data + 0xC) = func_0022ED80_i(0, 0xD, moby);
            idx = **(int **)(data + 0xC);
            if (idx >= 0) {
                func_L00_001FF4B0(a, moby + 0xC0, 2.5f);
                func_001F9BD8(D_0013E633 + 0xAD + idx * 0x70, a, pos);
            }
        } else if (m != moby) {
            int cand = 0;
            if (*(unsigned char *)(m + 0x20) != state) {
                cand = 1;
            } else {
                f20 = func_001F9D10(pos, D_L05_001672C0);
                f0 = func_001F9D10(m + 0x10, D_L05_001672C0);
                if (f20 < f0) cand = 1;
            }
            if (cand) {
                func_L00_001FF4B0(a, moby + 0xC0, 2.5f);
                idx = **(int **)(data + 0xC);
                func_001F9BD8(base21 + idx * 0x70 + 0x90, a, pos);
                idx = **(int **)(data + 0xC);
                *(char **)(base21 + idx * 0x70 + 0x88) = moby;
            }
        }
    }

    k = *(int *)(data + 4);
    f23 = *(float *)((char *)D_L05_00161390 + k * 0x1190 + 8);
    if (*(float *)(moby + 0x18) < f23) *(unsigned char *)(moby + 0x20) = 3;

    for (i = 0; (float)i < *(float *)&D_L05_00161F78; i++) {
        f0 = func_002140F8(0.0f, 100.0f);
        flag = 1;
        if (*(float *)&D_L05_00161F7C < f0) flag = 0;
        f22 = *(float *)&D_L05_00161F6C;
        if (!flag) f22 = *(float *)&D_L05_00161F70;

        *(u128 *)a = *(u128 *)pos;
        f0 = func_002140F8(-*(float *)&D_L05_00161F74, *(float *)&D_L05_00161F74);
        func_L00_001FF4B0(c, moby + 0xD0, f0);
        func_001F9BD8(a, a, c);

        f20 = func_002140F8(f22, *(float *)&D_L05_00161F68);
        f21 = func_002140F8(f22, *(float *)&D_L05_00161F68);
        f0 = func_002140F8(f22, *(float *)&D_L05_00161F68);
        if (f20 < f21) f20 = f21;
        if (f20 < f0) f20 = f0;

        func_L00_001FF4B0(b, moby + 0xC0, f20 * D_0015EE6C);

        if (flag) {
            f0 = func_002140F8(-0.4f, 0.4f);
            f20 = *(float *)&D_L05_00161F60;
            v16 = *(int *)&D_L05_00161F58;
            f1 = *(float *)&D_L05_00161F74 - f20;
            f1 = f1 + f0;
            *(float *)(a + 8) = *(float *)(a + 8) + f1;
        } else {
            f20 = *(float *)&D_L05_00161F64;
            v16 = *(int *)&D_L05_00161F5C;
            f0 = *(float *)&D_L05_00161F74 - f20;
            f0 = f0 + 0.4f;
            *(float *)(a + 8) = *(float *)(a + 8) + f0;
        }

        f0 = func_002140F8(0.8f, 1.2f);
        f21 = 10.0f;
        func_L05_0029CCB8(a, b, v16, flag, f20 * f0, f23, D_0015EE70 * f21);

        if (func_002140B0(2)) {
            f1 = func_001F9B50(((*(float *)(moby + 0x18) - f23) + (*(float *)(moby + 0x18) - f23)) / (D_0015EE70 * f21));
            if (f1 < (float)*(int *)(data + 0x10)) {
                f20 = f1 * (D_0015EE6C * 4.0f);
                func_00214158();
                f21 = func_002140F8(0.0f, 1.25f);
                f22 = f21;
                func_001F9C30(a, moby + 0xC0, f20);
                func_001F9BD8(a, a, pos);
                f0 = func_001F9F90(f21) * f22;
                *(float *)a = *(float *)a + f0;
                f0 = func_001F9FA8(f21) * f22;
                *(float *)(a + 4) = *(float *)(a + 4) + f0;
                *(float *)(a + 8) = f23 + 0.05f;
                f20 = func_002140F8(1.0f, 1.5f);
                t = func_002140B0(2);
                func_L00_00272770(a, D_L05_0015F660,
                    (char *)D_L05_00161390 + *(int *)(data + 4) * 0x1190 + 8, f20, t ? 2.0f : -2.0f);
            }
        }
    }
}
