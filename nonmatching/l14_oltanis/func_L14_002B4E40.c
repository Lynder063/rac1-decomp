/* NON_MATCHING func_L14_002B4E40 -- src/overlays/l14_oltanis/vendor_002ACCC0.c
 * Best so far: SIZE ours 1876 / retail 1872, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Machine-gun turret update (moby class 30): seven-state machine on moby+0x20 (jump table), calls the level-14 h
 *   Left: the frame. Retail's frame is 0x130 (locals 0x00-0xBF, saves at 0xC0-0x120); ours is 0xE0 (locals 0x00-0x
 *   Unblock: find what retail's 0x80-0xBF local space holds (a call with a stack-passed vector or a struct copy), 
 */
extern int func_001E9730();
extern char D_L14_001FC0C0[];
extern char D_L14_001FC0E8[];
extern int D_L14_0015F6B0 MACRO_ADDR;
extern char *D_L14_001601AC_t __asm__("D_L14_001601AC") MACRO_ADDR;
extern short D_L14_001615D0;
extern short D_L14_001615D4;
extern short D_L14_001615D8;
extern short D_L14_001615DC;
extern short D_L14_001615E4;
extern short D_L14_001615E8;
extern short D_L14_001615EC;
extern short D_L14_001615F0;
extern short D_L14_001615F4;
extern short D_L14_001615F8;
extern short D_L14_001615FC;
extern void func_L14_002B5590(unsigned char *m);
extern void func_0020D678(void *);
extern int func_001F9908(void *);
extern void func_00213D28(void *, int, int);
extern int func_00215570(void *, int);
extern float func_001F9FA8(float);
extern int func_L00_00260D30(void *, void *, float);
extern char *func_L14_002EE150(void *, float *, int, int);
extern void func_L00_00251328(void *, int, int, int);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, int, float, float, int, int, int, int);

/* Update for the machine-gun turret (moby class 30) on level 14: a seven-state machine on moby+0x20. */
void func_L14_002B4E40(char *moby) {
    char *data;
    float v20[4];
    float v30[4];
    float v40[4];
    float v50[4];
    float v70[4];
    float *p20;
    float f1v, f3, f0, f2, g0, g1;
    float t1, t2, t3, t4;
    int r, rem, sel, c17, m52, d80, m74;
    char *p16;
    char *p6;

    data = *(char **)(moby + 0x78);
    func_L14_002B5590((unsigned char *)moby);
    switch (*(unsigned char *)(moby + 0x20)) {
    case 0:
        *(float *)(data + 0x70) = *(float *)(moby + 0x18);
        *(float *)(data + 0x84) = *(float *)(moby + 0x48);
        *(int *)(data + 0x8C) = 0;
        *(short *)(data + 0x74) = 0;
        if (*(int *)(data + 0x80) == -1) {
            func_001E9730(D_L14_001FC0C0, *(short *)(moby + 0xB2));
            func_0020D678(moby);
            return;
        }
        if (*(int *)(data + 0x90) == -1) {
            func_001E9730(D_L14_001FC0E8, *(short *)(moby + 0xB2));
            func_0020D678(moby);
            return;
        }
        r = func_001F9850(*(int *)&D_L14_001615FC);
        *(short *)(data + 0x76) = r;
        *(unsigned char *)(data + 0x8B) = 0;
        if (*(short *)(data + 0x88) != 0) {
            *(unsigned char *)(moby + 0x20) = 3;
            *(unsigned char *)(data + 0x8A) = 1;
        } else {
            *(unsigned char *)(moby + 0x20) = 1;
            *(float *)(moby + 0x18) = *(float *)(moby + 0x18) - *(float *)&D_L14_001615D0;
            *(int *)(moby + 0x94) = 0;
            *(unsigned char *)(data + 0x8A) = 0;
            *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) & 0xEFFF;
        }
        *(int *)(data + 0x98) = func_001F9850(*(int *)(data + 0x94));
        return;
    case 1:
        if (*(short *)(data + 0x88) == 0) {
            return;
        }
        if (func_001F9908(data + 0x98) == 0) {
            return;
        }
        *(unsigned char *)(moby + 0x20) = 2;
        *(short *)(data + 0x74) = func_001F9850(*(int *)&D_L14_001615D4);
        *(float *)(data + 0x78) = 1.0f / func_001FA888(*(short *)(data + 0x74));
        func_00213D28(moby, 1, 0);
        f0 = func_001FA888(*(short *)(data + 0x74)) * *(float *)&D_L14_001615D8;
        *(float *)(moby + 0x58) = 1.0f / f0;
        return;
    case 2:
        f1v = (float)*(short *)(data + 0x74) * *(float *)(data + 0x78);
        f0 = *(float *)&D_L14_001615D0;
        f3 = 0.0f;
        f2 = *(float *)(data + 0x70);
        f0 = (f0 - f3) * f1v;
        f0 = f0 + f3;
        f2 = f2 - f0;
        *(float *)(moby + 0x18) = f2;
        if (*(unsigned char *)(moby + 0x70) & 2) {
            if (*(unsigned char *)(moby + 0x52) == 1) {
                func_00213D28(moby, 2, 0);
                *(float *)(moby + 0x58) = 1.0f;
            }
        }
        r = *(int *)&D_L14_001615D4;
        m74 = *(short *)(data + 0x74);
        sel = func_001F9850(r >> 1);
        if (m74 < sel) {
            *(int *)(moby + 0x94) = *(int *)(*(char **)(moby + 0x24) + 0x10);
            *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) | 0x1000;
        }
        if (func_001F9938(data + 0x74) == 0) {
            return;
        }
        *(short *)(data + 0x76) = func_001F9850(*(int *)&D_L14_001615FC);
        *(unsigned char *)(moby + 0x20) = 3;
        *(short *)(data + 0x74) = func_001F9850(60);
        *(float *)(moby + 0x18) = *(float *)(data + 0x70);
        *(int *)(data + 0x8C) = 0;
        return;
    case 3:
        r = func_L00_00260D30(moby, v20, 34.0f);
        if (r != 2) {
            if (func_00215570(v20, *(int *)(data + 0x90)) != 0) {
                *(unsigned char *)(moby + 0x20) = 4;
                func_00213D28(moby, 3, 0);
                *(short *)(data + 0x74) = func_001F9850(120);
                *(short *)(data + 0x9C) = func_001F9850(20);
                return;
            }
        }
        if (*(unsigned char *)(data + 0x8A) != 0) {
            return;
        }
        if (func_001F9938(data + 0x76) == 0) {
            return;
        }
        *(unsigned char *)(data + 0x8B) = 1;
        return;
    case 4:
        if (*(short *)(data + 0x9E) == 0) {
            t1 = func_001FA748(*(float *)(data + 0x8C), *(float *)&D_L14_001615DC);
        } else {
            t1 = func_001FA748(*(float *)(data + 0x8C), -*(float *)&D_L14_001615DC);
        }
        *(float *)(data + 0x8C) = t1;
        f1v = *(float *)(data + 0x84);
        t2 = func_001FA748(t1, f1v * 0.01745329238474369f);
        d80 = *(int *)(data + 0x80);
        p16 = D_L14_001601AC_t + (d80 << 7) + 0x10;
        t3 = func_001F9FA8(t2);
        func_001F9C30(v20, p16, t3);
        d80 = *(int *)(data + 0x80);
        p6 = D_L14_001601AC_t + (d80 << 7) + 0x30;
        func_001F9BD8(v20, v20, p6);
        t4 = func_L00_001FF860(v20[0] - *(float *)(moby + 0x10), v20[1] - *(float *)(moby + 0x14));
        *(float *)(moby + 0x48) = t4;
        func_001F9938(data + 0x9C);
        rem = D_L14_0015F6B0 % *(int *)&D_L14_001615F8;
        if (rem == 0) {
            sel = func_002140B0(3);
            switch (sel) {
            case 0:
                func_L00_001FF4B0(v30, moby + 0xE0, *(float *)&D_L14_001615E8);
                p20 = v30;
                break;
            case 1:
                func_L00_001FF4B0(v30, moby + 0xE0, *(float *)&D_L14_001615EC);
                p20 = v30;
                func_L00_001FF4B0(v50, moby + 0xD0, *(float *)&D_L14_001615F4);
                func_001F9BD8(v30, v30, v50);
                break;
            default:
                func_L00_001FF4B0(v30, moby + 0xE0, *(float *)&D_L14_001615EC);
                func_L00_001FF4B0(v50, moby + 0xD0, -*(float *)&D_L14_001615F4);
                p20 = v30;
                func_001F9BD8(v30, v30, v50);
                break;
            }
            func_L00_001FF4B0(v40, moby + 0xC0, *(float *)&D_L14_001615F0);
            func_001F9BD8(p20, p20, v40);
            func_001F9BD8(p20, p20, moby + 0x10);
            func_L00_001FF4B0(v40, moby + 0xC0, *(float *)&D_L14_001615E4 * D_0015EE6C);
            if (*(short *)(data + 0x9C) == 0) {
                func_L00_00251328(func_L14_002EE150(p20, v40, (int)moby, 1), 0xE0, 0xE0, 0xE0);
            }
        }
        r = func_L00_00260D30(moby, v70, 34.0f);
        c17 = 0;
        if (r != 2) {
            if (func_00215570(v70, *(int *)(data + 0x90)) == 0) {
                c17 = 1;
            }
        } else {
            c17 = 1;
        }
        if (c17 == 0) {
            return;
        }
        if (func_001F9938(data + 0x74) == 0) {
            return;
        }
        if ((*(unsigned char *)(moby + 0x70) & 2) == 0) {
            return;
        }
        m52 = *(unsigned char *)(moby + 0x52);
        if (m52 != 3) {
            return;
        }
        *(short *)(data + 0x76) = func_001F9850(*(int *)&D_L14_001615FC);
        *(unsigned char *)(moby + 0x20) = m52;
        func_00213D28(moby, 2, 0);
        *(float *)(moby + 0x58) = 1.0f;
        return;
    case 5:
        f1v = *(float *)&D_L14_001615D0;
        f3 = (float)*(short *)(data + 0x74) * *(float *)(data + 0x78);
        f0 = (0.0f - f1v) * f3;
        f2 = *(float *)(data + 0x70);
        f1v = f1v + f0;
        f2 = f2 - f1v;
        *(float *)(moby + 0x18) = f2;
        g1 = *(float *)(data + 0x84);
        g0 = *(float *)(data + 0x8C);
        f0 = (g0 - g1) * f3;
        f1v = g1 + f0;
        *(float *)(moby + 0x48) = f1v;
        if (*(unsigned char *)(moby + 0x70) & 2) {
            if (*(unsigned char *)(moby + 0x52) == 4) {
                func_00213D28(moby, 0, 0);
                *(float *)(moby + 0x58) = 1.0f;
            }
        }
        r = *(int *)&D_L14_001615D4;
        m74 = *(short *)(data + 0x74);
        sel = func_001F9850(r >> 1);
        if (m74 < sel) {
            *(int *)(moby + 0x94) = 0;
        }
        if (func_001F9938(data + 0x74) == 0) {
            return;
        }
        *(unsigned char *)(moby + 0x20) = 1;
        *(float *)(moby + 0x48) = *(float *)(data + 0x84);
        *(short *)(data + 0x74) = func_001F9850(60);
        *(short *)(data + 0x88) = 0;
        *(int *)(data + 0x98) = func_001F9850(*(int *)(data + 0x94));
        *(float *)(moby + 0x18) = *(float *)(data + 0x70) - *(float *)&D_L14_001615D0;
        *(unsigned short *)(moby + 0x34) = *(unsigned short *)(moby + 0x34) & 0xEFFF;
        return;
    case 6:
        func_L00_0025F4A8(moby, data + 0x40, moby + 0x10, 0.0f, 0.0f, 5, 2, 4, 2.0f, 1.0f, 9.0f, 0, 1.0f, 15.0f, 1, 1, -1, 0);
        func_0020D678(moby);
        return;
    default:
        return;
    }
}
