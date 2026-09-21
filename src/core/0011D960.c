#include "common.h"
#include "structs.h"

/*
 * core_text object 0x11D960-0x11DBE8. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
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
extern int func_00119088();
extern int func_00119110();
extern long func_00116108_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_00116108");
extern long func_001188C8_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_001188C8");
extern long func_00114518_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_00114518");
extern int func_00112468(int *errOut, int arg1);
extern int func_00114060(int, void *);
extern void func_00113AE0(void *);
extern void func_00117118(void *, void *, int, int);
extern int func_00119008();
extern int D_0012FCF0 NOT_SDA;
extern void func_00118E90(int arg0, void *arg1);
extern void *D_00154A40 NOT_SDA;
extern int D_00155080[];
extern void func_001193F8(int);
extern void func_00118AD0(int, int);
extern int D_00154F54;
extern int D_0012FD04;
extern int D_00154F64 NOT_SDA;
extern int D_00154F6C NOT_SDA;
extern void func_0011AA90(int, int, int, int, int, int, int);
extern void func_0011AA00(void);
extern int D_0012FD08 NOT_SDA;
extern int func_0011D960(void);
extern void func_0011D9A8(void);
extern int D_0012FDA0;
extern int D_0012FDA4;
extern char D_00157E80[];
extern int D_0012FD9C;
extern void func_0011BBF0(void);
extern int D_0012FD9C NOT_SDA;
extern int func_001151B4();
extern char D_0012FCEC[];
extern char D_001580A8[];
extern int D_0012FDA8;
extern void func_001153FC(void *, int, int);
extern int D_0012FD94;
extern int D_0012FDAC;
extern char D_00158140[];
extern int D_00158180;
extern int D_001581C0;
extern char D_00158528[];
extern int D_0012FDB4;
extern int func_0011CE70(int arg0, int arg1, int arg2, void *arg3);
extern int func_00118E70(int);
extern void func_00118EC0(void);
extern int func_00118EA0(void);
extern void func_0011D4E0(void);
extern void func_00118EB0(void);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D960);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D9A8);

extern int func_00118C70(void *);
extern int D_00130420;
extern int D_00130424;

void func_0011D9C0(void) {
    int a[8];
    int b[8];
    a[1] = 1;
    a[2] = 1;
    b[1] = 1;
    b[2] = 1;
    D_00130420 = func_00118C70(a);
    D_00130424 = func_00118C70(b);
}

/*
 * Reverted: size mismatch (ours=52, retail=56 -- 4 bytes short).
 *
 *   int func_0011DA08(int *dst, int *src, unsigned int n) {
 *       unsigned int count = n >> 2;
 *       unsigned int i;
 *       if (count != 0) {
 *           i = 0;
 *           do {
 *               int w = *src;
 *               i++;
 *               src++;
 *               *dst = w;
 *               dst++;
 *           } while (i < count);
 *       }
 *       return 0;
 *   }
 *
 * Word-copy sibling of func_0011DD68's byte-copy loop (see its
 * revert doc for the full byte-granularity case) -- same class of
 * function appears at least three times in core_text
 * (func_0011DA08/func_0011DC08/func_0011DDF0, byte-identical to each
 * other in retail). Same unreachable gap: retail leaves the branch's
 * delay slot a genuine standalone nop with `dst++` scheduled before
 * the branch, while this compiler always sinks `dst++` into the
 * delay slot.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DA08);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DA40);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DA80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DA90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DA98);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DB98);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DBA8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DBE4);
