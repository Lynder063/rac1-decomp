/* NON_MATCHING func_L03_0029DC60 -- src/overlays/l03_kerwan/vendor_00293720.c
 * Best so far: BYTES 28/1348 (97.9% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Per-class steering update: a 0x74 path, a 0x73/0x75/0x78/0x84 path, a 0x76 path and a 0x4B/0x77 path, each wit
 *   Would unblock it: a source form that makes data outrank the v1 address temps, or one where the three v1 addres
 */
extern void func_001F9C30(void *, void *, float);
extern void func_L00_00250800(void *, int, void *);
extern float func_00214158(void);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_001F9850(int);
extern void func_L00_0026DD70(void *, void *, int, int, float, int);
extern int func_L00_001FEF78(void *);
extern float func_001F9CB8(void *);
extern float func_001F9D10(void *, void *);
extern int func_L00_00258BC8(int, int);
extern void func_L03_002BC038(void *, void *, int, int, float, float, int);
extern float D_0015EE6C MACRO_ADDR;
extern char D_L03_00166F40[];

// Per-class steering update for a level 3 moby: runs its path loops and writes the flag bytes at data+0x12E/0x12F.
void func_L03_0029DC60(unsigned char *moby, float *a1, int a2) {
    float v[4];
    float v1[4];
    float v2[4];
    unsigned char *data;
    float *vp;
    int i, n, r, r2;
    float a, b;
    vp = v;
    *(u128 *)v = *(u128 *)a1;
    data = *(unsigned char **)(moby + 0x78);
    if (*(unsigned short *)(moby + 0x34) & 1) return;
    switch ((short)*(unsigned short *)(moby + 0xA6)) {
    case 0x74:
        if (a2 != 0) return;
        func_001F9C30(vp, vp, 0.35f);
        for (i = 0; i < 2; i++) {
            func_L00_00250800(moby, i, v1);
            a = func_00214158();
            b = func_00214158();
            func_00215C00(v2, D_0015EE6C * 0.15f, a, b);
            func_001F9BD8(v2, v2, vp);
            r = func_001F9850(0x14);
            func_L00_0026DD70(v1, v2, 0x8040C0F0, 0x808080, 84000.0f, r);
        }
        return;
    case 0x73:
    case 0x75:
    case 0x78:
    case 0x84:
        if (a2 != 0) return;
        if (!func_L00_001FEF78(data + 0x12E)) return;
        if (func_001F9CB8(vp) < D_0015EE6C * 40.0f && func_001F9D10(moby + 0x10, D_L03_00166F40) < 75.0f) {
            func_001F9C30(vp, vp, 0.7f);
            n = 9;
            do {
                func_L00_00250800(moby, 0, v1);
                a = func_00214158();
                b = func_00214158();
                func_00215C00(v2, D_0015EE6C * 0.6f, a, b);
                func_001F9BD8(v2, v2, vp);
                r = func_001F9850(0x23);
                func_L00_0026DD70(v1, v2, 0x80808080, 0x808080, 105000.0f, r);
                n--;
            } while (n >= 0);
        }
        r = func_001F9850(7);
        r2 = func_001F9850(0x14);
        data[0x12E] = func_L00_00258BC8(r, r2);
        return;
    case 0x76:
        if (a2 != 0) return;
        if (!func_L00_001FEF78(data + 0x12E)) return;
        if (func_001F9CB8(vp) < D_0015EE6C * 40.0f && func_001F9D10(moby + 0x10, D_L03_00166F40) < 90.0f) {
            func_001F9C30(vp, vp, 0.5f);
            n = 14;
            do {
                func_L00_00250800(moby, 0, v1);
                a = func_00214158();
                b = func_00214158();
                func_00215C00(v2, D_0015EE6C * 1.2f, a, b);
                func_001F9BD8(v2, v2, vp);
                r = func_001F9850(0x2D);
                func_L00_0026DD70(v1, v2, 0x80808080, 0x808080, 168000.0f, r);
                n--;
            } while (n >= 0);
        }
        r = func_001F9850(7);
        r2 = func_001F9850(0x14);
        data[0x12E] = func_L00_00258BC8(r, r2);
        return;
    case 0x4B:
    case 0x77:
        func_L00_001FEF78(data + 0x12F);
        if (a2 != 0 && data[0x12F] == 0) return;
        func_L00_001FEF78(data + 0x12E);
        if (data[0x12E] == 0 || data[0x12F] != 0) {
            func_L00_00250800(moby, 0, data + 0xF0);
        }
        if (data[0x12E] != 0) return;
        if (func_001F9CB8(vp) < D_0015EE6C * 40.0f && func_001F9D10(moby + 0x10, D_L03_00166F40) < 90.0f) {
            unsigned char *p;
            int s17 = 0xA040;
            int s18 = 0xA080;
            if (*(short *)(moby + 0xA6) == 0x4B) {
                s17 = 0x30A0;
                s18 = 0x90A0;
            }
            p = data + 0xF0;
            r = func_001F9850(0x32);
            func_L03_002BC038(moby, p, s17, s18, D_0015EE6C * 2.5f, 0.15f, r);
            data[0x12F] = func_001F9850(0x32);
        }
        data[0x12E] = func_001F9850(0xD);
        return;
    }
}
