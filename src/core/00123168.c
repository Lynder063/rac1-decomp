#include "common.h"
#include "structs.h"

/*
 * core_text object 0x123168-0x1236F0. Boundaries are retail's linker fill
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

extern void *func_00121D08(void);
extern int func_00119328(int);
extern int func_00118AA0(int, int);
extern int func_00118A90(int, void *, int);
extern void func_00119390(int);

/*
 * Same-size near-miss (8/0xA0 bytes). Install (or, called with
 * arg0 == 0, uninstall) a handler/arg pair at offset 8/0xC of
 * D_00132E40 (func_00121D08's return -- same global func_00122140
 * reads the mode flag from), guarded by func_00119328/func_00119390,
 * a lock/unlock pair around the two syscall-wrapper calls
 * func_00118AA0/func_00118A90. Returns the previous handler.
 *
 * The only divergence is the func_00118A90(lvl, arg0, -1) call's
 * argument setup: retail computes a1 (arg0) before a0 (lvl); every
 * spelling tried here -- the literal `2` inline, a `lvl` local reused
 * across all four calls (this dropped the diff from 75 to 65 words by
 * fixing an unrelated store-order pair, but didn't touch this swap),
 * and forcing evaluation order through two sequenced statement-local
 * temporaries right before the call -- produces the same a0-before-a1
 * order regardless. Pure register-content-identical instruction
 * scheduling, not reachable from source.
 */
int func_00123168(void *arg0) {
    char *g = (char *)func_00121D08();
    int lvl = 2;
    int prev = *(int *)(g + 8);

    if (arg0 == 0) {
        func_00119328(lvl);
        func_00118AA0(lvl, *(int *)(g + 0xC));
        *(int *)(g + 0xC) = 0;
        *(int *)(g + 8) = 0;
    } else {
        if (prev != 0) {
            func_00119328(lvl);
            func_00118AA0(lvl, *(int *)(g + 0xC));
        }
        *(int *)(g + 8) = (int)arg0;
        *(int *)(g + 0xC) = func_00118A90(lvl, arg0, -1);
        func_00119390(lvl);
    }
    return prev;
}

extern void func_00123650(void *);
extern char D_001534E0[];

/*
 * Close, not exact (24/112), same size. Logic is certain: spin while
 * bit 8 of *arg0 is set, and once a 0xFFFFFF countdown goes negative,
 * report through func_0011A6C8(D_001534E0) and kick func_00123650 on
 * every further iteration.
 *
 * The residual is the countdown's initial constant, and it is NOT
 * reachable from C. Retail builds 0x00FFFFFF as
 *     lui $17,0x100 ; addiu $17,$17,-1
 * (the signed %hi/%lo split, which is why splat invented a bogus
 * "D_FFFFFF" symbol for it). Both SN sub-builds emit the logical split
 *     lui $16,0xff  ; ori $16,$16,0xffff
 * instead, for every spelling tried: int, unsigned, long, and a
 * (char *)0xFFFFFF pointer. gcc 2.95's mips_move_1word hands a plain
 * CONST_INT to the assembler as `li`, and gas expands `li` with ori.
 * The lui/addiu pair is what gcc emits for a SYMBOL address, so retail
 * most likely got this value from an absolute/linker-defined symbol
 * rather than a literal.
 *
 * The register roles are swapped with it ($16/$17 exchanged) as a knock
 * -on of which value is materialised first; fixing that alone would not
 * make this exact, so it was not chased.
 */
void func_00123208(void *arg0) {
    int n = 0xFFFFFF;

    while ((*(int *)arg0 & 0x100) != 0) {
        if (n < 0) {
            func_0011A6C8(D_001534E0);
            func_00123650(arg0);
        }
        n--;
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123278);

int func_00123280(int arg0) {
    if ((unsigned int)arg0 >> 28 == 7) {
        arg0 &= 0x0FFFFFFF;
        arg0 |= 0x80000000;
    }
    return arg0;
}

/*
 * Same-size near-miss (2/0x34 bytes). Zero-fill n bytes at dst.
 * Retail advances dst right after decrementing the counter, before
 * the loop-continuation test; this compiler always schedules the
 * increment into the branch's delay slot instead. Tried both
 * statement orders (dst++ before/after i--) and a for-loop -- the
 * for-loop actually regresses (grows the function); the two do-while
 * orderings compile identically. Not reachable from source.
 */
void func_001232A8(char *dst, int n) {
    int i;
    if (n == 0) {
        return;
    }
    i = n - 1;
    do {
        *dst = 0;
        i--;
        dst++;
    } while (i != -1);
}

extern int D_00132E70[];

int func_001232E0(unsigned int arg0) {
    if (arg0 >= 0xA) {
        return 0;
    }
    return D_00132E70[arg0];
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123308);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001233E8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001235C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00123630);

/*
 * Attempted and reverted at 70/152 (same size, so inert). Semantics are
 * confirmed and the instruction sequence is structurally identical to
 * retail; the residual is the allocator destination-choice question plus
 * prologue scheduling, neither source-steerable. Decoded C, so a later
 * attempt starts from the meaning:
 *
 *   int func_00123650(int *arg0) {
 *       int en, prev, old;
 *       en = func_0011D960();
 *       prev = *(volatile int *)0x1000F520;          // D_ENABLER
 *       if ((prev & 0x10000) == 0)
 *           *(volatile int *)0x1000F590 = prev | 0x10000;
 *       *(volatile int *)0x1000E000;                 // D_CTRL, discarded
 *       old = *arg0;
 *       *arg0 = old & ~0x100;
 *       *(volatile int *)0x1000F590 = prev;          // restore
 *       if (en != 0) func_0011D9A8();
 *       return old;
 *   }
 *
 * Divergences: retail holds the func_0011D960 result in $7 and the
 * enabler in $6 where this compiler picks $a2/$a1; retail copies the
 * parameter to $17 after both prologue saves where this compiler
 * interleaves it between them; and this compiler hoists the
 * non-volatile *arg0 load above the volatile D_CTRL read (legal, but
 * retail has them the other way). The D_CTRL read is genuinely
 * discarded -- a volatile read for its side effect only.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_00123650);

INCLUDE_ASM("asm/nonmatchings/core_text", func_001236E8);
