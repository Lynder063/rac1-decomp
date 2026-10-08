/* NON_MATCHING func_L13_0030CAE0 -- src/overlays/l13_gemlik/vendor_0030CAE0.c
 * Best so far: SIZE ours 1344 / retail 1348, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moby update on level 13 (class 1353): a 15-way state machine on moby[0x20] that calls into the level's moby po
 *   Stopped at 8 runs of 10. p6 (one function-level `e`) fixes nothing and adds a fifth saved register ($s4), so i
 */
extern int D_L13_0015F6A8 MACRO_ADDR;
extern int D_L13_00160058_m __asm__("D_L13_00160058") MACRO_ADDR;
extern char *D_L13_0016016C MACRO_ADDR;
extern float D_L13_0015F4FC MACRO_ADDR;
extern int D_L13_0015F504 MACRO_ADDR;
extern unsigned char D_L13_0015FD08[];
extern unsigned char D_001414F5[] NOT_SDA;
extern unsigned char D_0013D355[];
extern unsigned char D_0013E633[];
extern char D_0013DE6E[];
extern void func_L00_00299B68(int);
extern int func_00215570(void *arg0, int arg1);
extern void func_0020D678(void *);
extern void func_L00_00217718(void *, void *, int, int);
extern void func_L00_002664B0(int, int);
extern void func_L00_0029A7D0(int);
extern void func_L00_00261848(int);
extern void func_L00_0028FB78(char *);
extern int func_0020BFC8(int, int);

/* Update function for moby class 1353 on level 13: runs the state machine in moby[0x20]. */
void func_L13_0030CAE0(unsigned char *moby)
{
    char *data = *(char **)(moby + 0x78);
    unsigned char *e;

    switch (moby[0x20]) {
    case 0:
        if (D_L13_0015F6A8 == 0) moby[0x20] = 1;
        break;
    case 1: {
        unsigned char *g = D_0013D355 + 0x13B;
        if (g[0x64] == 0) {
            g[0x64] = 1;
            moby[0x20] = 2;
            func_L00_00299B68(0);
        } else {
            moby[0x20] = 3;
        }
        break;
    }
    case 2:
        if (D_L13_0015F6A8 != 2) moby[0x20] = 3;
        break;
    case 3:
        moby[0x20] = 4;
        break;
    case 4: {
        unsigned char *g = D_0013D355 + 0x13B;
        if (g[0x65] != 0 || *(int *)data == -1) {
            moby[0x20] = g[0x65] != 0 ? 6 : 7;
        } else if (func_00215570(D_0013E633 + 0xE9D, *(int *)data) != 0) {
            g[0x65] = 1;
            if (*(int *)(data + 0x14) != -1) {
                e = (unsigned char *)D_L13_00160058_m + (*(int *)(data + 0x14) << 8);
                *(unsigned short *)(e + 0x34) |= 0x41;
            }
            moby[0x20] = 5;
            func_L00_00299B68(1);
        }
        if (moby[0x20] != 4 && *(int *)(data + 0xC) != -1) {
            func_0020D678((unsigned char *)D_L13_00160058_m + (*(int *)(data + 0xC) << 8));
        }
        break;
    }
    case 5: {
        char *a;
        if (D_L13_0015F6A8 == 2) break;
        if (*(int *)(data + 0x14) != -1) {
            e = (unsigned char *)D_L13_00160058_m + (*(int *)(data + 0x14) << 8);
            *(unsigned short *)(e + 0x34) &= 0xFFBE;
        }
        if (*(int *)(data + 0x8) != -1 && *(int *)(data + 0x10) != -1) {
            e = (unsigned char *)D_L13_00160058_m + (*(int *)(data + 0x10) << 8);
            a = D_L13_0016016C + (*(int *)(data + 0x8) << 7);
            qcopy(e + 0x10, a + 0x30);
            func_L00_00217718(a + 0x30, a + 0x70, 0, 1);
            D_001414F5[0] = 1;
            *(float *)(*(char **)(e + 0x78) + 0x7C) = 0.99f;
            D_L13_0015F4FC = 0.99f;
            e[0x20] = 2;
        }
        moby[0x20] = 6;
        break;
    }
    case 6:
        moby[0x20] = 7;
        break;
    case 7: {
        unsigned char *g = D_0013D355 + 0x13B;
        char *a;
        if (g[0x66] != 0) goto s12;
        if (*(int *)(data + 0x14) == -1) goto s13;
        e = (unsigned char *)D_L13_00160058_m + (*(int *)(data + 0x14) << 8);
        if (e != 0 && *(short *)(e + 0xA6) == 0x184 && e[0x20] != 0xFE && e[0x20] != 0xFD) break;
        if (*(int *)(data + 0x10) != -1) {
            e = (unsigned char *)D_L13_00160058_m + (*(int *)(data + 0x10) << 8);
            *(unsigned short *)(e + 0x34) |= 2;
        }
        a = D_L13_0016016C + (*(int *)(data + 0x8) << 7);
        func_L00_00217718(a + 0x30, a + 0x70, 0x72, 1);
        g[0x66] = 1;
        if (*(int *)(data + 0x20) != -1) {
            e = (unsigned char *)D_L13_00160058_m + (*(int *)(data + 0x20) << 8);
            *(unsigned short *)(e + 0x34) |= 0x41;
        }
        func_L00_002664B0(0, 5);
        moby[0x20] = 8;
        func_L00_00299B68(2);
        break;
    }
    case 8:
        if (D_L13_0015F6A8 != 2) {
            moby[0x20] = 9;
            func_L00_0029A7D0(0xE);
        }
        break;
    case 9:
        if (D_L13_0015F6A8 != 2) {
            func_L00_00299B68(3);
            moby[0x20] = 10;
        }
        break;
    case 10: {
        char *d;
        if (D_L13_0015F6A8 == 2) break;
        if (*(int *)(data + 0x10) != -1) {
            e = (unsigned char *)D_L13_00160058_m + (*(int *)(data + 0x10) << 8);
            *(unsigned short *)(e + 0x34) &= 0xFFFD;
        }
        func_L00_00261848(0xE);
        if (*(int *)(data + 0x20) != -1) {
            e = (unsigned char *)D_L13_00160058_m + (*(int *)(data + 0x20) << 8);
            *(unsigned short *)(e + 0x34) &= 0xFFBE;
            func_L00_0028FB78((char *)e);
            d = D_0013DE6E + 0x2C2;
            *(float *)(d + 0x60) = 464.66f;
            *(float *)(d + 0x64) = 580.68f;
            *(float *)(d + 0x68) = 316.72f;
            *(float *)(d + 0x78) = 2.77f;
        }
        D_L13_0015F504 = 0;
        moby[0x20] = 11;
        break;
    }
    case 11: {
        if (*(int *)(data + 0x10) == -1) goto s12;
        e = (unsigned char *)D_L13_00160058_m + (*(int *)(data + 0x10) << 8);
        if (e != 0 && *(short *)(e + 0xA6) == 0x45 && e[0x20] != 0xFE && e[0x20] != 0xFD) break;
        func_0020BFC8(0, -1);
        moby[0x20] = 12;
        break;
    }
    s12:
        moby[0x20] = 12;
        break;
    case 12:
    s13:
        moby[0x20] = 13;
        break;
    case 13: {
        if (*(int *)(data + 0x10) == -1) {
            func_0020D678(moby);
            break;
        }
        e = (unsigned char *)D_L13_00160058_m + (*(int *)(data + 0x10) << 8);
        if (D_L13_0015FD08[e[0xB0]] != 0xFF) break;
        if (*(int *)(data + 0x20) != -1) {
            func_0020D678((unsigned char *)D_L13_00160058_m + (*(int *)(data + 0x20) << 8));
        }
        moby[0x20] = 14;
        break;
    }
    case 14:
        *(unsigned short *)(moby + 0x34) |= 2;
        break;
    }
}
