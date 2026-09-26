# Ratchet & Clank Decompilation

[![Progress report](https://github.com/Lynder063/rac1-decomp/actions/workflows/progress.yml/badge.svg)](https://github.com/Lynder063/rac1-decomp/actions/workflows/progress.yml)
[![Code](https://decomp.dev/Lynder063/rac1-decomp.svg?mode=shield&label=Code&measure=matched_code_percent)](https://decomp.dev/Lynder063/rac1-decomp)
[![Functions](https://decomp.dev/Lynder063/rac1-decomp.svg?mode=shield&label=Functions&measure=matched_functions)](https://decomp.dev/Lynder063/rac1-decomp)
[![Discord](https://img.shields.io/badge/Discord-Join%20Community-5865F2?logo=discord&logoColor=white)](https://discord.gg/Sfd2B54PDG)

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
| Game | [![](https://decomp.dev/Lynder063/rac1-decomp.svg?mode=shield&category=game&label=Game&measure=matched_code_percent)](https://decomp.dev/Lynder063/rac1-decomp/SCES_509.16?category=game) | Game and SDK code (`src/core/`, `src/game/`) |
| libgcc | [![](https://decomp.dev/Lynder063/rac1-decomp.svg?mode=shield&category=libgcc&label=libgcc&measure=matched_code_percent)](https://decomp.dev/Lynder063/rac1-decomp/SCES_509.16?category=libgcc) | GCC runtime library rebuilt from GCC's own source (`src/libgcc/`) |

The whole image already links with every function at its retail address.
Functions that are not decompiled yet are included as assembly.

## Disclaimer

This repository contains **no game assets, executable, or disassembly**. To
build it you need your own legally obtained copy of the game. Read
[`LEGAL.md`](LEGAL.md) before contributing.

## Building

The original compiler is SN Systems ProDG, a set of 32-bit Windows programs.
There are two ways to run it:

- **Windows**, natively, with **Git Bash** and Python 3.10 or newer.
- **Linux and macOS**, through 32-bit Wine in a container
  (`tools/docker/`). Works with **Podman** (Fedora, RHEL, etc.) or **Docker** (Ubuntu, Debian, macOS OrbStack/Docker Desktop). Prebuilt images are automatically pulled from GitHub Container Registry (`ghcr.io/lynder063/rac1-build:latest`), so you don't need to wait 15 minutes compiling the image locally. The container build reproduces the Windows build's progress report byte for byte.

Every command below runs the same on both. On Linux and macOS, prefix it with
`bash tools/docker/run.sh` (which automatically pulls or builds the container and runs the command inside it):

```
bash tools/docker/run.sh bash tools/build_sn.sh
```

### 1. Clone

```
git clone https://github.com/Lynder063/rac1-decomp.git C:\rac1-decomp
```

On Windows keep the path short: the toolchain's `make` 3.77 fails with
`CreateProcess ... failed` when the repository path is long.

### 2. Add your executable

Copy `SCES_509.16` from your disc to `baserom/SCES_509.16`. From a disc
image, `bsdtar -xf game.iso -C baserom SCES_509.16` extracts it (the image
itself stays out of the way; `baserom/` is ignored by git). The expected
SHA-1 is:

```
79956931bd62fafd8d20fa2eae796dbaf2e15e83
```

### 3. Install Python dependencies and generate the disassembly

```
pip install -r requirements.txt      # Windows only; the Docker image has them
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
  - GCC 2.95.3 (SN BUILD v1.14) for game code and the 989snd sound library;
  - Sony's `2.9-ee-991111` for Sony's SDK code and libgcc (the objects
    marked `ee29` in `config/core_text.objects`).

See [`docs/TOOLCHAIN.md`](docs/TOOLCHAIN.md) for how this was determined.

### 5. Build

```
bash tools/build_sn.sh
```

This builds and links `build-sn/rac1.elf`, then audits every decompiled
function against the retail executable on size and bytes. The output looks
like this (these are the numbers as of 2026-09-24; decomp.dev has the
current ones):

```
=== 926 decompiled functions audited ===
  exact (size AND bytes): 903
  size mismatch:          0   (always revert these -- see docs)
  byte mismatch:          23
every function is at its retail address
image matches retail outside the decompiled near-misses (834 bytes differ inside them)
```

## Community

Come hang out with us! Join the **[Ratchet & Clank Decompilation Discord](https://discord.gg/Sfd2B54PDG)**.

Whether you're interested in matching functions, analyzing PS2 disassembly, researching engine quirks, or simply following along with the progress, everyone is warmly welcome!

## Contributing

The full procedure is in [`docs/WORKFLOW.md`](docs/WORKFLOW.md). In short:

1. Pick a function. `python tools/rank_candidates.py` lists promising ones.
   Before decompiling, check whether the function is library code with a
   real source.
2. Get a starting point with `python tools/m2c.py func_XXXXXXXX`. That runs
   [m2c](https://github.com/matt-kempster/m2c) with context from
   `sh tools/gen_ctx.sh` (or `python tools/gen_ctx.py` on Windows).
3. Iterate. `python tools/try_func.py func_XXXXXXXX c1.c c2.c ...`
   compiles each candidate through the real pipeline and says `EXACT` or
   how many bytes are off, in seconds, without touching `src/`.
   [`docs/LEVERS.md`](docs/LEVERS.md) is the one-page list of what makes
   a function match. For a side-by-side view, `sh tools/diff.sh
   func_XXXXXXXX` (or `tools\diff.bat` on Windows) runs
   [asm-differ](https://github.com/simonlindholm/asm-differ).
4. Verify from scratch with `bash tools/build_sn.sh` (or
   `python tools/build_sn.py` on Windows).
5. Regenerate the progress report with
   `python tools/gen_progress_report.py`, and commit it together with your
   change. CI fails if the report is out of date.

On macOS and Linux, prefix each of these with `bash tools/docker/run.sh`.
m2c and asm-differ are used from local clones (not vendored):

```
git clone https://github.com/matt-kempster/m2c tools/ext/m2c
git clone https://github.com/simonlindholm/asm-differ tools/ext/asm-differ
```

Known compiler behaviour, useful levers and measured dead ends are collected
in [`docs/DECOMP_PROGRESS.md`](docs/DECOMP_PROGRESS.md).

If you have questions, run into build issues, or want to collaborate with other contributors, feel free to drop by our [Discord](https://discord.gg/Sfd2B54PDG)!

## Ghidra — AI Decompilation Progress

AI-generated C code from the [rac1-ai-platform](https://github.com/Lynder063/rac1-ai-platform)
can be imported into Ghidra as plate comments and EOL markers, giving you a
starting point for every function directly inside the disassembler.

### Setup

The import is a two-step process:

**Step 1 — Export** (run with Python 3, outside Ghidra):

```bash
# Auto-discovers the platform DB if rac1-ai-platform lives next to this repo
python tools/ghidra_export_progress.py

# Or point at the DB explicitly
python tools/ghidra_export_progress.py --db C:/path/to/rac1-ai-platform/data/ai_decomp.db

# Only export 100% byte-exact matches
python tools/ghidra_export_progress.py --matched-only

# Only export functions with >= 50% match
python tools/ghidra_export_progress.py --min-pct 50
```

This writes `tools/ghidra_import.json` (gitignored — generated data).

**Step 2 — Import** (run inside Ghidra):

1. Open the RaC1 `.elf` (`SCES_509.16`) in Ghidra and run **Auto Analyse**.
2. Open **Window → Script Manager**.
3. Click the gear icon → **Edit Script Paths** → add the full path to `<repo>/tools/`.
4. Find `ghidra_import_progress` in the list and click **Run ▶**.

### What gets added

| Function status | Ghidra annotation |
|---|---|
| Any AI-generated C code | **Plate comment** above the function with status, source file, and full C body |
| Exact match (100%) | Plate comment **+ EOL comment** `[AI-MATCHED 100%]` on the first instruction |

Re-run Step 1 any time you want a fresh export, then re-run Step 2 — existing
comments are overwritten safely.

## Project structure

| Path | Contents |
|---|---|
| `src/core/` | The `core_text` segment, one file per retail object, split at the retail linker's own fill between objects. Files are named by start address until their real source is identified (e.g. `989snd.c`) |
| `src/game/` | The `text` segment, one file per original source file (`hud`, `camera`, `mobyfunc`, `movie/*`...), named after the originals |
| `src/libgcc/` | GCC's `libgcc2.c` and `fp-bit.c` (GPL with the libgcc exception) plus stubs, see its README |
| `include/` | Shared headers, recovered structs, assembly macros |
| `include-sn/` | Assembly macros for assembling the data objects with SN's assembler |
| `config/splat.yaml`, `config/symbol_addrs.txt` | How the executable is split into functions |
| `config/core_text.objects`, `config/text.objects` | Link order and start address of every object |
| `Makefile.sn`, `rac1.ld.sh` | Compile and link at retail addresses |
| `tools/` | Build, audit, progress-report and decompilation helper scripts |
| `docs/` | Workflow, toolchain notes, progress log, Ghidra policy |
| `notes/` | Round notes from September 2026, kept as history; `docs/DECOMP_PROGRESS.md` has the current state |
| `progress/report.json` | objdiff-format progress report read by decomp.dev |

## Resources

- [Discord](https://discord.gg/Sfd2B54PDG): community server for chat, collaboration and questions
- [decomp.wiki](https://decomp.wiki): matching-decompilation knowledge base
- [decomp.dev](https://decomp.dev): progress tracking
- [splat](https://github.com/ethteck/splat),
  [spimdisasm](https://github.com/Decompollaborate/spimdisasm),
  [m2c](https://github.com/matt-kempster/m2c),
  [asm-differ](https://github.com/simonlindholm/asm-differ),
  [objdiff](https://github.com/encounter/objdiff)
- [AngheloAlf's PS2 toolchain mirrors](https://github.com/AngheloAlf)
- [bordplate/RC1](https://codeberg.org/bordplate/RC1): NTSC decomp setup; the
  source file names and boundaries of the `text` segment come from its split
- [Lombyte](https://github.com/mateuszklysz/Lombyte): NTSC decompilation work
  on the same game; some real names and struct layouts in `src/` comments
  (e.g. `src/game/draw.c`, `src/game/vuchain.c`) are corroborated against it
- [RatchetModding/rac-modding-resources](https://github.com/RatchetModding/rac-modding-resources)
- [Wrench](https://github.com/chaoticgd/wrench): Ratchet & Clank PS2 asset
  tooling, useful for cross-referencing structures

## License

To be decided for the project's own code. The files in `src/libgcc/` that
come from GCC keep their original license (GPL v2 with the libgcc linking
exception), as stated in each file's header.

*Ratchet & Clank* is a trademark of Sony Interactive Entertainment. This
project is not affiliated with or endorsed by Sony or Insomniac Games.
