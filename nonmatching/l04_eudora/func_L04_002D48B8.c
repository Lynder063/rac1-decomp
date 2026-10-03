/* NON_MATCHING func_L04_002D48B8 -- src/overlays/l04_eudora/vendor_002CB800.c
 * Best so far: BYTES 12/148 (91.9% of the bytes match), checked 2026-10-02.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Spawns class 0x23A moby (CreateMoby), copies 0x32/0x38/0x48 fields from arg0, qcopy of arg1 pos (via stack cop
 *   p4.c (char *p = tmp; qcopy(m+0x10,p); u64 for 0x38) is 12 instructions off: only store order of sb 0x31 / lhu,
 *   Try ordering the 0x32 copy before m[0x31]=1.
 */
typedef int u128 __attribute__((mode(TI)));
extern struct Moby *func_0020D348_m(int) __asm__("func_0020D348");
extern void func_L00_00251E30(void *);
extern void qcopy(void *, void *);
// Spawns a class 0x23A moby copying fields from another and placing it at a position.
void *func_L04_002D48B8(char *src, char *pos) {
    char tmp[16];
    char *p = tmp;
    char *m;
    *(u128 *)tmp = *(u128 *)pos;
    m = (char *)func_0020D348_m(0x23A);
    if (m != 0) {
        *(unsigned char *)(m + 0x30) = 0xFF;
        m[0x31] = 1;
        *(unsigned short *)(m + 0x32) = *(unsigned short *)(src + 0x32);
        *(int *)(m + 0x40) = 0;
        *(int *)(m + 0x44) = 0;
        *(float *)(m + 0x48) = *(float *)(src + 0x48);
        *(u64 *)(m + 0x38) = *(u64 *)(src + 0x38);
        qcopy(m + 0x10, p);
        func_L00_00251E30(m);
    }
    return m;
}
