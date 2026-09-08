# rac1-decomp

Matching decompilation of *Ratchet & Clank* (2002, PS2). Goal: C source
that rebuilds to a byte-identical (or as close as achievable) copy of the
original retail executable, in the tradition of sm64/papermario/mm-decomp
and other PS2-era matching-decomp projects.

> Read [`LEGAL.md`](LEGAL.md) first. This repo never contains the original
> disc image, executable, or any asset extracted from it — only build
> tooling and, as progress is made, decompiled C source. You supply a dump
> of your own legally owned copy locally; it is never committed.

## Status

Not started. This is scaffolding only — no disassembly or source has been
produced yet.

## Plan

1. **Baserom setup** — contributor dumps their own disc to a local, git-
   ignored `baserom/` (or similar), never committed.
2. **Splitting** — [`splat`](https://github.com/ethteck/splat) config
   (`config/splat.yaml` once written) breaks the executable into per-object
   `asm/` (MIPS assembly, git-ignored raw, or committed only if the
   project later decides raw asm is fine to track — TBD) and asset
   segments.
3. **Symbol map** — `config/symbol_addrs.txt` names functions/data as they
   get identified, cross-referenced against community RC1 research
   (Wrench/Replanetizer/RatchetModding docs) for symbol names and struct
   layouts already known from the PS3 remaster's format work.
4. **Decompilation loop** — per function: disassembly -> `m2c`/`mips_to_c`
   candidate -> hand-cleaned C in `src/` -> compile with the target
   toolchain (era-appropriate GCC/EE compiler) -> diff object code against
   the original -> iterate to a match (or leave as an `asm`-included stub
   if a match isn't reached yet).
5. **Build verification** — a `Makefile`/build script that reproduces the
   original executable's checksum from baserom + current `src/`/`asm/`
   split, so progress is objectively measurable (matched vs. non-matched
   function count, like other decomp projects report).

None of this is built yet — next concrete step is picking a target build
(region/revision) and standing up `splat` against a baserom.

## Relationship to rac1-port

This is a separate effort from the
[`rac1-port`](https://github.com/) clean-room engine reimplementation
(same author). That project stays a from-scratch engine that loads
Wrench/Replanetizer-documented asset formats and behaves like the original
game without transcribing its code. This repo is the opposite approach —
transcription-as-goal — and is kept separate so the two don't blur legal
postures or get confused by contributors.

## Credits / community resources

- [RatchetModding/rac-modding-resources](https://github.com/RatchetModding/rac-modding-resources)
- [Wrench](https://github.com/chaoticgd/wrench) — existing RC1/RC2/RC3 PS2
  asset pipeline/level editor; useful for cross-referencing known struct
  layouts and constants while decompiling.
- [splat](https://github.com/ethteck/splat) — disassembly/asset splitter
  used by most modern matching-decomp projects.
- [decomp.me](https://decomp.me/) — collaborative match-scoring tool,
  useful once individual functions are being worked.

## License

TBD.
