#include "common.h"
#include "structs.h"

/*
 * core_text object 0x12A2F0-0x12AC80. Boundaries are retail's linker fill
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
extern void func_001206B0(float *, int *);
extern void func_001208E4();
extern void func_00118B20(int, void *, int);
extern void func_00118C80(int);
extern int func_00120F30(int);
extern void *D_00159840;
extern int D_001313E0;
extern int D_001313E8;
extern int D_001313EC;
extern int D_001313F0;
extern int D_001313E4;
extern int D_001313FC;
extern void func_00120C58(void);
extern int func_0011B4C8();
extern int func_00120D28(int);
extern void func_00118C90(int);
extern char D_00132590[];
extern int D_00131440;
extern void func_0011A6C8();
extern int func_0011B6B8(void *);
extern char D_00153000[];
extern char D_00132E08[];
extern int D_001313D0;
extern int func_00121040(int);
extern int D_001325C0;
extern char D_00132E40[];
extern void func_00123650(void *);
extern char D_001534E0[];
extern int D_00132E70[];
extern int func_001238B0(int, int, int, int);
extern int D_00132EA8;
extern int *D_00159B28;
extern int *D_00159B2C;
extern int *D_00159B30;
extern char D_0015B108[];
extern int D_0015B180;
extern void func_00124B60(void *);
extern char D_00153658[];
extern int func_00124920(int);
typedef struct {
    char unk_00[4];
    int  unk_04;
    int  unk_08;
    char *unk_0C;
    char unk_10[0x320];
} Ent330;
extern Ent330 D_0015B640[];
extern void func_00119288(void *a, void *b);
extern void func_001286E8(int, int);
extern int D_00132F70[];
extern void func_0012BCC8(int);
extern void func_00128590(void *);
extern void func_00128968(void *, int);
extern int func_00128860(void *, int);
extern int func_00128A58(void *, int);
extern void func_00129180(void *);
extern char D_00153A80[];
extern void func_00116248_4(void *, char *, int, int) __asm__("func_00116248");
extern void func_0012C468_a(void *, void *) __asm__("func_0012C468");

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A2F0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A418);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A558);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A718);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012A7E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AA70);

/*
 * REVERTED (size mismatch: ours 32 bytes, retail 28). Semantics are
 * certain and the instruction sequence is identical:
 *
 *   int func_0012AAA8(void *arg0, int arg1) {
 *       return (int)(*(unsigned long *)arg0 >> (0x40 - arg1));
 *   }
 *
 * ld / li 0x40 / subu / dsrlv / dsll32 / dsra32 all match. The single
 * difference is delay-slot filling: retail puts the final `dsra32`
 * (second half of the 64->32 sign-extension for the int return) IN the
 * `jr` delay slot; this compiler emits it before the `jr` and fills the
 * slot with a nop, costing 4 bytes. Tried hoisting the load to a local
 * and hoisting the shift amount to a local -- both still 8 instructions.
 * Not source-steerable; it is the assembler/compiler delay-slot filler,
 * same family as the other scheduling blockers.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AAA8);

/*
 * Reverted: decoded but not compilable as written. Banking the decode
 * because that is the expensive part.
 *
 * It is a bitstream reader. Consume n bits from the 64-bit accumulator
 * at +0x0, then refill it a byte at a time from the cursor at +0xC
 * until at least 0x39 bits are available, wrapping the cursor back to
 * +0x20 when it reaches the end pointer at +0x24. +0x10 holds the bit
 * count, +0x18 the running total.
 *
 * Why it does not build: the refill needs a 64-bit shift by a VARIABLE
 * amount (`(long long)*p << (0x38 - bits)`), and this compiler rejects
 * that outright -- `unsupported wide integer operation`. That is the
 * same limitation already recorded for ordered 64-bit compares; shifts
 * by a constant are fine, by a variable are not. So this needs either
 * inline asm for the shift, or a reformulation that keeps the shift
 * amount constant. Do not simply retype the locals -- the operation
 * itself is what is refused.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AAC8);

/*
 * Close, not exact (8/76), same size. Two-argument sibling of
 * func_0012ABB0 above and blocked identically: the instruction multiset
 * is right, but retail schedules `move $16,$4` into the first jal's
 * delay slot while this compiler puts a register save there. Not
 * source-steerable -- see func_0012ABB0's comment for the variants
 * already tried.
 */
int func_0012AB60(void *arg0, int arg1) {
    int r = func_0012AAA8(arg0, arg1);
    func_0012AAC8(arg0, arg1);
    return r;
}

extern int func_0012AAA8(void *, int);
extern void func_0012AAC8(void *, int);

/*
 * Close, not exact (8/68), same size so harmless to everything after it.
 * Logic confirmed. The residual is purely which instruction fills the
 * first jal's delay slot: retail emits the three saves consecutively
 * ($16@0, $17@16, $31@32) and schedules `move $16,$4` into the slot,
 * while this compiler interleaves the $16 save with the move and puts
 * `sd $17,16` in the slot instead. Same instruction multiset, different
 * schedule. Hoisting the result into a pre-declared local (the usual
 * declaration-order lever) changes nothing.
 */
int func_0012ABB0(void *arg0) {
    int r;
    r = func_0012AAA8(arg0, 1);
    func_0012AAC8(arg0, 1);
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012ABF8);

unsigned int func_0012AC50(char *arg0, int arg1) {
    unsigned int v = *(int *)(arg0 + 0x8) + (arg1 >> 3);
    if (v >= *(unsigned int *)(arg0 + 0x24)) {
        v -= *(int *)(arg0 + 0x28);
    }
    return v;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012AC7C);
