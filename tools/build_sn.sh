#!/usr/bin/env bash
# Full build with the SN ProDG toolchain, from a fresh clone or an existing
# tree, followed by the match audit.
#
#   bash tools/build_sn.sh
#
# Prerequisites: baserom/SCES_509.16, `bash tools/setup_asm.sh` done, and the
# toolchain mirrors in toolchain/ (see README.md). On Windows keep the repo at
# a SHORT path: the toolchain's make 3.77 fails with "CreateProcess ...
# failed" when the working directory path is long. Elsewhere the programs run
# through Wine (tools/toolchain.sh; `bash tools/docker/run.sh bash
# tools/build_sn.sh` on macOS).
set -uo pipefail
cd "$(dirname "$0")/.."
. tools/toolchain.sh

[ -d asm/nonmatchings ] || { echo "asm/ missing: run bash tools/setup_asm.sh"; exit 1; }
[ -f "$TC/make.exe" ] || { echo "toolchain/sn-prodg-3.01 missing (see README.md)"; exit 1; }
[ -d toolchain/sn-prodg-24 ] || { echo "toolchain/sn-prodg-24 missing (see README.md)"; exit 1; }

bash tools/build_sn_data.sh >/dev/null || { echo "*** data objects failed"; exit 1; }

# Always from scratch: a failed compile leaves the previous .o behind, whose
# INCLUDE_ASM stubs still hold retail's bytes -- a fictional match.
rm -rf build-sn/core build-sn/libgcc
rm -rf build-sn/game
make_sn >build-sn/make.log 2>&1
rc=$?
if [ $rc -ne 0 ]; then tail -20 build-sn/make.log; echo "*** make failed (exit $rc)"; exit 1; fi

bash rac1.ld.sh >/dev/null

# bss symbols have no definitions anywhere; their names are their
# addresses. Collect them from the linker's complaints, then equate.
# Adds whatever the link still reports as undefined to the bss equates.
# The link runs WITH the current equates, so only the new symbols are
# reported, and the list only ever grows. That matters because this ld
# can crash part-way through a long run of undefined references
# ("Unhandled illegal instruction"), and a crashed run lists only the
# objects before the crash. Returns nonzero when nothing new was found.
update_bss_equs() {
  local equs=""
  [ -f build-sn/bss_equs.o ] && equs=build-sn/bss_equs.o
  sn "$TC/ee-ld.exe" -T build-sn/rac1.ld $equs -o build-sn/rac1.elf >build-sn/ld_undef.log 2>&1
  local new
  new=$(grep -oE "undefined reference to \`[^']+'" build-sn/ld_undef.log \
    | sed -E "s/.*\`([^']+)'/\1/" | sort -u)
  [ -n "$new" ] || return 1
  touch build-sn/undefined_syms.txt
  { echo "$new"; cat build-sn/undefined_syms.txt; } | sort -u >build-sn/undefined_syms.tmp
  mv build-sn/undefined_syms.tmp build-sn/undefined_syms.txt
  python tools/gen_bss_equs.py >/dev/null
  sn "$TC/ee-as.exe" -o build-sn/bss_equs.o build-sn/bss_equs.s
}

[ -f build-sn/bss_equs.o ] || update_bss_equs || true

# The equates are cached, so C that newly references a bss symbol fails to
# link. Add the missing symbols and retry, a few passes at most, rather than
# making every contributor learn to delete the file by hand.
for pass in 1 2 3 4 5 6; do
  if sn "$TC/ee-ld.exe" -T build-sn/rac1.ld build-sn/bss_equs.o -o build-sn/rac1.elf 2>build-sn/ld.log; then
    break
  fi
  echo "link failed -- adding the missing bss symbols (pass $pass)"
  if ! update_bss_equs || [ "$pass" = 6 ]; then
    tail -5 build-sn/ld.log; echo "*** link failed"; exit 1
  fi
done

python tools/sweep_matches.py | sed -n '/=== .* audited ===/,/byte mismatch/p'
python tools/check_layout.py | tail -1
python tools/check_image.py
