/* NON_MATCHING func_L18_002F86E8 -- src/overlays/l18_veldin2/vendor_002F2AE0.c
 * Best so far: BYTES 20/1048 (98.1% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * No longer builds in its file (COMPILE failed, 2026-10-02): match its declarations to the file's first.
 * What the last attempts found:
 *   run6-7 (after lead fixed file) p4: SIZE 1052/1048; loop shape ok (ptr p++ works, s7 ok). p5: swap tbl add oper
 *   run8 p5: no change (SIZE 1052). p6: do-while with p++ / ++i<0x30
 *   run9 p6: same SIZE 1052; diff = li 0x12 hoisted out of loop in ours (retail keeps it in beqz slot) + loop-alig
 *   run10 p7: identical to p5. p8: continue-form (A310==0||kind!=0x12 continue)
 *   run11 p8: identical to p5. p9: p5 + px/py/qx/qy pointer locals up front
 *   run12 p9: pointer locals up front -> SIZE 992 (computed once, wrong). p10: p5 with tbl after d
 *   run13 p10: identical to p5. Stopped: p7, p8, p10 changed nothing.
 *   Best: p5.c (SIZE 1052/1048; all control flow, regs and loop shape right). Left: (1) li 0x12 hoisted out of the
 */
extern float func_001F9D48(void *, void *);
extern void func_L06_00317770(char *moby);
extern void func_001FFDA0(int arg0, int arg1);
extern void func_L00_002E9900(float x, float y, int flag);
extern void func_L00_002E9968(float x, float y);
extern int func_001FFB38(int, int, int, int, int, int, int);
extern float func_00214D88(float, float, float, float, float *, float *);
extern float func_00214D88_p(float *, float *, float, float, float, float) __asm__("func_00214D88");
extern void func_L00_00236710();
extern void func_L00_00236830();
extern void func_L06_0024A080();
extern char D_0013E633[];
extern char *D_L18_0015F050 MACRO_ADDR;
extern char *D_L18_0016016C MACRO_ADDR;
extern int D_L18_0016A310[];
extern char D_L18_00167BD0[];
extern char D_L18_00167700[];
extern float D_0015EE70 MACRO_ADDR;
extern float D_0015EE6C MACRO_ADDR;
extern short D_L18_00162440;
extern short D_L18_00162444;
extern short D_L18_00162448;
extern short D_L18_0016244C;
extern short D_L18_00162450;
extern short D_L18_00162454;
extern short D_L18_00162458;
extern short D_L18_0016245C;
extern short D_L18_00162460;
extern short D_L18_00162464;
extern short D_L18_00162468;
extern short D_L18_0016246C;
extern short D_L18_00162470;
extern short D_L18_00162474;

/* Steers the camera-ish follow targets of a moby from its state and the player distance. */
void func_L18_002F86E8(unsigned char *moby) {
    char *d = *(char **)(moby + 0x78);
    char *t = *(char **)(D_L18_0015F050 + *(int *)(d + 0x224) * 32 + 0x1C);
    float f;
    float x;
    float y;
    float *p0;
    float *p1;
    float *p2;
    float *p3;
    unsigned char st;

    func_001F9908((int *)(d + 0x360));
    f = func_001F9D48(D_0013E633 + 0xE9D, d + 0x3C0);
    if (f > *(float *)&D_L18_0016244C) {
        f = *(float *)&D_L18_0016244C;
    } else if (f < *(float *)&D_L18_00162448) {
        f = *(float *)&D_L18_00162448;
    }
    f = f - *(float *)&D_L18_00162448;
    f = f / (*(float *)&D_L18_0016244C - *(float *)&D_L18_00162448);
    x = (*(float *)&D_L18_00162450 - *(float *)&D_L18_00162458) * f + *(float *)&D_L18_00162458;
    y = (*(float *)&D_L18_00162454 - *(float *)&D_L18_0016245C) * f + *(float *)&D_L18_0016245C;
    st = moby[0x20];
    if (st == 0x13) {
        char *g = D_0013E633 + 0xE1D;
        if ((*(int *)(g + 0x208C) == 0xF || *(int *)(g + 0x2084) == 0x42) && *(int *)(d + 0x364) == 0 &&
            *(float *)(d + 0x390) <= 25.0f && *(int *)(d + 0x360) == 0) {
x = *(float *)&D_L18_00162460;
            y = *(float *)&D_L18_00162464;
            p0 = (float *)(t + 0x34);
            p1 = (float *)(t + 0x38);
            p2 = (float *)(d + 0x378);
            p3 = (float *)(d + 0x37C);
        } else {
            p0 = (float *)(t + 0x34);
            p1 = (float *)(t + 0x38);
            p3 = (float *)(d + 0x37C);
            p2 = (float *)(d + 0x378);
            if (func_001F9D48(D_0013E633 + 0xE9D, D_L18_0016016C + (*(int *)(d + 0x344) << 7) + 0x30) < 28.0f) {
                x = *(float *)&D_L18_00162468;
                y = *(float *)&D_L18_0016246C;
            }
        }
    } else if (st == 9 || st == 6) {
        x = *(float *)&D_L18_00162470;
        y = *(float *)&D_L18_00162474;
        p0 = (float *)(t + 0x34);
            p1 = (float *)(t + 0x38);
            p2 = (float *)(d + 0x378);
            p3 = (float *)(d + 0x37C);
    } else if (st == 0 || st == 10 || st == 11 || st == 1 || st == 0x1B) {
        int i;
        char *g;
        char *q;
        p0 = (float *)(t + 0x34);
            p1 = (float *)(t + 0x38);
        g = D_0013E633 + 0xE1D;
        for (i = 0, p2 = (float *)(d + 0x378), p3 = (float *)(d + 0x37C); i < 0x30; i++) {
            char *m = D_L18_00167BD0 + i * 0xA0;
            if (*(int *)(d + 0x3EC) == 0) {
                char *pl = *(char **)(g + 0x2FC);
                if (pl != 0 && *(short *)(pl + 0xA6) == 0x24B) {
                    *(int *)(d + 0x3EC) = 1;
                }
            }
            if (D_L18_0016A310[i] != 0 && *(short *)(m + 0x86) == 0x12) {
                func_L06_00317770(m);
                if (*(int *)(d + 0x368) != -1) {
                    func_001FFDA0(*(int *)(d + 0x368), 0);
                    *(int *)(d + 0x368) = -1;
                }
                if (moby[0x20] >= 2) {
                    if (*(int *)(d + 0x3EC) != 0 || *(int *)&D_L18_00162430 != 0) {
                        char *w;
                        q = D_L18_00167700;
                        w = *(char **)(q + 0x180);
                        if (w != 0 && *(short *)(w + 0x86) == 0) {
                            func_L00_002E9900(*(float *)&D_L18_00162470, 0.003f, 0);
                            func_L00_002E9968(*(float *)&D_L18_00162474, 0.003f);
                        }
                    }
                }
                break;
            }
        }
    } else {
        p0 = (float *)(t + 0x34);
            p1 = (float *)(t + 0x38);
            p2 = (float *)(d + 0x378);
            p3 = (float *)(d + 0x37C);
        if (*(float *)(d + 0x38C) > 0.0f) {
            *(int *)(d + 0x368) = func_001FFB38(0x16, 0xFFFF, (int)func_L00_00236710, (int)func_L00_00236830,
                                                (int)func_L06_0024A080 + 0x20, (int)(d + 0x36C), 0x15E);
        }
    }
    func_00214D88_p(p0, p2, x, *(float *)&D_L18_00162444 * D_0015EE70, *(float *)&D_L18_00162444 * D_0015EE70,
                    *(float *)&D_L18_00162440 * D_0015EE6C);
    func_00214D88_p(p1, p3, y, *(float *)&D_L18_00162444 * D_0015EE70, *(float *)&D_L18_00162444 * D_0015EE70,
                    *(float *)&D_L18_00162440 * D_0015EE6C);
}
