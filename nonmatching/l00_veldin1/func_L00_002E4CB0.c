/* NON_MATCHING func_L00_002E4CB0 -- src/overlays/l00_veldin1/vendor_002DB278.c
 * Best so far: SIZE ours 640 / retail 648, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   UpdateMoby_1545 (flock): state 0 sets state/0x30; state 1 reads D_L00_0016C960 (phase at 0x30, level 0x34, mob
 *   Differences: retail does not hoist the `lui/addiu` of D_L00_0015F660 out of the particle loop (two separate lu
 *   Would unblock: a way to keep the loop from hoisting the symbol's high part without losing the shared $18 high 
 */
extern int func_001F9850(int);
extern void func_L00_00264870(int);
extern void func_L00_00250800(void *, int, void *);
extern void func_L00_00264BE8(void *, void *, void *, float, float);
extern int func_L00_00258BC8(int, int);
extern int func_002140B0(int);
extern void *func_L00_0026DEA0(void *pos, int spd, void *pos2, int col, float a, float b, float c, float d);
extern int D_L00_0015F6A8 MACRO_ADDR;
extern char D_L00_0016C960[];

/* Update for the flock moby: sets up, then spawns a burst of particles near its target. Adapted from Lombyte (MIT) for PAL: src/overlays/l00/gameplay_vendor_002e0988.c, FUN_L00_002e3800. */
void func_L00_002E4CB0(unsigned char *m) {
    float pos[4];
    char *src, *F;
    char *part;
    char *tail;
    int color, v, i, phase, idx;

    switch (m[0x20]) {
    case 0:
        m[0x20] = 1;
        m[0x30] = 0xFF;
        break;
    case 1:
        F = D_L00_0016C960;
        if ((D_L00_0015F6A8 == 2 && *(int *)(F + 0x30) == 2 && func_001F9850(0x618) <= *(int *)(F + 0x34)) ||
            (D_L00_0015F6A8 == 2 && *(int *)(F + 0x30) == 3)) {
            phase = *(int *)(D_L00_0016C960 + 0x30);
            idx = -1;
            if (phase == 2) {
                idx = 3;
            } else if (phase == 3) {
                idx = 2;
            }
            func_L00_00264870(*(int *)(D_L00_0016C960 + 0x178 + idx * 4));
        }
        if (D_L00_0015F6A8 == 2 && *(int *)(F + 0x30) == 4) {
            F = D_L00_0016C960;
            src = *(char **)(F + 0x184);
            if (src != 0 && func_001F9850(150) <= *(int *)(F + 0x34) && *(int *)(F + 0x34) <= func_001F9850(220)) {
                func_L00_00250800(src, 0, pos);
                func_L00_00264BE8(pos, pos, D_L00_0015F660, 120000.0f, 50000.0f);
                for (i = 0; i < 10; i++) {
                    color = (func_L00_00258BC8(0x40, 0x80) << 24) | 0x787878;
                    v = func_L00_00258BC8(0, 4);
                    part = func_L00_0026DEA0(pos, func_002140B0(2) == 0 ? v : -v, D_L00_0015F660, color, 0.75f, 1.0f, 1.03f, 120000.0f);
                    if (part != 0) {
                        part[3] = 0x44;
                        tail = part + 0x20;
                        part[8] = func_L00_00258BC8(0, 0xFF);
                        *(short *)(part + 0xA) = func_001F9850(60);
                        *(int *)(tail + 4) = 2;
                        tail[0xA] = color >> 24;
                        tail[0xB] = part[0xA];
                    }
                }
            }
        }
        break;
    }
}
