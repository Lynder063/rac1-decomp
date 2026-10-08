/* NON_MATCHING func_L03_002DD840 -- src/overlays/shared/vendor_00292AC0.c
 * Best so far: SIZE ours 1300 / retail 1304, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Qwark watch update (moby classes 447/920): aim at the player, turn the target, set the body/head pose. Best is
 *   Left: the state-0 arm's branch sense (retail takes state == 0 as a taken branch with the 0xFF store hoisted in
 *   Unblock: a wording that gets SN to share the state sb and invert the state-0 test without the shared-store det
 */
extern void func_L01_002FC890_m(char *) __asm__("func_L01_002FC890");
extern f32 func_001F9D10_1edff8(void *, void *) __asm__("func_001F9D10");
extern void func_L00_0025B178(void *);
extern int func_001E9730();
extern void func_0020D678(void *);
extern int func_00215570_E9C38b(void *arg0, int arg1) __asm__("func_00215570");
extern void func_L00_002676A0(void *, int);
extern f32 func_001F9D48_07408(void *, void *) __asm__("func_001F9D48");
extern float func_L00_001FF860(float, float);
extern float func_001FA850(float, float);
extern float func_001F9CB8(void *a);
extern int func_001F9850(int);
extern int func_001F9908(int *arg0);
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
extern char D_L03_00166F40[];
extern char D_L03_001E3918[];
extern char D_L03_001E3950[];
extern char D_L03_001E3980[];
extern unsigned char D_0015EEB0[] MACRO_ADDR;
extern float D_0015EE64 MACRO_ADDR;
extern char *D_L03_00160058_p __asm__("D_L03_00160058") MACRO_ADDR;
extern char D_0013E633[];

/* Qwark watch update: aims at the player, turns the target and sets the body and head poses. */
void func_L03_002DD840(char *m)
{
    char *d;
    char *p;
    char *pl;
    float *pos;
    float dist;
    float rate;
    float head_rate;
    int tracking;
    float s_target[4];
    float s_eye[4];
    float s_delta[4];
    int state;

    d = *(char **)(m + 0x78);
    func_L01_002FC890_m(m);
    if (*(unsigned char *)(m + 0x31) != 0) {
        if (func_001F9D10_1edff8(m + 0x10, D_L03_00166F40) < 30.0f) {
            func_L00_0025B178(m);
            *(unsigned char *)(m + 0x7F) = 0x18;
        }
    }
    state = *(unsigned char *)(m + 0x20);
    if (state != 1) {
        if (state < 2) {
            if (state) {
            } else {
            *(unsigned char *)(m + 0x30) = 0xFF;
            if (*(int *)(d + 0x120) == -1) func_001E9730(D_L03_001E3918);
            if (*(int *)(d + 0x128) == -1) func_001E9730(D_L03_001E3950);
            if (*(int *)(d + 0x124) == -1) {
                func_001E9730(D_L03_001E3980);
                *(unsigned char *)(m + 0x20) = 1;
            } else if (*(unsigned char *)(D_L03_00160058_p + (*(int *)(d + 0x124) << 8) + 0x20) == 0) {
                *(unsigned char *)(m + 0x20) = 1;
            } else {
                if (*(int *)(d + 0x128) != -1)
                    *(unsigned char *)(D_L03_00160058_p + (*(int *)(d + 0x128) << 8) + 0x20) = 3;
                func_0020D678(m);
                return;
            }
            }
        } else if (state == 2) {
            *(unsigned char *)(m + 0x20) = 3;
        }
    } else {
        if (*(int *)(d + 0x120) != -1 &&
            func_00215570_E9C38b((char *)&D_0013E633 + 0xE9D, *(int *)(d + 0x120))) {
            func_L00_002676A0(m, 1);
            *(unsigned char *)(m + 0x20) = 2;
        }
    }
    rate = 0.02f;
    head_rate = 0.3f;
    tracking = 0;
    if (*(unsigned char *)(m + 0x53) == 0) {
        pos = (float *)(m + 0x10);
        p = (char *)&D_0013E633 + 0xE9D;
        tracking = 1;
        dist = func_001F9D48_07408(pos, p);
        pl = p - 0x80;
        if (dist < 8.0f &&
            func_001FA850(*(float *)(m + 0x48),
                func_L00_001FF860(*(float *)(pl + 0xD0) - pos[0],
                    *(float *)(pl + 0xD4) - pos[1])) < 1.5707964f) {
            if (func_001F9CB8(p + 0x80) > 0.01f)
                *(int *)(d + 0x118) = func_001F9850(120);
            else
                func_001F9908((int *)(d + 0x118));
        } else if (*(int *)(d + 0x118) != 0) {
            *(int *)(d + 0x118) = 0;
            qcopy(d + 0x100, (char *)&D_0013E633 + 0xEED);
        }
        if (func_001F9908((int *)(d + 0x11C))) {
            float heading;
            *(int *)(d + 0x11C) = func_001FA898_r(func_001F9878(func_002140F8(180.0f, 300.0f)));
            heading = func_001FA748(*(float *)(m + 0x48), func_002140F8(-90.0f, 90.0f) * 0.017453292f);
            func_00215C00(d + 0x100, 6.0f, heading, func_002140F8(0.0f, 30.0f) * 0.017453292f);
            func_001F9BD8(d + 0x100, d + 0x100, pos);
        }
        if (*(int *)(d + 0x118) != 0) {
            qcopy(s_target, (char *)&D_0013E633 + 0xEED);
            rate = 0.04f;
            head_rate = 0.3f;
        } else {
            qcopy(s_target, d + 0x100);
        }
    }
    if (tracking) {
        float yaw;
        float pitch;
        qcopy(s_eye, pos);
        s_eye[2] += 1.0f;
        func_001F9BF0(s_delta, s_target, s_eye);
        yaw = func_001FA790(func_L00_001FF860(s_delta[0], s_delta[1]), *(float *)(m + 0x48));
        pitch = -func_L00_001FF860(func_001F9CE8(s_delta), s_delta[2]);
        if (yaw > 1.5707964f) yaw = 1.5707964f;
        else if (yaw < -1.5707964f) yaw = -1.5707964f;
        if (pitch > 0.5235988f) pitch = 0.5235988f;
        else if (pitch < -0.5235988f) pitch = -0.5235988f;
        *(float *)(d + 0x64) = pitch;
        *(float *)(d + 0x68) = yaw * 0.6f;
        *(float *)(d + 0xE8) = yaw * 0.4f;
    }
    if (D_0015EEB0[0] != 0) *(float *)(d + 0x70) = 2.75f;
    func_L00_00263950(m, d, 0, rate * D_0015EE64, head_rate * D_0015EE64);
    func_L00_00263950(m, d + 0x80, 1, rate * D_0015EE64, head_rate * D_0015EE64);
}
