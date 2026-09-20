#!/usr/bin/env bash
# Full build with the SN ProDG toolchain, from a fresh clone or an existing
# tree, followed by the match audit.
#
#   bash tools/build_sn.sh
#
# Prerequisites: baserom/SCES_509.16, `bash tools/setup_asm.sh` done, and the
# toolchain mirrors in toolchain/ (see README.md). Keep the repo at a SHORT
# path: the toolchain's make 3.77 fails with "CreateProcess ... failed" when
# the working directory path is long.
set -uo pipefail
cd "$(dirname "$0")/.."
TC=toolchain/sn-prodg-3.01/usr/local/sce/ee/gcc/bin

[ -d asm/nonmatchings ] || { echo "asm/ missing: run bash tools/setup_asm.sh"; exit 1; }
[ -x "$TC/make.exe" ] || { echo "toolchain/sn-prodg-3.01 missing (see README.md)"; exit 1; }
[ -d toolchain/sn-prodg-24 ] || { echo "toolchain/sn-prodg-24 missing (see README.md)"; exit 1; }

bash tools/build_sn_data.sh >/dev/null || { echo "*** data objects failed"; exit 1; }

# Always from scratch: a failed compile leaves the previous .o behind, whose
# INCLUDE_ASM stubs still hold retail's bytes -- a fictional match.
rm -rf build-sn/core build-sn/libgcc
rm -rf build-sn/game
"$TC/make.exe" -f Makefile.sn >build-sn/make.log 2>&1
rc=$?
if [ $rc -ne 0 ]; then tail -20 build-sn/make.log; echo "*** make failed (exit $rc)"; exit 1; fi

bash rac1.ld.sh >/dev/null

# bss symbols have no definitions anywhere; their names are their
# addresses. Collect them from the linker's complaints, then equate.
make_bss_equs() {
  "$TC/ee-ld.exe" -T build-sn/rac1.ld -o build-sn/rac1.elf >build-sn/ld_undef.log 2>&1
  grep -oE "undefined reference to \`[^']+'" build-sn/ld_undef.log \
    | sed -E "s/.*\`([^']+)'/\1/" | sort -u >build-sn/undefined_syms.txt
  python tools/gen_bss_equs.py >/dev/null
  "$TC/ee-as.exe" -o build-sn/bss_equs.o build-sn/bss_equs.s
}

[ -f build-sn/bss_equs.o ] || make_bss_equs || exit 1

# The equates are cached, so C that newly references a bss symbol fails to
# link. Regenerate and retry once before giving up, rather than making every
# contributor learn to delete the file by hand. The retry is unconditional:
# with symbols missing this ld build does not always report "undefined
# reference" -- it can segfault instead (verified).
if ! "$TC/ee-ld.exe" -T build-sn/rac1.ld build-sn/bss_equs.o -o build-sn/rac1.elf 2>build-sn/ld.log; then
  echo "link failed -- regenerating build-sn/bss_equs.o and retrying once"
  make_bss_equs || exit 1
  "$TC/ee-ld.exe" -T build-sn/rac1.ld build-sn/bss_equs.o -o build-sn/rac1.elf \
    || { tail -5 build-sn/ld.log; echo "*** link failed"; exit 1; }
fi

python tools/sweep_matches.py | sed -n '/=== .* audited ===/,/byte mismatch/p'
python tools/check_layout.py | tail -1
