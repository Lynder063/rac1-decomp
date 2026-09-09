# Range C (0x20CC00-0x21FFFF) — harvesting the newly-unblocked sq/lq pool

## Range survey (205 remaining stubs, mechanically classified)

| Count | Category |
|---|---|
| 84 | **`sq` only — newly unblocked, the real pool** |
| 30 | fragments (no `jr $31`) |
| 18 | clean candidates (no blocker at all) |
| 15 | `gp`+`sq` |
| 13 | `movnz`+`sq` |
| 11 | `gp`+`movnz`+`sq` |
| 6 | `movnz` only |
| ~28 | handwritten / VU / quad / mixed |

So ~102 of 205 (50%) are viable now, against the old assumption that
`sq` meant blocked. Confirms the misclassification warning in
DECOMP_PROGRESS.md for this range too.

## Matched (byte-exact)

| Function | Size | C |
|---|---|---|
| `func_00216270` | 0x20 | `func_0012F068(func_002177F0);` — passes a function *address* as the arg (`lui`/`addiu` of `%hi`/`%lo`) |
| `func_00218908` | 0x20 | `func_00217F68(D_0013CA40);` |
| `func_0021DAE0` | 0x20 | `func_00226D50(1); return 0;` — the `daddu $2,$0,$0` after the `lq` is the `return 0` |

All three are `$ra`-only-saving wrappers that spill with `sq $31`/`lq $31` —
exactly the shape v1.36 could never emit and v1.14 does. They are the
first confirmation that the per-segment build actually opens this pool
in practice, not just in principle.

Note these are "last statement is a bare call" shapes, which the old
skip list warned about for tail-call risk. That risk did not materialise:
retail keeps a real frame here, and v1.14 does too, so they compile fine.
The tail-call skip category should be read as "retail tail-calls but we
don't", not "the last statement is a call".

## Finding: two known false-positives were causing text-wide address drift

`func_001F9B90`/`func_001F9B98` (the `max.s`/`min.s` inline-asm wrappers)
were already documented as size-mismatched non-matches (+4 bytes each,
caught by the new size check). They were also silently shifting every
later function in `text`: all three of my functions initially showed
1-2 byte diffs that were purely `jal`/`%lo` address fields pointing 16
bytes late.

Reverting both to `INCLUDE_ASM` cleared the drift completely and all
three of mine went to 0/32. Whole-project sweep after: **143 -> 147
exact**, size mismatches **3 -> 1**. So the revert fixed more than the
two functions themselves.

This is the `text`-segment analogue of the old `core_text` "systemic
artifact", and the lesson generalises: **a size-mismatched function is
not a local problem — it silently corrupts verification for everything
after it in the same object.** Worth treating any surviving size
mismatch as high priority rather than as a documented curiosity. The one
remaining (`func_00115098`, -4, in `core_text`) is outside my range.
