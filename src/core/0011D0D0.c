#include "common.h"
#include "structs.h"

/*
 * core_text object 0x11D0D0-0x11D700. Boundaries are retail's linker fill
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

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D0D0);

extern int func_00118E70(int);
extern void func_00118EC0(void);

int func_0011D210(void) {
    if (func_00118E70(0x4) & 0x40000) {
        func_00118EC0();
        return 1;
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D248);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D358);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D360);

/*
 * REVERTED: size mismatch, 52 bytes against retail's 56. Semantics are
 * certain:
 *
 *   unsigned int n = nbytes >> 2, i = 0;
 *   if (n) do { *dst = *src; src++; i++; dst++; } while (i < n);
 *   return 0;
 *
 * A word-at-a-time copy. Every instruction matches; the missing 4 bytes
 * are a `nop` retail leaves in the loop branch's DELAY SLOT, where this
 * compiler fills the slot with the `addiu $4,$4,4` pointer bump. That is
 * the R5900 short-loop erratum again, in a form the classifier did not
 * look for (it checked for two nops *before* the branch, not an
 * unfilled delay slot after it). No source shape fixes it, and
 * -malign-loops/-falign-loops do nothing here: the former is accepted
 * but is x86-oriented in 2.95, the latter is rejected outright.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D370);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D3A8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D3B8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D3C8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D490);

extern int func_00118EA0(void);
extern void func_0011D4E0(void);
extern void func_00118EB0(void);

void func_0011D4A0(void) {
    if (func_00118EA0() == 0x2000000) {
        func_0011D4E0();
    } else {
        func_00118EB0();
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D4E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D6D4);
