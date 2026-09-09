# Decompilation progress

Tracks per-function status now that real (non-`INCLUDE_ASM`) C has
started. Verify with the SN toolchain build (`docs/TOOLCHAIN.md`):

```
toolchain/sn-prodg-3.01/usr/local/sce/ee/gcc/bin/make.exe -f Makefile.sn
bash tools/build_sn_data.sh
bash rac1.ld.sh
toolchain/sn-prodg-3.01/usr/local/sce/ee/gcc/bin/ee-ld.exe \
    -T build-sn/rac1.ld build-sn/bss_equs.o -o build-sn/rac1.elf
```

Then verify with `tools/check_match.py symbol <name> <size_hex>` against
a freshly linked `build-sn/rac1.elf` — this is position-independent (it
reads retail's address straight out of the `func_XXXXXXXX`/`D_XXXXXXXX`
name and doesn't assume our build's layout matches retail's), so it's
correct even once earlier functions have drifted in size. See the tool's
own docstring for the other two modes (whole-section, retail-only).

## Status

**Known systemic artifact:** `func_00112380` compiles 8 bytes shorter
than retail (see its entry below). Every function *after* it in
`core_text` that references an address defined later in the same file
(a `jal` target, a `lui`/`addiu` address pair, etc.) will show a small,
fully-explained byte diff at exactly those spots until that's fixed —
this is not a new problem each time, it's the same one propagating.
`tools/check_match.py symbol` reports these as mismatches; they've been
individually confirmed (by disassembling the linked ELF and checking the
diff is only in a relocated address, not the instruction opcodes/shape)
before being called "matches" below.

| Function | Segment | Status | Notes |
|---|---|---|---|
| `func_00112380` | core_text | **close, not exact** | Logic fully understood: `return func_00116F68(arg0, 0, 10);`. Retail has an extra redundant `dsll32`/`dsra32 v0,v0,0` sign-extension pair (8 bytes) before the return this compiler doesn't emit for any variant tried. See "Open toolchain questions" below. This is the root cause of the "known systemic artifact" noted above. |
| `func_00112464` | core_text | **not a real function** | 4 bytes of `0xCDCDCDCD` — alignment padding between `func_001123A8` and `func_00112468` (rounds the latter to an 8-byte boundary), not code. Left as `INCLUDE_ASM`; nothing to decompile. |
| `func_00112468` | core_text | **close, not exact** | Logic fully understood — see the comment on it in `src/core_text.c` for the full C. Blocked on the `sq`/`lq` vs `sd`/`ld` callee-register-save question below, kept as `INCLUDE_ASM` since the byte diff isn't a small fixed offset like `func_00112380`, it cascades through the whole function. |
| `func_001138A8` | core_text | **matches** | `return D_0012F86C;` (returns a global pointer's value). Byte-exact. |
| `func_001144D8` | core_text | **matches** | `return D_00152470;` (returns a rodata blob's address — takes an unused `void *arg0` parameter; retail loads a value into `$a0` at every call site but the function body never reads it). Byte-exact. |
| `func_001144F0` | core_text | **matches** (mod. known drift) | `return func_001144D8(D_0012F86C);`. One `jal` target byte differs, fully explained by the `func_00112380` drift above — confirmed by disassembling the linked ELF, not just diffing raw bytes. |
| `func_00113A70` | core_text | **matches** (mod. known drift) | Struct/object initializer: writes 4 function pointers, a self-pointer, several zeroed fields, and 3 caller-supplied values into the struct at `arg0` (offsets given as raw byte offsets via `char *` casts — real field names/struct layout not established yet). Instruction-for-instruction identical to retail (same order, same registers, same offsets) once disassembled from the linked ELF; the raw bytes differ only in 4 relocated addresses, same known-drift cause. |
| `func_001160C8` | core_text | **matches** | `*(int *)((char *)D_0012F86C + 0x58) = arg0;` — setter into a struct reached through global pointer `D_0012F86C`. Byte-exact. |
| `func_001154C0`, `func_001154C8` | core_text | **matches** | Empty functions (`{}`) — auto-filled by splat itself during the initial split, not touched this session, noted here for completeness. |
| `func_00118A34`, `func_00118A50`, `func_00118A60`, and similar | core_text | **not decompile targets** | Marked `/* Handwritten function */` by spimdisasm itself — raw `syscall N` sequences, i.e. these were originally hand-written assembly (PS2 kernel syscall wrappers), not compiler output. Left as `INCLUDE_ASM` permanently; there's no C source to recover. |
| `func_00113AD8` | core_text | **not a standalone function** | Single instruction (`lw $4, 0x0($2)`) with no `jr $31` of its own — a fallthrough continuation, not independently callable. Left as `INCLUDE_ASM`; not clear yet what it's a continuation *of* without more investigation. |
| `func_00116408` | core_text | **matches** (mod. known drift) | `func_00112468(*(int **)(self + 0x54), *(short *)(self + 0xE));` — calls into the still-`INCLUDE_ASM` `func_00112468` (return value discarded). First attempt wrongly passed `self + 0x54` as the pointer arg; retail actually `lw`s a pointer *stored* at that offset first — caught by the byte diff (`lw` vs `addiu` opcodes, not just an operand), fixed. One `jal`-target byte remains, same known drift. |
| `func_001160D8` | core_text | **close, not exact** | Linear congruential PRNG (multiplier `0x41C64E6D`, increment `12345`, 31-bit mask) on the seed field `func_001160C8` sets — same operations/order/count as retail, but this compiler picks `$v1`/`$a0` for the two independent temporaries where retail picks `$a0`/`$a1`. Tried reordering source statements and separate locals; neither changed the allocation. See "Open toolchain questions". |
| `func_00115578` | core_text | **close, not exact** | Hash-bucket linked-list push (`table[idx]` head insert, idx read from the pushed node, table pointer at `arg0+0x4C`). Same register-allocation-choice issue as `func_001160D8` — identical operation sequence, different scratch-register assignment among `$v0`/`$v1`/`$a0`. |
| `func_00113AC8` | core_text | **not a small drift, real gap** | Retail is a bare 3-instruction tail jump (`j func_00114438`, no stack frame, no `$ra` save) — true sibcall elimination for a void function whose last statement is a call. This compiler builds a full call frame instead (20 bytes larger) for the equivalent `func_00114438(arg0, func_00113968);` source. Unlike the other near-misses this isn't a small fixed-offset diff, so left as `INCLUDE_ASM` rather than kept as documented-close C. |
| `func_00116068` | core_text | **not a standalone function** | Two `addiu $sp,$sp,N` instructions sandwiching `0xCDCDCDCD` padding, no `jr $31` — not real, independently-callable code. Left as `INCLUDE_ASM`. |
| `func_00115EE0` | core_text | **not a standalone function** | Single `addiu $sp,$sp,0x70`, no `jr $31` — fallthrough fragment, same category as `func_00113AD8`. |
| `func_00112464`-style padding (`func_001138A4`, `func_00113A6C`, `func_00113B6C`, `func_00113FFC`, `func_0011405C`, `func_00114514`, `func_001154BC`, `func_00116244`, `func_00116D2C`) | core_text | **not real functions** | All 4 bytes of `0xCDCDCDCD` alignment padding, same as `func_00112464`. Left as `INCLUDE_ASM`; nothing to decompile. Not exhaustively enumerated — there are likely more of these throughout the file; recognize the pattern (single `pref 0x0D, -0x3233($14)` instruction, `nonmatching ..., 0x4`) rather than re-deriving it each time. |
| `func_001151B4` | core_text | **not attempted, needs intrinsics** | Hand-optimized `memcmp`-shaped routine using 128-bit quadword loads and COP2 SIMD tricks (`pxor`/`pcpyud`) for a fast path, byte loop fallback. Not a plausible target for plain scalar C to reproduce exactly — would need compiler intrinsics/vector support this toolchain likely doesn't expose the same way. Skipped rather than force a bad attempt. |
| `func_0011A728` | core_text | **matches** | `arr[idx] = val;` where `idx`/`val` come from `arg0+0x10`/`arg0+0x14` and `arr` from `*(int **)(arg1+0x1C)`. Byte-exact. |
| `func_0011A748` | core_text | **matches** | `int v = *(int*)(arg0+0x10); *(int*)(arg1+0x8) = v; return v;`. Byte-exact. |
| `func_0011B090` | core_text | **matches** | Clears a flag bit (`flags &= ~1`) and zeroes a field. Needed `unsigned int`/`0xFFFFFFFEu` rather than plain `int`/`~1` to match — see "Unsigned-mask materialization" below, a solved instance of a technique worth knowing, not an open question. Byte-exact. |
| `func_0011A758` | core_text | **matches** | `return D_00155080[arg0];` — indexes a global `int` array. Byte-exact. |
| `func_0011AA68` | core_text | **matches** | Picks `D_00154F64` or `D_00154F6C` as a base pointer depending on `arg0`'s sign, adds `arg0<<3`, zeroes the `int` there. Needed two source-shape adjustments to match retail's scheduling/register choices: computing `offset = arg0 << 3` as its own statement *before* the `if` (so the compiler schedules it into the branch's delay slot using the original `$a0`, same as retail, instead of copying `arg0` to a temp first) and reassigning into `arg0` itself for the picked base rather than a separate `int base` local, plus `offset += arg0;` (in-place accumulate) rather than a separate final expression, matching retail's choice to accumulate into the same register it makes the final store from. Byte-exact — the last of these three source-shape changes was the difference between a 2-byte residual and an exact match. |
| `func_00119798`, `func_00119840` | core_text | **matches** (mod. known drift) | Both are `{ int local = argN; func_00118E90(<tag>, &local); }` — a small typed value gets stashed on the stack and handed to `func_00118E90` by address along with a type tag (`0x4` / `0x10`). One `jal`-target byte each, same known drift. |
| `func_0011D078` | core_text | **matches** (mod. known drift) | `return func_0011CE70(arg0, arg1, arg2, buf);` with a 16-byte stack scratch buffer (`buf[0x10]`) passed by address as the 4th arg. Getting the frame size (`buf[0x10]`, not `0x20`) and the real 3-argument-plus-passthrough signature (not 2) both took a byte-diff-guided iteration — first attempt used the wrong buffer size (retail's frame was 0x20 total, not 0x30) and wrong arg count (retail puts the buffer pointer in `$a3`, meaning `arg2` is a real third parameter this function forwards, not dead). One `jal`-target byte remains, known drift. |
| `func_00119868` | core_text | **close, not exact** | Sets `D_00154A40` (a global first-class field) to `arg0`, then sets three more fields of the struct it's part of. Logic fully understood (full C given in the source comment) but this compiler schedules the three independent field-stores in a different order than retail (which one lands in the branch's delay slot differs) — confirmed source-order-independent, tried all orderings. Same open-question category as `func_001160D8`/`func_00115578`, manifesting as store reordering instead of register choice. |
| `func_001156C0` | core_text | **matches** | Count-leading-zeros-style bit scan (successive `& mask` tests halving the search range, `0x10`/`8`/`4`/`2`/`1` bit contributions, returns `0x20` for an all-zero input's top-bit-clear edge case). Byte-exact on first attempt — no register/type gotchas this time. |
| `func_00115098` | core_text | **close, not exact** | `int *dst = out ? out : &junk; if (arg2) { if (arg3) { *dst = *arg2; return *arg2 != 0; } return -1; } return 0;`. Fixed two real bugs getting here: needed `unsigned char *` for the byte reads (retail uses `lbu`, an initial `char *` attempt gave signed `lb`), and this exact if-nesting to get the `beqz $a2` polarity/target right (an early-return form emitted the opposite branch sense). Remaining diff: retail's `bnel $a3,0` reuses its own delay slot as the *first instruction of the branch target* (the `arg2` byte load) — a scheduling trick not reproduced. New instance of the same open-question category as `func_00119868`/`func_001160D8`/`func_00115578`, this time on a branch's delay slot rather than a straight-line store or register choice. |
| `func_001144CC` | core_text | **not a standalone function** | `pref 0x0D,...` padding marker immediately followed by a bare `addiu $sp,$sp,0x50` with no `jr $31` — same fallthrough-fragment category as `func_00113AD8`/`func_00115EE0`, not `func_00112464`-style pure padding (it does one real thing, just isn't independently callable). Left as `INCLUDE_ASM`. |
| `func_001138B4`, `func_00116F9C` | core_text | **not real functions** | More `0x4`-byte `0xCDCDCDCD` padding, same pattern as `func_00112464` and friends. |
| `func_001144E8` | core_text | **not a standalone function** | Single `addiu $sp,$sp,0x10`, no `jr $31` — fallthrough fragment, same category as `func_00113AD8`. |
| `func_00115248`, `func_001152F8` | core_text | **not attempted, needs intrinsics** | Hand-optimized `memcpy`/`memmove` (the latter handles overlap via direction-aware copy) using the same tiered 128-bit `lq`/`sq` -> 64-bit `ld`/`sd` -> byte-loop structure as `func_001151B4`. Same "not a plausible plain-C target" reasoning; almost certainly SDK-provided runtime routines, not per-file Insomniac code. Skipped. |
| `func_001138B8` | core_text | **skipped, callee-saved regs** | Uses `$16`/`$17`/`$18`/`$19`/`$20` — hits the `sq`/`lq` open question, not attempted. |
| `func_00116FA0` | core_text | **skipped, callee-saved regs** | Uses `$16` — hits the `sq`/`lq` open question, not attempted. |
| `func_00118EC0` | core_text | **matches** | `D_0012FCF0 = 0;`. Byte-exact. |
| `func_00119100`, `func_00119108` | core_text | **matches** | Both `int f(void) { return -1; }` — trivial constant-return stubs (real logic may live behind a not-yet-decompiled caller; these two themselves genuinely just return -1 unconditionally). Byte-exact. Note: `func_00112468`'s existing comment describes calling `func_00119100(arg1)` with an argument — this disassembly shows it takes none and ignores whatever's in `$a0`; harmless (the described behavior — always returns -1 — still holds), but the parameter in that comment/prototype is not real. |
| `func_001191C0`, `func_0012BB20` | core_text | **matches** | Both `int f(void) { return 1; }` — trivial constant-return stubs, distinct addresses/callers, identical bodies. Byte-exact. |
| `func_0011AE1C` | core_text | **matches** | Empty function (`{}`), a single real `jr $31` (not splat-auto-filled like `func_001154C0`/`func_001154C8` — this one still had a real `.s` file). Byte-exact. |
| everything else in `core_text`/`text` | core_text, text | not started | Still `INCLUDE_ASM` stubs. ~1645 functions total remaining. |

## Open toolchain questions

**Callee-saved GPR spill width (`sq`/`lq` vs `sd`/`ld`).** Retail always
spills callee-saved registers (`$ra`, `$s0`-`$s7`) as plain 64-bit
doublewords (`sd`/`ld`). This toolchain (SN ProDG GCC 2.95.3, SN BUILD
v1.36) spills `$ra` the same way but spills `$s0`-`$s7` as full 128-bit
quadwords (`sq`/`lq`) — first showed up in `func_00112468`, and will
affect essentially every non-leaf function that needs a callee-saved
register, i.e. most of the codebase. No `-m` flag found changes it
(tried: `-mno-abicalls`, `-mhalf-pic`, `-fomit-frame-pointer`,
`-msoft-float`, `-mfp32`, `-mlong32`, `-mabi=eabi -mgp64`, `-mcpu=5900`,
`-mlong64`, `-membedded-data`/`-mno-embedded-data`; `-mgp32` ICEs).

Checked all 4 SN ProDG sub-builds AngheloAlf mirrors, to see if a
different one matches retail natively:

| Mirror | Compiler | `$ra` | `$s0`-`$s7` |
|---|---|---|---|
| `SN-Systems-ProDG_for_PS2_3.01` (**in use**) | GCC 2.95.3 SN BUILD v1.36 | `sd`/`ld` (matches retail) | `sq`/`lq` |
| `SN-Systems-ProDG_for_PS2_2.0` | GCC 2.95.2 SN BUILD v2.73a | `sq`/`lq` | `sq`/`lq` |
| `sce_ps2_sdk_24`, `ee-gcc295.exe` | GCC 2.95.2 SN BUILD v2.74 | `sq`/`lq` | `sq`/`lq` |
| `sce_ps2_sdk_24`, `ee-gcc2953.exe` | GCC 2.95.3 SN BUILD v1.14 | `sq`/`lq` | `sq`/`lq` |
| retail (target) | ? | `sd`/`ld` | `sd`/`ld` |

v1.36 is already the closest of the four (right on `$ra`), so switching
sub-builds wouldn't help — this needs either a real flag not yet found,
or Insomniac's actual build differs from all four of these in some other
way (a patch, a different `-mcpu`/tuning value, something in how `sq`-
eligible register classing gets decided that isn't exposed as a simple
flag).

**Researched (no fix found, but useful context):** searched public PS2
decomp/homebrew sources for a known solution. None found. Findings:

- The visible PS2 *matching*-decomp scene (Dark Cloud's `DCDecomp`,
  Resident Evil Code: Veronica X's `recvx-decomp`) targets **Metrowerks
  CodeWarrior**, not SN ProDG GCC — "most PS2 binaries are compiled with
  Sony's proprietary GCC fork or with Metrowerks CodeWarrior" per Jacob
  Harris's PS2 decomp devlog. That plausibly explains the silence on this
  exact problem: public matching-decomp tooling effort has concentrated
  on MWCC, not GCC 2.95.
- `AngheloAlf` (this toolchain mirror's author) runs an active PS2 GCC
  decomp project, `parappa2` (github.com/AngheloAlf/parappa2), but its
  README lists a modern `gcc-mipsel-linux-gnu`/`binutils-mips-linux-gnu`
  cross-toolchain as its build dependency, not SN ProDG — unclear if it
  hits this same issue or sidesteps it (different game/build era, or
  never needed to match this idiom). No sq/lq documentation found in that
  repo. It links two Discord servers (a general PS1/PS2 decomp community,
  and a PaRappa modding community) — likely where any real answer to this
  lives, since it's exactly the kind of narrow tribal knowledge that
  doesn't get blogged. Not asked yet (outside what an agent can do).
- One real technical lead, unconfirmed: a 2013 GCC mailing-list thread
  (Jeff Law, gcc.gnu.org/legacy-ml/gcc-patches/2013-01/msg00333.html)
  shows mainline GCC's R5900 support was, as late as 2013, still getting
  patches to *enable* TImode (128-bit) support for GPRs under the o32
  ABI — implying whether GPRs are TImode-capable (spillable as
  quadwords) is normally a **GCC build-time configuration choice**, not
  a runtime flag. If that held for GCC 2.95's MIPS backend too, it would
  explain why nothing in `-m*` flag space changed the behavior across
  all 4 sub-builds tested: it may need a *differently-built* `cc1`, not
  a different flag to an existing one. Not verified against 2.95's
  actual source/config — a hypothesis, not a confirmed answer.

Next step if anyone wants to pursue this further: ask in the PS1/PS2
decomp Discord linked from `parappa2`'s README, rather than continuing
to search indexed sources.

**Scratch-register allocation choice for independent temporaries.**
Seen in `func_001160D8` and `func_00115578`: when a function has 2+
short-lived temporaries with no interdependency (e.g. a computed index
and a loaded pointer), this compiler and retail sometimes pick a
different assignment among `$v0`/`$v1`/`$a0`/`$a1` for them — same
operations, same order, same instruction count, just different register
numbers. Reordering the source statements and splitting shared
expressions into separate locals did not change the outcome in either
case (tried both). Likely a plain compiler-version register-allocator
heuristic difference rather than something controllable from C source;
not investigated as deeply as the other two questions above (no
cross-sub-build check done for this one specifically) since the diffs
it produces are small and clearly benign (verified logic-identical each
time) rather than blocking anything.

## Solved techniques worth knowing (not open questions)

**Unsigned-mask materialization.** For a bit-clear like `flags &= ~1`,
this compiler compiles `~1` (an `int`, value `-2`) to a single `li`/
`addiu` instruction — but if retail materializes the same mask via a
`lui`/`ori` pair instead, the original source almost certainly used an
*unsigned* mask (`flags &= 0xFFFFFFFEu`, or equivalently `~1u`), which
this compiler can't represent as a compact sign-extended immediate and
falls back to full `lui`/`ori` construction for, matching retail. Seen
in `func_0011B090`. Worth checking for on any near-match involving a
bitmask constant before writing it off as unexplained.

**Delay-slot/schedule steering via source shape.** Two small patterns
that changed retail-matching scheduling, seen fixing `func_0011AA68`:
(1) if retail's branch delay slot holds a computation using a function's
*original* argument register unmodified, make sure the source computes
that value from the parameter directly and as its own statement *before*
any conditional that also reads the parameter — introducing an
intermediate copy (even one that looks harmless, like `int v1 = arg0;`)
can push the compiler toward copying the argument to a scratch register
first instead of scheduling the real computation into the delay slot.
(2) if retail accumulates a final result back into the same register it
just used as an operand (e.g. `addu $3,$3,$4` — read and write `$3`),
write the equivalent C as an in-place update (`x += y;`) rather than
introducing a new variable for the sum (`z = x + y;`) — this measurably
changed which register the compiler picked in that case.

## Method

1. Read the `.s` disassembly in `asm/nonmatchings/<segment>/func_XXXXXXXX.s`
   (registers are numeric post-`tools/sn_regnames.py` — `$29`=sp, `$31`=ra,
   `$4`-`$7`=a0-a3, `$2`/`$3`=v0/v1, `$16`-`$23`=s0-s7, `$8`-`$15`=t0-t7).
2. Work out the C shape by hand from the MIPS calling convention (args in
   `$4`-`$7`, return in `$2`).
3. Replace the function's `INCLUDE_ASM(...)` line in the relevant
   `src/*.c` with real C. Forward-declare any not-yet-decompiled callee
   (`extern int func_XXXXXXXX(...);`) — its own `INCLUDE_ASM` stub
   elsewhere in the file still provides the actual symbol at link time.
4. Rebuild (`Makefile.sn`) and diff the function's bytes against the
   retail baserom at its exact address (`tools/check_match.py func
   <vram_hex> <size_hex>`, both straight from the `.s` file's own
   `nonmatching <label>, <size>` header). A match means done; a
   near-match is worth recording (see the table above) rather than
   endlessly guessing flags — codegen idioms can be genuinely
   compiler-sub-version-specific, and this project may not have the exact
   sub-version Insomniac used.
   **Once any function's compiled size differs from retail by even one
   instruction, every function after it in that object shifts — a flat
   whole-section comparison past that point is meaningless, not evidence
   of a regression.** Only trust `tools/check_match.py section` before
   any function in that object has drifted; after that, check functions
   individually by address.
5. Once matching, the readability pass (real names/types/structure) can
   proceed on that function using the still-matching build as a
   regression check, per the plan in `README.md`.
