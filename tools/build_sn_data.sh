#!/usr/bin/env bash
# Assembles the standalone data/rodata .s files (not part of any C file)
# through the SN Systems ProDG assembler. See docs/TOOLCHAIN.md.
set -euo pipefail
cd "$(dirname "$0")/.."

AS="toolchain/sn-prodg-3.01/usr/local/sce/ee/gcc/bin/ee-as.exe"
mkdir -p build-sn

for f in asm/data/*.s; do
  name=$(basename "$f")
  out="build-sn/${name%.s}.o"
  "$AS" -I include-sn -I include -o "$out" "$f"
  echo "assembled $out"
done

# bss padding objects -- see rac1.ld.sh for why these are real loaded
# sections rather than NOLOAD.
printf '.section .core_bss_pad, "wa"\n.skip 0xab80\n' > build-sn/core_bss_pad.s
printf '.section .bss_pad, "wa"\n.skip 0x4200\n' > build-sn/bss_pad.s
"$AS" -o build-sn/core_bss_pad.o build-sn/core_bss_pad.s
"$AS" -o build-sn/bss_pad.o build-sn/bss_pad.s
echo "assembled build-sn/core_bss_pad.o build-sn/bss_pad.o"
