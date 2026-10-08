/* NON_MATCHING func_L07_0030CFA8 -- src/overlays/l07_umbris/vendor_002CE470.c
 * Best so far: SIZE ours 984 / retail 968, checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Bomb (class 882) update on level 07: drifts the moby's velocity, runs a gate on the level data (D_L07_00173F58
 *   Best candidate p2/p6: the control flow and all four argument sets match in shape; size 984 vs 968.
 *   Left: the 5.0 test on func_001F9D48 (moby+0x31 == 0 path) comes out as bc1tl with the else call inline; retail
 *   Unblock: a form of the 5.0 test that gcc schedules as a fallthrough, or the allocator order for the path local
 */
extern void func_001F9BD8(void *, void *, void *);
extern float func_001FA748(float, float);
extern int func_L00_001EFFF0(void *, void *, int, int, int);
extern int func_L00_001F10E0_f(float, void *, int, int) __asm__("func_L00_001F10E0");
extern float func_001F9D48(void *, void *);
extern void func_L00_0025F4A8_alt(void *, void *, void *, float, float, int, int, int, float, float, float, float, int, float, int, int, int, int) __asm__("func_L00_0025F4A8");
extern int func_0022ED80(int, int, int);
extern void func_0020D678(void *);
extern float D_0015EE70 MACRO_ADDR;
extern char *D_L07_00173F58_p __asm__("D_L07_00173F58");
extern char D_L07_00166EC0[];
extern char D_0013E633[];

/* Bomb moby update: drifts the moby, then picks a burst variant from its counters and calls the emitter. */
void func_L07_0030CFA8(char *moby) {
    char *pos = moby + 0x10;
    char *p = *(char **)(moby + 0x78);
    char tmp[16];
    float f20;
    float f0;
    int n;

    qcopy(tmp, pos);
    func_001F9BD8(pos, pos, p);
    *(float *)(p + 0x8) = *(float *)(p + 0x8) - D_0015EE70 * 9.8f;
    *(float *)(moby + 0x44) = func_001FA748(*(float *)(moby + 0x44), *(float *)(p + 0x18));
    *(float *)(moby + 0x48) = func_001FA748(*(float *)(moby + 0x48), *(float *)(p + 0x1C));

    if (func_L00_001EFFF0(tmp, pos, 0, *(int *)(p + 0x10), 0) != 0) {
        goto L070;
    }
    if (func_L00_001F10E0_f(0.5f, pos, 0, *(int *)(p + 0x10)) == 0) {
        goto RANGE;
    }
L070:
    if (D_L07_00173F58_p != 0
        && (unsigned)(*(unsigned short *)(D_L07_00173F58_p + 0xA6) - 0x371) < 2) {
        goto RANGE;
    }
    if (*(unsigned char *)(moby + 0x31) == 0) {
        if (!(func_001F9D48(pos, D_0013E633 + 0xE9D) < 5.0f)) {
            func_0022ED80(0, 0, (int)moby);
            func_0020D678(moby);
            return;
        }
    }

    n = *(int *)(p + 0x14);
    f20 = 0.0f;
    if (n % 3 == 0) {
        f20 = 10.0f;
    }
    f0 = func_001F9D48(pos, D_L07_00166EC0);

    if (50.0f < f0) {
        if (*(int *)(p + 0x14) & 1) {
            func_L00_0025F4A8_alt(moby, p, 0, 2.0f, 1.0f, 1, 2, 3, 0.0f, 0.0f, 1000.0f, 1.3f, -1, f20, 0, 1, -1, 0);
        } else {
            func_L00_0025F4A8_alt(moby, p, 0, 2.0f, 1.0f, 0, 2, 3, 0.0f, 0.0f, 1000.0f, 1.2f, 0, f20, 0, 1, -1, 0);
        }
    } else {
        if (*(int *)(p + 0x14) & 1) {
            func_L00_0025F4A8_alt(moby, p, 0, 2.0f, 1.0f, 0, 2, 4, 0.0f, 1.0f, 1000.0f, 1.0f, 0, f20, 0, 1, -1, 0);
        } else {
            func_L00_0025F4A8_alt(moby, p, 0, 2.0f, 1.0f, 1, 2, 4, 0.0f, 0.0f, 1000.0f, 1.0f, 0, f20, 0, 1, -1, 0);
        }
    }
    func_0020D678(moby);
    return;

RANGE:
    if (*(float *)(moby + 0x10) < 2.0f || 1020.0f < *(float *)(moby + 0x10)
        || *(float *)(moby + 0x14) < 2.0f || 1020.0f < *(float *)(moby + 0x14)
        || *(float *)(moby + 0x18) < 2.0f || 1020.0f < *(float *)(moby + 0x18)) {
        func_0020D678(moby);
    }
}
