/* NON_MATCHING func_L11_003102C8 -- src/overlays/shared/vendor_002C99E0.c
 * Best so far: SIZE ours 1132 / retail 1136, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Thruster pack lock update (moby class 1179): state 0 arms or attacks, state 1 runs the attack and the cooldown
 *   Still differs: the table index andi (retail tests c == 0xFF before the andi, ours after); retail re-materialis
 */
extern char D_0013E633[];
extern unsigned char D_0013D5CA[] NOT_SDA;
extern unsigned char D_0014171B[] NOT_SDA;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern int D_0015EFA4 MACRO_ADDR;
extern unsigned char D_L11_001BBF40[];
extern unsigned char D_L11_001BB2E0[];
extern unsigned char D_L11_0015FD08[];
extern void func_0022ED80(int, int, int);
extern int func_L00_00203F20(int a, int b);

// Thruster pack lock update: a state machine (0 idle, 1 armed, 2 attacking) that aims the pack and counts the cooldown timers.
void func_L11_003102C8(char *moby)
{
    char *d = *(char **)(moby + 0x78);
    switch (((unsigned char *)moby)[0x20]) {
    case 0: {
        char *st = (char *)D_0014171B + 0x34D;
        int e = D_0015EE84_m;
        *(short *)(st + 0x362) = 0;
        *(short *)(st + 0x360) = 0;
        *(unsigned short *)(d + 0x3E) |= 8;
        if (e == 0xB && ((unsigned char *)moby)[0xB0] != 0xFF) {
            short idx = *(short *)(moby + 0xB2);
            if ((D_L11_001BBF40 + idx)[0x454] != 0 ||
                ((*(int *)(D_0014171B + 0xAB75 + ((idx >> 5) * 4) + 0xB00) >> (idx & 0x1F)) & 1)) {
                ((unsigned char *)moby)[0x20] = 2;
                *(float *)(moby + 0x18) = *(float *)(moby + 0x18) - 1.5f;
                func_0022ED80(0, 0, (int)moby);
                return;
            }
        }
        ((unsigned char *)moby)[0x20] = 1;
        return;
    }
    case 1: {
        char *g = D_0013E633 + 0xE1D;
        char *g2;
        if (*(int *)(g + 0x2FC) == (int)moby && D_0013D5CA[1] != 0 &&
            *(short *)(g + 0x30E) == 0 && *(int *)(g + 0x2084) == 0x22) {
            if (D_0015EE84_m == 0xB && ((unsigned char *)moby)[0xB0] != 0xFF) {
                short idx = *(short *)(moby + 0xB2);
                int c;
                int u;
                (D_L11_001BB2E0 + idx)[0x454] = ((unsigned char *)moby)[0xB0] + 2;
                c = ((unsigned char *)moby)[0xB0];
                if (c == 0xFF || ((u = c & 0xFF), D_L11_0015FD08[u] != 0xFF &&
                    ((unsigned char *)(D_0014171B + 0xAA35 + u))[0xB0] == 0xFF)) {
                    (D_L11_001BBF40 + *(short *)(moby + 0xB2))[0x454] = c + 2;
                }
            }
            ((unsigned char *)moby)[0x20] = 2;
            *(float *)(moby + 0x18) = *(float *)(moby + 0x18) - 1.5f;
            func_0022ED80(0, 0, (int)moby);
        }
        if (((unsigned char *)moby)[0xB0] == 0xFF) {
            return;
        }
        g2 = D_0013E633 + 0xE9D;
        if (!(func_001F9D48(moby + 0x10, g2) < 4.0f)) {
            return;
        }
        if (!((unsigned int)*(int *)(g2 + 0x200C) < 2)) {
            return;
        }
        if (D_0013D5CA[1] == 0) {
            char *st = (char *)D_0014171B + 0x34D;
            int r = func_001F9850(D_0015EFA4) - *(unsigned short *)(st + 0x38A) * 600;
            int v = func_001F9850(0x12);
            if ((int)((float)v * 60.0f) < r || *(unsigned short *)(st + 0x38A) * 600 == 0) {
                func_L00_00203F20(0x2B02, 0x71);
                return;
            }
            {
                int q = func_001F9850(D_0015EFA4) / 600;
                if (*(unsigned short *)(st + 0x38A) < q) {
                    *(short *)(st + 0x38A) = func_001F9850(D_0015EFA4) / 600;
                }
            }
        } else {
            char *st = (char *)D_0014171B + 0x34D;
            if (*(unsigned short *)(st + 0x360) != 0) {
                int r = func_001F9850(D_0015EFA4) - *(unsigned short *)(st + 0x362) * 600;
                int v = func_001F9850(0x12);
                if ((int)((float)v * 60.0f) < r || *(unsigned short *)(st + 0x362) * 600 == 0) {
                    func_L00_00203F20(0x2B01, 0x6C);
                    return;
                }
                {
                    int q = func_001F9850(D_0015EFA4) / 600;
                    if (*(unsigned short *)(st + 0x362) < q) {
                        *(short *)(st + 0x362) = func_001F9850(D_0015EFA4) / 600;
                    }
                }
            } else {
                int q;
                *(short *)(st + 0x360) += 1;
                q = func_001F9850(D_0015EFA4) / 600;
                if (*(unsigned short *)(st + 0x362) < q) {
                    *(short *)(st + 0x362) = func_001F9850(D_0015EFA4) / 600;
                }
                *(unsigned int *)(st + 0x364) |= (1 << D_0015EE84_m) | 0x80000000;
            }
        }
        return;
    }
    }
}
