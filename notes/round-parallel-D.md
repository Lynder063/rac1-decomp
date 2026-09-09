# Parallel round, agent D (range 0x220000-0x23E730 in src/text.c)

Notes for the coordinator to merge into `docs/DECOMP_PROGRESS.md`.

## HEADLINE: the `sq`/`lq` open question is mischaracterised, and it's segment-correlated

The current entry says: *"Retail always spills callee-saved registers
(`$ra`, `$s0`-`$s7`) as plain 64-bit doublewords (`sd`/`ld`). This
toolchain spills `$ra` the same way but spills `$s0`-`$s7` as full
128-bit quadwords."*

**"Retail always spills as `sd`/`ld`" is false.** Counted across every
`.s` file (these files *are* retail's own disassembly):

| Segment | retail `$16` (s0) | retail `$31` (ra) |
|---|---|---|
| `core_text` | **sd 238** / sq 15 | **sd 285** / sq 50 |
| `text` | sd 23 / **sq 427** | sd 6 / **sq 520** |

Retail's spill width is **segment-correlated**: `core_text` is ~94%
`sd`, `text` is ~95-99% `sq`. The existing entry was derived entirely
from `core_text` (`func_00112468`) and then generalised to the whole
binary, which is where it went wrong.

Our compiler, by contrast, is *fixed*: `sd` for `$ra`, `sq` for
`$s0`-`$s7` (verified on isolated probe files, not inferred). So:

- In **`core_text`**: we agree with retail on `$ra` (both `sd`) and
  disagree on s-registers (ours `sq`, retail `sd`) — which is exactly
  the originally-documented symptom.
- In **`text`**: it's the **exact inverse**. We agree on s-registers
  (both `sq`) and disagree on `$ra` (ours `sd`, retail `sq`).

### Practical consequence: ~526 `text` functions are 2 bytes off, not blocked

In `text`, a function that saves `$ra` differs from retail by **exactly
two bytes** — one in the `sq`→`sd` store opcode, one in the matching
`lq`→`ld` restore. Nothing else. 526 functions in `text` save `$ra`.

My range's stub classifier initially binned **209 of 298** stubs as
"`sq`/`lq`-blocked" and skipped them. That classification is wrong:
they are near-matches held by one systematic 2-byte artifact, not
functions we're unable to express in C. This likely applies to the
other agents' `text` ranges too.

Demonstrated on two of them (both otherwise byte-perfect):

- `func_00233FF8` — `void func_00233FF8(void) { func_0011AE20(0); }`.
  2/28, both bytes the `sq`/`sd` + `lq`/`ld` pair.
- `func_0023DFC0` — `void func_0023DFC0(int arg0) { func_0023D1F0(arg0 + 0x48); }`.
  3/28: the same 2 bytes, plus 1 byte of the already-known `jal`-target
  drift.

### Not fixable by flags (swept, this direction specifically)

Prior rounds swept flags for the *s-register* direction. I swept for the
`$ra` direction, which had not been tried: `-mips3`, `-mips4`, `-mgp64`,
`-mlong64`, `-mabi=eabi`, `-O1`, `-O3`, `-Os`,
`-fno-omit-frame-pointer`. **Every one still emits `sd $ra`**
(`-mno-explicit-type-size` doesn't exist). So it's not reachable from
the command line here, consistent with the other direction's dead end.

### The real lead this opens

Retail's two segments were evidently built with **different compiler
configurations** — that's the most economical explanation for a clean
per-segment split in a low-level codegen choice like spill width.
Matching both segments may therefore require *two* compiler
configurations (or two compiler builds), not one. That reframes the
open question from "find the flag" to "the two segments aren't the same
build", which is a much more tractable thing to chase — and it fits the
existing finding that no single flag setting satisfies either segment
fully.

**Suggested policy question for the coordinator** (deliberately not
decided unilaterally): since essentially every `$ra`-saving function in
`text` will sit at exactly 2 bytes, mass-converting them to
documented-close C would inflate the "matched" count in a way that
could read as misleading. I kept only the two above as evidence rather
than converting in bulk.

## Matched (byte-exact)

| Function | Status | Notes |
|---|---|---|
| `func_0022F090` | **matches** | `void func_0022F090(int arg0, long arg1) { int *p = (int *)(int)arg1; if (p != 0) *p = arg0; }`. Byte-exact (0/24). **First confirmation of the newly-solved sign-extension technique on a previously-blocked entry** — its old note claimed the question had been extensively tried here. |
| `func_0022F0F0` | **matches** | Nested version: `if (p != 0) { *p = arg0; if (arg0 == 0) { three zero-stores } }`. Byte-exact (0/44). Needed sign-extension *plus* the store-order rotation rule (retail emits `+0x4,+0x18,+0x1C`; source must be written `+0x18,+0x1C,+0x4`). |
| `func_0022F0A8` | **matches** | Third sibling of the pair above. Byte-exact (0/68). Sign-extension + store-order rotation again, plus a **branch-polarity** fix: written as `if (arg0 == 0) {zeros} else if (p[4]==1) {...}` it compiled `bnez` where retail has `beqz` (41/68). Retail's *fall-through* is the `arg0 != 0` path, so inverting the source to `if (arg0 != 0) { if (p[4]==1) ... } else { zeros }` took it straight to exact. Practical refinement to the existing branch-polarity technique: pick which arm is the `then` by asking which path retail *falls through to*, rather than which reads more naturally. Also confirms the `lbu` → `unsigned char *` rule. |
| `func_0023CFF0` | **matches** | `*arg0 = ((long)arg1 << 32) \| ((unsigned long)(unsigned int)arg2 << 28) \| (unsigned int)arg3;` — packs three ints into one 64-bit `sd`. Byte-exact (0/36). **This settles the DISPUTED 64-bit-shift question: the `<< 28` compiled without complaint.** The claim that *any* 64-bit shift by a non-multiple-of-32 constant is a hard `cc1` error is therefore wrong, and this is the very function that claim was blocking. Round 16's `unsupported wide integer operation` error was real but must have come from a narrower trigger (most likely `long long` rather than `long`, or a different expression shape) — the entry should be rewritten, not just un-disputed. |

### Refinement to the `volatile` technique

`func_0022F0F0`'s old entry flagged an unfilled `beqz` delay slot as
something needing explanation. It fell straight out of plain,
non-`volatile` C. So an unfilled delay slot **on its own is not a
`volatile` signal** — that signature needs the *redundant reload* half
too. Worth narrowing in the technique entry, since the current wording
invites over-applying `volatile`.

## Close, kept as documented-close

| Function | Status | Notes |
|---|---|---|
| `func_00233FF8` | **close (2/28)** | Held solely by the segment-wide `$ra` `sq`/`sd` artifact above. |
| `func_0023DFC0` | **close (3/28)** | Same, plus 1 byte of known `jal` drift. |

## Not real functions (catalogued, left as INCLUDE_ASM)

All verified as having **no `jr $31`** — they are runs of stack-teardown
epilogue tails (`addiu $29,$29,N`) that spimdisasm split into pseudo-
functions, same category as the existing `func_00113AD8` entry:

`func_0022C9A0`, `func_0022F120`, `func_0022F498`, `func_00234E78`,
`func_0023A5D8`, `func_0023C080`, `func_0023DF98`, `func_0023E0D0`
(4 bytes each); `func_00235008`, `func_0023B008` (12); `func_002282B8`,
`func_0022EF50`, `func_00239610` (20); `func_00239180`, `func_0023B1E8`
(36, five teardowns each).

## Range composition (0x220000-0x23E730, 298 remaining stubs)

Useful for planning: 209 `sq`/`lq` (**see headline — these are
near-matches, not blocked**), 26 handwritten, 21 genuinely-viable
untouched, 20 fragments, 15 `$gp`-relative, 5 `movz`/`movn`.
