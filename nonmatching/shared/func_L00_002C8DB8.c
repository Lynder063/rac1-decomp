/* NON_MATCHING func_L00_002C8DB8 -- src/overlays/shared/vendor_002C12B0.c
 * Best so far: SIZE ours 924 / retail 928, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Glove of doom update (moby class 229): the moby's state byte at 0x20 drives a 7-way switch; the common tail co
 *   Differences left: ours saves 7 registers (retail 6: &cur sits in $20, ours in $21, the case-3 pointer in $20) 
 *   Unblock: what retail's unreferenced 48 stack bytes at 0x40-0x6F are, which would fix the cur slot and the save
 */
extern unsigned char D_0013A5E0[] NOT_SDA;
extern unsigned char D_0013E633[] NOT_SDA;
extern unsigned char D_0014171B[] NOT_SDA;
extern int D_0015EFA4 MACRO_ADDR;
extern int D_0015EE84 MACRO_ADDR;
extern void func_L00_00250800_2c82e8(unsigned char *, int, void *) __asm__("func_L00_00250800");
extern void func_0020DAF8(char *, int, char *);
extern void func_001F9EE8(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L00_00222B80(int, int);
extern int func_001F9908(int *);
extern int func_001F9850_2c82e8(int) __asm__("func_001F9850");
extern int func_L00_00234718(int);
extern void func_L00_00217570(int, int);
extern void func_L00_00234638(int, int);
extern void func_L00_002C88A8(void *, void *, void *);
extern void func_L00_002C96D0(void *, void *, void *);
extern void func_0022ED80(int, int, int);
extern char *func_L00_002C9578(int, char *, char *);

// Glove of doom update: moby m, its data at 0x78, state byte at 0x20.
void func_L00_002C8DB8(unsigned char *m) {
    float p0[4] __attribute__((aligned(16)));
    float v[4] __attribute__((aligned(16)));
    float p1[4] __attribute__((aligned(16)));
    float p2[4] __attribute__((aligned(16)));
    u128 cur;
    unsigned char *d = *(unsigned char **)(m + 0x78);
    unsigned char *g;
    unsigned char *q;
    unsigned short x;
    int dv;
    int sh;
    int r;
    int fire;

    qzero(v);
    v[0] = 0.01f;
    v[1] = -0.14f;
    v[2] = -0.05f;
    func_L00_00250800_2c82e8(m, 0, p0);
    func_0020DAF8((char *)m, 0, (char *)p2);
    func_001F9EE8(p1, v, p2);
    func_001F9BD8(d + 0x40, p0, p1);

    q = *(unsigned char **)(d + 0x50);
    if (q != 0) {
        *(int *)(q + 0x98) = 1;
    }
    q = *(unsigned char **)(d + 0x50);
    if (q == 0 || q[0x20] == 0xFE || q[0x20] == 0xFD) {
        *(int *)(d + 0x50) = 0;
    }

    g = D_0013E633 + 0xE1D;
    if (*(int *)(g + 0x2084) == 1) {
        func_L00_00222B80(0x1E, 1);
    }

    if (func_001F9908((int *)(d + 0x54)) == 0) { cur = *(u128 *)(d + 0x40); goto L_F6C; }
    if (g[0x20AC] != 0) { cur = *(u128 *)(d + 0x40); goto L_F6C; }
    if (g[0x20A8] == 0) goto L_EF0;
    if (*(int *)(g + 0x1BC) == func_001F9850_2c82e8(0x11)) goto L_F48;
L_EF0:
    if ((*(int *)(D_0013A5E0 + 0x2604) & *(int *)(g + 0x10A0)) == 0) goto L_F24;
    if (*(int *)(g + 0x2084) != 0x1E) goto L_F24;
    if (func_L00_00234718(-1) != 0) goto L_F48;
L_F24:
    if (*(int *)(g + 0x2084) != 0x23) { cur = *(u128 *)(d + 0x40); goto L_F6C; }
    if (*(int *)(g + 0x198) != func_001F9850_2c82e8(0x10)) { cur = *(u128 *)(d + 0x40); goto L_F6C; }
L_F48:
    func_L00_00217570(0x1A, 0);
    func_L00_00234638(-1, 1);
    m[0x20] = 3;
    cur = *(u128 *)(d + 0x40);
L_F6C:
    func_L00_002C88A8(m, d, &cur);

    switch (m[0x20]) {
    case 0:
        *(int *)(d + 0x50) = 0;
        m[0x20] = (m[0x70] & 2) ? 2 : 1;
        /* fallthrough */
    case 1:
        if (m[0x70] & 2) {
            m[0x20] = 2;
        }
        break;
    case 2:
        break;
    case 3:
        if (*(int *)(d + 0x50) != 0) {
            unsigned char *h = D_0014171B + 0x65;
            x = *(unsigned short *)(h + 0xA0);
            if (x <= 0xFFFE) {
                *(unsigned short *)(h + 0xA0) = x + 1;
            }
            dv = 0x258;
            sh = D_0015EE84;
            r = func_001F9850_2c82e8(D_0015EFA4);
            if ((int)*(unsigned short *)(h + 0xA2) < r / dv) {
                r = func_001F9850_2c82e8(D_0015EFA4);
                *(unsigned short *)(h + 0xA2) = r / dv;
                sh = D_0015EE84;
            }
            *(int *)(h + 0xA4) = *(int *)(h + 0xA4) | (1 << sh) | 0x80000000;
            q = *(unsigned char **)(d + 0x50);
            func_L00_002C96D0(d + 0x40, q, *(unsigned char **)(q + 0x78));
            *(int *)(d + 0x50) = 0;
        } else {
            func_0022ED80(0, 0, (int)m);
        }
        m[0x20] = 4;
        *(int *)(d + 0x54) = func_001F9850_2c82e8(0x14);
        break;
    case 4:
        if (*(int *)(g + 0x2084) != 0x23 && g[0x20A8] == 0) {
            m[0x20] = 2;
        }
        break;
    case 5:
        m[0x20] = 6;
        break;
    case 6:
        return;
    }

    q = *(unsigned char **)(d + 0x50);
    if (q != 0) {
        qcopy(q + 0x10, d + 0x40);
    } else if (func_L00_00234718(-1) != 0) {
        qzero(&cur);
        *(char **)(d + 0x50) = func_L00_002C9578((int)m, (char *)(d + 0x40), (char *)&cur);
    }
}
