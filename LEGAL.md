# Legal scope of this project

This repository is a **matching decompilation** of *Ratchet & Clank* (2002,
PS2, SCUS-97113 / SCES-50916 / SCPS-15006 depending on region) — the
approach used by projects like sm64/papermario/mm-decomp/Klonoa-decomp:
produce C source that, when compiled, reassembles byte-for-byte (or as
close as practically achievable) to the original retail executable.

This is a **different legal posture** than a clean-room reimplementation.
Be deliberate about it:

## What this repo does and does not contain

- **Never** the original disc image, `SLUS`/`SCUS`/`SLES` executable, ELF,
  or any file extracted directly from a copyrighted disc/PSN copy.
- **Never** any asset binary (textures, models, audio, level data) extracted
  from the original game, and never the ROM/ISO/executable itself.
- Build **scripts and config** (`splat.yaml`, symbol maps, linker scripts,
  Makefiles) that describe *how* to reconstruct the original layout from a
  baserom the user supplies themselves.
- `asm/` — MIPS disassembly produced by `splat` from a locally-supplied
  baserom. This **is** committed, per standard matching-decomp practice
  (sm64/papermario/mm-decomp and similar): it's the ground truth every
  not-yet-decompiled function is diffed against, and it's how progress
  (matched vs. non-matched function count) gets tracked. It contains no
  original assets, only code structure recovered by disassembling an
  executable each contributor is expected to already legally own — the same
  legal footing the rest of this file discusses below.
- Progressively, hand-written C source in `src/` that a contributor has
  decompiled from the disassembly in `asm/` and cleaned up to compile back
  to matching (or `INCLUDE_ASM`-stubbed, not-yet-matching) object code.
- Non-matching helper tooling under `tools/`.

## What a contributor/user must supply themselves

- Their own legally owned copy of the game (disc or legally obtained PSN
  ISO), dumped by them.
- A `baserom.<region>.z64`-equivalent (here: a raw `.bin`/`.iso` extract)
  placed outside version control (see `.gitignore`), used locally to run
  `splat` and to verify the build matches via checksum/diff — never
  committed, never redistributed through this repo.

## Why this is a bigger legal step than the RC1 engine-port project

Recreating the original binary's *exact* code shape (not just its
behavior, rewritten independently) sits closer to the disputed edge of
fair use / interoperability doctrine than either format-reverse-engineering
or "observe behavior, reimplement independently" does. The established
decomp-scene norm — and the one this repo follows — is:

1. Never distribute the original ROM/ISO/executable or anything extracted
   directly from it (textures, models, audio, raw disassembly).
2. Only distribute the *tooling and source* needed to rebuild a matching
   executable from a copy the end user already owns and supplies locally.
3. Treat the resulting repo as source-available for research/preservation/
   modding purposes, not as a way to distribute the game or its assets.

This mirrors the norm under which sm64/oot/papermario/many other
matching-decomp projects have operated for years without takedown, but it
is not risk-free, and it is a deliberate choice specific to this project —
not one to extend further (e.g. to hosting extracted assets, or a prebuilt
ROM) without thinking it through again.

## Practical implication

This repo will not build into a runnable game for anyone who doesn't
already own a copy and dump it themselves. Cloning it gets you build
scripts and (as decompilation progresses) increasingly complete C source —
never assets, never the executable.
