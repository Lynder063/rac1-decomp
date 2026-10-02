/* NON_MATCHING func_L17_002F3450 -- src/overlays/l17_fleet/vendor_002F1558.c
 * Best so far: BYTES 16/1988 (99.2% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - r7 p6: BYTES 26. case0 idx twice: worse.
 *   - r8 p7: BYTES 18. case0 via block-local int base = (int)D: case 0 matches.
 *   - r9 p8: BYTES 29. int base in swap/case2 (case 2 matches); xor order dir,side,sel.
 *   - r10 p9: BYTES 16. swap: t = sel^1; dir^=1; side^=1; sel=t. Only swap block regs left.
 *   - r11 p10: BYTES 16, same. computed values then stores.
 *   - r12 p11: BYTES 16, same. t at function scope.
 *   - r13 p12: BYTES 16, same. base read before idx. Stop: three changes, same diffs.
 *   Left (best p9): swap block (+0x530..+0x57C) register allocation: retail t=sel^1 in $a0, t*4/address in $a1, D 
 */
#include "common.h"

extern void func_00213DE0(void *, int, int, int);
extern int func_0022ED80(int, int, int);
extern int func_001F9850(int);
extern int func_L00_00265558(int);
extern void func_001F4E08(int);
extern void func_001F9BC0(void *);
extern float func_L00_001FF860(float, float);
extern float func_001F9D48(void *, void *);
extern void func_L00_002EBF50(void *, void *, int, int, int);
extern void func_L02_002F9ED8(float, float, float, float, float, float);
extern void func_L00_002EBE88(void *);
extern void func_L00_002EBEE0(void *);
extern void func_L00_00217718(void *, void *, int, int);
extern void func_001FA1F8(void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_001FA748(float, float);
extern void func_L00_002EC0C8(int);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_002617B0(char *, void *, void *, void *);

extern char D_0013E633[];
extern char D_0013A5E0[];
extern unsigned char D_0014171B[] NOT_SDA;
extern int D_0015EE84_m __asm__("D_0015EE84") MACRO_ADDR;
typedef struct { char pad0[0x454]; unsigned char collected[1]; } LevelState;
extern LevelState D_L17_001BBE40;
typedef int u128_2F3450 __attribute__((mode(TI)));
extern int D_L17_001BB0E0[];
extern char *D_L17_0016016C MACRO_ADDR;
extern char D_L17_001B10B0[];
extern short D_L17_0016242C;
extern short D_L17_00162428;
extern short D_L17_0015F674;

typedef struct {
    char pad0[0x20];
    char area[0x40];
    int a[2];
    int b[2];
    char pad70[8];
    int cam[2];
    int dir;
    int cut;
    int w88;
    char pad8C[8];
    int sel;
    int side;
    float f9C;
    float fA0;
    int wA4;
    int go;
    int sfx;
    int timer;
} Vars1448;

/* UpdateMoby 1448: a moby that alternates between two camera points and starts a cutscene on a button press. */
void func_L17_002F3450(unsigned char *m) {
    Vars1448 *v = *(Vars1448 **)(m + 0x78);
    float old_pos[4];
    float old_rot[4];
    float delta[4];
    float b[4];
    float rot[4];
    float a[4];
    int t;
    int idx;
    int base;
    char *p;
    char *pl;

    qcopy(old_pos, m + 0x10);
    qcopy(old_rot, m + 0x40);
    *(float *)(m + 0x2C) = *(float *)(*(char **)(m + 0x24) + 0x24) * *(float *)&D_L17_0016242C;
    v->timer += 1;
    switch (m[0x20]) {
    case 0:
        if (D_L17_001BBE40.collected[(short)*(unsigned short *)(m + 0xB2)] != 0
            || (*(int *)(D_0014171B + 0xAB75 + (((short)*(unsigned short *)(m + 0xB2) >> 5) * 4 + (D_0015EE84_m << 8))) >> (*(unsigned short *)(m + 0xB2) & 0x1F)) & 1) {
            v->sel = 0;
            v->dir = 0;
            v->side = 0;
        }
        m[0x30] = 0xFF;
        *(short *)(m + 0x32) = 0x80;
        *(long *)(m + 0x38) = *(long *)(*(char **)(D_0013E633 + 0x2E9D) + 0x38);
        m[0x20] = 1;
        v->timer = 0;
        if (m[0x53] != 2) {
            func_00213DE0(m, 2, 0, 0);
        }
        {
            int base = (int)D_L17_0016016C;
            v->sel = 1;
            v->side = 1;
            v->dir = 1;
            *(u128_2F3450 *)(m + 0x10) = *(u128_2F3450 *)((v->cam[1] << 7) + base + 0x30);
            *(u128_2F3450 *)(m + 0x40) = *(u128_2F3450 *)((v->cam[1] << 7) + base + 0x70);
        }
        break;
    case 1:
        if (m[0x53] == 2 && (m[0x70] & 2) && v->sfx == 0) {
            func_0022ED80(1, 0, (int)m);
            v->sfx = 0;
        }
        pl = D_0013E633 + 0xE1D;
        if (*(unsigned char **)(pl + 0x2FC) == m && *(short *)(pl + 0x30E) == 0
            && func_001F9850(30) < v->timer) {
            func_L17_002F3C18(m);
            if ((*(int *)(D_0013A5E0 + 0x2604) & 0x10) && *(int *)&D_L17_0015F674 == 10) {
                int s = v->dir;
                if (s >= 0) {
                    v->go = 1;
                    switch (s) {
                    case 0: {
                        float x = *(float *)&D_L17_0016242C;
                        float y = *(float *)&D_L17_00162428;
                        v->sel = 1;
                        v->f9C = x;
                        v->fA0 = y;
                        v->side = 0;
                        break;
                    }
                    case 1: {
                        float x = *(float *)&D_L17_00162428;
                        float y = *(float *)&D_L17_0016242C;
                        v->side = s;
                        v->f9C = x;
                        v->fA0 = y;
                        v->sel = 0;
                        break;
                    }
                    }
                }
            }
        }
        if (v->go != 0) {
            v->go = 0;
            func_L00_00265558(10);
            m[0x20] = 2;
            func_0022ED80(2, 0, (int)m);
            if (m[0x53] != 0) {
                func_00213DE0(m, 0, 0, 0);
            }
            func_001F4E08(func_001F9850(10));
            v->w88 = 0;
            idx = v->side;
            qcopy(a, ((char **)D_L17_001B10B0)[v->a[idx]] + 0x10);
            qcopy(b, ((char **)D_L17_001B10B0)[v->b[idx]] + 0x10);
            func_001F9BC0(rot);
            rot[2] = func_L00_001FF860(b[0] - a[0], b[1] - a[1]);
            rot[1] = -func_L00_001FF860(func_001F9D48(a, b), b[2] - a[2]);
            func_L00_002EBF50(a, rot, 2, func_001F9850(300), 0);
            func_L02_002F9ED8(0.001f, 1.0f, 1.0f, 0.001f, 1.0f, 1.0f);
            func_L00_002EBE88(a);
            func_L00_002EBEE0(rot);
            func_L00_00217718(D_L17_0016016C + (v->cut << 7) + 0x30, D_L17_0016016C + (v->cut << 7) + 0x70, 0x72, 0);
        } else if (D_L17_001BBE40.collected[(short)*(unsigned short *)(m + 0xB2)] != 0
                   || (*(int *)(D_0014171B + 0xAB75 + (((short)*(unsigned short *)(m + 0xB2) >> 5) * 4 + (D_0015EE84_m << 8))) >> (*(unsigned short *)(m + 0xB2) & 0x1F)) & 1) {
            float d = func_001F9D48(D_0013E633 + 0xE9D, D_L17_0016016C + (v->cam[v->sel] << 7) + 0x30);
            if (func_001F9D48(D_0013E633 + 0xE9D, D_L17_0016016C + (v->cam[v->sel ^ 1] << 7) + 0x30) < d) {
                t = v->sel ^ 1;
                v->dir ^= 1;
                v->side ^= 1;
                v->sel = t;
                base = (int)D_L17_0016016C;
                idx = v->cam[t] << 7;
                qcopy(m + 0x10, (char *)(idx + base + 0x30));
                qcopy(m + 0x40, (char *)(idx + base + 0x70));
                func_001FA1F8(m + 0xC0, m + 0x40);
                *(float *)(m + 0x2C) = *(float *)(*(char **)(m + 0x24) + 0x24);
            }
        }
        break;
    case 2:
        if (func_L17_002F3CC0(m, v->side)) {
            m[0x20] = 3;
            v->wA4 = 0;
            idx = v->cam[v->sel] << 7;
            base = (int)D_L17_0016016C;
            qcopy(m + 0x10, (char *)(idx + base + 0x30));
            qcopy(m + 0x40, (char *)(idx + base + 0x70));
            func_001FA1F8(m + 0xC0, m + 0x40);
            *(float *)(m + 0x2C) = *(float *)(*(char **)(m + 0x24) + 0x24);
            qcopy(b, m + 0x10);
            func_L00_001FF4B0(a, m + 0xC0, -2.0f);
            func_001F9BD8(a, a, m + 0xE0);
            func_001F9BD8(b, b, a);
            func_001F9BC0(rot);
            rot[2] = func_001FA748(*(float *)(m + 0x48), 3.1415927f);
            func_L00_00217718(b, rot, 0, 0);
            func_L00_002EC0C8(0);
            *(int *)(D_0014171B + 0xAB75 + (((short)*(unsigned short *)(m + 0xB2) >> 5) * 4 + (D_0015EE84_m << 8))) |= 1 << (*(unsigned short *)(m + 0xB2) & 0x1F);
            D_L17_001BB0E0[(short)*(unsigned short *)(m + 0xB2) >> 5] |= 1 << (*(unsigned short *)(m + 0xB2) & 0x1F);
        }
        break;
    case 3:
        m[0x20] = 1;
        v->timer = 0;
        if (m[0x53] != 2) {
            func_00213DE0(m, 2, 0, func_001F9850(30));
        }
        func_0022ED80(0, 0, (int)m);
        v->sfx = 1;
        break;
    }
    func_001F9BF0(delta, m + 0x10, old_pos);
    func_L00_002617B0(v->area, delta, old_rot, m + 0x40);
}
