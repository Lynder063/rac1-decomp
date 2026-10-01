/* NON_MATCHING func_L13_002E56C8 -- src/overlays/l13_gemlik/vendor_002C2638.c
 * Best so far: BYTES 10/328 (97.0% of the bytes match), checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Runs a moby's timed state: switch on func_L00_0025B4D0's result (cases 1,2 zero the timer), then if n>=2 eithe
 *   Best: p2.c / p3.c / p7.c / p9.c (BYTES 10/328, all identical bytes): only scheduling differs in the then-branc
 *   Unblock: some form where the return-value constant is emitted after the call-argument moves; maybe result is n
 */
extern char *func_L00_0025B478(void *, int, int);
extern int func_L00_0025B4D0(void *, char *, float *, int, int *, int, int, int);
extern void func_L00_0025E4B0(void *m, short *p);
extern int func_001F9850(int);
extern void func_L00_0025E590(void *, char *);

/* runs one step of a moby's timed state and reports whether the timer ran out */
int func_L13_002E56C8(char *m, char *arg, float *t) {
    char *r = func_L00_0025B478(m, 0x330000, 0);
    int n;
    int result = 0;
    char *e;
    switch (func_L00_0025B4D0(m, r, t, 0, &n, 0, 0, 4)) {
    case 0:
        break;
    case 1:
        *(int *)t = 0;
        break;
    case 2:
        *(int *)t = 0;
        break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
        break;
    }
    e = arg + 0x60;
    if (n >= 2) {
        float lim = *(float *)(r + 0x2C);
        unsigned short fl;
        if (*t <= lim) {
            *(int *)t = 0;
            fl = *(unsigned short *)(m + 0x34);
            result = 1;
            *(unsigned short *)(m + 0x34) = fl & 0xEFFF;
            *(unsigned char *)(arg + 0x67) = 0x78;
            func_L00_0025E4B0(m, (short *)e);
        } else {
            *t = *t - lim;
            *(unsigned char *)(arg + 0x67) = 0xFA;
            *(short *)(arg + 0x26) = func_001F9850(0x3C);
            func_L00_0025E4B0(m, (short *)e);
        }
    }
    *(unsigned char *)(m + 0xA4) = 0xFF;
    func_L00_0025E590(m, e);
    return result;
}
