#include "common.h"
#include "structs.h"

/*
 * core_text object 0x11DBE8-0x11DD68. Boundaries are retail's linker fill
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

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DBE8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DBF8);

/* Word-copy loop, byte-identical to func_0011DA08 in retail -- see
   its revert doc (core/0011D960.c) for the unreachable delay-slot gap. */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DC08);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DC40);

extern void func_00118CF0(void *);
extern void func_00118CE0(void *);

/* Reads a word through func_00118CF0, rewrites its 13..15 bit field to 1,
   pushes it back, re-reads it and restores the original. Returns whether
   the field read back as 0. `srl` (not `sra`) at the end is the tell that
   the scratch word is unsigned.

   Not exact: 10/104, same size. Every instruction and operand matches;
   the residual is entirely prologue scheduling -- retail emits
   `sd $16,0x10; sd $31,0x20` back to back and spends the first call's
   delay slot on the argument, this build sinks the `$16` save into the
   delay slot instead. See the gcc 2.9-ee note in docs/DECOMP_PROGRESS.md:
   this is the sq-then-substitute pipeline scheduling against the wrong
   store width, not a source-shape problem. */
int func_0011DC50(void) {
    unsigned int saved;
    unsigned int cur;
    func_00118CF0(&saved);
    cur = (saved & 0xFFFF1FFF) | 0x2000;
    func_00118CE0(&cur);
    func_00118CF0(&cur);
    func_00118CE0(&saved);
    return ((cur >> 13) & 7) == 0;
}

extern int D_00130BD0[];
extern char D_00130428[];
extern int func_0011DC50(void);
extern void func_0011DBE8(int, int);
extern void func_0011DBF8(int, void *, int);
extern int func_0011DC40(int);
extern void func_00118D80(int);

/* Bring up the two fixed channels from the D_00130BD0 table, load the
   0x7A8-byte image at D_00130428 to 0x80074000, then walk the remaining
   table entries handing each one its func_0011DC40 result. Does nothing
   unless func_0011DC50 says the hardware is in the right state.

   The loop counter has to be UNSIGNED. As `int`, gcc normalises the
   two-to-three loop into a count-down from zero (`addu $18,$18,-1` /
   `bgezl`) and the function comes out 4 bytes short; as `unsigned` it
   keeps retail's count-up with `sltiu`, which is the tell in retail's
   own code. Worth remembering: signedness of a loop variable decides
   whether this compiler is allowed to reverse the loop.

   Near-miss (4/43), size-exact: two pairs of adjacent instructions are
   scheduled the other way round -- the 0x7A8 immediate against the %lo
   of D_00130428, and the two argument loads for the third func_0011DBE8
   call. Feeding that call through explicit temporaries in retail's
   order does not move it. */
void func_0011DCB8(void) {
    int *g;
    int *p;
    unsigned int i;

    if (func_0011DC50() == 0) {
        return;
    }
    i = 2;
    g = D_00130BD0;
    p = g + 4;
    func_0011DBE8(g[0], g[1]);
    func_0011DBF8((int)0x80074000, D_00130428, 0x7A8);
    func_00118D80(0);
    func_00118D80(2);
    func_0011DBE8(g[2], g[3]);
    for (; i < 3; i++) {
        func_0011DBE8(p[0], func_0011DC40(p[0]));
        p += 2;
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011DD64);
