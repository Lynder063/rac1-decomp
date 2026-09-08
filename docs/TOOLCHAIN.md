# Toolchain setup

## What's installed

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

## Compiler flags that matter

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

## Known gap: VU0 macro-mode instructions

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

## Known gap: not era-accurate

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

## WSL invocation gotcha

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
