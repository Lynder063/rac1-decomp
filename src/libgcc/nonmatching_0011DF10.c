#include "common.h"
#include "structs.h"

/*
 * libgcc2 L__main module (0x11DF10-0x1206A0): __do_global_ctors and __main.
 * __main already matches libgcc2.c byte for byte, but __do_global_ctors
 * differs from the revision in src/libgcc (retail has no atexit call),
 * so the module stays asm for now. See src/libgcc/README.md.
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
extern int func_00118C70(void *);
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
extern int D_00130420;
extern int D_00130424;
extern void func_00118CF0(void *);
extern void func_00118CE0(void *);
extern int D_00130BD0[];
extern char D_00130428[];
extern int func_0011DC50(void);
extern void func_0011DBE8(int, int);
extern void func_0011DBF8(int, void *, int);
extern int func_0011DC40(int);
extern void func_00118D80(int);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DF10);

/*
 * Reverted: same tail-call tooling gap as func_0012D730/func_0012D760
 * (see core/0012CC90.c) -- __main's static-initializer guard:
 *
 *   extern int D_001597EC;
 *   extern void func_0011DF18(void);
 *
 *   void func_0011DFC8(void) {
 *       if (D_001597EC == 0) {
 *           D_001597EC = 1;
 *           func_0011DF18();
 *       }
 *   }
 *
 * Retail's call into func_0011DF18 is a bare tail `j` reached only
 * through the guard-unset branch, with a plain `jr $ra` on the other
 * path. Already listed in tools/tail_call_functions.txt, but
 * fix_tail_calls.py's CONTROL-flow check rejects it for the same
 * reason as those two: it isn't a lone `jal` with no other branches.
 * Compiling as ordinary call-and-return bloats it enough to overlap
 * the next section at link time.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DFC8); /* __main */
