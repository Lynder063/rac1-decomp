# Sibling decompilations

Other projects decompile or reimplement Ratchet & Clank games. Lombyte
and RC1 match the US build of this game, and RC1 has mapped per-file
compiler flags; ReRAC documents what the code does; ratchet-uya-decomp
mapped retail's flags for a later game. None is part of this build.
Clone them next to this repository:

```sh
git clone https://codeberg.org/bordplate/RC1 ~/Projects/RC1
git clone https://github.com/re-rac/rerac ~/Projects/rerac
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
python3 tools/lombyte.py map            # rebuild the pairing, executable and levels
python3 tools/lombyte.py func_001123A8  # -> _calloc_r, matched, its C file
python3 tools/lombyte.py _malloc_r      # a Lombyte name -> func_00114920
python3 tools/lombyte.py todo           # matched there, not here
```

On 2026-09-27, 66 functions (31,576 bytes, 6.8% of our code) were
matched there and not here, the newlib allocator family and `_dtoa_r`
among them.

Lombyte decompiles level code too now, laid out as ours is
(`src/overlays/lNN/`, shared code named after level 00), so `map` also
pairs level functions, level by level. On 2026-09-30 it paired 3,409
functions; 291 (136,196 bytes) were matched there and not here. 73 of
them are the movie code upstream reverted to assembly (commit
`85ecd8b`, "Sources" in CONTRIBUTING.md): those are redone from the
assembly alone, never ported. The rest go out as queue waves
(QUEUE.md, "Lombyte ports"): a function's packet carries Lombyte's C
when Lombyte matched it. The first two such waves (lb1, lb2) ported
105 functions (63,424 bytes); `wave.py salvage --ports` later landed 7
more whose files had clashed (4,372 bytes). Each is listed in
THIRD_PARTY_NOTICES.md.

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

## bordplate/RC1: the same game, NTSC, with per-file flags

[RC1](https://codeberg.org/bordplate/RC1) matches the US boot ELF with
EE-GCC 2.95.2 (`-G8 -O2 -ffast-math -fno-exceptions`, SN's assembler
optional). Its hand-named `config/symbols.txt` is where
`config/symbol_names.txt` came from. Since 2026-09 an automated loop
matches functions there and names them; `decomp_state/matched.json`
lists 247 matched functions (2026-09-30), each with a note on what made
it match. Its names reach us through `tools/names.py` (docs/NAMES.md);
its C ports like Lombyte's (US addresses, `tools/lombyte.py` finds the
PAL counterpart).

What carries over most is its Makefile: per-object flags, each verified
against the whole NTSC boot image. Retail built some translation units
differently:

| RC1 object | Flags |
|---|---|
| `menu`, `menu_post_mid`, `menu_post_gadgets` | `-fno-schedule-insns` |
| `menu_post`, `menu_post_pages`, `menu_post_pages_end`, `transition` | `-fno-schedule-insns -mno-split-addresses` |
| `menu_callbacks` | `-fno-schedule-insns2` |
| `pause_sched` | `-fno-schedule-insns` |
| `pause_post`, `pause_post2` | `-G0` |
| `movie/movie_mid`, `movie/videodec_post`, `movie/movie_post_audio`, `movie/videodec_nodata`, `movie/disp` | `-mno-split-addresses` |
| `permcb`, `vuchain`, `draw_post_reset` | `-mno-split-addresses` |

RC1 splits some of our units finer (`menu` into several objects), so a
flag applies to a range of functions, not necessarily our whole file.
Its notes (`decomp_state/notes/`) record what each matched function
needed.

**Measured here (2026-09-30): the flags do not carry over.** They are
relative to RC1's compiler setup (EE-GCC 2.95.2, `-G8 -ffast-math`), not
to retail's objects as our SN 2.95.3 build sees them:

- Six exact `menu.c` functions inside RC1's `menu` object (func_00207200,
  002072C0, 00207340, 00207648, 00207780, 00207930) under RC1's
  `-fno-schedule-insns`: three stay exact, 00207200 goes to 14/188
  bytes off, 00207340 to 2/104, and 00207930 changes size.
- The one near-miss in that range, func_00227A70 (pause.c, inside RC1's
  `pause_post2`, built there with `-G0`): 57/144 bytes off with default
  flags, `-G0`, `-fno-schedule-insns` and both; 62/144 with
  `-fno-schedule-insns2`; a size change with `-mno-split-addresses`. Its
  residual is source shape: retail keeps `%hi(D_001D5F70)` in `$t2`
  across the loop and forms the index with other registers.

So treat an RC1 flag as a hint to test per function, never as a file
setting.

## ReRAC: the same game as a native PC port

[ReRAC](https://github.com/re-rac/rerac) (ISC) reimplements the game in
Rust from the US disc and Ghidra. It is not a decompilation, but its
design docs (`docs/plan/`, `docs/formats/`) describe what much of the
engine and level code does: the moby update mechanism and the per-class
update table (`moby_update_catalogue.md`), hero states, particles, HUD,
camera, collision queries. Its `tools/ghidra/names/doc_names.csv` names
the functions those docs discuss; the verified ones are in our
`include/names.h`, the rest are candidates in `config/names.tsv`.
Addresses there are US: the level programs' through Lombyte's overlay
catalogue (docs/NAMES.md).

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

### UYA's flags measured on this build (2026-09-27)

- `-fopt-stack` and `-mno-check-zero-division` don't apply: our retail
  saves `$s` registers with `sq` in 16-byte slots, and its `div`s carry
  the `break 7` trap, which is what the default flags produce.
- `-mno-split-addresses` and `-G8` were run over seven candidates whose
  residuals involve address formation or registers (func_001FF958,
  func_00213C78, func_00227A70, func_00200248, func_00201A38, plus the
  exact func_0020D960 as a control). Neither flag fixed any of them.
  `-mno-split-addresses` changed the size of three and broke the exact
  control (47 of 120 bytes differ); `-G8` only fails to compile where a
  declaration relies on `-G2` small-data placement. So hud.c, mobyutil.c,
  pause.c and mobyfunc.c are split-address, `-G2` files as built. The
  flag stays a per-function experiment for other files.
- Both SN assemblers UYA uses are in our toolchain mirrors
  (`sn-prodg-3.01/.../ee/bin/Ps2EeAs.exe`, `sn-prodg-24/.../ee/bin/ps2eeas.exe`).
  Using ps2eeas for the whole text segment was measured before and is
  worse (DECOMP_PROGRESS.md); `tools/ps2eeas_nops.py` reproduces the nops
  it adds. UYA's per-function `@ps2as` is not tried here yet.

### `nop; nop` before `div.s`, `sqrt.s` and `rsqrt.s` (2026-09-30)

UYA's open problem (two `nop`s in front of most float divides and square
roots; none of its compilers or assemblers adds them) is a compiler
feature, not an assembler one. Sony's 2.96-ee-001003-1 compiler, the Linux
`cc1` under `toolchain/sn-prodg-24/local/sce/ee/gcc/lib/gcc-lib/ee/2.96-ee-001003-1/`,
has two output templates for each of the three instructions:

```
div.s   %0,%1,%2
%(nop\n\tnop\n\tdiv.s\t%0,%1,%2%)      (inside .set noreorder)
```

- The padded one is its default: a test file compiled with `-O2` or `-O0`
  gets `nop; nop; div.s` for every divide (nine of nine). A divide in a
  branch delay slot was not tested.
- `-mno-handle-ee-div-pipeline-bug` selects the plain one. The flag is
  the workaround for the EE's divide pipeline bug.
- SN's 2.95.2/2.95.3 and Sony's 2.9-ee-991111 have only the plain
  template and no such flag, so no option makes them pad.
- Retail Ratchet & Clank 1 (PAL) has no padded divide among 1,671 (the few
  single `nop`s are the usual one after `mtc1`), so this does not apply
  here.

Not explained yet: UYA functions that mix two, one and no `nop`s.
