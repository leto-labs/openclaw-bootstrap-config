#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage: clone.sh [resource-name] [--no-update] [--root <dir>]

Sync repositories listed in <dir>/repocache.json.

Arguments:
  resource-name   Optional resource name from repocache.json

Options:
  --no-update     Clone missing repos only, skip updates
  --root <dir>    Repocache root directory (default: repocache, or $REPOCACHE_DIR)
  -h, --help      Show help

Examples:
  clone.sh
  clone.sh @trpc/server
  clone.sh --no-update
  clone.sh @trpc/server --no-update --root repocache
EOF
}

ROOT_DIR="${REPOCACHE_DIR:-repocache}"
RESOURCE_NAME=""
NO_UPDATE=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    --no-update)
      NO_UPDATE=1
      ;;
    --root)
      shift
      if [[ $# -eq 0 ]]; then
        echo "ERROR: --root requires a value" >&2
        usage >&2
        exit 1
      fi
      ROOT_DIR="$1"
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    -*)
      echo "ERROR: unknown option: $1" >&2
      usage >&2
      exit 1
      ;;
    *)
      if [[ -n "$RESOURCE_NAME" ]]; then
        echo "ERROR: only one resource name can be provided" >&2
        exit 1
      fi
      RESOURCE_NAME="$1"
      ;;
  esac
  shift
done

for cmd in git jq base64; do
  if ! command -v "$cmd" >/dev/null 2>&1; then
    echo "ERROR: required command not found: $cmd" >&2
    exit 1
  fi
done

if [[ ! -d "$ROOT_DIR" ]]; then
  echo "ERROR: repocache root directory not found: $ROOT_DIR" >&2
  exit 1
fi

ROOT_DIR="$(cd "$ROOT_DIR" && pwd)"
CONFIG_FILE="$ROOT_DIR/repocache.json"

if [[ ! -f "$CONFIG_FILE" ]]; then
  echo "ERROR: repocache.json not found in $ROOT_DIR" >&2
  exit 1
fi

if [[ -n "$RESOURCE_NAME" ]]; then
  MATCH_COUNT="$(jq --arg name "$RESOURCE_NAME" '[.resources[] | select(.name == $name)] | length' "$CONFIG_FILE")"
  if [[ "$MATCH_COUNT" -eq 0 ]]; then
    echo "ERROR: resource '$RESOURCE_NAME' not found in $CONFIG_FILE" >&2
    exit 1
  fi
fi

if [[ "$NO_UPDATE" -eq 1 ]]; then
  echo "Syncing repocache resources (clone missing only)..."
else
  echo "Syncing repocache resources..."
fi

FILTER='.'
if [[ -n "$RESOURCE_NAME" ]]; then
  FILTER='select(.name == $name)'
fi

jq -r --arg name "$RESOURCE_NAME" ".resources[] | $FILTER | @base64" "$CONFIG_FILE" | while read -r row; do
  _jq() { echo "$row" | base64 -d | jq -r "$1"; }

  name="$(_jq '.name')"
  url="$(_jq '.url')"
  relpath="$(_jq '.path')"
  target="$ROOT_DIR/$relpath"

  if [[ -d "$target/.git" ]]; then
    if [[ "$NO_UPDATE" -eq 1 ]]; then
      echo "Skipping update for $name ($relpath)"
    else
      echo "Updating $name ($relpath)"
      git -C "$target" fetch --all --prune >/dev/null 2>&1 || true
      git -C "$target" pull --ff-only >/dev/null 2>&1 || true
    fi
  else
    echo "Cloning $name ($relpath)"
    mkdir -p "$(dirname "$target")"
    git clone --depth 1 "$url" "$target" >/dev/null
  fi
done

echo "repocache sync complete"
