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
link-dependent fields masked (jump targets, `lui` values, `$gp` offsets,
non-stack memory offsets; see `mask()` in `tools/overlays.py`).

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
   (it runs spimdisasm in the build container; about 25 minutes).
   `tools/setup_asm.sh` runs it last when `baserom/overlays/` exists. Each
   level is disassembled whole, split exactly at the catalogue's places.
   Of 3,307 functions, 2,990 are written; a sample of 60 assembles to
   retail's bytes (relocations masked) except as noted below. Open:
   - **Jump tables**: the 317 functions that dispatch through one are
     skipped (`build-sn/overlays/asm_work/skipped_jumptables.txt`). Their
     tables are in the level's `data` record, not `lit`.
   - **Resident data** (below 0x15F000) that the executable's asm names is
     left as raw `lui (0x... >> 16)` pairs where spimdisasm had no symbol.
   - **Assembler padding**: GNU as pads some backward branches in a stub
     that ps2eeas did not (func_L00_002422D8 comes out 28 bytes long, and
     naming the raw pairs moves the padding rather than removing it). It
     affects only the stub's own bytes, so matching is unaffected; the
     per-level rebuild needs it fixed.
   - A branch into the next function assembles only with that function in
     the same file.
2. **Sources and matching**: `src/overlays/` stubs, grouped per canonical
   level, and `tools/try_func.py` support for `func_LNN_*` names (retail bytes
   from the dump). The executable build stays untouched.
3. **Audit and progress**: compile `src/overlays/` C and compare each
   function with retail; `progress/report.json` gains categories for the
   shared engine and each level's own code, each distinct function counted
   once. The executable's figures stay as they are.
4. **Per-level rebuild** (later): link each level's program from the same
   sources and compare it with the level's records, as the executable build
   does. Needs the link order and data layout per level.
