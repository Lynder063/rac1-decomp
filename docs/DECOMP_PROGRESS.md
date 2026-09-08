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

Then compare the specific function's bytes against
`baserom/SCES_509.16`'s corresponding section at the function's known
offset (see `tools/check_match.py` for the whole-section version; for a
single function, slice the section at `(func_vram - section_vram)` for
`nonmatching <label>, <size>` bytes, per the `.s` file's own header
comment).

## Status

| Function | Segment | Status | Notes |
|---|---|---|---|
| `func_00112380` | core_text | **close, not exact** | Logic fully understood: `return func_00116F68(arg0, 0, 10);`. Retail has an extra redundant `dsll32`/`dsra32 v0,v0,0` sign-extension pair (8 bytes) before the return that this compiler doesn't emit for any source/flag variant tried. Possibly a different SN ProDG sub-build than this mirror (`AngheloAlf` mirrors several: GCC 2.95.2 SN BUILD v2.73a/v2.74, GCC 2.95.3 SN BUILD v1.14/v1.36 — this repo uses v1.36). Not investigated further yet. |
| everything else in `core_text`/`text` | core_text, text | not started | Still `INCLUDE_ASM` stubs. 1669 functions total. |

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
4. Rebuild (`Makefile.sn`), relink, and diff the function's bytes against
   the retail baserom at its exact address. A match means done; a
   near-match is worth recording (see the table above) rather than
   endlessly guessing flags — codegen idioms can be genuinely
   compiler-sub-version-specific, and this project may not have the exact
   sub-version Insomniac used.
5. Once matching, the readability pass (real names/types/structure) can
   proceed on that function using the still-matching build as a
   regression check, per the plan in `README.md`.
