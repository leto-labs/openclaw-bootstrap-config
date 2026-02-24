#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Fetch the Google Discovery API list (all available APIs).

Usage:
  bash scripts/fetch_discovery_list.sh [options]

Options:
  --out-dir <dir>   Output directory (default: <skill>/discovery)
  --pretty          Save pretty-printed JSON
  --minify          Save minified JSON (default)
  -h, --help        Show this help text

Output:
  <out-dir>/discovery-list.json
EOF
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
OUT_DIR="${SKILL_DIR}/discovery"
PRETTY="false"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --out-dir)  OUT_DIR="${2:-}"; shift 2 ;;
    --pretty)   PRETTY="true"; shift ;;
    --minify)   PRETTY="false"; shift ;;
    -h|--help)  usage; exit 0 ;;
    *)          echo "Unknown argument: $1" >&2; usage; exit 1 ;;
  esac
done

mkdir -p "${OUT_DIR}"

DISCOVERY_URL="https://discovery.googleapis.com/discovery/v1/apis"
TARGET="${OUT_DIR}/discovery-list.json"
TMP_FILE="$(mktemp)"
trap 'rm -f "${TMP_FILE}"' EXIT

echo "Fetching Discovery API list from ${DISCOVERY_URL} ..." >&2

curl --fail --silent --show-error --location \
  --retry 3 --retry-all-errors --retry-delay 2 \
  --connect-timeout 10 --max-time 120 \
  -H "Accept: application/json" \
  "${DISCOVERY_URL}" \
  -o "${TMP_FILE}"

python3 - "${TMP_FILE}" "${TARGET}" "${PRETTY}" <<'PY'
import json, sys

src, dst, pretty_arg = sys.argv[1], sys.argv[2], sys.argv[3]
pretty = pretty_arg.lower() == "true"

with open(src, "r", encoding="utf-8") as f:
    data = json.load(f)

if not isinstance(data, dict) or "items" not in data:
    raise SystemExit(f"Unexpected response format: missing 'items' key")

items = data["items"]

# Deduplicate: keep only preferred version per API
seen = {}
for api in items:
    name = api.get("name", "")
    preferred = api.get("preferred", False)
    if name not in seen or preferred:
        seen[name] = api

preferred_items = sorted(seen.values(), key=lambda x: x.get("name", ""))
data["items"] = preferred_items

with open(dst, "w", encoding="utf-8") as f:
    if pretty:
        json.dump(data, f, indent=2, ensure_ascii=False)
        f.write("\n")
    else:
        json.dump(data, f, separators=(",", ":"), ensure_ascii=False)

print(f"Total APIs: {len(items)}, Preferred/deduplicated: {len(preferred_items)}")
PY

echo "Saved ${TARGET}"
