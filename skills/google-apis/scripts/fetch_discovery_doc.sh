#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Fetch the Discovery JSON document for a single Google API.

Usage:
  bash scripts/fetch_discovery_doc.sh <api-name> <version> [options]

Arguments:
  <api-name>   API name (e.g. gmail, sheets, drive)
  <version>    API version (e.g. v1, v2, v1beta1)

Options:
  --out-dir <dir>   Output directory (default: <skill>/discovery)
  --pretty          Save pretty-printed JSON
  --minify          Save minified JSON (default)
  -h, --help        Show this help text

Output:
  <out-dir>/<api-name>-<version>.json
EOF
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
OUT_DIR="${SKILL_DIR}/discovery"
PRETTY="false"
API_NAME=""
VERSION=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --out-dir)  OUT_DIR="${2:-}"; shift 2 ;;
    --pretty)   PRETTY="true"; shift ;;
    --minify)   PRETTY="false"; shift ;;
    -h|--help)  usage; exit 0 ;;
    -*)         echo "Unknown option: $1" >&2; usage; exit 1 ;;
    *)
      if [[ -z "${API_NAME}" ]]; then
        API_NAME="$1"
      elif [[ -z "${VERSION}" ]]; then
        VERSION="$1"
      else
        echo "Unexpected argument: $1" >&2; usage; exit 1
      fi
      shift
      ;;
  esac
done

if [[ -z "${API_NAME}" || -z "${VERSION}" ]]; then
  echo "Error: api-name and version are required." >&2
  usage
  exit 1
fi

mkdir -p "${OUT_DIR}"

DISCOVERY_URL="https://${API_NAME}.googleapis.com/\$discovery/rest?version=${VERSION}"
TARGET="${OUT_DIR}/${API_NAME}-${VERSION}.json"
TMP_FILE="$(mktemp)"
trap 'rm -f "${TMP_FILE}"' EXIT

echo "Fetching Discovery doc for ${API_NAME} ${VERSION} from ${DISCOVERY_URL} ..." >&2

HTTP_CODE=$(curl --silent --show-error --location \
  --retry 3 --retry-all-errors --retry-delay 2 \
  --connect-timeout 10 --max-time 60 \
  -H "Accept: application/json" \
  -w "%{http_code}" \
  "${DISCOVERY_URL}" \
  -o "${TMP_FILE}" 2>/dev/null || echo "000")

# If service-specific endpoint fails, try the central discovery endpoint
if [[ "${HTTP_CODE}" != "200" ]]; then
  FALLBACK_URL="https://www.googleapis.com/discovery/v1/apis/${API_NAME}/${VERSION}/rest"
  echo "Service endpoint returned ${HTTP_CODE}, trying fallback: ${FALLBACK_URL} ..." >&2

  HTTP_CODE=$(curl --silent --show-error --location \
    --retry 2 --retry-all-errors --retry-delay 2 \
    --connect-timeout 10 --max-time 60 \
    -H "Accept: application/json" \
    -w "%{http_code}" \
    "${FALLBACK_URL}" \
    -o "${TMP_FILE}" 2>/dev/null || echo "000")

  if [[ "${HTTP_CODE}" != "200" ]]; then
    echo "Error: Failed to fetch Discovery doc for ${API_NAME} ${VERSION} (HTTP ${HTTP_CODE})" >&2
    exit 1
  fi
fi

python3 - "${TMP_FILE}" "${TARGET}" "${PRETTY}" <<'PY'
import json, sys

src, dst, pretty_arg = sys.argv[1], sys.argv[2], sys.argv[3]
pretty = pretty_arg.lower() == "true"

with open(src, "r", encoding="utf-8") as f:
    data = json.load(f)

if not isinstance(data, dict) or "name" not in data:
    raise SystemExit(f"Unexpected response: not a valid Discovery document")

with open(dst, "w", encoding="utf-8") as f:
    if pretty:
        json.dump(data, f, indent=2, ensure_ascii=False)
        f.write("\n")
    else:
        json.dump(data, f, separators=(",", ":"), ensure_ascii=False)

resources = data.get("resources", {})
methods = data.get("methods", {})
schemas = data.get("schemas", {})

def count_methods(res):
    n = len(res.get("methods", {}))
    for sub in res.get("resources", {}).values():
        n += count_methods(sub)
    return n

total_methods = len(methods)
for r in resources.values():
    total_methods += count_methods(r)

print(f"{data['name']} {data.get('version','')}: {total_methods} methods, {len(schemas)} schemas")
PY

echo "Saved ${TARGET}"
