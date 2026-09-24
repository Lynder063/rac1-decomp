#include "common.h"
#include "structs.h"

/*
 * core_text object 0x11DD68-0x11DDD0. Boundaries are retail's linker fill
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
extern void func_0011D4A0(void);

/*
 * Reverted: size mismatch (ours=44, retail=48 -- 4 bytes short).
 *
s32 func_0011DD68(u8 *arg0, u8 *arg1, u32 arg2) {
    s32 var_a3;
    u8 *var_a0;
    u8 *var_a1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a3 = 0;
    if (arg2 != 0) {
        do {
            *var_a0 = *var_a1;
            var_a3 += 1;
            var_a1 += 1;
            var_a0 += 1;
        } while (var_a3 < arg2);
    }
    return 0;
}
 *
 * A byte-copy loop returning 0; unsigned counter needed to avoid loop
 * reversal (see [[rac1-64bit-field-type]]'s sibling lesson on this
 * target). Every instruction matches except one: retail leaves the
 * branch's delay slot a genuine standalone `nop`, with `dst++`
 * scheduled BEFORE the branch instead; this compiler always sinks
 * `dst++` into the delay slot since nothing stops it. Tried computing
 * the store through a saved old-dst local (`char *d = dst; dst++; *d
 * = b;`) -- no change. Not reachable from source.
 */
s32 func_0011DD68(u8 *arg0, u8 *arg1, u32 arg2) {
    s32 var_a3;
    u8 *var_a0;
    u8 *var_a1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a3 = 0;
    if (arg2 != 0) {
        do {
            *var_a0 = *var_a1;
            var_a3 += 1;
            var_a1 += 1;
            var_a0 += 1;
        } while (var_a3 < arg2);
    }
    return 0;
}

/* Tail call: retail is `j func_0011D4A0` + nop, with no frame at all.
   Reached via tools/fix_tail_calls.py, which rewrites the compiler's
   call-and-return for the functions listed in tools/tail_call_functions.txt. */
void func_0011DD98(void) {
    func_0011D4A0();
}

/*
 * Reverted: size mismatch (ours=44, retail=40 -- 4 bytes over).
 *
 *   extern void func_00118A60(void);
 *
 *   void func_0011DDA0(void) {
 *       func_0011DD98();
 *       func_00118A60();
 *   }
 *
 * Retail is `jal func_0011DD98` followed by a bare `j func_00118A60`
 * (no frame needed for the second call at all). func_0011DDA0 IS
 * listed in tools/tail_call_functions.txt, but that list only gates
 * WHICH functions the rewrite considers -- tools/fix_tail_calls.py's
 * rewrite_function() still requires the function to contain exactly
 * one `jal` total (see its own comment: matching call-and-return
 * shape on both sides is common and must not be rewritten). A
 * function with a real leading call plus a trailing tail call, like
 * this one, has two `jal`s pre-rewrite and doesn't fit that shape;
 * the tool leaves it alone and both calls compile as call-and-return.
 * Extending the tool to handle "call, then tail call" is out of scope
 * here -- flagging it for whoever picks up the tail-call backlog.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DDA0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DDC8);
