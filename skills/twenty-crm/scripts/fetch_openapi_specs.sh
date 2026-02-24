#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Fetch Twenty OpenAPI specs (core + metadata) from a live instance.

Usage:
  bash scripts/fetch_openapi_specs.sh [options]

Options:
  --base-url <url>        Base URL of Twenty instance
                          (examples: https://api.twenty.com, https://crm.example.com)
                          (env fallback: TWENTY_BASE_URL, TWENTY_API_URL)
  --token <token>         API key / bearer token
                          (env fallback: TWENTY_API_KEY, TWENTY_TOKEN)
  --user-agent <value>    HTTP User-Agent for requests
                          (default env fallback: TWENTY_USER_AGENT or twenty-crm-skill/1.0)
  --out-dir <dir>         Output directory for spec files
                          (default: <skill>/openapi)
  --token-mode <mode>     Token transport: header|query (default: header)
  --allow-stale           If fetch fails, keep existing target file when available
  --fallback-dir <dir>    Fallback directory with twenty-core.json and
                          twenty-metadata.json when live fetch fails
  --pretty                Save pretty-printed JSON
  --minify                Save minified JSON (default)
  -h, --help              Show this help text

Output files:
  <out-dir>/twenty-core.json
  <out-dir>/twenty-metadata.json
EOF
}

BASE_URL="${TWENTY_BASE_URL:-${TWENTY_API_URL:-}}"
TOKEN="${TWENTY_API_KEY:-${TWENTY_TOKEN:-}}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
OUT_DIR="${SKILL_DIR}/openapi"
TOKEN_MODE="header"
PRETTY="false"
ALLOW_STALE="false"
FALLBACK_DIR=""
USER_AGENT="${TWENTY_USER_AGENT:-twenty-crm-skill/1.0}"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --base-url)
      BASE_URL="${2:-}"
      shift 2
      ;;
    --token)
      TOKEN="${2:-}"
      shift 2
      ;;
    --out-dir)
      OUT_DIR="${2:-}"
      shift 2
      ;;
    --user-agent)
      USER_AGENT="${2:-}"
      shift 2
      ;;
    --token-mode)
      TOKEN_MODE="${2:-}"
      shift 2
      ;;
    --allow-stale)
      ALLOW_STALE="true"
      shift
      ;;
    --fallback-dir)
      FALLBACK_DIR="${2:-}"
      shift 2
      ;;
    --pretty)
      PRETTY="true"
      shift
      ;;
    --minify)
      PRETTY="false"
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage
      exit 1
      ;;
  esac
done

if [[ -z "${BASE_URL}" ]]; then
  echo "Missing base URL. Use --base-url or TWENTY_BASE_URL." >&2
  exit 1
fi

if [[ "${TOKEN_MODE}" != "header" && "${TOKEN_MODE}" != "query" ]]; then
  echo "Invalid --token-mode '${TOKEN_MODE}'. Use 'header' or 'query'." >&2
  exit 1
fi

# Normalize common input forms like:
# - https://host
# - https://host/rest
# - https://host/rest/core
BASE_URL="${BASE_URL%/}"
BASE_URL="${BASE_URL%/rest/core}"
BASE_URL="${BASE_URL%/rest/metadata}"
BASE_URL="${BASE_URL%/rest}"

mkdir -p "${OUT_DIR}"

fetch_one() {
  local schema_name="$1"
  local endpoint="/rest/open-api/${schema_name}"
  local request_url="${BASE_URL}${endpoint}"
  local display_url="${request_url}"
  local target_file="${OUT_DIR}/twenty-${schema_name}.json"
  local fallback_file=""
  local tmp_file

  if [[ -n "${FALLBACK_DIR}" ]]; then
    fallback_file="${FALLBACK_DIR%/}/twenty-${schema_name}.json"
  fi

  tmp_file="$(mktemp)"
  trap 'rm -f "${tmp_file}"' RETURN

  echo "Fetching ${schema_name} schema from ${display_url} ..." >&2

  local fetch_ok="false"
  local -a curl_args=(
    --fail
    --silent
    --show-error
    --location
    --retry 3
    --retry-all-errors
    --retry-delay 1
    --connect-timeout 10
    --max-time 60
    -H "Accept: application/json"
    -H "User-Agent: ${USER_AGENT}"
  )

  if [[ -n "${TOKEN}" && "${TOKEN_MODE}" == "header" ]]; then
    if curl "${curl_args[@]}" \
      -H "Authorization: Bearer ${TOKEN}" \
      "${request_url}" \
      -o "${tmp_file}"; then
      fetch_ok="true"
    fi
  elif [[ -n "${TOKEN}" && "${TOKEN_MODE}" == "query" ]]; then
    request_url="${request_url}?token=${TOKEN}"
    display_url="${display_url}?token=<redacted>"
    echo "Using query token mode for ${schema_name}: ${display_url}" >&2
    if curl "${curl_args[@]}" \
      "${request_url}" \
      -o "${tmp_file}"; then
      fetch_ok="true"
    fi
  else
    if curl "${curl_args[@]}" \
      "${request_url}" \
      -o "${tmp_file}"; then
      fetch_ok="true"
    fi
  fi

  if [[ "${fetch_ok}" != "true" ]]; then
    echo "Live fetch failed for ${schema_name} schema from ${display_url}." >&2

    if [[ -n "${fallback_file}" && -f "${fallback_file}" ]]; then
      echo "Using fallback file: ${fallback_file}" >&2
      if [[ "${fallback_file}" != "${target_file}" ]]; then
        cp "${fallback_file}" "${target_file}"
      fi
      python3 - "${target_file}" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as f:
    data = json.load(f)

if not isinstance(data, dict) or "openapi" not in data or "paths" not in data:
    raise SystemExit(f"Not a valid OpenAPI document: {path}")

paths = data.get("paths", {})
components = data.get("components") or {}
schemas = components.get("schemas") or {}
print(f"{len(paths)}|{len(schemas)}")
PY
      return
    fi

    if [[ "${ALLOW_STALE}" == "true" && -f "${target_file}" ]]; then
      echo "Using existing stale file: ${target_file}" >&2
      python3 - "${target_file}" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as f:
    data = json.load(f)

if not isinstance(data, dict) or "openapi" not in data or "paths" not in data:
    raise SystemExit(f"Not a valid OpenAPI document: {path}")

paths = data.get("paths", {})
components = data.get("components") or {}
schemas = components.get("schemas") or {}
print(f"{len(paths)}|{len(schemas)}")
PY
      return
    fi

    if [[ -n "${TOKEN}" ]]; then
      echo "Check token validity and API permissions." >&2
    else
      echo "This instance may require authentication for OpenAPI routes." >&2
    fi
    return 1
  fi

  python3 - "${tmp_file}" "${target_file}" "${PRETTY}" <<'PY'
import json
import sys

src, dst, pretty_arg = sys.argv[1], sys.argv[2], sys.argv[3]
pretty = pretty_arg.lower() == "true"

try:
    with open(src, "r", encoding="utf-8") as f:
        data = json.load(f)
except Exception as exc:
    raise SystemExit(f"Response is not valid JSON for {dst}: {exc}")

if not isinstance(data, dict) or "openapi" not in data or "paths" not in data:
    raise SystemExit(f"Not a valid OpenAPI document: {src}")

with open(dst, "w", encoding="utf-8") as f:
    if pretty:
        json.dump(data, f, indent=2, ensure_ascii=True)
        f.write("\n")
    else:
        json.dump(data, f, separators=(",", ":"), ensure_ascii=True)

paths = data.get("paths", {})
components = data.get("components") or {}
schemas = components.get("schemas") or {}
print(f"{len(paths)}|{len(schemas)}")
PY
}

core_summary="$(fetch_one core)"
metadata_summary="$(fetch_one metadata)"

IFS='|' read -r core_paths_count core_schemas_count <<<"${core_summary}"
IFS='|' read -r metadata_paths_count metadata_schemas_count <<<"${metadata_summary}"

echo "Saved ${OUT_DIR}/twenty-core.json (paths=${core_paths_count}, schemas=${core_schemas_count})"
echo "Saved ${OUT_DIR}/twenty-metadata.json (paths=${metadata_paths_count}, schemas=${metadata_schemas_count})"

python3 - "${OUT_DIR}/twenty-metadata.json" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as f:
    data = json.load(f)

paths = sorted((data.get("paths") or {}).keys())
print("Metadata paths preview:")
for item in paths[:20]:
    print(f"  - {item}")
if len(paths) > 20:
    print(f"  - ... ({len(paths) - 20} more)")
PY

if [[ -z "${TOKEN}" ]]; then
  echo "Warning: fetched without token. Specs may be base-only and not workspace-specific." >&2
fi

