/* NON_MATCHING func_L12_002E7FC8 -- src/overlays/l12_hoven/vendor_002C0310.c
 * Best so far: SIZE ours 1376 / retail 1384, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Miner (class 282) update on level 12, 1384 bytes. Dispatch on state at 0x20 (==1, <2, ==2 chain), then aim the
 *   Best so far p5/p6: 1356 bytes against 1384. Remaining differences: the state-0 and state-2 blocks are laid out
 *   Unblock: a way to get the state dispatch laid out as retail (state-1 arm after the state-0/2 compares), plus t
 */
extern void func_L12_002E7EE0(char *);
extern void func_0020D678(void *);
extern int func_L00_002676E8(void *, void *);
extern void func_L02_0025D750(char *);
extern int func_L00_00267290(void *, void *);
extern void func_L01_00279398(float, void *);
extern int func_001F9850(int);
extern void func_L00_00264DB8(int, int);
extern void func_L00_002512D8(int);
extern void func_L00_00286128(void *, void *);
extern int func_0020BFC8(int, int);
extern float func_001F9D48(void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern float func_001F9CB8(void *a);
extern int func_001F9908(int *);
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern int func_001FA898_r(float) __asm__("func_001FA898");
extern float func_001FA748(float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern float func_001FA790(float, float);
extern float func_001F9CE8(void *);
extern void func_L00_00263950(char *, char *, int, float, float);
extern void *func_0020D348_m(int) __asm__("func_0020D348");
extern void func_L00_00251E30(void *);
extern void func_L12_0027C9B8(void *, void *, int);
extern unsigned char D_0013D355[] MACRO_ADDR;
extern char D_0013E633[];
extern unsigned char D_0015EEB0[] MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern int D_L12_0015F6A8 MACRO_ADDR;
extern int D_L12_0016016C MACRO_ADDR;

/* Miner (class 282) update on level 12: state machine, then aims the head and body at the player. */
void func_L12_002E7FC8(unsigned char *m) {
    char *d = *(char **)(m + 0x78);
    char *player;
    float rate;
    float head_rate;
    int tracking;
    float tgt[3];
    float eye[3];
    float delta[3];

    func_L12_002E7EE0((char *)m);
    switch (m[0x20]) {
    case 0:
        if (D_0013D355[0x13C] == 0) {
            m[0x20] = 1;
            func_L00_002676E8(m, d + 0x20);
            func_L02_0025D750((char *)m);
        } else {
            func_0020D678(m);
            return;
        }
        break;
    case 1:
        if (D_0013D355[0x13C] == 0 && func_L00_00267290(m, d + 0x20)) {
            func_L01_00279398(2.5f, m);
            *(int *)(m + 0x58) = 0;
            m[0x20] = 2;
        }
        break;
    case 2:
        if (D_L12_0015F6A8 != 2) {
            int r;
            *(float *)(m + 0x58) = 1.0f;
            D_0013D355[0x13C] = 1;
            r = func_001F9850(300);
            func_L00_00264DB8(0x2EE7, r);
            D_0013D355[0x19C] = 1;
            func_L00_002512D8(m[0xB0]);
            {
                char *base = (char *)D_L12_0016016C;
                int idx = *(int *)(d + 0x170);
                if (idx != -1) {
                    char *s = base + (idx << 7);
                    func_L00_00286128(s + 0x30, s + 0x70);
                }
            }
            func_0020BFC8(0, -1);
            m[0x20] = 1;
        }
        break;
    }

    rate = 0.02f;
    head_rate = 0.3f;
    tracking = 0;
    if (m[0x53] == 0) {
        tracking = 1;
        player = (char *)D_0013E633 + 0xE9D;
        if (func_001F9D48(m + 0x10, player) < 8.0f &&
            func_001FA850(*(float *)(m + 0x48),
                func_L00_001FF860(*(float *)(player - 0x80 + 0xD0) - *(float *)(m + 0x10),
                                  *(float *)(player - 0x80 + 0xD4) - *(float *)(m + 0x14))) < 1.5707964f) {
            if (func_001F9CB8(player + 0x80) > 0.01f)
                *(int *)(d + 0x178) = func_001F9850(120);
            else
                func_001F9908((int *)(d + 0x178));
        } else if (*(int *)(d + 0x178)) {
            *(int *)(d + 0x178) = 0;
            qcopy(d + 0x160, (char *)D_0013E633 + 0xEED);
        }
        if (func_001F9908((int *)(d + 0x17C))) {
            float heading;
            *(int *)(d + 0x17C) = func_001FA898_r(func_001F9878(func_002140F8(180.0f, 300.0f)));
            heading = func_001FA748(*(float *)(m + 0x48), func_002140F8(-90.0f, 90.0f) * 0.017453292f);
            func_00215C00(d + 0x160, 6.0f, heading, func_002140F8(0.0f, 30.0f) * 0.017453292f);
            func_001F9BD8(d + 0x160, d + 0x160, m + 0x10);
        }
        if (*(int *)(d + 0x178)) {
            qcopy(tgt, (char *)D_0013E633 + 0xEED);
            rate = 0.04f;
        } else {
            qcopy(tgt, d + 0x160);
        }
    }

    if (tracking) {
        float yaw;
        float pitch;
        qcopy(eye, m + 0x10);
        eye[2] += 1.5f;
        func_001F9BF0(delta, tgt, eye);
        yaw = func_001FA790(func_L00_001FF860(delta[0], delta[1]), *(float *)(m + 0x48));
        pitch = -func_L00_001FF860(func_001F9CE8(delta), delta[2]);
        if (yaw > 1.5707964f) yaw = 1.5707964f;
        else if (yaw < -1.5707964f) yaw = -1.5707964f;
        if (pitch > 0.5235988f) pitch = 0.5235988f;
        else if (pitch < -0.5235988f) pitch = -0.5235988f;
        *(float *)(d + 0xC4) = pitch;
        *(float *)(d + 0xC8) = yaw * 0.3f;
        *(float *)(d + 0x148) = yaw * 0.7f;
    }

    if (D_0015EEB0[0]) *(float *)(d + 0xD0) = 2.75f;
    func_L00_00263950((char *)m, d + 0x60, 1, rate * D_0015EE64, head_rate * D_0015EE64);
    func_L00_00263950((char *)m, d + 0xE0, 0, rate * D_0015EE64, head_rate * D_0015EE64);

    if (*(int *)(d + 0x180)) {
        func_L12_0027C9B8(m, *(char **)(d + 0x180), 2);
    } else {
        char *n = (char *)func_0020D348_m(0x11F);
        *(char **)(d + 0x180) = n;
        if (n) {
            *(unsigned short *)(n + 0x32) = *(unsigned short *)(m + 0x32);
            n[0x31] = 1;
            qcopy(n + 0x10, m + 0x10);
            qcopy(n + 0x40, m + 0x40);
            func_L00_00251E30(m);
        }
    }
}
