#!/usr/bin/env python3
"""Generate markdown reference files from a Google Discovery JSON document.

Usage:
    python3 scripts/gen_api_reference.py <discovery-json> [--out-dir <dir>]

Produces 5 files in <out-dir>/<api-name>/:
    README.md          - Overview, quick start
    configuration.md   - Auth scopes, enable API, project setup
    api.md             - Methods, params, types, code examples
    patterns.md        - Common workflow patterns (templated)
    gotchas.md         - Rate limits, common errors (templated)
"""

import argparse
import json
import os
import sys
import textwrap
from pathlib import Path


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def slugify(name: str) -> str:
    """Convert API name to directory slug."""
    return name.replace(".", "-").lower()


def wrap(text: str, width: int = 80) -> str:
    return "\n".join(textwrap.wrap(text, width)) if text else ""


def collect_methods(node: dict, prefix: str = "") -> list[dict]:
    """Recursively collect all methods from resources tree."""
    methods = []
    for name, m in node.get("methods", {}).items():
        full_id = m.get("id", f"{prefix}.{name}" if prefix else name)
        methods.append({
            "id": full_id,
            "httpMethod": m.get("httpMethod", "GET"),
            "path": m.get("path", m.get("flatPath", "")),
            "description": m.get("description", ""),
            "parameters": m.get("parameters", {}),
            "parameterOrder": m.get("parameterOrder", []),
            "request": m.get("request", {}),
            "response": m.get("response", {}),
            "scopes": m.get("scopes", []),
        })
    for res_name, res in node.get("resources", {}).items():
        child_prefix = f"{prefix}.{res_name}" if prefix else res_name
        methods.extend(collect_methods(res, child_prefix))
    return methods


def format_param_table(params: dict, order: list) -> str:
    """Format parameters as a markdown table."""
    if not params:
        return "_No parameters._\n"
    rows = []
    ordered = list(order) + sorted(set(params.keys()) - set(order))
    for p in ordered:
        if p not in params:
            continue
        info = params[p]
        req = "Yes" if info.get("required") else "No"
        loc = info.get("location", "query")
        typ = info.get("type", "string")
        desc = info.get("description", "").replace("\n", " ").strip()
        if len(desc) > 120:
            desc = desc[:117] + "..."
        rows.append(f"| `{p}` | `{typ}` | {loc} | {req} | {desc} |")
    if not rows:
        return "_No parameters._\n"
    header = "| Parameter | Type | In | Required | Description |\n|-----------|------|-----|----------|-------------|"
    return header + "\n" + "\n".join(rows) + "\n"


# ---------------------------------------------------------------------------
# Generators
# ---------------------------------------------------------------------------

def gen_readme(doc: dict) -> str:
    name = doc.get("name", "unknown")
    title = doc.get("title", name)
    desc = doc.get("description", "")
    version = doc.get("version", "")
    base_url = doc.get("rootUrl", "") + doc.get("servicePath", "")
    docs_link = doc.get("documentationLink", "")
    npm_name = name.replace(".", "-")

    lines = [
        f"# {title}",
        "",
        f"> {desc}" if desc else "",
        "",
        "## Overview",
        "",
        f"- **API**: `{name}`",
        f"- **Version**: `{version}`",
        f"- **Base URL**: `{base_url}`" if base_url else "",
        f"- **Docs**: [{docs_link}]({docs_link})" if docs_link else "",
        "",
        "## When to Use",
        "",
        wrap(desc) if desc else f"Use the {title} for programmatic access to {name} functionality.",
        "",
        "## Quick Start",
        "",
        "### googleapis (Node.js)",
        "",
        "```typescript",
        f'import {{ google }} from "googleapis";',
        "",
        f"const {name.replace('-', '_')} = google.{name}('{version}');",
        "",
        "// Authenticate (see references/auth.md)",
        "const auth = new google.auth.GoogleAuth({",
        f'  scopes: [/* see configuration.md */],',
        "});",
        f"google.options({{ auth }});",
        "",
        "// Example: list or get",
        f"// const res = await {name.replace('-', '_')}.someResource.list({{ ... }});",
        "```",
        "",
        "### curl",
        "",
        "```bash",
        f'curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \\',
        f'  "{base_url}..."' if base_url else '  "https://www.googleapis.com/..."',
        "```",
        "",
        "## Reference Files",
        "",
        "| File | Contents |",
        "|------|----------|",
        "| `configuration.md` | Auth scopes, enable API, project setup |",
        "| `api.md` | Full method reference with parameters |",
        "| `patterns.md` | Common workflow patterns |",
        "| `gotchas.md` | Rate limits, common errors, debugging |",
        "",
    ]
    return "\n".join(line for line in lines if line is not None) + "\n"


def gen_configuration(doc: dict) -> str:
    name = doc.get("name", "unknown")
    title = doc.get("title", name)
    version = doc.get("version", "")
    auth_info = doc.get("auth", {})
    oauth_scopes = auth_info.get("oauth2", {}).get("scopes", {})

    lines = [
        f"# {title} - Configuration",
        "",
        "## Enable the API",
        "",
        "```bash",
        f"gcloud services enable {name}.googleapis.com",
        "```",
        "",
        f"Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/{name}.googleapis.com).",
        "",
        "## Auth Scopes",
        "",
    ]

    if oauth_scopes:
        lines.append("| Scope | Description |")
        lines.append("|-------|-------------|")
        for scope_url, scope_info in sorted(oauth_scopes.items()):
            desc = scope_info.get("description", "").replace("\n", " ")
            lines.append(f"| `{scope_url}` | {desc} |")
    else:
        lines.append("This API uses API key authentication or has no documented OAuth scopes.")

    lines.extend([
        "",
        "## Service Endpoint",
        "",
        f"- **Root URL**: `{doc.get('rootUrl', '')}`",
        f"- **Service path**: `{doc.get('servicePath', '')}`",
        f"- **Batch path**: `{doc.get('batchPath', 'batch')}`",
        "",
        "## Authentication Methods",
        "",
        "See `references/auth.md` for detailed setup. Quick summary:",
        "",
        "1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)",
        "2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)",
        "3. **API Key** - For public data (Maps, YouTube public, Custom Search)",
        "4. **ADC (Application Default Credentials)** - Auto-detects environment",
        "",
    ])
    return "\n".join(lines) + "\n"


def gen_api(doc: dict) -> str:
    name = doc.get("name", "unknown")
    title = doc.get("title", name)
    version = doc.get("version", "")
    base_url = doc.get("rootUrl", "") + doc.get("servicePath", "")
    npm_name = name.replace(".", "-")

    all_methods = collect_methods(doc)
    schemas = doc.get("schemas", {})

    lines = [
        f"# {title} - API Reference",
        "",
        f"**Version**: `{version}` | **Methods**: {len(all_methods)} | **Schemas**: {len(schemas)}",
        "",
    ]

    # Table of contents by resource
    if all_methods:
        lines.append("## Methods")
        lines.append("")
        lines.append("| Method | HTTP | Path | Description |")
        lines.append("|--------|------|------|-------------|")
        for m in all_methods:
            desc = m["description"].replace("\n", " ").strip()
            if len(desc) > 100:
                desc = desc[:97] + "..."
            lines.append(f"| `{m['id']}` | {m['httpMethod']} | `{m['path']}` | {desc} |")
        lines.append("")

    # Detailed method docs
    for m in all_methods:
        lines.append(f"### `{m['id']}`")
        lines.append("")
        lines.append(f"**{m['httpMethod']}** `{m['path']}`")
        lines.append("")
        if m["description"]:
            lines.append(m["description"].strip())
            lines.append("")

        # Parameters
        all_params = {}
        # Add path/query params from the method
        all_params.update(m.get("parameters", {}))
        # Add common params from doc level
        for pname, pinfo in doc.get("parameters", {}).items():
            if pname not in all_params:
                all_params[pname] = pinfo

        if m["parameters"]:
            lines.append("**Parameters:**")
            lines.append("")
            lines.append(format_param_table(m["parameters"], m.get("parameterOrder", [])))

        # Request/Response
        if m.get("request", {}).get("$ref"):
            lines.append(f"**Request body**: `{m['request']['$ref']}`")
            lines.append("")
        if m.get("response", {}).get("$ref"):
            lines.append(f"**Response**: `{m['response']['$ref']}`")
            lines.append("")

        # Code snippet
        method_parts = m["id"].split(".")
        if len(method_parts) >= 3:
            resource = method_parts[-2]
            method_name = method_parts[-1]
            var_name = name.replace("-", "_").replace(".", "_")
            lines.extend([
                "```typescript",
                f"const res = await {var_name}.{resource}.{method_name}({{",
                "  // parameters",
                "});",
                "```",
                "",
            ])
        elif len(method_parts) >= 2:
            method_name = method_parts[-1]
            var_name = name.replace("-", "_").replace(".", "_")
            lines.extend([
                "```typescript",
                f"const res = await {var_name}.{method_name}({{",
                "  // parameters",
                "});",
                "```",
                "",
            ])

        # Scopes
        if m.get("scopes"):
            lines.append("**Required scopes:**")
            for s in m["scopes"]:
                lines.append(f"- `{s}`")
            lines.append("")

        lines.append("---")
        lines.append("")

    # Schema summaries
    if schemas:
        lines.append("## Schemas")
        lines.append("")
        for schema_name in sorted(schemas.keys()):
            schema = schemas[schema_name]
            desc = schema.get("description", "").replace("\n", " ").strip()
            props = schema.get("properties", {})
            lines.append(f"### `{schema_name}`")
            lines.append("")
            if desc:
                lines.append(desc)
                lines.append("")
            if props:
                lines.append("| Property | Type | Description |")
                lines.append("|----------|------|-------------|")
                for pname in sorted(props.keys()):
                    pinfo = props[pname]
                    ptype = pinfo.get("type", pinfo.get("$ref", "object"))
                    if "items" in pinfo:
                        item_type = pinfo["items"].get("type", pinfo["items"].get("$ref", ""))
                        ptype = f"array<{item_type}>"
                    pdesc = pinfo.get("description", "").replace("\n", " ").strip()
                    if len(pdesc) > 100:
                        pdesc = pdesc[:97] + "..."
                    lines.append(f"| `{pname}` | `{ptype}` | {pdesc} |")
                lines.append("")

    return "\n".join(lines) + "\n"


def gen_patterns(doc: dict) -> str:
    name = doc.get("name", "unknown")
    title = doc.get("title", name)
    all_methods = collect_methods(doc)
    method_names = {m["id"].split(".")[-1] for m in all_methods}

    lines = [
        f"# {title} - Common Patterns",
        "",
        "## Standard Patterns",
        "",
    ]

    if "list" in method_names:
        lines.extend([
            "### Pagination",
            "",
            "Most `list` methods support pagination with `pageToken`/`nextPageToken`:",
            "",
            "```typescript",
            "let pageToken: string | undefined;",
            "const allItems = [];",
            "do {",
            "  const res = await api.resource.list({ pageToken, maxResults: 100 });",
            "  allItems.push(...(res.data.items || []));",
            "  pageToken = res.data.nextPageToken;",
            "} while (pageToken);",
            "```",
            "",
        ])

    if "create" in method_names or "insert" in method_names:
        lines.extend([
            "### Create / Insert",
            "",
            "```typescript",
            "const res = await api.resource.create({",
            "  requestBody: { /* fields */ },",
            "});",
            "```",
            "",
        ])

    if "get" in method_names:
        lines.extend([
            "### Get by ID",
            "",
            "```typescript",
            "const res = await api.resource.get({ id: 'resource-id' });",
            "```",
            "",
        ])

    if "update" in method_names or "patch" in method_names:
        lines.extend([
            "### Update / Patch",
            "",
            "```typescript",
            "const res = await api.resource.patch({",
            "  id: 'resource-id',",
            "  requestBody: { /* updated fields */ },",
            "});",
            "```",
            "",
        ])

    if "delete" in method_names:
        lines.extend([
            "### Delete",
            "",
            "```typescript",
            "const res = await api.resource.delete({ id: 'resource-id' });",
            "```",
            "",
        ])

    lines.extend([
        "## Error Handling",
        "",
        "```typescript",
        "try {",
        "  const res = await api.resource.method({ ... });",
        "} catch (err: any) {",
        "  if (err.code === 429) {",
        "    // Rate limited — implement exponential backoff",
        "  } else if (err.code === 403) {",
        "    // Permission denied — check scopes and API enablement",
        "  } else if (err.code === 404) {",
        "    // Not found",
        "  }",
        "  console.error(err.message);",
        "}",
        "```",
        "",
        "## Batch Requests",
        "",
        "For multiple independent operations, use batch requests to reduce round trips:",
        "",
        "```typescript",
        "// googleapis supports batching via gaxios or manual HTTP batch",
        "// See references/googleapis-client.md for batch patterns",
        "```",
        "",
    ])

    return "\n".join(lines) + "\n"


def gen_gotchas(doc: dict) -> str:
    name = doc.get("name", "unknown")
    title = doc.get("title", name)

    lines = [
        f"# {title} - Gotchas & Troubleshooting",
        "",
        "## Rate Limits",
        "",
        "- Check quotas at [Google Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/{name}.googleapis.com/quotas)",
        "- Default quotas vary by API and project billing status",
        "- Monitor usage via `X-RateLimit-*` response headers (when available)",
        "",
        "## Common Errors",
        "",
        "| Code | Meaning | Fix |",
        "|------|---------|-----|",
        "| 400 | Invalid request | Check parameter types and required fields |",
        "| 401 | Unauthenticated | Refresh token or check credentials |",
        "| 403 | Forbidden | Enable API in console, check scopes, verify billing |",
        "| 404 | Not found | Verify resource ID and API version |",
        "| 429 | Rate limited | Implement exponential backoff with jitter |",
        "| 500 | Server error | Retry with backoff |",
        "| 503 | Service unavailable | Retry with backoff |",
        "",
        "## Exponential Backoff",
        "",
        "Google APIs require exponential backoff for retries:",
        "",
        "```typescript",
        "async function withBackoff<T>(fn: () => Promise<T>, maxRetries = 5): Promise<T> {",
        "  for (let i = 0; i < maxRetries; i++) {",
        "    try {",
        "      return await fn();",
        "    } catch (err: any) {",
        "      if (i === maxRetries - 1 || ![429, 500, 503].includes(err.code)) throw err;",
        "      const delay = Math.pow(2, i) * 1000 + Math.random() * 1000;",
        "      await new Promise(r => setTimeout(r, delay));",
        "    }",
        "  }",
        "  throw new Error('Unreachable');",
        "}",
        "```",
        "",
        "## Google API Error Response Format",
        "",
        "All Google APIs return errors in this format:",
        "",
        "```json",
        "{",
        '  "error": {',
        '    "code": 403,',
        '    "message": "The caller does not have permission",',
        '    "status": "PERMISSION_DENIED",',
        '    "errors": [{ "domain": "global", "reason": "forbidden" }]',
        "  }",
        "}",
        "```",
        "",
        "## Tips",
        "",
        f"- Always enable `{name}.googleapis.com` in your GCP project before making calls",
        "- Use `fields` parameter to request only needed fields (reduces response size and latency)",
        "- For Workspace APIs, ensure the OAuth consent screen is configured",
        "- Service accounts need domain-wide delegation for Workspace APIs acting on behalf of users",
        "",
    ]

    return "\n".join(lines) + "\n"


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(description="Generate markdown from Discovery JSON")
    parser.add_argument("discovery_json", help="Path to Discovery JSON file")
    parser.add_argument("--out-dir", default=None, help="Output base directory (default: <skill>/references)")
    args = parser.parse_args()

    with open(args.discovery_json, "r", encoding="utf-8") as f:
        doc = json.load(f)

    api_name = doc.get("name", "unknown")
    api_slug = slugify(api_name)

    if args.out_dir:
        out_base = Path(args.out_dir)
    else:
        script_dir = Path(__file__).resolve().parent
        out_base = script_dir.parent / "references"

    api_dir = out_base / api_slug
    api_dir.mkdir(parents=True, exist_ok=True)

    files = {
        "README.md": gen_readme(doc),
        "configuration.md": gen_configuration(doc),
        "api.md": gen_api(doc),
        "patterns.md": gen_patterns(doc),
        "gotchas.md": gen_gotchas(doc),
    }

    for filename, content in files.items():
        filepath = api_dir / filename
        filepath.write_text(content, encoding="utf-8")

    methods = collect_methods(doc)
    schemas = doc.get("schemas", {})
    print(f"{api_slug}/: {len(files)} files, {len(methods)} methods, {len(schemas)} schemas")


if __name__ == "__main__":
    main()
