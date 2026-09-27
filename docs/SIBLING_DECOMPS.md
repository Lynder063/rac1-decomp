# Sibling decompilations

Two other projects decompile Ratchet & Clank games with the same
compilers. Both are useful: one has already matched functions we
haven't, the other has mapped retail's compiler flags. Neither is part
of this build. Clone them next to this repository:

```sh
git clone https://github.com/mateuszklysz/Lombyte ~/Projects/Lombyte
git clone https://github.com/vetusmagnus/ratchet-uya-decomp ~/Projects/ratchet-uya-decomp
```

## Lombyte: the same game, US build

[Lombyte](https://github.com/mateuszklysz/Lombyte) (MIT) matches the US
executable, `SCUS_971.99`. Its code is ours, compiled for another
region, so a function it has matched is the best starting point we
have. It keeps one C file per function under `src/`, with names
recovered from bordplate's [RC1](https://codeberg.org/bordplate/RC1).

Its percentage leaves out SIMD, VU0 and COP2 helpers ("intentional
asm"), so it reads higher than ours for about the same amount of
matched code.

`tools/lombyte.py` pairs its functions with ours by aligning the two
builds' function sizes:

```sh
python3 tools/lombyte.py map            # rebuild the pairing (856 pairs)
python3 tools/lombyte.py func_001123A8  # -> _calloc_r, matched, its C file
python3 tools/lombyte.py _malloc_r      # a Lombyte name -> func_00114920
python3 tools/lombyte.py todo           # matched there, not here
```

On 2026-09-27, 66 functions (31,576 bytes, 6.8% of our code) were
matched there and not here, the newlib allocator family and `_dtoa_r`
among them.

### Porting a function

1. `python3 tools/lombyte.py func_X` gives the Lombyte C file. Start
   from its body; don't reinvent it.
2. Rename what it references:
   - **Functions**: a Lombyte name becomes ours with
     `tools/lombyte.py NAME`, or take the `func_X` from `CONTEXT.md`.
   - **Globals**: Lombyte's `D_XXXXXXXX` are US addresses. The PAL
     symbol is the one at the same place in our assembly
     (`asm/nonmatchings/<seg>/func_X.s`): the n-th `%hi`/`%lo` or
     `$gp` access there matches the n-th in theirs. `CONTEXT.md`'s
     globals list is in order of first use.
   - **Types**: `s32`, `u32` and `f32` exist in `include/common.h`.
3. Declare things the way this file already does. Keep Lombyte's
   control flow and statement order; they are what matched.
4. Credit it in the candidate's comment ("from Lombyte (MIT), adapted to
   PAL") and in the commit message. MIT also requires Lombyte's copyright
   and permission notice with any substantial copy: the first port adds a
   `THIRD_PARTY_NOTICES.md` carrying Lombyte's `LICENSE` ("Copyright (c)
   2026 Mateusz Kłysz"), and later ports list themselves there.

Lombyte builds some units with a patched EE-GCC 2.9 whose flags
reproduce codegen stock compilers lack (`sq`/`lq` saves, classic
`mult`/`mflo`, in-place `cvt.w.s`): see its
`docs/patched-toolchain.md`. A function that needed that profile there
may not match with our compilers.

Lombyte's newlib ports keep newlib's own macros, such as `MALLOC_ZERO`,
whose body is `do { ... } while (0)`. That is the original source, not
an artificial barrier, but `tools/integrate.py` refuses any `while (0)`,
so such a candidate is landed by hand after review.

## ratchet-uya-decomp: Up Your Arsenal

[ratchet-uya-decomp](https://github.com/vetusmagnus/ratchet-uya-decomp)
matches R&C 3's `frontbin.elf` with the compiler our game code uses, SN
ee-gcc 2.95.3. Its [compiler matrix](https://github.com/vetusmagnus/ratchet-uya-decomp/blob/main/docs/compiler_matrix_findings.md)
tested 15 compilers and 8 flag sets. What carries over:

- **Retail compiled some files with `-mno-split-addresses`.** Such a
  file loads a global with one assembler macro (`lw $v0, X`), so the
  compiler can't keep a `%hi` register across a call; the assembler
  expands a fresh `lui` each time. In a split file the `%hi` is shared.
  Files form address runs; UYA records them per range in
  `tools/text_parts.txt`. On func_001F3890, `-mno-split-addresses` gave
  retail's exact saved-register set, where every split-mode candidate
  needed two more. Our `MACRO_ADDR`, and giving one global two alias
  names, only imitate this for one variable at a time.
- Its other default flags are `-G8 -fopt-stack -mno-check-zero-division`
  (ours: `-G2`). A `div` without the zero-divide trap wants
  `-mno-check-zero-division`.
- Some of its functions are assembled with SN's own assembler (Ps2EeAs)
  for its `mtc1` hazard nops and inline float constants.
- Its `try_func.py` resolves relocations to real addresses instead of
  masking them, so two stores to different globals in the wrong order
  no longer pass.
- It counts hand-written functions and linker remnants as done: they live
  in `asm/handwritten/` and `asm/remnants/`, included with `ASM_FUNC` /
  `LINKER_REMNANT`. We adopted that reporting policy for the 212 confirmed
  handwritten functions and 69 dead-strip remnants (83,796 bytes) listed
  in `config/`. Fragment buckets remain unmatched pending boundary fixes.
  The full build audit still counts exact C matches separately; see
  `docs/ASM_CLASSIFICATION.md`.
- It writes VU0 functions as C with inline asm, as their original source
  was. That doesn't carry over to us: our large VU functions (51
  functions, 67K bytes) have no gcc stack frame and use trapping
  `add`/`sub`, so they were hand-written assembly. At most about 45 small
  VU0/SIMD functions (3-5K bytes) could fit that pattern.
- It puts retail's extra padding after a function (more zero words than
  gcc's alignment adds) into the source ahead of time, with a
  `TEXT_PADDING(N)` macro (`tools/trailing_padding.py`), so converting the
  function to C needs no special step. Here workers still emit those nops
  themselves after the function (LEVERS.md); doing it ahead of time is
  worth copying.

Try a flag on one candidate with `TRY_CFLAGS`, set inside the container:

```sh
bash tools/docker/run.sh sh -c \
  "TRY_CFLAGS=-mno-split-addresses python tools/try_func.py func_X build-sn/try/func_X/pN.c"
```

The build still uses one set of flags for all game code. Which of our
files need which flags is not mapped yet.
