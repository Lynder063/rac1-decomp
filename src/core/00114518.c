#include "common.h"
#include "structs.h"

/*
 * core_text object 0x114518-0x1154C0. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 *
 * newlib (the SDK's libc.a), nine members back to back: lseekr.o
 * (_lseek_r), makebuf.o (__smakebuf), mallocr.o (malloc_extend_top,
 * _malloc_r), mbtowc_r.o (_mbtowc_r), memchr.o, memcmp.o, memcpy.o,
 * memmove.o and memset.o. Built with Sony's 2.9-ee (Makefile.sn,
 * EE29_CORE), like libc.a; _mbtowc_r is newlib's own text.
 */

/* Declarations in scope here before the split. */
extern long func_00116F68(int arg0, int arg1, int arg2);
extern int D_0015ED10;
extern void *D_0012F86C NOT_SDA;
extern int func_001162B8(void *arg0, void *arg1, void *arg2);
extern int func_00116320(void *arg0, void *arg1, void *arg2);
extern long func_001163A0(void *arg0, void *arg1, void *arg2);
extern void func_00116408(void *arg0);
extern void func_00113968(void);
extern void func_00114438(void *, void *);
extern char D_00152470[];

int func_00114518(int *errOut, void *a, void *b, void *c) {
    int r;
    D_0015ED10 = 0;
    r = func_00119108(a, b, c);
    if (r == -1 && D_0015ED10 != 0) {
        *errOut = D_0015ED10;
    }
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00114578);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001146C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00114920);

/*
 * _mbtowc_r, newlib's text (1999, before multibyte locales): a byte
 * becomes the wide char; NULL s returns 0, n == 0 returns -1.
 *
 * Exact under 2.9-ee. The same logic nested the other way was 56 bytes
 * against 60 under 2.95.3 and stayed a stub: retail's `bnel n,0` puts
 * the byte load of the branch target in its likely slot, which 2.9-ee
 * does from newlib's own two early returns.
 */
int func_00115098(void *r, int *pwc, const char *s, unsigned int n, int *state) {
    int dummy;
    unsigned char *t = (unsigned char *)s;

    if (pwc == 0)
        pwc = &dummy;

    if (s != 0 && n == 0)
        return -1;

    if (s == 0)
        return 0;  /* not state-dependent */

    *pwc = (int)*t;
    return (*t != '\0');
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001150D4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001151B4);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00115248);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001152F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001153FC);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001154BC);
