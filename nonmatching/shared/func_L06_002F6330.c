/* NON_MATCHING func_L06_002F6330 -- src/overlays/shared/vendor_002D9548.c
 * Best so far: SIZE ours 1148 / retail 1120, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moby class 1021 update (levels 6, 17, 18), 1120 bytes: ten-state machine on the byte at 0x20 with a jump table
 *   Differences left: the float constant 0x3C8EFA35 is hoisted differently (retail reloads it with lui/ori/mtc1 af
 *   Unblock: a way to get retail's register use for the table base and the pi/180 constant across the child loop.
 */
extern GbMoby *D_L06_00160058 MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern float D_L06_00161DC8 MACRO_ADDR;
extern float D_L06_00161DCC MACRO_ADDR;
extern float D_L06_00161DD0 MACRO_ADDR;
extern float D_L06_00161DD4 MACRO_ADDR;
extern float D_L06_00161DD8 MACRO_ADDR;
extern char D_0013E633[];
extern char *func_0020D348_m(int) __asm__("func_0020D348");
extern float func_001FA748(float, float);
extern void func_001FA1F8(void *, void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern float func_001F9D48(void *, void *);
extern int func_0022ED80(int, int, int);
extern void func_001F9BD8(void *, void *, void *);
extern float func_L00_0025CE58(float *, float *, float, float, float, float);
extern float func_001FA790(float, float);

/* Moby class 1021 update (levels 6, 17, 18): ten-state machine on the state byte at 0x20. */
void func_L06_002F6330(unsigned char *m) {
    char *d = *(char **)(m + 0x78);
    unsigned int st = m[0x20];
    char **slots = (char **)(d + 0x24);
    float tmp[3];
    float s = 0.017453292f;

    if (st >= 10) return;
    switch (st) {
    case 0: {
        int i;
        *(float *)(d + 0x10) = *(float *)(m + 0x40);
        qcopy(d, m + 0x10);
        m[0x20] = 2;
        for (i = 0; i < 7; i++) {
            char *p = func_0020D348_m(0x3FD);
            slots[i] = p;
            p[0x30] = 0x40;
            *(unsigned short *)(p + 0x32) = 0x40;
            p[0x31] = 1;
            *(u64 *)(p + 0x38) = *(u64 *)(m + 0x38);
            *(unsigned short *)(p + 0x34) = *(unsigned short *)(m + 0x34);
            qcopy(p + 0x10, m + 0x10);
            qcopy(p + 0x40, m + 0x40);
            *(float *)(p + 0x40) = func_001FA748(*(float *)(p + 0x40), (float)((i + 1) * 0x2D) * s);
            p[0x20] = 1;
            func_001FA1F8(p + 0xC0, p + 0x40);
        }
        break;
    }
    case 1:
        *(float *)(d + 0x10) = *(float *)(m + 0x40);
        qcopy(d, m + 0x10);
        m[0x20] = 3;
        func_L00_001FF4B0(tmp, m + 0xE0, D_L06_00161DD8);
        func_001F9BD8(m + 0x10, tmp, d);
        break;
    case 2:
        if (m[0xBC] == 0) {
            int flag = 0;
            int i = *(int *)(d + 0x1C);
            int k;
            if (i >= 0) {
                unsigned char *p = (unsigned char *)D_L06_00160058 + (i << 8);
                short h = *(short *)(p + 0xA6);
                if (h == 0x5A8) {
                    flag = func_001F9D48(D_0013E633 + 0xE9D, p + 0x10) < 20.0f;
                } else if (h == 0x24A) {
                    flag = p[0xBC] != 0;
                } else {
                    flag = p[0x20] >= 3;
                }
            } else {
                float f0 = func_001F9D48(m + 0x10, D_0013E633 + 0xE9D);
                if (f0 < 6.0f && D_L06_00161DD4 == 0.0f) flag = 1;
            }
            if (flag) {
                int ok = 1;
                for (k = 0; k < 7; k++) {
                    if (slots[k][0x20] != 3) ok = 0;
                }
                if (ok) {
                    func_0022ED80(0, 0, (int)m);
                    m[0x20] = 4;
                    *(int *)(d + 0x18) = 0;
                    *(int *)(d + 0x14) = 0;
                    for (k = 6; k >= 0; k--) slots[k][0x20] = 5;
                }
            }
        }
        func_L00_001FF4B0(tmp, m + 0xE0, D_L06_00161DD8);
        func_001F9BD8(m + 0x10, tmp, d);
        break;
    case 3:
        func_L00_001FF4B0(tmp, m + 0xE0, D_L06_00161DD8);
        func_001F9BD8(m + 0x10, tmp, d);
        break;
    case 4:
    case 5: {
        float f20 = 1.0471976f;
        float f1 = D_0015EE70;
        float f2 = D_0015EE6C;
        func_L00_0025CE58((float *)(d + 0x14), (float *)(d + 0x20), f20,
                          D_L06_00161DC8 * s * f1, D_L06_00161DCC * s * f1, D_L06_00161DD0 * s * f2);
        *(float *)(m + 0x40) = func_001FA790(*(float *)(d + 0x10), *(float *)(d + 0x14));
        if (f20 <= *(float *)(d + 0x14)) {
            *(unsigned short *)(m + 0x34) = *(unsigned short *)(m + 0x34) | 1;
            m[0x31] = 0;
            m[0x20] = (m[0x20] == 4) ? 6 : 7;
        }
        break;
    }
    case 8:
    case 9: {
        float f20 = 0.0f;
        float f1 = D_0015EE70;
        float f2 = D_0015EE6C;
        func_L00_0025CE58((float *)(d + 0x14), (float *)(d + 0x20), f20,
                          D_L06_00161DC8 * s * f1, D_L06_00161DCC * s * f1, D_L06_00161DD0 * s * f2);
        *(float *)(m + 0x40) = func_001FA790(*(float *)(d + 0x10), *(float *)(d + 0x14));
        if (*(float *)(d + 0x14) <= f20) {
            m[0x20] = (m[0x20] == 8) ? 2 : 3;
        }
        break;
    }
    default:
        break;
    }
}
