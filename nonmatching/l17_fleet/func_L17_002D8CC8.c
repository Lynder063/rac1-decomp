/* NON_MATCHING func_L17_002D8CC8 -- src/overlays/l17_fleet/vendor_002AA068.c
 * Best so far: BYTES 31/1280 (97.6% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   run15 p13: reversed store order in blk (reverse of retail output): worse, SIZE 1272; keep p12 as best. Hypothe
 *   run16 p14: life local for c&0xFF: worse (regs shift). back to p12. Next: ternary for spE0 select (retail shape
 *   run17 p15: ternary for spE0 select: identical to p12. Next: blk fields in offset order
 *   run18 p16: blk fields in offset order: worse than p12 (A region more diffs). Next: separate float len
 *   run19 p17: separate float len (len distinct pseudo from sub f21): same SIZE, BYTES 62/1280; mov.s f21 now befo
 *   run20 p18: declaration order swap of f20/f21/len: no change (BYTES 62/1280). Budget spent.
 *   STOP: best = p17.c (BYTES 62/1280, size exact). Still differs: f20/f21 pair swapped (retail prod/dir/D*10=f20,
 *   Key idioms found: state test as switch; k loop as for(k=0;k<G;k++); inline m+0x10/m+0xC0 (no locals); len a di
 */
#include "common.h"
typedef int u128_2D8CC8 __attribute__((mode(TI)));
extern int func_L00_0020DC00(void);
extern float func_001FA748(float, float);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001F9C78(void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001FA1F8(void *, void *);
extern void func_00214F78(void *);
extern void func_001FA460(void *, void *);
extern float func_001FA888(int);
extern float func_001FA7D8(float);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9EE8(void *, void *, void *);
extern void func_L00_001FF240(void *, void *, void *);
extern float func_001F9D10(void *, void *);
extern int func_L00_001EFFF0(void *, void *, int, void *, void *);
extern int func_L00_00200290(char *, float);
extern void func_001F9EC0(void *, void *, void *);
extern int func_001160D8(void);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern void func_001F9C30(void *, void *, float);
extern float func_001F9CB8(void *);
extern int func_002140B0(int);
extern unsigned char *func_L00_00273F80(float *pos, char *vel, int color, unsigned char life, unsigned char b, int mode, float scale);
extern float D_0015EE6C MACRO_ADDR;
extern unsigned char D_0013E633[];
extern short D_L17_00161BF8;
extern short D_L17_00161BFC;
extern short D_L17_00161C00;
extern short D_L17_00161C04;
extern short D_L17_00161C08;
extern short D_L17_00161C0C;
extern short D_L17_00161C10;
extern short D_L17_00161C14;
extern void func_L17_002D91C8(void);

struct Blk {
    int a0;
    int a1;
    float f8;
    float fC;
    void *p10;
    int v14;
    char c18;
    char c19;
    short h1A;
    float f1C;
    int i20;
    int pad[3];
};

/* Fleet moby 669 update: spins up, then sprays particles from points on a rotating ring. */
void func_L17_002D8CC8(char *m) {
    u128_2D8CC8 sp0[1];
    u128_2D8CC8 sp10[1];
    struct Blk blk;
    u128_2D8CC8 mat1[3];
    u128_2D8CC8 mat2[4];
    u128_2D8CC8 spC0[1];
    u128_2D8CC8 spD0[1];
    u128_2D8CC8 spE0[1];
    u128_2D8CC8 spF0[1];
    u128_2D8CC8 sp100[1];
    int j;
    int k;
    int i;
    float *d;
    float len;
    float g;
    float f21;
    float f20;
    int c;
    char *w;

    d = *(float **)(m + 0x78);
    if (func_L00_0020DC00() != 0) {
        switch (*(unsigned char *)(m + 0x20)) {
        case 0:
            *(unsigned char *)(m + 0x30) = 0xFF;
            *(unsigned char *)(m + 0x20) = 1;
            d[1] = d[0] * *(float *)&D_L17_00161BF8 * 0.017453292f * D_0015EE6C;
            break;
        case 1:
            *(float *)(m + 0x40) = func_001FA748(*(float *)(m + 0x40), d[1]);
            func_001F49B0(func_L17_002D91C8, m);
            break;
        }
        func_001F9BF0(sp0, D_0013E633 + 0xE9D, (m + 0x10));
        if (func_001F9C78(sp0, (m + 0xC0)) > 0.0f) {
            func_L00_001FF4B0(sp10, (m + 0xC0), 1.0f);
        } else {
            func_L00_001FF4B0(sp10, (m + 0xC0), -1.0f);
        }
        blk.v14 = 0x10001;
        blk.i20 = 1;
        blk.c18 = 1;
        blk.f8 = 1.0f;
        blk.fC = 5627.9248046875f;
        blk.c19 = 1;
        i = 0;
        blk.h1A = *(unsigned short *)(m + 0xA6);
        blk.p10 = m;
        blk.f1C = 1.0f;
        func_001FA1F8(mat1, m + 0x40);
        func_00214F78(mat1);
        func_001FA460(mat2, mat1);
        do {
            j = 0;
            do {
                f21 = func_001FA7D8(*(float *)&D_L17_00161C00 * 0.017453292f * func_001FA888(j) * 0.5f) - *(float *)&D_L17_00161C00 * 0.017453292f;
                g = *(float *)&D_L17_00161BFC * 0.017453292f;
                func_00215C00(spC0, *(float *)&D_L17_00161C04, 1.5707964f, func_001FA748(func_001FA748(g, func_001FA7D8(func_001FA888(i) * 2.0943952f)), f21));
                func_001F9EE8(spC0, spC0, mat2);
                func_L00_001FF240(spD0, spC0, (m + 0x10));
                if (func_001F9D10((m + 0x10), D_0013E633 + 0xE9D) < 30.0f) {
                    func_L00_001EFFF0((m + 0x10), spC0, 9, m, &blk);
                }
                spD0[0] = *(u128_2D8CC8 *)(m + 0x10);
                *(float *)((char *)spD0 + 0xC) = *(float *)&D_L17_00161C04;
                if (func_L00_00200290((char *)spD0, 20.0f) != -1 && (j == 0 || j == 4)) {
                    spF0[0] = 0;
                    *(float *)((char *)spF0 + 8) = 12.0f;
                    func_001F9EC0(spF0, spF0, (m + 0xC0));
                    {
                        for (k = 0; k < *(int *)&D_L17_00161C08; k++) {
                            f20 = -1.0f;
                            if (func_001160D8() & 1) f20 = 1.0f;
                            c = func_001FA898_r(func_001F9878(func_002140F8(*(float *)&D_L17_00161C10 * 0.5f, *(float *)&D_L17_00161C10)));
                            if (c <= 0) c = 1;
                            func_001F9BF0(sp100, spC0, (m + 0x10));
                            spF0[0] = sp100[0];
                            func_001F9C30(spF0, spF0, f20);
                            len = func_001F9CB8(spF0);
                            if (f20 < 0.0f) spE0[0] = spC0[0];
                            else spE0[0] = *(u128_2D8CC8 *)(m + 0x10);
                            func_001F9C30(spF0, spF0, func_002140F8(0.0f, 0.9f));
                            w = (char *)sp100;
                            func_L00_001FF240(w, spE0, spF0);
                            f20 = D_0015EE6C;
                            f20 *= 10.0f;
                            func_L00_001FF4B0(spF0, spF0, func_002140F8(f20, len / func_001FA888(c * 4)));
                            func_L00_00273F80((float *)spE0, (char *)spF0, *(int *)&D_L17_00161C14, c & 0xFF, func_002140B0(0xFF) & 0xFF, 0, *(float *)&D_L17_00161C0C);
                        }
                    }
                }
                j++;
            } while (j < 5);
            i++;
        } while (i < 3);
    }
}
