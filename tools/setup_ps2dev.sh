#!/usr/bin/env bash
set -euo pipefail

export PS2DEV=/usr/local/ps2dev
sudo mkdir -p "$PS2DEV"
sudo chown -R "$USER":"$USER" "$PS2DEV"

tar -xf /tmp/ps2dev-latest.tar.gz --strip-components 1 -C "$PS2DEV"

PROFILE="$HOME/.bash_profile"
if ! grep -q "PS2DEV=/usr/local/ps2dev" "$PROFILE" 2>/dev/null; then
  cat >> "$PROFILE" <<'EOF'
export PS2DEV=/usr/local/ps2dev
export PS2SDK=$PS2DEV/ps2sdk
export GSKIT=$PS2DEV/gsKit
export PATH=$PATH:$PS2DEV/bin:$PS2DEV/ee/bin:$PS2DEV/iop/bin:$PS2DEV/dvp/bin:$PS2SDK/bin
EOF
fi

echo "--- installed ---"
ls "$PS2DEV"
echo "--- ee-gcc ---"
"$PS2DEV/ee/bin/mips64r5900el-ps2-elf-gcc" --version || true
