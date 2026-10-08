/* NON_MATCHING func_L03_002CD270 -- src/overlays/l03_kerwan/vendor_002CB280.c
 * Best so far: SIZE ours 2412 / retail 2432, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 03 moby update (class 627, 2432 bytes): copies a 0x50-byte level block to the stack, calls func_L03_002C
 *   Differences: the level-block copy loop (retail: lq/sq pairs, 2 per iteration, then one trailing pair; ours sch
 *   Process note: p0.c was edited in place for several rounds instead of new pK files, so only the final state sur
 */
extern void func_L03_002CDBF0(unsigned char *arg);
extern int func_L00_0025D6F0(void *, void *);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9CB8(void *a);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9908(int *arg0);
extern float func_001F9D48(void *, void *);
extern void func_0022ED80(int, int, int);
extern float func_001F9B88(float);
extern int func_L00_001F2BE8(float, void *, int, void *, void *);
extern void func_L00_0025BA50(void *,void *,void *,int,int,int,int,int,float,float,float);
extern s32 func_001FA898(f32);
extern s32 func_002140B0(s32);
extern float func_002140F8(float, float);
extern float func_00214158(void);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern int func_L00_00258BC8(int, int);
extern char *func_L00_0026CD70(float f, char *a, char *b, int c, int d, int e, int g);
extern int func_L00_00237B70_i(int, int, float) __asm__("func_L00_00237B70");
extern void func_00215C00(void *, float, float, float);
extern char *func_L00_002D4CE8(char *a, char *b, int c, char *d);
extern void func_L00_00260878(void *, void *);
extern void func_0020D678(void *);
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE60 MACRO_ADDR;
extern char D_L03_001E35A0[];
extern char D_L03_001B0BB0[];
extern char D_L03_00166F40[];
extern char *D_L03_00178080[];
extern char D_L03_00166E00[];
extern char D_0013E633[];

typedef int u128b __attribute__((mode(TI)));
typedef struct { float f[4]; } V4;

/* Level 03 moby update (class 627): copies a level block, then runs the state machine on m[0x20]. */
void func_L03_002CD270(unsigned char *m) {
    u128b loc[5];
    float v[4];
    float w[4];
    float x[4];
    unsigned char *d;
    unsigned char *d68;
    unsigned char *g;
    float *pos;
    float dist;
    float f20, f21, f23;
    float f22;
    float f24;
    float f25;
    float D;
    float t;
    int cnt, n, k, r, r17, r18, r2, a, b, c, cc, i;

    {
        u128b *src = (u128b *)D_L03_001E35A0;
        u128b *dst = loc;
        u128b *end = src + 4;
        do {
            dst[0] = src[0];
            dst[1] = src[1];
            src += 2;
            dst += 2;
        } while (src != end);
        *dst = *src;
    }
    d = *(unsigned char **)(m + 0x78);
    func_L03_002CDBF0(m);
    c = *(int *)(d + 0x6C);
    *(int *)(d + 0x60) = 0;
    *(int *)(d + 0x6C) = c + 1;

    switch (m[0x20]) {
    case 1:
        if (func_L00_0025D6F0(m, d) & 1) {
            m[0x20] = 3;
            if (m[0x53] != 1)
                func_00213DE0(m, 1, 0, func_001F9850(10));
            *(int *)(d + 0x64) = func_001F9850(60);
            return;
        }
        if (*(float *)(m + 0x18) < 5.0f)
            goto L2CDB2C;
        return;

    case 2:
        pos = (float *)(m + 0x10);
        func_001F9BF0(v, *(char **)(d + 0x68) + 0x10, pos);
        if (func_001F9CB8(v) < 0.25f)
            goto L2CDB2C;
        func_L00_001FF4B0(v, v, D_0015EE6C * 14.0f);
        v[2] = v[2] + D_0015EE6C * 4.0f;
        func_001F9BD8(pos, pos, v);
        return;

    case 3:
        pos = (float *)(m + 0x10);
        func_001F9908((int *)(d + 0x64));
        d68 = *(unsigned char **)(d + 0x68);
        if (d68 != 0 && d68[0x20] != 0xFE && d68[0x20] != 0xFD) {
            dist = func_001F9D48(pos, d68 + 0x10);
            if (dist < 3.0f && *(int *)(d + 0x64) == 0) {
                m[0x20] = 2;
                func_0022ED80(2, 0, (int)m);
            }
        }
        if (func_001F9850(0xE10) < *(int *)(d + 0x6C)) {
            d68 = *(unsigned char **)(d + 0x68);
            if (d68 == 0)
                m[0x20] = 5;
            else if (d68[0x20] == 0xFE)
                m[0x20] = 5;
            else if (d68[0x20] == 0xFD)
                m[0x20] = 5;
            else if (func_001F9850(0x1518) < *(int *)(d + 0x6C))
                m[0x20] = 5;
        }
        g = (unsigned char *)D_0013E633 + 0xE1D;
        dist = func_001F9D48(*(char **)(g + 0x2080) + 0x10, pos);
        if (dist < 0.5f) {
            if (func_001F9B88(*(float *)(m + 0x18) - *(float *)(g + 0x88)) < 0.25f) {
                m[0x20] = 4;
                return;
            }
        }
        r = func_L00_001F2BE8(1.0f, pos, 16, m, 0);
        for (i = 0; i < r; i++) {
            char *o = (char *)D_L03_00178080[i];
            if ((*(unsigned short *)(o + 0x34) & 0x1000) == 0)
                continue;
            if (o != *(char **)(d + 0x68)) {
                m[0x20] = 4;
                return;
            }
            if (*(int *)(d + 0x64) != 0)
                continue;
            m[0x20] = 4;
            return;
        }
        return;

    case 4:
        pos = (float *)(m + 0x10);
        dist = func_001F9D48(pos, D_L03_00166F40);
        f23 = dist;
        r = func_L00_001F2BE8(2.0f, pos, 16, m, 0);
        *(u128b *)v = *(u128b *)pos;
        func_L00_0025BA50(m, v, D_L03_00178080, r, 0, 0x810001, 4, 1, 3.0f, 0.25f, 1.5f);
        cnt = func_001FA898(f23 * 15.0f);
        if (cnt > 0) {
            f24 = 0.5f;
            f25 = -0.5f;
            f22 = 1.0f;
            n = cnt;
            do {
                k = func_002140B0(4);
                D = D_0015EE6C;
                w[0] = D * 14.0f;
                w[1] = D * 22.0f;
                w[2] = D * 12.0f;
                *(int *)&w[3] = 0;
                *(V4 *)v = *(V4 *)w;
                *(u128b *)x = 0;
                x[0] = func_002140F8(D * f25, D * f24);
                x[1] = func_002140F8(D * f25, D * f24);
                x[2] = func_002140F8(D * 4.0f, v[k]);
                *(u128b *)w = *(u128b *)x;
                if (k == 1)
                    f20 = func_002140F8(0.0f, 0.5f);
                else
                    f20 = func_002140F8(0.0f, 0.25f);
                f21 = func_00214158();
                x[0] = func_001F9F90(f21) * f20;
                x[1] = func_001F9FA8(f21) * f20;
                *(int *)&x[2] = 0;
                func_001F9BD8(x, x, pos);
                t = f20 * func_001F9F90(0.785398006f);
                f20 = f20 * D;
                x[2] = x[2] - t;
                f20 = f20 * 8.0f;
                w[2] = w[2] - f20;
                if (k == 1)
                    goto B1;
                if (k < 2) {
                    if (k == 0)
                        goto B0;
                    n--;
                    goto NEXT;
                }
                if (k == 2)
                    goto B2;
                if (k == 3)
                    goto B3;
                n--;
                goto NEXT;
B0:
                f20 = func_002140F8(200000.0f, 300000.0f);
                n--;
                a = func_001F9850(180);
                b = func_001F9850(240);
                r = func_L00_00258BC8(a, b);
                func_L00_0026CD70(f20, (char *)x, (char *)w, 0x1F101820, 0x101010, r, 0);
                goto NEXT;
B1:
                f20 = func_002140F8(50000.0f, 100000.0f);
                n--;
                r = func_001F9850(180);
                func_L00_0026CD70(f20, (char *)x, (char *)w, 0x3F081020, 0x0F081020, r, 1);
                goto NEXT;
B2:
                c = func_002140B0(100);
                cc = 0x2F486078;
                if (c <= 39)
                    cc = 0x5FF8F8F8;
                a = func_001F9850(30);
                b = func_001F9850(45);
                r2 = func_L00_00258BC8(a, b);
                n--;
                func_L00_0026CD70(150000.0f, (char *)x, (char *)w, cc, 0x0F000020, r2, 2);
                goto NEXT;
B3:
                r18 = func_L00_00237B70_i(0x7F000000, 0x7F182030, func_002140F8(0.25f, f22));
                r17 = func_L00_00237B70_i(0, 0x5F5F5F, func_002140F8(0.5f, f22));
                f20 = func_002140F8(0.0f, f22) * D;
                func_00215C00(w, f20, f21, func_00214158());
                f20 = func_002140F8(200000.0f, 300000.0f);
                n--;
                a = func_001F9850(240);
                b = func_001F9850(300);
                r = func_L00_00258BC8(a, b);
                func_L00_0026CD70(f20, (char *)x, (char *)w, r18, r17, r, 3);
NEXT:
                ;
            } while (n != 0);
        }
        func_0022ED80(0, 0, (int)m);
        if (f23 < 20.0f) {
            *(float *)(D_L03_00166E00 + 0x160) = 0.4f - f23 * 0.0175f;
        } else {
            *(float *)(D_L03_00166E00 + 0x160) = 0.05f;
        }
        *(int *)(D_L03_00166E00 + 0x168) = func_001F9850(25);
        func_L00_002D4CE8((char *)loc, (char *)pos, 0, 0);
        func_L00_00260878(m, D_L03_001B0BB0);
        goto L2CDB2C;

    case 5:
        *(float *)(m + 0x2C) = *(float *)(m + 0x2C) * (D_0015EE60 * -0.074f + 1.0f);
        if (*(float *)(m + 0x2C) < *(float *)(*(char **)(m + 0x24) + 0x24) * 0.01f) {
            func_L00_00260878(m, D_L03_001B0BB0);
            goto L2CDB2C;
        }
        return;

    default:
        return;
    }

L2CDB2C:
    func_0020D678(m);
}
