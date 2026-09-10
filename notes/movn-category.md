
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
