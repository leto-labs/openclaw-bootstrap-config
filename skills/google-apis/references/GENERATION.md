# Google APIs Skill — Generation Guide

How this skill was created, and how to regenerate or update it.

## Data Sources

| Source | Provides | URL |
|--------|----------|-----|
| Discovery API list | All API names, versions, descriptions, Discovery URLs | `https://discovery.googleapis.com/discovery/v1/apis` |
| Discovery API per-API | Methods, endpoints, params, schemas, scopes | `https://{service}.googleapis.com/$discovery/rest?version={v}` |
| APIs Explorer | Browsable directory with links to docs/guides | `https://developers.google.com/apis-explorer` |
| developers.google.com | Guides, code examples, rate limits, quickstarts | Per-API pages |

**Discovery provides**: method signatures, HTTP verbs, URL paths, parameters, request/response schemas, auth scopes.
**Discovery does NOT provide**: code examples, real-world patterns, rate limit values, error docs, tutorials.

## Scripts Overview

| Script | Input | Output | Dependencies |
|--------|-------|--------|-------------|
| `fetch_discovery_list.sh` | Discovery API URL | `discovery/discovery-list.json` | curl, python3 |
| `fetch_discovery_doc.sh` | API name + version | `discovery/{name}-{version}.json` | curl, python3 |
| `gen_api_reference.py` | One Discovery JSON | 5 markdown files per API | python3 |
| `gen_all.sh` | Nothing (orchestrates above) | All references + api-index.md | bash, curl, python3 |

## Full Regeneration

To regenerate all APIs from the latest Discovery data:

```bash
cd skills/google-apis
bash scripts/gen_all.sh --pretty
```

This will:
1. Fetch the Discovery API list (~300 APIs)
2. Fetch each API's Discovery document
3. Generate 5 markdown files per API in `references/{api-slug}/`
4. Generate `references/api-index.md`

Options:
- `--parallel 20` — increase parallelism (default 10)
- `--skip-fetch` — skip fetching, regenerate from existing Discovery files
- `--api-filter "gmail|sheets|drive"` — only process matching APIs

## Single API Update

To regenerate one API:

```bash
# 1. Fetch latest Discovery doc
bash scripts/fetch_discovery_doc.sh gmail v1 --pretty

# 2. Regenerate references
python3 scripts/gen_api_reference.py discovery/gmail-v1.json
```

Output: `references/gmail/` with README.md, configuration.md, api.md, patterns.md, gotchas.md

## Manual Enhancement

The top ~25 APIs were enhanced beyond auto-generation using Firecrawl to scrape developers.google.com. Enhanced files:

- **patterns.md** — Real workflow examples from guides/quickstarts
- **gotchas.md** — Actual rate limit values, quota numbers, known issues
- **api.md** — Richer code examples from official samples

### Firecrawl Scraping Patterns

Entry point: Use APIs Explorer to find per-API doc URLs.

| Category | URL Pattern |
|----------|-------------|
| APIs Explorer entry | `https://developers.google.com/apis-explorer/#p/{api}/{version}/` |
| REST reference | `https://developers.google.com/{api}/reference/rest/{version}/` |
| Guides | `https://developers.google.com/{api}/guides/` or product-specific |
| Quickstart | `https://developers.google.com/{api}/quickstart/nodejs` |
| Usage limits | `https://developers.google.com/{api}/usage-limits` |

**Cloud APIs** follow different patterns:
| Resource | URL Pattern |
|----------|-------------|
| REST reference | `https://cloud.google.com/{product}/docs/reference/rest/{version}/` |
| Guides | `https://cloud.google.com/{product}/docs/` |
| Quotas | `https://cloud.google.com/{product}/quotas` |

### Scraping workflow per API

```bash
# 1. Scrape REST reference
firecrawl scrape "https://developers.google.com/gmail/api/reference/rest/v1/" -f markdown

# 2. Scrape guides/quickstart
firecrawl scrape "https://developers.google.com/gmail/api/quickstart/nodejs" -f markdown

# 3. Scrape usage limits
firecrawl scrape "https://developers.google.com/gmail/api/reference/quota" -f markdown

# 4. Use scraped content to enrich patterns.md, gotchas.md, api.md
```

## Adding a New API

When Google releases a new API:

1. Re-run `bash scripts/gen_all.sh` — new APIs appear in Discovery automatically
2. Or for a single new API:
   ```bash
   bash scripts/fetch_discovery_doc.sh newapi v1 --pretty
   python3 scripts/gen_api_reference.py discovery/newapi-v1.json
   ```
3. Update `SKILL.md` product index if it's a major API
4. Optionally enhance with Firecrawl scraping

## Last Generated

- **Date**: 2026-02-25
- **Discovery API snapshot**: See `discovery/discovery-list.json`
