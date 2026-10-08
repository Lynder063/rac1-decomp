/* NON_MATCHING func_L00_00234800 -- src/overlays/shared/help_00232560.c
 * Best so far: SIZE ours 2092 / retail 2108, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   What it does: HeroPlatformUpdate, the per-frame moving-platform update for the hero object at D_0013F450 (stat
 *   Where it differs: p3.c (run 6) is 2092 bytes, 16 short. Prologue saves and first-use order differ (ours sinks 
 *   Unblock: the 16-byte gap needs one missing or duplicated instruction pair, found by aligning the diff in the 0
 */
/* HeroPlatformUpdate: per-frame moving-platform update for the hero object (state, collision, sequencing). */
typedef int u128 __attribute__((mode(TI)));
extern char D_0013F450[];
extern float D_0015EE70 MACRO_ADDR;
extern int func_001F9850(int);
extern float func_001FA888(int);
extern unsigned char *func_L00_0025D390(int);
extern float func_001F9CB8(void *a);
extern float func_001FA748(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern int func_L00_00261478(int unused, char *m, char *a, void *b, char *c, void *d);
extern int func_L00_002616E0(int x, char *o, float *a, float *c, float *b, float *d);
extern void func_001F9BC0(void *);
extern float func_001F9CE8(void *);
extern float func_00214D28(float *, float, float);
extern void func_L00_001FF500(float *, float *, float);
extern void func_001F9BF0(void *, void *, void *);
extern int func_L00_00261568(int x, char *o, float *p, float *q, float *r, float *s);
extern void func_001F9BD8(void *, void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA790(float, float);

void func_L00_00234800(void) {
    char *p16;
    char *p17;
    char *p18;
    char *p19;
    char *p20;
    char *p21;
    char *p22;
    unsigned char *p30;
    float fr[48];
    float f0;
    float f1;
    float f3;
    float f20;
    float f21;
    float f22;
    float f23;
    int mode;
    int s;
    int c;
    int t;
    int w;
    int r;

    mode = 0;
    f22 = 0.0f;
    f23 = *(float *)(D_0013F450 + 0x98);
    p20 = (char *)&fr[8];
    p21 = (char *)&fr[12];

    if (*(short *)(D_0013F450 + 0x30E) != 0) goto L2AC;
    c = *(int *)(D_0013F450 + 0x2FC);
    if (c == 0) goto L890;
    mode = 1;
    if (*(int *)(D_0013F450 + 0x360) != c) *(int *)(D_0013F450 + 0x364) &= ~1;
    *(int *)(D_0013F450 + 0x360) = c;
    goto L958;

L890:
    *(int *)(D_0013F450 + 0x360) = 0;
    *(int *)(D_0013F450 + 0x364) &= ~3;
    goto L958;

L2AC:
    if (*(int *)(D_0013F450 + 0x2084) == 0x1C) {
        w = *(int *)(D_0013F450 + 0x4F8);
        if (w != 0) {
            *(int *)(D_0013F450 + 0x360) = w;
            mode = 1;
            goto L958;
        }
    }
    if (*(int *)(D_0013F450 + 0x208C) == 3 && *(int *)(D_0013F450 + 0x4F8) != 0) {
        *(int *)(D_0013F450 + 0x360) = *(int *)(D_0013F450 + 0x4F8);
        mode = 1;
        goto L958;
    }
    c = *(int *)(D_0013F450 + 0x360);
    if (c == 0) goto L93C;
    mode = 1;
    r = func_001F9850(0x78);
    func_001FA888(r - *(short *)(D_0013F450 + 0x30E));
    func_001F9850(0x78);
    f22 = (float)*(short *)(D_0013F450 + 0x30E);
    goto L958;

L93C:
    *(int *)(D_0013F450 + 0x360) = 0;
    *(int *)(D_0013F450 + 0x364) &= ~3;

L958:
    if (mode == 0) return;
    p16 = D_0013F450;
    p30 = func_L00_0025D390(*(int *)(D_0013F450 + 0x360));
    if (p30 == 0) return;
    s = *(int *)(D_0013F450 + 0x208C);
    if (s != 0 && s != 0xC) goto L9C4;
    f0 = func_001F9CB8(D_0013F450 + 0x150);
    if (f0 == 0.0f && *(short *)(D_0013F450 + 0x30E) == 0 && *(short *)(D_0013F450 + 0x1F6) == 0) goto L9D8;

L9C4:
    s = *(int *)(D_0013F450 + 0x2084);
    if ((unsigned)(s - 0x18) >= 2) goto B84;

L9D8:
    p19 = D_0013F450;
    if (*(int *)(D_0013F450 + 0x364) & 1) goto B9C;
    if ((unsigned)(*(int *)(D_0013F450 + 0x2084) - 0x18) >= 2) goto B04;
    p18 = D_0013F450 + 0x4D0;
    *(u128 *)p20 = *(u128 *)(D_0013F450 + 0x4D0);
    f20 = 3.1415925f;
    p17 = D_0013F450 + 0x90;
    f21 = 0.45f;
    f0 = func_001F9F90(func_001FA748(*(float *)(D_0013F450 + 0x4E4), f20)) * f21;
    fr[8] = fr[8] + f0;
    f0 = func_001FA748(*(float *)(D_0013F450 + 0x4E4), f20);
    f0 = func_001F9FA8(f0) * f21;
    fr[9] = fr[9] + f0;
    f3 = -1.43f;
    fr[10] = fr[10] - f3;
    p16 = (char *)&fr[16];
    func_L00_00261478(*(int *)(D_0013F450 + 0x2080), *(char **)(D_0013F450 + 0x360), p18, p17, p21, p16);
    func_L00_00261478(*(int *)(D_0013F450 + 0x2080), *(char **)(D_0013F450 + 0x360), p20, p17, p20, p16);
    func_L00_002616E0(*(int *)(D_0013F450 + 0x2080), *(char **)(D_0013F450 + 0x360), (float *)p18, (float *)p17, (float *)(D_0013F450 + 0x310), (float *)p16);
    func_L00_002616E0(*(int *)(D_0013F450 + 0x2080), *(char **)(D_0013F450 + 0x360), (float *)p20, (float *)p17, (float *)(D_0013F450 + 0x330), (float *)p16);
    goto B74;

B04:
    if (*(int *)(p30 + 0x3C) & 4) {
        func_L00_002616E0(*(int *)(D_0013F450 + 0x2080), *(char **)(D_0013F450 + 0x360), (float *)(D_0013F450 + 0x80), (float *)(D_0013F450 + 0x90), (float *)(D_0013F450 + 0x310), (float *)p20);
        goto B74;
    }
    p16 = (char *)&fr[16];
    func_L00_00261478(*(int *)(D_0013F450 + 0x2080), *(char **)(D_0013F450 + 0x360), D_0013F450 + 0x80, D_0013F450 + 0x90, p21, p16);
    func_L00_002616E0(*(int *)(D_0013F450 + 0x2080), *(char **)(D_0013F450 + 0x360), (float *)p21, (float *)p16, (float *)(D_0013F450 + 0x310), (float *)p20);

B74:
    *(int *)(D_0013F450 + 0x364) |= 1;
    goto B9C;

B84:
    *(int *)(D_0013F450 + 0x364) &= ~1;

B9C:
    s = *(int *)(D_0013F450 + 0x208C);
    if (s != 0 && s != 0xC) goto C18;
    f1 = *(float *)(D_0013F450 + 0x184);
    if (f1 != 0.0f) goto C18;
    if (*(short *)(D_0013F450 + 0x30E) != 0) goto C1C;
    if (*(int *)(D_0013F450 + 0x364) & 2) goto C2C;
    func_L00_002616E0(*(int *)(D_0013F450 + 0x2080), *(char **)(D_0013F450 + 0x360), (float *)(D_0013F450 + 0x80), (float *)(D_0013F450 + 0x90), (float *)p20, (float *)(D_0013F450 + 0x320));
    *(int *)(D_0013F450 + 0x364) |= 2;
    goto C28;

C18:
    *(int *)(D_0013F450 + 0x364) &= -3;
    goto C28;

C1C:
    *(int *)(D_0013F450 + 0x364) &= -3;

C28:
    p17 = D_0013F450;

C2C:
    f20 = 0.0f;
    t = *(int *)(D_0013F450 + 0x364) & 3;
    if (t != 0) mode = 2;
    func_001F9BC0(p20);
    func_001F9BC0(p21);
    if (f22 == f20) goto CF8;
    p16 = D_0013F450 + 0x350;
    f0 = func_001F9CE8(p16);
    f1 = *(float *)(D_0013F450 + 0x358);
    fr[45] = f0;
    fr[44] = f1;
    if (*(int *)(p30 + 0x3C) & 2) goto CE0;
    func_00214D28((float *)&fr[44], f20, D_0015EE70 * 25.0f * f22);
    func_00214D28((float *)&fr[45], f20, (D_0015EE70 + D_0015EE70) * f22);
    func_L00_001FF500((float *)p20, (float *)p16, fr[45]);
    fr[10] = fr[44];
    goto CE8;

CE0:
    *(u128 *)p20 = *(u128 *)p16;

CE8:
    *(u128 *)p21 = *(u128 *)p20;
    goto FD4;

CF8:
    if (mode != 1) goto D3C;
    func_L00_00261478(*(int *)(D_0013F450 + 0x2080), *(char **)(D_0013F450 + 0x360), D_0013F450 + 0x80, D_0013F450 + 0x90, (char *)fr, (char *)&fr[4]);
    *(float *)(D_0013F450 + 0x98) = fr[6];
    func_001F9BF0(p20, (char *)fr, D_0013F450 + 0x80);
    goto FC0;

D3C:
    if (mode != 2) goto FD4;
    p30 = (unsigned char *)&fr[16];
    func_L00_00261478(*(int *)(D_0013F450 + 0x2080), *(char **)(D_0013F450 + 0x360), D_0013F450 + 0x80, D_0013F450 + 0x90, (char *)&fr[16], (char *)&fr[20]);
    p16 = D_0013F450 + 0x320;
    p19 = (char *)&fr[24];
    func_L00_00261568(*(int *)(D_0013F450 + 0x2080), *(char **)(D_0013F450 + 0x360), (float *)(D_0013F450 + 0x310), (float *)p16, (float *)&fr[24], (float *)&fr[28]);
    p22 = (char *)&fr[32];
    func_L00_00261568(*(int *)(D_0013F450 + 0x2080), *(char **)(D_0013F450 + 0x360), (float *)(D_0013F450 + 0x330), (float *)p16, (float *)&fr[32], (float *)&fr[36]);
    s = *(int *)(D_0013F450 + 0x2084);
    if (s == 1 || s == 0x1E) {
        f0 = fr[22];
        if (*(unsigned char *)(D_0013F450 + 0x20A5) != 0) {
            *(float *)(D_0013F450 + 0x98) = f0;
            goto DEC;
        }
    }
    if (*(int *)(D_0013F450 + 0x364) & 2) f0 = fr[30];
    else f0 = fr[22];
    *(float *)(D_0013F450 + 0x98) = f0;

DEC:
    p17 = D_0013F450;
    if ((*(int *)(D_0013F450 + 0x364) & 1) == 0) goto FA8;
    s = *(int *)(D_0013F450 + 0x2084);
    if ((unsigned)(s - 0x18) >= 2) goto EB0;
    p16 = D_0013F450 + 0x80;
    f20 = 0.45f;
    fr[40] = func_001F9F90(*(float *)(D_0013F450 + 0x4E4)) * f20;
    fr[41] = func_001F9FA8(*(float *)(D_0013F450 + 0x4E4)) * f20;
    fr[42] = 0.0f;
    p16 = (char *)&fr[40];
    func_001F9BD8(p16, p16, p22);
    f0 = fr[42];
    f1 = -1.43f;
    f0 = f0 + f1;
    fr[42] = f0;
    func_001F9BF0(p20, p30, D_0013F450 + 0x80);
    *(u128 *)(D_0013F450 + 0x4D0) = *(u128 *)p16;
    f0 = func_L00_001FF860(fr[24] - fr[32], fr[25] - fr[33]);
    *(float *)(D_0013F450 + 0x4E4) = f0;
    goto FBC;

EB0:
    p16 = D_0013F450 + 0x80;
    func_001F9BF0(p20, p19, p16);
    f1 = func_001F9CB8(p20);
    if (f1 < 0.0001f) {
        func_001F9BC0(p20);
        *(u128 *)(D_0013F450 + 0x80) = *(u128 *)p19;
        goto F44;
    }
    if (2.0f < f1) {
        func_001F9BC0(p20);
        *(int *)(D_0013F450 + 0x364) &= ~3;
    }

F44:
    p17 = D_0013F450 + 0x4D0;
    func_001F9BD8(p17, p17, p20);
    p16 = (char *)&fr[40];
    func_001F9BF0(p16, p20, D_0013F450 + 0x140);
    f0 = func_001F9CB8(p16);
    if (0.1f < f0) *(int *)(D_0013F450 + 0x364) &= ~1;
    goto FBC;

FA8:
    func_001F9BF0(p20, p30, D_0013F450 + 0x80);
    *(u128 *)p21 = *(u128 *)p20;

FBC:
FC0:
    *(u128 *)(D_0013F450 + 0x350) = *(u128 *)p20;
    p16 = D_0013F450 + 0xF0;

FD4:
    func_001F9BD8(p16, p16, p20);
    p16 = D_0013F450;
    *(float *)(D_0013F450 + 0xFC) = func_001FA790(*(float *)(D_0013F450 + 0x98), f23);
}
