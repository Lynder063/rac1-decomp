# Ghidra as a reference, not as a source

Ghidra is wired up in this project, but it is deliberately kept out of
the matching loop. This document says what it is for, what it is not
for, and how to regenerate its output.

## Why it is not the main tool

Matching decompilation is not a reading problem. The hard question is
never *"what does this function do"* — it is *"which source shape makes
GCC 2.95.3 emit these exact instructions"*. Every lever in
`DECOMP_PROGRESS.md` is of that second kind:

* `func_0011B7F8` needed `< 0x20` rather than the equivalent `>= 0x20`,
  because GCC branches on the condition as written;
* `func_001247E8` needed a local pointer rather than `(&X)[1]`, which
  folds to the symbol `X+4`;
* `func_00123BA0` needed its loop invariant placed *below* the zero-trip
  guard, because that one word decides whether the loop head takes an
  alignment nop.

A decompiler deliberately erases exactly the things those decisions turn
on — delay slots, branch senses, which register a value lives in,
whether a constant was rematerialised or copied. Its output is C that no
2002 compiler would produce, so it cannot be fed to the toolchain, and
reading it instead of the assembly hides the evidence you need.

For the small functions this project works through, reading the
annotated `.s` takes about a minute and shows the artifacts directly.

## What it IS good for

1. **Large functions.** Everything short in `core_text` is nearly picked
   over; what is left has real control flow. Hand-decoding those is
   where mistakes start.
2. **Struct recovery.** The source is full of `*(int *)(s + 0x174)`.
   Ghidra cross-references every caller at once and is far better than
   hand-tracing at establishing that a given offset is one shared field.
   This matters directly for the long-term goal of readable C++.
3. **The 64-bit routines** (`func_00119EA8`, `func_00122598`,
   `func_0012AC80` and friends) where `ld`/`dsll32`/`dsra32` soup makes
   it hard to see what is a double, what is a narrowing, and what is a
   hardware register read.

## Rules

* Nothing under `docs/ghidra/` is ever compiled, and nothing is ever
  pasted into `src/` as-is. Decode from the assembly; use the dump to
  check your reading.
* The dump is regenerable, so only the table and the tooling are
  committed. Run the script to produce the rest.

## Setup

None of this is committed — it all lives outside the repo:

| Piece | Where |
| --- | --- |
| Ghidra 12.1.3 | <https://github.com/NationalSecurityAgency/ghidra/releases> |
| emotionengine-reloaded | <https://github.com/chaoticgd/ghidra-emotionengine-reloaded> |
| Temurin JDK 21 | `winget install EclipseAdoptium.Temurin.21.JDK --source winget` |

The processor extension is **not optional**. Stock Ghidra has no R5900
language — its MIPS variants top out at 64-bit MIPS, so the EE's `sq`
and `lq` (which retail's `text` segment uses for every register spill)
and all of COP2/VU0 fail to decode. Unzip the extension matching your
Ghidra version into `<ghidra>/Ghidra/Extensions/`. The language id is
`r5900:LE:32:default`, and `run_headless.sh` passes it explicitly
because the ELF header only claims plain MIPS.

## Running it

```
bash tools/ghidra/run_headless.sh
```

Override `GHIDRA_DIR`, `JAVA_HOME` or `PROJECT_DIR` if your paths
differ. It writes `docs/ghidra/<segment>.c`.

## How the function table works

`tools/gen_func_table.py` writes `docs/ghidra/functions.csv` with a
`segment,name,vram,size` row per function, read straight out of the
`nonmatching <name>, <size>` header splat puts at the top of every `.s`
file. The address is not stored anywhere: it *is* the name, since splat
names a function at `0x112380` `func_00112380`.

`tools/ghidra/DumpDecompiled.java` then defines every function from that
table rather than letting auto-analysis guess. Boundary detection is
Ghidra's weakest step on a stripped PS2 ELF — it mis-splits around
branch-likely tails, alternate entry points and the handwritten-asm
routines — and we already know every boundary exactly. Giving it the
answers up front is the single biggest quality difference in the output.
