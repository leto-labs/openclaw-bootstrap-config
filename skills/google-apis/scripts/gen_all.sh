#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Orchestrator: fetch Discovery list, fetch each API doc, generate references.

Usage:
  bash scripts/gen_all.sh [options]

Options:
  --discovery-dir <dir>   Directory for Discovery JSON files (default: <skill>/discovery)
  --out-dir <dir>         Output directory for references (default: <skill>/references)
  --parallel <n>          Max parallel fetch/generate jobs (default: 10)
  --skip-fetch            Skip fetching, use existing Discovery files
  --pretty                Save pretty-printed JSON
  --api-filter <pattern>  Only process APIs matching grep pattern
  -h, --help              Show this help text

Steps:
  1. Fetch Discovery API list
  2. For each API: fetch Discovery doc + generate markdown
  3. Generate api-index.md
EOF
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
DISCOVERY_DIR="${SKILL_DIR}/discovery"
OUT_DIR="${SKILL_DIR}/references"
PARALLEL=10
SKIP_FETCH="false"
PRETTY_FLAG=""
API_FILTER=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --discovery-dir) DISCOVERY_DIR="${2:-}"; shift 2 ;;
    --out-dir)       OUT_DIR="${2:-}"; shift 2 ;;
    --parallel)      PARALLEL="${2:-10}"; shift 2 ;;
    --skip-fetch)    SKIP_FETCH="true"; shift ;;
    --pretty)        PRETTY_FLAG="--pretty"; shift ;;
    --api-filter)    API_FILTER="${2:-}"; shift 2 ;;
    -h|--help)       usage; exit 0 ;;
    *)               echo "Unknown argument: $1" >&2; usage; exit 1 ;;
  esac
done

mkdir -p "${DISCOVERY_DIR}" "${OUT_DIR}"

# Step 1: Fetch Discovery list
LIST_FILE="${DISCOVERY_DIR}/discovery-list.json"
if [[ "${SKIP_FETCH}" != "true" ]] || [[ ! -f "${LIST_FILE}" ]]; then
  echo "=== Step 1: Fetching Discovery API list ===" >&2
  bash "${SCRIPT_DIR}/fetch_discovery_list.sh" --out-dir "${DISCOVERY_DIR}" ${PRETTY_FLAG}
else
  echo "=== Step 1: Using existing Discovery list ===" >&2
fi

# Parse list into name/version pairs
API_LIST=$(python3 - "${LIST_FILE}" "${API_FILTER}" <<'PY'
import json, sys, re

list_file = sys.argv[1]
api_filter = sys.argv[2] if len(sys.argv) > 2 else ""

with open(list_file, "r", encoding="utf-8") as f:
    data = json.load(f)

for item in data.get("items", []):
    name = item.get("name", "")
    version = item.get("version", "")
    if not name or not version:
        continue
    if api_filter and not re.search(api_filter, name):
        continue
    print(f"{name} {version}")
PY
)

TOTAL=$(echo "${API_LIST}" | wc -l | tr -d ' ')
echo "=== Step 2: Processing ${TOTAL} APIs (parallel=${PARALLEL}) ===" >&2

# Step 2: Fetch + generate for each API
PROCESSED=0
FAILED=0
PIDS=()

process_api() {
  local api_name="$1"
  local version="$2"
  local disc_file="${DISCOVERY_DIR}/${api_name}-${version}.json"

  # Fetch discovery doc if needed
  if [[ "${SKIP_FETCH}" != "true" ]] || [[ ! -f "${disc_file}" ]]; then
    if ! bash "${SCRIPT_DIR}/fetch_discovery_doc.sh" "${api_name}" "${version}" \
      --out-dir "${DISCOVERY_DIR}" ${PRETTY_FLAG} 2>/dev/null; then
      echo "FAIL: fetch ${api_name} ${version}" >&2
      return 1
    fi
  fi

  # Generate references
  if [[ -f "${disc_file}" ]]; then
    python3 "${SCRIPT_DIR}/gen_api_reference.py" "${disc_file}" --out-dir "${OUT_DIR}" 2>/dev/null
  else
    echo "SKIP: no discovery doc for ${api_name} ${version}" >&2
    return 1
  fi
}

while IFS=' ' read -r api_name version; do
  [[ -z "${api_name}" ]] && continue

  process_api "${api_name}" "${version}" &
  PIDS+=($!)

  # Throttle parallel jobs
  if [[ ${#PIDS[@]} -ge ${PARALLEL} ]]; then
    for pid in "${PIDS[@]}"; do
      if wait "${pid}"; then
        ((PROCESSED++))
      else
        ((FAILED++))
      fi
    done
    PIDS=()
    echo "  Progress: $((PROCESSED + FAILED))/${TOTAL} (${FAILED} failed)" >&2
  fi
done <<< "${API_LIST}"

# Wait for remaining
for pid in "${PIDS[@]}"; do
  if wait "${pid}"; then
    ((PROCESSED++))
  else
    ((FAILED++))
  fi
done

echo "=== Done: ${PROCESSED} generated, ${FAILED} failed out of ${TOTAL} ===" >&2

# Step 3: Generate api-index.md
echo "=== Step 3: Generating api-index.md ===" >&2
python3 - "${LIST_FILE}" "${OUT_DIR}" <<'PY'
import json, sys
from pathlib import Path

list_file = sys.argv[1]
out_dir = Path(sys.argv[2])

with open(list_file, "r", encoding="utf-8") as f:
    data = json.load(f)

items = data.get("items", [])

# Categorize APIs
categories = {
    "Workspace": [],
    "Cloud Platform": [],
    "Firebase": [],
    "Maps & Places": [],
    "YouTube & Media": [],
    "AI & ML": [],
    "Ads & Commerce": [],
    "Identity & Security": [],
    "Analytics": [],
    "Other": [],
}

def categorize(api):
    name = api.get("name", "").lower()
    title = api.get("title", "").lower()
    desc = api.get("description", "").lower()
    combined = f"{name} {title} {desc}"

    if any(k in combined for k in ["gmail", "sheets", "drive", "docs", "calendar", "slides", "admin sdk", "classroom", "vault", "keep", "chat", "groups", "tasks", "people"]):
        return "Workspace"
    if any(k in combined for k in ["firebase", "fcm", "firebasehosting", "firestore", "firebase"]):
        return "Firebase"
    if any(k in combined for k in ["youtube", "youtubeanalytics", "youtubeembeddedplayer", "youtubereporting"]):
        return "YouTube & Media"
    if any(k in combined for k in ["maps", "places", "geocod", "directions", "roads", "streetview", "geolocation"]):
        return "Maps & Places"
    if any(k in combined for k in ["vertex", "aiplatform", "ml", "vision", "language", "speech", "translate", "dialogflow", "documentai", "generative"]):
        return "AI & ML"
    if any(k in combined for k in ["adsense", "adexchange", "admob", "merchant", "content api for shopping", "mybusiness", "searchads", "displayvideo", "doubleclickbid", "dfareporting"]):
        return "Ads & Commerce"
    if any(k in combined for k in ["identity", "iap", "beyondcorp", "certificatemanager", "secretmanager", "recaptcha", "oauth", "iam"]):
        return "Identity & Security"
    if any(k in combined for k in ["analytics", "searchconsole", "pagespeed", "webmasters"]):
        return "Analytics"
    if any(k in combined for k in ["compute", "storage", "bigquery", "dataflow", "dataproc", "pubsub", "functions", "run", "appengine", "container", "gke", "cloudbuild", "cloudresource", "dns", "logging", "monitoring", "spanner", "bigtable", "memcache", "redis", "sql", "cloud"]):
        return "Cloud Platform"
    return "Other"

for item in items:
    cat = categorize(item)
    categories[cat].append(item)

lines = [
    "# Google APIs Index",
    "",
    f"**Total APIs**: {len(items)} (deduplicated preferred versions)",
    "",
    "## Table of Contents",
    "",
]

for cat in categories:
    count = len(categories[cat])
    if count:
        anchor = cat.lower().replace(" & ", "--").replace(" ", "-")
        lines.append(f"- [{cat}](#{anchor}) ({count})")

lines.append("")

for cat, apis in categories.items():
    if not apis:
        continue
    lines.append(f"## {cat}")
    lines.append("")
    lines.append("| API | Version | Description | Reference |")
    lines.append("|-----|---------|-------------|-----------|")
    for api in sorted(apis, key=lambda x: x.get("name", "")):
        name = api.get("name", "")
        version = api.get("version", "")
        title = api.get("title", name)
        desc = api.get("description", "").replace("\n", " ").strip()
        if len(desc) > 80:
            desc = desc[:77] + "..."
        slug = name.replace(".", "-").lower()
        ref_path = f"`references/{slug}/`" if (out_dir / slug).exists() else "-"
        lines.append(f"| {title} | {version} | {desc} | {ref_path} |")
    lines.append("")

index_path = out_dir / "api-index.md"
index_path.write_text("\n".join(lines) + "\n", encoding="utf-8")
print(f"Generated {index_path} with {len(items)} APIs across {sum(1 for v in categories.values() if v)} categories")
PY

echo "=== All done ===" >&2
