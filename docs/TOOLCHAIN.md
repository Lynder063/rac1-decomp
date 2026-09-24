# Toolchain

What builds the matching image today, and why each piece is the way it
is. The procedure (setup, iterate, verify, publish) is in
`docs/WORKFLOW.md`; how each choice was established is in the SOLVED
sections of `docs/DECOMP_PROGRESS.md`. How the project got here is kept
under "History" at the end of this file.

## Where the binaries come from

Two community mirrors of SN Systems / Sony PS2 toolchains, cloned into
`toolchain/` (gitignored and never committed; the clone commands are in
the README). They are third-party mirrors of commercial software.

| Binary | Mirror, as cloned | Used for |
|---|---|---|
| `bin/ee-gcc2953.exe`: GCC 2.95.3, **SN BUILD v1.14** | `sce_ps2_sdk_24` → `toolchain/sn-prodg-24/local/sce/ee/gcc/` | compiles all game code (`src/core/`, `src/game/`), both segments; also assembles every compiler-generated `.s` (`-c`) |
| `bin/ee-gcc.exe`: Sony's **gcc 2.9-ee-991111** | same | compiles libgcc (`src/libgcc/`) to `.s` |
| `bin/ee-as.exe` | `SN-Systems-ProDG_for_PS2_3.01` → `toolchain/sn-prodg-3.01/usr/local/sce/ee/gcc/` | assembles the standalone data objects (`tools/build_sn_data.sh`) |
| `bin/ee-ld.exe` | same | links everything at retail addresses |
| `bin/make.exe` (GNU make 3.77) | same | runs `Makefile.sn`. Keep the repository path short: it fails with `CreateProcess ... failed` when the path is long |
| `bin/ee-size.exe` | same | prints object sizes at the end of `make` |

The other SN sub-builds in the mirrors, v1.36 (`ee-gcc2953.exe` in
`sn-prodg-3.01`) and v2.74 (`ee-gcc295.exe` in `sn-prodg-24`), are not
used; see the next section.

## Compilers and flags

All game code is compiled with **`-O2 -G2 -Iinclude -Wa,-I,.`**.

- **v1.14 for both segments.** Retail's two code segments were built by
  two different SN sub-builds. `text` spills callee-saved registers with
  `sq`/`lq`, exactly as v1.14 does. `core_text` spills them with
  `sd`/`ld`: v1.36 emits those mnemonics but lays the save slots out
  mirrored, while v1.14 has retail's slot layout. So `core_text` is
  compiled with v1.14 too and then narrowed by `tools/fix_core_spills.py`.
  No command-line flag changes either behaviour; the exhaustive flag
  search is recorded in `docs/DECOMP_PROGRESS.md` ("SOLVED — `sq`/`lq`
  was never a flag").
- **`-G2`, not `-G0`.** Retail's small-data threshold is between 1 and 3:

  | `-G` | float constants | small globals via `$gp` |
  |---|---|---|
  | `-G0` | inline | never, so no `$gp` function can match |
  | `-G1`..`-G3` | **inline** | **yes** |
  | `-G4`+ | pooled into `.lit4` | yes (and `.lit4` has nowhere to live: the small-data window is full) |

  Retail inlines float constants *and* uses `$gp`. Placement follows an
  extern's *declared* size, which is what `NOT_SDA` and `MACRO_ADDR` in
  `include/common.h` steer. See `notes/gp-investigation.md`.
- **`-Wa,-I,.`**: plain `-I` only reaches the preprocessor. The assembler
  needs its own include path to resolve the `.include "asm/..."` that
  every `INCLUDE_ASM` expands to.
- **libgcc** is built by Sony's 2.9-ee through its **driver**, never `cc1`
  directly: the driver passes the target predefines (`__mips__`,
  `__R5900__`, ...) that `longlong.h` picks its MIPS multiply and divide
  primitives from. It runs with `-O2 -G2 -S`, and v1.14's driver assembles
  the result. See `src/libgcc/README.md`.

## What happens to each object

`Makefile.sn` takes the link order and object start addresses from
`config/core_text.objects` and `config/text.objects`.

| Source | Steps |
|---|---|
| `src/core/<ADDR>.c` (`core_text`) | v1.14 `-S` → `tools/fix_core_spills.py` → `tools/fix_tail_calls.py` → `tools/check_macro_slots.py` → assemble |
| `src/game/**.c` (`text`) | v1.14 `-S` → `tools/fix_tail_calls.py` → `tools/check_macro_slots.py` → assemble |
| `src/libgcc/libgcc2.c`, `src/libgcc/fp-bit.c` | 2.9-ee `-S`, one object per `L_*` module, like `libgcc.a`'s members → assemble; no rewriters |
| `src/libgcc/nonmatching_*.c` | asm stubs for the modules that do not match yet, and for linker fill |
| `asm/data/*.s` | `ee-as.exe` directly (`tools/build_sn_data.sh`); `core_rdata` is cut around `__divdi3`'s `__clz_tab` by `tools/split_data_s.py` |

Then `rac1.ld.sh` writes `build-sn/rac1.ld`, placing every object at its
retail address, `tools/gen_bss_equs.py` supplies the bss-only symbols, and
`ee-ld.exe` links `build-sn/rac1.elf`. `tools/build_sn.sh` runs all of it
from scratch and finishes with the audit (`tools/sweep_matches.py`,
`tools/check_layout.py`).

## The post-processors

Each rewrites the compiler's `.s` before it is assembled, and each is
scoped so that it cannot touch a function that does not need it.

- **`tools/fix_core_spills.py`**: narrows `$sp`-relative callee-saved
  spills from `sq`/`lq` to `sd`/`ld` in `core_text` objects. The layout
  already matches retail, so it is a pure mnemonic substitution with no
  offset arithmetic. It keys on address: from 0x12DB18 (boot.cpp's
  `main`) to the end of the segment retail spills with `sq`, and those
  objects are left alone.
- **`tools/fix_tail_calls.py`**: turns a compiled call-and-return into
  retail's bare `j target`, since GCC 2.95 has no sibling-call
  optimisation. It fires only for the functions listed in
  `tools/tail_call_functions.txt`, those whose *retail* form is a bare
  tail jump; keyed on our own output it once broke eight exact matches.
  It deletes the frame and moves at most the last body instruction into
  the jump's delay slot (SN's assembler fills delay slots only from after
  a branch). It never synthesises an instruction.
- **`tools/strip_dead.py`**: removes a function the way retail's linker
  dead-stripped unreferenced code, from its label through its final jump,
  keeping the delay-slot word (optionally as a named function, e.g.
  `func_0011DF10`). Used for libgcc's L__main, where retail kept only
  `__do_global_dtors`'s delay slot; see "Retail's linker dead-stripped
  unreferenced functions" in `docs/DECOMP_PROGRESS.md`.
- **`tools/check_macro_slots.py`**: a `MACRO_ADDR` global access that the
  compiler put in a branch delay slot is rewritten to the `$gp`-relative
  form retail's toolchain produced there. Anything it cannot handle (an
  `la` in a slot) fails the build, and a symbol outside the ±32 KiB
  small-data window fails the link loudly (`R_MIPS_GPREL16` truncated).

## Assembler and linker quirks the build relies on

- **Numeric register names.** SN's `ee-as` rejects `$ra`, `$sp`, `$t6`
  and so on. `tools/sn_regnames.py` rewrites `asm/` to `$31`, `$29`,
  `$14` (VU registers stay symbolic). `tools/setup_asm.sh` runs it, and
  so does every `make` (the `regnames` target); it is idempotent.
- **`.set noreorder` / `.set noat` around every stub.** Without them
  `ee-as` moves a different instruction into a delay slot than retail
  had. `INCLUDE_ASM` (`include/include_asm.h`) wraps each `.s` in both.
- **No `.aent`.** This GAS build rejects it, so `alabel` in
  `include/labels.inc` omits it. It is debug information only and emits
  no bytes.
- **`jlabel` is global.** A jump table can live in a different object
  (rodata) from the code that uses it, and a `.local` symbol cannot
  satisfy a reference from another object.
- **No `NOLOAD`.** `ee-ld.exe` does not advance the location counter after
  a `NOLOAD` section, so the next section silently overlaps it. The bss
  regions are therefore real, zero-filled sections (`.skip` in the
  `core_bss_pad`/`bss_pad` objects that `tools/build_sn_data.sh` writes).
- **bss symbols by address.** Symbols that exist only as bss are equated
  from their splat names (`D_0015ED10` → 0x0015ED10) by
  `tools/gen_bss_equs.py`. `tools/build_sn.sh` regenerates the equates and
  retries once when a link fails.
- **Delay slots are filled only from after a branch.** The assembler
  inserts delay-slot `nop`s that are not in the compiler's `.s`, so count
  instructions in the linked ELF (`tools/diff_words.py`), never in `.s`.
  See "SN's assembler fills delay slots only from AFTER the branch" in
  `docs/DECOMP_PROGRESS.md`.
- **VU0 macro-mode instructions** assemble natively with `ee-as`.
  `tools/setup_asm.sh` still runs `tools/fix_vu0_macro.py`, which writes
  them as `.word` with the instruction's own encoding; the bytes are
  identical either way.

## Running it on macOS and Linux

The toolchain is 32-bit Windows programs that import nothing but
`KERNEL32.dll` (the C runtime is linked in statically), so Wine runs them
unchanged. `tools/toolchain.sh`, and `tools/toolchain.py` for the Python
tools, choose how: on Windows the programs run directly and the build
uses SN's `make.exe`; anywhere else each program runs through `wine` and
the build uses the host's GNU make with `-j`. `WINE=...` and
`MAKE_SN=...` override either.

`tools/docker/` packages that as an image: 32-bit (`linux/386`) Debian
bookworm with classic 32-bit Wine, make, and a Python venv holding the
pinned `requirements.txt` plus the asm-differ and m2c prerequisites.
`bash tools/docker/run.sh <command>` builds it on first use and runs the
command with the repository mounted at the same path. A Linux x86 host
with 32-bit Wine installed can run the scripts directly instead.

Why a 32-bit container rather than an amd64 one:

- **Rosetta cannot run 32-bit x86 code under Linux.** Wine's WoW64 mode,
  the only way a 64-bit Wine runs 32-bit programs, switches to the
  32-bit code segment (selector `0x23`). Measured in an OrbStack amd64
  machine: a minimal program that does that dies with `rosetta error:
  invalid gdt selector index 4`, and Wine never finishes setting up its
  32-bit half, so every toolchain program fails to start. A `linux/386`
  container instead runs entirely under QEMU's user-mode emulator, where
  everything is 32-bit and Wine works.
- **Native macOS Wine is not a good default either.** Homebrew disabled
  its Wine casks on 2026-09-01 (they do not pass Gatekeeper), and macOS
  27 is the last release with full Rosetta 2.

Measured on an Apple M5 Max (18 cores) under QEMU emulation:
`tools/setup_asm.sh` takes about 1.5 minutes, one small object about 3
seconds, and `tools/build_sn.sh` (clean build of every object, link and
audit, `make -j18`) about 37 seconds. The first image build takes about 15
minutes, most of it compiling Levenshtein for asm-differ.

**Verified equivalent.** On 2026-09-23 a from-scratch container build
reproduced the committed `progress/report.json` byte for byte: all 1,688
functions' match percentages, generated on Windows, came out identical
(485 exact, 81 same-size near-misses, 0 size mismatches).

## History

How the toolchain was found. Several measurements here are still cited
elsewhere, so the text is kept as written; wherever it disagrees with the
sections above, the sections above are current.

### First attempt: modern ps2dev GCC under WSL (superseded)

*(Superseded: GCC 15.2 cannot produce matching code, and the SN
toolchain replaced it entirely. The ps2dev `Makefile`, `tools/build.sh`
and `tools/setup_ps2dev.sh` were removed on 2026-09-23.
`tools/fix_vu0_macro.py` remains, see above.)*

#### What's installed

- **WSL2 Ubuntu** (`wsl -d Ubuntu`) — the ps2dev toolchain build process
  assumes Linux; there's no maintained native-Windows build.
- **ps2dev**, installed from the prebuilt release tarball (not built from
  source — much faster) into `/usr/local/ps2dev` inside that WSL instance:
  ```
  export PS2DEV=/usr/local/ps2dev
  sudo mkdir -p $PS2DEV && sudo chown -R $USER:$USER $PS2DEV
  curl -o /tmp/ps2dev-latest.tar.gz -LC - \
    https://github.com/ps2dev/ps2dev/releases/download/latest/ps2dev-ubuntu-latest.tar.gz
  tar -xf /tmp/ps2dev-latest.tar.gz --strip-components 1 -C $PS2DEV
  ```
  This gives `mips64r5900el-ps2-elf-{gcc,as,ld,objdump,...}` —
  **GCC 15.2.0 / binutils 2.45.1**, current mainline, *not* an era-accurate
  compiler (see below).
- `libmpc3` (`apt install`) — `cc1` needs it at runtime, not pulled in
  automatically by the tarball.
- `splat64`, `spimdisasm`, `n64img`, `pygfxd`, `crunch64`, `pyelftools` —
  pip packages (`pip install splat64`, plus the transitive deps splat's
  `setup.py` doesn't declare: `spimdisasm`, `n64img`, `pygfxd`, `crunch64`
  all had to be installed by hand the first time).

Run `tools/build.sh` (or `tools/build.sh clean`) from Windows via:
```
wsl -d Ubuntu -- bash /path/to/tools/build.sh
```

#### Compiler flags that matter

`mips64r5900el-ps2-elf-gcc` defaults to `-mabi=n32`, which uses a different
register-name table than what `spimdisasm` emits (it's configured for
`Abi.EABI64`, per `splat`'s own `ps2` platform module). Without the right
`-mabi`, disassembly re-assembles with "invalid operands" errors on
practically every instruction using `$t4`-`$t7`, immediate-offset loads,
`%hi`/`%lo` relocations, etc. The flags that make it actually match
spimdisasm's register/relocation conventions:

```
-mabi=eabi -mgp64 -march=r5900 -fno-PIC -mno-abicalls -G0
```

#### Known gap: VU0 macro-mode instructions

Insomniac's original compiler could emit R5900 VU0 "macro mode" vector
instructions directly as COP2 opcodes (`vaddq`, `vmulax`, `vdiv`, `vsqrt`,
the whole accumulate-register family, etc). Binutils 2.45.1 has **no
support for these mnemonics at all** (`strings` on `as` turns up nothing
for them) — this isn't a flag issue, the encoder just isn't there. This
hit ~4% of functions in the first split (67 of 1669).

Workaround: `tools/fix_vu0_macro.py` rewrites any disassembly line using
an unsupported VU0 macro-mode mnemonic into a `.word 0x<encoding>` using
the instruction's own raw bytes (already present in spimdisasm's leading
comment on every line) — this is exactly what spimdisasm itself already
does for the handful of opcodes *it* can't decode to text either (see any
pre-existing `.word ... # vsqrt` line splat produced on its own). Net
effect: the object file byte-for-byte encodes the same instruction, it's
just opaque as text until either binutils regains support for these
opcodes or someone hand-fixes it. Re-run it after any fresh `splat split`
— it's idempotent (skips lines already converted).

This is a known, bounded problem across PS2 decomp projects generally, not
specific to this repo — worth checking whether the wider RC1 modding
community (RatchetModding, Wrench) has already solved it with a patched
binutils before re-inventing one here.

#### Known gap: not era-accurate (superseded above for the assembler; compiler flags still unverified)

GCC 15.2 will not produce byte-identical code to whatever Insomniac
actually built RC1 with circa 2002 (almost certainly a much older
GCC — PS2 SDKs of that era were typically GCC 2.9x/3.x-based, sometimes
with vendor patches). This means **true instruction-for-instruction
matching is not yet possible** with this toolchain; right now we can only
verify "does it assemble" and "is the resulting size in the right
ballpark", not "is this a byte-perfect match". Finding/building the
correct-era compiler is unsolved and is the next real blocker for the
matching-decomp workflow proper (as opposed to the split/scaffold we have
now).

#### WSL invocation gotcha

Running `wsl.exe -d Ubuntu -- bash -c '...inline script with $VARS...'`
from this environment does **not** reliably preserve variable
expansion/assignment inside the inline `-c` string (`export FOO=bar;
echo $FOO` prints empty) — but running the exact same logic from a
`.sh` file on disk (`wsl.exe -d Ubuntu -- bash /mnt/c/.../script.sh`)
works completely normally. Root cause not fully diagnosed; workaround is
just "always use a script file", which is what `tools/build.sh` and
`tools/setup_ps2dev.sh` do.

Also: prefix `wsl.exe` calls that pass `/mnt/c/...` paths with
`MSYS_NO_PATHCONV=1` when invoking from this environment's Bash tool
(git-bash) — otherwise it rewrites `/mnt/c/...` as if it were a path on
the Windows host and the argument reaches WSL mangled.

### Update: found the real era-accurate compiler

*(Its assembler findings still hold. This mirror still provides the
`ee-as` that assembles the data objects, plus `ee-ld` and `make`. Game
code, however, is now compiled by v1.14 from the other mirror, not by
this v1.36; see the top of this file.)*

`toolchain/sn-prodg-3.01/` (gitignored — see below) is a clone of
[AngheloAlf/SN-Systems-ProDG_for_PS2_3.01](https://github.com/AngheloAlf/SN-Systems-ProDG_for_PS2_3.01),
a mirror of SN Systems' **ProDG for PS2 3.01**: `ee-gcc2953.exe`, a real
2002-era **GCC 2.95.3 (SN BUILD v1.36)**, with its own native-Windows
`ee-as.exe`/`ee-ld.exe`/`ee-objdump.exe`. This is the standard way PS2
matching-decomp projects (this game very likely included — SN ProDG was
extremely common for this era/region) obtain an era-correct compiler. It's
a mirror of old **commercial** software, not open source — kept local only
(`toolchain/` is gitignored, same treatment as `baserom/`), never
committed.

Two real findings testing `ee-as.exe` directly against our disassembly
(see `tools/sn_regnames.py` and the verification below):

1. **It natively supports VU0 macro-mode COP2 instructions** (`vaddq`,
   `vmulax`, `vdiv`, the whole accumulate-register family) that modern
   binutils 2.45.1 can't assemble at all. No `.word`-encoding workaround
   needed with this toolchain — `tools/fix_vu0_macro.py` was a
   modern-binutils-specific stopgap, not a fundamental limitation of the
   game's instruction set.
2. **It doesn't recognize symbolic GPR names** (`$ra`, `$sp`, `$t6`) —
   only numeric (`$31`, `$29`, `$14`). `tools/sn_regnames.py` does that
   translation (VU float regs like `$vf5`/`Q`/`ACC` are untouched, those
   work symbolically already).
3. **It reorders branch delay slots by default** unless `.set noreorder`
   (and `.set noat`) are active — without them it happily moves a
   *different* instruction into a delay slot than the original had. Every
   nonmatching function needs those two directives active before its body
   (`include/labels.inc`'s macros assume this is already the case, per its
   own header comment: "This file is used by the original
   compiler/assembler").

**Verified**: took `func_00125298` (one of the VU0-instruction functions),
applied `sn_regnames.py`, wrapped it in `.set noat` / `.set noreorder`,
assembled with `ee-as.exe`, and diffed all 26 instruction words against
the raw bytes spimdisasm recorded from the retail binary —
**zero mismatches, byte-for-byte identical**, including every VU0
instruction. This is strong evidence this is the right toolchain family
for actual matching decompilation of this game, not just something that
happens to assemble.

### Update: the C compiler side is wired up and looks very promising (superseded)

*(Superseded: the build now compiles both segments with v1.14 at `-G2`
with the post-processors above, and `src/core_text.c` / `src/text.c`
have been split into `src/core/` and `src/game/`.)*

`Makefile.sn` builds every `src/*.c` through `ee-gcc2953.exe` directly
(`-O2 -G0 -Iinclude -Wa,-I,.` — the `-Wa,-I,.` is required: plain `-I`
only affects the C preprocessor, not where the assembler resolves the
`.include` paths inside each `INCLUDE_ASM`-pulled `.s` file). Run it with
the SN toolchain's own bundled `make.exe` (this environment's git-bash has
no `make` on PATH):

```
toolchain/sn-prodg-3.01/usr/local/sce/ee/gcc/bin/make.exe -f Makefile.sn
```

One more fixup was needed: `include/labels.inc`'s `alabel` macro (used for
72 functions with an alternate entry point) emitted `.aent`, which this
GAS build doesn't implement (`Unknown pseudo-op`) — removed it, since it's
only a debug-info marker and doesn't affect emitted bytes.

Both objects now build clean. `tools/check_match.py` compares an object's
`.text` bytes directly against the retail baserom's corresponding ELF
section:

```
build-sn/core_text.o vs retail 'core.text':  size 119296 vs 119288, 6.05% byte mismatch
build-sn/text.o      vs retail '.text':      size 349872 vs 349872 (EXACT), 7.02% byte mismatch
```

`text.o`'s size is an **exact** match already. The remaining ~6-7% of
bytes differ, but the very first mismatch in `core_text.o` is a `jal`
target address — expected, since nothing is linked yet (every function is
still assembled as an independent standalone object; call targets and
data references have no real relocated address to encode). This is not
proof of a full function match anywhere yet, but it's a strong signal the
codegen itself (instruction selection, register allocation, scheduling)
is landing very close to the original, not just "an object file that
happens to assemble."

### Update: linked, whole-binary result — 99.99% byte-exact

*(The first link. `tools/build_sn.sh` replaces the manual commands at
the end, and the per-section numbers are from that first link.
Re-measured on 2026-09-23: the data residual is unchanged, 84 bytes in
`.data` and 1 in `.lit`; every other differing byte in the image now
belongs to one of the kept same-size near-misses in `.text` and
`.core_text`.)*

`rac1.ld.sh` generates `build-sn/rac1.ld` from the same addresses as
`config/splat.yaml`, placing every object (both C files, all 8
data/rodata objects, plus bss padding) at its real retail address, and
`tools/gen_bss_equs.py` resolves the ~240 symbols that only exist as bss
variables (never declared anywhere as real data) by parsing their address
straight out of the splat-assigned name (`D_0015ED10` -> `0x0015ED10` —
splat's naming convention makes the address self-describing for anything
not yet manually analyzed).

Two more toolchain bugs found and worked around along the way:

- **`jlabel`'s default `local` visibility breaks cross-object jump
  tables.** `include/labels.inc` had `jlabel` default to
  `visibility=local` (splat's own default). A `.local` symbol can't
  satisfy an undefined reference from a *different* object at link
  time — and a function's jump table often lives in a separate rodata
  object from the code that uses it. Changed the default to `global`.
- **This `ee-ld.exe` (v2.3.7.513-era) doesn't advance the location
  counter after a `NOLOAD` section.** An explicit `. = X;` placed right
  after a `SECTIONS` entry marked `(NOLOAD)` is silently ignored — the
  next real section lands back at the `NOLOAD` section's own start
  address instead of `X`, silently overlapping everything after it.
  Worked around by making bss regions **real, zero-filled loaded
  sections** (`.skip N` in an assembled object) instead of `NOLOAD` — see
  `core_bss_pad`/`bss_pad` in `tools/build_sn_data.sh`.

Result, comparing every linked section's bytes directly against the
retail ELF's corresponding section:

```
.core_text    0/119288   (0.00%) mismatch  -- EXACT
.core_data    0/142656   (0.00%) mismatch  -- EXACT
.core_rdata   0/7840     (0.00%) mismatch  -- EXACT
.core_lit     0/608      (0.00%) mismatch  -- EXACT
.lit          1/9008     (0.01%) mismatch
.data         84/538920  (0.02%) mismatch
.lvl_vtbl     0/12       (0.00%) mismatch  -- EXACT
.lvl_camvtbl  0/20       (0.00%) mismatch  -- EXACT
.lvl_sndvtbl  0/8        (0.00%) mismatch  -- EXACT
.text         0/349872   (0.00%) mismatch  -- EXACT

TOTAL: 85/1168232 (0.01%) mismatch
```

Every mismatched byte is a small integer off by exactly 1 (e.g. retail
`0x01` vs. ours `0x00`, retail `0x80` vs. ours `0x7f`) — the signature of
a count/size field computed as an address *difference* against one of
`gen_bss_equs.py`'s approximated placeholder addresses, not a real
codegen difference. **Every code section (`.text`/`.core_text`) is a
100% exact match already.**

To reproduce the full build + link + verify:

```
toolchain/sn-prodg-3.01/usr/local/sce/ee/gcc/bin/make.exe -f Makefile.sn
bash tools/build_sn_data.sh
bash rac1.ld.sh
toolchain/sn-prodg-3.01/usr/local/sce/ee/gcc/bin/ee-ld.exe \
    -T build-sn/rac1.ld build-sn/bss_equs.o -o build-sn/rac1.elf
```

Not yet done: chasing the remaining 85-byte residual to zero (would need
real bss symbol declarations with correct sizes rather than
address-guessed placeholders); STL/runtime header availability for
anything beyond plain C; actually decompiling any function into real
(non-`INCLUDE_ASM`) C and confirming it individually matches — this
result proves the *toolchain and disassembly* are sound, not that any
particular function has been understood/renamed/rewritten yet.
