/* NON_MATCHING func_L11_00311648 -- src/overlays/l11_pokitaru/vendor_002CC828.c
 * Best so far: SIZE ours 1300 / retail 1304, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Psytcopus update: switch on moby[0x20] with calls and a jump table; p3 is the best (1296 vs 1304 bytes). Cases
 *   Still differing: prologue save order (retail stores $s0 at 0x10($sp)), moby sits in $s0 in ours against $s1 in
 *   Unblock: a source form that stops gcc threading the r=0x100 path, and a way to move state to $18.
 */
extern void func_L11_00311B60(char *moby);
extern void func_L00_00264B40(float, int, int, unsigned char *);
extern float func_001F9D10(void *, void *);
extern float D_L11_00167840[];
extern void func_L00_0025B178(void *);
extern s32 func_001FA898(f32);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern float func_L00_001FF860(float, float);
extern float func_L00_0025CE58(float *p, float a, float *v, float b, float c, float d);
extern int func_00215B18(char *, float);
extern void func_L00_001FF4B0(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern char *func_L11_0031A180(char *src, void *pos, int ticks);
extern void func_L11_0031A308(char *arg, void *src);
extern int func_L00_0025D6F0(void *, void *);
extern int func_L00_0025A778(void *, void *, int);
extern void func_L00_002584A8(void *, int, int);
extern void func_L00_00260460(void *, void *, int, float, float);
extern void func_0020D678(void *);
extern int *D_L11_001B11B0[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_L11_00162058;
extern float D_L11_0016205C;


// Pokitaru psytcopus (class 1231) update: state machine on moby[0x20]
void func_L11_00311648(char *moby) {
    char *state = *(char **)(moby + 0x78);
    char *target;
    float v[4];
    int r;

    func_L11_00311B60(moby);
    target = *(char **)(state + 0x110);
    func_L00_00264B40(2.5f, (int)moby, 0, state + 0x1E0);
    if (moby[0x31] && func_001F9D10(moby + 0x10, D_L11_00167840) < 28.0f) {
        func_L00_0025B178(moby);
        moby[0x7F] = 0x16;
    }
    switch ((unsigned char)moby[0x20]) {
    case 0:
        *(short *)(state + 0x24) = 3;
        *(float *)(state + 0x20) = 3.0f;
        state[0x28] = 2;
        state[0x2A] = 6;
        func_001FA898(8.0f);
        state[0x58] = 6;
        func_001FA898(8.0f);
        state[0x5A] = 6;
        moby[0x20] = 3;
        if (moby[0x53]) {
            func_00213DE0(moby, 0, 0, func_001F9850(10));
        }
        if (*(int *)(state + 0x130)) {
            moby[0x20] = 1;
            *(u128 *)(moby + 0x10) = *(u128 *)((char *)D_L11_001B11B0[*(int *)(state + 0x134)] + 0x10);
            break;
        }
        if (moby[0x53]) {
            moby[0x20] = 3;
            func_00213DE0(moby, 0, 0, func_001F9850(10));
        }
        break;
    case 1:
        break;
    case 2:
        break;
    case 3: {
        char *t = *(char **)(D_0013E633 + 0x2E9D);
        float dx = *(float *)(t + 0x10) - *(float *)(moby + 0x10);
        float dy = *(float *)(t + 0x14) - *(float *)(moby + 0x14);
        float a = func_L00_001FF860(dx, dy);
        func_L00_0025CE58((float *)(moby + 0x48), a, (float *)(state + 0x14C),
                          D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f, D_0015EE6C * 6.2831855f);
        if (*(int *)(state + 0x114) == 2) break;
        if (moby[0x53] == 2) break;
        moby[0x20] = 4;
        func_00213DE0(moby, 2, 0, func_001F9850(10));
        break;
    }
    case 4: {
        float dx = *(float *)(target + 0x10) - *(float *)(moby + 0x10);
        float dy = *(float *)(target + 0x14) - *(float *)(moby + 0x14);
        float a = func_L00_001FF860(dx, dy);
        func_L00_0025CE58((float *)(moby + 0x48), a, (float *)(state + 0x14C),
                          D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f, D_0015EE6C * 6.2831855f);
        if (func_00215B18(moby, 15.0f)) {
            func_L00_001FF4B0(v, moby + 0xC0, D_L11_00162058);
            func_001F9BD8(v, v, moby + 0x10);
            v[2] = v[2] + D_L11_0016205C;
            *(char **)(state + 0x160) = func_L11_0031A180(moby, v, 5);
            break;
        }
        if (moby[0x70] & 2) {
            if (moby[0x53] != 3) {
                moby[0x20] = 5;
                func_00213DE0(moby, 3, 0, func_001F9850(10));
            }
        }
        break;
    }
    case 5: {
        float dx = *(float *)(target + 0x10) - *(float *)(moby + 0x10);
        float dy = *(float *)(target + 0x14) - *(float *)(moby + 0x14);
        float a = func_L00_001FF860(dx, dy);
        func_L00_0025CE58((float *)(moby + 0x48), a, (float *)(state + 0x14C),
                          D_0015EE70 * 6.2831855f, D_0015EE70 * 6.2831855f, D_0015EE6C * 6.2831855f);
        if (*(int *)(state + 0x160)) {
            if (func_00215B18(moby, 33.0f)) {
                func_L00_001FF4B0(v, moby + 0xC0, D_0015EE6C * 30.0f);
                func_L11_0031A308(*(char **)(state + 0x160), v);
                *(int *)(state + 0x160) = 0;
            }
        }
        if (moby[0x70] & 2) {
            if (moby[0x53] != 4) {
                moby[0x20] = 6;
                func_00213DE0(moby, 4, 0, func_001F9850(10));
            }
        }
        break;
    }
    case 6:
        if (moby[0x70] & 2) {
            if (moby[0x53]) {
                moby[0x20] = 3;
                func_00213DE0(moby, 0, 0, func_001F9850(10));
            }
        }
        break;
    case 7:
        r = func_L00_0025D6F0(moby, state + 0x70);
        if (r & 0x41) {
            int *p = D_L11_001B11B0[*(int *)(state + 0x13C)];
            if (func_L00_0025A778(moby + 0x10, p + 4, *p)) {
                if (moby[0x53]) {
                    moby[0x20] = 3;
                    func_00213DE0(moby, 0, 0, func_001F9850(10));
                }
                break;
            }
            r = 0x100;
        }
        if (r & 0x120) {
            func_L00_002584A8(moby, 0, -1);
            func_L00_00260460(moby, moby + 0x10, -1, 0.5f, 10.0f);
            func_0020D678(moby);
        }
        break;
    case 8:
        r = func_L00_0025D6F0(moby, state + 0x70);
        if (r & 0x160) {
            func_L00_00260460(moby, moby + 0x10, -1, 1.0f, 10.0f);
            func_L00_002584A8(moby, 0, -1);
            func_0020D678(moby);
        }
        break;
    }
}
