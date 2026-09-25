# Workflow

How a function goes from `INCLUDE_ASM` to matched C, in order. Every step
reflects a real incident. `docs/DECOMP_PROGRESS.md` covers the levers and
the dead ends; this file is the procedure.

Revised 2026-09-16 after checking our process against
[decomp.wiki](https://decomp.wiki). The "Checked against decomp.wiki"
section at the end records what was adopted and what was ruled out.

## Setup (once, and after changing config/splat.yaml)

`asm/` is not in git. It is the disassembly of the retail executable.
Generate it from your own baserom:

```
pip install -r requirements.txt
bash tools/setup_asm.sh
```

The script checks the baserom sha1 and the pinned splat/spimdisasm
versions, then applies the same post-processing the build expects
(`fix_vu0_macro.py`, `sn_regnames.py`, `fix_denormal_floats.py`). It leaves `src/` and `include/`
alone. The output was verified byte-identical, so every contributor diffs
against the same thing.

## 0. Before decompiling anything: is it even game code?

**Check whether a real source exists first.** Libraries were not written
for the game, and compiling their real source is cheaper and more faithful
than decoding them. It can also reveal a different compiler.

- libgcc: `src/libgcc/` (fp-bit, built by gcc 2.9-ee) is the precedent.
  It settled three near-misses that had been written off as unsteerable.
- Signs that a function is library code:
  - it has no callers from game code but calls into a cluster;
  - it matches a textbook libgcc or libc shape;
  - a whole family shares the same "unexplained" residual;
  - `sd` spills where the rest of its segment uses `sq`.
- Try every EE `cc1` in the toolchain mirrors on the verbatim source. See
  `docs/DECOMP_PROGRESS.md`, "libgcc is 2.9-ee".

**A residual shared across a whole family is a signal, not a verdict.**
Before recording "treat the rest of this family as the same known
residual", compile one member with the other compilers.

## 1. Get a sketch

```
sh tools/gen_ctx.sh                  # ctx.c from include/ (once per header change)
python tools/m2c.py func_XXXXXXXX    # m2c sketch, with context
```

m2c output is a reference. It is never matching as emitted, and it
mis-decodes branch-likely (`bnel`) conditions. Ghidra output
(`docs/ghidra/`) is reference only too, and is never pasted into `src/`.

Look for **family siblings** before writing anything: grep
`asm/nonmatchings/` for the distinguishing call or constant. The family
method has paid in every round since it was introduced.

## 2. Iterate with the differ

For quick tries, `tools/try_func.py` compiles one candidate function in a
scratch copy of its source file (the same per-segment pipeline) and
compares it with retail in seconds, without touching `src/` or linking:

```
python tools/try_func.py func_XXXXXXXX candidate.c --diff
python tools/try_func.py func_XXXXXXXX c1.c c2.c c3.c      # one verdict each
```

It also takes a function that is already C: the candidate then replaces
its definition, which is how near-misses get refined. It masks relocated
fields, so a pass there is a filter, not a match: the function still has
to pass the full build (step 3). On macOS/Linux run it through
`bash tools/docker/run.sh python tools/try_func.py ...`. For a whole-image view
and asm-differ's side-by-side, use:

```
sh tools/diff.sh func_XXXXXXXX
```

It builds, links, regenerates the images and runs asm-differ. It
**refuses to diff after a failed make**: a failed compile leaves the
previous `.o`, whose `INCLUDE_ASM` stubs still hold retail's bytes. That
would show a fictional match, and it has happened 15+ times.

A batch of candidates (one `func_X path/to/candidate.c` line each in a
manifest) goes in with `python tools/integrate.py MANIFEST --apply`: it
re-checks each one with `try_func.py` and applies the exact ones. Build
and audit afterwards as always.

In `core_text`, first ask which compiler built the object: Sony SDK code
(the C library, the memory card library, libmpeg, ...) was built with
the SDK's 2.9-ee, the rest with 2.95.3. `tools/compiler_sweep.py
src/core/X.c` compiles a file whole under both and lists each function's
verdict. A near-miss that only one compiler reaches says which one it is;
the objects marked `ee29` in `config/core_text.objects` build with 2.9-ee.

Work through the levers in `docs/DECOMP_PROGRESS.md` in rough order of
cost:

1. Types and struct shape: `long` is 64-bit, `long long` is 128-bit;
   `char` vs `unsigned char`; type the base as a struct.
2. Control-flow spelling: invert the test (exit cross-jumping, arm
   order, branch-likely); use one definition per arm at a join.
3. Addressing form: base pointers, and two C names on one symbol.
4. **Branch-invariant duplication** (decomp.wiki, GCC 2.9 991111 on PS2).
   If an allocator tie survives, try duplicating the code shared after an
   if/else into both arms. GCC hoists it back out, but the register
   choice follows the original shape. This is untested here, and it is
   the first thing to try on allocator-tie near-misses, which we had
   recorded as not source-steerable.
5. **Irregular switches** (decomp.wiki). An if/else chain from m2c, or a
   compare whose result nothing uses, can be a small `switch`. That
   includes an explicit case that duplicates `default`.

A size mismatch is always reverted or stubbed, because one short function
shifts everything after it. A same-size near-miss may be kept, with the
recovered source and every spelling tried (with byte counts) in a comment.

## 3. Verify, from scratch

```
bash tools/build_sn.sh
```

The script deletes the objects first, stops on make's own exit status, then
links, and runs `sweep_matches.py`, `check_layout.py` and `check_image.py`. If you run the
steps by hand, check make's exit status yourself. `$?` after a pipe is the
status of the last command in the pipe, not make's. When a tool itself changes (the sweep, a rewriter,
the report generator), also cross-check with an independent whole-image
byte comparison. A tool that was just modified is not evidence for its
own correctness.

## 4. Publish

```
python tools/gen_progress_report.py      # does its own from-scratch build
python tools/gen_progress_report.py --check
```

Commit the regenerated `progress/report.json` **together with** the source
change. CI (`Progress report`) fails a push whose report is out of date
with `src/`, and decomp.dev publishes whatever the report says.

- Stage files by name, never with `git add -A`. Stray tool output has
  reached the public repo that way before.
- Commit messages end with a single `Co-Authored-By` trailer naming the
  model that did the work, for example
  `Co-Authored-By: Claude Opus 5.5 (1M context) <noreply@anthropic.com>`.
  They carry no session link.
- Never commit `baserom/`, `toolchain/`, `build-sn/`, `asm/`, `tools/ext/`,
  extracted assets, or retail bytes of any kind (that includes "target"
  objects).

If a new library module is added, update `tools/libgcc_units.py`,
`Makefile.sn` and the aliases in `rac1.ld.sh` together.

## Checked against decomp.wiki (2026-09-16)

| wiki item | status here |
|---|---|
| Real compiler per component, e.g. libraries built separately | **adopted**: libgcc is 2.9-ee (+9 exact) |
| GCC 2.9 991111 used by PS2 games (Fatal Frame, PaRappa 2, TM:Black) | **partly true here**: libgcc yes. The game's `text` segment spills s-regs with `sq`, which 2.9-ee does not emit, so it is not 2.9-ee as-is |
| C++ codegen differs from C (e.g. `bool` changes load/store order) | **game is C++**: retail contains `hud.cpp`, `loaders.cpp`, `map.cpp` (and `snd.c`). **Measured:** compiling `text` as C++ (cc1plus 2.95.3, `extern "C"`) gives 239 exact vs 240 as C, and all 25 near-misses are unchanged. The language switch is not the lever. **Untested:** C++ *features* such as `bool` fields and member functions. Try `bool` on store-order near-misses before calling them unsteerable |
| NOPs from floating-point literals in `.lit4` | **ruled out**: retail loads no float literal via `$gp` from `.lit`. It has 63 gp-relative `lwc1`, all globals, and float constants are inline (858 `mtc1`) |
| Mixed `$gp` and `lui` access to one variable within a file suggests a TU boundary | **relevant**: our `NOT_SDA` / `extern short` workarounds may be compensating for compiling two giant files where retail had many TUs. Use it as a split hint when a variable is addressed both ways |
| objdiff units = real TUs | **not yet**: units are our files, not retail's TUs. Refine as splits become known (the `.cpp` names above are the first evidence) |
| RC1's NTSC flags `-G8 -O2 -ffast-math -fno-exceptions` (GCC 2.95.2) | **`-ffast-math` measured and rejected**: a whole build with it gives 363 exact vs 364. It breaks `func_0022DB48` and improves nothing. `-G8` was already ruled out (float constants would pool into `.lit4`, which retail never does). `-fno-exceptions` only matters for C++. RC1 decompiles almost nothing, so its flags were never verified against matches |
| decomp-permuter / decomp.me | we have `tools/permute.py`. decomp.me has no SN ProDG compiler preset for this game yet, so it cannot be used for collaboration on it as-is |
