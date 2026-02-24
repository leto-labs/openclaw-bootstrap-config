#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage: bootstrap_repocache.sh [target-dir] [--force]

Initialize a repocache directory with:
  - repocache.json (empty resources list)
  - root .gitignore rules (keeps config tracked, ignores cloned repos)

The clone script is bundled with the skill at:
  skills/repocache/scripts/clone.sh

Examples:
  bootstrap_repocache.sh
  bootstrap_repocache.sh repocache
  bootstrap_repocache.sh repocache --force
EOF
}

TARGET_DIR="repocache"
TARGET_SET=0
FORCE=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    -h|--help)
      usage
      exit 0
      ;;
    --force)
      FORCE=1
      ;;
    -*)
      echo "ERROR: unknown option: $1" >&2
      usage >&2
      exit 1
      ;;
    *)
      if [[ "$TARGET_SET" -eq 1 ]]; then
        echo "ERROR: only one target directory is allowed" >&2
        usage >&2
        exit 1
      fi
      TARGET_DIR="$1"
      TARGET_SET=1
      ;;
  esac
  shift
done

mkdir -p "$TARGET_DIR"

CONFIG_FILE="$TARGET_DIR/repocache.json"
ROOT_GITIGNORE=".gitignore"
TARGET_DIR="${TARGET_DIR%/}"

if [[ "$FORCE" -eq 1 || ! -f "$CONFIG_FILE" ]]; then
  cat > "$CONFIG_FILE" <<'EOF'
{
  "resources": []
}
EOF
  echo "Wrote $CONFIG_FILE"
else
  echo "Kept existing $CONFIG_FILE"
fi

BLOCK_START="# BEGIN repocache bootstrap"
BLOCK_END="# END repocache bootstrap"
IGNORE_RULE_1="$TARGET_DIR/*"
IGNORE_RULE_2="!$TARGET_DIR/repocache.json"

TMP_FILE="$(mktemp)"
if [[ -f "$ROOT_GITIGNORE" ]]; then
  awk -v start="$BLOCK_START" -v end="$BLOCK_END" '
    $0 == start { skip=1; next }
    $0 == end { skip=0; next }
    skip != 1 { print }
  ' "$ROOT_GITIGNORE" > "$TMP_FILE"
else
  : > "$TMP_FILE"
fi

{
  if [[ -s "$TMP_FILE" ]]; then
    cat "$TMP_FILE"
    printf '\n'
  fi
  printf '%s\n' "$BLOCK_START"
  printf '%s\n' "$IGNORE_RULE_1"
  printf '%s\n' "$IGNORE_RULE_2"
  printf '%s\n' "$BLOCK_END"
} > "$ROOT_GITIGNORE"

rm -f "$TMP_FILE"
echo "Updated root ignore rules in $ROOT_GITIGNORE"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLONE_SCRIPT="$SCRIPT_DIR/clone.sh"

if [[ ! -f "$CLONE_SCRIPT" ]]; then
  echo "WARNING: bundled clone script not found at $CLONE_SCRIPT" >&2
else
  chmod +x "$CLONE_SCRIPT"
  echo "Bundled clone script ready: $CLONE_SCRIPT"
fi

echo "repocache bootstrap complete: $TARGET_DIR"
