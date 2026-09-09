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
| `func_00119868` | core_text | **matches** (was previously close-not-exact) | Sets `D_00154A40` to `arg0`, then fields `0x4`/`0x8`/`0xC` of the struct it heads to `0`/`self+0x10`/`self+0x10`, returns `self`. **The earlier entry for this function was wrong** — it claimed the store order was "confirmed source-order-independent, tried all orderings" and filed it under the scratch-register/scheduling open question. It is fully source-order-dependent: the store-order rotation rule gives it directly (retail emits `0x8, 0x4, 0xC`, so source is `0x4, 0xC, 0x8`), byte-exact. The old note said "all four" orderings were tried, which is already fewer than the six permutations of three stores — the rotation-predicted one was evidently among the untried. Cautionary example: "tried everything" claims in this table are worth re-testing against a later technique rather than trusted. |
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
| `func_00114518`, `func_001154D0`, `func_001155A8`, `func_00115808` | core_text | **skipped, callee-saved regs** | Use `$16`/`$17` (and more) — hit the `sq`/`lq` open question, not attempted. |
| `func_0011405C` | core_text | **not a real function** | 4 bytes of `0xCDCDCDCD`, same padding pattern as `func_00112464` and friends. |
| `func_00113AE0` | core_text | **skipped, callee-saved regs** | Uses `$16`/`$17` — hits the `sq`/`lq` open question, not attempted. |
| `func_00115748` | core_text | **matches** | Bit-scan/shift helper on `*arg0`: a 2-bit fast path for the low 3 bits nonzero case (shift by 1 or 2, or return 0 untouched if bit 0 is set), falling back to the same binary-search bit-scan shape as `func_001156C0` for the low-3-bits-zero case, storing the shifted value back through `arg0` and returning the shift count (or `0x20` for input `0`). Took two branch-polarity fixes (writing `if (cond) {A} else {B}` instead of `if (!cond) {B} return; A`, in two different spots — see "Branch polarity via if/else shape" below) plus merging two textually-duplicate `*arg0 = v; return count;` tail statements into one shared one (the duplication cost 8 extra bytes vs. retail, which reuses a single tail via a jump — GCC only found that reuse once the C had one textual copy to reuse, not two identical ones). Byte-exact. |
| `func_001F9B88` | text | **matches** | `float func(float arg0) { return __builtin_fabsf(arg0); }` — folds to `abs.s`. Byte-exact. First function decompiled in `text.c` (everything above was in `core_text`). |
| `func_00208238`, `func_00208240` | text | **matches** | Both `int func(void) { return 1; }` — distinct addresses/callers, identical trivial bodies. Byte-exact. |
| `func_0021B278`, `func_0021B280`, `func_0021CD98`, `func_0021E1F8`, `func_0021EF30`, `func_00222840` | text | **matches** | All `int func(void) { return 0; }` — distinct addresses/callers, identical trivial bodies. Byte-exact. |
| `func_00209040`, `func_00225DF0`, `func_00225DF8`, `func_00226D48`, `func_00238D88` | text | **matches** | Empty functions (`{}`), splat auto-filled during the initial split like `func_001154C0`/`func_001154C8` in `core_text` — not touched this round, noted for completeness. |
| `func_001F9B90`, `func_001F9B98` | text | **close, not exact** | `max.s`/`min.s` single-instruction wrappers — this compiler doesn't fold `a > b ? a : b`/`a < b ? a : b` into the hardware instruction (falls back to `c.lt.s`/branch/`mov.s`), so written as inline asm for just the one instruction instead. Gets the right 2 instructions (the op, then `jr $31`) but in the opposite order from retail, which schedules the op into the `jr`'s delay slot — new instance of the delay-slot-scheduling open question. Tried hand-embedding `jr $31` before the op in the same asm block to force retail's ordering; GCC's flow analysis doesn't understand hand-written control flow inside inline asm and silently dropped the op entirely instead of emitting it (verified via byte diff: got `jr`/`nop`, not `jr`/op) — reverted, not safe to rely on inline-asm-embedded control flow here. See the comment on `func_001F9B90` in `src/text.c` for the full writeup. |
| `func_001E9080`, `func_001E94A0` | text | **not standalone functions** | Single instruction each (`nop`, `addiu $sp,$sp,0x20`), no `jr $31` — fallthrough fragments, same category as `func_00113AD8` in `core_text`. |
| `func_001E94C8` | text | **not investigated, unusual shape** | Four separate `addiu $sp,$sp,N` / `nop` pairs in a row, no `jr $31` anywhere — doesn't fit the usual fallthrough-fragment or padding patterns seen so far. Left as `INCLUDE_ASM`; flagging as worth a closer look rather than silently skipping, but not investigated this round. |
| `func_001E9088` | text | **not attempted, too complex** | ~0x414 bytes: floats, integer div/mod, a jump table (`jtbl_001E7940`), and 7 callee-saved registers (`$16`-`$22`). Hits the `sq`/`lq` open question on its own merits even before considering the complexity; not a good target until that's resolved regardless. |
| `func_001E94A8`, `func_001F65A8` | text | **skipped, gp-relative store** | Both end with `sw $reg, <negative offset>($28)` — a small-data-area (`$gp`-relative) store. This project builds with `-G0` (no SDA optimization) so this compiler never emits `$gp`-relative addressing; reproducing these would need knowing retail's actual `$gp` base value and enabling SDA, neither set up yet. Not attempted. |
| `func_001F9BC0` | text | **not attempted, no plain-C representation** | `sq $0, 0x0($4)` — zeroes a 128-bit quadword at a pointer. No 128-bit integer type is available to express this as a single plain C store (unlike the `sq`/`lq` *spill* issue elsewhere, this is source code actually needing a quadword op, not a compiler codegen choice) — would need a vector/COP2 intrinsic this toolchain may not expose the same way retail's source did. Not attempted. |
| `func_001E97C8`, `func_001E97E8` | text | **matches** | Both `int func(void) { return 0; }` — trivial constant-return stubs, distinct addresses. Byte-exact. |
| `func_001E9E70` | text | **close, not exact** (new sq/lq evidence) | 5 sequential calls, no branches: `func_0022C7E0(); func_0022C188(); func_0022C870(); func_00234C98(0x47, 0x5360B); func_00234C98(0x4E, 0x1000000 \| (D_0015EF88 >> 13));`. Logic/instructions confirmed identical via objdump. Only saves `$ra` (no `$s0`-`$s7` at all) yet retail *still* spills it as `sq` here — the first case seen where retail uses `sq` for a lone `$ra` save with no s-regs involved; every other function so far had retail use `sd` for `$ra` alone. This compiler always uses `sd` for `$ra`, no exceptions found. Means the `sq`/`lq` choice isn't cleanly "s-regs vs ra" as the open question was previously framed — something more granular (per-function, maybe per-translation-unit) decides it. Open question below updated with this finding. |
| `func_001EC780` | text | **skipped, sq/lq + indirect call** | Same shape as `func_001EC270`/`func_001EC108`-adjacent dispatch-table pattern: `jalr` through a function pointer loaded from a per-type table, wrapped in the same lone-`$ra`-as-`sq` pattern as `func_001E9E70`. Not attempted. |
| `func_001ECC10` | text | **not attempted, no plain-C representation** | Two conditional 16-byte block copies via bare `lq`/`sq` — same category as `func_001F9BC0`. |
| `func_001EC030`, `func_001EC108`, `func_001EC208` | text | **not standalone functions** | Single `addiu $sp,$sp,N` (or dead-value computation + a store for `func_001EC108`), no `jr $31` — fallthrough fragments, same category as `func_00113AD8` in `core_text`. |
| `func_001F0F00` | text | **not a decompile target** | Marked "Handwritten function" by spimdisasm (uses `addi`, not `addiu`) — same category as the syscall wrappers in `core_text`. No C source ever existed for it. |
| `func_001F0F30` | text | **matches** | Fills 20 consecutive `int`s (offsets `0x00`-`0x4C` of `D_0018A3B0`) with `1`, iterating backwards. First attempt had the right logic but wrong instruction *scheduling* (the loop-setup instructions landed in a different order than retail — variable-initialization order in the source, not a branch or delay-slot issue); reordering the C statements to match retail's init sequence (base pointer, then the fill value, then the loop bound, then the offset add) fixed it. Byte-exact. |
| `func_001EBAF0` | text | **close, not exact** | `if (arg0 >= 0) { p = D_0013E650 + arg0*0x70; if (*(short*)(p+0x7E) == arg1 + D_0015F694 && (unsigned char)(*(unsigned char*)(p+0x74) - 1) < 2) return 1; } return 0;`. Needed the shared-tail-merging technique (single `&&`-combined condition instead of two separate early-return guard clauses) to get from 78% mismatch down to 8/88 bytes — the remaining diff is the scratch-register-allocation-choice issue (`$v1` vs `$a2` for a delay-slot copy of `arg1`), confirmed by trying the delay-slot-precompute technique too (no change). Kept as `INCLUDE_ASM`. |
| `func_001EDFD8` | text | **not a standalone function** | `daddu $2,$5,$0` then an `addiu $sp,$sp,0x20` epilogue-shaped instruction *mid-body*, then more stores, no `jr $31` anywhere — fallthrough fragment, same category as `func_00113AD8`/`func_001E9080`/`func_001E94A0`. |
| `func_001EDE08`, `func_001EDCE8`, `func_001EB300` | text | **skipped, `$gp`-relative access** | All use `($28)`-relative loads/stores — same known-skip category as `func_001E94A8`/`func_001F65A8` (this build uses `-G0`, never emits `$gp`-relative addressing). Not attempted. |
| `func_001EFD70` | text | **not a decompile target** | Marked "Handwritten function" by spimdisasm (raw pointer-chasing table walk with hand-scheduled instructions) — same category as the syscall wrappers and `func_001F0F00`. No C source ever existed for it. |
| `func_001E9730` | text | **not attempted, needs stdarg** | Spills `$a1`-`$t3` and float args `$f12`/`$f14`/`$f16`/`$f18` to the stack in the exact shape of a MIPS varargs prologue (`void f(int arg0, ...)` with `va_start`) — but this bare toolchain has no `stdarg.h`, and `__builtin_va_list`/`__builtin_va_start` aren't recognized without it (parse error, not just a missing declaration). Would need to hand-write a compatible `va_list`/builtin shim, or find the header some other way, before this specific function is attemptable. Worth flagging as a real, recognizable category (variadic function prologues) rather than a one-off. |
| `func_001F9BA0` | text | **not attempted, needs intrinsics** | `pminw` (packed integer min, COP2). Not plain-C-representable. |
| `func_001F9BB0` | text | **not attempted, known open question** | `max.s`/`min.s` clamp — same delay-slot-scheduling issue already documented and reverted for `func_001F9B90`/`func_001F9B98`; not re-attempted. |
| `func_001F9BC8`, `func_001F9BD8`, `func_001F9BF0`, `func_001F9C08` | text | **not attempted, needs intrinsics** | VU0 vector math (`vmr32`/`vadd.xyz`/`vsub.xyz`/lerp via `vmulx.xyz`+`vadd.xyz`) operating on `$vf` registers through `lqc2`/`sqc2` — vec3 add/sub/lerp helpers, same "not plain-C-representable" category as `func_001F9BC8`'s neighbors and `func_001ECC10`/`func_001F9BC0`. |
| `func_001F49B0` | text | **close, not exact** | `int count = D_0015F564; if (count < 0x40) { D_0018DD40[count] = arg1; D_0018DC40[count] = arg0; D_0015F564 = count + 1; }` — logic and size (0x50 both) match exactly, but ~30% of bytes differ, all from this compiler choosing different scratch registers for the arg0/arg1 pass-through than retail. Tried introducing explicit locals for arg0/arg1 before the branch (matching a technique that worked elsewhere); no change. Unlike the smaller, single-digit-byte instances of this same open question, the diff here is large enough (24/80 bytes) to cascade through most of the function, so — following the `func_00112468` precedent — kept as `INCLUDE_ASM` rather than committed as "close" C. |
| `func_001F7648` | text | **matches** | Struct/record initializer: 8 `short` fields set from register+stack arguments (`void *arg0, int a1..a8`, the 8th arg passed on the stack), plus 4 more zeroed. Byte-exact, but only after empirically finding the right *source statement order* for the four independent zero-stores — writing them in the same order as retail's final instruction sequence did **not** reproduce that sequence (the compiler reordered them anyway); the order that actually worked (`s[6]=0; s[7]=0; s[10]=0; s[11]=0;`, i.e. ascending-then-two-more, not retail's own `0x16,0xC,0xE,delay=0x14` sequence) was found by trying a few permutations and checking the byte diff each time. Refines the "Loop-setup statement order" technique below — for a block of several independent identical-shape stores, matching retail's own instruction order in source is a reasonable first guess but not guaranteed; when it fails, try other permutations rather than assuming the technique doesn't apply. |
| `func_002071D0`, `func_002071E0`, `func_002071F0`, `func_002073B8`, `func_002073C8`, `func_002073D8`, `func_002073E8`, `func_002073F8` | text | **matches** | All `int func(void) { return D_XXXXXXXX_byte != 0; }` — boolean-from-byte-flag, same shape (`lbu` a byte global, `sltu $2,$0,$2` to normalize to 0/1), distinct flag addresses. Byte-exact, all 8 first attempt. `func_002073A8` is the same shape but via a `$gp`-relative load — left alone, known skip category. |
| `func_001F3D00` | text | **matches** | GS privileged-register setup (`0x1200_00XX` = the GS's memory-mapped register block): CSR ack, PMODE, then SMODE2/DISPFB1/DISPFB2/DISPLAY1/DISPLAY2/BGCOLOR set from a 3-entry table (`D_00151888`). First attempt had 45% mismatch from one wrong address: `a0`'s `ori` (completing `0x1200_0000` to `0x1200_00A0`) is scheduled *after* an earlier store that reuses `a0` while it still only holds the upper 16 bits — that store's real target is `0x12000000` (PMODE), not `0x120000A0` (DISPLAY2) as a first read of the register's *final* value suggested. Fixed by reading each store's address off the register's value *at that point in program order*, not its eventual fully-formed value. Byte-exact after the fix. |
| `func_001FFA90` | text | **close, not exact** | `int v = D_001941CC; D_0019A4E8+0x10 = v; D_0019A4E8+0x14 = v + 0x64000;` — logic fully confirmed via disassembly, same size (0x28), but another instance of the scratch-register-allocation-choice question; being such a short function, nearly every instruction's register field differs even though every opcode matches (14/40 bytes). Followed the `func_00112468`/`func_001F49B0` precedent for a diff this large relative to function size: documented, not kept as C. |
| `func_001FB448` | text | **matches** | `D_00152178 = (long)arg0 \| ((long)arg1<<8) \| ((long)arg2<<16) \| 0x80000000L;` (64-bit `sd` store, packs 3 small values + a flag bit into a global). First attempt used explicit `(unsigned int)` casts before widening to 64-bit, which made this compiler insert extra `dsll32`/`dsrl32`/`dsrl` masking retail doesn't have; retail just sign-extends each `int` parameter directly into 64-bit and shifts/ORs with no masking. Removing the unsigned casts (plain `(long)arg0` etc.) fixed it. Byte-exact. |
| `func_00207CB0` | text | **matches** | `if (arg1 >= 0x101) return D_001414DC == 0xF; return D_0013D4C5 != 0;` (`arg0` unused — never referenced in the disassembly). First attempt had the condition inverted (`if (arg1 < 0x101) ... else ...`) — logically equivalent but produced the opposite branch polarity from retail; flipping to match retail's actual `beqz`-tests-the-"else"-case sense fixed it. Byte-exact. |
| `func_00207E28` | text | **close, not exact** | `result = (arg0 < 0xE0 && arg1 <= 38.0f) ? 1 : 0;` (`38.0f` = `0x42180000`). Confirmed correct via objdump (same operations/registers/constant), but retail's FP-condition-to-integer materialization (`bc1t` with both the "set 1" and "reset to 0" as literal delay-slot/fallthrough instructions) isn't reproduced by any source shape tried (single `&&` expression, nested `if`, default-then-override) — all compile to a `bc1f`/`bc1tl`-based scheme instead. New instance of the delay-slot-scheduling open question, this time on FP-condition materialization rather than store/branch-target ordering. 26/52 bytes differ — too large to keep as documented-close C per the `func_00112468` precedent, left as `INCLUDE_ASM`. |
| `func_00207EC0` | text | **close, not exact** | `if (arg0 >= 0xBE) return D_0013D4E0 != 0; return (arg1 >= 58.5f) ? 1 : 0;` (`58.5f` = `0x426A0000`). The early-return half matches exactly once written with the right branch polarity (`arg0 >= 0xBE` as the `if`, not `arg0 < 0xBE`) — same fix as `func_00207CB0`. The float-threshold half hits the identical delay-slot-scheduling issue as `func_00207E28` right above. 19/64 bytes differ, left as `INCLUDE_ASM` for the same reason. |
| `func_001F9AF0` | text | **close, not exact** | DMAC channel register setup (base `0x1000D000`; `0x1200_0000`-style memory-mapped I/O, same category as `func_001F3D00`) plus a fixed-address `INTC_STAT` read at `0x20100000`, ORed with 1. Logic confirmed correct via objdump, but retail computes the `0x1000D000` base once into a single scratch register and defers the `0x20100000` address computation to right before its use; this compiler hoists that second address earlier and spreads the work across more registers. New (larger) instance of the scratch-register-allocation-choice question. Left as `INCLUDE_ASM`. |
| `func_001FA748`, `func_001FA790` | text | **close, not exact** | Angle-wrap-to-`[-pi,pi]` on `arg0+arg1` / `arg0-arg1` respectively (retail's `else if` shape confirmed by the delay-slot second-compare testing the *original* sum, only meaningful when the first branch wasn't taken). Logic and instruction sequence confirmed correct via objdump, but this compiler allocates the sum/diff into `$f12` (reusing `arg0`'s register) where retail uses a fresh `$f0` — scratch-register-allocation-choice question, now confirmed to apply to FP registers too, not just integer. Tried a separate-assignment-then-accumulate source shape instead of one combined expression; no change. Left as `INCLUDE_ASM`. |
| `func_001FA168`, `func_001FA190`, `func_001FA1C0`, `func_001FA1F8`, `func_001FA218`, `func_001FA460`, `func_001FA480`, `func_001FA4A0` | text | **not attempted, needs intrinsics** | VU0 vector-math helpers (identity-matrix builders, `vcallms` microprogram calls, bare `lq`/`sq` 128-bit block copies) — same "not plain-C-representable" category as the earlier VU0 entries. This whole address range (`func_001FA058`-`func_001FA6C0`-ish) is a vector/matrix math cluster, mostly VU0-heavy; skipped without individually re-deriving why for each one. |
| `func_001FB530` | text | **close, not exact** | Appends a 2-word GIF/DMA-style tag pair to the packet buffer `D_00161000` points at, then advances it by one qword. Confirmed via objdump: same fields/values/order/size (0x68 both), but retail re-derives `D_00161000`'s own *address* (a fresh `lui`/`lw` pair) before every field write, where this compiler computes the address once and only reloads the stored *value* each time. A new, more extreme variant of the redundant-global-reload pattern (previously only ever seen for a global's *value*, never its address, since a global's address is link-time-constant). Tried an explicit `*(unsigned int **)&D_00161000` reinterpret-cast to defeat the compiler's CSE confidence; no change. Kept as `INCLUDE_ASM`, diff too large/pervasive to call "close" C. |
| `func_001FB598` | text | **skipped** | Same `D_00161000` cluster as `func_001FB530` (hits the same address-reload issue) plus a `$gp`-relative final store — two known-skip categories stacked. |
| `func_002094E0` | text | **matches** (mod. known drift-adjacent issue) | If the struct at `D_0013D390`'s kind field (offset `0xDC`) is `2` and its status field (`0xE4`) is negative, resets status to `7`, zeroes field `0xE8`, and sets global error code `D_0015EFB0 = 0xB`. Needed an explicit `char *s` local (materializing the struct base address once via `addiu`, matching retail) to go from 58% mismatch down to 20.3% — without it the compiler folds each field offset directly into load/store immediates instead of forming a real pointer. Remaining 13/64 bytes are the established store-order/scratch-register-choice question (retail stores both struct fields before computing `D_0015EFB0`'s address; this compiler computes that address between the two field stores, and picks a different register for the constant `0xB`). Kept as documented-close C per the `func_00112380`/`func_001EBAF0` precedent (diff is comparable in relative size to those, not the much larger diffs that got reverted). |
| `func_001FB848`, `func_001FB8A8` | text | **skipped, `$gp`-relative store** | Same `D_00161000`-derived-pointer GIF/DMA-tag-write shape (writes into `D_00151A00`/`D_00151C60` respectively via the value stored at `D_00161000`), each ending in a `sw $reg, <offset>($28)` — known skip category. |
| `func_001FBAB8` | text | **skipped, callee-saved regs** | Uses `$16`-`$22` — hits the `sq`/`lq` open question, not attempted. |
| `func_001FE4C0`, `func_001FE580`, `func_001FF660`, `func_001FF950` | text | **not standalone functions** | Single instruction each (`addiu $sp,$sp,N` / a bare `sw`), no `jr $31` — fallthrough fragments, same category as `func_00113AD8` in `core_text`. |
| `func_001FDF10` | text | **attempted, reverted — new delay-slot instance** | `if (arg0 > 0x20000) { *arg1 = 0; *arg2 = 0; return -1; } *arg1 = D_001941C0.field4 + D_0016100C - arg0; *arg2 = D_001941C0.field8 + D_0016100C - arg0;` (`D_001941C0` fields at offsets `0x4`/`0x8`). Logic confirmed correct, but retail schedules the `t0=a1` pointer copy into the branch's delay slot where this compiler hoists it before the compare — tried an explicit early-local variant (same technique that fixed `func_0011AA68`), no change. 53% mismatch, reverted per the size-of-diff precedent rather than kept as misleading "close" C. |
| `func_001FE4D0` | text | **attempted, reverted — real structural difference** | Linear search over an array of `0x10`-byte records (checking `elem.field4 == arg0`, first element special-cased via direct pointer deref before the loop, returning the matching index or `-1`), count field at `D_001997D0+0x2C`. Logic confirmed correct via careful disassembly reading, but two source-shape attempts (early-return guards, then `result` variable with `break`) both landed at 70-78% mismatch with differences starting from the very first instructions (not just register/scheduling — retail materializes values in a different *kind* of instruction, not just a different register for the same kind). This is a bigger structural gap than the usual near-miss categories, not just delay-slot/register-allocation; reverted rather than force it. Worth a fresh attempt later with more careful attention to instruction-level structure, not source-level logic. |
| `func_001FF4F8` | text | **attempted, reverted — real structural difference** | Linear scan of a `short`-keyed table (stride 4 bytes) for `arg0`, with a `movn` (conditional-move) idiom picking between an accumulated fallback offset and `idx*4` depending on whether `arg1` is nonzero, then an optional output write through `arg2`. Logic reconstructed from the disassembly (including the exact conditional-move semantics) but the compiled C didn't reproduce the instruction shape at all (75% mismatch starting at byte 0xa) — this compiler's `if (arg1) off = idx*4;` doesn't appear to fold to the same `movn`-based shape retail's source did. Reverted; would need a specific idiom (possibly a ternary, or the `movn` genuinely requires source retail had that this rewrite didn't capture) to be worth another attempt. |
| `func_001FF668` | text | **attempted, reverted — real structural difference** | Walks a linked-list-like array of `unsigned short` keys (stride 8 bytes) counting entries until hitting `arg0` or the `0xFFFF` end sentinel. Two source shapes tried (separate `if`s per early check; a combined single read with `\|\|`) — both landed at 52-63% mismatch. Retail's actual instruction shape (two independent `beq`s against the same first-read value, sharing one return target) isn't naturally produced by either the split-`if` or combined-`\|\|` C forms in this compiler. Reverted; the "read once, do two `beq`s to a shared tail" idiom needs a more specific source shape than tried here — not obviously a small delay-slot/register tweak like the earlier documented techniques, closer to `func_001FE4D0`'s "different kind of instruction" gap. |
| `func_0023CE28` | text | **matches** | `return 1;`. Byte-exact. |
| `func_0023E000` | text | **matches** | `arg0[42] = 0;` (field at byte offset `0xA8`). Byte-exact. |
| `func_0023E050` | text | **matches** | `return arg0[42];` (same field as `func_0023E000`, getter counterpart). Byte-exact. |
| `func_0023E058` | text | **matches** | `int old = arg0[42]; arg0[42] = arg1; return old;` — same field again, swap-and-return-previous setter. Byte-exact. |
| `func_0023E698` | text | **matches** | `return arg0[3] == 0;`. Byte-exact. |
| `func_0023CE18` | text | **matches** | `arg0[1] = arg1; arg0[0] = arg2; return 1;` — needed source statements in this exact order (the reverse of retail's own instruction order: retail stores `arg2` first then `arg1`, but this compiler reverses whatever order the source states them in for this shape) to get retail's actual store order. Byte-exact. |
| `func_0023E5C8` | text | **matches** | `return (arg0[3] ^ arg0[4]) == 0;`. Byte-exact first attempt. |
| `func_0023E5B8` | text | **matches** (was previously close-not-exact) | `void func(volatile int *arg0) { arg0[3] = 0; arg0[2] = 0; }`. Previously documented as a delay-slot-scheduling near-miss (this compiler filled `jr`'s delay slot with the second store, 12 bytes vs retail's 16 with an unfilled slot). Typing the parameter `volatile` reproduces retail exactly — the unfilled delay slot was a `volatile` side effect, not a scheduling difference. Byte-exact. First confirmation that the `volatile` signature reclassifies previously-filed "open question" instances. |
| `func_0023E040` | text | **close, not exact** | `arg0[42] = 1; return 1;`. Retail materializes the constant `1` once and reuses the same register for both the store and the return value; this compiler materializes it twice into two different registers regardless of source shape (shared local, assignment-expression `return arg0[42]=1;`, bare duplicate literal — all three tried). New instance of the scratch-register-allocation-choice question, this time as "fails to reuse an identical constant" rather than picking different registers for genuinely different values. |
| `func_0023CEC8` | text | **matches** | `int v1 = ((self[2] << 4) + self[1] + 0x10) & 0xFFFFFFF; if (arg1 == v1) return 0; return (unsigned int)(arg1 - self[0]) >> 11;`. Byte-exact first attempt. |
| `func_0023CFF0` | text | **not attempted, compiler limitation** | Packs `arg1<<32 \| arg2<<28 \| arg3` into a 64-bit store. This compiler's C frontend cannot compile **any** 64-bit shift by a constant that isn't a multiple of 32** — confirmed with multiple isolated single-line test cases (`(unsigned long long)x << 28`, `x << 32 >> 4` as one expression, and even a shift-by-4 alone on an already-64-bit local variable in its own statement all fail identically: `unsupported wide integer operation`, a hard compile error from `cc1`, not a codegen quirk). Retail achieves the `<<28` via `dsll32`(by 32)+`dsrl`(by 4) — a real 64-bit shift-by-4 instruction the assembler accepts fine, so the *original* C source for this function almost certainly used inline asm for that step, not a plain C shift operator. New, real toolchain limitation, distinct from the four existing open-question categories (it's a hard compiler error, not a near-miss) — added to "Open toolchain questions" below. Not worth attempting further without inline asm. |
| `func_001EE6D0`, `func_001EE850`, `func_001EE9E8`, `func_001F0F70`, `func_001F0FF0`, `func_001F2410`, `func_001F2550`, `func_001F6CE0`, `func_001F7C50` | text | **not standalone functions** | More single/double `addiu $sp,$sp,N` (or a bare `sw`) fragments with no `jr $31` — same fallthrough-fragment category as `func_00113AD8` and friends in `core_text`. |
| `func_0023CF10`, `func_0023CF80`, `func_001F6600`, `func_001F6620`, `func_001F6640`, `func_001F7B40` | text | **skipped, callee-saved/sq-lq** | All save `$16` or `$31` via `sq`/`lq` — hits the open `sq`/`lq` question, not attempted. |
| `func_001F9850`, `func_001F9878`, `func_001F9888`, `func_001F98B0` | text | **skipped, `$gp`-relative** | FP constant loads via `($28)` offsets — known skip category (`-G0` build, no SDA support configured). |
| `func_001F9AF0`-`func_001FA898` (`func_001F9B20`, `func_001F9B50`, `func_001F9C30`, `func_001F9C48`-`func_001FA898` and neighbors) | text | **VU0 cluster, not attempted** | Spot-checked several (e.g. `func_001F9C30`: `lqc2`/`qmtc2.ni`/`vmulx.xyz`/`sqc2`) — this whole address range is the same vec3/matrix VU0 math cluster already noted for `func_001FA168`-`func_001FA4A0`, just a wider span than previously scoped. Not individually re-verified one by one; recognize the range and skip rather than re-deriving per-function. |
| `func_00207E60`, `func_00207E70`, `func_00207E80`, `func_00207E90`, `func_00207EA0`, `func_00207EB0`, `func_00207F00`, `func_00207F10`, `func_00207F20`, `func_00207F30`, `func_00207F40`, `func_002081F8`, `func_002082E8`, `func_002082F8`, `func_00208308`, `func_00208318`, `func_00208328` | text | **matches** | All `int func(void) { return D_XXXXXXXX_byte != 0; }` — same shape as the `func_0020xxxx` cluster matched earlier (`func_002071D0` etc), just a later cluster of the same per-flag getter pattern. 17 functions, all byte-exact first attempt, distinct flag addresses. |
| `func_00200190`, `func_002008B0` | text | **not standalone functions** | Single `addiu $sp,$sp,N`, no `jr $31` — fallthrough fragments, same category as `func_00113AD8`. |
| `func_00200198` | text | **skipped, callee-saved regs** | Uses `$16` via `sq`/`lq` — hits the open `sq`/`lq` question. |
| `func_001FFA90` neighbor cluster (`func_001FFC48`, `func_00208248`, `func_00208338`) | text | **skipped, callee-saved regs** | All use `$16`/`$17` via `sq`/`lq` — hits the open `sq`/`lq` question. |
| `func_001FFFA0` | text | **skipped, `$gp`-relative** | `lw`/`sw` via `($28)` offset — known skip category (`-G0` build, no SDA support). |
| `func_00208160`, `func_00208208` | text | **not attempted, known open question** | Float-threshold-to-bool materialization (`c.le.s`/`bc1f`/`bc1tl` scheme) — same delay-slot-scheduling issue already documented and reverted for `func_00207E28`/`func_00207EC0`; not re-attempted. |
| `func_0020CB80`, `func_0020CC10`, `func_0020CC38`, `func_0020CC60`, `func_0020CD58` | text | **matches** | All `if (D_int_flag != 0 && D_byte_flag != 0) return 1; return 0;` — distinct global addresses, same shape. Needed the `&&`-combined single-condition form (shared-tail merging), not a `!= 0` boolean-cast return or a `==0`-guard-then-cast — see "Shared-tail merging with a boolean cast" below, a refinement of the existing shared-tail technique. |
| `func_0020CBE0` | text | **matches** | Same shape as the cluster above but on two fields of one struct (`D_0013D6B8+0x40C`, `+0x3FC`) instead of two separate globals: `if (base[0x40C] != 0 && base[0x3FC] != 0) return 1; return 0;`. |
| `func_0020CC88` | text | **matches** | Same shape again, on `D_0013D5C8`'s byte fields `0x21`/`0x1F`. Needed `unsigned char *` for the base pointer (not `char *`) — see "lbu vs lb" note below. |
| `func_0020CCB8` | text | **matches** | `return D_0013D5C8_bytes[arg0] != 0;` — indexes the same global as `func_0020CC88`, byte-exact first attempt, no gotchas. |
| `func_0020CD28` | text | **matches** | `if (D_0013D9B4 != 0) { return D_0013D4B0 ? 2 : 1; } return 0;` (compiles the ternary to a `movz`). Needed the explicit `if (main-case) {...} return 0;` form (main case as the `if`-body, not `if (guard) return 0;` early-return) — same branch-polarity-family fix as `func_00207CB0`, applied to which arm is "inline" vs "jumped to" rather than `beqz`-vs-`bnez` sense. |
| `func_0020CD80` | text | **matches** | `if (D_0013D5DD != 0) return 2; return D_0013DC34 != 0;` — matched first attempt with the straightforward form (no shared-tail merge needed: this one's two "return 0" cases don't actually converge in retail, it's a plain sequential two-guard shape, not the converging-boolean shape the `&&`-cluster needed). |
| `func_0020CDA8` | text | **matches** | `return D_0013D5E7 != 0;` — simple byte-flag getter, byte-exact first attempt. |
| `func_0020CDB8` | text | **matches** | `if (base[0x1F] != 0) return 2; return base[0x21] != 0;` on `D_0013D5C8` — same `unsigned char *` fix as `func_0020CC88`. |
| `func_0020CBA8` | text | **close, not exact** | Same 3-value `&&`-chained shared-tail shape as the `func_0020CB80` cluster (`D_0013D9B4 != 0 && base[0x20] != 0 && base[0x21] != 0`), but with 3 conditions instead of 2. Retail reuses one register across the `D_0013D9B4` check and the `D_0013D490`-base computation (materializing the second lazily in the first branch's delay slot); this compiler keeps them in separate registers. The 2-condition version of this exact technique worked for 8 other functions in this cluster; the 3-condition version didn't carry over. 16/56 bytes differ. |
| `func_00209048` | text | **close, not exact** | 2D cross-product orientation test, 6 `int` params. Same operations/order/in-place-subtraction register reuse as retail (confirmed via objdump), but the final `(cross) < 0` boolean compiles to `srl $2,$2,0x1f` here vs. retail's `slti $2,$2,0` — two different instructions for the identical result, not a scheduling/register question. 16/36 bytes differ. |
| `func_00209160` | text | **close, not exact** (18/36) | Struct field shuffle (`D_0013D390`): read field `0xC4` into a temp, zero field `0xFC`, write the temp to field `0x1C`, plus `D_0015EFB0 = 3`. Confirmed correct logic. Re-tested against the store-order rotation rule (source `0x1C` then `0xFC`, to obtain retail's emitted `0xFC` then `0x1C`): **no change, still 18/36** — a real negative result for the rule, and consistent with it being base-pointer-scoped, since the `D_0015EFB0` store goes through a second base (same failure mode as `func_00219E60`). Residual is retail materializing the literal `3` early (into `$3`, before the base's own `addiu`) and using `$1`/`$at` for `D_0015EFB0`'s `%hi`, where this compiler orders those differently and uses a normal temp. |
| `func_002098A8` | text | **close, not exact** (7/32) | `if (D_0013D3AC != 0) D_0015EFB0 = 3;`. Retail schedules the literal `3` into the branch's delay slot; this compiler schedules the `D_0015EFB0` address computation there instead. Same open question as `func_00209160` right above. Since re-checked against both newer techniques and neither helps: a `*(volatile int *)&D_0015EFB0 = 3;` store (the signature that fixed `func_0023E710`/`func_0023E5B8`) and hoisting the constant into its own local before the `if` (the documented delay-slot-steering technique) both leave it at exactly 7/32. Genuinely the scheduling question here, not a volatile or statement-order artifact. |
| `func_0020C210` | text | **close, not exact** | DMAC register setup at fixed base `0x1000D400` (writes `arg2`/`arg1`/`arg0`/`0x100` to offsets `0x80`/`0x20`/`0x10`/`0x0`, same MMIO category as `func_001F3D00`/`func_001F9AF0`). Retail computes the base address once and reuses it for all four stores; this compiler recomputes a fresh `lui $at` before every store even with an explicit `char *base` local in source. New variant of the redundant-address-reload pattern (previously only seen for a *global*'s address; this is the first instance for a bare integer-constant address). 27/32 bytes differ. |
| `func_0020E340` | text | **close, not exact** | Packs 4 values into a 64-bit field (`(arg1<<32) \| arg2 \| (arg3<<8) \| (arg4<<16)`, stored to `arg0+0x38`). Same instruction sequence/order as retail, but the widened `arg1` lands in a different register. 13/32 bytes differ. |
| `func_00215048`, `func_00215078` | text | **close, not exact** | Both: null-check `arg0`, read a flags halfword at `+0x34`, test bit `0x20`, then return `*(int*)(*(int**)(arg0+0x78) + N)` (`N` = `0x0`/`0x10` respectively). Logic and overall shape confirmed correct, but retail has two literal `nop` instructions between the mask and the following branch that this compiler doesn't emit — schedules straight through instead. Not one of the previously-documented delay-slot/register-allocation patterns exactly (nop *insertion*, not a different instruction choice). 16/48 bytes differ each. |
| `func_0021B288` | text | **matches** | `*(int *)((char *)arg0+0x44) = -1; return 0;`. Byte-exact first attempt. |
| `func_0021DAC8` | text | **matches** | `D_001A0418 = -1; return 0;`. Byte-exact first attempt. |
| `func_0023C2B0` | text | **matches** | `return *(int *)((char *)arg0+0x50) >= 0x1000;`. Byte-exact first attempt. |
| `func_00223478` | text | **matches** | Zeroes 3 fields of `arg0` (`+0x3C`, `+0x40`, `+0x50`), returns 0. Needed source order `0x40, 0x50, 0x3C` to get retail's actual store/delay-slot scheduling — none of the 4 orderings tried matched the *source* order 1:1, this compiler's scheduling for 3 independent same-shape stores doesn't correspond simply to source order; found empirically by trying permutations and checking the byte diff, same spirit as `func_001F7648`'s note on this. |
| `func_0023CD10` | text | **matches** | Zeroes a small header at `arg0+0x50000` and stores the constant `0x50000` itself into its `+8` field (not the pointer — a plain register-value misread on first pass, corrected via the byte diff/objdump before concluding it was a scheduling issue). Needed one statement-order fix (`+8`, then `+0`, then `+4`) to land the right store in the branch-... in the `jr`'s delay slot. Byte-exact. |
| `func_00217EC0` | text | **matches** (was previously reverted) | `char *p = D_0013CA40; *(short*)(p+0x18E)=0; *(int*)(p+0x190)=0;`. **The earlier entry for this function was wrong** — it claimed retail computes the two field addresses independently with a `lui`/`addiu` pair per store; retail actually materializes the base *once* (one `lui`/`addiu` into `$2`) and uses it for both stores, exactly like this compiler does with an explicit `char *` local. The real (and only) problem was store order, fixed by the rotation rule below. Byte-exact. Cautionary example: the "40% mismatch, unexplained category" note was a misreading of the disassembly, not a real new gap. |
| `func_0023C9B0` | text | **not attempted further** | `D_001612E0 = 0;`. First attempt used `$2` for the global's address where retail uses `$1` (`$at`) — an unusual register choice for a compiler to make on its own, more consistent with the surrounding DMAC/hardware-register cluster (`func_0020C230`, `func_0020C268`, `func_0020C2F8` — several explicitly marked `/* Handwritten function */` by spimdisasm) being genuinely hand-written code, not compiler output. Reverted; not worth iterating on further since the root cause is likely "this wasn't compiled from C at all," not a source-shape issue. |
| `func_0022F090` | text | **close, not exact** | `if (arg1 != 0) *arg1 = arg0;` (void). Missing the known `dsll32`/`dsra32` sign-extension pair on the pointer parameter before use — same open-question category as `func_00112380`, not a new instance worth re-investigating (already extensively tried there). Reverted. |
| `func_001FA888` | text | **matches** | `return (float)arg0;` — int-to-float conversion (`mtc1`/`cvt.s.w`). Byte-exact. |
| `func_001FA898` | text | **close, not exact** | The float-to-int inverse of `func_001FA888`. Retail's `cvt.w.s` converts in place (dest == src == `$f12`, the incoming argument register); this compiler always allocates a fresh destination register for the conversion result. Only 2/16 bytes differ — that one instruction's register field. Small new instance of the scratch-register-allocation-choice question. An extra `(float)(int)` round-trip to nudge it toward reusing `$f12` made it worse (50% mismatch), reverted. |
| `func_00216F28` | text | **matches** | Writes the `short` value `4` to offsets `0x5C`/`0x40`/`0x78` of `D_001517D0`. First attempt (source in retail's own store order) came out 3/28 with the stores rotated; fixed predictively via the store-order rotation rule — see "Independent-store order: last source statement emits first" below, which this function established. Byte-exact. |
| `func_0021EF38` | text | **matches** | Resets 4 fields of `arg0`: float `0x38` = pi (`3.14159274f` = `0x40490FDB`), ints `0x34`/`0x44`/`0x48` = 0, returns 0. Byte-exact **first attempt** by applying the store-order rotation rule predictively (wrote source as `0x38, 0x34, 0x44, 0x48` to get retail's emitted `0x48, 0x38, 0x34, 0x44`) — confirms the rule holds across 4 stores and with a mixed float/int store set, not just the 3-int case it was derived from. |
| `func_0023E710` | text | **matches** | `if (arg0[3] > 0) arg0[3] = arg0[3] - 1;` — a clamped decrement, with `arg0` typed `volatile int *`. Retail reloads the field after the branch instead of reusing the already-loaded value, *and* leaves the `blez`'s delay slot empty; a non-`volatile` version compiles 8 bytes shorter (reuses the loaded value, fills the delay slot with the decrement). Adding `volatile` reproduced both retail behaviours exactly. Byte-exact. See "Redundant reload + unfilled delay slot = `volatile`" below — this is a notable finding, since it means some previously-documented "delay-slot-scheduling" near-misses may actually be volatile accesses. |
| `func_0023CDF0` | text | **close, not exact** | `int *p = (int*)((char*)arg0+0x50000); int avail = p[1]; int taken = (arg1 < avail) ? arg1 : avail; p[1] = avail - taken;` — a saturating subtract (deduct `arg1` from a counter, floor at 0), retail using `slt`+`movn` for the `min`. Logic and instruction sequence confirmed correct, and the `0x50000` pointer advance + `+4` field offset split was needed to reproduce retail's `lui 0x5`/`addu`/`lw 4($4)` shape (a single `+0x50004` offset instead materialises the whole constant first — worth knowing for other big-offset cases). Remaining diff is the scratch-register-allocation-choice question: retail reuses `$2` for both the `lui` scratch and the loaded value where this compiler takes `$3` for the scratch, and in a 9-instruction function that shifts nearly every register field (20/36 bytes). Tried the in-place-accumulate technique (`avail -= taken;`) as well; no change. Reverted per the size-of-diff precedent. |
| `func_00222950` | text | **matches** | `if (D_0013CC04 & 0x40) { D_001D5F78 = D_001D2678; } return 0;` — sets a global pointer to a fixed buffer's address when a flag bit is set. Byte-exact first attempt; notably retail schedules the pointee's `lui` into the branch delay slot, which is what this compiler does naturally (contrast `func_002098A8`, where retail wanted a *constant* in the slot and this compiler puts the address `lui` there — so the two aren't a single consistent preference). |
| `func_00234350` | text | **matches** except 1/40 bytes | `if (arg0 >= 0x40) return -3;` then returns field `+4` of the `arg0`'th 16-byte record of `D_001DD568`. Needed the `>= 0x40` guard-first polarity (the `< 0x40`-first form inverts the branch and inlines the wrong arm), and the field access written as a record-offset pointer (`rec + 4`) rather than index arithmetic (`base[arg0*4+1]`, which folds the `+4` into an `ori` instead of the load's offset). Remaining single byte is the final `addu`'s commutative operand order — see the comment on it in `src/text.c` for the four forms tried. Kept as C per the tiny-isolated-diff precedent. |
| `func_0021EDD8` | text | **close, not exact — cmov vs branch** | `short v = (D_001414F4 == 1) ? 0 : 3;` stored to `+2` of the pointer at `arg0+0x34`, returns 0. Retail *branches* and stores once at the join; every single-store C form tried here (default-then-override, if/else assigning a temp, ternary) compiles branchlessly to `xori`/`movz` (23/40), and the two-store form that does branch (and even reproduces retail's exact `beq` polarity when written `!= 1`) then needs an extra `b` to join (15/40). Reverted. **Mirror image of `func_001FF4F8`**, where retail used `movn` and this compiler wouldn't produce it — so the conditional-move heuristics differ from retail's in *both* directions. Worth recognising early rather than iterating: if retail branches over a trivial value-select, or uses a cmov where plain C won't, that's this. |
| `func_0021DA98` | text | **matches** | `*(char**)((char*)arg0+0x34) = (D_0013D5CA != 0) ? D_001D0A50 : D_001D0A88; return 0;` — picks one of two fixed buffers by a byte flag and stores it into the object. Byte-exact first attempt with a plain ternary. Note retail *branches* here (with an explicit join `b`) rather than using a cmov, and this compiler agrees — selecting between two **addresses** (each needing its own `lui`/`addiu`) isn't cmov-able, so the cmov-vs-branch divergence documented for `func_0021EDD8` doesn't bite for address selects. Useful: this shape is reliably matchable. |
| `func_0021B108` | text | **matches** except 2/44 bytes | Identical shape to `func_0021DA98` above (`(D_0015EF90 != 0) ? D_001D4B90 : D_001D4BC0` into `arg0+0x34`), on an `int` flag rather than a byte one. The only diff is which register holds the flag global's address: retail does `lui $2` / `lw $2,lo($2)` (loads into the same register), this compiler `lui $3` / `lw $2,lo($3)`. Notably retail itself is inconsistent between the two — `func_0021DA98` uses `lui $3`/`lbu $2` (matching this compiler exactly, hence that one being byte-exact) while this one reuses `$2`. So it's retail's allocator varying, not a rule we're failing to follow: the scratch-register-allocation-choice question. Kept as C per the tiny-isolated-diff precedent. |
| `func_0022F0F0` | text | **skipped, known sign-extension gap** | Would be `if (arg1 != 0) { *(int*)arg1 = arg0; if (arg0 == 0) { ((char*)arg1)[4] = 0; *(int*)((char*)arg1+0x18) = 0; *(int*)((char*)arg1+0x1C) = 0; } }` — but opens with `dsll32 $5,$5,0` / `dsra32 $5,$5,0`, the 32→64 sign-extension of the pointer parameter that is the `func_00112380`/`func_0022F090` open question. Not attempted; blocked before the interesting part. (It also has an unfilled `beqz` delay slot and does the first store in the *second* branch's delay slot so it runs either way — worth revisiting if the sign-extension question is ever solved.) |
| `func_0021DA60` | text | **matches** | Copies 8 `int`s from `arg0+0x30` into the global array `D_00141FA0`, returns 0. Written as a `do { *dst++ = *src++; } while (--i >= 0);` with `i` starting at 7. Byte-exact **first attempt**, including retail's unfilled `nop` inside the loop body — worth noting since loops had been avoided as risky: a simple counted copy loop reproduced exactly, so loop shapes are not inherently a problem. |
| `func_00219E60` | text | **close, not exact** (23/44), reverted | Sets `D_001D5F70` (an object) field `0` to `0x2D` and fields `0xC`/`0x10`/`0x110` to 0, plus the separate global `D_0015F6E8 = 3`. Instruction count and size are right; the register assignment differs from the very first instruction (retail `lui $4`, this compiler `lui $5`) and cascades through. Also establishes that **the store-order rotation rule is base-pointer-scoped**: this function's stores go through two different bases, and the compiler reordered them non-rotationally (source `0x110, global, 0xC, 0x10, 0` → emitted `0, global, 0x10, 0x110, 0xC`); writing the source in retail's own emitted order changed nothing. |
| `func_0023CD30` | text | **matches** | `int *p = (int *)(arg0 + 0x50000); int d = p[2] - p[1]; if (d != 0) { *arg1 = (int)(arg0 + p[0]); } return d;` � same `+0x50000` page-offset shape as `func_0023CD10`/`func_0023CDF0` (see the big-constant-splitting technique). Byte-exact first attempt. |
| `func_00216EF0` | text | **matches** | Writes `-0x8000`/`0` pairs into `D_001517D0` at short-indices `0x2E`/`0x2F` (guarded by `arg0 != 0`) and `0x3C`/`0x3D`/`0x20`/`0x21` (unconditional). Two things were needed: the store-order rotation rule *per group* (source `0x2F,0x2E` and `0x3D,0x20,0x21,0x3C` to get retail's emitted `0x2E,0x2F` and `0x3C,0x3D,0x20,0x21`), and indexing the global **directly** rather than through a shared `short *p` local � see "Global-address materialization: direct indexing vs. a base-pointer local" below. Byte-exact. |
| everything else in `core_text`/`text` | core_text, text | not started | Still `INCLUDE_ASM` stubs. ~1532 functions total remaining. |

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

**Update:** the question isn't cleanly "s-regs use sq, ra uses sd" as
first framed. `func_001E9E70` (text segment) saves *only* `$ra` — no
`$s0`-`$s7` at all — and retail still spills it as `sq` there, unlike
every other lone-`$ra`-save function seen so far (which all use `sd`,
matching this compiler). Whatever decides `sq` vs `sd` in retail is more
granular than "which registers", possibly per-function or per-translation-
unit — not yet isolated further.

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

**64-bit shift by a non-multiple-of-32 constant: hard compile error.**
Confirmed while attempting `func_0023CFF0`: this compiler's `cc1`
cannot compile *any* C-level 64-bit (`long long`) shift whose amount
isn't a multiple of 32 — not a codegen quirk, a hard `unsupported wide
integer operation` error, reproduced with several isolated single-line
test cases (a direct `<<28`, an equivalent `<<32` then `>>4` as one
expression, and even `>>4` alone on an already-64-bit local in its own
statement). Shifts by exactly 0 or 32 work fine (those compile to a
single `dsll32`/`dsrl32`/`dsra32`). Retail contains real 64-bit
shift-by-4 (`dsrl`) instructions — the assembler accepts and executes
them without issue — so the original source for any function needing a
64-bit shift by a non-32-multiple amount must have used inline asm for
that step; it's not reachable from plain C with this compiler. Distinct
from the other four questions below: this is a hard error blocking any
attempt at all, not a near-miss to iterate on. If a function needs this,
skip it (or write the specific shift as inline asm, unverified whether
that's viable here — not tried).

**Retail pads short backward branches; this toolchain doesn't (stray
`nop`s).** Found while working `func_00215048`/`func_00215078`, whose
entire 16/48 residual is two literal `nop`s retail has between an `andi`
and the `beqz` that consumes it. With those nops, the backward branch
spans exactly 6 instructions from target to branch inclusive; without
them it would span 4. Measuring every backward branch across all 1669
disassembled functions shows this is systematic, not incidental:

```
span (instrs, target..branch inclusive) -> count
   3 :   4        7 : 137
   4 :   7        8 :  45
   5 :  13        9 :  44
   6 : 309       10 :  25   ... smooth decay onwards
```

309 branches at exactly 6 against 137 at 7 and only 24 total below 6 is a
sharp discontinuity — a natural distribution would decay smoothly through
the low numbers, not pile up at a boundary. The pile-up at 6 is
consistent with everything that would naturally have been 3-5
instructions being padded up to 6, which is exactly what the **R5900
short-loop erratum** workaround does (mainline binutils spells it
`-mfix-r5900`).

Not reproducible with what's available here, and not cleanly a rule:
- `-mfix-r5900` is rejected by this `cc1` (`Invalid option`), and this
  assembler has no equivalent (checked `ee-as.exe --help` and a string
  dump of the binary — nothing for nop/loop/errata/fix).
- The assembler *does* document nop-removal (`-O` "remove unneeded NOPs",
  `-g` "do not remove uneeded NOPs"), which looked promising, but
  `-Wa,-g` and `-Wa,-O0` both change nothing: `cc1` never emits these
  nops in the first place, so there is nothing for the assembler to keep.
- The 24 sub-6 backward branches are all in *compiled* (not
  `/* Handwritten */`) functions, so it isn't an absolute invariant.
  `func_00116CBC` has a 3-instruction backward `beqz` into a 2-instruction
  return block — structurally the same shape as `func_00215048`'s padded
  one, and unpadded. So the precise trigger is narrower than "any short
  backward branch" and hasn't been isolated.

Practical takeaway: if a near-miss's only residual is unexplained `nop`s
sitting before a **backward** branch, this is very likely the cause —
recognise it and don't hunt for a source shape, because no source shape
produces them. Worth revisiting if a differently-built `cc1` ever turns
up (see the TImode note in the `sq`/`lq` question — same "build-time
config, not a flag" shape of problem).

**Conditional-move vs. branch heuristics differ in both directions.**
For a trivial "select one of two values, then use it" shape, retail's
compiler and this one sometimes disagree about whether to emit a branch
or a conditional move (`movz`/`movn`) — and it goes both ways, so it
isn't a matter of one compiler simply preferring cmovs:
- `func_0021EDD8`: retail *branches*; every single-store C form here
  compiles to `xori`/`movz`. Forcing a branch (by storing in both arms)
  works but costs an extra join `b`.
- `func_001FF4F8`: retail uses `movn`; no plain-C form tried here
  produced it at all.
Recognise this early. If a near-miss's diff is "retail has a branch
where we have `movz`" (or vice versa) rather than a register/scheduling
difference, iterating on source shape is unlikely to close it — the two
known instances each resisted 3+ distinct formulations. Both are
documented in their table entries with the exact forms already tried.

**Structural instruction-shape mismatches (tentative, not yet a confirmed
category).** `func_001FE4D0`, `func_001FF4F8`, and `func_001FF668`
(all attempted and reverted, see their table entries) each hit something
that *looks* different from the three questions above: the mismatch
isn't confined to a register number, a store's position, or a delay
slot — the compiled instructions differ in *kind* from the very first
few bytes, even though the overall logic (confirmed by careful
disassembly reading) is right. Multiple plausible source shapes were
tried for each (early-return vs. combined-condition, different
variable-hoisting patterns) without landing on the one that reproduces
retail's shape. This might just be three individually-hard functions
(a `movn` idiom, a two-`beq`-shared-tail idiom, a search-loop shape) each
needing more specific source-shape investigation than time allowed
rather than one real underlying category — flagged here so a future
round doesn't have to rediscover that these three are harder than the
usual near-miss, but not promoted to a full open question until a
pattern across more instances is clear.

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

**Branch polarity via if/else shape.** Seen fixing `func_00115748`: for a
two-way branch where both arms do real work (not an early-return guard),
writing `if (cond) { A } B` (early return inside the `if`, `B` falls
through after) can make this compiler pick the opposite branch sense
(`beqz` vs `bnez`, or their likely variants) from what retail chose for
logically-equivalent code — even though the *behavior* is identical
either way. Writing the full two-armed `if (cond) { A } else { B }`
instead fixed it in both instances hit so far. When a near-match's only
diff is an inverted branch condition (same target semantics, opposite
polarity — e.g. `beqzl` where retail has `bnezl` targeting the same
logical case), try the explicit `if/else` form before anything else.

**Shared-tail merging via literal C duplication.** Also seen fixing
`func_00115748`: if two different control-flow paths both end in the
exact same few statements (e.g. `*ptr = v; return v;` after two separate
branches), and retail implements that as a shared tail block both paths
jump into (fewer total bytes than duplicating it), this compiler will
only find that reuse if the C *itself* has just one textual copy of the
shared statements for both paths to fall into — writing it twice (once
per branch, even if character-for-character identical) makes the
compiler treat them as unrelated and compile both separately, costing
real bytes. Restructure so both paths fall through to one instance of
the shared code instead of returning from within each branch.

**Loop-setup statement order.** Seen fixing `func_001F0F30`: for a
counted loop initializing a pointer/bound/fill-value before the loop
body, this compiler's *instruction scheduling* for those independent
setup values can follow a different order than retail even when the
final code is otherwise identical — not a register choice, just which
setup instruction comes first. Writing the C statements in the same
order retail computes them (check the `.s` disassembly's instruction
order before the loop) fixed it directly; no restructuring needed beyond
matching statement order to retail's computation order.

**Avoid unnecessary unsigned casts on values that get widened.** Seen
fixing `func_001FB448`: when a group of `int` parameters gets widened to
a 64-bit type and combined (shifted/ORed) into a packed value, adding
explicit `(unsigned int)` casts before the widening — even though the
values are conceptually just bit patterns, not really "numbers" — makes
this compiler insert extra masking instructions (`dsrl32`/`dsrl` to
clear the sign-extended upper bits) that retail doesn't have. Retail
just lets each `int` sign-extend naturally into the 64-bit register and
combines directly with no masking. If a near-match's extra bytes are
masking/clearing instructions right after a parameter is widened, try
removing an unsigned cast before assuming it's a deeper issue.

**Shared-tail merging with a boolean cast.** A variant of the existing
shared-tail-merging technique, seen fixing the `func_0020CB80` cluster:
when a function's retail shape is "two (or more) independent conditions
must ALL be true for the result to be 1, otherwise 0" and both/all the
"false" outcomes converge to one shared `return 0`, write it as a single
`&&`-chained condition (`if (a != 0 && b != 0) return 1; return 0;`),
not as sequential early-return guards (`if (a == 0) return 0; return b
!= 0;`) and not as a boolean-cast expression (`return a != 0 && b !=
0;`, or worse, `if (a==0) return 0; return b != 0;` which drops the
literal-1-vs-0 distinction entirely). The early-return-guard form
compiles the second comparison as a plain boolean cast (`sltu`
normalize) instead of retail's explicit branch-with-literal-return —
worked for 8 of 9 attempts in this cluster; the one that didn't
(`func_0020CBA8`) had 3 chained conditions instead of 2, so this
technique may not scale past 2.

**Independent-store order: last source statement emits first.** For a run
of N independent same-shape stores through one already-materialized base
pointer, this compiler emits the **last** source statement first, then
the remaining ones in source order: source `(A, B, C)` compiles to
`(C, A, B)`. So to obtain retail's emitted order `(X, Y, Z)`, write the
source as `(Y, Z, X)` — rotate retail's order left by one. Derived from
`func_00216F28` (3 `short` stores) and then confirmed *predictively* on
`func_0021EF38` (4 stores, mixed float/int, byte-exact first attempt).
This supersedes the earlier "try permutations empirically" advice from
`func_001F7648`/`func_00223478` for this shape — check the rule first, it
appears deterministic. (It also retroactively explains `func_0023CE18`'s
2-store case, where retail's order was the reverse of the source's.)
Note the rule is about the *store* statements; a trailing `return`, and
the base-pointer setup, sit outside the rotation. **The rule is
base-pointer-scoped**: it held for 3- and 4-store runs through a single
base, but `func_00219E60` (stores split between an object base *and* a
separate standalone global) reordered non-rotationally and did not
respond to source order at all — so don't expect it to apply once more
than one base is in play.

**Redundant reload + unfilled delay slot = `volatile`.** Seen fixing
`func_0023E710`: where retail re-loads a field it already has in a
register *and* leaves a nearby branch delay slot empty, the original
source almost certainly declared that pointer/field `volatile` — not a
scheduling quirk to work around. A plain (non-`volatile`) version of the
same C reuses the loaded value and fills the delay slot, coming out
several bytes shorter; adding `volatile` reproduced both retail
behaviours at once, byte-exact. **This is worth re-checking against the
existing "delay-slot-scheduling" open-question entries** — some of those
near-misses (particularly any where retail also re-reads a value it
already had, or leaves a slot unfilled, e.g. `func_0023E5B8`) may be
volatile accesses misfiled as a codegen gap rather than genuine open
questions. Hardware/MMIO-adjacent code is the obvious place to suspect
it, but `func_0023E710` is a plain counter field, so it's not limited to
MMIO.

**Splitting a large constant offset into pointer-advance + field
offset.** Seen while working `func_0023CDF0`: retail reaching a field at
`base + 0x50004` compiles as `lui $r, 0x5` / `addu` / `lw 4($r)` — i.e.
the source advanced a pointer by `0x50000` and then indexed a field at
`+4`, rather than using one `+0x50004` offset (which makes this compiler
materialize the whole constant into a register first, a visibly different
instruction shape). When a near-match's opening instructions differ
around a big structure offset, try splitting it at a round boundary the
way a real `struct`/array-of-pages access would.

**Global-address materialization: direct indexing vs. a base-pointer
local.** These two forms are *not* interchangeable, and which one is
right differs per function � check both before calling a near-miss a
scheduling gap:
- Writing `short *p = D_GLOBAL; p[i] = ...;` forces the address
  materialization to happen as its own statement up front, so it lands
  *before* any following branch.
- Writing `D_GLOBAL[i] = ...;` directly lets the compiler materialize
  the address where it likes � including scheduling the `lui` into a
  preceding branch's delay slot, and rematerializing the `addiu` twice
  (once per basic block) rather than keeping one base register live.
`func_00216EF0` needed the *direct* form (retail has `beqz` first with
the `lui` in its delay slot; the local-base form put the `lui` first and
scored 33/56 instead of an exact match). `func_002094E0` needed the
*opposite* � an explicit `char *s` local, without which the compiler
folded each field offset into load/store immediates instead of forming
a real base pointer. So: if a near-miss's opening instructions differ
around a global's address, try the other form before anything else.

**`unsigned char *`, not `char *`, for byte-field base pointers.** Seen
fixing `func_0020CC88`/`func_0020CDB8`: when dereferencing a `char *`
that's really an unsigned byte flag/field (compared against 0, not used
as a signed value), a plain `char *` may compile to `lb` (sign-extending
load) where retail uses `lbu` (zero-extending) — a real difference in
which load opcode gets encoded, not just a value/register question, even
though the *comparison result* against 0 is identical either way.
`unsigned char *` fixes it directly. Doesn't affect `int`/other wider
types, only single-byte loads.

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
3a. **Always confirm the compile actually succeeded before trusting a
   verification result.** A failed compile leaves the *previous*
   `build-sn/*.o` in place, and because the function is still an
   `INCLUDE_ASM` stub in that stale object, it contains retail's own
   bytes — so `check_match.py` reports a perfect `0/N` "match" that is
   entirely fictional. This has nearly been recorded as a real match
   twice now. Two specific hazards:
   - Redirect to a file and check the exit status directly
     (`$CC ... > /tmp/cc.log 2>&1; echo $?`). Piping the compiler into
     `tail` and then testing `$?` reports **`tail`'s** status, not the
     compiler's, and will happily print `0` for a failed build.
   - The easiest way to trigger it accidentally: adding an `extern`
     declaration for a global that is *already* declared elsewhere in
     the same file with a different type (e.g. `extern int D_X;` when
     `extern char D_X[];` already exists further down). That is a hard
     error in this compiler, not a warning.
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
