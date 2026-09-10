
# Coordinator pass (manual, no agent)

## Confirmed: the movz/movn skip category is over-broad

`func_001F7BF8` — **matches byte-exact (0/84), first attempt**, after
having been written off under this category. It builds a 256-entry
lookup table swapping bits 3 and 4 of the index; its two `movn`s come
from ordinary `if (i & 8) v |= 0x10;`. Nothing exotic.

Note the earlier scan for reclaimable cases was itself too narrow: it
looked specifically for the signed-division idiom, and this function is
not that. The category is wrong in more than one direction, so the ~57
stubbed `movn`+`sra` functions want individual examination.

## Negative results from this pass (don't repeat these)

`func_0023DA30` — kept as documented-close (13/84, same size, harmless).
Logic confirmed: rounds field `0x14` up to a multiple of 2048 via the
signed-division idiom, bracketed by two calls. Residual is purely the
scratch-register-allocation question — retail loads the field into `$3`
and materializes `-1` into `$2`; this compiler picks them the other way
and everything downstream follows. **Tried and failed:** hoisting the
load into an explicit local to change evaluation order (no change).

`func_001F0FF8` — **re-attempted, 77% -> 31%, still reverted.** See the
"second attempt" section at the end of this file for the refined
findings; the original note follows.

`func_001F0FF8` — reverted at 77%. A text-centring routine: sums
per-character widths from `D_00189EC0` (index `(unsigned char)(c-0x20)`,
clamped to `0x20` when `>= 0x60`, which is where its `movn` comes from),
then `x -= total >> 1` and tail-calls `func_001F0F78(x, arg1)`. The
*logic* is almost certainly right, but the frame shape is not: retail
stashes `arg1` into `$12` immediately on entry, which the straightforward
C doesn't reproduce. Worth another attempt by someone willing to chase
the register/frame shape; the semantics above should save that time.

`func_0020E340` — reverted at 34%. Packs four values into a 64-bit word:
`*(long*)(p+0x38) = (a1<<32) | a2 | (a3<<8) | (a4<<16)`. Instruction
*set* is exactly right (`dsll32`/`dsll`/`or`), so the reading is correct;
two things differ. Retail emits all three shifts and *then* the three
ORs, while this compiler interleaves shift/or/shift/or — and **hoisting
the shifts into locals does not change that**, the scheduler reorders
regardless. Retail also ORs into a fresh `$2` where this compiler
accumulates in place into `$5`. Both are the known allocator/scheduling
question, not a source-shape problem.

Incidental confirmation: `func_0020E340` takes its fifth argument in
`$8`, i.e. EABI passes the first **eight** integer args in `$4`-`$11`,
not four. Useful when reading any function with more than four
parameters.

## Still-viable pool, after excluding known dead ends

425 stubbed `text` functions remain that are not handwritten, not
`$gp`-relative, not in the dead VU0 cluster (0x1F9B20-0x1FB598), and not
COP2 — so there is plenty left that needs no toolchain breakthrough.

## Where the remaining easy work actually is (measured, not guessed)

After the `func_001F7BF8` win I kept going and hit the same wall three
times in a row. That pattern is the useful result, so it is recorded
here rather than left as three isolated failures.

Mechanically classified every remaining `text` stub. Excluding
handwritten asm, `$gp` users, the dead VU0 cluster (0x1F9B20-0x1FB598)
and COP2 code, and requiring an actual `jr` (so not a fallthrough
fragment), the population of **straight-line leaf functions — the shape
that has historically matched first try — is down to six**, and four of
those are already-known dead ends (`func_0023E040`, `func_0020E340`,
`func_0023CDF0`, and the varargs `func_001E9730`).

I attempted the two fresh ones and both failed on the **same**
scratch-register-allocation question, not on misreading the assembly:

- `func_0020E340` (34%) — instruction set exactly right; retail emits
  all shifts then all ORs, this compiler interleaves, and hoisting the
  shifts into locals does not change it. Retail ORs into a fresh `$2`,
  this compiler accumulates in place into `$5`.
- `func_00227A30` (45%) — straight-line field init. Structure matches
  from the first instruction; the entire residual is register *numbers*
  (retail materializes the `0x10` constant into `$6`, this compiler into
  `$7`, and everything follows).

Also a concrete negative on a documented technique: the "last source
statement emits first" rotation rule **did not apply** to
`func_00227A30`. Rotating the stores made it worse (45% -> 55%) and the
compiler emitted them in plain source order. So that rule is
context-dependent, not general — worth checking rather than assuming.

**Conclusion for planning.** The cheap, shape-driven wins in `text` are
essentially exhausted; 425 stubs remain but the ones that are *easy* are
gone. What is left divides into work gated on the register-allocation
question, and larger functions where the win comes from understanding
the code rather than from pattern-matching a shape. The latter is real,
tractable work — it is just not cheap per function, so it suits agents
with a budget rather than opportunistic manual passes.


# Second attempt at func_001F0FF8 (sole-agent pass)

Got it from 77% down to **44/140 (31%)** and confirmed the semantics at
instruction level. Still reverted (31% is over the revert threshold and
the precedent — 30% and 34% cases were reverted, 20% kept), but the
remaining gap is now fully characterised rather than vague.

**Confirmed C (logic is right, verified instruction-by-instruction):**

```c
extern int D_00189EC0[];
extern void func_001F0F78(int, int);

int func_001F0FF8(int x, int a1, int a2, unsigned char *str) {
    int total = 0;                       /* a2 is a real but unused param */
    if (*str != 0) {
        unsigned char *p = str;
        do {
            unsigned int idx = (unsigned char)(*p - 0x20);
            unsigned int v = 0x20;
            p++;
            if (idx < 0x60) v = idx;
            total += D_00189EC0[v];
        } while (*p != 0);
    }
    x -= total >> 1;
    func_001F0F78(x, a1);
    return x;
}
```

**The one big win, worth reusing elsewhere: don't let the index
expression sink the shift into the select.** Writing the clamp inline as
`D_00189EC0[(idx < 0x60) ? idx : 0x20]` makes this compiler select
between `idx*4` and `0x80` (i.e. it moves the `<<2` *inside* the
conditional move, materialising the pre-scaled constant). Retail selects
the raw index and shifts afterwards. Assigning the clamp to its own
local variable first, then indexing with it, restores retail's
select-then-shift order — that single change was 71% -> 31%.

**The three differences that remain, none source-steerable:**

1. **Compare canonicalisation.** Retail: `sltiu $2,$4,0x60` + `movn`
   (one instruction, no register needed). This compiler: hoists `95`
   into a register outside the loop and emits `sltu $v0,$t0,$a0` +
   `movz` — the complementary encoding, computing `95 < idx` instead of
   `idx < 0x60`. Identical semantics, strictly more registers. Tried
   `if`-form, ternary-form, and ternary-into-a-variable: all three give
   the same `sltu`/`movz` pair, so it is not a source-shape choice.
2. **Delay-slot filler.** Retail puts `p = str` in the `beqz`'s delay
   slot and sets `total = 0` before the branch; this compiler coalesces
   `p` into `str`'s register (so no copy instruction exists to schedule)
   and fills the slot with `total = 0` instead.
3. **Constant hoisting.** Retail hoists `0x20` into `$11` outside the
   loop and copies it in per iteration; this compiler re-materialises
   `li $v1,32` inside the loop. Same instruction count, different shape.

Everything else — the prologue, the whole loop body, the `sra`/`subu`,
the call, the epilogue — matches instruction for instruction; the byte
count is inflated because differences 1-3 shift every subsequent
register number.

# func_001F65B0 — decoded, reverted (best 56%)

A per-character width accumulator, and the fifth `movn` function looked
at this pass. Semantics are certain; the shape is not reproducible with
the forms tried, so it stays `INCLUDE_ASM`.

```c
/* NB: an existing `extern` at the call sites declares arg2 as void *,
   so the definition must match that and cast internally. */
int func_001F65B0(unsigned char *str, int limit, void *arg2) {
    signed char *table = (signed char *)arg2;
    int total = 0, n = 0;
    if (limit != 0 && *str != 0) {
        unsigned char *p = str;
        int c;
        while ((c = *p) != 0) {
            signed char w;
            p++; n++;
            w = table[c * 4 + 3];
            if (w != 0) total += w;      /* this is the movn */
            if (n == limit) break;
        }
    }
    return total;
}
```

Note `if (w != 0) total += w;` is a no-op guard semantically (adding 0
changes nothing) but retail emits the `movn`, so the guard must be in
the source — same situation as the dead `if (count < 0)` clamp in
`func_00216150`.

**Why it doesn't match.** Retail reads the character **three** times:
once for the entry guard (through `$4`, i.e. `str`), once in the loop
preheader (through `$7`, i.e. `p`), and once at the loop bottom for the
back-edge test. This compiler CSEs the first two into one load, because
`p = str` makes them provably the same address.

Three attempts, all reverted:
- plain (non-volatile), top-tested `while` — **78%**; two loads, not three.
- `volatile unsigned char *p` — **56%**, the best. The volatile does
  reproduce the redundant guard read, but it then *prevents* loop
  rotation (a volatile load cannot be duplicated into a preheader), so
  the loop stays top-tested with an `andi`/`beqz` inside it where retail
  has the bottom test. Volatile fixes one half and breaks the other.
- explicitly hand-rotated `for(;;)` with the three reads written out —
  **81%**, worse; the compiler re-CSEs them anyway.

So the blocker is that retail's compiler did *not* CSE two loads through
`str` and `p` that this one does. That is not obviously reachable from
source shape — it would need the two pointers to be un-provably-equal,
which they are not.

# func_0021D9C8 — decoded, reverted (70%)

Not attempted further, but the semantics are worked out so a later
attempt starts from meaning rather than disassembly:

```c
extern int D_00141FA0[];
void func_0021D9C8(void *arg0) {
    char *s = (char *)arg0;
    int *dst = (int *)(s + 0x30);       /* 8-int table at +0x30 */
    int *src = D_00141FA0, *p = dst;
    int k, v;
    for (k = 7; k >= 0; k--) { *p = *src; src++; p++; }   /* copy 8 ints */
    *(int *)(s + 0x50) = 0;             /* runs unconditionally (delay slot) */
    if (dst[0] != 0) {
        v = *(int *)(s + 0x50);
        for (;;) {                      /* scan for first zero entry, cap 8 */
            v = v + 1;
            *(int *)(s + 0x50) = v;
            if (dst[v] == 0) break;
            if (v >= 8) break;
            v = *(int *)(s + 0x50);     /* retail really does reload here */
        }
    }
    v = *(int *)(s + 0x50);
    *(int *)(s + 0x50) = v % 8;         /* the movn is this signed %8 */
}
```

Diverges from instruction zero: retail opens `daddu $6,$4,$0` (copies
`arg0` into a second register, keeping `$4` live) before touching the
global, where this compiler starts with the `lui` and works out of `$4`
directly. The `char *s` local does not reproduce that copy. Everything
downstream shifts from there, hence 70%.

**Worth noting for the technique list:** the `movn`/`sra 3`/`sll 3`/
`subu` tail here is a signed `% 8`. That is not a contradiction of
"constant division is not strength-reduced" — that rule is about
non-power-of-two divisors, which get a real `div`. Powers of two *are*
strength-reduced, into exactly this bias-and-shift idiom, and a plain
`v % 8` in C reproduces it.

# func_0021C790 — decoded, reverted (best 44%)

A linked-list walk gated by two global flags. Semantics are certain and
the instruction *sequence* was brought into agreement with retail; what
remains is register allocation, so it stays `INCLUDE_ASM`.

```c
extern int D_001D5F70[];

int func_0021C790(void *arg0, int flag) {
    char *obj = (char *)arg0;
    int found = 0, any = 0, c1;

    if (flag != 0) return 0;

    c1 = D_001D5F70[0x134 / 4];
    if (c1 != 0) { int t = *(int *)(obj + 0x30) & 8; found = (t != 0); }
    if (D_001D5F70[0x138 / 4] != 0) {
        int t = *(int *)(obj + 0x30) & 4;
        if (t) found = 1;
    }

    if (found) {
        any = 1;
        obj = *(char **)(obj + 0x4C);          /* advance once before loop */
        for (;;) {
            found = 0;
            if (c1 != 0) {
                int t = *(int *)(obj + 0x30) & 8;
                found = 1;
                if (t == 0) found = 0;         /* movz */
            }
            if (D_001D5F70[0x138 / 4] != 0) {
                int t = *(int *)(obj + 0x30) & 4;
                if (t) found = 1;              /* movn */
            }
            if (found == 0) break;
            obj = *(char **)(obj + 0x4C);      /* bnel's delay slot */
        }
    }
    if (any) *(int *)(D_001D5F70[1] + 0x80) = (int)obj;
    return 0;
}
```

**One technique confirmed here, worth reusing.** The first flag test
originally compiled to `srl`/`andi` (a single-bit *extract*) where retail
has `andi`/`sltu` (a *nonzero test*). Writing the mask into its own local
first — `int t = x & 8; found = (t != 0);` instead of
`found = (x & 8) != 0;` — stops the compiler recognising the single-bit
extract and produces retail's `andi`/`sltu`. That took it 48% -> 44% and
made the opening instruction sequence match retail exactly. Generally
useful for any `(x & BIT) != 0` near-miss.

**Why it still doesn't match.** Purely register assignment. Retail reuses
`$5` (the now-dead `flag` argument) for the global's base address and
puts `any` in `$7`; this compiler puts the base in `$7` and pushes `any`
out to `$12`. Everything downstream renumbers from there.

**Tried and failed:** the base-pointer-local form (`int *g = D_001D5F70;`
and index `g[...]`), which the doc lists as a lever for exactly this kind
of opening difference. It made things clearly worse here (44% -> 62%), so
this function wants the *direct-indexing* form. Another data point that
the direct-vs-local choice is genuinely per-function and must be tested
both ways rather than assumed.

# func_00200198 — decoded, reverted (best 28%, from 63%)

A two-level table lookup with validity checks. Semantics certain; frame
and structure were brought to agreement, residual is constant-hoist
scheduling.

```c
/* NB: existing declarations in text.c constrain this --
   `extern int func_001FF668(int);` (ONE arg) and
   `extern int D_0019A4E8 NOT_SDA;` used via `&D_0019A4E8`.
   Contradicting either is a hard compile error, not a warning. */
int func_00200198(int a0, int a1) {
    int *p; int n; unsigned short *e; short *t; int i, v, r;

    n = func_001FF668(a0);
    p = &D_0019A4E8;                 /* AFTER the call -- see below */
    e = (unsigned short *)(n * 8 + p[7]);

    if (e[0] == 0xFFFF) return 0;
    if (a1 >= (int)e[1]) return 0;

    i = e[2] + a1;
    t = (short *)(p[8] + i * 4);
    if (*(int *)(p[10] + t[0] * 8) < 0) return 0;   /* bltzl */

    v = *(int *)(p[9] + t[1] * 8);
    r = 0;
    if ((v & 0x80000000) == 0) r = i;               /* the movz */
    return r;
}
```

**Two techniques confirmed, both worth reusing:**

1. **Materialize a global's base AFTER a call, not before** — the single
   biggest win here, 63% -> 29%. Assigning `p = &D_0019A4E8;` before the
   call kept it live across the call, so it needed a *second*
   callee-saved register and the frame grew to 0x30 where retail uses
   0x20. Moving the assignment after the call dropped it to one saved
   register and the right frame size. **A wrong frame size is a strong
   tell for exactly this**: something is live across a call that
   shouldn't be.
2. **`addu` operand order is observable even though the operation is
   commutative.** `p[7] + n * 8` emitted `addu $3,$3,$2` where retail has
   `addu $3,$2,$3`; writing it as `n * 8 + p[7]` matched. Cheap to try on
   any near-miss whose first diff is an `addu`/`or`/`and` with the same
   registers in the other order.

**Why it still doesn't match.** Retail hoists the `0x80000000` mask
(`lui $8`) very early — right after the `lhu` of `e[2]`, roughly 20
instructions before its only use — where this compiler materializes it at
the point of use. Every register from there renumbers.

**Tried and failed:** binding the mask to its own local
(`unsigned int mask = 0x80000000u;`) assigned early. It did *not* hoist
the `lui` and made the overall result worse (28% -> 35%), so it is not a
source-shape lever here. This matches the constant-hoisting behaviour
already noted for `func_001F0FF8`: this compiler sinks constants to their
use, retail hoists them, and source position does not steer it.
