# Ratchet & Clank Decompilation

[![Progress report](https://github.com/Lynder063/rac1-decomp/actions/workflows/progress.yml/badge.svg)](https://github.com/Lynder063/rac1-decomp/actions/workflows/progress.yml)
[![Code](https://decomp.dev/Lynder063/rac1-decomp.svg?mode=shield&label=Code&measure=matched_code_percent)](https://decomp.dev/Lynder063/rac1-decomp)
[![Functions](https://decomp.dev/Lynder063/rac1-decomp.svg?mode=shield&label=Functions&measure=matched_functions)](https://decomp.dev/Lynder063/rac1-decomp)

A work-in-progress **matching decompilation** of *Ratchet & Clank* (Insomniac
Games, 2002) for the PlayStation 2. The goal is C/C++ source that, built with
the original toolchain, produces a byte-identical copy of the retail executable.

The project runs in two phases:

1. **Match.** Write source that compiles to exactly the retail machine code.
   This is what proves a function has been understood: the compiler judges
   the result, not a read-through.
2. **Make it readable.** Refactor matched code toward idiomatic C++ with real
   names, types and structure. The matching build acts as the regression test
   for every cleanup.

## Progress

Progress is tracked on [decomp.dev](https://decomp.dev/Lynder063/rac1-decomp).

| Version | Region | Game ID | Code | Functions |
|---|---|---|---|---|
| v2.00 | PAL (En, Fr, De, Es, It) | `SCES_509.16` | [![](https://decomp.dev/Lynder063/rac1-decomp.svg?mode=shield&label=Code&measure=matched_code_percent)](https://decomp.dev/Lynder063/rac1-decomp) | [![](https://decomp.dev/Lynder063/rac1-decomp.svg?mode=shield&label=Functions&measure=matched_functions)](https://decomp.dev/Lynder063/rac1-decomp) |

| Category | Progress | Contents |
|---|---|---|
| Game | [![](https://decomp.dev/Lynder063/rac1-decomp.svg?mode=shield&category=game&label=Game&measure=matched_code_percent)](https://decomp.dev/Lynder063/rac1-decomp/SCES_509.16?category=game) | Game and SDK code (`src/core/`, `src/text.c`) |
| libgcc | [![](https://decomp.dev/Lynder063/rac1-decomp.svg?mode=shield&category=libgcc&label=libgcc&measure=matched_code_percent)](https://decomp.dev/Lynder063/rac1-decomp/SCES_509.16?category=libgcc) | GCC runtime library rebuilt from GCC's own source (`src/libgcc/`) |

The whole image already links with every function at its retail address.
Functions that are not decompiled yet are included as assembly.

## Disclaimer

This repository contains **no game assets, executable, or disassembly**. To
build it you need your own legally obtained copy of the game. Read
[`LEGAL.md`](LEGAL.md) before contributing.

## Building

The original compiler is SN Systems ProDG, a set of native Windows programs,
so the build runs on **Windows** with **Git Bash**. Building elsewhere (for
example under Wine) is untested.

Requirements: Git, Git Bash, and Python 3.10 or newer.

### 1. Clone to a short path

```
git clone https://github.com/Lynder063/rac1-decomp.git C:\rac1-decomp
```

The toolchain's `make` 3.77 fails with `CreateProcess ... failed` when the
repository path is long, so keep it short.

### 2. Add your executable

Copy `SCES_509.16` from your disc to `baserom/SCES_509.16`. The expected
SHA-1 is:

```
79956931bd62fafd8d20fa2eae796dbaf2e15e83
```

### 3. Install Python dependencies and generate the disassembly

```
pip install -r requirements.txt
bash tools/setup_asm.sh
```

`setup_asm.sh` checks the executable's hash and the pinned splat and
spimdisasm versions, then generates `asm/` with
[splat](https://github.com/ethteck/splat). `asm/` is not tracked in git.

### 4. Get the toolchain

The build uses two community mirrors of the SN Systems / Sony PS2 toolchains.
They are third-party mirrors of commercial software and are not part of this
repository:

```
git clone https://github.com/AngheloAlf/SN-Systems-ProDG_for_PS2_3.01 toolchain/sn-prodg-3.01
git clone https://github.com/AngheloAlf/sce_ps2_sdk_24 toolchain/sn-prodg-24
```

- `sn-prodg-3.01` provides `make`, the assembler and the linker.
- `sn-prodg-24` provides the compilers:
  - GCC 2.95.3 (SN BUILD v1.14) for game code;
  - Sony's `2.9-ee-991111` for libgcc.

See [`docs/TOOLCHAIN.md`](docs/TOOLCHAIN.md) for how this was determined.

### 5. Build

```
bash tools/build_sn.sh
```

This builds and links `build-sn/rac1.elf`, then audits every decompiled
function against the retail executable on size and bytes:

```
=== 416 decompiled functions audited ===
  exact (size AND bytes): 364
  size mismatch:          0
  byte mismatch:          52
every function is at its retail address
```

## Contributing

The full procedure is in [`docs/WORKFLOW.md`](docs/WORKFLOW.md). In short:

1. Pick a function. `python tools/rank_candidates.py` lists promising ones.
   Before decompiling, check whether the function is library code with a
   real source.
2. Get a starting point with `python tools/m2c.py func_XXXXXXXX`. That runs
   [m2c](https://github.com/matt-kempster/m2c) with context from
   `sh tools/gen_ctx.sh`.
3. Iterate with `sh tools/diff.sh func_XXXXXXXX`, which runs
   [asm-differ](https://github.com/simonlindholm/asm-differ).
4. Verify from scratch with `bash tools/build_sn.sh`.
5. Regenerate the progress report with
   `python tools/gen_progress_report.py`, and commit it together with your
   change. CI fails if the report is out of date.

m2c and asm-differ are used from local clones (not vendored):

```
git clone https://github.com/matt-kempster/m2c tools/ext/m2c
git clone https://github.com/simonlindholm/asm-differ tools/ext/asm-differ
```

Known compiler behaviour, useful levers and measured dead ends are collected
in [`docs/DECOMP_PROGRESS.md`](docs/DECOMP_PROGRESS.md).

## Project structure

| Path | Contents |
|---|---|
| `src/core/` | The `core_text` segment, one file per retail object (named by start address), split at the retail linker's own fill between objects |
| `src/text.c` | The `text` segment (game code); its object boundaries are not known yet |
| `src/libgcc/` | GCC's `libgcc2.c` and `fp-bit.c` (GPL with the libgcc exception) plus stubs, see its README |
| `include/` | Shared headers, recovered structs, assembly macros |
| `config/splat.yaml`, `config/symbol_addrs.txt` | How the executable is split into functions |
| `config/core_text.objects` | Link order of every `core_text` object |
| `Makefile.sn`, `rac1.ld.sh` | Compile and link at retail addresses |
| `tools/` | Build, audit, progress-report and decompilation helper scripts |
| `docs/` | Workflow, toolchain notes, progress log, Ghidra policy |
| `progress/report.json` | objdiff-format progress report read by decomp.dev |

## Resources

- [decomp.wiki](https://decomp.wiki): matching-decompilation knowledge base
- [decomp.dev](https://decomp.dev): progress tracking
- [splat](https://github.com/ethteck/splat),
  [spimdisasm](https://github.com/Decompollaborate/spimdisasm),
  [m2c](https://github.com/matt-kempster/m2c),
  [asm-differ](https://github.com/simonlindholm/asm-differ),
  [objdiff](https://github.com/encounter/objdiff)
- [AngheloAlf's PS2 toolchain mirrors](https://github.com/AngheloAlf)
- [RatchetModding/rac-modding-resources](https://github.com/RatchetModding/rac-modding-resources)
- [Wrench](https://github.com/chaoticgd/wrench): Ratchet & Clank PS2 asset
  tooling, useful for cross-referencing structures

## License

To be decided for the project's own code. The files in `src/libgcc/` that
come from GCC keep their original license (GPL v2 with the libgcc linking
exception), as stated in each file's header.

*Ratchet & Clank* is a trademark of Sony Interactive Entertainment. This
project is not affiliated with or endorsed by Sony or Insomniac Games.
