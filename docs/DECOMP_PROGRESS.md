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
| everything else in `core_text`/`text` | core_text, text | not started | Still `INCLUDE_ASM` stubs. ~1660 functions total remaining. |

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
flag). Worth checking whether the wider PS2 decomp community has already
solved this for another game before spending more time guessing flags
blind.

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
