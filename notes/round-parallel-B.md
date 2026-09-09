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
