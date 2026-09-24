#include "common.h"
#include "structs.h"

/*
 * core_text object 0x114060-0x1144D0. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 *
 * newlib (the SDK's libc.a): fvwrite.o (__sfvwrite) and fwalk.o
 * (_fwalk), back to back. Built with Sony's 2.9-ee (Makefile.sn,
 * EE29_CORE), like libc.a.
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

INCLUDE_ASM("asm/nonmatchings/core_text", func_00114060);

typedef struct { char pad0[0xC]; short _flags; char pad1[0x58 - 0xE]; } Fwalk_FILE;
typedef struct Fwalk_glue {
    struct Fwalk_glue *_next;
    int _niobs;
    Fwalk_FILE *_iobs;
} Fwalk_glue;
typedef struct { char pad[0x1D8]; Fwalk_glue __sglue; } Fwalk_reent;

/* newlib's _fwalk (findfp.c), verbatim: call function on every FILE in
   use (_flags != 0) in every glue block of ptr->__sglue (+0x1D8), or-ing
   the results. It returns int; the shared preamble's void declaration is
   gone from this file. */
int func_00114438(Fwalk_reent *ptr, int (*function)()) {
    register Fwalk_FILE *fp;
    register int n, ret = 0;
    register Fwalk_glue *g;

    for (g = &ptr->__sglue; g != 0; g = g->_next)
        for (fp = g->_iobs, n = g->_niobs; --n >= 0; fp++)
            if (fp->_flags != 0)
                ret |= (*function)(fp);
    return ret;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_001144CC);
