/* NON_MATCHING func_L07_0031B620 -- src/overlays/l07_umbris/vendor_00313D28.c
 * Best so far: SIZE ours 1920 / retail 1940, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Machine-gun turret update (class 1126): aims two turret angles from the target vector, then a state machine on
 *   Remaining differences: retail keeps data+0x20 and data+0x60 in saved registers from the top of the function (o
 */
extern void *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern int func_0022ED80(int, int, int);
extern void func_L00_002584A8(void *, int, int);
extern int func_001F9850(int);
extern void func_L00_0025E4B0(void *, short *);
extern void func_00213DE0(void *, int, int, int);
extern void func_L00_0025E590(void *, void *);
extern float func_L00_001FF860(float, float);
extern float func_L00_0025F368(float);
extern int func_001F9938(void *);
extern void func_L00_00250800(void *, int, void *);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern unsigned char *func_L07_0030C918(void *, float *, int, int);
extern float func_001F9D48(void *, void *);
extern float func_001FA748(float, float);
extern float func_001FA850(float, float);
extern float D_0015EE6C MACRO_ADDR;
extern char *D_L07_00160058 MACRO_ADDR;
extern char D_0013E633[];

/* Machine-gun turret update (moby class 1126): aims the turret at its target and runs the state machine on the moby's state byte. */
void func_L07_0031B620(char *moby)
{
    char *data;
    int cnt;
    float buf[8];
    float f0, f1, f2, f13;
    int h;
    char *p;
    char *d20;

    if (moby == 0) {
        return;
    }
    data = *(char **)(moby + 0x78);
    if (data == 0) {
        return;
    }
    d20 = data + 0x20;
    func_L00_0025B4D0(moby, func_L00_0025B478(moby, 0x230000, 0), d20, 0, &cnt, (float *)0, 0, 4);
    if ((unsigned char)moby[0x20] < 2 && cnt >= 2) {
        func_0022ED80(1, 0, (int)moby);
        func_L00_002584A8(moby, 0, -1);
        *(short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) & 0xEFFF;
        data[0x67] = 0xFA;
        *(short *)(data + 0x26) = func_001F9850(0x3C);
        func_L00_0025E4B0(moby, (short *)(data + 0x60));
        *(short *)(data + 0x7C) = func_001F9850(0x3C);
        if (*(unsigned char *)(moby + 0x53) != 2) {
            func_00213DE0(moby, 2, 0, 5);
        }
        moby[0x20] = 2;
    }
    moby[0xA4] = 0xFF;
    func_L00_0025E590(moby, data + 0x60);

    switch ((unsigned char)moby[0x20]) {
    case 0:
        if (*(int *)(data + 0x70) != -1) {
            p = D_L07_00160058 + (*(int *)(data + 0x70) << 8);
            f1 = *(float *)(moby + 0x10);
            f0 = *(float *)(moby + 0x14);
            f13 = *(float *)(p + 0x14) - f0;
            f0 = *(float *)(p + 0x10) - f1;
            f1 = func_L00_001FF860(f0, f13);
            *(float *)(data + 0x80) = f1;
            if (f1 < 0.0f) {
                *(float *)(data + 0x80) = f1 + 6.2831855f;
            }
        }
        if (*(int *)(data + 0x74) == -1) {
            *(float *)(data + 0x84) = *(float *)(data + 0x80) + 6.2831855f;
        } else {
            p = D_L07_00160058 + (*(int *)(data + 0x74) << 8);
            f1 = *(float *)(moby + 0x10);
            f0 = *(float *)(moby + 0x14);
            f13 = *(float *)(p + 0x14) - f0;
            f0 = *(float *)(p + 0x10) - f1;
            f1 = func_L00_001FF860(f0, f13);
            *(float *)(data + 0x84) = f1;
            if (f1 < 0.0f) {
                *(float *)(data + 0x84) = f1 + 6.2831855f;
            }
            if (*(float *)(data + 0x84) < *(float *)(data + 0x80)) {
                *(float *)(data + 0x84) = *(float *)(data + 0x84) + 6.2831855f;
            }
        }
        f1 = *(float *)(data + 0x80);
        *(int *)(data + 0x88) = 0;
        *(float *)(data + 0x8C) = *(float *)(data + 0x84) - f1;
        *(float *)(moby + 0x48) = func_L00_0025F368(f1);
        *(float *)(data + 0x90) = *(float *)(moby + 0x18);
        data[0x29] = 0;
        moby[0xBC] = 0;
        *(short *)(data + 0x9C) = *(short *)(data + 0x94);
        if (*(unsigned char *)(moby + 0x53) != 1) {
            func_00213DE0(moby, 1, 0, 0);
        }
        moby[0x20] = 1;
        break;

    case 1:
        if (*(unsigned char *)(moby + 0x52) != 1 && (*(unsigned char *)(moby + 0x70) & 2)
            && *(unsigned char *)(moby + 0x53) != 1) {
            func_00213DE0(moby, 1, 0, 1);
        }
        h = *(short *)(data + 0x7E);
        if (h != 0) {
            f1 = *(float *)(data + 0x78) * 0.017453292f * D_0015EE6C;
            f0 = *(float *)(data + 0x88) - f1;
            *(float *)(data + 0x88) = f0;
            if (f0 < 0.0f) {
                *(float *)(data + 0x88) = 0.0f;
                *(short *)(data + 0x7E) = 0;
            }
        } else {
            f1 = *(float *)(data + 0x78) * 0.017453292f * D_0015EE6C;
            f0 = *(float *)(data + 0x88) + f1;
            *(float *)(data + 0x88) = f0;
            if (*(float *)(data + 0x8C) < f0) {
                *(float *)(data + 0x88) = *(float *)(data + 0x8C);
                *(short *)(data + 0x7E) = 1;
            }
        }
        *(float *)(moby + 0x48) = func_L00_0025F368(*(float *)(data + 0x80) + *(float *)(data + 0x88));
        if (func_001F9938(data + 0x7C) == 0) {
            break;
        }
        if (moby[0xBC] == 0) {
            int d98 = *(int *)(data + 0x98);
            if (!(d98 != 0 && (*(short *)(data + 0x9C) & 1) == 0)) {
                float k15 = D_0015EE6C * 15.0f;
                func_L00_00250800(moby, 0, buf);
                buf[4] = func_001F9F90(*(float *)(moby + 0x48)) * k15;
                buf[5] = func_001F9FA8(*(float *)(moby + 0x48)) * k15;
                buf[6] = 0.0f;
                func_0022ED80(0, 0, (int)moby);
                func_L07_0030C918(buf, buf + 4, (int)moby, *(unsigned char *)(data + 0x9E));
            }
            if (d98 == 0) {
                *(short *)(data + 0x9C) = *(short *)(data + 0x9C) ^ 1;
            } else if (func_001F9938(data + 0x9C)) {
                moby[0xBC] = 1;
                *(short *)(data + 0x9C) = *(unsigned short *)(data + 0x98);
            }
        } else {
            if (func_001F9938(data + 0x9C)) {
                moby[0xBC] = 0;
                *(short *)(data + 0x9C) = *(unsigned short *)(data + 0x94);
            }
        }
        *(short *)(data + 0x7C) = func_001F9850(6);
        f1 = func_001F9D48(moby + 0x10, D_0013E633 + 0xE9D);
        if (55.0f < f1 || (35.0f < f1 && *(unsigned char *)(moby + 0x31) == 0)) {
            if (80.0f < f1) {
                *(short *)(data + 0x7C) = *(short *)(data + 0x7C) * 3;
            } else if (120.0f < f1) {
                *(short *)(data + 0x7C) = *(short *)(data + 0x7C) << 2;
            } else {
                *(short *)(data + 0x7C) = *(short *)(data + 0x7C) << 1;
            }
        }
        break;

    case 2:
        if (*(unsigned char *)(moby + 0x52) != 4 && (*(unsigned char *)(moby + 0x70) & 2)
            && *(unsigned char *)(moby + 0x53) != 4) {
            func_00213DE0(moby, 4, 0, 1);
        }
        *(float *)(moby + 0x48) = func_001FA748(*(float *)(moby + 0x48), D_0015EE6C * 12.566371f);
        if (func_001F9938(data + 0x7C) == 0) {
            break;
        }
        *(short *)(data + 0x7C) = func_001F9850(180);
        moby[0x20] = 3;
        break;

    case 3:
        if (*(unsigned char *)(moby + 0x52) != 4 && (*(unsigned char *)(moby + 0x70) & 2)
            && *(unsigned char *)(moby + 0x53) != 4) {
            func_00213DE0(moby, 4, 0, 0);
        }
        f1 = *(float *)(data + 0x90) - 0.7f;
        f2 = *(float *)(moby + 0x18);
        if (f1 < f2) {
            *(float *)(moby + 0x18) = f2 - D_0015EE6C * 5.0f;
        } else {
            *(float *)(moby + 0x18) = f1;
        }
        f0 = func_L00_0025F368(*(float *)(data + 0x80) + *(float *)(data + 0x88));
        f13 = func_001FA850(*(float *)(moby + 0x48), f0);
        f2 = D_0015EE6C * 12.566371f;
        if (f2 < f13) {
            *(float *)(moby + 0x48) = func_001FA748(*(float *)(moby + 0x48), f2);
        } else {
            *(float *)(moby + 0x48) = func_L00_0025F368(*(float *)(data + 0x80) + *(float *)(data + 0x88));
        }
        if (func_001F9938(data + 0x7C) == 0) {
            break;
        }
        func_0022ED80(2, 0, (int)moby);
        if (*(unsigned char *)(moby + 0x53) != 3) {
            func_00213DE0(moby, 3, 0, 5);
        }
        moby[0x20] = 4;
        break;

    case 4:
        f0 = *(float *)(data + 0x90);
        f2 = *(float *)(moby + 0x18);
        h = *(unsigned short *)(moby + 0x34);
        if (f2 < f0) {
            *(float *)(moby + 0x18) = f2 + D_0015EE6C * 5.0f;
            break;
        }
        *(float *)(moby + 0x18) = f0;
        *(short *)(moby + 0x34) = h | 0x1000;
        if (*(unsigned char *)(moby + 0x53) != 1) {
            func_00213DE0(moby, 1, 0, 5);
        }
        moby[0x20] = 1;
        break;

    default:
        break;
    }
}
