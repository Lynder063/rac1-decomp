/* NON_MATCHING func_L00_0025E210 -- src/overlays/shared/mobyutil_00258BC8.c
 * Best so far: BYTES 3/20 (85.0% of the bytes match), checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L00_0025E210
 *   Function copies a 64-bit value from an offset in a global-addressed structure to an offset in a parameter. The
 *   Wall: per-function compiler settings or missing qcopy/similar library function. May need manual assembly or sp
 *   mini5/a02: s64 fixes ld/sd and actual D_001414D0 removes unrelated-symbol offset. Three distinct forms p6/p7/p
 *   Need global-pointer/value register allocation matching v1/a1 rather than v0/v1.
 */
extern char *D_001414D0 MACRO_ADDR;
/* copies the global object's 64-bit lighting value */
void func_L00_0025E210(char *dst) {
 s64 *src=(s64 *)(D_001414D0+0x38);
 s64 *out=(s64 *)(dst+0x38);
 *out=*src;
}
