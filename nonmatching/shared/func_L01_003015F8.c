/* NON_MATCHING func_L01_003015F8 -- src/overlays/shared/vendor_002F7700.c
 * Best so far: SIZE ours 744 / retail 760, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Checkpoint trigger update for spawn point moby class 805: checks the trigger flags, sets the checkpoint bit ta
 *   Remaining differences: the flag-0x14 update after func_00215570 (retail uses bnel with the s[0xC] load in its 
 *   Unblock: a form of the bit-clear block that reloads 0xB2 per use the way retail does, or a retail-matching ord
 */
extern int func_00215570(void *, int);
extern void func_L00_002512D8(int);
extern float func_00214358(void *, int, float);
extern float func_001F9B88(float);
extern void func_L00_00286128(void *, void *);
extern TpLevelState_fc988 D_L01_001BB9C0_s __asm__("D_L01_001BB9C0");
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
extern int D_L01_001BAC60[];
extern char D_L01_001BAD60[];

// Checkpoint trigger update for spawn point moby class 805: fires once per trip and marks the checkpoint
void func_L01_003015F8(unsigned char *m) {
    char *s;
    int ret;
    int c;
    int r;
    int old;
    int q;
    unsigned int w;
    int wi;
    int b;
    int v;
    int t;
    int sh;
    int bit;
    int skip;
    int idx;
    unsigned short u;
    float pos[4];

    s = *(char **)(m + 0x78);
    ret = 0;
    if (*(int *)(s + 8) & 8) {
        return;
    }
    if (m[0xBC] == 0) {
        m[0xBC] = 1;
        *(int *)(s + 0x14) = 0;
        return;
    }
    t = *(int *)(s + 0x18);
    if (t != -1) {
        idx = t + (D_0015EE84_m << 4);
        if (*(unsigned char *)(D_0014171B_c + 0xAA35 + idx) != 0xFF) {
            return;
        }
    }
    if (*(int *)(s + 8) & 2) {
        if (*(unsigned char *)(D_0013E633_c + 0x2EC1) != 1) {
            return;
        }
    }
    if (*(int *)(s + 8) & 4) {
        q = *(unsigned char *)(D_0013E633_c + 0x2EC1);
        if (q != 3) {
            if (q != 0) {
                return;
            }
        }
    }
    if (*(int *)(s + 8) & 0x10) {
        w = *(unsigned int *)(D_0013E633_c + 0x2EA9);
        if (w >= 2) {
            if (w != 9) {
                return;
            }
        }
    }
    r = func_00215570(D_0013E633_c + 0xE9D, *(int *)s);
    if (r != 0) {
        old = *(int *)(s + 0x14);
        *(int *)(s + 0x14) = 1;
        ret = 0;
        if (old == 0) {
            ret = 1;
        }
    } else {
        *(int *)(s + 0x14) = 0;
    }

    skip = 0;
    c = *(int *)(s + 0xC);
    if (ret == 0) {
        u = *(unsigned short *)(m + 0xB2);
        sh = (short)u;
        if (*(unsigned char *)((char *)&D_L01_001BB9C0_s + sh + 0x454) == 0) {
            v = D_0015EE84_m;
            w = sh >> 5;
            b = u & 0x1F;
            bit = (*(int *)(D_0014171B_c + 0xAB75 + (w << 2) + (v << 8)) >> b) & 1;
            if (bit == 0) {
                *(int *)(s + 0xC) = 0;
                skip = 1;
            }
        }
    }
    if (!skip) {
        if (c == 0 || *(int *)(s + 0x10) != 0) {
            *(int *)(s + 0xC) = 1;
            func_L00_002512D8(m[0xB0]);
            qcopy(pos, m + 0x10);
            pos[2] = func_00214358(pos, 0, 0.5f);
            if (2.0f < func_001F9B88(*(float *)(m + 0x18) - pos[2])) {
                pos[2] = *(float *)(m + 0x18);
            }
            func_L00_00286128(pos, m + 0x40);
            *(unsigned char *)((char *)D_L01_001BAD60 + (short)*(unsigned short *)(m + 0xB2) + 0x454) = 0;
            *(unsigned char *)((char *)&D_L01_001BB9C0_s + (short)*(unsigned short *)(m + 0xB2) + 0x454) = 0;
            wi = (short)*(unsigned short *)(m + 0xB2) >> 5;
            b = *(unsigned short *)(m + 0xB2) & 0x1F;
            *(int *)(D_0014171B_c + 0xAB75 + (wi << 2) + (D_0015EE84_m << 8)) &= ~(1 << b);
            D_L01_001BAC60[wi] &= ~(1 << b);
        }
    }
    if (m[0x20] != 0) {
        return;
    }
    idx = m[0xB0] + (D_0015EE84_m << 4);
    if (*(unsigned char *)(D_0014171B_c + 0xAA35 + idx) == 0xFF) {
        m[0x20] = 1;
    }
}
