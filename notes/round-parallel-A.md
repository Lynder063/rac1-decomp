# Parallel round, range A — vram 0x1E9080 to 0x1F9B00 (src/text.c)

## Conclusion up front: this range is essentially exhausted

165 `INCLUDE_ASM` stubs remain in range A. Automated categorisation
against the established skip categories (script logic: `Handwritten
function` marker → size-4 `pref`/`0xCDCDCDCD` padding → missing
`jr $31` → VU0/COP2 mnemonics → any `sq`/`lq` → `$28` use → `movz`/
`movn`) gives:

| Count | Category | Blocked by |
|---|---|---|
| 95 | `sq`/`lq` callee-saved spill | open question (unsolved) |
| 22 | no `jr $31` — fallthrough fragment | not standalone functions |
| 21 | handwritten (spimdisasm-marked) | never had C source |
| 16 | `$gp`-relative | no SDA configured |
| 3 | `movz`/`movn` heuristic | recognise-and-move-on category |
| 2 | VU0/COP2 SIMD | not plain-C-representable |
| **6** | **candidate** | — |

**57% of the range is blocked by the single `sq`/`lq` question**, and
another 36% is not compilable-from-C in principle (fragments, handwritten
asm, `$gp`, SIMD). Only 6 of 165 were even candidates, and 4 of those 6
are already-documented near-misses. So range A is not worth re-scanning
in future rounds: the remaining work here is gated almost entirely on the
`sq`/`lq` open question, and solving that single question would unblock
~95 functions in this range alone — by far the highest-leverage thing
anyone could do for this range, worth far more than further per-function
effort here.

### The sign-extension solution does NOT unlock anything in range A

Checked explicitly, since it was flagged as newly reclaiming a category:
exactly 6 functions in range A contain the `dsll32`/`dsra32` pair
(`func_001F7680`, `func_001F6668`, `func_001F69F0`, `func_001F7070`,
`func_001F7EF8`, `func_001F856C`) — and **all 6 are also `sq`/`lq`
blocked**, and all are large (0x1e8–0x5fc bytes). The sign-extension fix
is real but is not the binding constraint for any function here.

## Candidates and their disposition

| Function | Size | Status |
|---|---|---|
| `func_001F9AF0` | 0x30 | already documented — scratch-register-allocation-choice question |
| `func_001E9730` | 0x38 | already documented — varargs prologue, needs `stdarg.h` this toolchain lacks |
| `func_001F49B0` | 0x50 | already documented — attempted, reverted at ~30% (register-allocation) |
| `func_001EBAF0` | 0x58 | already documented — got to 8/88, held by register-allocation choice |
| `func_001F4B68` | 0x50 | **fresh, not previously documented** — see below |
| `func_001F2A38` | 0xd4 | **fresh** (named as the live candidate) — see below |
