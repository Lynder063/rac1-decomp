/* NON_MATCHING func_L08_002DFBC0 -- src/overlays/l08_batalia/vendor_002B9438.c
 * Best so far: SIZE ours 1080 / retail 1096, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level 08 moby class 438 update (1096 bytes): a state machine on moby[0x20]: state 0 seeds the entry from D_L08
 *   Left to fix: moby sits in $s1 where retail keeps it in $s2 (and t in $s1); the slti state dispatch of retail (
 *   Housekeeping: the claim printout for this queue run (s14) was written to build-sn/try/.s14_claim.txt, outside 
 */
typedef int u128_l8 __attribute__((mode(TI)));
extern int D_L08_001B0FB0[];
extern float D_0015EE6C MACRO_ADDR;
extern short D_L08_00161AD4;
extern char D_0013E633[];
extern char D_0013D50F[];
extern float func_001F9D10(void *, void *);
extern float func_L00_00258C80(float lo, float hi);
extern void func_00215CA8(int *, int, void *, float *, int, float);
extern float func_001FA748(float, float);
extern float func_001F9CE8(void *);
extern float func_L00_001FF860(float, float);
extern void func_001F9BD8(void *, void *, void *);
extern int func_L00_001F10E0(float, void *, int, void *);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int);
extern void func_0020D678(void *);
extern char *func_L00_0025B478(void *, int, int);
extern int func_0022EE28(int, int, int);
extern void func_L00_00264DB8(int, int);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L08_002E0008(char *m, char *pos);

// Level 08 moby class 438 update: a two-stage state machine that spawns and steers its effect.
void func_L08_002DFBC0(char *moby) {
    char *data;
    char *pos;
    int *t;
    int idx;
    int state;
    char *q16;
    float pc[4];
    float buf[4];
    float f20, f0, f1, f2, g;

    pos = moby + 0x10;
    data = *(char **)(moby + 0x78);
    qcopy(pc, pos);
    idx = *(int *)data;
    t = (int *)D_L08_001B0FB0[idx];
    state = ((unsigned char *)moby)[0x20];

    if (state == 1) {
        goto cc8;
    }
    if (state == 0) {
        goto c50;
    }
    if (state == 2) {
        goto d3c;
    }
    goto e54;

c50:
    if (idx == -1) {
        goto e40;
    }
    q16 = (char *)t + 0x10;
    f20 = func_001F9D10(q16, (char *)t + 0x20);
    func_001F9D10(q16, (char *)t + (*t << 4));
    f1 = *(float *)&D_L08_00161AD4;
    f0 = D_0015EE6C;
    f2 = *(float *)(data + 0x4);
    f1 = f1 * f0;
    *(float *)(data + 0x8) = f1 / f20;
    f0 = (float)*t;
    *(float *)(data + 0x4) = f2 * f0;
    *(float *)(data + 0xC) = func_L00_00258C80(0.0f, 5.0f);
    ((unsigned char *)moby)[0x20] = 1;
    moby[0x30] = 0xFF;

cc8:
    func_00215CA8(t, 1, pos, (float *)(moby + 0x40), 0, *(float *)(data + 0x4));
    *(float *)(moby + 0x44) = *(float *)(moby + 0x44) * 0.5f;
    *(float *)(moby + 0x18) = *(float *)(moby + 0x18) + *(float *)(data + 0xC);
    f1 = *(float *)(data + 0x4);
    f0 = *(float *)(data + 0x8);
    *(float *)(data + 0x4) = f1 + f0;
    if ((float)*t < *(float *)(data + 0x4)) {
        *(float *)(data + 0x4) = *(float *)(data + 0x4) - (float)*t;
    }
    goto e54;

d3c:
    f1 = D_0015EE70 * 15.0f;
    f0 = *(float *)(data + 0x18);
    f2 = D_0015EE6C;
    f20 = 10.0f;
    *(float *)(data + 0x18) = f0 - f1;
    g = func_001FA748(*(float *)(moby + 0x40), f2 * 7.33038282f);
    *(float *)(moby + 0x40) = *(float *)(moby + 0x40) + g;
    f0 = func_001F9CE8(data + 0x10);
    f0 = func_L00_001FF860(f0, *(float *)(data + 0x18));
    *(float *)(moby + 0x44) = -f0;
    func_001F9BD8(pos, pos, data + 0x10);
    if (*(float *)(moby + 0x18) < f20) {
        goto e40;
    }
    if (func_L00_001F10E0(1.25f, pos, 0, moby) == 0) {
        goto e54;
    }
    func_L00_0025F4A8(moby, data + 0x10, pos, 0.0f, 0.0f, 0x14, 0x28, 0x10, 10.0f, 5.0f, 9.0f, 1.0f, -1, 15.0f, 1, 1, -1, 0);

e40:
    func_0020D678(moby);
    return;

e54:
    if (*(float *)(moby + 0x10) < 4.0f) {
        *(int *)(moby + 0x94) = 0;
        goto e8a8;
    }
    if (*(float *)(moby + 0x14) < 4.0f) {
        *(int *)(moby + 0x94) = 0;
        goto e8a8;
    }
    if (*(float *)(moby + 0x18) < 4.0f) {
        *(int *)(moby + 0x94) = 0;
        goto e8a8;
    }
    *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);

e8a8:
    if (func_L00_0025B478(moby, 0x10000, 0) == 0) {
        goto ffc0;
    }
    if (((unsigned char *)moby)[0x20] == 2) {
        goto ffc0;
    }
    if (*(int *)(D_0013E633 + 0x2EA1) == 50) {
        char *p2 = D_0013D50F + 1;
        if (((unsigned char *)p2)[0xC] == 0) {
            ((unsigned char *)p2)[0xC] = 1;
            func_0022EE28(1, 0, 0);
            func_L00_00264DB8(0x53DB, -1);
        }
    }
    func_001F9BF0(buf, pos, pc);
    qcopy(data + 0x10, buf);
    f0 = D_0015EE6C;
    f0 = f0 + f0;
    f1 = *(float *)(data + 0x18) + f0;
    *(float *)(data + 0x18) = f1;
    func_L00_0025F4A8(moby, buf, pos, 0.0f, 0.0f, 0x14, 0x28, 0x10, 10.0f, 5.0f, 9.0f, 1.0f, -1, 15.0f, 1, 1, -1, 0);
    ((unsigned char *)moby)[0x20] = 2;

ffc0:
    moby[0xA4] = 0xFF;
    if (((unsigned char *)moby)[0x31] != 0) {
        func_L08_002E0008(moby, (char *)pc);
    }
}
