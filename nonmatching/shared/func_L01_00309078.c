/* NON_MATCHING func_L01_00309078 -- src/overlays/shared/vendor_002F7700.c
 * Best so far: SIZE ours 1732 / retail 1760, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped at 6 of 12 runs (p3.c best, SIZE 1732 vs 1760, compiles). Function: moby state machine (byte 0x20: 0 s
 *   Left: retail is 28 bytes longer; saved floats now match (f20-f22). Hoisting the constant 1 (p4.c) shrank it to
 */
extern char D_0013E633[];
extern unsigned char D_0014171B[] NOT_SDA;
extern char D_0015EEB4[];
extern float D_0015EE6C MACRO_ADDR;
extern int D_0015EE84_c __asm__("D_0015EE84") MACRO_ADDR;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern int D_L01_0015F504 MACRO_ADDR;
extern int D_L01_0015F720 MACRO_ADDR;
extern short D_L01_00161FA0;
extern short D_L01_00161FA4;
extern short D_L01_00161FA8;
extern short D_L01_00161FB0;
extern short D_L01_00161FB4;
extern short D_L01_00161FB8;
extern short D_L01_00161FBC;
extern short D_L01_00161FE0;
extern float func_00214158(void);
extern float func_001F9FA8(float);
extern float func_001FA748(float, float);
extern float func_001FA790(float, float);
extern float func_001F9F90(float);
extern float func_001F9B88(float);
extern float func_001F9D48(void *, void *);
extern int func_001F9850(int);
extern int func_002140B0(int);
extern int func_001F9908_c(void *) __asm__("func_001F9908");
extern void func_L01_00309848(char *);
extern void func_L01_00309928(char *);
extern void func_L01_00309DC8(char *);
extern void func_L01_00309BB8(char *);
extern void func_L01_00309758(char *);
extern void func_L01_00231A68(void);
extern void func_L00_00264DB8(int, int);
extern int func_0020BFC8(int, int);
extern void func_0020D678(void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BC0(void *);
extern void func_001F4E08(int);
extern void func_L00_00217718(void *, void *, int, int);
extern void func_0022ED80_0E9C8(int, int, char *) __asm__("func_0022ED80");
extern void func_L00_002EBF50(void *, void *, int, int, int);
extern void func_L00_002EBE88(void *);
extern void func_L00_002EBEE0(void *);
extern void func_L00_002EC0C8(int);
extern void func_00213DE0(void *, int, int, int);
extern void func_L00_00232C10(int, int, float);

// Gold bolt update: state 0 starts it, state 1 flies it toward its target, state 2 runs its hit and fade.
void func_L01_00309078(char *m) {
    char *d, *g, *g2, *p, *pd;
    float va[4], vb[4], vc[4], vd[4];
    float k, dd, r, t, diff, x, y, z, w, pi2, four;
    int st, id, bt, h, v, n;

    d = *(char **)(m + 0x78);
    st = *(unsigned char *)(m + 0x20);
    if (st == 0) {
        id = *(int *)d;
        if (id != -1 && *(unsigned char *)(D_0014171B + 0xA8A5 + id + (D_0015EE84_c << 2)) == 0) {
            qcopy(d + 0x10, m + 0x10);
            *(float *)(d + 0x1C) = *(float *)(m + 0x48);
            *(float *)(m + 0x40) = func_00214158();
            *(float *)(m + 0x44) = func_00214158();
            *(float *)(m + 0x48) = func_00214158();
            *(float *)(m + 0x4C) = func_00214158();
            k = 0.0174532925f;
            dd = D_0015EE6C;
            *(float *)(d + 0x68) = *(float *)&D_L01_00161FB0 * k * dd;
            *(float *)(d + 0x60) = *(float *)&D_L01_00161FB8 * k * dd;
            *(float *)(d + 0x64) = *(float *)&D_L01_00161FB4 * k * dd;
            *(unsigned char *)(m + 0x20) = 1;
            func_L01_00309848(m);
            return;
        }
        func_0020D678(m);
        return;
    }
    else if (st == 1) {
        p = *(char **)(m + 0x24);
        *(float *)(m + 0x2C) = *(float *)(p + 0x24) * *(float *)&D_L01_00161FA0;
        r = func_001F9FA8(*(float *)(m + 0x4C));
        k = 0.0174532925f;
        dd = D_0015EE6C;
        *(float *)(m + 0x18) = (*(float *)(d + 0x18) + *(float *)&D_L01_00161FA4) + *(float *)&D_L01_00161FA8 * r;
        *(float *)(m + 0x40) = func_001FA748(*(float *)(m + 0x40), *(float *)&D_L01_00161FB0 * k * dd);
        *(float *)(m + 0x44) = func_001FA748(*(float *)(m + 0x44), *(float *)&D_L01_00161FB4 * k * dd);
        *(float *)(m + 0x48) = func_001FA748(*(float *)(m + 0x48), *(float *)&D_L01_00161FB8 * k * dd);
        *(float *)(m + 0x4C) = func_001FA748(*(float *)(m + 0x4C), *(float *)&D_L01_00161FBC * k * dd);
        func_L01_00309928(m);
        if (func_002140B0(*(int *)&D_L01_00161FE0) == 0) func_L01_00309DC8(m);
        g = D_0013E633 + 0xE1D;
        g2 = D_0013E633 + 0xE9D;
        if (!(func_001F9D48(m + 0x10, g2) < 3.0f)) return;
        diff = *(float *)(m + 0x18) - *(float *)(g + 0x88);
        t = func_001F9B88(diff);
        if (!(t < 2.0f)) return;
        if (*(int *)(g + 0x22A8) == 0) return;
        bt = *(unsigned char *)(g + 0x20A4);
        if (bt != 3 && bt != 0) return;
        h = *(short *)(d + 0xC);
        if (h != 0) {
            v = func_001F9850(0xB4);
            D_L01_0015F720 = v;
            func_L00_00264DB8(0x53B8, -1);
            *(unsigned char *)(D_0014171B + 0xA8A5 + *(int *)d + (D_0015EE84_m << 2)) = 1;
            func_0020BFC8(0, -1);
            func_0020D678(m);
            return;
        }
        k = 2.5f;
        pd = d + 0x10;
        r = func_001F9F90(*(float *)(m + 0x18) - *(float *)(g + 0x88));
        va[0] = r * k;
        r = func_001F9FA8(*(float *)(d + 0x1C));
        va[1] = r * k;
        *(int *)&va[2] = 0;
        func_001F9BD8(va, va, pd);
        func_001F9BC0(vb);
        vb[2] = func_001FA748(*(float *)(d + 0x1C), 3.1415927f);
        v = func_001F9850(10);
        func_001F4E08(v);
        if (*(unsigned char *)(g + 0x20A4) == 3) func_L01_00231A68();
        func_L00_00217718(va, vb, 0x72, 0);
        k = 1.25f;
        pi2 = 1.5707964f;
        four = 4.0f;
        func_0022ED80_0E9C8(0, 0, m);
        r = func_001F9F90(*(float *)(d + 0x1C));
        vc[0] = r * k;
        r = func_001F9FA8(*(float *)(d + 0x1C));
        *(int *)&vc[2] = 0;
        vc[1] = r * k;
        x = func_001FA748(*(float *)(d + 0x1C), pi2);
        y = func_001F9F90(x);
        vc[0] = vc[0] + y * four;
        z = func_001FA748(x, pi2);
        w = func_001F9FA8(z);
        vc[1] = vc[1] + w * four;
        func_001F9BD8(vc, vc, pd);
        vc[2] = vc[2] + 1.0f;
        func_001F9BC0(vd);
        vd[2] = func_001FA790(*(float *)(d + 0x1C), pi2);
        func_L00_002EBF50(vc, vd, 1, 0, 0);
        func_L00_002EBE88(vc);
        func_L00_002EBEE0(vd);
        qcopy(m + 0x10, g2);
        qcopy(m + 0x40, g2 + 0x10);
        if (*(unsigned char *)(m + 0x53) != 1) func_00213DE0(m, 1, 0, 0);
        func_L00_00232C10(0x82, 0, 0.0f);
        if (*(unsigned char *)(D_0015EEB4 + 1) != 0) *(unsigned short *)(m + 0x34) |= 0x8000;
        *(unsigned char *)(g + 0x20AF) = 1;
        *(unsigned char *)(m + 0x20) = 2;
        D_L01_0015F504 = 1;
        *(int *)(d + 0x6C) = func_001F9850(0x3C);
        return;
    }
    else if (st == 2) {
        func_L01_00309BB8(m);
        g2 = D_0013E633 + 0xE9D;
        qcopy(m + 0x10, g2);
        qcopy(m + 0x40, g2 + 0x10);
        if (*(unsigned char *)(m + 0x52) == 1) {
            func_L01_00309758(m);
            if (func_002140B0(10) == 0) func_L01_00309DC8(m);
            if ((*(unsigned char *)(m + 0x70) & 2) != 0) {
                if (*(unsigned char *)(m + 0x53) != 0) func_00213DE0(m, 0, 0, 0);
                *(unsigned short *)(m + 0x34) |= 1;
                *(unsigned char *)(m + 0x31) = 0;
                n = 3;
                do {
                    func_L01_00309DC8(m);
                    n--;
                } while (n >= 0);
            }
        }
        g = D_0013E633 + 0xE1D;
        if (*(int *)(g + 0xA98) & 2) func_L00_00232C10(0, 0, (float)func_001F9850(0x1E));
        if (*(unsigned char *)(m + 0x52) != 0) return;
        if (func_001F9908_c(d + 0x6C) == 0) return;
        v = func_001F9850(0xB4);
        D_L01_0015F720 = v;
        func_L00_00264DB8(0x53B8, -1);
        *(unsigned char *)(D_0014171B + 0xA8A5 + *(int *)d + (D_0015EE84_m << 2)) = 1;
        func_L00_00217718(g + 0x80, g + 0x90, 0, 0);
        D_L01_0015F504 = 0;
        func_L00_002EC0C8(0);
        func_0020BFC8(0, -1);
        func_0020D678(m);
    }
}
