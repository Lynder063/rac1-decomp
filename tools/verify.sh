#!/usr/bin/env bash
# Compile + link + check one or more symbols, refusing to report a match if
# the compile itself failed. See docs/DECOMP_PROGRESS.md's "Verification
# pitfall": a failed compile leaves the previous .o in place, whose
# INCLUDE_ASM stub still holds retail's own bytes, so check_match.py then
# reports a fictional 0/N "match".
#
# Usage: bash tools/verify.sh <core_text|text> <func_NAME> <size_hex> [more name/size pairs...]
set -u
cd "$(dirname "$0")/.."

SRC="$1"; shift
CC=toolchain/sn-prodg-3.01/usr/local/sce/ee/gcc/bin/ee-gcc2953.exe
LD=toolchain/sn-prodg-3.01/usr/local/sce/ee/gcc/bin/ee-ld.exe

"$CC" -O2 -G0 -Iinclude -Wa,-I,. -c "src/$SRC.c" -o "build-sn/$SRC.o"
cc_rc=$?
if [ $cc_rc -ne 0 ]; then
  echo "COMPILE FAILED (exit $cc_rc) -- any check_match result would be a stale-object lie."
  exit 1
fi

bash rac1.ld.sh >/dev/null || { echo "ld script gen failed"; exit 1; }
"$LD" -T build-sn/rac1.ld build-sn/bss_equs.o -o build-sn/rac1.elf
ld_rc=$?
if [ $ld_rc -ne 0 ]; then
  echo "LINK FAILED (exit $ld_rc)"
  exit 1
fi

while [ $# -ge 2 ]; do
  python tools/check_match.py symbol "$1" "$2"
  shift 2
done
