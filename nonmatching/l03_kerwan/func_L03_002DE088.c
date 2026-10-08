/* NON_MATCHING func_L03_002DE088 -- src/overlays/l03_kerwan/vendor_002CB280.c
 * Best so far: SIZE ours 1060 / retail 1068, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Taxi (class 1012) update on level 03: four-state machine on moby+0x20; states 1 picks the nearer of two route 
 *   Left: the missing block is not pinned down (candidate under-sized, so a whole path is absent or merged); retai
 *   Unblock: a side-by-side of states 1 and 3 against the candidate (the retail L2EC and L3D0 blocks are the large
 */
extern int func_L03_002DDEF8(void);
extern void func_L00_002676A0(void *, int);
extern void func_001F9908(int *arg0);
extern float func_001F9D10_1edff8(void *, void *) __asm__("func_001F9D10");
extern int func_00215570(void *, int);
extern int func_L01_00278FA8(void *);
extern void func_L03_002DDF90(char *, int);
extern void func_L00_00234768(float *, int, float);
extern int func_L00_002347B8(void);
extern int func_L03_002D4CE0(char *, int, char *);
extern int func_001F9850(int);
extern void func_L03_002DE4B8(char *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_L00_002617B0(char *, void *, void *, void *);
extern float func_001F9D48(void *, void *);
extern char *D_L03_001B08B0[];
extern char D_0013E633[];
extern char D_0013A5E0[];
extern short D_L03_0015F674_g __asm__("D_L03_0015F674");

/* Taxi update: picks the nearer of two route points and steers toward it, moving through the four states. */
void func_L03_002DE088(char *moby) {
    char *data = *(char **)(moby + 0x78);
    char *pos = moby + 0x10;
    char *addr = D_0013E633 + 0xE9D;
    char sp0[16];
    char sp10[16];
    char tmp[16];
    int s20;
    int s23;
    int r;
    int t;
    float f20;
    float f0;

    if (*(int *)(data + 0x90) == -1) {
        return;
    }
    if (*(int *)(data + 0x94) == -1) {
        return;
    }
    r = func_L03_002DDEF8();
    func_L00_002676A0(moby, r);
    qcopy(sp0, pos);
    qcopy(sp10, moby + 0x40);
    func_001F9908((int *)(data + 0x88));

    if (*(unsigned char *)(moby + 0x20) == 1) {
        goto S1;
    }
    if (*(unsigned char *)(moby + 0x20) < 2) {
        /* state 0 */
        *(unsigned char *)(moby + 0xBC) = *(unsigned char *)(data + 0x80);
        t = *(int *)(data + 0x90 + 4 * *(unsigned char *)(moby + 0xBC));
        qcopy(pos, D_L03_001B08B0[t] + 0x10);
        *(int *)(data + 0xA4) = -1;
        *(int *)(data + 0x88) = 0;
        *(unsigned char *)(moby + 0x20) = 1;
        *(unsigned char *)(moby + 0x30) = 0xFF;
        *(unsigned short *)(moby + 0x32) = 0xFF;
        goto L404;
    }
    if (*(unsigned char *)(moby + 0x20) == 2) {
        if (func_L00_002347B8() == 0) {
            *(unsigned char *)(moby + 0x20) = 3;
        }
        goto L404;
    }
    if (*(unsigned char *)(moby + 0x20) == 3) {
        if (func_L01_00278FA8(moby) != 0) {
            *(short *)(D_0013E633 + 0xE1D + 0x1F4) = 4;
            *(short *)(D_0013E633 + 0xE1D + 0x1F2) = 4;
        }
        t = *(int *)(data + 0x90 + 4 * *(unsigned char *)(moby + 0xBC));
        r = func_L03_002D4CE0(moby, t, data + 0x78);
        if (r == 0) {
            goto L404;
        }
        *(unsigned char *)(moby + 0x20) = 1;
        *(int *)(data + 0x88) = func_001F9850(0xF);
        goto L404;
    }
    goto L404;

S1:
    f20 = func_001F9D10_1edff8(addr, D_L03_001B08B0[*(int *)(data + 0x90)] + 0x10);
    f0 = func_001F9D10_1edff8(addr, D_L03_001B08B0[*(int *)(data + 0x94)] + 0x10);
    s20 = f20 < f0;
    f20 = func_001F9D10_1edff8(pos, D_L03_001B08B0[*(int *)(data + 0x90)] + 0x10);
    f0 = func_001F9D10_1edff8(pos, D_L03_001B08B0[*(int *)(data + 0x94)] + 0x10);
    s23 = f20 < f0;
    if (*(int *)(data + 0x7C) != 0) {
        goto L2EC;
    }
    if (*(int *)(data + 0x8C) != 0) {
        goto L27C;
    }
    if (func_00215570(addr, *(int *)(data + 0xA0)) != 0) {
        goto L27C;
    }
    /* L2D0 */
    if (*(int *)(data + 0x7C) != 0) {
        goto L2EC;
    }
    *(int *)(moby + 0x94) = 0;
    *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) | 0x41;
    goto L404;

L27C:
    *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) & 0xFFBE;
    *(unsigned char *)(moby + 0xBC) = s20;
    *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);
    t = *(int *)(data + 0x90 + s20 * 4);
    qcopy(pos, D_L03_001B08B0[t] + 0x10);
    *(unsigned char *)(moby + 0x20) = 3;
    *(int *)(data + 0x7C) = 1;
    *(int *)(data + 0x64) = 1;
    *(int *)(data + 0x84) = 0;
    goto L404;

L2EC:
    if (*(int *)(data + 0x84) == 0) {
        goto L370;
    }
    if (func_L01_00278FA8(moby) == 0) {
        goto L370;
    }
    func_L03_002DDF90(moby, *(int *)(data + 0x98 + 4 * (*(unsigned char *)(moby + 0xBC) ^ 1)));
    if ((*(int *)(D_0013A5E0 + 0x2604) & 0x10) == 0) {
        goto L404;
    }
    if (*(int *)&D_L03_0015F674_g != 8) {
        goto L404;
    }
    func_L00_00234768((float *)pos, 0, *(float *)(moby + 0x48));
    *(unsigned char *)(moby + 0xBC) = *(unsigned char *)(moby + 0xBC) ^ 1;
    *(int *)(data + 0x64) = 1;
    *(int *)(data + 0x84) = 0;
    *(unsigned char *)(moby + 0x20) = 2;
    goto L404;

L370:
    if (s20 == s23) {
        goto L404;
    }
    *(unsigned char *)(moby + 0x20) = 3;
    *(unsigned char *)(moby + 0xBC) = *(unsigned char *)(moby + 0xBC) ^ 1;
    *(int *)(data + 0x64) = 1;
    *(int *)(data + 0x84) = 0;
    goto L404;

L404:
    func_L03_002DE4B8(moby);
    func_001F9BF0(tmp, pos, sp0);
    func_L00_002617B0(data + 0x20, tmp, sp10, moby + 0x40);
    if (func_L01_00278FA8(moby) != 0) {
        return;
    }
    f0 = func_001F9D48(pos, addr);
    if (!(2.0f < f0)) {
        return;
    }
    if (*(int *)(data + 0x88) != 0) {
        return;
    }
    *(int *)(data + 0x84) = 1;
}
