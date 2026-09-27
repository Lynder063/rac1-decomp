#include "common.h"
#include "structs.h"

/*
 * core_text object 0x113B70-0x114000. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 *
 * newlib's freer.o (mallocr.c built with DEFINE_FREE: _free_r and
 * _malloc_trim_r; the SDK's libc.a). Built with Sony's 2.9-ee
 * (Makefile.sn, EE29_CORE), like libc.a.
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

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113B70);

typedef struct MallocChunk {
    unsigned int prev_size;
    unsigned int size;
    struct MallocChunk *fd;
    struct MallocChunk *bk;
} MallocChunk;

typedef struct { char pad[8]; MallocChunk *av2[1]; } MallocState; /* av_[2] = top */

extern MallocState D_0012F888;
extern char *D_0012FCA0; /* malloc_sbrk_base */
extern int D_0012FCB8;   /* current_mallinfo.arena (sbrked_mem) */

extern void func_001154C0(void *); /* MALLOC_LOCK (__malloc_lock, empty) */
extern void func_001154C8(void *); /* MALLOC_UNLOCK (__malloc_unlock, empty) */
extern void *func_001161E8(void *reent_ptr, int size); /* _sbrk_r */

#define TOP (D_0012F888.av2[0])

/* newlib malloc_trim (_malloc_trim_r): gives whole pages of the top chunk
 * back to the system with sbrk when it is more than a page bigger than
 * needed after `pad`, checking first that nothing else moved the break;
 * on failure it resyncs top and sbrked_mem with the real break. The
 * `arena` pointer in the last block is load-bearing: it steers the delay
 * slot of the branch before it. */
int func_00113E90(void *reent_ptr, unsigned int pad) {
    long top_size;
    long extra;
    char *current_brk;
    char *new_brk;
    unsigned long pagesz = 0x1000;

    func_001154C0(reent_ptr);

    top_size = TOP->size & ~3u;
    extra = ((top_size - pad - 0x10 + (pagesz - 1)) / pagesz - 1) * pagesz;

    if (extra < (long)pagesz) {
        func_001154C8(reent_ptr);
        return 0;
    }

    current_brk = (char *)func_001161E8(reent_ptr, 0);
    if (current_brk != (char *)TOP + top_size) {
        func_001154C8(reent_ptr);
        return 0;
    }

    new_brk = (char *)func_001161E8(reent_ptr, -extra);

    if (new_brk == (char *)-1) {
        current_brk = (char *)func_001161E8(reent_ptr, 0);
        top_size = current_brk - (char *)TOP;
        if (top_size >= 0x10) {
            D_0012FCB8 = current_brk - D_0012FCA0;
            TOP->size = top_size | 1;
        }
        func_001154C8(reent_ptr);
        return 0;
    } else {
        int *arena = &D_0012FCB8;
        TOP->size = (top_size - extra) | 1;
        *arena -= extra;
        func_001154C8(reent_ptr);
        return 1;
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00113FFC);
