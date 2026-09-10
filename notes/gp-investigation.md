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
