/* NON_MATCHING func_L00_00260878 -- src/overlays/shared/mobyutil_00258BC8.c
 * Best so far: SIZE ours 120 / retail 116, checked 2026-10-06.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Removes entry p from the short list a (a[0] = count, entries are shorts compared as D_L00_00160098 + (a[i] << 
 *   Wall: fragment. The `bnel` to func_L00_002608D0 (offset 0x58, first word after the 88 bytes) continues the loo
 *   Resumed with joined tail: this is a complete swap-delete list function; prior fragment diagnosis is superseded
 *   Eight-run budget exhausted. p7 has correct size but base pointer hoisted outside loop and count/index/base reg
 *   A source form preserving separate signed bound and unsigned count loads without hoisting the base would unbloc
 */
extern char * D_L00_00160098_60D30 __asm__("D_L00_00160098") MACRO_ADDR;
// Removes a moby ID from a list by replacing it with the last entry.
void func_L00_00260878(char *moby, short *list) {
 int i;
 unsigned short count;
 short *entry = list + 1;
 for (i = 1; i <= *list && (count = *(unsigned short *)list, 1); i++, entry++) {
  if (D_L00_00160098_60D30 + (*entry << 8) == moby) {
   *entry = list[(short)count];
   (*list)--;
   return;
  }
 }
}
