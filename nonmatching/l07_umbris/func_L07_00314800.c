/* NON_MATCHING func_L07_00314800 -- src/overlays/l07_umbris/vendor_00313D28.c
 * Best so far: SIZE ours 1284 / retail 1280, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Umbris moby think step (1280 bytes): aims at a target (obj), runs state 10/11 transitions, timers at 0x1C8/0x1
 *   Remaining differences: obj+0x20 (q) is in $v1 where retail uses $v0, so the lh of the type takes $v1 and the q
 *   Unblock: a wording that keeps q in $2 and emits the q==0 test branch-likely; the float register for 0x1C8 is a
 */
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern void func_L00_002584A8(void *, int, int);
extern void func_L00_0025E4B0(void *, short *);
extern int func_L00_00258BC8(int, int);
extern void func_00213DE0(void *, int, int, int);
extern void func_L00_00222B80(int, int);
extern void func_L00_002676A0(void *, int);
extern void func_L00_002512D8(int);
extern void func_L00_00286128(void *, void *);
extern float func_L00_002001D8(void *, float);
extern int func_001F9850(int);
extern void func_L00_0028EBF0(int);
extern int func_0022ED80(int, int, int);
extern void func_L00_0025E590(void *, void *);
extern char *D_L07_0016016C MACRO_ADDR;
extern char D_0013E633[] MACRO_ADDR;

// Umbris moby think step: homes on its target, runs its timer and state changes.
void func_L07_00314800(void *mp, void *dp, void *vp)
{
    char *moby = mp;
    char *data = dp;
    float *vec = vp;
    char *obj;
    char *q;
    char *e;
    int st;
    float fv;
    float v0;
    float f0;
    float f20;
    float f23;
    float f24;
    float f5;
    float t;
    int v2;
    unsigned int c6;
    short t2;

    if ((unsigned char)moby[0x20] != 10) {
        obj = func_L00_0025B478(moby, 0x330000, 0);
        func_L00_0025B4D0(moby, obj, vec, 0, &st, (float *)0, 0, 4);
        if (obj != 0) {
            if (0.0f < *(float *)(obj + 0x2C)) {
                int ty = *(unsigned short *)(obj + 0x2A);
                if (ty == 0xBA) {
                    goto set_one;
                }
                if (ty < 0xBB) {
                    if (ty == 0x79) {
                        goto set_one;
                    }
                } else if (ty == 0x131) {
                    *(float *)(obj + 0x2C) = 0.2f;
                }
                goto type_done;
            set_one:
                *(float *)(obj + 0x2C) = 1.0f;
            type_done:
                ;
            }
            q = *(char **)(obj + 0x20);
            if (q == 0 || (t2 = *(short *)(q + 0xA6)) == 0x419 || t2 == 0x416) {
                st = 1;
            }
        }
        f0 = *(float *)(data + 0x1C8);
        if (0.0f < f0 || *(unsigned char *)(data + 0x1C5) != 0) {
            if (st >= 2) {
                *(unsigned char *)(data + 0x1C6) = 0xFF;
            }
        } else if (st >= 2) {
            v0 = *(float *)vec;
            if (v0 <= *(float *)(obj + 0x2C)) {
                *(float *)vec = 0.0f;
                *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) & 0xEFFF;
                func_L00_002584A8(moby, 0, -1);
                data[0x67] = 0x78;
                func_L00_0025E4B0(moby, (short *)(data + 0x60));
                if ((unsigned char)moby[0x53] != 2) {
                    int a = func_L00_00258BC8(10, 13);
                    func_00213DE0(moby, 2, 0, a);
                }
                if (*(int *)(D_0013E633 + 0x2EA1) == 0x78) {
                    func_L00_00222B80(0, 1);
                }
                v2 = *(int *)(data + 0x1F0);
                if (v2 != -1) {
                    func_L00_002676A0(moby, 1);
                    func_L00_002584A8(moby, 0, -1);
                    func_L00_002512D8((unsigned char)moby[0xB0]);
                    q = D_L07_0016016C + (*(int *)(data + 0x1F0) << 7);
                    func_L00_00286128(q + 0x30, q + 0x70);
                }
                moby[0x20] = 10;
            } else {
                float x = *(float *)(obj + 0x2C);
                f5 = x + x;
                t2 = ((short *)vec)[2];
                f20 = (float)t2 / 6.0f;
                f23 = f20 * 1.75f;
                f24 = f20 * 1.25f;
                if (2.0f < f5) {
                    t = -2.0f;
                } else {
                    t = -f5;
                }
                *(float *)(data + 0x1FC) = t;
                func_L00_002001D8(&fv, v0 / f20);
                if ((float)*(short *)(data + 0x24) - 1.0f < v0) {
                    fv = 5.0f;
                }
                fv = fv * f20;
                *(float *)vec = *(float *)vec - x;
                data[0x67] = 0xFA;
                *(short *)(data + 0x26) = func_001F9850(0);
                func_L00_0025E4B0(moby, (short *)(data + 0x60));
                if ((unsigned char)moby[0x20] < 10 && *(float *)vec < fv) {
                    if (*(int *)(D_0013E633 + 0x2EA1) == 0x78) {
                        func_L00_00222B80(0, 1);
                    }
                    if ((unsigned char)moby[0x53] != 2) {
                        int a = func_L00_00258BC8(0, 2);
                        int b = func_L00_00258BC8(0x14, 0x16);
                        func_00213DE0(moby, 2, a, b);
                    }
                    *(float *)(data + 0x1C8) = 0.0f;
                    data[0x1C5] = 1;
                    v2 = *(int *)(data + 0x1F8);
                    if (v2 != -1) {
                        e = D_0013E633 + 0x1D + v2 * 0x70;
                        if (*(char **)(e + 0x88) == moby && *(unsigned char *)(e + 0x74) != 0) {
                            func_L00_0028EBF0(v2);
                        }
                    }
                    *(int *)(data + 0x1F8) = -1;
                    *(int *)(data + 0x1F8) = func_0022ED80(0xF, 4, (int)moby);
                    moby[0x20] = 11;
                    moby[0xBC] = moby[0xBC] + 1;
                }
                if ((f23 < v0 && *(float *)vec <= f23) || (f24 < v0 && *(float *)vec <= f24)) {
                    data[0x1C7] = 1;
                }
            }
        }
        c6 = *(unsigned char *)(data + 0x1C6);
        if (c6 < 0x15) {
            data[0x1C6] = 0;
        } else {
            data[0x1C6] = c6 - 0x14;
        }
        *(unsigned char *)(moby + 0xA4) = 0xFF;
    }
    func_L00_0025E590(moby, data + 0x60);
    f0 = *(float *)(data + 0x1FC) + 0.3f;
    *(float *)(data + 0x1FC) = f0;
    if (0.0f < f0) {
        *(float *)(data + 0x1FC) = 0.0f;
    }
}
