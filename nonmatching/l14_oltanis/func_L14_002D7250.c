/* NON_MATCHING func_L14_002D7250 -- src/overlays/l14_oltanis/vendor_002ACCC0.c
 * Best so far: SIZE ours 1052 / retail 1044, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Plasmabot (class 211) update on level 14: seven-state switch over moby+0x20 (jump table). States 0-2 spawn sub
 *   Left: in state 6 the argument setup order differs (retail sets the float constants and $4/$5/$6 in a different
 *   Unblock: the scheduler order of the 18-argument call in state 6 (try the stack arguments as locals assigned in
 */
extern void func_001F99B0(void *, int, int);
extern void func_0020D960(char *, int, unsigned char *);
extern int func_001F9850(int);
extern int func_001F9908(void *);
extern void func_00213D28(void *, int, int);
extern float func_001FA888(int);
extern float func_0020D830(void *);
extern int func_L14_002D77E0(char *);
extern void func_00213DE0(void *, int, int, int);
extern void func_L14_002D84A8(char *);
extern void func_L14_002D7668(char *);
extern void func_L14_002D7AF8(char *);
extern void func_L14_002D87A0(char *);
extern int func_00215570(void *, int);
extern void func_L00_00250800(void *, int, void *);
extern unsigned char *func_L14_002DFE98(char *, char *);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_L14_002E1570(char *, char *, int);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int);
extern void func_0020D678(void *);
extern int *D_L14_001B0F30[];
extern char *D_L14_00167600;
extern float D_0015EE60 MACRO_ADDR;
extern short D_L14_0015F7EC_g __asm__("D_L14_0015F7EC");
extern short D_L14_00161AFC;
extern short D_L14_00161B04;
extern short D_L14_00161B2C;

/* Plasmabot update: a seven-state machine (jump table) that spawns its sub-objects and steers toward its target. */
void func_L14_002D7250(char *moby) {
    char *data = *(char **)(moby + 0x78);
    char *pos;
    char *q;
    char *res;
    char *tab;
    float tmp[4];
    float w[4];
    float f0;
    int v;
    int w2;
    int k;
    int arg;

    switch (*(unsigned char *)(moby + 0x20)) {
    case 0:
        v = *(int *)(data + 0x60);
        if (v == -1) {
            goto L624;
        }
        tab = *(char **)((char *)*(char **)&D_L14_0015F7EC_g + v * 32 + 0x10);
        if (*(int *)tab == 0) {
            goto L624;
        }
        w2 = *(int *)(data + 0x88);
        if (w2 == -1) {
            goto L624;
        }
        if (*(int *)D_L14_001B0F30[w2] != 3) {
            goto L624;
        }
        if (*(int *)(data + 0x1CC) == -1) {
            goto L624;
        }
        func_L14_002D7668(moby);
        pos = data + 0x100;
        *(unsigned char *)(moby + 0x20) = 1;
        *(unsigned short *)(moby + 0x34) = (*(unsigned short *)(moby + 0x34) & 0xEFFF) | 0x41;
        *(int *)(moby + 0x94) = 0;
        *(int *)(data + 0xF0) = -1;
        *(int *)(data + 0xF4) = -1;
        func_001F99B0(pos, 0, 0x40);
        func_0020D960(moby, 2, (unsigned char *)pos);
        func_001F99B0(data + 0x140, 0, 0x40);
        func_0020D960(moby, 3, (unsigned char *)(data + 0x140));
        func_001F99B0(data + 0x180, 0, 0x40);
        func_0020D960(moby, 4, (unsigned char *)(data + 0x180));
        return;
    case 1:
        if (*(short *)((char *)D_L14_00167600 + 0x86) != 20) {
            return;
        }
        *(int *)(data + 0x6C) = func_001F9850(*(int *)(data + 0x80));
        *(unsigned char *)(moby + 0x20) = 2;
        return;
    case 2:
        if (func_001F9908(data + 0x6C) == 0) {
            return;
        }
        *(unsigned short *)(moby + 0x34) = (*(unsigned short *)(moby + 0x34) | 0x1000) & 0xFFBE;
        pos = *(char **)(moby + 0x24);
        w2 = *(int *)(pos + 0x10);
        *(unsigned char *)(moby + 0x20) = 3;
        *(int *)(moby + 0x94) = w2;
        func_00213D28(moby, 2, 0);
        arg = *(int *)&D_L14_00161AFC;
        *(float *)(moby + 0x58) = 0.5f;
        k = func_001F9850(arg);
        *(int *)(data + 0x6C) = k;
        f0 = func_001FA888(k);
        *(float *)(data + 0x70) = 1.0f / f0;
        qcopy(moby + 0x10, (char *)D_L14_001B0F30[*(int *)(data + 0x84)] + 0x10);
        return;
    case 3:
        if (3.0f <= func_0020D830(moby)) {
            func_L14_002D77E0(moby);
        }
        if (!(*(unsigned char *)(moby + 0x70) & 2)) {
            goto L634;
        }
        if (*(unsigned char *)(moby + 0x52) != *(unsigned char *)(moby + 0x53)) {
            goto L634;
        }
        *(unsigned char *)(moby + 0x20) = 4;
        func_00213DE0(moby, 0, 0, 10);
        *(float *)(moby + 0x58) = 1.0f;
        goto L634;
    case 4:
        if (func_L14_002D77E0(moby) == 0) {
            goto L634;
        }
        *(unsigned char *)(moby + 0x20) = 5;
        *(int *)(data + 0x6C) = func_001F9850(*(int *)&D_L14_00161B04);
        goto L634;
    case 5:
        func_L14_002D84A8(moby);
        goto L634;
    case 6:
        pos = moby + 0x10;
        func_L14_002D7AF8(moby);
        if (func_00215570(pos, *(int *)(data + 0x1CC)) == 0) {
            goto L634;
        }
        func_L00_00250800(moby, 2, tmp);
        res = (char *)func_L14_002DFE98(moby, (char *)tmp);
        if (res != 0) {
            q = *(char **)(res + 0x78);
            w[0] = func_001F9F90(*(float *)(moby + 0x48)) * (D_0015EE60 * 0.4f);
            w[1] = func_001F9FA8(*(float *)(moby + 0x48)) * (D_0015EE60 * 0.4f);
            *(int *)&w[2] = 0;
            *(float *)q = w[0];
            *(float *)(q + 4) = w[1];
        }
        func_L14_002E1570(moby, (char *)&D_L14_00161B2C, 0);
        func_L00_0025F4A8(moby, data + 0x40, moby + 0x10, 0.0f, 0.0f, 5, 2, 4, 4.0f, 2.0f, 9.0f, 1.0f, 1, 15.0f, 1, 5, -1, 0);
        goto L624;
    default:
        goto L634;
    }
L624:
    func_0020D678(moby);
    return;
L634:
    func_L14_002D87A0(moby);
    return;
}
