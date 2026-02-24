#!/usr/bin/env python3
"""Robust orchestrator: fetch Discovery docs + generate references for all APIs.

Usage:
    python3 scripts/gen_all_robust.py [--parallel N] [--skip-existing]
"""

import argparse
import json
import os
import subprocess
import sys
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
SKILL_DIR = SCRIPT_DIR.parent
DISCOVERY_DIR = SKILL_DIR / "discovery"
REFERENCES_DIR = SKILL_DIR / "references"


def fetch_discovery_doc(api_name: str, version: str) -> bool:
    """Fetch Discovery JSON for one API. Returns True on success."""
    target = DISCOVERY_DIR / f"{api_name}-{version}.json"
    if target.exists() and target.stat().st_size > 100:
        return True  # Already fetched

    # Try service-specific endpoint first
    urls = [
        f"https://{api_name}.googleapis.com/$discovery/rest?version={version}",
        f"https://www.googleapis.com/discovery/v1/apis/{api_name}/{version}/rest",
    ]

    for url in urls:
        try:
            result = subprocess.run(
                ["curl", "--silent", "--show-error", "--location",
                 "--retry", "2", "--retry-delay", "1",
                 "--connect-timeout", "10", "--max-time", "30",
                 "-H", "Accept: application/json",
                 "-w", "%{http_code}",
                 "-o", str(target),
                 url],
                capture_output=True, text=True, timeout=45
            )
            http_code = result.stdout.strip()[-3:] if result.stdout else "000"
            if http_code == "200" and target.exists() and target.stat().st_size > 100:
                # Validate JSON
                try:
                    with open(target) as f:
                        data = json.load(f)
                    if "name" in data:
                        return True
                except (json.JSONDecodeError, KeyError):
                    target.unlink(missing_ok=True)
        except (subprocess.TimeoutExpired, Exception):
            pass

    target.unlink(missing_ok=True)
    return False


def generate_references(api_name: str, version: str) -> bool:
    """Generate markdown references from Discovery JSON. Returns True on success."""
    disc_file = DISCOVERY_DIR / f"{api_name}-{version}.json"
    if not disc_file.exists():
        return False

    try:
        result = subprocess.run(
            [sys.executable, str(SCRIPT_DIR / "gen_api_reference.py"),
             str(disc_file), "--out-dir", str(REFERENCES_DIR)],
            capture_output=True, text=True, timeout=120
        )
        return result.returncode == 0
    except (subprocess.TimeoutExpired, Exception):
        return False


def process_api(api_name: str, version: str, skip_existing: bool = False) -> tuple:
    """Fetch + generate for one API. Returns (name, version, success, message)."""
    slug = api_name.replace(".", "-").lower()
    ref_dir = REFERENCES_DIR / slug

    if skip_existing and ref_dir.exists() and (ref_dir / "api.md").exists():
        return (api_name, version, True, "skipped (exists)")

    if not fetch_discovery_doc(api_name, version):
        return (api_name, version, False, "fetch failed")

    if generate_references(api_name, version):
        return (api_name, version, True, "generated")
    else:
        return (api_name, version, False, "gen failed")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--parallel", type=int, default=10)
    parser.add_argument("--skip-existing", action="store_true")
    args = parser.parse_args()

    DISCOVERY_DIR.mkdir(parents=True, exist_ok=True)
    REFERENCES_DIR.mkdir(parents=True, exist_ok=True)

    # Load Discovery list
    list_file = DISCOVERY_DIR / "discovery-list.json"
    if not list_file.exists():
        print("Fetching Discovery list first...")
        subprocess.run(
            ["bash", str(SCRIPT_DIR / "fetch_discovery_list.sh"),
             "--out-dir", str(DISCOVERY_DIR)],
            check=True
        )

    with open(list_file) as f:
        data = json.load(f)

    apis = [(item["name"], item["version"]) for item in data.get("items", [])
            if item.get("name") and item.get("version")]

    total = len(apis)
    print(f"Processing {total} APIs with {args.parallel} workers...")

    success = 0
    failed = 0
    skipped = 0
    failed_apis = []

    with ThreadPoolExecutor(max_workers=args.parallel) as executor:
        futures = {
            executor.submit(process_api, name, ver, args.skip_existing): (name, ver)
            for name, ver in apis
        }

        for i, future in enumerate(as_completed(futures), 1):
            name, ver, ok, msg = future.result()
            if ok:
                if "skipped" in msg:
                    skipped += 1
                else:
                    success += 1
            else:
                failed += 1
                failed_apis.append(f"{name} {ver}")

            if i % 20 == 0 or i == total:
                print(f"  [{i}/{total}] success={success} skipped={skipped} failed={failed}")

    print(f"\nDone: {success} generated, {skipped} skipped, {failed} failed out of {total}")
    if failed_apis:
        print(f"Failed APIs ({len(failed_apis)}):")
        for api in failed_apis[:20]:
            print(f"  - {api}")
        if len(failed_apis) > 20:
            print(f"  ... and {len(failed_apis) - 20} more")

    # Generate api-index.md
    print("\nGenerating api-index.md...")
    subprocess.run(
        [sys.executable, "-c", f"""
import json, sys
from pathlib import Path

list_file = "{list_file}"
out_dir = Path("{REFERENCES_DIR}")

with open(list_file) as f:
    data = json.load(f)

items = data.get("items", [])

categories = {{
    "Workspace": [], "Cloud Platform": [], "Firebase": [],
    "Maps & Places": [], "YouTube & Media": [], "AI & ML": [],
    "Ads & Commerce": [], "Identity & Security": [], "Analytics": [],
    "Other": [],
}}

def categorize(api):
    name = api.get("name", "").lower()
    title = api.get("title", "").lower()
    desc = api.get("description", "").lower()
    combined = f"{{name}} {{title}} {{desc}}"
    if any(k in combined for k in ["gmail", "sheets", "drive", "docs", "calendar", "slides", "admin sdk", "classroom", "vault", "keep", "chat", "groups", "tasks", "people"]):
        return "Workspace"
    if any(k in combined for k in ["firebase", "fcm", "firebasehosting", "firestore"]):
        return "Firebase"
    if any(k in combined for k in ["youtube"]):
        return "YouTube & Media"
    if any(k in combined for k in ["maps", "places", "geocod", "directions", "roads"]):
        return "Maps & Places"
    if any(k in combined for k in ["vertex", "aiplatform", "ml", "vision", "language", "speech", "translate", "dialogflow", "documentai", "generative"]):
        return "AI & ML"
    if any(k in combined for k in ["adsense", "adexchange", "admob", "merchant", "mybusiness", "searchads", "displayvideo"]):
        return "Ads & Commerce"
    if any(k in combined for k in ["identity", "iap", "beyondcorp", "secretmanager", "recaptcha", "iam"]):
        return "Identity & Security"
    if any(k in combined for k in ["analytics", "searchconsole", "pagespeed"]):
        return "Analytics"
    if any(k in combined for k in ["compute", "storage", "bigquery", "dataflow", "pubsub", "functions", "run", "appengine", "container", "cloudbuild", "dns", "logging", "monitoring", "spanner", "sql", "cloud"]):
        return "Cloud Platform"
    return "Other"

for item in items:
    cat = categorize(item)
    categories[cat].append(item)

lines = ["# Google APIs Index", "", f"**Total APIs**: {{len(items)}} (deduplicated preferred versions)", ""]
lines.append("## Table of Contents\\n")
for cat in categories:
    count = len(categories[cat])
    if count:
        anchor = cat.lower().replace(" & ", "--").replace(" ", "-")
        lines.append(f"- [{{cat}}](#{{anchor}}) ({{count}})")
lines.append("")

for cat, apis in categories.items():
    if not apis:
        continue
    lines.append(f"## {{cat}}\\n")
    lines.append("| API | Version | Description | Reference |")
    lines.append("|-----|---------|-------------|-----------|")
    for api in sorted(apis, key=lambda x: x.get("name", "")):
        name = api.get("name", "")
        version = api.get("version", "")
        title = api.get("title", name)
        desc = api.get("description", "").replace("\\n", " ").strip()
        if len(desc) > 80:
            desc = desc[:77] + "..."
        slug = name.replace(".", "-").lower()
        ref_path = f"`references/{{slug}}/`" if (out_dir / slug).exists() else "-"
        lines.append(f"| {{title}} | {{version}} | {{desc}} | {{ref_path}} |")
    lines.append("")

(out_dir / "api-index.md").write_text("\\n".join(lines) + "\\n")
print(f"Generated api-index.md with {{len(items)}} APIs")
"""],
        check=False
    )


if __name__ == "__main__":
    main()
