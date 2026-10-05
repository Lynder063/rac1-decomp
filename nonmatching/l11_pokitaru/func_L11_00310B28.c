/* NON_MATCHING func_L11_00310B28 -- src/overlays/l11_pokitaru/vendor_002CC828.c
 * Best so far: BYTES 7/200 (96.5% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   # func_L11_00310B28 (200 B)
 *   Best: c2.c BYTES 7/200. Only difference: the fail path's 128-bit zero store at st+0x20.
 *   Retail: addiu $a0,$s0,0x20 / sq $zero,0($a0) (address in its own register, like qcopy).
 *   Ours: por $v0,$zero,$zero / sq $v0,0x20($s0). sq $zero has no C form (docs/LEVERS.md);
 *   would need a sanctioned qzero helper in common.h next to qcopy. Everything else exact.
 */
#include "common.h"

typedef int u128 __attribute__((mode(TI)));
extern char *func_L11_00311260(void);
extern void func_L00_00251E30(void *);
extern void func_L00_00250800(void *, int, void *);
extern void func_001F9BF0(void *, void *, void *);

int func_L11_00310B28(char *src, char *st) {
    char *m;
    if (*(char **)(st + 0x34) == 0) {
        char *n = func_L11_00311260();
        *(char **)(st + 0x34) = n;
        if (n == 0) {
            goto fail;
        }
    }
    m = *(char **)(st + 0x34);
    if (((unsigned char *)m)[0x20] == 0xFE) {
        goto fail;
    }
    if (((unsigned char *)m)[0x20] == 0xFD) {
        goto fail;
    }
    qcopy(m + 0x10, src + 0x10);
    qcopy(m + 0x40, src + 0x40);
    func_L00_00251E30(m);
    func_L00_00250800(*(char **)(st + 0x34), 0, st);
    func_001F9BF0(st + 0x20, *(char **)(st + 0x34) + 0x10, st);
    return 1;
fail:
    qcopy(st, src + 0x10);
    *(u128 *)(st + 0x20) = 0;
    return 0;
}
