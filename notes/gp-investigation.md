# $gp / small-data-area (SDA) investigation

Status: **mechanism confirmed, blocker reduced to a defined task.** Not
yet applied — the build is still `-G0` and unaffected.

## What is settled

**Retail's gp base is `0x00166D00`.** Not inferred — read from the
binary's own ELF metadata, `.reginfo` -> `Elf32_RegInfo.ri_gp_value`,
and independently re-verified by parsing `.reginfo` from the baserom.
`_gp` is already defined in `rac1.ld.sh`, verified purely additive.

SDA window is therefore `0x15ED00 .. 0x16ED00` (gp ±32KB). All 1011
gp-relative references in the disassembly land inside it.

**Per-variable control works, and needs no use-site changes.** Confirmed
by direct experiment (`-O2 -G8`, v1.14):

| Declaration | Size | Codegen at `-G8` |
|---|---|---|
| `extern int x;` | 4 | `lw $v0, 0($gp)` — **gp-relative** |
| `extern char x[];` | incomplete | `lui` — stays out |
| `extern int x[64];` | 256 | `lui` — stays out |

At `-G0` everything is `lui`, i.e. no SDA at all — which is why no
gp-relative function can currently match.

So placement is decided by the *declared* size of each extern. Choosing
how to spell a declaration is enough to put a variable in or out of the
small-data area, without touching any code that uses it.

## What blocks a global `-G8` today

Switching the whole build to `-G8` compiles fine but fails to link, in
exactly two ways — both fixable, neither mysterious:

1. **60 externs wrongly become gp-relative** and their references don't
   reach: `relocation truncated to fit: R_MIPS_GPREL16`. They live far
   below the window (`0x12F86C`, `0x13Dxxx`...) while the window starts
   at `0x15ED00`. Full list: `notes/gp_offenders.txt`. Fix: declare each
   with an incomplete or oversized type per the table above.
2. **One section overlap**: `-G8` creates `.lit4`, which the linker
   script places at `0x1E8F00`, colliding with `.lvl_vtbl`. Fix: give
   `.lit4`/`.sdata`/`.sbss` explicit placement in `rac1.ld.sh`.

## Progress: two of the three obstacles are now solved

**1. The 60 wrongly-gp-relative externs: SOLVED.** `NOT_SDA` (in
`include/common.h`) is `__attribute__((section(".data")))`, which tells
the compiler the variable is not in `.sdata` so it falls back to
`lui`/`%lo`. Crucially this leaves every use site untouched, unlike the
incomplete-array trick, which matters because many of these are scalars
used inside already-matching functions. All 61 declarations are tagged.
Verified directly: a plain `extern unsigned char x;` compiles to
`lbu $v0,0($gp)` at `-G8`; the same declaration with `NOT_SDA` compiles
to `lui`/`lbu`. (`__attribute__((aligned))` does NOT work -- still
gp-relative.) With this applied, `-G8` produces **zero** GPREL16
truncations.

**2. Section placement for `.sdata`/`.sbss`: SOLVED.** They come out
empty, because our C defines no data of its own -- every global is
extern. Parked past the end of the image in `rac1.ld.sh`.

**3. The FP literal pool: NOT solved, and this is what still blocks
`-G8`.** At `-G8` the compiler puts float constants in `.lit4` and
addresses them via `$gp` (`R_MIPS_LITERAL`), so `.lit4` must live inside
the 0x15ED00..0x16ED00 window -- but **the window is completely full**:

    core.bss  0x154200..0x15ED7F   (runs right up to core.lit)
    core.lit  0x15ED80
    .lit      0x15F000
    .bss      0x161380
    .data     0x165580..

There is no free space, so there is nowhere to put a
compiler-generated literal pool. Currently only 12 bytes are needed
(3 float literals, all in `text.o`; `core_text.o` needs none).

The likely correct resolution, not yet attempted: retail evidently
compiled with a nonzero `-G` too, so **retail's `.lit`/`core.lit` ARE
its literal pools** -- our generated literals are duplicates of entries
already sitting at known addresses. The right fix is probably to make
our references resolve to retail's existing pool rather than emitting
our own, instead of finding somewhere to park a second copy. Placing
`.lit4` at our own address would make any function referencing a literal
differ from retail in that operand anyway, so parking it is not a real
fix even if space existed.

## The literal pool is NOT a placement problem -- it is structural

Investigated further; the conclusion changes the plan, so read this
before attempting the "suggested order of work" below (which is now
partly obsolete).

**Retail does not use an FP literal pool at all.** It materializes float
constants inline, e.g. `func_0021EF38`:

    lui  $1, 0x4049
    ori  $1, $1, 0x0FDB      /* 0x40490FDB = 3.14159265f */
    mtc1 $1, $f0

That is THREE instructions where a pool load would be one
(`lwc1 $f0, off($gp)`) -- retail chose the more expensive form despite
demonstrably having `$gp` set up. So there is nowhere to "place" our
`.lit4`: retail has no counterpart section for it to correspond to, and
any pooled reference is wrong regardless of where it lands.

**No flag and no sub-build separates the two behaviours.** At `-G8` this
compiler always pools FP constants AND uses `$gp` for data; at `-G0` it
does neither. Tried `-mno-embedded-data`, `-membedded-data`,
`-mno-gpopt`, `-msoft-float` -- none change it. All three available SN
sub-builds (v1.36, v1.14, v2.73a) pool identically at `-G8`, so unlike
the `sq`/`lq` question this is **not** a sub-build difference.

**What that implies.** A function that inlines an FP constant cannot
have been compiled at `-G8` by this compiler family, and a function
using `$gp` cannot have been compiled at `-G0`. Retail contains both.
Therefore retail was built from **multiple translation units with
different `-G` settings**, and our single monolithic `src/text.c` cannot
reproduce both at once -- `-G` is per-TU, not per-function.

Measured, consistent with this: 244 of 1036 `text` functions use `$gp`,
and they interleave with non-`$gp` functions throughout the segment
rather than forming clean blocks. (Interleaving alone doesn't prove
multiple TUs -- a single `-G8` TU also yields both, since only *small*
globals go via `$gp` -- but combined with the inline-FP evidence it
does: an inlining function and a `$gp` function cannot share a TU.)

**The real fix is architectural: split the sources per original
translation unit**, each compiled with its own `-G`, which is what
mature decomp projects do anyway (one `.c` per original TU). Since TU
boundaries are unknown, they must be inferred -- and there is a usable
heuristic: a function inlining an FP constant belongs to a `-G0` TU, a
function using `$gp` belongs to a `-G>0` TU. Placement would need either
contiguous per-TU address ranges or per-function
`__attribute__((section(".text.func_XXXXXXXX")))` with a generated
linker script.

That is a substantial change and should not be attempted piecemeal. The
`NOT_SDA` groundwork below remains correct and is already committed;
it will be needed whenever the split happens.

## Suggested order of work

1. Add `.sdata`/`.sbss`/`.lit4` output sections to `rac1.ld.sh`, placed
   inside the SDA window.
2. Re-spell the 60 offenders' declarations to keep them out of SDA.
   Check each use site still compiles — a scalar used as a scalar cannot
   simply become `char x[]` without a cast at the use site, and use
   sites inside already-exact functions must not change, so prefer an
   oversized complete type (e.g. a struct or `int x[64]`) where a cast
   would otherwise be needed.
3. Switch to `-G8` and sweep. Baseline to beat: **201 decompiled / 186
   exact / 0 size mismatch / 15 byte mismatch.** Any regression means a
   variable's placement is still wrong.
4. Only then attempt an actual gp-relative function.

## Caveat worth stating plainly

`-G8` is a guess at retail's threshold; 8 is the GCC default. It has not
been confirmed. If step 3 leaves residual mismatches concentrated in
gp-relative accesses, try other `-G` values before assuming the source
shape is wrong. Note the build already uses per-segment compilers, so a
per-segment `-G` is available if the two segments disagree.
