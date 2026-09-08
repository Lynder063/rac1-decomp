# rac1-decomp

Matching decompilation of *Ratchet & Clank* (2002, PS2). Two phases, in
order:

1. **Matching**: C source that rebuilds to a byte-identical (or as close
   as achievable) copy of the original retail executable, in the tradition
   of sm64/papermario/mm-decomp and other PS2-era matching-decomp
   projects. This is what proves a function has been understood correctly
   — the compiler is the judge, not a read-through.
2. **Readable**: once a function/module matches, refactor it toward
   idiomatic, human-readable C++ — real names, real types, real structure
   — using the matching build as a safety net (re-run the diff after every
   readability change; a mismatch means the "cleanup" actually changed
   behavior). The end goal is a genuinely readable C++ codebase throughout,
   not a permanent wall of `func_XXXXXXXX`/`D_XXXXXXXX`.

> Read [`LEGAL.md`](LEGAL.md) first. This repo never contains the original
> disc image, executable, or any asset extracted from it — only build
> tooling and, as progress is made, decompiled C source. You supply a dump
> of your own legally owned copy locally; it is never committed.

## Status

Scaffolding + toolchain proven, no real decompilation yet:

- `splat` splits SCES-50916 v2.00 (PAL) into `core`/`main` segments using
  the binary's own section names, producing `asm/nonmatchings/` (1669
  functions) and `INCLUDE_ASM`-stubbed `src/{core_text,text}.c`.
- A WSL-hosted `ps2dev` EE cross-compiler (see
  [`docs/TOOLCHAIN.md`](docs/TOOLCHAIN.md)) reassembles both objects
  cleanly (`tools/build.sh`) — `core_text.o`/`text.o` land within ~30
  bytes of the original section sizes, with no real linker script yet.
- Found and verified the likely real era-accurate toolchain: SN Systems
  ProDG GCC 2.95.3, mirrored at `toolchain/sn-prodg-3.01/` (gitignored,
  local only — see `docs/TOOLCHAIN.md`). Its assembler round-trips a real
  disassembled function — VU0 macro-mode instructions included — back to
  byte-for-byte identical machine code once GPR names are numeric
  (`tools/sn_regnames.py`) and `.set noreorder`/`.set noat` are active.
  The compiler side is wired up (`Makefile.sn`), and there's now a real
  linker script (`rac1.ld.sh`) placing everything at retail addresses.
  Comparing the fully linked result against the retail binary section by
  section: **every code section (`.core_text`, `.text`) is a 100% exact
  byte match**; total mismatch across the whole linked binary is
  85 bytes out of 1,168,232 (0.01%), all in data sections and all
  explained (address-guessed bss placeholders feeding a handful of
  count/size fields off by one — see `docs/TOOLCHAIN.md`). This proves
  the toolchain and disassembly round-trip correctly — the precondition
  for real decompilation work, not a substitute for it; no function has
  actually been rewritten as real C yet.
- The earlier modern-`ps2dev`-toolchain path (WSL, GCC 15.2) still works
  as a secondary/fallback build and needed a `.word`-encoding workaround
  for the ~4% of functions using VU0 macro-mode instructions
  (`tools/fix_vu0_macro.py`) since that binutils can't assemble them at
  all — the SN toolchain doesn't need that workaround.
- No symbol names, no linker script, no actual decompiled (matching) C
  yet — every function is still `func_XXXXXXXX`.

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
