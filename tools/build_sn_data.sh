#!/usr/bin/env bash
# Assembles the standalone data/rodata .s files (not part of any C file)
# through the SN Systems ProDG assembler. See docs/TOOLCHAIN.md.
set -euo pipefail
cd "$(dirname "$0")/.."
. tools/toolchain.sh

AS="$TC/ee-as.exe"
mkdir -p build-sn

for f in asm/data/*.s; do
  name=$(basename "$f")
  out="build-sn/${name%.s}.o"
  sn "$AS" -I include-sn -I include -o "$out" "$f"
  echo "assembled $out"
done

# core_rdata minus the tables libgcc objects now provide themselves
# (__divdi3's static __clz_tab at D_00152B18). rac1.ld.sh links the parts
# with the object's .rodata in between. See tools/split_data_s.py.
python tools/split_data_s.py asm/data/core_rdata.rodata.s build-sn/core_rdata D_00152B18
for n in 1 2; do
  sn "$AS" -I include-sn -I include -o "build-sn/core_rdata_$n.o" "build-sn/core_rdata_$n.s"
  echo "assembled build-sn/core_rdata_$n.o"
done

# bss padding objects -- see rac1.ld.sh for why these are real loaded
# sections rather than NOLOAD.
printf '.section .core_bss_pad, "wa"\n.skip 0xab80\n' > build-sn/core_bss_pad.s
printf '.section .bss_pad, "wa"\n.skip 0x4200\n' > build-sn/bss_pad.s
sn "$AS" -o build-sn/core_bss_pad.o build-sn/core_bss_pad.s
sn "$AS" -o build-sn/bss_pad.o build-sn/bss_pad.s
echo "assembled build-sn/core_bss_pad.o build-sn/bss_pad.o"
