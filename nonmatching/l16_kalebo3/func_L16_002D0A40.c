/* NON_MATCHING func_L16_002D0A40 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: BYTES 7/192 (96.3% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - Abs z difference <.1 returns object; process final negative-tag entry and otherwise return0.
 *   - Class literal rematerialized each iteration; use outer labels like D5340 to avoid caching class across calls
 *   1. BYTES8/192: loop and height math are exact; masked index/class result use V0/V1 swapped and self-test opera
 *   2. BYTES7: reversed self test is fixed but integer moby address reverses the target ADDU. Restore pointer addi
 *   3. BYTES7: reversing class equality operands leaves the same index/class V0/V1 swap. Test class switch expansi
 *   4. BYTES7: integer offset, reversed class operands and switch retry tie on masked-index/class-result V0/V1 swa
 *   Revisit: full asm read. All earlier retries used a byte pointer and compound masked index. Model moby position
 *   5. BYTES7/192 unchanged: typed peer records and unsigned-short masked entry preserve the six index/class regis
 */
#include "common.h"
extern int *D_L16_001ABFC0[];
extern char *D_L16_00160098 MACRO_ADDR;
extern float func_001F9B88(float);
typedef struct {char pad00[0x10];float position[4];unsigned char state,group;char pad22[0x84];short type;} L16HeightPeer;
/* Find another linked class-228 moby at the same height. */
int func_L16_002D0A40(char *arg) {
    L16HeightPeer *m=(L16HeightPeer *)arg,*other;
    short *p=(short *)D_L16_001ABFC0[m->group];
    unsigned short entry;
    if(!p) return 0;
next:
    entry=*(unsigned short *)p&0x7FFF;
    other=(L16HeightPeer *)(D_L16_00160098+(entry<<8));
    if(0x228==other->type && m!=other) {
        if(func_001F9B88(other->position[2]-m->position[2])<0.1f) return (int)other;
    }
    if(*p++>=0) goto next;
    return 0;
}
