/* NON_MATCHING func_L07_0030D370 -- src/overlays/shared/vendor_002F9438.c
 * Best so far: SIZE ours 1392 / retail 1396, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Timed activation pad update: a 10-state machine on the data block at moby+0x78, with the level-table lookups a
 *   Would unblock: a form that loads the 60 into $a0 before the length test; the branch sense of the h arms. Budge
 */
extern short D_0015EE84;
extern unsigned char D_0014171B[];
extern char D_0013E633[];
extern void func_L01_0026F090(int list, int state);
extern void func_L01_0026F040(int, int);
extern float func_001F9B88(float);
extern float func_001F9D48(void *, void *);
extern void func_001F9BF0(void *dst, void *a, void *b);
extern void func_001FA190(void *);
extern void func_001FA4A0(void *, void *);
extern void func_001F9EE8(void *, void *, void *);
extern int func_001F9908(int *arg0);
extern void func_0022ED80(int, int, int);
extern int func_001F9850(int);
extern void func_L00_00251328(void *, int, int, int);
extern void func_L00_002512D8(int);
extern int func_001F9938(void *);

// Timed activation pad update: runs the 10-state machine on the data block at moby+0x78.
void func_L07_0030D370(unsigned char *moby)
{
    char *d;
    char *p;
    float o[4];
    float q[4];
    int flag;
    int r16, r17;
    int x, h;
    int st;
    unsigned char v;

    if (moby == 0)
        return;
    d = *(char **)(moby + 0x78);
    if (d == 0)
        return;

    flag = 0;
    if (moby[0x20] < 6) {
        v = moby[0xB0];
        if (v != 0xFF) {
            if (*(unsigned char *)(D_0014171B + 0xAA35 + v + (*(int *)&D_0015EE84 << 4)) == 0xFF)
                func_L01_0026F090(moby[0x21], 6);
        }
    }

    if (*(int *)(d + 0x8) == 0) {
        p = (char *)D_0013E633 + 0xE1D;
        if (*(short *)(p + 0x30E) == 0)
            flag = ((*(int *)(p + 0x2FC) ^ (int)moby) == 0);
        if (0.7853982f < func_001F9B88(*(float *)(moby + 0x44))) {
            if (func_001F9D48(moby + 0x10, p + 0x80) < 2.0f) {
                if (*(int *)(p + 0x2084) == 0x11) {
                    if (*(float *)(p + 0xAA8) < 7.0f) {
                        func_001F9BF0(o, moby + 0x10, p + 0x80);
                        func_001FA190(q);
                        func_001FA4A0(q, moby + 0xC0);
                        func_001F9EE8(o, o, q);
                        if (func_001F9B88(o[0]) < 0.6f) {
                            if (func_001F9B88(o[1]) < 0.6f) {
                                if (func_001F9B88(o[2]) < 0.9557f)
                                    flag = 1;
                            }
                        }
                    }
                }
            }
        }
    }

    st = moby[0x20];
    if ((unsigned int)(st - 2) < 4) {
        if (moby[0xBC] == 1) {
            if (func_001F9908((int *)d)) {
                func_0022ED80(2, 0, (int)moby);
                func_L01_0026F090(moby[0x21], 8);
            } else if (func_001F9908((int *)(d + 4))) {
                func_0022ED80(0, 0, (int)moby);
                r17 = func_001F9850(0x2D);
                r16 = func_001F9850(5);
                x = func_001F9850(0x28);
                r16 = r16 + *(int *)d / x;
                if (r17 < r16) {
                    *(int *)(d + 4) = func_001F9850(0x2D);
                } else {
                    r16 = func_001F9850(5);
                    x = func_001F9850(0x28);
                    *(int *)(d + 4) = r16 + *(int *)d / x;
                }
            }
        }
    }

    switch (moby[0x20]) {
    case 0:
        func_L00_00251328(moby, 0x80, 0x80, 0x80);
        func_L01_0026F040(moby[0x21], 0);
        func_L01_0026F090(moby[0x21], 1);
        break;
    case 1:
        *(int *)(d + 0x8) = 0;
        func_L00_00251328(moby, 0x80, 0x80, 0x80);
        if (flag) {
            x = *(int *)(d + 0x10) > 0 ? *(int *)(d + 0x10) * 60 : 900;
            r16 = 1;
            *(int *)d = func_001F9850(x);
            func_L00_00251328(moby, 0, 0xFF, 0);
            *(int *)(d + 0x8) = r16;
            func_L01_0026F040(moby[0x21], 0);
            moby[0xBC] = r16;
            func_0022ED80(3, 0, (int)moby);
            func_L01_0026F090(moby[0x21], 2);
        }
        break;
    case 2:
        moby[0x20] = 3;
        break;
    case 3:
        if (flag) {
            *(int *)(d + 0x8) = 1;
            func_L00_00251328(moby, 0, 0xFF, 0);
            func_0022ED80(3, 0, (int)moby);
            func_L01_0026F090(moby[0x21], 4);
        }
        break;
    case 4:
        moby[0x20] = 5;
        break;
    case 5:
        if (flag) {
            *(int *)(d + 0x8) = 1;
            func_L00_00251328(moby, 0, 0xFF, 0);
            func_L01_0026F090(moby[0x21], 6);
            func_0022ED80(1, 0, (int)moby);
        }
        break;
    case 6:
        *(short *)(d + 0xC) = func_001F9850(0x14);
        *(short *)(d + 0xE) = 0;
        func_L00_00251328(moby, 0x80, 0xFF, 0x80);
        moby[0x20] = 7;
        break;
    case 7:
        if (moby[0xB0] != 0xFF) {
            if (*(unsigned char *)(D_0014171B + 0xAA35 + moby[0xB0] + (*(int *)&D_0015EE84 << 4)) != 0xFF)
                func_L00_002512D8(moby[0xB0]);
        }
        if (func_001F9938(d + 0xC)) {
            *(short *)(d + 0xC) = func_001F9850(0x14);
            h = *(short *)(d + 0xE);
            if (h != 1) {
                if (h >= 2) {
                    if (h < 6)
                        *(short *)(d + 0xE) = 0;
                } else if (h == 0) {
                    func_L00_00251328(moby, 0, 0xFF, 0);
                    *(short *)(d + 0xE) = 1;
                }
            } else {
                func_L00_00251328(moby, 0xFF, 0xFF, 0xFF);
                *(short *)(d + 0xE) = 0;
            }
        }
        break;
    case 8:
        func_L00_00251328(moby, 0x80, 0x80, 0x80);
        moby[0xBC] = 0;
        moby[0x20] = 1;
        break;
    case 9:
        break;
    }
}
