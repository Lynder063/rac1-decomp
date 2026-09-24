#!/usr/bin/env bash
# Regenerate the Ghidra reference decompilation in docs/ghidra/.
#
# REFERENCE ONLY -- the output is never compiled. See docs/GHIDRA.md.
#
# Ghidra, its extension and the JDK all live outside the repo and are
# not committed. Point GHIDRA_DIR/JAVA_HOME at your own copies, or take
# the defaults below, which are what this machine has:
#
#   Ghidra 12.1.3            https://github.com/NationalSecurityAgency/ghidra/releases
#   emotionengine-reloaded   https://github.com/chaoticgd/ghidra-emotionengine-reloaded
#                            (unzip into <ghidra>/Ghidra/Extensions/ --
#                            stock Ghidra has NO R5900 language, so
#                            sq/lq and the COP2 ops will not decode)
#   Temurin JDK 21           winget install EclipseAdoptium.Temurin.21.JDK --source winget
set -euo pipefail
cd "$(dirname "$0")/../.."

# Auto-detect OS and set defaults
case "$(uname -s)" in
  MINGW*|MSYS*|CYGWIN*)
    IS_WINDOWS=true
    GHIDRA_DIR="${GHIDRA_DIR:-/c/Users/lynde/ghidra/ghidra_12.1.3_PUBLIC}"
    export JAVA_HOME="${JAVA_HOME:-/c/Program Files/Eclipse Adoptium/jdk-21.0.12.101-hotspot}"
    HEADLESS_BIN="$GHIDRA_DIR/support/analyzeHeadless.bat"
    path_conv() { cygpath -w "$1"; }
    ;;
  *)
    IS_WINDOWS=false
    # Common Linux Ghidra paths
    GHIDRA_DIR="${GHIDRA_DIR:-${GHIDRA_HOME:-$(ls -d $HOME/ghidra* /opt/ghidra* /usr/local/ghidra* 2>/dev/null | tail -1)}}"
    HEADLESS_BIN="$GHIDRA_DIR/support/analyzeHeadless"
    path_conv() { echo "$1"; }
    ;;
esac

PROJECT_DIR="${PROJECT_DIR:-${TMPDIR:-/tmp}/rac1-ghidra}"
ROM="baserom/SCES_509.16"

[ -f "$ROM" ] || { echo "missing $ROM -- see README for how to extract it"; exit 1; }
[ -n "$GHIDRA_DIR" ] && [ -f "$HEADLESS_BIN" ] || { echo "Ghidra not found. Please set GHIDRA_DIR to your Ghidra install directory."; exit 1; }

python tools/gen_func_table.py
mkdir -p "$PROJECT_DIR" docs/ghidra

# -processor is required: the ELF header says plain MIPS, so without it
# Ghidra picks MIPS:LE:32:default and mis-decodes every 64-bit and
# 128-bit instruction the EE actually uses.
"$HEADLESS_BIN" \
    "$(path_conv "$PROJECT_DIR")" rac1 \
    -import "$(path_conv "$ROM")" \
    -overwrite \
    -processor "r5900:LE:32:default" \
    -scriptPath "$(path_conv "$PWD/tools/ghidra")" \
    -postScript DumpDecompiled.java \
        "$(path_conv "$PWD/docs/ghidra/functions.csv")" \
        "$(path_conv "$PWD/docs/ghidra")"
