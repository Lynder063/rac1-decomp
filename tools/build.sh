#!/usr/bin/env bash
set -euo pipefail
export PS2DEV=/usr/local/ps2dev
export PATH="$PATH:$PS2DEV/bin:$PS2DEV/ee/bin"
cd "$(dirname "$0")/.."
make PS2DEV="$PS2DEV" "$@"
