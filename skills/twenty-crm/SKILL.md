---
name: twenty-crm
description: Manage Twenty CRM through API-first workflows for both record operations (Core API) and data-model administration (Metadata API). Use when tasks involve querying/updating CRM records, creating or changing objects/fields/views/layouts, generating code from Twenty OpenAPI, or keeping integrations aligned with workspace-specific schema behavior. Includes baseline-default spec usage plus targeted sync for metadata-driven drift.
---

# Twenty CRM

Use Twenty as a schema-driven platform. Prefer baseline specs for normal CRM work, then sync live specs when metadata changes or drift signals appear.

## Baseline specs (default references)

Use these files as the default API contract:

- `skills/twenty-crm/openapi/twenty-core.json`
- `skills/twenty-crm/openapi/twenty-metadata.json`

For most record-only tasks, use baseline specs first. In Twenty, schema drift is usually triggered by metadata changes, not ordinary record writes.

## Sync decision tree

1. **Record-only task and no metadata changes in scope**
   - Use baseline specs.
   - Skip live sync unless drift symptoms appear.
2. **Metadata change planned or just completed**
   - Sync live specs before change (optional but preferred).
   - Apply metadata changes.
   - Sync live specs again (required).
3. **Unknown environment / self-hosted instance / inconsistent errors**
   - Sync live specs immediately.
4. **Sync unavailable (auth/network)**
   - Use baseline specs and explicitly call out stale-spec risk.

## Sync commands

- Standard sync:
  - `bash skills/twenty-crm/scripts/fetch_openapi_specs.sh --base-url "$TWENTY_BASE_URL" --token "$TWENTY_API_KEY" --out-dir skills/twenty-crm/openapi --pretty`
- Allow stale fallback when live fetch fails:
  - `bash skills/twenty-crm/scripts/fetch_openapi_specs.sh --base-url "$TWENTY_BASE_URL" --token "$TWENTY_API_KEY" --out-dir skills/twenty-crm/openapi --allow-stale --fallback-dir skills/twenty-crm/openapi`

## Core API workflow (CRM records)

- Use `/rest/<objectPlural>` endpoints from current spec (baseline or synced).
- Use query params exactly as declared (`filter`, `order_by`, `limit`, `starting_after`, `ending_before`, `depth`, and others).
- Use plural object names from schema; do not assume object naming conventions.
- For long-running jobs, periodically revalidate spec only if metadata is being modified.
- For read-heavy or relation-heavy retrieval, prefer core GraphQL (`/graphql`) with explicit field selection to minimize payload size.

## HTTP client defaults (curl + Python)

- Prefer `curl` for deterministic CLI/shell usage.
- For Python, prefer `requests`; if using stdlib `urllib`, always set a custom `User-Agent` (do not use default `Python-urllib/*`).
- On `403` with Cloudflare body `error code: 1010`, treat it as edge client-fingerprint blocking and retry using `curl` or Python with explicit `User-Agent`.
- Use explicit `Accept: application/json` and request timeouts for both clients.

## Metadata workflow (data model management)

- Start with discovery:
  - `GET /rest/metadata/objects`
  - `GET /rest/metadata/fields`
- Apply changes through metadata API.
- Expect migration/validation behavior on writes.
- After metadata writes, refresh both specs before resuming core operations.

## Drift signals (trigger resync)

- `404` for endpoints expected from baseline schema.
- Validation errors for fields that should exist.
- Object plural mismatch errors.
- Permission or path behavior differences across environments.
- Recent object/field/view/layout changes in workspace settings.

## GraphQL usage (fallback + query optimization)

Use GraphQL when REST coverage is inconsistent, or when you need query-level payload optimization:

- Metadata graph: `/metadata`
- Core graph: `/graphql`

Common use cases:

- Relation-heavy metadata operations (`relationCreationPayload`)
- Version-specific metadata routes that fail despite appearing in OpenAPI
- Selective core reads (request only needed fields)
- Cursor-based pagination for complex reads (`first`/`after`, `last`/`before`)

## Safety rules

- Never print or commit API keys/tokens.
- Prefer role-scoped API keys (least privilege), especially for metadata changes.
- Prefer short-lived query-token usage when sharing OpenAPI URLs with external tooling.
- Treat local OpenAPI files as cache; treat the live instance as source of truth.
- When proceeding with stale specs, state the risk explicitly.

## Source verification

When implementation-level behavior needs confirmation (for example auth internals, parser behavior, or OpenAPI generation details), use the `repocache` skill and inspect the local clone at `repocache/twentyhq/twenty`.

## References

- `references/default-openapi.md` — baseline default specs and refresh policy
- `references/http-clients.md` — hardened curl/Python calling patterns and Cloudflare `1010` triage
- `references/meta-api-structure.md` — architecture notes and key files (inspect via repocache clone)
- `references/workflows.md` — in-depth CRM and metadata playbooks
- `scripts/fetch_openapi_specs.sh` — refresh both specs and validate output
