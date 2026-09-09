# Parallel round, agent B — vram 0x1FB600–0x20CB00 (src/text.c)

Findings for the coordinator to merge into `docs/DECOMP_PROGRESS.md`.

## Range survey (useful in its own right)

189 `INCLUDE_ASM` stubs remain in this range. Classified them all
mechanically (by grepping each `.s` for the relevant signature) rather
than one at a time:

| Category | Count |
|---|---|
| `sq`/`lq` callee-saved spills (unsolved gap) | 69 |
| `$gp`-relative (`($28)`) addressing | 53 |
| **real candidates** | 40 |
| fallthrough fragments (no `jr $31`) | 17 |
| `movz`/`movn` heuristics | 6 |
| handwritten (spimdisasm-marked) | 3 |
| SIMD/COP2 | 1 |

So **~79% of this range is blocked by known categories**, and the two
dominant blockers are the `sq`/`lq` question (69) and `$gp`-relative
addressing (53). Worth noting for prioritisation: solving either would
unblock far more of this range than any amount of per-function work.

One classification refinement: the existing skip category is written as
"`$gp`-relative **stores**", but `$gp`-relative **loads** are equally
unreachable — we compile `-G0`, so no gp-relative addressing is
generated at all. Several functions here are load-only (e.g.
`func_002073A8`, `func_001FFFA0`). Suggest widening that category's
wording to "`$gp`-relative addressing" generally.

Also: the 4-byte functions in this range are **not** the
`0xCDCDCDCD` padding pattern — all 13 are single-instruction
fallthrough fragments with no `jr $31` (e.g. `func_00208D30` is a lone
`sw $4, 0x1C($2)`). Same "not a standalone function" category as
`func_00113AD8`, different signature from the padding one.

## Per-function results

| Function | Status | Notes |
|---|---|---|
| `func_0020BAD8` | **matches** (0/56) | Byte-exact, first attempt. Pointer-walk loop over a record list: running total starts at 8, each iteration adds 8 plus the record's length field at `+4`, advances the pointer `0x10`, and 4-byte-aligns the total (`(n + 3) & ~3`); loop continues while the record's first word is nonzero; returns total + 8. Plain `int`/`& ~3` gave retail's `addiu $6,$0,-4` mask directly (no unsigned form needed here). |
| `func_00203B18` | **matches** (0/88) | Byte-exact after two documented-technique fixes. Relocation/fixup routine: takes a table base and index, loads the object pointer at `+0x48`, rebases the `+0x14` field if nonzero, then rebases each of the `[0x10]`-count pointers starting at `+0x1C`. The count is legitimately re-loaded every iteration (the `int *` stores can alias the byte count — natural aliasing, **not** a `volatile` case, worth distinguishing from the documented volatile signature). First attempt was 11/88 with only 3 words differing; both were textbook: (1) retail accumulates the index into `arg0`'s own register (`addu $4,$4,$5`), fixed by writing `arg0 += idx * 4;` as an in-place accumulate rather than indexing a cast array — the `func_0011AA68` technique; (2) retail puts `i = 0` in the `beqz` delay slot rather than the `p = obj + 0x1C` setup, fixed by ordering `i = 0;` before `p = ...` in the source. |
| `func_00209808`, `func_002098C8`, `func_00209918` | **close, not exact (9/80, 11.3% each)** — kept as documented-close | All three are **byte-for-byte identical to `func_00209858`** in retail — four copies of the same function. Same C body, same residual, same cause. Includes the `func_00209808` retry the directive requested: the prior round's 24/80 was **not** a register-steering problem, it was the folded address constant (see `func_00209858` below). |
| `func_00209858` | **close, not exact (9/80, 11.3%)** — kept as documented-close | Zeroes a record's status field if it equals 2, then sets an error code unless a flag bit is set. **The fix worth propagating:** retail reads the index off the struct base and *then* advances that base by `0xB0` as a separate `addiu`; writing the advance into the declaration (`char *s = D_0013D390 + 0xB0;`) makes this compiler fold both into a single combined address constant, a visibly different instruction — that alone was the difference between 51/80 and 9/80. All 9 remaining bytes are the two established unsteerable register sub-cases (`%hi`-reuse on the `D_0015EFB4` load; `$at` for `D_0015EFB0`'s `%hi` with the literal ordered before it), same as the `func_002094E0`/`func_00209698` family. |
| `func_00209698` | **close, not exact (13/64, 20.3%)** — kept as documented-close C | Direct sibling of `func_002094E0`: same guard (field `0xDC == 2` && status field `0xE4 < 0`), same three writes, only the constants differ (9 / `0xF` here vs 7 / `0xB` there). Landed on *exactly* the same residual and cause as that function — retail stores the two struct fields first, then computes `D_0015EFB0`'s address using `$1`/`$at` for its `%hi`; this compiler materializes that address earlier and stores it before the second struct field. Established two-base store-order/`%hi` question. Not re-tried against source reordering because `func_002094E0`'s entry already records that as ineffective. Kept on that sibling's precedent (identical ratio). |
| `func_00208208` | **reverted** (best 16/48, 33%) | Logic confirmed correct: `return arg1 >= 0x141 \|\| 63.5f <= f2;` — an int bound OR a float threshold, where the float is the **third** float parameter (lands in `$f14`; the 2nd float lands in `$f13`, so the signature is `(int, int, float, float, float)`). Two source-shape fixes did land real progress: writing the comparison constant-first (`63.5f <= f2`, not `f2 >= 63.5f`) reproduced retail's `c.le.s $f0,$f14` operand order exactly, and using `if (...) return 0; return 1;` (rather than a direct boolean return) fixed the branch polarity so `1` is the fall-through default. Reverted at 33% per the threshold rule — see the new open-question note below for what's left. |
| `func_0020C210` | **skipped, likely handwritten** | Writes DMAC MMIO at `0x1000D400` using `$1`/`$at` as the base register (`lui $1` / `ori $1` / `sw` with offsets). A compiler never allocates `$at`; this is the same signal that got `func_0023C9B0` classified as hand-written, and it sits in the same DMAC/hardware cluster as the spimdisasm-marked handwritten functions. Not attempted. |
| `func_00201AE0`, `func_00201948`, `func_001FBC78`, `func_001FE4C0`, `func_001FE580`, `func_001FF660`, `func_001FF950`, `func_001FFD98`, `func_00200190`, `func_002008B0`, `func_00202258`, `func_00202EF8`, `func_00205218`, `func_00208858`, `func_00208D30` | **not standalone functions** | No `jr $31`; single instructions or short runs of `addiu $sp,$sp,N` stack adjustments. Fallthrough fragments. |
| `func_002073A8`, `func_001FFFA0` | **skipped, `$gp`-relative** | Both load/store through `$28`. Unreachable at `-G0`. |

## Proposed new open-question entry

**FP branch-likely: retail uses `bc1fl` where this compiler emits
`bc1f` + a fix-up.** Found on `func_00208208`. For
`if (intcond && floatcond) return 0; return 1;`, retail emits:

```
beqz   $5, END          # int test
 addiu $2, $0, 1        # delay (always) -> default 1
lui/mtc1 the constant
nop                     # mtc1 -> c.le.s hazard nop
c.le.s $f0, $f14
nop
bc1fl  END              # LIKELY: delay only runs when taken
 daddu $2, $0, $0       # -> 0
END: jr $31
```

this compiler emits a plain `bc1f`, whose delay slot always executes, so
it must add a second `li $v0,1` on the fall-through path to undo it. Same
total size (48 bytes), functionally identical, but 3 instructions differ.
Additionally retail has an `mtc1`→`c.le.s` hazard `nop` that this
assembler does not insert (ours does insert the `c.le.s`→`bc1f` one, so
hazard handling is on, just not for that pair).

This is distinct from the documented `movz`/`movn` conditional-move
question (that's branch-vs-conditional-move; this is
branch-vs-branch-likely) and from branch *polarity* (which is
source-steerable — the polarity here was fixed successfully). No source
shape tried produced a likely branch; a direct boolean return was worse
(19/48). Plausibly a `-mbranch-likely`-style codegen setting rather than
anything reachable from source, but that was not tested since the build
flags are fixed.

**Important narrowing of that finding:** branch-likely *is* reachable
from plain C in general — `func_00209858`'s `beql` implementing
`if (*rec == 2) *rec = 0;` matched retail exactly, no coaxing needed.
So the rule is not "this compiler won't emit likely branches". It emits
them for an integer `if` whose entire body fits the delay slot; it did
not emit one for the FP-condition case where the delay slot holds the
*default* value for a path that isn't the `if` body. Whoever picks this
up should treat it as an FP-branch / value-materialization question
rather than a general branch-likely gap.

## Suggested additions to the techniques library

Both of these are existing techniques whose *scope* this round extended,
rather than new ones — worth folding into the existing entries:

1. **Pointer-advance must be its own statement, not part of the
   declaration.** The existing "Splitting a large constant offset into
   pointer-advance + field offset" entry describes the retail shape; add
   that the C has to *separate* the advance (`s = base; ...; s += 0xB0;`)
   because putting it in the initializer (`char *s = base + 0xB0;`) lets
   the compiler fold it into one address constant. This was a 51/80 →
   9/80 swing on `func_00209858` and, retroactively, the real reason the
   earlier `func_00209808` attempt sat at 24/80.
2. **Re-loads forced by genuine aliasing are not the `volatile`
   signature.** The "Redundant reload + unfilled delay slot = volatile"
   entry is worth qualifying: in `func_00203B18` retail re-loads a byte
   count on every loop iteration purely because the loop's `int *`
   stores may alias it. Plain C reproduces that reload exactly with no
   `volatile`. So check for a legitimate aliasing explanation before
   reaching for `volatile`, or you will add a qualifier that changes
   other codegen.
