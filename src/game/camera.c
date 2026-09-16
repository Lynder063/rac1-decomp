#include "common.h"
#include "structs.h"

/*
 * camera.cpp in the original source; text 0x1EC038-0x1EDFF8.
 * Name and boundary from the NTSC split in bordplate's RC1 project
 * (codeberg.org/bordplate/RC1), mapped to PAL by matching function
 * sizes -- see docs/DECOMP_PROGRESS.md. Compiled as C for now.
 */

/* Declarations in scope here before the split. */
extern char D_0013E650[];
extern int D_0015F694;
extern int func_001E97C8(void *arg0);

/* Same signature as the declaration further down this file; duplicate
   identical declarations are legal and avoid a signature clash. */
extern void func_001F9A98(void *, void *, int);
extern char D_00189310[];
extern char D_001899D0[];
extern void *D_001871C0 NOT_SDA;

void func_001EC038(void) {
    func_001F9A98(D_00189310, D_001871C0, 0xA0);
    func_001F9A98(D_001899D0, D_001899D0 - 0x500, 0x280);
    *(void **)(D_00189310 + 0x70) = D_001899D0;
}

/*
 * REVERTED. Logic is certain and the loop body compiles
 * instruction-for-instruction identical to retail:
 *
 *   extern int D_0015F08C;
 *   extern void (*D_001893B0[])(void);
 *   void func_001EC098(void) {
 *       int i = 0;
 *       void (**p)(void) = D_001893B0;
 *       while (i < D_0015F08C) { i++; (*p++)(); }
 *       D_0015F08C = 0;
 *   }
 *
 * Right size (108) but 83/108. The entire difference is global-address
 * materialization: retail re-derives `&D_0015F08C` with a fresh `lui`
 * at each of its three uses (and falls back to `$at` for the final
 * store, the documented `%hi`-reuse/`$at` allocator sub-case), whereas
 * this compiler hoists the address into a third callee-saved register
 * as a loop invariant -- so our frame is 0x40 against retail's 0x30.
 * Marking the global `volatile` makes it worse (0x50 frame, four
 * callee-saved regs), confirming it is allocation, not access semantics.
 */
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

/*
 * REVERTED (size mismatch: ours 92, retail 96). Logic is certain:
 *
 *   void func_001EC210(void *arg0) {
 *       if (*(short *)((char *)arg0 + 0x86) != 0) {
 *           if (*(int *)(D_001871D0 + 0xC4) == 0) return;
 *           func_0020D678();
 *           *(int *)(D_001871D0 + 0xC4) = 0;
 *           return;
 *       }
 *       if (*(int *)(D_001871D0 + 0xC4) != 0) return;
 *       *(int *)(D_001871D0 + 0xC4) = func_001E97C8(D_001871D0 - 0x50);
 *   }
 *
 * (`D_001871D0 - 0x50` is the enclosing struct's base; the global is a
 * field 0x50 into it.)
 *
 * The missing 4 bytes are one instruction: retail restores `$31` in the
 * delay slot of BOTH early-exit branches as well as at the end, i.e. it
 * duplicates the epilogue reload, while GCC branches to a single shared
 * epilogue. Writing it as nested ifs and as mirrored early returns both
 * give 92 -- the early-return form matches retail's control flow exactly
 * and still shares the epilogue, so this is the delay-slot filler, not
 * the source shape.
 */
INCLUDE_ASM("asm/nonmatchings/text", func_001EC210);

/* 0x14-byte dispatch records, indexed by the type id at +0x8C.
   Declared as a real struct array, not `char[]` + byte offset: the two
   forms are not codegen-equivalent here. Retail emits `addu $2,$2,$3`
   (base, index); a char-pointer form emits `addu $2,$3,$2` (index,
   base) and no amount of reordering the C addition changes it, because
   GCC canonicalises the PLUS before operand order is chosen. Indexing
   a typed array puts the base first. See func_001EC270/func_001EC780. */
typedef struct {
    char unk_00[8];
    void (*fn_08)(void *);
    char unk_0C[4];
    void (*fn_10)(void *);
} DispatchRec;
extern DispatchRec D_001E8F80[];

/*
 * 1/68, and the residual is one commutative-operand-order byte: retail
 * emits `addu $2,$2,$3` (base + index), this compiler `addu $2,$3,$2`
 * (index + base). Same instruction, same destination, same size.
 *
 * Getting here took two real fixes worth reusing. Writing the field read
 * as `... * 0x14 + 8` folds the +8 into the %lo address constant instead
 * of leaving it as a `lw` offset (7/68); computing the record pointer
 * first and reading `rec + 8` separately fixes that. And building the
 * pointer with `rec += idx` rather than in the initialiser makes the sum
 * land in the base's register as retail does, rather than the index's
 * (3/68 -> 1/68) -- the documented in-place-accumulate lever.
 *
 * The last byte resisted an explicit index local and both `rec += idx`
 * and `rec = rec + idx`, which is the known scratch-register/operand
 * choice question. Kept per the same-size-tiny-diff precedent.
 */
void func_001EC270(void *arg0) {
    void (*fn)(void *) = D_001E8F80[*(short *)((char *)arg0 + 0x8C)].fn_08;
    if (fn != 0) {
        fn(arg0);
    }
}

INCLUDE_ASM("asm/nonmatchings/text", func_001EC2B8);

INCLUDE_ASM("asm/nonmatchings/text", func_001EC5B8);

/* Same shape/blocker as func_001EC270: indirect call via a function
   pointer loaded from a per-type dispatch table, wrapped in an
   sq-for-lone-$ra save this compiler doesn't reproduce (see
   func_001E9E70's comment). Not attempted. */
/* Same vtable dispatch as func_001EC270, on the +0x10 slot instead of
   +8; identical 1/68 operand-order residual, same cause. */
void func_001EC780(void *arg0) {
    void (*fn)(void *) = D_001E8F80[*(short *)((char *)arg0 + 0x8C)].fn_10;
    if (fn != 0) {
        fn(arg0);
    }
}

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
