# Level code overlays

Each level carries its own build of the game program, which replaces the
executable's `main` segment (literals, bss, data, three vtables, text) when
the level loads (docs/ASSETS.md, "Code overlays"). The executable's game
code is a subset of every level's program; all distinct game code is about
3.5 MB. This page is the plan for decompiling it, and the contract between
the tools involved.

## Layers

| | Tracked | Made by |
|---|---|---|
| `baserom/overlays/level_NN/{lit,bss,data,vtbl,camvtbl,sndvtbl,text}.bin` and `manifest.json` (record addresses) | no, game data | `tools/overlays.py dump` |
| `config/overlays/functions.tsv`: every distinct function, its name, kind and places | yes | `tools/overlays.py catalogue` |
| `asm/overlays/<name>.s`: one file per distinct non-exe function, from its canonical level | no, generated | `tools/overlay_asm.py` |
| `src/overlays/...`: C and `INCLUDE_ASM` stubs for overlay functions | yes | generated stubs, then matching |

## Names

The catalogue deduplicates functions by comparing instructions with their
address fields masked: jump targets, the `lui` of a RAM address, `$gp`
offsets, and immediates on a register that holds or derives from such a
`lui` (see `identity()` in `tools/overlays.py`). Constants, float halves
and struct offsets are compared, so two functions that differ in a number
are two functions (see [Variants](#variants)). Two copies that only call
different functions are one function: the call target is a relocation.

- **exe**: the same code as an executable game function. It keeps that
  name (`func_XXXXXXXX`) and its C lives in `src/game/` as now.
- **shared**: in two or more levels, not in the executable.
- **level**: in one level only.

A shared or level function is named `func_LNN_XXXXXXXX`: its address
(`XXXXXXXX`) in the lowest-numbered level that has it (`NN`), its
*canonical level*. `places` lists every level and address where it occurs;
one level can hold the same code at several addresses (tiny stubs).

Data referenced from overlay code is named by address in the canonical
level: `D_LNN_XXXXXXXX` for addresses in the replaced `main` range
(0x15F000 and up), and the executable's own `D_XXXXXXXX` / `func_XXXXXXXX`
names below it, since the core segment (`core_text`, `core_data`, SDK) stays
resident and is shared by every level.

## Caveats

- Masking hides constants that go through the masked fields, so two
  functions that differ only in such a constant share a fingerprint. The
  per-level rebuild (below) is what finally proves a C body right for every
  place.
- Function boundaries come from calls, returns and tail calls followed by a
  frame opener, plus the executable's functions found in each level.

## Plan

1. **Assembly** (`tools/overlay_asm.py`): write `asm/overlays/<name>.s` for
   each shared and level function, disassembled from its canonical level
   in the executable's `asm/nonmatchings` style, so `INCLUDE_ASM` and the
   assembler take it unchanged.

   `python3 tools/overlays.py dump`, then `python3 tools/overlay_asm.py`
   (spimdisasm in the build container, two passes per level; about 50
   minutes). `tools/setup_asm.sh` runs it last when `baserom/overlays/`
   exists. Each level is disassembled whole, split exactly at the
   catalogue's places, and all 3,307 functions are written:
   - **Jump tables** come from the level's `data` record (not `lit`) and
     are emitted after the function as `dlabel jtbl_LNN_...` in `.rodata`.
   - **Resident names**: the executable's core symbols are given to
     spimdisasm, and addresses still raw after a first pass are named
     `D_XXXXXXXX` (resident) or `D_LNN_XXXXXXXX` (level data) for a second.
     Addresses outside main RAM (the scratchpad, 0x70000000) stay numbers.
   - **Branches written as `.word`** (retail's encoding, the instruction in
     a comment): a branch out of the function, unless its target is the
     next function in the same file; and every backward branch, because
     GNU as's R5900 short-loop fix miscounts after a forward branch and
     pads loops retail's assembler did not (func_L00_002422D8), and no
     option turns it off.
2. **Sources and matching**: `src/overlays/shared/` for shared functions
   and `src/overlays/lNN/` for each level's own, as `INCLUDE_ASM` stubs,
   in link order (see Layout). A file runs until the executable unit its
   functions follow changes, or about 32 KB; it is named after that unit
   and its first function (`hud_00235960.c`). A function that branches
   into the next one stays in its file. The grouping is provisional
   until the original file boundaries are known. The executable build
   stays untouched.

   `tools/try_func.py` takes `func_LNN_*` names. It checks a candidate
   more strictly than an executable function: it links the compiled file
   so the function sits at its canonical address, defines every other
   symbol at its address in that level (from the name, or the catalogue
   for an executable function's name) with `_gp` = 0x166D00, and compares
   the result with the level's bytes. `EXACT` there means every
   relocation reaches the right place.
3. **Audit and progress**: the same check over every C function in
   `src/overlays/`. `progress/report.json` gets a unit per file, in the
   categories `shared` and `levels` (plus `level_NN` per level), so each
   distinct function counts once. The executable's units and categories
   stay as they are; the report's totals cover everything, so its
   percentage is that of the whole game's code.
4. **Per-level rebuild** (later): link each level's program from the same
   sources and compare it with the level's records, as the executable build
   does. Needs the link order and data layout per level.

## Layout

Measured on the dump (2026-09-27):

- **One link order.** The executable and every level keep their common
  functions in the same order. The executable's units reappear in each
  level as contiguous runs (52 of 53 in level 0, counting functions of 32
  bytes or more that occur once), with level functions between their
  functions: a level program is the same objects linked with more of each
  kept, as a dead-stripping link would. Some executable units span
  several original files (`vendor` has 14 functions spread over 270K of
  level 0).
- **Where level code sits.** 1.42 MB of shared and level code lies inside
  an executable unit's span, 1.80 MB between units (1.17 MB between
  `help` and `hud`, 464K between `vendor` and `movie/movie`).
- **Records.** `lit` starts at 0x15F000 in every level; the other records
  are packed after it at each level's own sizes. `$gp` is 0x166D00
  everywhere, so a level link fixes it rather than deriving it.
- **Shared code** differs between levels only in relocated fields (20
  functions compared across all their places).
- **Jump tables** live in the level's `data` record; its pointers into
  functions are nearly all table entries. Vtable pointers land on the
  catalogue's function starts (3,983 of 3,987).

## Roles

Each level's program dispatches through three tables in its records:

| Record | Entry | Ends at |
|---|---|---|
| `vtbl` | 12 bytes: `{oClass, update function, pointer to a 6-word table}`, one per moby class the level has | oClass -1; the 6-word tables follow it |
| `camvtbl` | 20 bytes: `{camera id, init, activate, update, exit}` | id -1 |
| `sndvtbl` | 8 bytes: `{id, function}` | id -1 |

`python3 tools/overlays.py names` reads them from the dump and writes
`config/overlays/names.tsv`: every catalogued function a table points at,
with its roles (`UpdateMoby_<oClass>`, `InitCamera_<id>`, ...,
`SoundFunc_<id>`) and the levels that use it that way. On the dump of
2026-09-28 that is 690 functions, 610 with a single role: 475 level and
210 shared functions (1.03 MB, a third of all level code) and 5
executable ones. A function with many roles is a generic one (an empty
`Exit`, a class that reuses another's update). An update function gets
the moby in `$a0`. `tools/dossier.py` puts the role in `CONTEXT.md`.

The names stay `func_LNN_XXXXXXXX` everywhere else: a role is a hint for
the worker, and the oClass numbers are RaC1's own.

Four table pointers are not a catalogued function start: 0x10 into the
24-byte func_L00_002EDB58 (InitCamera_7 in levels 0, 1 and 8) and 8 into
the 16-byte func_L08_002DB438 (UpdateMoby_324 in level 8). Each is two
small functions the split joined; the next catalogue run can use the
table pointers as split points.

## Relatives

`python3 tools/overlays.py families` lists, for each shared and level
function, its most similar other function within 15% of its size
(`config/overlays/families.tsv`, masked instructions compared by
alignment). 428 functions (1.2 MB) have one at 75% or more, nearly all in
another level: level code is often the same source built with small
changes. Match one, then start its relative from that C. Matching order:
shared code in all 19 levels first, then one function per family, then
the rest.

## Variants

137 catalogued functions (23 KB) are *variants*: the same instructions as
another function except for a constant, a float or a struct offset (a moby
class of `0x23D` against `0x23E`, 95.0 against 58.5). The catalogue lists
each with its parent in `config/overlays/variants.tsv`; the parent is the
executable's function of that shape, or the first one in the catalogue.
A variant's stub sits right after its parent in the parent's file, and
variants of executable functions are in `exe_variants.c`.

```
python3 tools/overlay_variants.py stubs     # after regenerating the catalogue
bash tools/docker/run.sh python tools/overlay_variants.py clone
```

`clone` matches variants without a model. It takes the parent's C, renames
the function and the symbols its assembly names differently, replaces the
numbers that differ between the two functions' instructions, and keeps
the result when the strict check says EXACT. Run it after each wave: every
newly matched parent can bring its variants along. It leaves alone a
variant whose difference has no literal in the C (a struct field) or
whose parent is in the executable.

## Status

2026-09-28: 11 level functions matched (2,284 bytes of common level
code), from two waves of 24 Sonnet workers. The near-misses' notes are
in `build-sn/try/func_L00_*/`. Found along the way, and fixed:

- the catalogue dropped a final jump's delay-slot `nop` from 302 sizes;
- the assembler pads backward branches in stubs (now `.word`s);
- calls to a function in the same file, or to one of several identical
  copies of a helper, resolved to the wrong address in the check;
- jump tables in compiled level code were refused;
- spimdisasm left some level data unnamed, and `CONTEXT.md` gave `$gp`
  globals at 0x15F000 and up executable names.

Open: some near-misses needed per-file flags (`-G8 -mno-split-addresses`
for func_L00_00235FF8), and retail keeps a redundant `andi` in
func_L00_00286128 that our compiler drops: the level code may have been
built with other flags, which isn't mapped yet.

2026-09-28 flag sweep: the best candidate of each of the seven level
near-misses left (func_L00_00233B08, 002352D0, 00235CA0, 00236DE8,
0023B610, 0023BAB8, 0023D750) was rerun with `-G8`,
`-mno-split-addresses` and both. None matched or improved:

- `-mno-split-addresses` made four worse (00233B08 8 → 43 bytes off,
  002352D0 and 0023BAB8 change size) and left the rest as they were.
- `-G8` doesn't compile help_00232560.c, whose declarations rely on
  `-G2` placement, and changed nothing in hud_00235960.c.

So these residuals are not a file-wide flag. func_L00_00235FF8's flags
stay a per-function exception until a second function needs them.
