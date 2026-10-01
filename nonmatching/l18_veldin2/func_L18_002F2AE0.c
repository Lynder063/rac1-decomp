/* NON_MATCHING func_L18_002F2AE0 -- src/overlays/l18_veldin2/vendor_002F2AE0.c
 * Best so far: BYTES 9/1368 (99.3% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   ## Round 2 (worker, 9 of 14 runs; best p13.c, BYTES 72/1368, size now matches)
 *   - Size fix: declare an alias WITHOUT MACRO_ADDR: `extern unsigned char *D_L18_00160058_b __asm__("D_L18_001600
 *   and use it in case 0 only -> lui+lw form, 1368 bytes (p11). Rest of the function keeps the gp-form symbol.
 *   - VG struct: pad2[14] (s30E at 0x30E, was 0x306 wrong).
 *   - Remaining: case 0 loop regs (retail t=$a0, idx=$a1, `addu v1,v1,a3`; ours t=$a1, idx=$a0, addu a3,v1) and th
 *   daddu/lui delay-slot order; case 2 sb/daddu order; bne operand order at 0x268; final spawn arg setup order.
 *   - Tried with identical bytes: base local vs inline, for vs while, unsigned short *t (p12-p15); do-while (p17, 
 *   size lost); struct-array indexing (p16, mult emitted, worse). Allocator/scheduler tie.
 */
#include "common.h"

typedef struct { int idx; char pad[0x2C]; } VEnt;
typedef struct {
    int pad0;
    int i4;
    int i8;
    char padC[4];
    char v10[0x10];
    char v20[0x10];
    char pad30[0x20];
    VEnt ent[15];
    char pad320[0x10];
    float f330;
    float f334;
    int cnt;
    char pad33C[4];
    float f340;
    float f344;
    int f348;
    int f34C;
    int f350;
} VData;

typedef struct { char pad[0x2FC]; unsigned char *p2FC; char pad2[14]; short s30E; } VG;
extern unsigned char *D_L18_00160058 MACRO_ADDR;
extern unsigned char *D_L18_00160058_b __asm__("D_L18_00160058");
extern char *D_L18_0016016C MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern short *D_L18_001AC540[];
extern char D_0013E633[];
extern short D_L18_00162318;
extern short D_L18_00162320;
extern short D_L18_00162324;
extern short D_L18_00162328;
extern short D_L18_0016232C;
extern short D_L18_00162330;
extern short D_L18_00162334;
extern short D_L18_00162344;
extern short D_L18_00162348;
extern short D_L18_0016234C;
extern short D_L18_00162350;
extern float D_L18_00167858;
extern float D_L18_0015F660[] MACRO_ADDR;

extern int func_001F9850(int);
extern void func_L12_0027C260(char *, void *, int);
extern void func_L12_0027C368_v(char *, void *, int) __asm__("func_L12_0027C368");
extern float func_00214D88(float, float, float, float, float *, float *);
extern int func_001F9908(int *);
extern void func_L18_002FBD40(void *);
extern void func_0020D678(void *);
extern void func_001F9C08(void *, void *, void *, float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern int func_002140B0(int);
extern float func_002140F8(float, float);
extern float func_001FA748(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_L01_002F9908(void *, void *, unsigned int, int, float, float, float, float, int);

void func_L18_002F2AE0(unsigned char *moby) {
    VData *d = *(VData **)(moby + 0x78);
    if (d) {
        float a1 = *(float *)&D_L18_00162320 * D_0015EE70;
        float a2 = *(float *)&D_L18_00162324 * D_0015EE70;
        float a3 = *(float *)&D_L18_00162328 * D_0015EE6C;
        float b1 = *(float *)&D_L18_0016232C * D_0015EE70;
        float b2 = *(float *)&D_L18_00162330 * D_0015EE70;
        float b3 = *(float *)&D_L18_00162334 * D_0015EE6C;
        switch (moby[0x20]) {
        case 0: {
            short **tp;
            short *t;
            int j;
            qcopy(d->v10, moby + 0x10);
            qcopy(d->v20, moby + 0x40);
            tp = D_L18_001AC540 + moby[0x21];
            j = 0;
            t = *tp;
            if (t == 0) return;
            while (j < 16) {
                int idx = (unsigned short)*t & 0x7FFF;
                if (*(short *)((idx << 8) + (int)D_L18_00160058_b + 0xA6) == 0x630) {
                    d->ent[j].idx = idx;
                    j++;
                }
                if (*t++ < 0) break;
            }
            d->f348 = 0;
            d->f350 = 0;
            d->f34C = func_001F9850(5);
            d->cnt = j;
            func_L12_0027C260(moby, (char *)d + 0x30, j);
            moby[0x20] = 1;
            break;
        }
        case 2: {
            int v9;
            int i;
            unsigned char *p;
            if (*(int *)&D_L18_00162318 != 0) {
                if (d->f330 < 1.5f) {
                    func_00214D88(1.5f, a1, a2, a3, &d->f330, &d->f334);
                } else {
                    func_00214D88(2.0f, b1, b2, b3, &d->f330, &d->f334);
                }
            }
            if (d->f330 > *(float *)&D_L18_00162348 && d->f344 == 0.0f) {
                d->f344 = *(int *)&D_L18_0016234C;
            }
            if (d->f330 > *(float *)&D_L18_00162344 && d->i8 != 0) {
                moby[0x20] = 4;
            }
            v9 = 0;
            for (i = 0; i < d->cnt; i++) {
                unsigned char *e = D_L18_00160058 + (d->ent[i].idx << 8);
                if (((VG *)(D_0013E633 + 0xE1D))->p2FC == e) {
                    d->f350++;
                    if (func_001F9850(30) < d->f350) d->f348 = 1;
                    v9 = 1;
                    break;
                }
            }
            p = ((VG *)(D_0013E633 + 0xE1D))->p2FC;
            if (p != 0) {
                short s = *(short *)(p + 0xA6);
                if (s == 0x764) v9 = 1;
                if (s == *(short *)(moby + 0xA6)) {
                    if (p[0x20] == 4) v9 = 1;
                }
            }
            if (d->f348 != 0 && v9 == 0 && ((VG *)(D_0013E633 + 0xE1D))->s30E == 0) {
                if (func_001F9908(&d->f34C)) moby[0x20] = 4;
            }
            break;
        }
        case 4: {
            float t = D_0015EE70 * 5.0f;
            *(float *)(moby + 0x18) += d->f340;
            d->f340 = d->f340 - t;
            if (*(float *)(moby + 0x18) < 20.0f) {
                int i;
                for (i = 0; i < d->cnt; i++) {
                    func_L18_002FBD40(D_L18_00160058 + (d->ent[i].idx << 8));
                }
                func_0020D678(moby);
                return;
            }
            break;
        }
        }
        if ((unsigned char)(moby[0x20] - 1) < 2) {
            func_001F9C08(moby + 0x10, d->v10, D_L18_0016016C + (d->i4 << 7) + 0x30, d->f330 * 0.5f);
            func_001F9C08(moby + 0x40, d->v20, D_L18_0016016C + (d->i4 << 7) + 0x70, d->f330 * 0.5f);
        }
        func_L12_0027C368_v(moby, (char *)d + 0x30, d->cnt);
        if (d->f344 != 0.0f) {
            if (moby[0x20] != 4) {
                float v[4];
                float s, z, f20;
                int n;
                d->f344 = d->f344 + 0.25f;
                if (func_002140B0(func_001FA898_r(d->f344)) == 0) {
                    s = func_002140F8(-1.0471976f, 1.0471976f);
                    f20 = func_001FA748(s, D_L18_00167858);
                    z = func_002140F8(0.0f, 20.0f);
                    v[0] = func_001F9F90(f20) * z;
                    v[1] = func_001F9FA8(f20) * z;
                    v[2] = 15.0f;
                    func_001F9BD8(v, v, D_0013E633 + 0xE9D);
                    n = func_001F9850(240);
                    func_L01_002F9908(v, D_L18_0015F660, 0x2B8, n,
                                      *(float *)&D_L18_00162350, 2.0f, 1.0f, 0.75f, 0);
                }
            }
        }
    }
}
