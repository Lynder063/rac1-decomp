/* NON_MATCHING func_L10_002E2B80 -- src/overlays/l10_orxon/vendor_00296BD8.c
 * Best so far: SIZE ours 1268 / retail 1264, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Level-10 moby update: a state byte switch with a 0x104 flag, two func_L00_0025E4B0 paths, a func_L00_00260D30/
 *   Runs: 8 of 10 spent (p0 was edited in place once after its first compile; the later candidates are new files).
 */
extern float func_002140F8(float, float);
extern float func_001F9878(float);
extern s32 func_001FA898(f32);
extern int func_001F9908(int *);
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, void *, void *, int, int *, float *, int, int);
extern int func_001F9850(int);
extern void func_00213DE0(void *, int, int, int);
extern int func_0022ED80(int, int, int);
extern float func_L00_001FF860(float, float);
extern void func_L00_0025BBA0(void *, float *, void *, void *);
extern void func_L00_0025D5B0(void *, void *, float, int, int, int);
extern void func_L00_0025E4B0(void *m, short *p);
extern void func_L00_00261B00(void *, int, int, int, int);
extern void func_L00_0025E590(void *, void *);
extern int func_L00_00260D30(void *, void *, float);
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern int func_L00_00260FB0(float, char *, void *, int, int, void *, int);
extern float func_001F9D48(void *, void *);
extern float D_0015EE70 MACRO_ADDR;
extern char D_0013E633[];
extern char *D_L10_0016016C_m __asm__("D_L10_0016016C") MACRO_ADDR;
extern int *D_L10_001B0C30[];

// Level 10 moby update: tracks the owner's height and fires a shot, then sets the moby's display state.
void func_L10_002E2B80(char *moby) {
    char *data = *(char **)(moby + 0x78);
    char buf[0x30];
    char *r;
    int r19;
    float f0, f1, f2, f12;
    if (*(int *)(data + 0x38) != 0) {
        *(int *)(data + 0x184) = func_001FA898(func_001F9878(func_002140F8(180.0f, 240.0f)));
        *(int *)(data + 0x38) = 0;
    }
    func_001F9908((int *)(data + 0x184));
    if (((unsigned char *)moby)[0x20] != 13) {
        r = func_L00_0025B478(moby, 0x330000, 0);
        func_L00_0025B4D0(moby, r, data + 0x20, 5, (int *)(buf + 0x20), 0, 0, 4);
        if (r != 0 && *(short *)(*(char **)(r + 0x20) + 0xA6) != *(short *)(moby + 0xA6)) {
            f1 = *(float *)(data + 0x20);
            f0 = *(float *)(r + 0x2C);
            if (f1 <= f0) {
                unsigned short t;
                *(int *)(data + 0x20) = 0;
                t = *(unsigned short *)(moby + 0x34) & 0xEFFF;
                *(unsigned short *)(moby + 0x34) = t;
                if (((unsigned char *)moby)[0x53] != 4) func_00213DE0(moby, 4, 0, func_001F9850(10));
                moby[0x20] = 13;
                f2 = D_0015EE70;
                *(unsigned char *)(data + 0x9D) = 3;
                f2 = f2 * 26.0f;
                f1 = D_0015EE6C * 7.0f;
                f0 = D_0015EE6C * 10.0f;
                *(int *)(data + 0x84) = 9;
                *(float *)(data + 0x70) = f2;
                *(float *)(data + 0x74) = 0.0005f;
                *(float *)(data + 0x78) = f1;
                *(float *)(data + 0x7C) = f0;
                func_0022ED80(2, 0, (int)moby);
                if (*(int *)(r + 0x30) & 1) {
                    f12 = *(float *)(r + 0x10);
                    f2 = *(float *)(r + 0x14);
                } else {
                    f12 = *(float *)(moby + 0x10) - *(float *)r;
                    f2 = *(float *)(moby + 0x14) - *(float *)(r + 4);
                }
                f0 = func_L00_001FF860(f12, f2);
                *(float *)(buf + 0x24) = f0;
                qcopy(buf, r + 0x10);
                func_L00_0025BBA0(buf, (float *)(buf + 0x24), data + 0x78, data + 0x7C);
                func_L00_0025D5B0(moby, data + 0x60, *(float *)(buf + 0x24), 4, 1, 0);
                *(unsigned char *)(data + 0x117) = 0x78;
                func_L00_0025E4B0(moby, (short *)(data + 0x110));
                func_L00_00261B00(moby, 1, 3, 0, -1);
            } else {
                *(unsigned char *)(data + 0x117) = 0xFA;
                f0 = f1 - f0;
                *(float *)(data + 0x20) = f0;
                *(short *)(data + 0x26) = (short)func_001F9850(60);
                func_L00_0025E4B0(moby, (short *)(data + 0x110));
            }
        }
        moby[0xA4] = 0xFF;
    }
    func_L00_0025E590(moby, data + 0x110);
    if (*(int *)(data + 0x174) == 2) {
        *(float *)(data + 0x180) = 42.0f;
    } else {
        if (*(int *)(data + 0x184) != 0) {
            f0 = *(float *)(data + 0x178) + 6.0f;
        } else if (((unsigned char *)moby)[0x20] == 1) {
            f0 = *(float *)(data + 0x188);
        } else {
            f0 = *(float *)(data + 0x178);
        }
        *(float *)(data + 0x180) = f0;
    }
    if (*(int *)(data + 0x174) == 2) {
        char *bp;
        r19 = func_L00_00260D30(moby, data + 0xC0, *(float *)(data + 0x180));
        if (r19 != 2) {
            bp = D_L10_0016016C_m + (*(int *)(data + 0x194) << 7);
            func_001F9BF0(buf, D_0013E633 + 0xE9D, bp + 0x30);
            *(int *)(buf + 0xC) = 0;
            func_001F9EC0(buf + 0x10, buf, bp + 0x40);
            f0 = *(float *)(buf + 0x10);
            f2 = -1.0f;
            if (f0 <= f2 || 1.0f <= f0 || *(float *)(buf + 0x14) <= f2 || 1.0f <= *(float *)(buf + 0x14) ||
                *(float *)(buf + 0x18) <= f2 || 1.0f <= *(float *)(buf + 0x18)) {
                *(int *)(data + 0x104) = 2;
            }
        }
    } else {
        if (((unsigned char *)moby)[0x20] == 1 && *(int *)(data + 0x18C) >= 0) {
            int *ent = D_L10_001B0C30[*(int *)(data + 0x18C)];
            r19 = func_L00_00260FB0(*(float *)(data + 0x180), moby, data + 0xC0, 0, 0, (char *)ent + 0x10, *ent);
        } else if (((unsigned char *)moby)[0x20] != 1 && *(int *)(data + 0x17C) >= 0) {
            int *ent = D_L10_001B0C30[*(int *)(data + 0x17C)];
            r19 = func_L00_00260FB0(*(float *)(data + 0x180), moby, data + 0xC0, 0, 0, (char *)ent + 0x10, *ent);
        } else {
            r19 = func_L00_00260D30(moby, data + 0xC0, *(float *)(data + 0x180));
        }
    }
    if (r19 != 2) {
        f0 = func_001F9D48(data + 0x130, data + 0xC0);
        if (*(float *)(data + 0x180) < f0) {
            *(int *)(data + 0x104) = 2;
        } else if (((unsigned char *)moby)[0x31] == 0) {
            *(int *)(data + 0x104) = 2;
        }
    }
    if (*(int *)(data + 0x100) == 0) {
        *(int *)(data + 0x100) = *(int *)(D_0013E633 + 0x2E9D);
    }
}
