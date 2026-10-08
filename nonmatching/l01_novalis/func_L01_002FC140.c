/* NON_MATCHING func_L01_002FC140 -- src/overlays/l01_novalis/vendor_002FABE8.c
 * Best so far: SIZE ours 1860 / retail 1868, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Agnogg-ship update (classes 730/731/790, level 01): switch on moby[0x20] over 11 states (jump table), with the
 *   Remaining differences: a reload of D_L01_00160058 after the first call in state 1 (retail re-reads the global,
 *   Unblock: the register order in the state-1 index expression and whether retail re-reads globals across calls i
 */
extern char *D_L01_00160058 MACRO_ADDR;
extern char *D_L01_0016016C MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern int D_L01_0015F6A8 MACRO_ADDR;
extern s32 D_0015EE84_FB158 __asm__("D_0015EE84") MACRO_ADDR;
extern char D_L01_001BAD60[];
extern char D_L01_0015FD08[];
extern char D_L01_001BADB0[];
extern unsigned char D_0014171B[] NOT_SDA;
extern unsigned char D_0013E633_u[] __asm__("D_0013E633") NOT_SDA;
extern char D_0013D355[];
extern void func_L01_002FC058(void);
extern int func_001F9938(void *);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern void func_L00_00299B68(int);
extern void func_L00_0028FC68(void);
extern int func_00215570(void *arg0, int arg1);
extern void func_001F9BC0(void *);
extern float func_001F9D48(void *, void *);
extern f32 func_L00_001FF860_303590(f32, f32) __asm__("func_L00_001FF860");
extern void func_00213D28(void *, int, int);
extern void func_L00_0029A7D0(int);
extern void func_L00_00261848(int);
extern void func_L00_00263DB0(int);
extern void func_L01_0029C2A0(char *a0, int a1, char *p, int mode, void *t);
extern void func_L00_002512D8(int);
extern void func_L00_00286128(void *, void *);
extern int func_0020BFC8(int, int);
extern void func_L01_002A3680(void);

/* Agnogg ship update (moby classes 730, 731, 790 on level 01): state machine on moby[0x20]. */
void func_L01_002FC140(char *moby) {
    char *data;
    char *p;
    char *q;
    char *q2;
    char *A;
    char *pp;
    int r16;
    int x;
    int cnt;
    int flag;
    int *pv;
    int v;
    int n4;
    int l720;
    unsigned short v3;
    float r1;
    float r2;
    float r3f;
    float fz;
    float fd;

    data = *(char **)(moby + 0x78);
    func_L01_002FC058();
    func_001F9938(data + 8);
    switch (*(unsigned char *)(moby + 0x20)) {
    case 0:
        fz = *(float *)(moby + 0x18) - 0.75f;
        *(unsigned char *)(moby + 0x30) = 0xFF;
        *(unsigned char *)(moby + 0x20) = 1;
        *(short *)(data + 8) = 0;
        fd = *(float *)data;
        *(float *)(data + 0xC) = fz;
        *(int *)(moby + 0x94) = 0;
        *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) | 0x41;
        *(float *)(moby + 0x18) = *(float *)(moby + 0x18) + fd;
        break;
    case 1:
        r16 = *(unsigned char *)(*(unsigned char *)(moby + 0xB0) + (D_0015EE84_FB158 << 4) + (D_0014171B + 0xAA35));
        if (r16 == 0xFF) {
            if (*(unsigned char *)(moby + 0x53) != 2) {
                func_00213DE0(moby, 2, 0, func_001F9850(0x14));
            }
            v3 = *(unsigned short *)(moby + 0x34);
            *(unsigned char *)(moby + 0x20) = 10;
            *(unsigned short *)(moby + 0x34) = v3 & 0xFFBE;
            *(short *)(moby + 0x32) = r16;
            *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);
        } else {
            if (D_L01_0015F6A8 == 0) {
                pp = D_0013D355 + 0x13B;
                if (*(unsigned char *)(pp + 0xF) == 0) {
                    func_L00_00299B68(5);
                    *(unsigned char *)(pp + 0xF) = 1;
                }
            }
            func_L00_0028FC68();
            if (func_00215570(D_0013E633_u + 0xE9D, *(int *)(data + 0x10)) != 0) {
                *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) & 0xFFBE;
                *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);
                x = *(int *)(data + 4);
                if (x != -1) {
                    q = *(char **)(D_L01_00160058 + (x << 8) + 0x78);
                    *(int *)(q + 0x2C) = func_001F9850(0x1A4);
                    *(unsigned char *)(D_L01_00160058 + (*(int *)(data + 4) << 8) + 0xBC) = 1;
                    func_001F9BC0(D_L01_0016016C + (*(int *)(q + 0x24) << 7) + 0x70);
                    func_001F9BC0(q + 0x10);
                    r1 = func_001F9D48(D_L01_0016016C + (*(int *)(q + 0x24) << 7) + 0x30, moby + 0x10);
                    r2 = func_L00_001FF860_303590(r1, *(float *)(moby + 0x18) - *(float *)(D_L01_0016016C + (*(int *)(q + 0x24) << 7) + 0x38));
                    *(float *)(D_L01_0016016C + (*(int *)(q + 0x24) << 7) + 0x74) = -r2;
                    r3f = func_L00_001FF860_303590(*(float *)(moby + 0x10) - *(float *)(D_L01_0016016C + (*(int *)(q + 0x24) << 7) + 0x30),
                                                   *(float *)(moby + 0x14) - *(float *)(D_L01_0016016C + (*(int *)(q + 0x24) << 7) + 0x34));
                    *(float *)(D_L01_0016016C + (*(int *)(q + 0x24) << 7) + 0x78) = r3f;
                }
                *(unsigned char *)(moby + 0x20) = 2;
            }
        }
        break;
    case 2:
        *(float *)(moby + 0x18) = *(float *)(moby + 0x18) - D_0015EE6C * 5.0f;
        if (*(int *)(data + 4) != -1) {
            q = *(char **)(D_L01_00160058 + (*(int *)(data + 4) << 8) + 0x78);
            r1 = func_001F9D48(D_L01_0016016C + (*(int *)(q + 0x24) << 7) + 0x30, moby + 0x10);
            r2 = func_L00_001FF860_303590(r1, *(float *)(moby + 0x18) - *(float *)(D_L01_0016016C + (*(int *)(q + 0x24) << 7) + 0x38));
            *(float *)(q + 0x14) = -r2;
            r3f = func_L00_001FF860_303590(*(float *)(moby + 0x10) - *(float *)(D_L01_0016016C + (*(int *)(q + 0x24) << 7) + 0x30),
                                           *(float *)(moby + 0x14) - *(float *)(D_L01_0016016C + (*(int *)(q + 0x24) << 7) + 0x34));
            *(float *)(q + 0x18) = r3f;
        }
        if (*(unsigned char *)(moby + 0x53) == 0) {
            if (*(float *)(moby + 0x18) - *(float *)(data + 0xC) <= 0.0f) {
                func_00213D28(moby, 1, 0);
            }
        }
        if (*(float *)(moby + 0x18) <= *(float *)(data + 0xC)) {
            *(float *)(moby + 0x18) = *(float *)(data + 0xC);
            *(unsigned char *)(moby + 0x20) = 3;
        }
        break;
    case 3:
        if (*(unsigned char *)(moby + 0x52) != 1) {
            break;
        }
        if ((*(unsigned char *)(moby + 0x70) & 2) == 0) {
            break;
        }
        if (*(unsigned char *)(moby + 0x53) != 2) {
            func_00213DE0(moby, 2, 0, func_001F9850(0x14));
        }
        if (*(short *)(moby + 0xA6) == 0x2DA) {
            *(unsigned char *)(moby + 0x20) = 10;
        } else {
            *(unsigned char *)(moby + 0x20) = 4;
        }
        break;
    case 4:
        cnt = 0;
        flag = 1;
        pv = (int *)(data + 0x14);
        do {
            v = *pv;
            if (v == -1) {
                cnt++;
            } else {
                p = D_L01_00160058 + (v << 8);
                if (p == 0) {
                    cnt++;
                } else if (*(unsigned char *)(p + 0x20) == 0xFE) {
                    cnt++;
                } else if (*(unsigned char *)(p + 0x20) != 0xFD) {
                    flag = 0;
                    break;
                } else {
                    cnt++;
                }
            }
            pv++;
        } while (cnt < 3);
        if (flag == 0) {
            break;
        }
        n4 = *(int *)(D_0013E633_u + 0x2EA9);
        if (n4 == 7) {
            break;
        }
        if (n4 == 0x14) {
            break;
        }
        *(short *)(data + 8) = func_001F9850(0x2D);
        *(unsigned char *)(moby + 0x20) = 5;
        break;
    case 5:
        if (*(short *)(data + 8) != 0) {
            break;
        }
        *(short *)(data + 0xA) = *(unsigned short *)(moby + 0x32);
        *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) | 0x41;
        func_L00_00299B68(3);
        *(unsigned char *)(moby + 0x20) = 6;
        break;
    case 6:
        if (D_L01_0015F6A8 == 2) {
            break;
        }
        func_L00_0029A7D0(3);
        *(unsigned char *)(moby + 0x20) = 7;
        break;
    case 7:
        if (D_L01_0015F6A8 == 2) {
            break;
        }
        func_L00_00299B68(4);
        *(unsigned char *)(moby + 0x20) = 8;
        break;
    case 8:
        if (D_L01_0015F6A8 == 2) {
            break;
        }
        func_L00_00261848(3);
        func_L00_00263DB0(3);
        *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) & 0xFFBE;
        if (*(int *)(data + 4) != -1) {
            q2 = D_L01_00160058 + (*(int *)(data + 4) << 8);
            *(unsigned char *)(D_L01_001BAD60 + *(short *)(q2 + 0xB2) + 0x454) = *(unsigned char *)(q2 + 0xB0) + 2;
            l720 = 0;
            if (*(unsigned char *)(q2 + 0xB0) == 0xFF) {
                l720 = 1;
            } else if (D_L01_0015FD08[*(unsigned char *)(q2 + 0xB0)] == 0xFF) {
                l720 = 0;
            } else if ((D_0014171B + 0xAA35)[(D_0015EE84_FB158 << 4) + *(unsigned char *)(q2 + 0xB0)] == 0xFF) {
                l720 = 1;
            }
            if (l720) {
                *(unsigned char *)((char *)&D_L01_001BB9C0 + *(short *)(q2 + 0xB2) + 0x454) = *(unsigned char *)(q2 + 0xB0) + 2;
            }
        }
        if (*(int *)(data + 0x3C) != -1) {
            p = D_L01_00160058 + (*(int *)(data + 0x3C) << 8);
            q = *(char **)(p + 0x78);
            *(int *)(q + 0x2C) = func_001F9850(0xB4);
            *(unsigned char *)(D_L01_00160058 + (*(int *)(data + 0x3C) << 8) + 0xBC) = 1;
            if (*(int *)(data + 0x34) != -1 && *(int *)(data + 0x38) != -1) {
                *(unsigned char *)(D_L01_00160058 + (*(int *)(data + 0x34) << 8) + 0xBC) = 2;
                *(unsigned char *)(D_L01_00160058 + (*(int *)(data + 0x38) << 8) + 0xBC) = 2;
                func_L01_0029C2A0(D_L01_00160058 + (*(int *)(data + 0x34) << 8) + 0xBC, 1,
                                  D_L01_00160058 + (*(int *)(data + 0x34) << 8), 1, D_L01_001BADB0);
                func_L01_0029C2A0(D_L01_00160058 + (*(int *)(data + 0x38) << 8) + 0xBC, 1,
                                  D_L01_00160058 + (*(int *)(data + 0x38) << 8), 1, D_L01_001BADB0);
            }
        }
        func_L00_002512D8(*(unsigned char *)(moby + 0xB0));
        if (*(int *)(data + 0x30) != -1) {
            A = D_L01_0016016C + (*(int *)(data + 0x30) << 7);
            func_L00_00286128(A + 0x30, A + 0x70);
        }
        func_0020BFC8(0, -1);
        func_L01_002A3680();
        *(unsigned char *)(moby + 0x20) = 10;
        break;
    case 10:
        *(float *)(moby + 0x18) = *(float *)(data + 0xC);
        break;
    default:
        break;
    }
}
