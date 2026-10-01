/* NON_MATCHING func_L16_002E5FC0 -- src/overlays/l16_kalebo3/vendor_002A50F0.c
 * Best so far: SIZE ours 128 / retail 132, checked 2026-10-01.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Moby update: looks up an entry via func_L05_0031AAA8(moby, data->id), copies two vectors from a level table in
 *   p7.c is 11 bytes off (size equal): only the scheduling of the delay slot of the null check differs (retail put
 *   Would need a way to make the scheduler hoist p+0x10 before the lui; p5/p6/p7 wordings all tie.
 */
#include "common.h"
extern char *D_L16_001601AC_m __asm__("D_L16_001601AC") MACRO_ADDR;
extern char *func_L05_0031AAA8(void *, short);
extern void func_L16_002E5D68(void *);

void func_L16_002E5FC0(char *moby)
{
    char *data = *(char **)(moby + 0x78);
    char *spawn = func_L05_0031AAA8(moby, *(short *)(data + 0xAE));
    if (spawn != 0) {
        int index = *(int *)(data + 0x80 + (*(short *)(data + 0xAC) << 2));
        char *entry = D_L16_001601AC_m + (index << 7);
        qcopy(spawn + 0x10, entry + 0x30);
        qcopy(spawn + 0x40, entry + 0x70);
        func_L16_002E5D68(spawn);
    }
    *(short *)(data + 0xAC) = *(unsigned short *)(data + 0xAE);
}
