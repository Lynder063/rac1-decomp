/* NON_MATCHING func_L00_0023D750 -- src/overlays/shared/hud_00235960.c
 * Best so far: BYTES 8/228 (96.5% of the bytes match), checked 2026-10-08.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   HUD element update: clamps e[0x74] between e[8] and *e[0xC] (or 0), then on a random-timer compare ramps the t
 *   Everything matches except one pair of instructions: retail loads the gp limit (lw -0x730C($gp)) before `lbu q[
 *   Unblock: some source shape that evaluates the gp global before q[0] in the first ramp-up branch; not found.
 *   q29/v01: ported Lombyte's FUN_L00_0023cdb8 (p6.c struct form, p7.c char* wrapper): both COMPILE-fail because s
 *   mini11/a03: current hud_00235960.c:1084 still declares func_L00_0023D750(void); retail reads incoming a0. Sign
 *   HUD counter ramp/clamp; prior closest p5 differs 8/228 bytes (gp limit versus byte load order). Unblock by lea
 *   hq1 s05: the prototype clash (hud_00235960.c:1084 declares func_L00_0023D750(void)) is avoidable in the candid
 */
extern int func_001F9850(int);
extern short D_L00_0015F9F4;
extern short D_L00_0015F9F8;

// Steps a HUD element's fill level and ramps its two-stage counter up or down on a random timer.
void func_L00_0023D750_c(char *e) __asm__("func_L00_0023D750");
void func_L00_0023D750_c(char *e) {
    unsigned char *q = (unsigned char *)e + 0x70;
    int a = *(int *)(e + 8);
    int b = **(int **)(e + 0xC);

    *(int *)(e + 0x74) = b;
    if (a < b) {
        *(int *)(e + 0x74) = a;
    } else if (b < 0) {
        *(int *)(e + 0x74) = 0;
    }
    if (*(int *)(e + 0x7C) >= func_001F9850(5)) {
        *(int *)(e + 0x7C) = func_001F9850(5);
        if (!(q[0] >= *(int *)&D_L00_0015F9F4)) {
            q[0] = q[0] + 1;
        } else if (q[1] < *(int *)&D_L00_0015F9F8) {
            q[1] = q[1] + 1;
        }
    } else {
        *(int *)(e + 0x6C) = 1;
        if (q[1] != 0) {
            q[1] = q[1] - 1;
        } else if (q[0] != 0) {
            q[0] = q[0] - 1;
        } else {
            *(int *)(e + 0x6C) = -6;
        }
    }
}
