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

## Candidate attempts (both reverted, logic confirmed)

### `func_001F4B68` (0x50) — reverted at 24/80 (30%)

Bounded append into two parallel arrays. Logic confirmed correct; our
build is instruction-for-instruction identical in structure and lands at
exactly the right size, only register *names* differ.

```c
extern int D_0015F568;
extern int D_0018DE40[];
extern int D_0018DF40[];

void func_001F4B68(int arg0, int arg1) {
    int count = D_0015F568;
    if (count < 0x40) {
        D_0018DE40[count] = arg0;
        D_0018DF40[count] = arg1;
        D_0015F568 = count + 1;
    }
}
```

Held by two documented-unsteerable things at once:
- **`%hi` register reuse**: retail does `lui $6,%hi(D_0015F568)` /
  `lw $6,%lo(...)($6)` (same register); this compiler always splits it.
- Because retail does *not* keep that base live, it re-materialises the
  address into `$at` (`lui $1`) for the final store, whereas we keep the
  register live and reuse it — so retail is one `lui` "longer" in a way
  no source form reproduces.
- Arg spill registers are exactly swapped (`arg0`→`$7`/`arg1`→`$8` in
  retail vs `$t0`/`$a3` here).

**Tried and did not help:** declaring `D_0015F568` `volatile` (the
documented redundant-reload signature — retail's re-materialised address
looked like a match for it). No codegen change at all; the reload here is
of the *address*, not the value, so the volatile technique doesn't apply.
Worth knowing: address re-derivation and value re-loading are different
signatures, and only the latter indicates `volatile`.

### `func_001F2A38` (0xd4) — reverted at 149/212 (70%)

Three-level bounds-checked nested table walk (one level per coordinate,
consumed `arg2`, `arg1`, `arg0` in that order). **Compiles to exactly the
right size (212 bytes) with identical structure**, so the logic below is
confirmed correct — it is held purely by register allocation.

```c
extern unsigned char *D_0015F720;

void *func_001F2A38(int arg0, int arg1, int arg2) {
    unsigned char *base = D_0015F720;
    unsigned char *data = base + *(int *)base;
    unsigned short *p2 = (unsigned short *)(base + 4);
    unsigned short *p1;
    unsigned short *p0;
    unsigned short t;

    arg2 -= p2[0];
    if (arg2 < 0) return 0;
    if (arg2 >= p2[1]) return 0;
    t = p2[2 + arg2];
    if (t == 0) return 0;
    p1 = (unsigned short *)(base + t * 4);

    arg1 -= p1[0];
    if (arg1 < 0) return 0;
    if (arg1 >= p1[1]) return 0;
    t = p1[2 + arg1];
    if (t == 0) return 0;
    p0 = (unsigned short *)(base + t * 4);

    arg0 -= p0[0];
    if (arg0 < 0) return 0;
    if (arg0 >= p0[1]) return 0;
    t = p0[2 + arg0];
    if (t == 0xFFFF) return 0;
    return data + (t << 7);
}
```

Each level's node layout is `{u16 lo; u16 count; u16 child[]}` reached at
`base + index*4`; the leaf value is rejected on `0` at levels 1-2 and on
`0xFFFF` at level 3, and the hit returns `data + (leaf << 7)`.

Retail keeps the three arguments untouched in `$4`-`$6` and uses
`$7`-`$9` as temps. This compiler picks `$a0` for the level pointer,
which clobbers `arg0` and forces extra `move`s to save the arguments —
that difference then propagates through nearly every instruction.

**Steering attempted:** a single reused `p` variable scored 183/212
(86%); splitting it into three separate per-level locals (`p2`/`p1`/`p0`)
improved it to 149/212 (70%) and did move `base` into `$t0` matching
retail, but the level pointer stayed in `$a0`. Recorded because the
improvement shows per-level locals *are* a real allocation lever worth
trying elsewhere, even though it wasn't enough here. Still also carries
the `%hi`-reuse sub-case in its opening two instructions.
