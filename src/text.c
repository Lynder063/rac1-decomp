#include "common.h"

INCLUDE_ASM("asm/nonmatchings/text", func_001E9080);

INCLUDE_ASM("asm/nonmatchings/text", func_001E9088);

INCLUDE_ASM("asm/nonmatchings/text", func_001E94A0);

INCLUDE_ASM("asm/nonmatchings/text", func_001E94A8);

INCLUDE_ASM("asm/nonmatchings/text", func_001E94C8);

INCLUDE_ASM("asm/nonmatchings/text", func_001E94E8);

INCLUDE_ASM("asm/nonmatchings/text", func_001E96B8);

INCLUDE_ASM("asm/nonmatchings/text", func_001E9728);

INCLUDE_ASM("asm/nonmatchings/text", func_001E9730);

void func_001E9768(void) {
}

void func_001E9770(void) {
}

void func_001E9778(void) {
}

void func_001E9780(void) {
}

void func_001E9788(void) {
}

void func_001E9790(void) {
}

void func_001E9798(void) {
}

void func_001E97A0(void) {
}

void func_001E97A8(void) {
}

void func_001E97B0(void) {
}

void func_001E97B8(void) {
}

void func_001E97C0(void) {
}

int func_001E97C8(void) {
    return 0;
}

void func_001E97D0(void) {
}

void func_001E97D8(void) {
}

void func_001E97E0(void) {
}

int func_001E97E8(void) {
    return 0;
}

void func_001E97F0(void) {
}

void func_001E97F8(void) {
}

void func_001E9800(void) {
}

INCLUDE_ASM("asm/nonmatchings/text", func_001E9808);

INCLUDE_ASM("asm/nonmatchings/text", func_001E99D8);

/*
 * Close but not yet byte-matching, new evidence for the sq/lq open
 * question below: this function only saves $ra (no $s0-$s7 at all), and
 * retail STILL spills it as `sq` here -- unlike every other function
 * seen so far, where retail consistently uses `sd` for a lone $ra save.
 * This compiler always uses `sd` for $ra regardless. Logic/instructions
 * otherwise identical (return func_0022C7E0(); ... 5 calls in a row,
 * body confirmed correct via objdump before reverting this to
 * INCLUDE_ASM):
 *   func_0022C7E0(); func_0022C188(); func_0022C870();
 *   func_00234C98(0x47, 0x5360B);
 *   func_00234C98(0x4E, 0x1000000 | (D_0015EF88 >> 13));
 * Means the sq/lq choice isn't purely "s-regs vs ra", it's something
 * more granular retail decides per-function (maybe per translation
 * unit, or some other property not yet isolated). See "Open toolchain
 * questions" in docs/DECOMP_PROGRESS.md.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001E9E70);

INCLUDE_ASM("asm/nonmatchings/text", func_001E9EC8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EABE8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EB300);

INCLUDE_ASM("asm/nonmatchings/text", func_001EB338);

INCLUDE_ASM("asm/nonmatchings/text", func_001EB458);

INCLUDE_ASM("asm/nonmatchings/text", func_001EB7C0);

extern char D_0013E650[];
extern int D_0015F694;

/*
 * Close but not yet byte-matching (8/88 bytes): same scratch-register-
 * allocation-choice open question as func_001160D8/func_00115578 in
 * core_text -- retail copies arg1 into $v1 for the delay slot of the
 * `bltz arg0` branch, this compiler copies it into $a2 instead. Same
 * operations, same order, same instruction count, only the register
 * differs (and downstream instructions that read it). Tried
 * precomputing arg1 into its own local before the guard clause (per the
 * delay-slot-steering technique) -- no change, confirms this is the
 * register-allocator-heuristic category, not the fixable delay-slot-
 * shape category. Kept as INCLUDE_ASM since the diff isn't a small fixed
 * offset. Logic:
 *   if (arg0 >= 0) {
 *       char *p = D_0013E650 + arg0 * 0x70;
 *       if (*(short *)(p + 0x7E) == arg1 + D_0015F694 &&
 *           (unsigned char)(*(unsigned char *)(p + 0x74) - 1) < 2) {
 *           return 1;
 *       }
 *   }
 *   return 0;
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001EBAF0);

INCLUDE_ASM("asm/nonmatchings/text", func_001EBB48);

/* Not a standalone function: single `addiu $sp,$sp,0x30`, no `jr $31` --
   fallthrough fragment, same category as func_00113AD8 in core_text. */
INCLUDE_ASM("asm/nonmatchings/text", func_001EC030);

INCLUDE_ASM("asm/nonmatchings/text", func_001EC038);

INCLUDE_ASM("asm/nonmatchings/text", func_001EC098);

/* Not a standalone function: no `jr $31` -- dead-value computation
   (`$v0 = 0` twice with intervening nops) then a store, falling through
   to whatever follows. Same fallthrough-fragment category as
   func_00113AD8 in core_text. */
INCLUDE_ASM("asm/nonmatchings/text", func_001EC108);

INCLUDE_ASM("asm/nonmatchings/text", func_001EC120);

/* Not a standalone function: single `addiu $sp,$sp,0x50`, no `jr $31` --
   fallthrough fragment, same category as func_00113AD8 in core_text. */
INCLUDE_ASM("asm/nonmatchings/text", func_001EC208);

INCLUDE_ASM("asm/nonmatchings/text", func_001EC210);

INCLUDE_ASM("asm/nonmatchings/text", func_001EC270);

INCLUDE_ASM("asm/nonmatchings/text", func_001EC2B8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EC5B8);

/* Same shape/blocker as func_001EC270: indirect call via a function
   pointer loaded from a per-type dispatch table, wrapped in an
   sq-for-lone-$ra save this compiler doesn't reproduce (see
   func_001E9E70's comment). Not attempted. */
INCLUDE_ASM("asm/nonmatchings/text", func_001EC780);

INCLUDE_ASM("asm/nonmatchings/text", func_001EC7C8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EC8D8);

INCLUDE_ASM("asm/nonmatchings/text", func_001ECAB8);

INCLUDE_ASM("asm/nonmatchings/text", func_001ECB98);

/* Two conditional 16-byte block copies via bare `lq`/`sq` -- no plain-C
   representation available (same "not attempted, no plain-C
   representation" category as func_001F9BC0 in core_text). */
INCLUDE_ASM("asm/nonmatchings/text", func_001ECC10);

INCLUDE_ASM("asm/nonmatchings/text", func_001ECC48);

INCLUDE_ASM("asm/nonmatchings/text", func_001ECEA0);

INCLUDE_ASM("asm/nonmatchings/text", func_001ED080);

INCLUDE_ASM("asm/nonmatchings/text", func_001ED658);

INCLUDE_ASM("asm/nonmatchings/text", func_001ED708);

INCLUDE_ASM("asm/nonmatchings/text", func_001ED818);

INCLUDE_ASM("asm/nonmatchings/text", func_001EDB98);

INCLUDE_ASM("asm/nonmatchings/text", func_001EDCE8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EDE08);

INCLUDE_ASM("asm/nonmatchings/text", func_001EDE50);

INCLUDE_ASM("asm/nonmatchings/text", func_001EDFD8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EDFF8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EE3B0);

INCLUDE_ASM("asm/nonmatchings/text", func_001EE6D0);

INCLUDE_ASM("asm/nonmatchings/text", func_001EE6E0);

INCLUDE_ASM("asm/nonmatchings/text", func_001EE850);

INCLUDE_ASM("asm/nonmatchings/text", func_001EE858);

INCLUDE_ASM("asm/nonmatchings/text", func_001EE9E8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EE9F8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EFD70);

INCLUDE_ASM("asm/nonmatchings/text", func_001EFE10);

/* Marked "Handwritten function" by spimdisasm (uses `addi`, not `addiu`)
   -- same category as the syscall wrappers in core_text, not a decompile
   target, no C source ever existed for it. */
INCLUDE_ASM("asm/nonmatchings/text", func_001F0F00);

extern int D_0018A3B0[];

void func_001F0F30(void) {
    int *p = D_0018A3B0;
    int val = 1;
    int i = 0x13;
    p = (int *)((char *)p + 0x4C);
    for (; i >= 0; i--, p--) {
        *p = val;
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F0F70);

INCLUDE_ASM("asm/nonmatchings/text", func_001F0F78);

INCLUDE_ASM("asm/nonmatchings/text", func_001F0FF0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F0FF8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F1088);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2410);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2418);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2550);

void func_001F2558(void) {
}

void func_001F2560(void) {
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F2568);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2608);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2930);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2A38);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2B10);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2BC8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F2FB8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F3008);

INCLUDE_ASM("asm/nonmatchings/text", func_001F3140);

INCLUDE_ASM("asm/nonmatchings/text", func_001F3760);

INCLUDE_ASM("asm/nonmatchings/text", func_001F3890);

INCLUDE_ASM("asm/nonmatchings/text", func_001F3B90);

INCLUDE_ASM("asm/nonmatchings/text", func_001F3C10);

extern long D_00151888[3];

/* GS privileged-register writes (0x1200_00XX = the GS's memory-mapped
   register block): CSR ack, PMODE, then SMODE2/DISPFB1/DISPFB2/DISPLAY1/
   DISPLAY2/BGCOLOR set from a 3-entry table. */
void func_001F3D00(void) {
    *(volatile long *)0x120000E0 = 0;
    *(volatile long *)0x12000000 = 0xFFA1;
    *(volatile long *)0x12000020 = D_00151888[0];
    *(volatile long *)0x12000070 = D_00151888[1];
    *(volatile long *)0x12000090 = D_00151888[1];
    *(volatile long *)0x12000080 = D_00151888[2];
    *(volatile long *)0x120000A0 = D_00151888[2];
    *(volatile long *)0x120000D0 = 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F3D78);

INCLUDE_ASM("asm/nonmatchings/text", func_001F45F0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F4628);

INCLUDE_ASM("asm/nonmatchings/text", func_001F4630);

INCLUDE_ASM("asm/nonmatchings/text", func_001F4748);

INCLUDE_ASM("asm/nonmatchings/text", func_001F4868);

extern int D_0015F564;
extern int D_0018DD40[];
extern int D_0018DC40[];

/*
 * Close but not exact (24/80), re-tested this round against the newer
 * techniques with no improvement. Logic confirmed:
 *   int count = D_0015F564;
 *   if (count < 0x40) { D_0018DC40[count]=arg0; D_0018DD40[count]=arg1;
 *                       D_0015F564 = count+1; }
 * Held by the `%hi`-register-reuse allocator sub-case at the very first
 * two instructions (retail `lui $6,%hi(X)` / `lw $6,%lo(X)($6)` reusing
 * one register; this compiler always splits it across two), which then
 * shifts the rest. Direct array indexing is already the right form here
 * -- switching it changes nothing, since the blocker precedes the array
 * accesses entirely. See that sub-case under "Open toolchain questions".
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001F49B0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F4A00);

INCLUDE_ASM("asm/nonmatchings/text", func_001F4A78);

INCLUDE_ASM("asm/nonmatchings/text", func_001F4AF0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F4B68);

INCLUDE_ASM("asm/nonmatchings/text", func_001F4BB8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F4C30);

INCLUDE_ASM("asm/nonmatchings/text", func_001F4E08);

INCLUDE_ASM("asm/nonmatchings/text", func_001F4F90);

INCLUDE_ASM("asm/nonmatchings/text", func_001F5148);

INCLUDE_ASM("asm/nonmatchings/text", func_001F5368);

INCLUDE_ASM("asm/nonmatchings/text", func_001F54E8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F55C0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F5650);

INCLUDE_ASM("asm/nonmatchings/text", func_001F57F8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F5800);

INCLUDE_ASM("asm/nonmatchings/text", func_001F5988);

INCLUDE_ASM("asm/nonmatchings/text", func_001F5BB8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F5E60);

INCLUDE_ASM("asm/nonmatchings/text", func_001F62C0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F62C8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6410);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6598);

INCLUDE_ASM("asm/nonmatchings/text", func_001F65A8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F65B0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6600);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6620);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6640);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6668);

INCLUDE_ASM("asm/nonmatchings/text", func_001F68E8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6968);

INCLUDE_ASM("asm/nonmatchings/text", func_001F69E8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F69F0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6CE0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6CF8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6D88);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6E18);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6EA8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6F40);

INCLUDE_ASM("asm/nonmatchings/text", func_001F6FD8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7070);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7560);

INCLUDE_ASM("asm/nonmatchings/text", func_001F75D0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7640);

void func_001F7648(void *arg0, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8) {
    short *s = (short *)arg0;
    s[0] = a1;
    s[1] = a2;
    s[2] = a3;
    s[3] = a4;
    s[4] = a5;
    s[5] = a6;
    s[8] = a7;
    s[9] = a8;
    s[6] = 0;
    s[7] = 0;
    s[10] = 0;
    s[11] = 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001F7680);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7868);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7A50);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7B40);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7B70);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7BF8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7C50);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7C60);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7DD8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7E98);

INCLUDE_ASM("asm/nonmatchings/text", func_001F7EF8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F84AC);

INCLUDE_ASM("asm/nonmatchings/text", func_001F852C);

INCLUDE_ASM("asm/nonmatchings/text", func_001F856C);

INCLUDE_ASM("asm/nonmatchings/text", func_001F8B6C);

INCLUDE_ASM("asm/nonmatchings/text", func_001F91B8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9478);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9810);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9850);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9878);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9888);

INCLUDE_ASM("asm/nonmatchings/text", func_001F98B0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F98C0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F98E8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F98F8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9908);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9938);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9968);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9978);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9988);

INCLUDE_ASM("asm/nonmatchings/text", func_001F99B0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F99D8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9A00);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9A98);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9AC0);

/*
 * Not a decompile target: hand-written assembly, same idioms as the
 * func_0020C210/func_0020C230 DMAC block. It keeps the 0x1000D000 base
 * live in $1/$at across all four stores (assembler-reserved, never
 * allocated by GCC), materializes 0x100 with `ori $2,$0,0x100` rather
 * than `addiu`, has a bare `nop` between two stores, and leaves its
 * final value in $3 -- not $2, the ABI return register -- which no
 * compiler would emit for a value-returning function. An earlier
 * revision of this comment treated it as compiler output and filed the
 * diff under the scratch-register-allocation open question; that was a
 * misread.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001F9AF0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9B20);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9B48);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9B50);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9B70);

float func_001F9B88(float arg0) {
    return __builtin_fabsf(arg0);
}

/*
 * Deliberately left as INCLUDE_ASM. Retail is 8 bytes: `jr $31` with
 * `max.s $f0,$f12,$f13` in its DELAY SLOT. This compiler will not put
 * inline asm in a delay slot (it's opaque to the scheduler), so any C
 * or inline-asm rendering comes out 12 bytes -- a size mismatch, which
 * is not a match. Worse, those extra 4 bytes each shifted every
 * function after them in this file, so the two of them together put 8
 * bytes of drift into the whole rest of text.c and left downstream
 * functions showing spurious 1-byte `jal`-target diffs. Reverting them
 * removed that drift. Do not re-add a C version unless it is genuinely
 * 8 bytes; a "close" version here is actively harmful, not neutral.
 * (Hand-embedding `jr $31` inside the asm block was tried: GCC's flow
 * analysis silently dropped the max.s, verified via the byte diff.)
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001F9B90);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9B98);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9BA0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9BB0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9BC0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9BC8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9BD8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9BF0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9C08);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9C30);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9C48);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9C60);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9C78);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9CA0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9CB8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9CE8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9D10);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9D48);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9D78);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9DC0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9E10);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9E58);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9EC0);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9EE8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9F18);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9F30);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9F60);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9F90);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9FA8);

INCLUDE_ASM("asm/nonmatchings/text", func_001F9FC0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA058);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA168);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA190);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA1C0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA1F8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA218);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA238);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA460);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA480);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA4A0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA4F0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA540);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA588);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA5C8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA648);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA6C0);

/*
 * Close but not exact: angle-wrap-to-[-pi,pi] on arg0+arg1 (retail's
 * else-if shape confirmed by the delay-slot second-compare testing the
 * *original* sum, only meaningful when the first branch wasn't taken).
 * Logic and instruction sequence confirmed correct via objdump, but
 * this compiler allocates the sum into $f12 (reusing arg0's register)
 * where retail uses a fresh $f0 -- same scratch-register-allocation-
 * choice open question as elsewhere, now confirmed to apply to FP
 * registers too, not just integer. Tried forcing a fresh local via a
 * separate assignment+accumulate instead of one combined expression;
 * no change. See docs/DECOMP_PROGRESS.md.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001FA748);

/* Same register-allocation-choice issue as func_001FA748 above (its
   arg0-arg1 sibling); logic confirmed identical shape via objdump. */
INCLUDE_ASM("asm/nonmatchings/text", func_001FA790);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA7D8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA850);

float func_001FA888(int arg0) {
    return (float)arg0;
}

/*
 * Close but not exact: retail's cvt.w.s converts in place (dest fs ==
 * src fs, both $f12, the incoming arg register); this compiler always
 * allocates a fresh dest register for the conversion result. 2/16 bytes
 * differ (just that one instruction's register-field encoding). New,
 * small instance of the scratch-register-allocation-choice open
 * question. Tried an extra (float)(int) round-trip to nudge it toward
 * reusing $f12 -- made it worse (50% mismatch), reverted.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001FA898);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA8A8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA8F0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FA9E8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FAA28);

INCLUDE_ASM("asm/nonmatchings/text", func_001FAB20);

INCLUDE_ASM("asm/nonmatchings/text", func_001FAB40);

extern long D_00152178;

void func_001FB448(int arg0, int arg1, int arg2) {
    D_00152178 = (long)arg0 | ((long)arg1 << 8) | ((long)arg2 << 16) | 0x80000000L;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001FB470);

INCLUDE_ASM("asm/nonmatchings/text", func_001FB498);

/*
 * Close but not exact: appends a 2-word GIF/DMA-style tag pair
 * (0x30000015 / &D_00152140 / 0 / 0x50000015) to the packet buffer
 * D_00161000 points at, then advances D_00161000 by one qword (0x10).
 * Confirmed via objdump -- same fields, same values, same order, same
 * overall size (0x68 both). The only difference: retail re-derives
 * D_00161000's own ADDRESS (a fresh lui/lw pair) before every single
 * field write; this compiler computes &D_00161000 once into a register
 * and only reloads the *value* stored there each time (a strictly
 * cheaper, and here inequivalent, choice). This is a new, more extreme
 * variant of the redundant-global-reload pattern already seen elsewhere
 * (those only ever re-fetch a global's *value*, never its address, since
 * a global's address is a link-time constant with nothing to alias) --
 * tried an explicit `*(unsigned int **)&D_00161000` reinterpret-cast
 * idiom to see if defeating the compiler's confidence that it's "the
 * same" symbol reference would force a fresh lui each time; no change.
 * Not fixed via source shape; not yet clear whether this needs its own
 * open-question entry or is explained by something not yet identified.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001FB530);

INCLUDE_ASM("asm/nonmatchings/text", func_001FB598);

INCLUDE_ASM("asm/nonmatchings/text", func_001FB608);

INCLUDE_ASM("asm/nonmatchings/text", func_001FB848);

INCLUDE_ASM("asm/nonmatchings/text", func_001FB8A8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FB908);

INCLUDE_ASM("asm/nonmatchings/text", func_001FBAB8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FBC78);

INCLUDE_ASM("asm/nonmatchings/text", func_001FBC80);

INCLUDE_ASM("asm/nonmatchings/text", func_001FBE80);

INCLUDE_ASM("asm/nonmatchings/text", func_001FD3E8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FDF10);

INCLUDE_ASM("asm/nonmatchings/text", func_001FDF78);

INCLUDE_ASM("asm/nonmatchings/text", func_001FE438);

INCLUDE_ASM("asm/nonmatchings/text", func_001FE4C0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FE4D0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FE540);

INCLUDE_ASM("asm/nonmatchings/text", func_001FE580);

INCLUDE_ASM("asm/nonmatchings/text", func_001FE588);

INCLUDE_ASM("asm/nonmatchings/text", func_001FE6C0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF0C8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF1B0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF4F8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF560);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF660);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF668);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF6B8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF7F0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF950);

INCLUDE_ASM("asm/nonmatchings/text", func_001FF958);

extern int D_001941CC;
extern int D_0019A4E8;

void func_001FFA90(void) {
    int *p = &D_0019A4E8;
    int v = D_001941CC;
    p[5] = v + 0x64000;
    p[4] = v;
}

INCLUDE_ASM("asm/nonmatchings/text", func_001FFAB8);

INCLUDE_ASM("asm/nonmatchings/text", func_001FFB38);

INCLUDE_ASM("asm/nonmatchings/text", func_001FFC48);

INCLUDE_ASM("asm/nonmatchings/text", func_001FFCB0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FFD30);

INCLUDE_ASM("asm/nonmatchings/text", func_001FFD98);

INCLUDE_ASM("asm/nonmatchings/text", func_001FFDA0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FFE18);

INCLUDE_ASM("asm/nonmatchings/text", func_001FFE88);

INCLUDE_ASM("asm/nonmatchings/text", func_001FFF08);

INCLUDE_ASM("asm/nonmatchings/text", func_001FFFA0);

INCLUDE_ASM("asm/nonmatchings/text", func_001FFFB8);

INCLUDE_ASM("asm/nonmatchings/text", func_00200190);

INCLUDE_ASM("asm/nonmatchings/text", func_00200198);

INCLUDE_ASM("asm/nonmatchings/text", func_00200248);

INCLUDE_ASM("asm/nonmatchings/text", func_00200468);

INCLUDE_ASM("asm/nonmatchings/text", func_00200650);

INCLUDE_ASM("asm/nonmatchings/text", func_002008B0);

INCLUDE_ASM("asm/nonmatchings/text", func_002008B8);

INCLUDE_ASM("asm/nonmatchings/text", func_00200A90);

INCLUDE_ASM("asm/nonmatchings/text", func_00200CA0);

INCLUDE_ASM("asm/nonmatchings/text", func_00200E38);

INCLUDE_ASM("asm/nonmatchings/text", func_00201190);

INCLUDE_ASM("asm/nonmatchings/text", func_00201348);

INCLUDE_ASM("asm/nonmatchings/text", func_002014B8);

INCLUDE_ASM("asm/nonmatchings/text", func_00201640);

INCLUDE_ASM("asm/nonmatchings/text", func_002017C8);

INCLUDE_ASM("asm/nonmatchings/text", func_00201948);

INCLUDE_ASM("asm/nonmatchings/text", func_00201960);

INCLUDE_ASM("asm/nonmatchings/text", func_00201A38);

INCLUDE_ASM("asm/nonmatchings/text", func_00201AE0);

INCLUDE_ASM("asm/nonmatchings/text", func_00201AF0);

INCLUDE_ASM("asm/nonmatchings/text", func_00201D58);

INCLUDE_ASM("asm/nonmatchings/text", func_00201E10);

INCLUDE_ASM("asm/nonmatchings/text", func_00201E88);

INCLUDE_ASM("asm/nonmatchings/text", func_00202258);

INCLUDE_ASM("asm/nonmatchings/text", func_00202260);

INCLUDE_ASM("asm/nonmatchings/text", func_002023E0);

INCLUDE_ASM("asm/nonmatchings/text", func_00202790);

INCLUDE_ASM("asm/nonmatchings/text", func_002027C0);

INCLUDE_ASM("asm/nonmatchings/text", func_00202AA8);

INCLUDE_ASM("asm/nonmatchings/text", func_00202EF8);

INCLUDE_ASM("asm/nonmatchings/text", func_00202F00);

INCLUDE_ASM("asm/nonmatchings/text", func_00203038);

INCLUDE_ASM("asm/nonmatchings/text", func_00203118);

INCLUDE_ASM("asm/nonmatchings/text", func_002032D0);

INCLUDE_ASM("asm/nonmatchings/text", func_00203548);

INCLUDE_ASM("asm/nonmatchings/text", func_002035B0);

INCLUDE_ASM("asm/nonmatchings/text", func_00203808);

INCLUDE_ASM("asm/nonmatchings/text", func_00203958);

void func_00203B18(char *arg0, int idx) {
    char *obj;
    int *p;
    int i;
    arg0 += idx * 4;
    obj = *(char **)(arg0 + 0x48);
    if (*(int *)(obj + 0x14) != 0) {
        *(int *)(obj + 0x14) = (int)(obj + *(int *)(obj + 0x14));
    }
    if (*(unsigned char *)(obj + 0x10) != 0) {
        i = 0;
        p = (int *)(obj + 0x1C);
        do {
            *p = (int)(obj + *p);
            i++;
            p++;
        } while (i < *(unsigned char *)(obj + 0x10));
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_00203B70);

INCLUDE_ASM("asm/nonmatchings/text", func_00203E78);

INCLUDE_ASM("asm/nonmatchings/text", func_00203F68);

INCLUDE_ASM("asm/nonmatchings/text", func_00204340);

INCLUDE_ASM("asm/nonmatchings/text", func_00204918);

INCLUDE_ASM("asm/nonmatchings/text", func_00204BE8);

INCLUDE_ASM("asm/nonmatchings/text", func_00204C60);

INCLUDE_ASM("asm/nonmatchings/text", func_00204FC0);

INCLUDE_ASM("asm/nonmatchings/text", func_00205218);

INCLUDE_ASM("asm/nonmatchings/text", func_00205220);

INCLUDE_ASM("asm/nonmatchings/text", func_00205270);

INCLUDE_ASM("asm/nonmatchings/text", func_00205520);

INCLUDE_ASM("asm/nonmatchings/text", func_00205660);

INCLUDE_ASM("asm/nonmatchings/text", func_00205728);

INCLUDE_ASM("asm/nonmatchings/text", func_00205790);

INCLUDE_ASM("asm/nonmatchings/text", func_00205830);

INCLUDE_ASM("asm/nonmatchings/text", func_002058D0);

INCLUDE_ASM("asm/nonmatchings/text", func_00205918);

INCLUDE_ASM("asm/nonmatchings/text", func_00205A50);

INCLUDE_ASM("asm/nonmatchings/text", func_00205AA8);

INCLUDE_ASM("asm/nonmatchings/text", func_00205C08);

INCLUDE_ASM("asm/nonmatchings/text", func_00205C70);

INCLUDE_ASM("asm/nonmatchings/text", func_00205E70);

INCLUDE_ASM("asm/nonmatchings/text", func_00206F40);

INCLUDE_ASM("asm/nonmatchings/text", func_00207090);

INCLUDE_ASM("asm/nonmatchings/text", func_002071A8);

extern unsigned char D_0013D49C;

int func_002071D0(void) {
    return D_0013D49C != 0;
}

extern unsigned char D_0013D49D;

int func_002071E0(void) {
    return D_0013D49D != 0;
}

extern unsigned char D_0013D4A5;

int func_002071F0(void) {
    return D_0013D4A5 != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00207200);

INCLUDE_ASM("asm/nonmatchings/text", func_002072C0);

INCLUDE_ASM("asm/nonmatchings/text", func_00207340);

INCLUDE_ASM("asm/nonmatchings/text", func_002073A8);

extern unsigned char D_0013D4AC;

int func_002073B8(void) {
    return D_0013D4AC != 0;
}

extern unsigned char D_0013D4AD;

int func_002073C8(void) {
    return D_0013D4AD != 0;
}

extern unsigned char D_0013D4AE;

int func_002073D8(void) {
    return D_0013D4AE != 0;
}

extern unsigned char D_0013D4AF;

int func_002073E8(void) {
    return D_0013D4AF != 0;
}

extern unsigned char D_0013D4B5;

int func_002073F8(void) {
    return D_0013D4B5 != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00207408);

INCLUDE_ASM("asm/nonmatchings/text", func_00207648);

INCLUDE_ASM("asm/nonmatchings/text", func_00207780);

INCLUDE_ASM("asm/nonmatchings/text", func_00207930);

INCLUDE_ASM("asm/nonmatchings/text", func_002079F0);

INCLUDE_ASM("asm/nonmatchings/text", func_00207A80);

INCLUDE_ASM("asm/nonmatchings/text", func_00207B30);

INCLUDE_ASM("asm/nonmatchings/text", func_00207BE8);

extern unsigned char D_0013D4C5;
extern int D_001414DC;

int func_00207CB0(int arg0, int arg1) {
    if (arg1 >= 0x101) {
        return D_001414DC == 0xF;
    }
    return D_0013D4C5 != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00207CE0);

INCLUDE_ASM("asm/nonmatchings/text", func_00207D38);

INCLUDE_ASM("asm/nonmatchings/text", func_00207DB0);

/*
 * Close but not exact: `result = (arg0 < 0xE0 && arg1 <= 38.0) ? 1 : 0;`
 * -- confirmed via objdump: same operations, same registers, same
 * threshold constant (0x42180000 = 38.0), same shape (default 0, set 1
 * if arg0<0xE0, reset to 0 if arg1>38.0). Retail encodes the inner
 * boolean-to-branch conversion as bc1t with both the "set 1" and
 * "reset to 0" as literal delay-slot/fallthrough instructions; every
 * source shape tried (single &&-expression, nested if, result-default-
 * then-override) compiles to a bc1f/bc1tl-based scheme instead --
 * logically identical, different instruction encoding/ordering. New
 * instance of the delay-slot-scheduling open question (previously seen
 * as store/branch-target reordering, this is the FP-condition
 * materialization case). 26/52 bytes differ, too large a diff to keep
 * as documented-close C per the func_00112468 precedent.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00207E28);

extern unsigned char D_0013D4C0;
extern unsigned char D_0013D4C1;
extern unsigned char D_0013D4C2;
extern unsigned char D_0013D4D3;
extern unsigned char D_0013D4D4;
extern unsigned char D_0013D4D5;

int func_00207E60(void) {
    return D_0013D4C0 != 0;
}

int func_00207E70(void) {
    return D_0013D4C1 != 0;
}

int func_00207E80(void) {
    return D_0013D4C2 != 0;
}

int func_00207E90(void) {
    return D_0013D4D3 != 0;
}

int func_00207EA0(void) {
    return D_0013D4D4 != 0;
}

int func_00207EB0(void) {
    return D_0013D4D5 != 0;
}

extern unsigned char D_0013D4E0;

/*
 * Close but not exact: if (arg0>=0xBE) return D_0013D4E0!=0; else return
 * (arg1>=58.5) ? 1 : 0. Confirmed via objdump: the arg0>=0xBE early
 * return matches exactly (same bnez polarity as retail once written as
 * `if (arg0 >= 0xBE)` rather than the inverted `if (arg0 < 0xBE)`), but
 * the float-threshold boolean materialization hits the same delay-slot-
 * scheduling issue as func_00207E28 just above -- same category, not
 * re-explained in full here. 19/64 bytes differ, too large a diff to
 * keep as documented-close C per the func_00112468 precedent.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00207EC0);

extern unsigned char D_0013D4DC;
extern unsigned char D_0013D4DD;
extern unsigned char D_0013D4DE;
extern unsigned char D_0013D4DF;
extern unsigned char D_0013D4E1;

int func_00207F00(void) {
    return D_0013D4DC != 0;
}

int func_00207F10(void) {
    return D_0013D4DD != 0;
}

int func_00207F20(void) {
    return D_0013D4DE != 0;
}

int func_00207F30(void) {
    return D_0013D4DF != 0;
}

int func_00207F40(void) {
    return D_0013D4E1 != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00207F50);

INCLUDE_ASM("asm/nonmatchings/text", func_00207FD0);

INCLUDE_ASM("asm/nonmatchings/text", func_00208030);

INCLUDE_ASM("asm/nonmatchings/text", func_002080B0);

INCLUDE_ASM("asm/nonmatchings/text", func_00208160);

extern unsigned char D_0013D4E9;

int func_002081F8(void) {
    return D_0013D4E9 != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00208208);

int func_00208238(void) {
    return 1;
}

int func_00208240(void) {
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00208248);

extern unsigned char D_0013D502;

int func_002082E8(void) {
    return D_0013D502 != 0;
}

extern unsigned char D_0013D503;

int func_002082F8(void) {
    return D_0013D503 != 0;
}

extern unsigned char D_0013D504;
extern unsigned char D_0013D505;
extern unsigned char D_0013D50F;

int func_00208308(void) {
    return D_0013D504 != 0;
}

int func_00208318(void) {
    return D_0013D505 != 0;
}

int func_00208328(void) {
    return D_0013D50F != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00208338);

INCLUDE_ASM("asm/nonmatchings/text", func_002083E0);

INCLUDE_ASM("asm/nonmatchings/text", func_00208458);

INCLUDE_ASM("asm/nonmatchings/text", func_00208688);

INCLUDE_ASM("asm/nonmatchings/text", func_00208858);

INCLUDE_ASM("asm/nonmatchings/text", func_00208860);

INCLUDE_ASM("asm/nonmatchings/text", func_00208AB0);

INCLUDE_ASM("asm/nonmatchings/text", func_00208C38);

INCLUDE_ASM("asm/nonmatchings/text", func_00208D30);

INCLUDE_ASM("asm/nonmatchings/text", func_00208D38);

INCLUDE_ASM("asm/nonmatchings/text", func_00208FA0);

void func_00209040(void) {
}

/*
 * Close but not exact (16/36 bytes): 2D cross-product orientation test.
 * arg0 -= arg2; arg1 -= arg3; arg4 -= arg2; arg5 -= arg3;
 * return (arg4*arg1 - arg5*arg0) < 0;
 * Same operations/order/register reuse (in-place subtraction) as
 * retail, confirmed via objdump, but the final sign test compiles to
 * `srl $2,$2,0x1f` here where retail uses `slti $2,$2,0` -- two
 * different instructions computing the identical 0/1 result for
 * "value < 0". Not a scheduling/register question like the usual
 * near-misses, a pure instruction-selection choice for the same
 * boolean-from-sign-bit pattern; not investigated further.
 */
/*
 * 4/36 (one instruction): 2D cross-product orientation test — is (x2,y2)
 * left of the (x0,y0)->(x1,y1) edge. Every register and all 7 arithmetic
 * instructions match retail exactly; the sole diff is the final sign
 * test, where this compiler emits `srl $2,$2,31` and retail has
 * `slti $2,$2,0`. Identical result, different instruction selection, and
 * it is not steerable from source: `< 0`, `<= -1`, `< 1-1`, a named
 * local, and `?1:0` all canonicalize to the same `srl`; only widening to
 * `long` changes it (to `dsrl32`, which is worse).
 *
 * The subtractions must be written in this order (x2/y2 before x1/y1) —
 * the last-source-statement-emits-first rotation applies to runs of
 * independent *arithmetic* statements, not just stores.
 */
int func_00209048(int x1, int y1, int x0, int y0, int x2, int y2) {
    x2 -= x0;
    y2 -= y0;
    x1 -= x0;
    y1 -= y0;
    return (x2 * y1 - y2 * x1) < 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00209070);

/*
 * Close but not exact (18/36): materializes &D_0013D390 into a base
 * pointer, sets D_0015EFB0 = 3, reads base+0xC4 into a temp, zeroes
 * base+0xFC, writes the temp to base+0x1C. Logic confirmed correct via
 * objdump. Re-tested against the store-order rotation rule this round
 * (source 0x1C-then-0xFC to obtain retail's emitted 0xFC-then-0x1C):
 * no change, still 18/36. Consistent with the rule being documented as
 * base-pointer-scoped -- the D_0015EFB0 store is through a second base,
 * and as with func_00219E60 the presence of two bases makes the
 * scheduling unresponsive to source order. The residual is retail
 * putting the literal 3 early (materialized into $3 before the base's
 * own addiu) and using $1/$at for D_0015EFB0's hi, where this compiler
 * orders those differently and uses a normal temp register.
 */
extern char D_0013D390[];
extern int D_0015EFB0;

INCLUDE_ASM("asm/nonmatchings/text", func_00209160);

INCLUDE_ASM("asm/nonmatchings/text", func_00209188);

INCLUDE_ASM("asm/nonmatchings/text", func_00209238);

INCLUDE_ASM("asm/nonmatchings/text", func_00209290);

INCLUDE_ASM("asm/nonmatchings/text", func_002092E8);

INCLUDE_ASM("asm/nonmatchings/text", func_00209358);

INCLUDE_ASM("asm/nonmatchings/text", func_00209398);

INCLUDE_ASM("asm/nonmatchings/text", func_00209418);

INCLUDE_ASM("asm/nonmatchings/text", func_00209448);

INCLUDE_ASM("asm/nonmatchings/text", func_002094A8);

/*
 * Close but not exact (13/64 bytes, 20.3%): if the struct at D_0013D390
 * has kind field 0xDC == 2 and status field 0xE4 is negative, reset it
 * (status=7, field 0xE8=0) and set the global error code D_0015EFB0=0xB.
 * Needed an explicit `char *s` local (materializing the struct's base
 * address once via addiu, matching retail) to get from 58% down to this
 * -- without it the compiler folds each field offset directly into its
 * load/store immediate instead. Remaining diff is the established
 * store-order/scratch-register-choice open question: retail stores the
 * two struct fields, *then* computes D_0015EFB0's address and stores to
 * it; this compiler computes D_0015EFB0's address right after loading
 * the two constants and stores to it before the second struct field,
 * and picks $a0 for the constant 0xB where retail picks $v1. Tried
 * reordering the source statements; no further change.
 */
void func_002094E0(void) {
    char *s = D_0013D390;
    if (*(int *)(s + 0xDC) == 2 && *(int *)(s + 0xE4) < 0) {
        int a = 7, b = 0xB;
        *(int *)(s + 0xE4) = a;
        *(int *)(s + 0xE8) = 0;
        D_0015EFB0 = b;
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_00209520);

INCLUDE_ASM("asm/nonmatchings/text", func_002095E8);

INCLUDE_ASM("asm/nonmatchings/text", func_00209620);

/*
 * Close but not exact (13/64, 20.3%) -- a direct sibling of
 * func_002094E0 above: same guard (kind field 0xDC == 2 and status field
 * 0xE4 negative), same three writes, only the constants differ (status 9
 * and error code 0xF here, vs 7 and 0xB there). Landed on exactly the
 * same residual as that function, from exactly the same cause: retail
 * stores the two struct fields first and only then computes
 * D_0015EFB0's address (using $1/$at for its %hi), where this compiler
 * materializes that address earlier and stores to it before the second
 * struct field. That's the established two-base store-order/%hi
 * register-choice question; func_002094E0's entry already records that
 * reordering the source statements doesn't move it, so not re-tried.
 * Kept as documented-close on that function's precedent (same 20.3%).
 */
void func_00209698(void) {
    char *s = D_0013D390;
    if (*(int *)(s + 0xDC) == 2 && *(int *)(s + 0xE4) < 0) {
        int a = 9, b = 0xF;
        *(int *)(s + 0xE4) = a;
        *(int *)(s + 0xE8) = 0;
        D_0015EFB0 = b;
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_002096D8);

INCLUDE_ASM("asm/nonmatchings/text", func_00209750);

extern int D_0015EFB4;

/* Byte-identical to func_00209858; see its comment. Same 9/80 residual. */
void func_00209808(void) {
    char *s = D_0013D390;
    int idx = *(int *)(s + 0xCC);
    int *rec;
    s += 0xB0;
    rec = (int *)(s + 0xC0 * idx);
    if (*rec == 2) {
        *rec = 0;
    }
    if ((D_0015EFB4 & 0x40) == 0) {
        D_0015EFB0 = 3;
    }
}

/*
 * Close but not exact (9/80, 11.3%). Instruction-for-instruction
 * identical to retail apart from two documented-unsteerable register
 * choices: retail loads D_0015EFB4 with the %hi and the value in the
 * *same* register (`lui $2` / `lw $2,%lo($2)`) where this compiler uses
 * a separate temp, and retail uses $1/$at for D_0015EFB0's %hi (putting
 * the literal 3 before it) where this compiler uses a normal register
 * after. Both are the established %hi-reuse / $at sub-cases of the
 * allocator question -- same cause as func_002094E0/func_00209698.
 *
 * Getting here needed the pointer-advance form: reading the index off
 * the base *before* advancing it by 0xB0 as its own statement. Folding
 * it (`D_0013D390 + 0xB0` in the declaration) makes the compiler
 * materialize one combined address constant instead, which was 51/80.
 * Worth noting the `beql` for `if (*rec == 2) *rec = 0;` matched
 * exactly -- so a branch-likely *is* reachable from plain C for a
 * single-statement `if` whose body fits the delay slot, unlike the FP
 * bc1fl case in func_00208208.
 */
void func_00209858(void) {
    char *s = D_0013D390;
    int idx = *(int *)(s + 0xCC);
    int *rec;
    s += 0xB0;
    rec = (int *)(s + 0xC0 * idx);
    if (*rec == 2) {
        *rec = 0;
    }
    if ((D_0015EFB4 & 0x40) == 0) {
        D_0015EFB0 = 3;
    }
}

/*
 * Close but not exact (7/32 bytes): if (D_0013D3AC != 0) D_0015EFB0 = 3;
 * Logic confirmed correct via objdump. Retail schedules the literal 3
 * into the branch's delay slot; this compiler schedules the
 * D_0015EFB0 address computation there instead and materializes 3
 * separately later. New instance of the delay-slot-scheduling open
 * question (same family as func_00209160 right below).
 *
 * Additionally ruled out since: `*(volatile int *)&D_0015EFB0 = 3;`
 * (the volatile-signature technique that fixed func_0023E710 /
 * func_0023E5B8 -- no change here, still 7/32) and hoisting the
 * constant into its own local before the `if` (the documented
 * delay-slot-steering technique -- also no change). Genuinely the
 * scheduling question, not a volatile or statement-order artifact.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_002098A8);

/* Byte-identical to func_00209858; see its comment. Same 9/80 residual. */
void func_002098C8(void) {
    char *s = D_0013D390;
    int idx = *(int *)(s + 0xCC);
    int *rec;
    s += 0xB0;
    rec = (int *)(s + 0xC0 * idx);
    if (*rec == 2) {
        *rec = 0;
    }
    if ((D_0015EFB4 & 0x40) == 0) {
        D_0015EFB0 = 3;
    }
}

/* Byte-identical to func_00209858; see its comment. Same 9/80 residual. */
void func_00209918(void) {
    char *s = D_0013D390;
    int idx = *(int *)(s + 0xCC);
    int *rec;
    s += 0xB0;
    rec = (int *)(s + 0xC0 * idx);
    if (*rec == 2) {
        *rec = 0;
    }
    if ((D_0015EFB4 & 0x40) == 0) {
        D_0015EFB0 = 3;
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_00209968);

INCLUDE_ASM("asm/nonmatchings/text", func_002099D0);

INCLUDE_ASM("asm/nonmatchings/text", func_00209A18);

INCLUDE_ASM("asm/nonmatchings/text", func_00209A60);

INCLUDE_ASM("asm/nonmatchings/text", func_00209BB8);

INCLUDE_ASM("asm/nonmatchings/text", func_00209CE8);

INCLUDE_ASM("asm/nonmatchings/text", func_00209DC0);

INCLUDE_ASM("asm/nonmatchings/text", func_00209E68);

INCLUDE_ASM("asm/nonmatchings/text", func_0020BA00);

INCLUDE_ASM("asm/nonmatchings/text", func_0020BAA8);

int func_0020BAD8(int *p) {
    int n = 8;
    while (p[0] != 0) {
        n += 8;
        n += p[1];
        p += 4;
        n = (n + 3) & ~3;
    }
    return n + 8;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020BB10);

INCLUDE_ASM("asm/nonmatchings/text", func_0020BB88);

INCLUDE_ASM("asm/nonmatchings/text", func_0020BBC8);

INCLUDE_ASM("asm/nonmatchings/text", func_0020BCB0);

INCLUDE_ASM("asm/nonmatchings/text", func_0020BD70);

INCLUDE_ASM("asm/nonmatchings/text", func_0020BFC8);

/*
 * Not a decompile target: hand-written assembly, like the rest of this
 * DMAC block (func_0020C268/func_0020C2F8 are explicitly marked
 * "Handwritten function" by spimdisasm; this one and func_0020C230 use
 * the same idioms but escaped that heuristic). It keeps the base
 * address 0x1000D400 live in $1/$at across all four stores -- $at is
 * assembler-reserved on MIPS and GCC will never allocate it -- and
 * materializes 0x100 with `ori $2,$0,0x100` where a compiler emits
 * `addiu`. An earlier revision of this comment read the same
 * disassembly as compiler output and invented a "redundant address
 * reload for constant addresses" codegen category to explain it; that
 * category was never real.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0020C210);

INCLUDE_ASM("asm/nonmatchings/text", func_0020C230);

INCLUDE_ASM("asm/nonmatchings/text", func_0020C268);

INCLUDE_ASM("asm/nonmatchings/text", func_0020C2F8);

INCLUDE_ASM("asm/nonmatchings/text", func_0020C468);

INCLUDE_ASM("asm/nonmatchings/text", func_0020C738);

INCLUDE_ASM("asm/nonmatchings/text", func_0020C758);

INCLUDE_ASM("asm/nonmatchings/text", func_0020C7A0);

INCLUDE_ASM("asm/nonmatchings/text", func_0020C940);

INCLUDE_ASM("asm/nonmatchings/text", func_0020CA50);

extern int D_0013D844;
extern unsigned char D_0013D4A8;

int func_0020CB80(void) {
    if (D_0013D844 != 0 && D_0013D4A8 != 0) return 1;
    return 0;
}

extern int D_0013D9B4;
extern unsigned char D_0013D490[];

int func_0020CBA8(void) {
    if (D_0013D9B4 != 0 && D_0013D490[0x20] != 0 && D_0013D490[0x21] != 0) return 1;
    return 0;
}

extern int D_0013D6B8;

int func_0020CBE0(void) {
    char *base = (char *)&D_0013D6B8;
    if (*(int *)(base + 0x40C) != 0 && *(int *)(base + 0x3FC) != 0) return 1;
    return 0;
}

extern int D_0013DAE4;
extern unsigned char D_0013D4E5;

int func_0020CC10(void) {
    if (D_0013DAE4 != 0 && D_0013D4E5 != 0) return 1;
    return 0;
}

extern int D_0013DB24;
extern unsigned char D_0013D4F1;

int func_0020CC38(void) {
    if (D_0013DB24 != 0 && D_0013D4F1 != 0) return 1;
    return 0;
}

extern int D_0013DC34;
extern unsigned char D_0013D605;

int func_0020CC60(void) {
    if (D_0013DC34 != 0 && D_0013D605 != 0) return 1;
    return 0;
}

extern int D_0013D5C8;

int func_0020CC88(void) {
    unsigned char *base = (unsigned char *)&D_0013D5C8;
    if (base[0x21] != 0 && base[0x1F] != 0) return 1;
    return 0;
}

int func_0020CCB8(int arg0) {
    unsigned char *base = (unsigned char *)&D_0013D5C8;
    return base[arg0] != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020CCD0);

extern int D_0013D9B4;
extern unsigned char D_0013D4B0;

int func_0020CD28(void) {
    if (D_0013D9B4 != 0) {
        return D_0013D4B0 ? 2 : 1;
    }
    return 0;
}

extern unsigned char D_0013DE55;

int func_0020CD58(void) {
    if (D_0013D4F1 != 0 && D_0013DE55 != 0) return 1;
    return 0;
}

extern unsigned char D_0013D5DD;

int func_0020CD80(void) {
    if (D_0013D5DD != 0) return 2;
    return D_0013DC34 != 0;
}

extern unsigned char D_0013D5E7;

int func_0020CDA8(void) {
    return D_0013D5E7 != 0;
}

int func_0020CDB8(void) {
    unsigned char *base = (unsigned char *)&D_0013D5C8;
    if (base[0x1F] != 0) return 2;
    return base[0x21] != 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0020CDE0);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D348);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D440);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D678);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D6D0);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D790);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D828);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D830);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D928);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D960);

INCLUDE_ASM("asm/nonmatchings/text", func_0020D9D8);

INCLUDE_ASM("asm/nonmatchings/text", func_0020DA68);

INCLUDE_ASM("asm/nonmatchings/text", func_0020DAB0);

INCLUDE_ASM("asm/nonmatchings/text", func_0020DAF8);

INCLUDE_ASM("asm/nonmatchings/text", func_0020DB98);

INCLUDE_ASM("asm/nonmatchings/text", func_0020DC38);

INCLUDE_ASM("asm/nonmatchings/text", func_0020DC40);

INCLUDE_ASM("asm/nonmatchings/text", func_0020DD48);

INCLUDE_ASM("asm/nonmatchings/text", func_0020DE20);

INCLUDE_ASM("asm/nonmatchings/text", func_0020DEB0);

INCLUDE_ASM("asm/nonmatchings/text", func_0020DFF8);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E040);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E068);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E098);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E0C8);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E180);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E200);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E2B0);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E330);

/*
 * Close but not exact (13/32 bytes): packs 4 values into a 64-bit
 * field: *(long*)(arg0+0x38) = (arg1<<32) | arg2 | (arg3<<8) | (arg4<<16).
 * Same operations/order as retail (confirmed via objdump: same dsll32/
 * dsll/or sequence), but the widen-and-shift-by-32 for arg1 lands in a
 * different register than retail. Not investigated to a fix -- same
 * general family as the scratch-register-allocation-choice question,
 * on the widening step specifically.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0020E340);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E360);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E3D0);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E6B8);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E838);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E990);

INCLUDE_ASM("asm/nonmatchings/text", func_0020E9F0);

INCLUDE_ASM("asm/nonmatchings/text", func_0020EA70);

INCLUDE_ASM("asm/nonmatchings/text", func_0020ED48);

INCLUDE_ASM("asm/nonmatchings/text", func_0020EEE8);

INCLUDE_ASM("asm/nonmatchings/text", func_0020EF30);

INCLUDE_ASM("asm/nonmatchings/text", func_0020FC38);

INCLUDE_ASM("asm/nonmatchings/text", func_002108E0);

INCLUDE_ASM("asm/nonmatchings/text", func_00211548);

INCLUDE_ASM("asm/nonmatchings/text", func_002116A0);

INCLUDE_ASM("asm/nonmatchings/text", func_00211808);

INCLUDE_ASM("asm/nonmatchings/text", func_00212258);

INCLUDE_ASM("asm/nonmatchings/text", func_00212508);

INCLUDE_ASM("asm/nonmatchings/text", func_00212578);

INCLUDE_ASM("asm/nonmatchings/text", func_00212658);

INCLUDE_ASM("asm/nonmatchings/text", func_00213A78);

INCLUDE_ASM("asm/nonmatchings/text", func_00213BAC);

INCLUDE_ASM("asm/nonmatchings/text", func_00213BB8);

INCLUDE_ASM("asm/nonmatchings/text", func_00213C70);

INCLUDE_ASM("asm/nonmatchings/text", func_00213C78);

INCLUDE_ASM("asm/nonmatchings/text", func_00213D10);

INCLUDE_ASM("asm/nonmatchings/text", func_00213D28);

INCLUDE_ASM("asm/nonmatchings/text", func_00213DE0);

INCLUDE_ASM("asm/nonmatchings/text", func_00213F28);

INCLUDE_ASM("asm/nonmatchings/text", func_00214080);

INCLUDE_ASM("asm/nonmatchings/text", func_002140B0);

INCLUDE_ASM("asm/nonmatchings/text", func_002140F0);

INCLUDE_ASM("asm/nonmatchings/text", func_002140F8);

INCLUDE_ASM("asm/nonmatchings/text", func_00214158);

INCLUDE_ASM("asm/nonmatchings/text", func_002141A8);

INCLUDE_ASM("asm/nonmatchings/text", func_00214220);

INCLUDE_ASM("asm/nonmatchings/text", func_002142B8);

INCLUDE_ASM("asm/nonmatchings/text", func_00214358);

INCLUDE_ASM("asm/nonmatchings/text", func_002143D0);

INCLUDE_ASM("asm/nonmatchings/text", func_00214440);

INCLUDE_ASM("asm/nonmatchings/text", func_00214538);

INCLUDE_ASM("asm/nonmatchings/text", func_00214550);

INCLUDE_ASM("asm/nonmatchings/text", func_00214770);

INCLUDE_ASM("asm/nonmatchings/text", func_00214CF8);

INCLUDE_ASM("asm/nonmatchings/text", func_00214D28);

INCLUDE_ASM("asm/nonmatchings/text", func_00214D80);

INCLUDE_ASM("asm/nonmatchings/text", func_00214D88);

INCLUDE_ASM("asm/nonmatchings/text", func_00214F50);

INCLUDE_ASM("asm/nonmatchings/text", func_00214F78);

INCLUDE_ASM("asm/nonmatchings/text", func_00215038);

/*
 * Close but not exact, 16/48 (both func_00215048 and func_00215078,
 * which are the same shape with a +0x0 vs +0x10 final field offset).
 * This exact source form gets the first 5 instructions byte-identical,
 * including retail's `bnel`-with-the-load-in-its-delay-slot and its
 * unusual block layout (the shared `return 0` placed *before* the main
 * body), so start from here rather than re-deriving it:
 *
 *   int func(void *arg0) {
 *       if (arg0 == 0) { return 0; }
 *       else if ((*(unsigned short *)((char *)arg0+0x34) & 0x20) == 0) {
 *           return 0;
 *       } else { return **(int **)((char *)arg0+0x78); }
 *   }
 *
 * The if/else-if/else shape is what produces the `bnel`: GCC fills the
 * guard's delay slot from the *target* block using a likely branch, and
 * can only do that when the branch points at the body. The plain
 * `if (arg0 != 0) { ... } return 0;` form points the branch at the tail
 * instead, whose first instruction is a `jr` and so unfillable, giving
 * a plain `beqz` + nop (that form scores 33/48, much worse).
 * Two deltas remain, both after the `andi`:
 *   1. Retail has two literal `nop`s between the `andi` and the `beqz`
 *      that this compiler never emits -- see the backward-branch
 *      padding observation in docs/DECOMP_PROGRESS.md.
 *   2. Retail's `beqz` branches *backward* into the already-emitted
 *      shared `return 0` block; GCC emits a second copy at the end
 *      instead (no cross-jumping between the two identical blocks).
 * Tried and rejected: `volatile` on the flags read (loses the `bnel`
 * entirely, worse), and `-Wa,-g`/`-Wa,-O0` to stop the assembler
 * removing nops (no effect -- cc1 never emits them in the first place).
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00215048);

INCLUDE_ASM("asm/nonmatchings/text", func_00215078);

INCLUDE_ASM("asm/nonmatchings/text", func_002150A8);

INCLUDE_ASM("asm/nonmatchings/text", func_002150B0);

INCLUDE_ASM("asm/nonmatchings/text", func_00215328);

INCLUDE_ASM("asm/nonmatchings/text", func_00215378);

INCLUDE_ASM("asm/nonmatchings/text", func_00215380);

INCLUDE_ASM("asm/nonmatchings/text", func_002153E8);

INCLUDE_ASM("asm/nonmatchings/text", func_00215518);

INCLUDE_ASM("asm/nonmatchings/text", func_00215570);

INCLUDE_ASM("asm/nonmatchings/text", func_00215648);

INCLUDE_ASM("asm/nonmatchings/text", func_00215650);

INCLUDE_ASM("asm/nonmatchings/text", func_002156E0);

INCLUDE_ASM("asm/nonmatchings/text", func_00215788);

INCLUDE_ASM("asm/nonmatchings/text", func_002157C0);

INCLUDE_ASM("asm/nonmatchings/text", func_002158E0);

INCLUDE_ASM("asm/nonmatchings/text", func_002158E8);

INCLUDE_ASM("asm/nonmatchings/text", func_00215A10);

INCLUDE_ASM("asm/nonmatchings/text", func_00215A98);

INCLUDE_ASM("asm/nonmatchings/text", func_00215B18);

INCLUDE_ASM("asm/nonmatchings/text", func_00215BA8);

INCLUDE_ASM("asm/nonmatchings/text", func_00215C00);

INCLUDE_ASM("asm/nonmatchings/text", func_00215CA0);

INCLUDE_ASM("asm/nonmatchings/text", func_00215CA8);

INCLUDE_ASM("asm/nonmatchings/text", func_00215F20);

INCLUDE_ASM("asm/nonmatchings/text", func_00215F80);

INCLUDE_ASM("asm/nonmatchings/text", func_00216028);

INCLUDE_ASM("asm/nonmatchings/text", func_00216098);

INCLUDE_ASM("asm/nonmatchings/text", func_002160E0);

INCLUDE_ASM("asm/nonmatchings/text", func_00216150);

INCLUDE_ASM("asm/nonmatchings/text", func_00216198);

INCLUDE_ASM("asm/nonmatchings/text", func_002161E0);

INCLUDE_ASM("asm/nonmatchings/text", func_00216270);

INCLUDE_ASM("asm/nonmatchings/text", func_00216290);

INCLUDE_ASM("asm/nonmatchings/text", func_00216368);

INCLUDE_ASM("asm/nonmatchings/text", func_00216450);

INCLUDE_ASM("asm/nonmatchings/text", func_00216528);

INCLUDE_ASM("asm/nonmatchings/text", func_00216620);

INCLUDE_ASM("asm/nonmatchings/text", func_002166F0);

INCLUDE_ASM("asm/nonmatchings/text", func_002167C0);

INCLUDE_ASM("asm/nonmatchings/text", func_00216960);

INCLUDE_ASM("asm/nonmatchings/text", func_002169B8);

INCLUDE_ASM("asm/nonmatchings/text", func_00216A90);

INCLUDE_ASM("asm/nonmatchings/text", func_00216B68);

INCLUDE_ASM("asm/nonmatchings/text", func_00216C50);

INCLUDE_ASM("asm/nonmatchings/text", func_00216D30);

INCLUDE_ASM("asm/nonmatchings/text", func_00216D88);

extern short D_001517D0[];

void func_00216EF0(int arg0) {
    if (arg0 != 0) {
        D_001517D0[0x2F] = 0;
        D_001517D0[0x2E] = -0x8000;
    }
    D_001517D0[0x3D] = 0;
    D_001517D0[0x20] = -0x8000;
    D_001517D0[0x21] = 0;
    D_001517D0[0x3C] = -0x8000;
}

void func_00216F28(void) {
    short *p = D_001517D0;
    p[0x20] = 4;
    p[0x3C] = 4;
    p[0x2E] = 4;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00216F48);

INCLUDE_ASM("asm/nonmatchings/text", func_00217130);

INCLUDE_ASM("asm/nonmatchings/text", func_00217588);

INCLUDE_ASM("asm/nonmatchings/text", func_002175C8);

INCLUDE_ASM("asm/nonmatchings/text", func_00217628);

INCLUDE_ASM("asm/nonmatchings/text", func_002176C8);

INCLUDE_ASM("asm/nonmatchings/text", func_00217748);

INCLUDE_ASM("asm/nonmatchings/text", func_002177F0);

void func_00217830(int arg0, long arg1) {
    short *p = (short *)(int)arg1;
    if (p != 0 && arg0 != 0 && p[5] == 2) {
        p[5] = 3;
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_00217860);

INCLUDE_ASM("asm/nonmatchings/text", func_002178C0);

extern short D_001517F0;

void func_00217920(int arg0, long arg1) {
    short *p = (short *)(int)arg1;
    if (p != 0) {
        *(int *)p = arg0;
        if (arg0 != 0) {
            short state = p[5];
            if (state == 1) {
                p[5] = 4;
                if (p[8] != 0) {
                    D_001517F0 = state;
                }
            }
        } else {
            p[5] = 0;
        }
    }
}

void func_00217970(int arg0, long arg1) {
    short *p = (short *)(int)arg1;
    if (p != 0) {
        if (arg0 < 0) {
            *(int *)p = arg0;
        }
        if (arg0 != 0) {
            if (p[5] == 9) {
                p[5] = 4;
                if (p[8] != 0) {
                    D_001517F0 = 1;
                }
            }
        } else {
            p[5] = 0;
        }
    }
}

void func_002179C8(int arg0, long arg1) {
    short *p = (short *)(int)arg1;
    if (p != 0) {
        *(int *)p = arg0;
        if (arg0 != 0) {
            if (p[5] == 1) {
                p[5] = 8;
            }
        } else {
            p[5] = 0;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_00217A08);

INCLUDE_ASM("asm/nonmatchings/text", func_00217A60);

INCLUDE_ASM("asm/nonmatchings/text", func_00217AD0);

INCLUDE_ASM("asm/nonmatchings/text", func_00217AE8);

extern char D_0013CA40[];

void func_00217EC0(void) {
    char *p = D_0013CA40;
    *(short *)(p + 0x18E) = 0;
    *(int *)(p + 0x190) = 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00217ED8);

INCLUDE_ASM("asm/nonmatchings/text", func_00217EE8);

INCLUDE_ASM("asm/nonmatchings/text", func_00217F68);

INCLUDE_ASM("asm/nonmatchings/text", func_00218188);

INCLUDE_ASM("asm/nonmatchings/text", func_002181F0);

INCLUDE_ASM("asm/nonmatchings/text", func_00218908);

INCLUDE_ASM("asm/nonmatchings/text", func_00218928);

INCLUDE_ASM("asm/nonmatchings/text", func_00218930);

INCLUDE_ASM("asm/nonmatchings/text", func_00218A78);

INCLUDE_ASM("asm/nonmatchings/text", func_00218A80);

INCLUDE_ASM("asm/nonmatchings/text", func_00218B10);

INCLUDE_ASM("asm/nonmatchings/text", func_00219704);

INCLUDE_ASM("asm/nonmatchings/text", func_00219778);

INCLUDE_ASM("asm/nonmatchings/text", func_00219780);

INCLUDE_ASM("asm/nonmatchings/text", func_00219958);

INCLUDE_ASM("asm/nonmatchings/text", func_00219C08);

INCLUDE_ASM("asm/nonmatchings/text", func_00219C70);

INCLUDE_ASM("asm/nonmatchings/text", func_00219E48);

/*
 * Close but not exact (23/44), reverted. Logic:
 *   char *p = D_001D5F70;
 *   *(int*)p = 0x2D; *(int*)(p+0x110) = 0; D_0015F6E8 = 3;
 *   *(int*)(p+0xC) = 0; *(int*)(p+0x10) = 0;
 * Instruction count/size are right (44 both) but the register
 * assignment differs from the very first instruction (retail `lui $4`,
 * this compiler `lui $5`) and cascades. The store *order* also doesn't
 * follow the usual rotation rule -- unlike the single-base cases, this
 * function's stores go through two different bases (the D_001D5F70
 * object and the standalone global D_0015F6E8), and the compiler
 * reorders them more freely: source (0x110, global, 0xC, 0x10, 0) came
 * out as (0, global, 0x10, 0x110, 0xC), which is not a rotation.
 * Writing the source in retail's own emitted order changes nothing.
 * So: the rotation rule is base-pointer-scoped, and this is the
 * register-allocation-choice question on top.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00219E60);

INCLUDE_ASM("asm/nonmatchings/text", func_00219E90);

INCLUDE_ASM("asm/nonmatchings/text", func_0021A0B0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021A1A0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021A610);

INCLUDE_ASM("asm/nonmatchings/text", func_0021ACD8);

INCLUDE_ASM("asm/nonmatchings/text", func_0021AD68);

INCLUDE_ASM("asm/nonmatchings/text", func_0021AEF8);

extern int D_0015EF90;
extern char D_001D4B90[];
extern char D_001D4BC0[];

int func_0021B108(void *arg0) {
    *(char **)((char *)arg0 + 0x34) =
        (D_0015EF90 != 0) ? D_001D4B90 : D_001D4BC0;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021B138);

int func_0021B278(void) {
    return 0;
}

int func_0021B280(void) {
    return 0;
}

int func_0021B288(void *arg0) {
    *(int *)((char *)arg0 + 0x44) = -1;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021B298);

INCLUDE_ASM("asm/nonmatchings/text", func_0021BB90);

INCLUDE_ASM("asm/nonmatchings/text", func_0021C1B0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021C6C0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021C790);

INCLUDE_ASM("asm/nonmatchings/text", func_0021C840);

int func_0021CD98(void) {
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021CDA0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021CE60);

INCLUDE_ASM("asm/nonmatchings/text", func_0021D420);

INCLUDE_ASM("asm/nonmatchings/text", func_0021D4C0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021D7A0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021D9C8);

extern int D_00141FA0[];

int func_0021DA60(void *arg0) {
    int *src = (int *)((char *)arg0 + 0x30);
    int *dst = D_00141FA0;
    int i = 7;
    do {
        *dst++ = *src++;
    } while (--i >= 0);
    return 0;
}

extern unsigned char D_0013D5CA;
extern char D_001D0A50[];
extern char D_001D0A88[];

int func_0021DA98(void *arg0) {
    *(char **)((char *)arg0 + 0x34) =
        (D_0013D5CA != 0) ? D_001D0A50 : D_001D0A88;
    return 0;
}

extern int D_001A0418;

int func_0021DAC8(void) {
    D_001A0418 = -1;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021DAE0);

/*
 * Close but not exact (15/48): int func(void) {
 *   D_0013E6A0 = (D_0015EEF0 * 8) / 10; return 0; }
 * Shape exactly right (real signed `div` plus its trap guard -- see the
 * constant-division note in the techniques section). Residual is the
 * same recurring pair as func_00222D70/func_0021B108: retail loads the
 * global into the very register it put the `%hi` in (`lui $3` /
 * `lw $3`), this compiler uses a separate register for the `%hi`, and
 * the divisor's `addiu` is ordered before the load rather than after.
 * Reverted per the size-of-diff precedent.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0021DB00);

INCLUDE_ASM("asm/nonmatchings/text", func_0021DB30);

INCLUDE_ASM("asm/nonmatchings/text", func_0021DE08);

INCLUDE_ASM("asm/nonmatchings/text", func_0021E170);

int func_0021E1F8(void) {
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021E200);

INCLUDE_ASM("asm/nonmatchings/text", func_0021E2D0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021E340);

INCLUDE_ASM("asm/nonmatchings/text", func_0021E4B0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021E950);

/*
 * Close but not exact, reverted: conditional-move vs. branch.
 * Logic is `short v = (D_001414F4 == 1) ? 0 : 3;
 * *(short*)(*(char**)(arg0+0x34) + 2) = v; return 0;`.
 *
 * Retail branches (`addiu $3,$0,1` / `beq $4,$3`, the 0 materialized in
 * the delay slot and the 3 on the fall-through) and stores once at the
 * join. This compiler won't produce that shape:
 *  - single-store forms (`v=0; if (cond) v=3;`, an if/else assigning v,
 *    and a ternary) all compile branchlessly to `xori`/`movz` -- 23/40.
 *  - a two-store form (`if (cond) p[1]=0; else p[1]=3;`) does branch,
 *    and with the polarity written as `!= 1` even gets retail's exact
 *    `beq`, but then needs an extra `b` to join, so it's 15/40.
 * So: retail's compiler chose a branch where this one prefers a
 * conditional move for the same select-then-store. This is the mirror
 * image of func_001FF4F8, where retail used `movn` and this compiler
 * would not produce it -- the cmov heuristics differ in both
 * directions, which is worth knowing before spending long on either.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0021EDD8);

INCLUDE_ASM("asm/nonmatchings/text", func_0021EE00);

int func_0021EF30(void) {
    return 0;
}

int func_0021EF38(void *arg0) {
    char *p = (char *)arg0;
    *(float *)(p + 0x38) = 3.14159274f;
    *(int *)(p + 0x34) = 0;
    *(int *)(p + 0x44) = 0;
    *(int *)(p + 0x48) = 0;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0021EF60);

INCLUDE_ASM("asm/nonmatchings/text", func_0021EFA0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021F118);

INCLUDE_ASM("asm/nonmatchings/text", func_0021F200);

INCLUDE_ASM("asm/nonmatchings/text", func_0021F238);

INCLUDE_ASM("asm/nonmatchings/text", func_0021F610);

INCLUDE_ASM("asm/nonmatchings/text", func_0021F6A0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021F7D0);

INCLUDE_ASM("asm/nonmatchings/text", func_0021F898);

INCLUDE_ASM("asm/nonmatchings/text", func_0021FA50);

INCLUDE_ASM("asm/nonmatchings/text", func_0021FAF8);

INCLUDE_ASM("asm/nonmatchings/text", func_0021FB28);

INCLUDE_ASM("asm/nonmatchings/text", func_0021FF80);

extern float func_001FA748(float, float);

void func_00220128(void *arg0) {
    *(float *)((char *)arg0 + 0x40) =
        func_001FA748(*(float *)((char *)arg0 + 0x40), 0.02f);
}

INCLUDE_ASM("asm/nonmatchings/text", func_00220160);

extern void func_00234C98(int, int);
extern void func_00205E70(void);

int func_00220338(void) {
    func_00234C98(0x42, 0x44);
    func_00234C98(0x47, 0xB);
    func_00205E70();
    return 8;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00220370);

INCLUDE_ASM("asm/nonmatchings/text", func_00220600);

INCLUDE_ASM("asm/nonmatchings/text", func_00220690);

INCLUDE_ASM("asm/nonmatchings/text", func_002208F8);

INCLUDE_ASM("asm/nonmatchings/text", func_002209A0);

INCLUDE_ASM("asm/nonmatchings/text", func_00220C90);

INCLUDE_ASM("asm/nonmatchings/text", func_00220D08);

INCLUDE_ASM("asm/nonmatchings/text", func_00220DA0);

INCLUDE_ASM("asm/nonmatchings/text", func_00220DF0);

INCLUDE_ASM("asm/nonmatchings/text", func_00221380);

INCLUDE_ASM("asm/nonmatchings/text", func_00221688);

INCLUDE_ASM("asm/nonmatchings/text", func_002217C8);

INCLUDE_ASM("asm/nonmatchings/text", func_00221888);

INCLUDE_ASM("asm/nonmatchings/text", func_00221B58);

INCLUDE_ASM("asm/nonmatchings/text", func_00221E60);

INCLUDE_ASM("asm/nonmatchings/text", func_00222070);

INCLUDE_ASM("asm/nonmatchings/text", func_002222F8);

INCLUDE_ASM("asm/nonmatchings/text", func_002224A8);

INCLUDE_ASM("asm/nonmatchings/text", func_00222640);

INCLUDE_ASM("asm/nonmatchings/text", func_00222708);

int func_00222840(void) {
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00222848);

extern int D_0013CC04;
extern char D_001D2678[];
extern char *D_001D5F78;

int func_00222950(void) {
    if (D_0013CC04 & 0x40) {
        D_001D5F78 = D_001D2678;
    }
    return 0;
}

extern void func_001FDF78(int, int, int, int);

int func_00222978(void *arg0) {
    int *p = (int *)arg0;
    func_001FDF78(p[6], p[6] + p[8], p[7], p[7] + p[9]);
    return 2;
}

INCLUDE_ASM("asm/nonmatchings/text", func_002229B0);

extern int func_00226EA8(int);
extern char *D_001D5F74;

int func_00222A90(void *arg0) {
    *(int *)(D_001D5F74 + 0x84) = 0;
    *(int *)((char *)arg0 + 0x54) = func_00226EA8(0);
    return 0;
}

extern int func_00226F68(int);

int func_00222AD0(void *arg0) {
    *(int *)((char *)arg0 + 0x54) = func_00226F68(*(int *)((char *)arg0 + 0x54));
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00222B00);

INCLUDE_ASM("asm/nonmatchings/text", func_00222B98);

/*
 * Close but not exact (24/60): int func(void *arg0) {
 *   *(int *)((char *)arg0+0x34) = D_001D48A8[D_0015EE84 % 19];
 *   return 0; }
 * Notably the *shape* is exactly right, including the real `divu` and
 * its div-by-zero trap guard -- see the constant-division note in the
 * techniques section. The residual is the known allocator-varying
 * issue: retail does `lui $5` / `lw $5` (loading into the register it
 * just built the address in), this compiler does `lui $3` / `lw $5`,
 * and it orders the divisor's `addiu` before the load rather than
 * after. Same as func_0021B108's entry. Reverted per the size-of-diff
 * precedent.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00222D70);

INCLUDE_ASM("asm/nonmatchings/text", func_00222DB0);

INCLUDE_ASM("asm/nonmatchings/text", func_00222E98);

INCLUDE_ASM("asm/nonmatchings/text", func_00222FA8);

INCLUDE_ASM("asm/nonmatchings/text", func_00223140);

INCLUDE_ASM("asm/nonmatchings/text", func_002232E0);

int func_00223478(void *arg0) {
    *(int *)((char *)arg0 + 0x40) = 0;
    *(int *)((char *)arg0 + 0x50) = 0;
    *(int *)((char *)arg0 + 0x3C) = 0;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00223490);

INCLUDE_ASM("asm/nonmatchings/text", func_00223810);

INCLUDE_ASM("asm/nonmatchings/text", func_002239F0);

INCLUDE_ASM("asm/nonmatchings/text", func_00223B40);

INCLUDE_ASM("asm/nonmatchings/text", func_00223E40);

extern void func_00226D50(int);

int func_00223FD0(void *arg0) {
    func_00226D50(1);
    *(int *)((char *)arg0 + 0x48) = func_00226EA8(0);
    *(int *)((char *)arg0 + 0x4C) = 0;
    return 0;
}

int func_00224010(void *arg0) {
    *(int *)((char *)arg0 + 0x48) = func_00226F68(*(int *)((char *)arg0 + 0x48));
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_00224040);

INCLUDE_ASM("asm/nonmatchings/text", func_002243E8);

INCLUDE_ASM("asm/nonmatchings/text", func_00224728);

INCLUDE_ASM("asm/nonmatchings/text", func_00224C30);

INCLUDE_ASM("asm/nonmatchings/text", func_002250B8);

INCLUDE_ASM("asm/nonmatchings/text", func_00225358);

INCLUDE_ASM("asm/nonmatchings/text", func_00225548);

INCLUDE_ASM("asm/nonmatchings/text", func_002255F8);

void func_00225DF0(void) {
}

void func_00225DF8(void) {
}

INCLUDE_ASM("asm/nonmatchings/text", func_00225E00);

INCLUDE_ASM("asm/nonmatchings/text", func_00225FB8);

INCLUDE_ASM("asm/nonmatchings/text", func_002260A8);

INCLUDE_ASM("asm/nonmatchings/text", func_00226250);

INCLUDE_ASM("asm/nonmatchings/text", func_00226380);

INCLUDE_ASM("asm/nonmatchings/text", func_00226410);

INCLUDE_ASM("asm/nonmatchings/text", func_00226720);

INCLUDE_ASM("asm/nonmatchings/text", func_002267C0);

INCLUDE_ASM("asm/nonmatchings/text", func_00226808);

INCLUDE_ASM("asm/nonmatchings/text", func_002268F0);

INCLUDE_ASM("asm/nonmatchings/text", func_00226978);

INCLUDE_ASM("asm/nonmatchings/text", func_00226CF8);

void func_00226D48(void) {
}

INCLUDE_ASM("asm/nonmatchings/text", func_00226D50);

INCLUDE_ASM("asm/nonmatchings/text", func_00226EA8);

INCLUDE_ASM("asm/nonmatchings/text", func_00226F68);

INCLUDE_ASM("asm/nonmatchings/text", func_00227018);

INCLUDE_ASM("asm/nonmatchings/text", func_00227068);

INCLUDE_ASM("asm/nonmatchings/text", func_002270B0);

INCLUDE_ASM("asm/nonmatchings/text", func_00227100);

INCLUDE_ASM("asm/nonmatchings/text", func_00227890);

INCLUDE_ASM("asm/nonmatchings/text", func_00227928);

INCLUDE_ASM("asm/nonmatchings/text", func_002279D0);

INCLUDE_ASM("asm/nonmatchings/text", func_00227A30);

INCLUDE_ASM("asm/nonmatchings/text", func_00227A70);

INCLUDE_ASM("asm/nonmatchings/text", func_00227B00);

INCLUDE_ASM("asm/nonmatchings/text", func_00227C78);

INCLUDE_ASM("asm/nonmatchings/text", func_00227D20);

INCLUDE_ASM("asm/nonmatchings/text", func_00227DB0);

INCLUDE_ASM("asm/nonmatchings/text", func_00228110);

INCLUDE_ASM("asm/nonmatchings/text", func_00228160);

INCLUDE_ASM("asm/nonmatchings/text", func_00228268);

INCLUDE_ASM("asm/nonmatchings/text", func_002282B8);

INCLUDE_ASM("asm/nonmatchings/text", func_002282D0);

INCLUDE_ASM("asm/nonmatchings/text", func_00228400);

INCLUDE_ASM("asm/nonmatchings/text", func_00228458);

INCLUDE_ASM("asm/nonmatchings/text", func_002284E8);

INCLUDE_ASM("asm/nonmatchings/text", func_00228690);

INCLUDE_ASM("asm/nonmatchings/text", func_00228860);

INCLUDE_ASM("asm/nonmatchings/text", func_00228A58);

INCLUDE_ASM("asm/nonmatchings/text", func_00228D20);

INCLUDE_ASM("asm/nonmatchings/text", func_00229098);

INCLUDE_ASM("asm/nonmatchings/text", func_002291E8);

INCLUDE_ASM("asm/nonmatchings/text", func_00229838);

INCLUDE_ASM("asm/nonmatchings/text", func_002298B0);

INCLUDE_ASM("asm/nonmatchings/text", func_00229C08);

INCLUDE_ASM("asm/nonmatchings/text", func_00229D48);

INCLUDE_ASM("asm/nonmatchings/text", func_00229E50);

INCLUDE_ASM("asm/nonmatchings/text", func_00229F00);

INCLUDE_ASM("asm/nonmatchings/text", func_0022B648);

INCLUDE_ASM("asm/nonmatchings/text", func_0022B8F8);

INCLUDE_ASM("asm/nonmatchings/text", func_0022BEB0);

INCLUDE_ASM("asm/nonmatchings/text", func_0022C188);

INCLUDE_ASM("asm/nonmatchings/text", func_0022C5A0);

INCLUDE_ASM("asm/nonmatchings/text", func_0022C7E0);

INCLUDE_ASM("asm/nonmatchings/text", func_0022C870);

INCLUDE_ASM("asm/nonmatchings/text", func_0022C9A0);

INCLUDE_ASM("asm/nonmatchings/text", func_0022C9A8);

INCLUDE_ASM("asm/nonmatchings/text", func_0022CA00);

INCLUDE_ASM("asm/nonmatchings/text", func_0022CC40);

INCLUDE_ASM("asm/nonmatchings/text", func_0022CEB8);

INCLUDE_ASM("asm/nonmatchings/text", func_0022D1DC);

INCLUDE_ASM("asm/nonmatchings/text", func_0022D2AC);

INCLUDE_ASM("asm/nonmatchings/text", func_0022D3F8);

INCLUDE_ASM("asm/nonmatchings/text", func_0022D520);

INCLUDE_ASM("asm/nonmatchings/text", func_0022D6B4);

INCLUDE_ASM("asm/nonmatchings/text", func_0022D7E0);

INCLUDE_ASM("asm/nonmatchings/text", func_0022D8C0);

INCLUDE_ASM("asm/nonmatchings/text", func_0022D970);

INCLUDE_ASM("asm/nonmatchings/text", func_0022DA10);

INCLUDE_ASM("asm/nonmatchings/text", func_0022DB00);

INCLUDE_ASM("asm/nonmatchings/text", func_0022DB48);

INCLUDE_ASM("asm/nonmatchings/text", func_0022DBE8);

INCLUDE_ASM("asm/nonmatchings/text", func_0022DD68);

INCLUDE_ASM("asm/nonmatchings/text", func_0022EA20);

INCLUDE_ASM("asm/nonmatchings/text", func_0022EAB0);

INCLUDE_ASM("asm/nonmatchings/text", func_0022EB08);

INCLUDE_ASM("asm/nonmatchings/text", func_0022ED80);

INCLUDE_ASM("asm/nonmatchings/text", func_0022EE28);

INCLUDE_ASM("asm/nonmatchings/text", func_0022EEB8);

INCLUDE_ASM("asm/nonmatchings/text", func_0022EF50);

INCLUDE_ASM("asm/nonmatchings/text", func_0022EF68);

INCLUDE_ASM("asm/nonmatchings/text", func_0022EFE8);

void func_0022F090(int arg0, long arg1) {
    int *p = (int *)(int)arg1;
    if (p != 0) {
        *p = arg0;
    }
}

void func_0022F0A8(int arg0, long arg1) {
    unsigned char *p = (unsigned char *)(int)arg1;
    if (p != 0) {
        *(int *)p = arg0;
        if (arg0 != 0) {
            if (p[4] == 1) {
                p[4] = 2;
            }
        } else {
            *(int *)(p + 0x18) = 0;
            *(int *)(p + 0x1C) = 0;
            p[4] = 0;
        }
    }
}

void func_0022F0F0(int arg0, long arg1) {
    int *p = (int *)(int)arg1;
    if (p != 0) {
        *p = arg0;
        if (arg0 == 0) {
            *(int *)((char *)p + 0x18) = 0;
            *(int *)((char *)p + 0x1C) = 0;
            *(unsigned char *)((char *)p + 4) = 0;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_0022F120);

INCLUDE_ASM("asm/nonmatchings/text", func_0022F128);

INCLUDE_ASM("asm/nonmatchings/text", func_0022F258);

INCLUDE_ASM("asm/nonmatchings/text", func_0022F498);

INCLUDE_ASM("asm/nonmatchings/text", func_0022F4A0);

INCLUDE_ASM("asm/nonmatchings/text", func_0022F4C0);

INCLUDE_ASM("asm/nonmatchings/text", func_0022F738);

INCLUDE_ASM("asm/nonmatchings/text", func_0022FBE0);

INCLUDE_ASM("asm/nonmatchings/text", func_0022FD20);

INCLUDE_ASM("asm/nonmatchings/text", func_0022FDC0);

INCLUDE_ASM("asm/nonmatchings/text", func_002305A0);

INCLUDE_ASM("asm/nonmatchings/text", func_002308C8);

INCLUDE_ASM("asm/nonmatchings/text", func_00230A90);

INCLUDE_ASM("asm/nonmatchings/text", func_00232200);

INCLUDE_ASM("asm/nonmatchings/text", func_00232278);

INCLUDE_ASM("asm/nonmatchings/text", func_00232920);

INCLUDE_ASM("asm/nonmatchings/text", func_00232A00);

INCLUDE_ASM("asm/nonmatchings/text", func_00232B90);

INCLUDE_ASM("asm/nonmatchings/text", func_00232EF0);

INCLUDE_ASM("asm/nonmatchings/text", func_00233308);

INCLUDE_ASM("asm/nonmatchings/text", func_00233AB8);

extern void func_0011AE20(int arg0);

void func_00233FF8(void) {
    func_0011AE20(0);
}

INCLUDE_ASM("asm/nonmatchings/text", func_00234018);

INCLUDE_ASM("asm/nonmatchings/text", func_00234158);

INCLUDE_ASM("asm/nonmatchings/text", func_00234238);

extern int D_001DD568[];

/*
 * 1/40 bytes: the final `addu` has its two (commutative) operands the
 * other way round from retail -- retail encodes `addu $3,$3,$2`
 * (base + offset, base as rs), this compiler `addu $3,$2,$3`. Same
 * registers, same result, just GCC's canonical operand order for a
 * commutative add. Tried `rec += off`, `rec = rec + off`,
 * `&D_001DD568[arg0*4]`, and an integer-cast form; the latter two are
 * worse (3/40, they also swap which register holds base vs offset),
 * the first two both give this 1-byte residual. Kept as C per the
 * tiny-isolated-diff precedent.
 */
int func_00234350(unsigned int arg0) {
    char *rec;
    if (arg0 >= 0x40) {
        return -3;
    }
    rec = (char *)D_001DD568;
    rec = rec + arg0 * 16;
    return *(int *)(rec + 4);
}

/*
 * Retail aligns func_00234380 to 16 bytes, and func_00234350's .s file
 * carried two trailing nops after its endlabel to supply that padding.
 * Those nops sit OUTSIDE the declared function size (0x28), so they were
 * silently lost when this function became C, shifting all 179 later
 * text functions by -8 and giving them spurious 1-byte jal-target diffs.
 * The .s files only ever .align 3 (8 bytes), so the 16-byte alignment
 * has to be restored explicitly here.
 */
__asm__(".align 4");

INCLUDE_ASM("asm/nonmatchings/text", func_00234380);

INCLUDE_ASM("asm/nonmatchings/text", func_002344D8);

INCLUDE_ASM("asm/nonmatchings/text", func_00234620);

INCLUDE_ASM("asm/nonmatchings/text", func_002346C0);

INCLUDE_ASM("asm/nonmatchings/text", func_002347F0);

INCLUDE_ASM("asm/nonmatchings/text", func_002348B8);

INCLUDE_ASM("asm/nonmatchings/text", func_002348E8);

INCLUDE_ASM("asm/nonmatchings/text", func_00234948);

INCLUDE_ASM("asm/nonmatchings/text", func_002349B8);

INCLUDE_ASM("asm/nonmatchings/text", func_00234AC8);

INCLUDE_ASM("asm/nonmatchings/text", func_00234B48);

INCLUDE_ASM("asm/nonmatchings/text", func_00234B98);

INCLUDE_ASM("asm/nonmatchings/text", func_00234BA0);

INCLUDE_ASM("asm/nonmatchings/text", func_00234C48);

INCLUDE_ASM("asm/nonmatchings/text", func_00234C50);

INCLUDE_ASM("asm/nonmatchings/text", func_00234C98);

INCLUDE_ASM("asm/nonmatchings/text", func_00234D50);

INCLUDE_ASM("asm/nonmatchings/text", func_00234D58);

INCLUDE_ASM("asm/nonmatchings/text", func_00234E78);

INCLUDE_ASM("asm/nonmatchings/text", func_00234E80);

INCLUDE_ASM("asm/nonmatchings/text", func_00234EE0);

INCLUDE_ASM("asm/nonmatchings/text", func_00234F40);

INCLUDE_ASM("asm/nonmatchings/text", func_00234FA0);

INCLUDE_ASM("asm/nonmatchings/text", func_00234FA8);

INCLUDE_ASM("asm/nonmatchings/text", func_00235008);

INCLUDE_ASM("asm/nonmatchings/text", func_00235018);

INCLUDE_ASM("asm/nonmatchings/text", func_002350A8);

INCLUDE_ASM("asm/nonmatchings/text", func_00235118);

INCLUDE_ASM("asm/nonmatchings/text", func_00235218);

/*
 * Reverted: SIZE MISMATCH (36/52) -- my reading was wrong, and a
 * size-mismatched function actively harms everything after it (it shifted
 * func_0023D988, giving func_0023E008 a spurious 1-byte jal diff). Shape
 * is a DMA/GIF packet append on D_00161000: bump the global by 0x10,
 * store arg0+0x90000000 at [0] and zero [1]..[3], but the emitted store
 * order ([0],[3],[1],[2]) did not come out of the rotation rule and the
 * pointer bump is materialized differently. Needs a fresh look.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_00235290);

INCLUDE_ASM("asm/nonmatchings/text", func_002352C8);

INCLUDE_ASM("asm/nonmatchings/text", func_00235EF0);

INCLUDE_ASM("asm/nonmatchings/text", func_00236060);

INCLUDE_ASM("asm/nonmatchings/text", func_002362B0);

INCLUDE_ASM("asm/nonmatchings/text", func_00236958);

INCLUDE_ASM("asm/nonmatchings/text", func_00236A98);

INCLUDE_ASM("asm/nonmatchings/text", func_00236B58);

extern void func_00238688(void *);
extern char D_001E3500[];
extern char D_001E4700[];

void func_00236BB0(void) {
    func_00238688(D_001E3500);
    func_00238688(D_001E4700);
}

INCLUDE_ASM("asm/nonmatchings/text", func_00236BE0);

INCLUDE_ASM("asm/nonmatchings/text", func_00236CA8);

INCLUDE_ASM("asm/nonmatchings/text", func_00236F00);

INCLUDE_ASM("asm/nonmatchings/text", func_002383D8);

INCLUDE_ASM("asm/nonmatchings/text", func_00238688);

void func_00238D88(void) {
}

INCLUDE_ASM("asm/nonmatchings/text", func_00238D90);

INCLUDE_ASM("asm/nonmatchings/text", func_00238F98);

INCLUDE_ASM("asm/nonmatchings/text", func_00239180);

/*
 * Reverted (14/60). Logic is func_00116248(*(int*)(D_001E66C0+0x2C),
 * D_001E8DA0, arg0) then *(int*)(D_001E66C0+0x44) = 0, with arg0 moved
 * to $6 up front. Retail materializes &D_001E66C0 into $16 and reuses it
 * for both the argument load and the trailing store; needs the
 * base-pointer-local lever plus argument-ordering work. Not chased
 * further this round.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_002391A8);

INCLUDE_ASM("asm/nonmatchings/text", func_002391E8);

INCLUDE_ASM("asm/nonmatchings/text", func_00239610);

INCLUDE_ASM("asm/nonmatchings/text", func_00239628);

INCLUDE_ASM("asm/nonmatchings/text", func_00239838);

INCLUDE_ASM("asm/nonmatchings/text", func_00239948);

INCLUDE_ASM("asm/nonmatchings/text", func_002399A0);

INCLUDE_ASM("asm/nonmatchings/text", func_00239A00);

INCLUDE_ASM("asm/nonmatchings/text", func_00239CF8);

INCLUDE_ASM("asm/nonmatchings/text", func_0023A220);

INCLUDE_ASM("asm/nonmatchings/text", func_0023A478);

INCLUDE_ASM("asm/nonmatchings/text", func_0023A5D8);

INCLUDE_ASM("asm/nonmatchings/text", func_0023A5E0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023A948);

extern void func_001FB498(void);
extern void func_001F3008(void);
extern void func_001F3140(void);

void func_0023AA08(void) {
    func_001FB498();
    func_001F3008();
    func_001F3140();
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023AA38);

INCLUDE_ASM("asm/nonmatchings/text", func_0023B008);

INCLUDE_ASM("asm/nonmatchings/text", func_0023B018);

INCLUDE_ASM("asm/nonmatchings/text", func_0023B1E8);

INCLUDE_ASM("asm/nonmatchings/text", func_0023B210);

INCLUDE_ASM("asm/nonmatchings/text", func_0023B510);

INCLUDE_ASM("asm/nonmatchings/text", func_0023B5D0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023B670);

INCLUDE_ASM("asm/nonmatchings/text", func_0023B740);

extern int func_00118BC0(int);

int func_0023BB40(void) {
    return func_00118BC0(1);
}

/*
 * Reverted (9/44). Logic is certainly `func_0023C2B0((char *)D_0016130C
 * + 0xD9100);`. Held by the documented %hi-register-reuse allocator
 * sub-case: retail does `lui $2` / `lw $2,lo($2)` reusing the same
 * register, this compiler emits `lui $2` / `lw $3,lo($2)` and also
 * hoists the constant's lui one slot earlier. Tried a base-pointer
 * local plus &p[off] indexing (the documented two-sided lever); no
 * change, which confirms allocator rather than source shape.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0023BB60);

INCLUDE_ASM("asm/nonmatchings/text", func_0023BB90);

INCLUDE_ASM("asm/nonmatchings/text", func_0023BE38);

extern int func_001E9730(char *, int);
extern char D_001612F8[];

int func_0023BF48(int arg0) {
    return func_001E9730(D_001612F8, arg0);
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023BF70);

INCLUDE_ASM("asm/nonmatchings/text", func_0023BFA0);

extern void func_0012F220(void);

int func_0023C060(void) {
    func_0012F220();
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023C080);

INCLUDE_ASM("asm/nonmatchings/text", func_0023C088);

INCLUDE_ASM("asm/nonmatchings/text", func_0023C0E0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023C128);

INCLUDE_ASM("asm/nonmatchings/text", func_0023C1F8);

int func_0023C2B0(void *arg0) {
    return *(int *)((char *)arg0 + 0x50) >= 0x1000;
}

extern void func_0023C390(void *);

void func_0023C2C0(void *arg0) {
    if (*(int *)arg0 != 0) {
        func_0023C390(arg0);
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023C2E8);

INCLUDE_ASM("asm/nonmatchings/text", func_0023C390);

INCLUDE_ASM("asm/nonmatchings/text", func_0023C5E0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023C7A8);

INCLUDE_ASM("asm/nonmatchings/text", func_0023C910);

INCLUDE_ASM("asm/nonmatchings/text", func_0023C960);

INCLUDE_ASM("asm/nonmatchings/text", func_0023C9B0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023C9C0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023CAF8);

INCLUDE_ASM("asm/nonmatchings/text", func_0023CBE0);

void func_0023CD10(void *arg0) {
    char *p = (char *)arg0 + 0x50000;
    *(int *)(p + 8) = 0x50000;
    *(int *)p = 0;
    *(int *)(p + 4) = 0;
}

void func_0023CD28(void) {
}

int func_0023CD30(char *arg0, int *arg1) {
    int *p = (int *)(arg0 + 0x50000);
    int d = p[2] - p[1];
    if (d != 0) {
        *arg1 = (int)(arg0 + p[0]);
    }
    return d;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023CD60);

INCLUDE_ASM("asm/nonmatchings/text", func_0023CDA8);

INCLUDE_ASM("asm/nonmatchings/text", func_0023CDF0);

int func_0023CE18(int *arg0, int arg1, int arg2) {
    arg0[1] = arg1;
    arg0[0] = arg2;
    return 1;
}

int func_0023CE28(void) {
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023CE30);

int func_0023CEC8(int *self, int arg1) {
    int v1 = ((self[2] << 4) + self[1] + 0x10) & 0xFFFFFFF;
    if (arg1 == v1) {
        return 0;
    }
    return (unsigned int)(arg1 - self[0]) >> 11;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023CF10);

INCLUDE_ASM("asm/nonmatchings/text", func_0023CF80);

void func_0023CFF0(long *arg0, int arg1, int arg2, int arg3) {
    *arg0 = ((long)arg1 << 32) | ((unsigned long)(unsigned int)arg2 << 28) |
            (unsigned int)arg3;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023D018);

INCLUDE_ASM("asm/nonmatchings/text", func_0023D090);

INCLUDE_ASM("asm/nonmatchings/text", func_0023D1F0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023D2E8);

INCLUDE_ASM("asm/nonmatchings/text", func_0023D340);

INCLUDE_ASM("asm/nonmatchings/text", func_0023D540);

INCLUDE_ASM("asm/nonmatchings/text", func_0023D650);

INCLUDE_ASM("asm/nonmatchings/text", func_0023D988);

INCLUDE_ASM("asm/nonmatchings/text", func_0023D9E0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023DA30);

INCLUDE_ASM("asm/nonmatchings/text", func_0023DA88);

INCLUDE_ASM("asm/nonmatchings/text", func_0023DBE0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023DCF0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023DE98);

INCLUDE_ASM("asm/nonmatchings/text", func_0023DF98);

extern void func_0012B008(void);

int func_0023DFA0(void) {
    func_0012B008();
    return 1;
}

extern int func_0023D1F0(void *);

int func_0023DFC0(void *arg0) {
    return func_0023D1F0((char *)arg0 + 0x48);
}

extern int func_0023D2E8(void *);

int func_0023DFE0(void *arg0) {
    return func_0023D2E8((char *)arg0 + 0x48);
}

void func_0023E000(int *arg0) {
    *(arg0 + (0xA8 / 4)) = 0;
}

extern void func_0023D988(void *);
extern void func_0012BB20(void *);

int func_0023E008(void *arg0) {
    func_0023D988((char *)arg0 + 0x48);
    func_0012BB20(arg0);
    return 1;
}

/*
 * Close but not exact: `arg0[42] = 1; return 1;`. Retail materializes
 * the constant 1 once (`li $v0,1`) and reuses it for both the store and
 * the return value; this compiler materializes it twice into separate
 * registers ($v1 for the store, $v0 for the return) regardless of
 * whether the source uses a shared local, an assignment-expression
 * (`return arg0[42] = 1;`), or a bare duplicate literal -- all three
 * tried, none changed it. New instance of the scratch-register-
 * allocation-choice open question, this time as "fails to CSE an
 * identical constant" rather than picking a different register for two
 * genuinely different values. See docs/DECOMP_PROGRESS.md.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_0023E040);

int func_0023E050(int *arg0) {
    return *(arg0 + (0xA8 / 4));
}

int func_0023E058(int *arg0, int arg1) {
    int old = *(arg0 + (0xA8 / 4));
    *(arg0 + (0xA8 / 4)) = arg1;
    return old;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023E068);

extern int func_0023D9E0(void *);

int func_0023E0B0(void *arg0) {
    return func_0023D9E0((char *)arg0 + 0x48);
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023E0D0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023E0D8);

INCLUDE_ASM("asm/nonmatchings/text", func_0023E1B0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023E1F8);

INCLUDE_ASM("asm/nonmatchings/text", func_0023E298);

extern char D_00161328[];

int func_0023E450(int arg0, void *arg1) {
    func_001E9730(D_00161328, *(int *)((char *)arg1 + 4));
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023E478);

INCLUDE_ASM("asm/nonmatchings/text", func_0023E4B0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023E4E0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023E510);

INCLUDE_ASM("asm/nonmatchings/text", func_0023E560);

void func_0023E5B0(void) {
}

/*
 * Close but not exact: `arg0[3]=0; arg0[2]=0;` (retail's actual store
 * order). Logic/operations match, but this compiler schedules the
 * second store into jr's delay slot, making the compiled function 3
 * instructions (12 bytes) instead of retail's 4 (16 bytes, sw, sw, jr,
 * a real unfilled nop) -- retail chose NOT to fill that delay slot here,
 * this compiler does. New instance of the delay-slot-scheduling open
 * question, this time as "retail leaves a delay slot empty where this
 * compiler doesn't" rather than the usual "different thing lands there".
 * See docs/DECOMP_PROGRESS.md.
 */
void func_0023E5B8(volatile int *arg0) {
    arg0[3] = 0;
    arg0[2] = 0;
}

int func_0023E5C8(int *arg0) {
    return (arg0[3] ^ arg0[4]) == 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023E5E0);

INCLUDE_ASM("asm/nonmatchings/text", func_0023E658);

int func_0023E698(int *arg0) {
    return arg0[3] == 0;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023E6A8);

void func_0023E710(volatile int *arg0) {
    if (arg0[3] > 0) {
        arg0[3] = arg0[3] - 1;
    }
}
