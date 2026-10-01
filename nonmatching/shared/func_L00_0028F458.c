/* NON_MATCHING func_L00_0028F458 -- src/overlays/shared/sound_0028EB98.c
 * Best so far: BYTES 6/956 (99.4% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L00_0028F458 (pickup-like moby update: pulses colour, tracks range, collects items / state 0x2A handler).
 *   Diffs: (1) float constant is 0x3CC90FDB (2*pi/256 = 0.024543693f), p9 had 0.02f; (2) the constant 1 stored to 
 *   Budget ended after these; p9.c with those two edits would probably be EXACT.
 */
#include "common.h"

extern char D_0013E633[];
extern char D_0013A5E0[] NOT_SDA;
extern unsigned char D_0013D355[] NOT_SDA;
extern unsigned char D_0013D5DD[] NOT_SDA;
extern unsigned char D_0013DE4B[] NOT_SDA;
extern short D_0013E156[] NOT_SDA;
extern char D_L00_00166EC0[];
extern char D_L00_001BDC10[] NOT_SDA;
extern int D_L00_0015F710 MACRO_ADDR;
extern int D_L00_0015F6A8 MACRO_ADDR;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;

extern float func_001FA888(int);
extern float func_001F9F90(float);
extern void func_001F49B0(void (*)(void), void *);
extern float func_001F9D48(void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001F9D10(void *, void *);
extern int func_00215F80(int, int);
extern void func_L00_00299B68(int);
extern int func_L00_00265558(int);
extern void func_L00_0029A7D0(int);
extern void func_00233AB8(void);
extern void func_0022F258(void);

/* Per-frame update of a pickup-like moby: pulses its colour, tracks the player's range and collects items. */
void func_L00_0028F458(unsigned char *m) {
    char *d = *(char **)(m + 0x78);
    float *p;
    float tmp[4];
    int v;
    unsigned char *q;

    if (m[0x20] != 0x2A) {
        if (m[0x31] != 0) {
            m[0xBC] += 2;
            v = (int)(func_001F9F90(func_001FA888((unsigned char)m[0xBC] - 0x80) * 0.02f) * 50.0f) + 0x96;
            if (*(short *)(m + 0xA6) == 0x215) {
                *(int *)(m + 0x90) = (v >> 1) | (v << 8) | (v << 16);
            } else {
                *(int *)(m + 0x90) = v | (v << 8) | (v << 16);
            }
            func_001F49B0(func_00233AB8, m);
            if (func_001F9D48(m + 0x10, D_L00_00166EC0) < 32.0f) {
                func_001F49B0(func_0022F258, m);
            }
        }
        p = (float *)(m + 0x10);
        if (*(short *)(d + 0xC) != 0) {
            func_001F9EC0(tmp, D_L00_001BDC10 + D_0013E156[0] * 16, m + 0xC0);
            func_001F9BD8(tmp, tmp, p);
            if (func_001F9D10(tmp, D_0013E633 + 0xE9D) > 4.1f) {
                *(short *)(d + 0xC) = 0;
            }
        } else {
            q = (unsigned char *)D_0013E633 + 0xE9D;
            if (func_001F9D48(p, q) < 6.0f) {
                func_001F9EC0(tmp, D_L00_001BDC10 + D_0013E156[0] * 16, m + 0xC0);
                func_001F9BD8(tmp, tmp, p);
                if (func_001F9D10(tmp, q) < 4.0f) {
                    *(short *)(d + 0xC) = 1;
                }
            }
        }
        if (*(unsigned short *)(m + 0x34) & 1) {
            *(short *)(d + 0xC) = 0;
        }
        if (*(short *)(d + 0xC) != 0) {
            int r = func_00215F80(2, 0x53E9) != 0;
            if ((*(int *)(D_0013A5E0 + 0x2604) & 0x10) && r) {
                if (D_0015EE84_m == 10 && *(unsigned char *)(D_0013E633 + 0x2EC1) == 1) {
                    m[0x20] = 0x2A;
                    *(unsigned short *)(m + 0x34) |= 0x41;
                    func_L00_00299B68(9);
                } else {
                    func_L00_00265558(2);
                    D_L00_0015F710 = 1;
                    D_0013E156[1] = 0;
                }
            }
        }
    } else {
        if (D_L00_0015F6A8 != 2) {
            q = D_0013D355 + 0x13B;
            if (q[0x48] == 0 && D_0013D5DD[7] != 0) {
                func_L00_00299B68(4);
                q[0x48] = 1;
            } else if ((q = D_0013D355 + 0x13B)[0x49] == 0 && D_0013DE4B[8] != 0) {
                func_L00_00299B68(5);
                q[0x49] = 1;
            } else if ((q = D_0013D355 + 0x13B)[0x4A] == 0 && D_0013DE4B[8] != 0) {
                func_L00_0029A7D0(0xB);
                q[0x4A] = 1;
            } else if ((q = D_0013D355 + 0x13B)[0x4B] == 0 && D_0013DE4B[8] != 0) {
                func_L00_00299B68(6);
                q[0x4B] = 1;
            } else {
                m[0x20] = 0;
                *(unsigned short *)(m + 0x34) &= 0xFFBE;
                v = 1;
                D_0013E156[1] = v;
                D_L00_0015F710 = v;
            }
        }
    }
}
