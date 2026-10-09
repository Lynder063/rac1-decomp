/* NON_MATCHING func_L09_0030BF88 -- src/overlays/shared/vendor_002C6B30.c
 * Best so far: SIZE ours 1740 / retail 1744, checked 2026-10-09.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Spawner update (class 1885): dispatch on moby[0x20] is a switch (0 = poll loop, 1 = pick slot target and spawn
 *   Runs 1-11 used; p9 failed to compile (declaration after statement). Unblock: find the form of the hoisted setu
 */
extern void func_L09_0030BD98(char *moby, char *d);
extern void func_0020D678(void *);
extern int func_L00_0025A208(int *, int, int, int);
extern int func_001F9938(void *);
extern int func_002140B0(int);
extern int func_L00_00260FB0(void *, void *, float, void *, int, void *, int);
extern int func_L09_0030BEE8(int, char *);
extern float func_001F9D10(void *, void *);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9C30(void *, void *, float);
extern void func_L00_001FF548(void *, void *, float);
extern float func_001F9CB8(void *);
extern void func_L00_001FF4B0(void *, void *, float);
extern int func_L00_00258BC8(int, int);
extern void func_L09_00278690(float *, float);
extern void func_001F9BD8(void *, void *, void *);
extern float func_002140F8(float, float);
extern float func_00214358(void *, int, float);
extern void func_L00_00250800(void *, int, void *);
extern void func_L00_00260958(float *, float);
extern float func_L00_0025BC48(void *, void *, void *, float, float);
extern char *func_L09_0030C658(int, void *, void *, unsigned char, unsigned char);
extern int func_001F9850(int);
extern void func_L00_0025F4A8(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int);
extern void *func_L00_00265050(char *, int, float *, void *, int, int, float, float *, float *, float *);
extern char D_0013E633[];
extern char *D_L09_001B0930[];
extern float D_0015EE6C MACRO_ADDR;
extern float D_0015EE70 MACRO_ADDR;
extern short D_L09_0015F6B8;
extern short D_L09_0015F6B4;
extern short D_L09_0016016C;
extern float D_L09_0015F660[] MACRO_ADDR;

/* spawner update (moby class 1885): picks a slot target, spawns a 0x75E moby, and steers the slot */
void func_L09_0030BF88(char *moby)
{
    char *d = *(char **)(moby + 0x78);
    float v[4];
    float rot[4];
    float pos2[4];
    float arr[4];
    int last;
    char *sel;

    func_L09_0030BD98(moby, d);
    switch ((unsigned char)moby[0x20]) {
    case 0: {
        int h = 0;
        while (func_L00_0025A208(&h, *(int *)(d + 0x94), 0, 0) == 0) {
            func_0020D678((void *)h);
        }
        moby[0x20] = 1;
        return;
    }
    case 1: {
        unsigned char d91;
        func_L09_0030BD98(moby, d);
        if (!func_001F9938(d + 0x8E))
            return;
        if (func_002140B0(7) == 0) {
            char *a6 = 0;
            int a7 = 0;
            char *a8 = 0;
            int a9 = 0;
            if (*(int *)(d + 0x84) != -1) {
                a6 = d + 0x84;
                a7 = 1;
            }
            if (*(int *)(d + 0x88) != -1) {
                char *q = D_L09_001B0930[*(int *)(d + 0x88)];
                a9 = *(int *)q;
                a8 = q + 0x10;
            }
            func_L00_00260FB0(moby, d + 0x100, *(float *)(d + 0x80), a6, a7, a8, a9);
        } else {
            char *p = *(char **)(d + 0x140);
            if (p != 0 && (unsigned char)p[0x20] != 0xFE && (unsigned char)p[0x20] != 0xFD) {
                qcopy(d + 0x100, p + 0x10);
            } else {
                *(int *)(d + 0x140) = 0;
                *(int *)(d + 0x144) = 2;
            }
        }
        if (*(int *)(d + 0x144) == 2)
            return;
        last = func_L09_0030BEE8((int)moby, d);
        d91 = (unsigned char)d[0x91];
        if (d91 >= (unsigned char)d[0x90])
            return;
        if (last == -1)
            return;
        if (d91 != 0) {
            if (!(*(float *)&D_L09_0015F6B8 < 0.85f))
                return;
            if (!(*(float *)&D_L09_0015F6B4 < 0.85f))
                return;
        }
        sel = 0;
        if (*(unsigned char *)(d + 0x92) != 0) {
            int i;
            int *ps = (int *)(d + 0xA0);
            float best = 25000.0f;
            for (i = 3; i >= 0; i--, ps++) {
                if (*ps != -1) {
                    char *q = *(char **)&D_L09_0016016C + (*ps << 7);
                    float f = func_001F9D10(D_0013E633 + 0xE9D, q + 0x30);
                    if (f < best) {
                        best = f;
                        sel = q;
                    }
                }
            }
            if (sel == 0) {
                func_001F9BF0(v, d + 0x100, moby + 0x10);
                func_001F9C30(v, v, 0.5f);
                if (3.0f < *(float *)(d + 0x80))
                    func_L00_001FF548(v, v, 3.0f);
                if (func_001F9CB8(v) < 3.0f)
                    func_L00_001FF4B0(v, v, 3.0f);
                func_001F9BD8(v, v, moby + 0x10);
            }
        } else {
            int nn = func_L00_00258BC8(0, 3);
            int i;
            for (i = 0; i < 4; i++) {
                int idx = *(int *)(d + 0xA0 + ((i + nn) % 4) * 4);
                if (idx != -1) {
                    sel = *(char **)&D_L09_0016016C + (idx << 7);
                    break;
                }
            }
            if (sel == 0) {
                float s = *(float *)(d + 0x80);
                if (s < 3.0f)
                    s = 3.0f;
                func_L09_00278690(v, s);
                func_001F9BD8(v, v, moby + 0x10);
            }
        }
        if (sel != 0) {
            qcopy(v, sel + 0x30);
        }
        if (sel != 0) {
            float r1 = func_002140F8(-1.0f, 1.0f);
            func_001F9C30(rot, sel, r1);
            func_001F9BD8(v, v, rot);
            {
                float r2 = func_002140F8(-1.0f, 1.0f);
                func_001F9C30(rot, sel + 0x10, r2);
            }
            func_001F9BD8(v, v, rot);
        }
        {
            float r = func_00214358(v, 0, 0.5f);
            if (r != 0.0f)
                v[2] = r;
        }
        func_001F9BF0(rot, v, moby + 0x10);
        {
            float len = func_001F9CB8(rot);
            float f20 = len * (D_0015EE6C * 0.6f);
            func_L00_001FF4B0(rot, rot, f20);
            func_L00_00250800(moby, 0, pos2);
            func_L00_001FF4B0(arr, rot, 0.05f);
            func_L00_00260958(arr, 0.025f);
            func_001F9BD8(pos2, pos2, arr);
            rot[2] = func_L00_0025BC48(pos2, v, 0, f20, -(D_0015EE70 * 9.8f));
        }
        {
            char *res = func_L09_0030C658((int)moby, pos2, rot, (unsigned char)d[0x93], (unsigned char)last);
            *(char **)(d + 0xB0 + last * 4) = res;
        }
        *(short *)(d + 0x8E) = func_001F9850(*(short *)(d + 0x8C));
        d[0x91] = (char)(d[0x91] + 1);
        return;
    }
    case 2:
        func_L00_0025F4A8(moby, d + 0x70, 0, 0.0f, 0.0f, 30, 8, 20, 8.0f, 4.0f, 18.0f, 1.0f, 1, 15.0f, 1, 1, -1, 0);
        func_L00_00265050(moby, 0x6C5, moby + 0x10, moby + 0x40, 0, 0, 0.0f, D_L09_0015F660, D_L09_0015F660, D_L09_0015F660);
        func_L00_00265050(moby, 0x6C6, moby + 0x10, moby + 0x40, 0, 0, 0.0f, D_L09_0015F660, D_L09_0015F660, D_L09_0015F660);
        func_L00_00265050(moby, 0x6C7, moby + 0x10, moby + 0x40, 0, 0, 0.0f, D_L09_0015F660, D_L09_0015F660, D_L09_0015F660);
        func_0020D678(moby);
        return;
    default:
        return;
    }
}
