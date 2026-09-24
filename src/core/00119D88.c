#include "common.h"
#include "structs.h"

/*
 * core_text object 0x119D88-0x11CCE0. Boundaries are retail's linker fill
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
extern int func_001160D8(void);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119D88);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119DC0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119E70);

/* |d| to int for the float printer (func_00119F38 passes the soft-float
   double's bits): exponent e = biased exponent - 1075; 0 below 2^-53,
   9999 from 2^13 up; otherwise the 53-bit mantissa shifted into place,
   right shifts keeping two guard bits and rounding up when both are set.
   Exact only if the final `(int)` truncation's dsra is moved into the
   `j $31` slot (see RESULT.md): retail's compiler did that, ours leaves
   the slot to the assembler, which pads it with a nop. */
/* The parameter doubles as the mantissa and the exponent is computed
   in place. It ends in the same int truncation as func_0012AAA8, with
   the dsra in the return slot (tools/fix_trunc_slot.py). */
int func_00119EA8(unsigned long x) {
    long e;

    e = (x << 1) >> 53;
    e -= 0x433;
    if (e < -0x35) return 0;
    if (e >= 13) return 9999;
    x = (x << 12) >> 12;
    x |= 0x10000000000000;
    if (e < 0) {
        e = -e;
        x >>= e - 2;
        if ((x & 3) == 3) x = (x >> 2) + 1;
        else x >>= 2;
    } else {
        x <<= e;
    }
    return x;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_00119F38);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011A0A0);

extern void func_0011A0A0(int, void *);

/*
 * Same-size near-miss (13/56 bytes). Manual va_list forwarder: spills
 * 7 register args to a stack buffer and hands func_0011A0A0 arg0 plus
 * the buffer's address, the same shape as func_0011A6C8's blocked
 * varargs definition (see func_0012C420's comment). The 16-long
 * buffer size is what closes the frame to retail's exact 0x90 bytes
 * (7 is 0x20 short); the instruction multiset is then identical to
 * retail's, but this compiler places the buffer at the bottom of the
 * frame and $ra at the top, where retail has it the other way around
 * -- a single local array gives nothing else in source to reorder.
 */
void func_0011A690(int arg0, int a1, int a2, int a3, int a4, int a5, int a6,
                    int a7) {
    long args[16];
    args[0] = a1;
    args[1] = a2;
    args[2] = a3;
    args[3] = a4;
    args[4] = a5;
    args[5] = a6;
    args[6] = a7;
    func_0011A0A0(arg0, args);
}

/*
 * Exact, but only under Sony's 2.9-ee, so it stays a stub for now. It is
 * the varargs twin of the function above: swap the print hook D_0012FD00
 * for func_00119DC0, pass fmt and the va_list to func_0011A0A0, restore
 * the hook. Under the game's 2.95.3 it also saves $f12-$f18; with
 * -msoft-float the frame is still 0x90 against retail's 0xB0 (the same
 * as sprintf, 00116248.c). This file cannot move to 2.9-ee as a whole:
 * under it func_0011ABC8, func_0011AC08 and func_0011CCB0 change size.
 * So the function needs an object of its own, and nothing yet shows
 * where that object begins and ends.
 *
 *   int func_0011A6C8(const char *fmt, ...) {
 *       va_list ap;
 *       void *saved = D_0012FD00;
 *       int ret;
 *
 *       D_0012FD00 = (void *)func_00119DC0;
 *       va_start(ap, fmt);
 *       ret = func_0011A0A0(fmt, ap);
 *       va_end(ap);
 *       D_0012FD00 = saved;
 *       return ret;
 *   }
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011A6C8);

void func_0011A728(void *arg0, void *arg1) {
    int idx = *(int *)((char *)arg0 + 0x10);
    int val = *(int *)((char *)arg0 + 0x14);
    int *arr = *(int **)((char *)arg1 + 0x1C);
    arr[idx] = val;
}

int func_0011A748(void *arg0, void *arg1) {
    int v = *(int *)((char *)arg0 + 0x10);
    *(int *)((char *)arg1 + 0x8) = v;
    return v;
}

extern int D_00155080[];

int func_0011A758(int arg0) {
    return D_00155080[arg0];
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011A770);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011A780);

extern void func_001193F8(int);
extern void func_00118AD0(int, int);
extern int D_00154F54;
extern int D_0012FD04;

extern int func_001193F8_i(int) __asm__("func_001193F8");
extern int func_00118AD0_i(int, int) __asm__("func_00118AD0");

/* func_001193F8 and func_00118AD0 both return int; their results decide
   which registers the globals' addresses get. */
void func_0011AA00(void) {
    func_001193F8_i(0x5);
    func_00118AD0_i(0x5, D_00154F54);
    D_0012FD04 = 0;
}

extern int D_00154F64 NOT_SDA;
extern int D_00154F6C NOT_SDA;

/*
 * Close, not exact (6/44), same size, and instruction-for-instruction
 * identical to retail -- same opcodes, same order, same operands. The
 * whole residual is register choice: retail reuses arg0's own register
 * ($4) for the loaded base once arg0 is dead and accumulates into $3,
 * while this compiler puts the base in $v0. Hoisting the shift into an
 * `off` local and ordering the two stores took it from 20/44 to 6/44;
 * the rest is the scratch-register question, and specifically the half
 * of it the declaration-order lever cannot reach, since that steers
 * locals and this is a parameter's register being reused.
 */
void func_0011AA38(int arg0, int arg1, int arg2) {
    int off = arg0 * 8;
    char *base = (char *)((arg0 >= 0) ? D_00154F6C : D_00154F64);
    char *p = base + off;
    *(int *)(p + 0x0) = arg1;
    *(int *)(p + 0x4) = arg2;
}

void func_0011AA68(int arg0) {
    int offset = arg0 << 3;
    if (arg0 < 0) {
        arg0 = D_00154F64;
    } else {
        arg0 = D_00154F6C;
    }
    offset += arg0;
    *(int *)offset = 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AA90);

/* EABI passes the first eight integer args in $4-$11, so this forwards
   seven of them.
 *
 * func_0011ABC8/func_0011AC08 are close, not exact (11/60 each, same
 * size). Every move and the call match retail; only the position of the
 * `addiu $sp,$sp,-0x10` differs -- retail emits it fourth, after three
 * of the argument moves, while this compiler emits it second. That is
 * scheduling, not source shape, and nothing in the source can express
 * where the prologue's stack adjust lands. */
extern void func_0011AA90(int, int, int, int, int, int, int);

void func_0011ABC8(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5) {
    func_0011AA90(arg0, 0, arg1, arg2, arg3, arg4, arg5);
}

void func_0011AC08(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5) {
    func_0011AA90(arg0, 0x1, arg1, arg2, arg3, arg4, arg5);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AC48);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AD70);

/*
 * NOT a match, despite being recorded as one until now. Retail is a bare
 * 4-byte `jr $31` with nothing in its delay slot (the next function's
 * first instruction sits there). `void f(void) {}` emits `jr $ra; nop`
 * -- 8 bytes -- and GCC additionally force-aligns a compiled function to
 * 8 bytes where retail sits at a 4-aligned address, so this cost 8 bytes
 * of core_text layout drift in total.
 *
 * It read as a match only because tools/check_match.py compares exactly
 * `retail_size` bytes: the first 4 bytes (`jr`) matched, and the extra
 * nop was invisible to the comparison. Any function that is CORRECT in
 * its first N bytes but LONGER than retail will report a false match the
 * same way -- see docs/DECOMP_PROGRESS.md.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AE1C);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011AE20);

extern void func_0011AA00(void);
extern int D_0012FD08 NOT_SDA;

void func_0011AFC0(void) {
    func_0011AA00();
    D_0012FD08 = 0;
}

extern int func_0011D960(void);
extern void func_0011D9A8(void);

/* Claim the first free 0x40-byte slot in the table {next_id, base,
   count} at arg0, with interrupts held off across the search. A claimed
   slot records its index and state in +0x10, points +0x14 at itself and
   takes the next id; id 0 is skipped, so after handing out 1 the
   counter jumps straight to 2. Returns the slot, or 0 if the table is
   full.

   Two shapes mattered. `i` must be assigned AFTER the func_0011D960
   call: initialised in its declaration it is live across the call, so
   it lands in a third callee-saved register and drags in a save/restore
   pair, where retail keeps it in $v1.

   And the id fan-in has to be written as an explicit if/ELSE with a
   separate assignment in each arm. Retail rematerialises `addiu $v1,$0,1`
   in the taken arm even though $v1 already holds that value, and no
   form that computes the value once -- including writing the redundant
   `id = 1;` after the store -- survives: the compiler folds it away and
   the function comes out 4 bytes short. Giving the two arms their own
   assignments to `id` keeps both definitions alive. */
void *func_0011AFE8(void *arg0) {
    char *a = (char *)arg0;
    int n;
    char *p;
    int i;
    int id;
    int v;

    func_0011D960();
    n = *(int *)(a + 0x8);
    i = 0;
    p = *(char **)(a + 0x4);
    while (i < n) {
        if ((*(int *)(p + 0x10) & 1) == 0) {
            *(int *)(p + 0x10) = (i << 16) | 5;
            v = *(int *)a + 1;
            *(int *)a = v;
            if (v == 1) {
                *(int *)a = v + 1;
                id = 1;
            } else {
                id = v;
            }
            *(char **)(p + 0x14) = p;
            *(int *)(p + 0x18) = id;
            func_0011D9A8();
            return p;
        }
        i++;
        p += 0x40;
    }
    func_0011D9A8();
    return 0;
}

void func_0011B090(void *arg0) {
    char *self = (char *)arg0;
    unsigned int flags = *(unsigned int *)(self + 0x10);
    *(int *)(self + 0x18) = 0;
    *(unsigned int *)(self + 0x10) = flags & 0xFFFFFFFEu;
}

/*
 * REVERTED at 20/48 (same size). Semantics are certain:
 *
 *   int rem = *(int *)(arg0 + 0x24) % *(int *)(arg0 + 0x18);
 *   *(int *)(arg0 + 0x24) = rem + 1;
 *   return *(int *)(arg0 + 0x14) + (rem << 6);
 *
 * A wrapping counter: takes the modulo of field 0x24 by field 0x18,
 * writes back rem+1, and returns field 0x14 + rem*64 (a 64-byte-stride
 * table index). Every instruction matches retail including the div trap
 * guard; the residual is the allocator picking the opposite registers
 * for the divisor and the mfhi result ($2/$3 swapped versus retail),
 * which then reorders the tail so the store lands in the jr delay slot
 * where retail puts the addu. Tried: hoisting the base load into a
 * local, and naming rem+1 as a separate local -- neither changed the
 * allocation. Same open scratch-register question as func_001160D8.
 */
/* Hand out the next 0x40-byte slot of the ring {.., +0x14 base, +0x18
   count, .., +0x24 next}: take next modulo count, advance next past it,
   return the slot. The slot address has to be formed BEFORE the store of
   the new index: that is what gives retail's allocation (remainder in $v0,
   divisor in $v1) and its tail, `addiu` before `sll` and the `addu` in the
   jr delay slot. Storing first and indexing in the return is 20/48. */
/* The slot address is computed into a local before next = i + 1 is
   stored. */
void *func_0011B0B0(void *arg0) {
    char *p = (char *)arg0;
    int i = *(int *)(p + 0x24) % *(int *)(p + 0x18);
    char *s = *(char **)(p + 0x14) + i * 0x40;
    *(int *)(p + 0x24) = i + 1;
    return s;
}

/*
 * REVERTED (SIZE mismatch, 168 vs retail 180, both spellings). Decode is
 * certain -- completion handler for a request block. Two message codes
 * do extra work before the common teardown: 0x8000000A runs the
 * target's own callback, 0x80000009 copies three fields back into it.
 * Then, whatever the message was, close the target's handle if it is
 * still valid, release its buffer and clear the pointer.
 *
 *   extern void func_00118CA0(int h);
 *
 *   void func_0011B0E0(char *p) {
 *       char *o;
 *       int h;
 *
 *       switch (*(unsigned int *)(p + 0x20)) {
 *       case 0x8000000A:
 *           o = *(char **)(p + 0x1C);
 *           if (*(int *)(o + 0x1C) != 0) {
 *               (*(void (**)(int))(o + 0x1C))(*(int *)(o + 0x20));
 *           }
 *           break;
 *       case 0x80000009:
 *           o = *(char **)(p + 0x1C);
 *           *(int *)(o + 0x24) = *(int *)(p + 0x24);
 *           *(int *)(o + 0x14) = *(int *)(p + 0x28);
 *           *(int *)(o + 0x18) = *(int *)(p + 0x2C);
 *           break;
 *       }
 *       o = *(char **)(p + 0x1C);
 *       h = *(int *)(o + 0x8);
 *       if (h >= 0) {
 *           func_00118CA0(h);
 *       }
 *       func_0011B090(*(void **)o);
 *       *(int *)o = 0;
 *   }
 *
 * Everything after the dispatch is byte-correct, including the reload of
 * `o` in exactly the three places retail reloads it (after the indirect
 * call, and on each path that had not loaded it yet) and NOT on the path
 * where the callback pointer was null. Writing `o` once after the switch
 * and letting each arm use it is what produces that.
 *
 * The three missing words are all in the dispatch, and this is the
 * finding worth keeping:
 *
 *   retail   beq  m,0xA -> caseA      ours   beq m,0x9 -> case9
 *            sltu 0xA,m                      bne m,0xA -> default
 *            bnel      -> default            (fall through to caseA)
 *            beq  m,0x9 -> case9
 *            b         -> default
 *
 * Retail's is gcc's case-node DECISION TREE rooted at the HIGHER value,
 * with the redundant `index > root` test that a tree root with only a
 * left child always emits. Ours is the same routine's two-node CHAIN,
 * rooted at the lower value. gcc 2.95 only rebalances a case list of
 * more than two nodes; at exactly two it leaves the chain. So retail's
 * switch had MORE cases than are reachable here -- at least three, with
 * 0x8000000A as the median -- and the extra ones compiled to nothing we
 * can see. No two-case spelling can produce the three-test tree:
 * switch and if/else-if chain give byte-identical 168-byte output, and
 * an explicit hand-written `if (m > 0x8000000A)` guard is folded away
 * because its arm is empty. Not reachable from a two-case source.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B0E0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B198);

void *func_0011B1F8(int key, void *arg1) {
    void *outer = *(void **)((char *)arg1 + 0x28);
    while (outer != 0) {
        void *inner = *(void **)((char *)outer + 8);
        while (inner != 0) {
            if (*(int *)inner == key) {
                return inner;
            }
            inner = *(void **)((char *)inner + 0x38);
        }
        outer = *(void **)((char *)outer + 0x14);
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B248);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B2F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B438);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B4C8);

/*
 * REVERTED: size mismatch, 56 bytes against retail's 60. Semantics are
 * certain:
 *
 *   char *p = *(char **)arg0;
 *   if (p == 0) return 0;
 *   if (*(int *)(arg0 + 4) != *(int *)(p + 0x18)) return 0;
 *   if (*(int *)(p + 0x10) & 1) return 1;
 *   return 0;
 *
 * Retail keeps TWO exit blocks -- a shared `return 0` and a separate
 * `return 1`, each with its own `jr` -- which is 15 instructions. This
 * compiler merges them into a single exit and sets $v0 in the branch
 * delay slots, 14 instructions. Tried both the && chain and explicit
 * early returns; both merge. The exit structure is not expressible from
 * C here.
 */
/* Is the handle {slot, id} at arg0 still live: the slot is set, its id at
   +0x18 still matches the handle's, and its in-use bit (+0x10 bit 0) is
   set. Written as one inverted guard that returns 0, then `return 1`:
   that keeps retail's two exits (shared `return 0` block the tests fall
   into, a separate `return 1`), and gcc leaves all three branch slots to
   the assembler, which fills them with nops as retail has them. The &&
   form returning 1 merges the exits; early returns give bnel. */
/* One test for the three failure cases, then return 1. */
int func_0011B6B8(void *arg0) {
    char *p = (char *)arg0;
    char *q = *(char **)p;

    if (q == 0 || *(int *)(p + 4) != *(int *)(q + 0x18) ||
        !(*(int *)(q + 0x10) & 1)) {
        return 0;
    }
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B6F8);

extern int func_00118C70(void *);
extern int D_0012FDA0;
extern int D_0012FDA4;

/*
 * Close, not exact (8/92), same size. Logic confirmed: one-shot init --
 * if D_0012FDA0 is still -1, build a stack descriptor {[1]=1, [2]=1,
 * [5]=0} and register it twice via func_00118C70, storing the two
 * results into D_0012FDA0 and D_0012FDA4.
 *
 * Residual is purely which of the three stores lands in the first
 * call's delay slot: retail puts buf[2] there and emits buf[5], buf[1]
 * ahead of it; this compiler puts buf[1] there. Two source orders were
 * tried -- (1,2,5) gives 10/92, (5,1,2) gives 8/92 -- and the rotation
 * rule does not predict this one consistently: (5,1,2) rotated as
 * documented, (1,2,5) did not. Note buf[1] and buf[2] both take the
 * value 1, so they are interchangeable semantically and only their
 * emission order distinguishes the two.
 */
void func_0011B710(void) {
    int buf[8];
    if (D_0012FDA0 == -1) {
        buf[5] = 0;
        buf[1] = 1;
        buf[2] = 1;
        D_0012FDA0 = func_00118C70(buf);
        D_0012FDA4 = func_00118C70(buf);
    }
}

/*
 * REVERTED (size mismatch: ours 132, retail 136). Logic is certain:
 * claim the first free slot of the 32-entry, 0x10-byte table
 * D_00157E80 -- the table func_0011B7F8 below indexes -- under the
 * func_00118CB0/func_00118C90 lock. A slot is free when its +4 word is
 * zero; claiming it writes 0x10000000 there and returns the slot, and
 * a full table returns 0. Both exits drop the lock first.
 *
 *   void *func_0011B770(void) {
 *       char *p;
 *
 *       func_0011B710();
 *       func_00118CB0(D_0012FDA0);
 *       for (p = D_00157E80; p < D_00157E80 + 0x200; p += 0x10) {
 *           if (*(int *)(p + 0x4) == 0) {
 *               *(int *)(p + 0x4) = 0x10000000;
 *               func_00118C90(D_0012FDA0);
 *               return p;
 *           }
 *       }
 *       func_00118C90(D_0012FDA0);
 *       return 0;
 *   }
 *
 * Exactly one instruction short, and it is a register-allocation
 * choice, not a source-shape one. Retail spends a THIRD callee-saved
 * register: $17 holds %hi(D_0012FDA0) for the whole function, costing
 * an sd/ld pair in the prologue and epilogue. This compiler keeps the
 * loop pointer in $16 and parks the same %hi in $4 with a single
 * `move $4,$16`, saving the pair and coming out one instruction ahead.
 * Nothing in the source decides that -- the same C is what retail's
 * compiler turned into the three-register form.
 */
INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B770);

extern char D_00157E80[];

/* The out-of-range test is written >= 0x20 so the compiler branches on
   the true side to the in-range block, as retail does (sltiu/bnez). */
void *func_0011B7F8(unsigned int arg0) {
    func_0011B710();
    func_00118CB0(D_0012FDA0);
    if (arg0 < 0x20) {
        void *ret = &D_00157E80[arg0 * 0x10];
        func_00118C90(D_0012FDA0);
        return ret;
    } else {
        func_00118C90(D_0012FDA0);
        return 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011B868);

extern int D_0012FD9C;
extern int func_00118C70(void *);

void func_0011BBF0(void) {
    int buf[8];
    if (D_0012FD9C == -1) {
        buf[5] = 0;
        buf[2] = 1;
        buf[1] = 1;
        D_0012FD9C = func_00118C70(buf);
    }
}

extern void func_0011BBF0(void);
extern int D_0012FD9C NOT_SDA;

int func_0011BC40(void) {
    func_0011BBF0();
    func_00118CB0(D_0012FD9C);
    return 0;
}

/* Byte-exact once tools/fix_tail_calls.py learned to sink the last body
   instruction into the tail jump's delay slot. An earlier round reverted
   this at 16 bytes against retail's 12 and correctly identified the
   cause -- retail has `lui / j / lw(delay)` where we had
   `lui / lw / j / nop` -- but left it as a rewriter limitation. It was
   not: SN's assembler fills a delay slot only from AFTER the branch, so
   at the end of a function it has nothing to take. Moving the one
   preceding instruction down is safe by construction, not by analysis;
   the reasoning is written out in the rewriter. */
void func_0011BC70(void) {
    func_00118C90(D_0012FD9C);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BC80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BCB0);

extern int func_001151B4();
extern char D_0012FCEC[];
extern char D_001580A8[];
extern int D_0012FDA8;

/* Three-way compare-and-confirm: the slot D_001580A8 has to agree with
   the scratch buffer D_0012FCEC, then with the handle D_0012FDA8, and
   finally the two of those with each other. Only the last comparison's
   result is reported, as a 0/1.

   The two globals are bound to locals, buffer first, purely to fix the
   order the compiler materialises their %hi halves in: used directly,
   the slot's lui comes first and the function is 4/140. Declaration
   order of the locals decides it. */
int func_0011BEB8(void) {
    char *buf = D_0012FCEC;
    char *slot = D_001580A8;
    int r = 0;

    if (func_001151B4(slot, buf, 4) != 0 &&
        func_001151B4(slot, D_0012FDA8, 4) != 0) {
        r = func_001151B4(buf, D_0012FDA8, 4) != 0;
    }
    return r;
}

extern void func_001153FC(void *, int, int);
extern int D_0012FD94;
extern char D_001580A8[];

int func_0011BF48(void) {
    D_0012FD94 = 0;
    func_001153FC(D_001580A8, 0, 0x4);
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011BF80);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011C208);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011C388);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011C5C0);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011C820);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011CAE0);

extern int D_0012FDAC;
extern char D_00158140[];
extern int D_00158180;
extern int D_001581C0;

/* Another func_0011B4C8 RPC (see func_001245F8), guarded on the handle
   D_0012FDAC being valid. Both failure exits share the single `return 0`
   that the early guard branches to. */
int func_0011CBC8(int arg0) {
    if (D_0012FDAC < 0) {
        return 0;
    }
    D_001581C0 = arg0;
    if (func_0011B4C8(D_00158140, 1, 0, &D_001581C0, 4,
                      &D_00158180, 4, 0, 0) >= 0) {
        return D_00158180;
    } else {
        return 0;
    }
}

/* Sibling of func_0011CBC8 with command id 2 and -1 as the RPC failure
   result, so the two failure exits cannot share a return.

   Defined old-style ON PURPOSE. func_0011CCB0 just below calls this with
   NO argument at all -- retail's call has a bare nop in its delay slot --
   which a prototype would reject. A K&R definition creates no prototype,
   so both functions compile as retail's source evidently did. */
int func_0011CC38(arg0)
int arg0;
{
    if (D_0012FDAC < 0) {
        return 0;
    }
    D_001581C0 = arg0;
    if (func_0011B4C8(D_00158140, 2, 0, &D_001581C0, 4,
                      &D_00158180, 4, 0, 0) >= 0) {
        return D_00158180;
    } else {
        return -1;
    }
}

void func_0011CCB0(void) {
    func_0011CC38();
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011CCD0);
