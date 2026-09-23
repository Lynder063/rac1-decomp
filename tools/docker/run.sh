#!/usr/bin/env bash
# Run a command inside the rac1-build container (see Dockerfile next to this
# file), with the repository mounted at the same path it has on the host so
# paths in logs and tool output line up. Builds the image on first use.
#
#   bash tools/docker/run.sh bash tools/setup_asm.sh
#   bash tools/docker/run.sh bash tools/build_sn.sh
set -euo pipefail
repo=$(cd "$(dirname "$0")/../.." && pwd)
if ! docker image inspect rac1-build >/dev/null 2>&1; then
  docker build --platform linux/386 -t rac1-build -f "$repo/tools/docker/Dockerfile" "$repo"
fi
tty=; [ -t 0 ] && [ -t 1 ] && tty=-it
exec docker run --rm $tty --platform linux/386 -v "$repo:$repo" -w "$repo" rac1-build "$@"
