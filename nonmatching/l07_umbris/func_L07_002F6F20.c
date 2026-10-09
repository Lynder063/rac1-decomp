/* NON_MATCHING func_L07_002F6F20 -- src/overlays/l07_umbris/vendor_002CE470.c
 * Best so far: SIZE ours 1316 / retail 1320, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moby update state machine: a 14-case switch on the state byte at 0x20 (case 10 falls into 11), with calls to t
 *   Left: case 4's shared state store and the d[0] == -1 test (retail puts the state-8 store in a block placed aft
 */
extern unsigned char D_0013D4B5[];
extern unsigned char D_0013D355[];
extern char *D_L07_00160058 MACRO_ADDR;
extern int D_L07_0015F6A8 MACRO_ADDR;
extern int D_L07_0016016C_addr __asm__("D_L07_0016016C") MACRO_ADDR;
extern void func_0020D678(void *);
extern void func_L00_00299B68(int);
extern int func_00215570(void *, int);
extern void func_L00_00217718(void *, void *, int, int);
extern void func_L00_002664B0(int, int);
extern void func_L00_0029A7D0(int);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_001FF548(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L07_00270BE0(int x, int y0, int w, int h);
extern void func_L00_00261848(int);
extern int func_0020BFC8(int, int);
extern void func_0022F4A0(int);

// Update for moby class 436 on level 07: steps the moby's state byte at 0x20 through its table of cases.
void func_L07_002F6F20(unsigned char *m) {
    int *d;
    float v[4] __attribute__((aligned(16)));
    unsigned int st;

    d = *(int **)(m + 0x78);
    st = m[0x20];
    if (st >= 14) return;
    switch (st) {
    case 0: {
        unsigned char *q;
        if (*(unsigned char *)(D_0013D4B5 + 4) != 0 && d[2] != -1) {
            func_0020D678(D_L07_00160058 + (d[2] << 8));
        }
        if (D_L07_0015F6A8 != 0) return;
        m[0x20] = 1;
        return;
    }
    case 1: {
        unsigned char *a = D_0013D355 + 0x13B;
        if (a[0x28] == 0) {
            a[0x28] = 1;
            m[0x20] = 2;
            func_L00_00299B68(0);
        } else {
            m[0x20] = 3;
        }
        return;
    }
    case 2:
        if (D_L07_0015F6A8 == 2) return;
        m[0x20] = 3;
        return;
    case 3:
        m[0x20] = 4;
        return;
    case 4: {
        unsigned char *a = D_0013D355 + 0x13B;
        unsigned char *q;
        unsigned int nst;
        if (a[0x29] != 0) {
            nst = 7;
        } else {
            if (d[0] != -1) {
                if (func_00215570((char *)D_0013E633 + 0xE9D, d[0]) == 0) return;
                a[0x29] = 1;
                if (d[3] != -1) {
                    q = (unsigned char *)D_L07_00160058 + (d[3] << 8);
                    *(unsigned short *)(q + 0x34) |= 0x41;
                }
                if (d[5] != -1) {
                    q = (unsigned char *)D_L07_00160058 + (d[5] << 8);
                    *(unsigned short *)(q + 0x34) |= 0x41;
                }
                m[0x20] = 5;
                func_L00_00299B68(1);
                if (d[2] != -1) {
                    func_0020D678(D_L07_00160058 + (d[2] << 8));
                }
                return;
            }
            nst = 8;
        }
        m[0x20] = nst;
        if (d[2] != -1) {
            func_0020D678(D_L07_00160058 + (d[2] << 8));
        }
        return;
    }
    case 5: {
        unsigned char *q;
        if (D_L07_0015F6A8 == 2) return;
        if (d[3] != -1) {
            q = (unsigned char *)D_L07_00160058 + (d[3] << 8);
            *(unsigned short *)(q + 0x34) |= 0x41;
        }
        m[0x20] = 6;
        func_L00_00299B68(2);
        return;
    }
    case 6: {
        unsigned char *q;
        if (D_L07_0015F6A8 == 2) return;
        if (d[6] != -1) {
            q = (unsigned char *)D_L07_0016016C_addr + (d[6] << 7);
            func_L00_00217718(q + 0x30, q + 0x70, 0, 1);
        }
        m[0x20] = 7;
        return;
    }
    case 7: {
        unsigned char *q;
        if (d[3] != -1) {
            q = (unsigned char *)D_L07_00160058 + (d[3] << 8);
            *(unsigned short *)(q + 0x34) &= 0xFFBE;
        }
        if (d[5] != -1) {
            q = (unsigned char *)D_L07_00160058 + (d[5] << 8);
            *(unsigned short *)(q + 0x34) &= 0xFFBE;
        }
        func_L00_002664B0(2, 4);
        m[0x20] = 8;
        return;
    }
    case 8: {
        unsigned char *a = D_0013D355 + 0x13B;
        unsigned char *q;
        if (a[0x2A] != 0) {
            m[0x20] = 0xC;
        } else if (d[3] == -1 || (q = (unsigned char *)D_L07_00160058 + (d[3] << 8)) == 0 || q[0x20] == 0xFE || q[0x20] == 0xFD) {
            if (d[1] == -1) {
                m[0x20] = 0xD;
            } else if (func_00215570((char *)D_0013E633 + 0xE9D, d[1]) != 0) {
                q = (unsigned char *)D_L07_0016016C_addr + (d[7] << 7);
                func_L00_00217718(q + 0x30, q + 0x70, 0x72, 1);
                a[0x2A] = 1;
                m[0x20] = 9;
                func_L00_00299B68(3);
            }
        }
        if (m[0x20] != 8 && d[4] != -1) {
            q = (unsigned char *)D_L07_00160058 + (d[4] << 8);
            *(unsigned short *)(q + 0x34) |= 0x41;
        }
        return;
    }
    case 9:
        if (D_L07_0015F6A8 == 2) return;
        m[0x20] = 0xA;
        func_L00_0029A7D0(8);
        return;
    case 10:
        if (D_L07_0015F6A8 == 2) return;
        m[0x20] = 0xB;
        func_L00_00299B68(4);
        /* falls through */
    case 11: {
        unsigned char *q;
        unsigned char *p2;
        if (D_L07_0015F6A8 == 2) return;
        if (d[7] != -1) {
            q = (unsigned char *)D_L07_0016016C_addr + (d[7] << 7);
            func_L00_00217718(q + 0x30, q + 0x70, 0, 1);
        }
        if (d[4] != -1) {
            p2 = (unsigned char *)D_L07_00160058 + (d[4] << 8);
            func_001F9BF0(v, (char *)D_0013E633 + 0xE9D, p2 + 0x10);
            func_L00_001FF548(v, v, 0.9f);
            func_001F9BD8(p2 + 0x10, (char *)D_0013E633 + 0xE9D, v);
            func_0020D678(p2);
        }
        func_L07_00270BE0(0x87, 0xC, 0x56, 0x3C);
        func_L00_00261848(8);
        func_0020BFC8(0, 8);
        func_0022F4A0(8);
        m[0x20] = 0xC;
        return;
    }
    case 12: {
        unsigned char *q;
        if (d[4] != -1) {
            q = (unsigned char *)D_L07_00160058 + (d[4] << 8);
            if (q != 0 && q[0x20] != 0xFE && q[0x20] != 0xFD) {
                func_0020D678(q);
            }
        }
        m[0x20] = 0xD;
        return;
    }
    case 13:
        func_0020D678(m);
        return;
    }
}
