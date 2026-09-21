#include "common.h"
#include "structs.h"

/*
 * core_text object 0x12CC90-0x12D868. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 */

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
extern int func_0012AAA8(void *, int);
extern void func_0012AAC8(void *, int);
extern void func_0012C468(void *, void *);
extern char D_00153B38[];
extern void func_0012C0A0(void *);
extern void func_0012BF40(void *);
extern void func_0012C278(void *);
extern void func_00129E30(void *, int, int, int);
extern void func_00129F40();
extern char D_00153BB8[];
extern char D_00153BD8[];
extern void func_00116248(void *);
extern void func_0012C420(void *);
extern char D_00153C48[];
extern char D_00153C78[];
extern char D_00153C90[];
extern char D_00153CC8[];
extern int func_0012CE48(void *);

/*
 * REVERTED (blocked, not a source-shape problem). Decode is certain: set
 * a control bit at 0x1000F590 (OR of the 0x1000F520 read with 0x10000),
 * write arg0 to the channel's address register at 0x1000B000, clear the
 * same bit, guarded by func_0011D960/func_0011D9A8 (the disable/enable-
 * interrupts pair used throughout this file):
 *
 *   int func_0012CC90(void *arg0) {
 *       func_0011D960();
 *       *(volatile unsigned int *)0x1000F590 =
 *           *(volatile unsigned int *)0x1000F520 | 0x10000;
 *       *(volatile unsigned int *)0x1000B000 = (unsigned int)arg0;
 *       *(volatile unsigned int *)0x1000F590 =
 *           *(volatile unsigned int *)0x1000F520 & 0xFFFEFFFF;
 *       return func_0011D9A8();  // declared to return int locally
 *   }
 *
 * Body matches retail instruction for instruction. The only gap is the
 * final call: retail forwards to func_0011D9A8 with a bare `j` and
 * interleaves its own epilogue around the remaining work (restore $31
 * right after the last use of $16, do the second read/mask/write, THEN
 * restore $16, then tail-jump with the frame teardown in the delay
 * slot). This compiler has no sibling-call optimisation at all in
 * either SN sub-build (see tools/fix_tail_calls.py) -- confirmed by
 * -foptimize-sibling-calls not existing and -O3 not helping -- so any
 * call as the last statement of a function that still has its own frame
 * (here: the $16/$31 spills) always compiles to `jal` + a full
 * unscheduled epilogue, 3 words longer than retail (0x70 vs retail's
 * 0x64). fix_tail_calls.py only rewrites the OTHER case, a bare
 * forwarding stub with no locals of its own; this function's frame
 * disqualifies it from that guard by design. Toolchain blocker, same
 * category as the short-loop erratum.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CC90);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CCF8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CD60);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CE48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012CF98);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D000);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D068);

/*
 * Reverted (size mismatch: 152 vs retail's 156). Semantics are certain
 * -- it fills the record at D_001331D8 once, byte 0 staying zero until
 * it has been read, and hands the buffer back either way:
 *
 *   extern int func_0011BF80(void *, int);
 *   extern int func_0011C5C0(int, void *, int);
 *   extern void func_0011C208(int);
 *   extern char D_001331D8[], D_00153D00[], D_00153D10[], D_00153D28[];
 *
 *   char *func_0012D2A0(void) {
 *       int fd;
 *       if (D_001331D8[0] == 0) {
 *           fd = func_0011BF80(D_00153D00, 1);
 *           if (fd == -1) { func_0011A6C8(D_00153D10, D_001331D8); }
 *           if (func_0011C5C0(fd, D_001331D8, 0xE) == -1) {
 *               func_0011A6C8(D_00153D28);
 *           }
 *           func_0011C208(fd);
 *       }
 *       return D_001331D8;
 *   }
 *
 * (The second func_0011A6C8 gets only the format string; $a1 still holds
 * the buffer from the func_0011C5C0 call and retail never resets it,
 * which is why that declaration has to stay unprototyped.)
 *
 * Blocked on addressing form, not on source shape. Retail keeps
 * %hi(D_001331D8) itself live in a callee-saved register and spends
 * three separate %lo references on it -- the `lb`, the buffer pointer
 * in $s3, and the returned address -- for 4 saved registers and an
 * 80-byte frame. This compiler folds %hi+%lo at every reference, so it
 * never has a reason to keep the bare %hi, and lands one instruction
 * short however the references are spelled. Counts for the three
 * spellings tried:
 *   - the source above, D_001331D8 everywhere            160 (4 LONG:
 *     adds a daddu because the lui lands in $v0 and has to be copied
 *     into a saved register to survive the calls)
 *   - a `char *p = D_001331D8` local used for the calls  152 (4 SHORT)
 *   - that local plus a second C name on the same asm
 *     symbol for the return, to force a fresh lui/addiu 152 (4 SHORT;
 *     the alias works and does emit the second lui/addiu, but the
 *     compiler then drops a saved register and the save/restore pair
 *     costs exactly what the lui gained)
 * Related to the "global store addressing" entry in the docs: the
 * -mno-split-addresses tradeoff is the same one.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D2A0);

extern void func_0012D2A0(void);
extern signed char D_001331D8[];

int func_0012D340(void) {
    if (D_001331D8[0] == 0) {
        func_0012D2A0();
    }
    return D_001331D8[4] == 0x54;
}

/*
 * Both of these return a flag byte that retail loads with the address
 * register reused as the destination (`lui $2,%hi(X)` / `lbu
 * $2,%lo(X)($2)`), and it loads it ACROSS TWO DELAY SLOTS -- the lui in
 * the branch's, the lbu in the following b's. That rules MACRO_ADDR out
 * here, and the attempt is worth recording: a MACRO_ADDR access in a
 * delay slot is expanded $gp-relative, and these two symbols live
 * outside the +-32KB window, so the link fails outright with
 * "relocation truncated to fit: R_MIPS_GPREL16". A plain incomplete
 * array gives retail's exact split-across-delay-slots shape; the only
 * residual is the allocator putting the address in $3 rather than
 * reusing $2, plus one more register choice in func_0012D448
 * (5/96 and 6/104 differing bytes). func_0012D448 also needed its arms
 * the other way round -- the early `return 0` written last, so the
 * zero case is the one that branches over.
 */
extern unsigned char D_001331D4[];

int func_0012D380(void) {
    int buf[4];
    int v;

    func_00118CF0(buf);
    if (func_0012D340() != 0) {
        return D_001331D4[0];
    }
    func_00118CF0(buf);
    v = buf[0];
    if (((v >> 13) & 7) != 0) {
        return (v >> 16) & 0x1F;
    }
    return (v >> 4) & 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D3E0);

extern short D_001331D0 NOT_SDA;

/* Same-size near-miss (2/76 bytes): retail loads D_001331D0's address
   into $v1 for the branch-taken path, this compiler picks $v0. Pure
   register-allocation choice, harmless to anything after it. */
int func_0012D3F0(void) {
    unsigned int local;
    unsigned int bits;

    if (func_0012D340() != 0) {
        return D_001331D0;
    }
    func_00118CF0(&local);
    bits = (local >> 13) & 7;
    return (bits == 0) ? 0x21C : ((int)local >> 21);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D440);

extern unsigned char D_001331D6[];
extern void func_00118DC0(void *, int, int);

int func_0012D448(void) {
    unsigned char buf[16];

    if (func_0012D340() != 0) {
        return D_001331D6[0];
    }
    func_00118CF0(buf);
    if (((*(unsigned int *)buf >> 13) & 7) != 0) {
        func_00118DC0(buf + 4, 1, 1);
        return (buf[4] >> 4) & 1;
    }
    return 0;
}

int func_0012D4B0(int arg0) {
    unsigned int v = arg0 & 0xFF;
    return ((v / 10) * 6 + v) & 0xFF;
}

/*
 * REVERTED (size mismatch: ours 28 bytes, retail 32). Semantics certain
 * -- BCD byte to binary:
 *
 *   int func_0012D4E0(int arg0) {
 *       unsigned int v = arg0 & 0xFF;
 *       return (v - (v >> 4) * 6) & 0xFF;
 *   }
 *
 * (`unsigned` matters: it gives retail's `srl`, not `sra`.) Everything
 * matches except the multiply: retail uses the generic two-operand
 * `mult $0,$3,$4` followed by `mflo $3`, while this compiler uses the
 * EE three-operand `mult $v1,$v1,$a0` which writes the result directly
 * and needs no mflo -- one instruction fewer, hence 4 bytes short. That
 * is an ISA/codegen choice, not something the source can steer.
 */
/*
 * Attempted, reverted at 14/32. Semantics certain -- BCD to binary,
 * callee of func_0012D500/func_0012D568:
 *     int f(int arg0) { unsigned v = arg0 & 0xFF;
 *                       return (v - (v >> 4) * 6) & 0xFF; }
 * Every instruction matches except the multiply FORM: retail emits the
 * generic `mult $0, $3, $4` + `mflo $3`, this compiler picks the R5900
 * three-operand `mult $v1, $v1, $a0` which writes rd directly and needs
 * no mflo. Same operands, same order, different instruction selection --
 * not reachable by reshaping the C.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D4E0);

extern int func_0012D4E0(int);

/*
 * Close, not exact (4/104), same size so inert. The ONLY divergence is
 * prologue save order: retail emits `sd $16, 0($sp)` then
 * `sd $31, 0x10($sp)`, this compiler emits them the other way round.
 * Identical offsets, identical everything else including every delay
 * slot. Not expressible from C -- these are compiler-emitted prologue
 * stores, not source statements, so neither statement order nor the
 * declaration-order lever reaches them.
 */
void func_0012D500(unsigned char *p) {
    p[7] = func_0012D4E0(p[7]);
    p[6] = func_0012D4E0(p[6]);
    p[5] = func_0012D4E0(p[5]);
    p[3] = func_0012D4E0(p[3]);
    p[2] = func_0012D4E0(p[2]);
    p[1] = func_0012D4E0(p[1]);
}

extern int func_0012D4B0(int);

/*
 * Close, not exact (4/104), same size so inert. The ONLY divergence is
 * prologue save order: retail emits `sd $16, 0($sp)` then
 * `sd $31, 0x10($sp)`, this compiler emits them the other way round.
 * Identical offsets, identical everything else including every delay
 * slot. Not expressible from C -- these are compiler-emitted prologue
 * stores, not source statements, so neither statement order nor the
 * declaration-order lever reaches them.
 */
void func_0012D568(unsigned char *p) {
    p[7] = func_0012D4B0(p[7]);
    p[6] = func_0012D4B0(p[6]);
    p[5] = func_0012D4B0(p[5]);
    p[3] = func_0012D4B0(p[3]);
    p[2] = func_0012D4B0(p[2]);
    p[1] = func_0012D4B0(p[1]);
}

typedef struct { char b[0xC]; } Cfg12;
extern Cfg12 D_00153D40 NOT_SDA;

/* Forward analog of func_0012D688 below: tick the clock at arg0 forward
 * by one day, using the same 12-byte month-length table (stretched to 29
 * for February on a leap year) and the same struct offsets. */
void func_0012D5D0(unsigned char *s) {
    Cfg12 days;
    unsigned char m;

    days = D_00153D40;
    s[5] = s[5] + 1;
    if ((s[7] & 3) == 0) {
        days.b[1] = 0x1D;
    }
    if (s[5] > days.b[s[6] - 1]) {
        s[5] = 1;
        s[6] = s[6] + 1;
        m = s[6];
        if (m == 13) {
            if (s[7] == 0x63) {
                s[7] = 0;
            } else {
                s[7] = s[7] + 1;
            }
            s[6] = 1;
        }
    }
}

/*
 * REVERTED (SIZE mismatch both ways). Decode is certain -- tick the
 * clock at arg0 back by one day. Take a working copy of the 12-byte
 * month-length table at D_00153D40, stretch February to 29 on a leap
 * year, and when the day count reaches zero roll the month back, and
 * the year with it wrapping 00 to 99, then reload the day count.
 *
 *   typedef struct { char b[0xC]; } Cfg12;
 *   extern Cfg12 D_00153D40 NOT_SDA;
 *
 *   void func_0012D688(unsigned char *s) {
 *       Cfg12 days;
 *       unsigned char m;
 *
 *       days = D_00153D40;
 *       if ((s[7] & 3) == 0) {
 *           days.b[1] = 0x1D;
 *       }
 *       s[5] = s[5] - 1;
 *       if (s[5] != 0) {
 *           return;
 *       }
 *       m = s[6] - 1;
 *       s[6] = m;
 *       if (m == 0) {
 *           s[7] = s[7] != 0 ? s[7] - 1 : 0x63;
 *           s[6] = 0xC;
 *       }
 *       s[5] = days.b[s[6] - 1];
 *   }
 *
 * The tail from the month roll-back onwards is already byte-identical,
 * as is the 12-byte struct copy (ldl/ldr + lwl/lwr at alignment 1, the
 * func_001FFE88 idiom). Retail is 164 bytes. Two spellings, and the
 * interesting part is that they miss in OPPOSITE directions:
 *
 *   - as written above, the decrement AFTER the leap-year block:  160
 *     The compiler forwards the stored value, so the `s[5] != 0` test
 *     becomes `andi $3,$2,0xFF` + `bne` on the value already in hand,
 *     where retail re-LOADS the byte with `lbu` and tests it bare.
 *
 *   - `s[5] = s[5] - 1;` moved BEFORE the leap-year block:         168
 *     This DOES buy retail's reload -- putting a basic-block boundary
 *     between the store and the test stops the forwarding, and that is
 *     the useful finding here. But the compiler then pays for it with a
 *     `bnel` that duplicates the reload into the branch's delay slot,
 *     two `lbu`s where retail has one plus a bare `nop`. That is the
 *     recorded per-site delay-slot difference, so the two halves cannot
 *     be had at once from this source.
 *
 * `m` must stay `unsigned char`: it is what produces retail's
 * `andi $2,$2,0xFF` on the month counter, and the ternary on s[7] is
 * confirmed by retail emitting a single `sb` for both arms.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D688);

/*
 * Reverted: size mismatch (ours=56, retail=48 -- 8 bytes over).
 *
 *   void func_0012D730(void *arg0) {
 *       unsigned char *p = (unsigned char *)arg0 + 3;
 *       unsigned char v = *p + 1;
 *       *p = v;
 *       if (v == 0x18) {
 *           *p = 0;
 *           func_0012D5D0(arg0);
 *       }
 *   }
 *
 * Semantics certain: a byte counter that wraps to 0 and fires
 * func_0012D5D0 at 24. Retail's call is a bare tail `j
 * func_0012D5D0` reached only through the `v == 0x18` branch, with a
 * plain `jr $ra` on the other path -- no frame at all. func_0012D730
 * IS listed in tools/tail_call_functions.txt, but
 * fix_tail_calls.py's rewrite_function() also requires the function
 * to contain NO other control flow (its CONTROL regex rejects any
 * branch or label), specifically to avoid rewriting a call reached
 * through only one of several paths. A conditional tail call is a
 * second, different shape the tool can't handle, beyond the "call
 * then tail call" gap noted on func_0011DDA0's revert above.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D730);

/*
 * Reverted: same shape as func_0012D730 above (backward analog).
 *
 *   void func_0012D760(unsigned char *arg0) {
 *       unsigned char v = arg0[3];
 *       if (v != 0) {
 *           arg0[3] = v - 1;
 *           return;
 *       }
 *       arg0[3] = 0x17;
 *       func_0012D688(arg0);
 *   }
 *
 * Semantics certain: the same byte counter, counting down and firing
 * func_0012D688 (the backward day-tick) at 0, resetting to 23. Retail's
 * call is a bare tail `j func_0012D688` reached only through the
 * `v == 0` branch -- the second tail-call tooling gap (conditional tail
 * call through only one path) documented on func_0012D730. Compiling
 * this as ordinary call-and-return bloats it enough to overlap the
 * next section at link time, so this wasn't even diffable; reverted
 * immediately rather than left half-built.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D760);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D788);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0012D818);
