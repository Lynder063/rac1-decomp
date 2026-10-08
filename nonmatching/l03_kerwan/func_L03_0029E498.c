/* NON_MATCHING func_L03_0029E498 -- src/overlays/l03_kerwan/vendor_00293720.c
 * Best so far: SIZE ours 2236 / retail 2244, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Kerwan moby update (2244 bytes): best candidate p4.c is 2236 bytes and every instruction of the switch, the fl
 *   Unblock: a source form that keeps the dead first multiply, and a way to get the pos copy into its own register
 */
extern void *func_L00_0025B478(void *, int, int);
extern void func_001F9BC0(void *);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_00261B00(void *, int, int, int, int);
extern int func_001F9850(int);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, int, float, float, int, int, int, int);
extern void *func_L00_00265050(char *, int, float *, void *, int, int, float, float *, float *, float *);
extern void func_0022EE28(int, int, int);
extern void func_L00_00264DB8(int, int);
extern int func_0022EEB8(int, int, void *);
extern int func_001F9938(void *);
extern void func_L00_0028EBF0(int);
extern float D_0015EE60 MACRO_ADDR;
extern float D_L03_0015F660[] MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern char D_0013D50F[];
extern unsigned char D_0013E633[];
extern void *D_L03_001607F0 MACRO_ADDR;
extern void func_L03_0029ED60(void);

/* Per-frame moby update for the Kerwan vehicle/actor: builds the sway vectors from the moby's state and dispatches on its type. */
void func_L03_0029E498(char *moby, float *out, int flag) {
    char *data = *(char **)(moby + 0x78);
    char *e = func_L00_0025B478(moby, 0xA30000, 0);
    float v[4];
    float vt[4];
    float w[4];
    float *pos;
    float *p16;
    int n;
    int r;
    char *q;
    int d150;
    char *m24;
    int val;

    if (e != 0 && *(unsigned short *)(e + 0x28) != 0x102) {
        func_001F9BC0(v);
        if (*(short *)(moby + 0xA6) == 0x4B) {
            func_001F9F90(*(float *)(moby + 0x48)) * -2.747f;
            v[0] = func_001F9FA8(*(float *)(moby + 0x48));
            v[2] = 0.0f;
            v[1] = v[0] * -2.747f;
        }
        *(u128 *)vt = *(u128 *)out;
        func_001F9C30(vt, vt, 0.5f);
        p16 = (float *)(moby + 0x10);
        func_001F9BD8(v, v, p16);
        pos = p16;
        if (*(int *)(e + 0x24) & 0x800000) {
            func_L00_00261B00(moby, 10, 20, 2, -1);
        } else {
            func_L00_00261B00(moby, 3, 5, 2, -1);
        }
        *(short *)(data + 0x14A) = func_001F9850(0x258);
        func_L00_0025F4A8(moby, vt, v, 0.0f, 0.0f, 20, 3, 4, 4.0f, 2.0f, 100000.0f, -1, 3.0f, 15.0f, 1, 1, 0, -1);
        func_001F9C30(w, (float *)(moby + 0xC0), D_0015EE60 * 0.075f);
        w[2] = w[2] + D_0015EE60 * 0.08f;
        switch (*(short *)(moby + 0xA6)) {
        case 0x73:
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6A9, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6AA, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6AB, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            break;
        case 0x74:
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6AC, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6AD, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6AE, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            break;
        case 0x75:
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6AF, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6B0, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6B1, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            break;
        case 0x76:
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6B2, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6B3, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6B4, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            break;
        case 0x77:
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6B5, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6B6, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6B7, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            break;
        case 0x78:
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6B8, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6B9, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6BA, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            break;
        case 0x84:
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6BC, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6BE, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            n = func_001F9850(0x5A);
            func_L00_00265050(moby, 0x6BF, pos, moby + 0x40, n, 0, D_0015EE70 * 12.0f, w, D_L03_0015F660, D_L03_0015F660);
            break;
        }
        if (*(short *)(moby + 0xA6) == 0x31B) {
            unsigned char *pp = (unsigned char *)D_0013D50F + 1;
            if (pp[4] == 0) {
                pp[4] = 1;
                func_0022EE28(1, 0, 0);
                func_L00_00264DB8(0x53DB, -1);
            }
        }
        func_0022EEB8(0, 0, moby);
    }
    D_L03_001607F0 = (void *)func_L03_0029ED60;
    *(unsigned char *)(moby + 0xA4) = 0xFF;
    if (*(short *)(data + 0x14A) != 0) {
        r = func_001F9938(data + 0x14A);
        if (r != 0 && flag != 0) {
            m24 = *(char **)(moby + 0x24);
            val = *(int *)(m24 + 0x10);
            *(unsigned short *)(moby + 0x34) = (*(unsigned short *)(moby + 0x34) & 0xFFBE) | 0x1000;
            *(int *)(moby + 0x94) = val;
            return;
        }
        {
            *(int *)(moby + 0x94) = 0;
            *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) | 0x41;
            d150 = *(int *)(data + 0x150);
            if (d150 != -1) {
                q = D_0013E633 + 0x1D + d150 * 0x70;
                if (*(char **)(q + 0x88) == moby) {
                    if (*(unsigned char *)(q + 0x74) != 0) {
                        func_L00_0028EBF0(d150);
                    }
                }
            }
            *(int *)(data + 0x150) = -1;
            *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) & 0xEFFF;
        }
    }
}
