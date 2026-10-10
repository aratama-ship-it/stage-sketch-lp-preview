#!/bin/bash
# 正本 stage-sketch-gamma/public-lp-v2/ から、このプレビュー作業木へ配信物だけを複製する（README と sync.sh は上書きしない）。
# 使い方（このMac）: bash sync.sh  → git status --short で対象を確認 → 明示パスで git add → commit → push
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
SRC="$HERE/../stage-sketch-gamma/public-lp-v2"
[ -f "$SRC/index.html" ] || { echo "正本が見つからない: $SRC"; exit 1; }
rsync -a --delete "$SRC/media/" "$HERE/media/"
rsync -a --delete "$SRC/icons/" "$HERE/icons/"
cp -p "$SRC/index.html" "$SRC/compare.html" "$HERE/"
touch "$HERE/.nojekyll"
echo "synced from $SRC"; ls -la "$HERE"
