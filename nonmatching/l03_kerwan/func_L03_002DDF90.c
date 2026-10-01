/* NON_MATCHING func_L03_002DDF90 -- src/overlays/l03_kerwan/vendor_002CB280.c
 * Best so far: BYTES 3/248 (98.8% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Stopped (checker limit, not a code difference). func_L03_002DDF90: switch on mode (1..4 -> help message ids 0x
 *   p0.c compiles to the retail instructions exactly; the only 3 differing bytes are the %hi/%lo of func_L00_00237
 *   Unblock: lead should extend overlay_check so HI16/LO16 refs to a multi-copy function accept retail's copy (sam
 */
extern void func_00215F80(int, int);
extern int func_001FFB38(int, int, int, int, int, int, int);
extern void func_L00_002367A8(int, int);
extern void func_L00_00237B20(void);
extern void func_L00_00237B70(void);
extern void func_L00_00237B90(void);

/* Shows a help message for the mode, then keeps a hud queue entry alive. */
void func_L03_002DDF90(char *m, int mode) {
    char *d = *(char **)(m + 0x78);
    int h;
    switch (mode) {
    case 1:
        func_00215F80(8, 0xBCE);
        break;
    case 2:
        func_00215F80(8, 0xBCF);
        break;
    case 3:
        func_00215F80(8, 0xBCB);
        break;
    case 4:
        func_00215F80(8, 0xBCD);
        break;
    default:
        func_00215F80(8, -1);
        break;
    }
    h = *(int *)(d + 0xA4);
    if (h == -1) {
        *(int *)(d + 0xA4) = func_001FFB38(0xC, 0, (int)func_L00_00237B20, (int)func_L00_00237B70, (int)func_L00_00237B90, 0, 0);
    } else {
        func_L00_002367A8(h, 0xA);
    }
}
