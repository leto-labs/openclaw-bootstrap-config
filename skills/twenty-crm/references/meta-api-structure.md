# Twenty Core + Meta API structure

Use this note when reasoning about how Twenty exposes API schema and why specs can drift per workspace.

## Baseline references in this repo

Default snapshots for this workspace live at:

- `skills/twenty-crm/openapi/twenty-core.json`
- `skills/twenty-crm/openapi/twenty-metadata.json`

In practice, these stay valid for normal CRM record operations and drift mostly when metadata (objects/fields/views/layouts) is modified.

## OpenAPI endpoints

- `GET /rest/open-api/core`
- `GET /rest/open-api/metadata`

Both routes are served by `OpenApiController` and delegated to `OpenApiService`.

## Inspect key files via repocache

For source-level verification, use the `repocache` skill and inspect the local clone:

- `repocache/twentyhq/twenty`

All paths listed below are relative to that clone root. Avoid relying on remote browsing when local repocache is available.

Key files:

- `packages/twenty-server/src/engine/core-modules/open-api/open-api.controller.ts`
- `packages/twenty-server/src/engine/core-modules/open-api/open-api.service.ts`
- `packages/twenty-server/src/engine/core-modules/open-api/utils/base-schema.utils.ts`

## Why core OpenAPI is dynamic

`generateCoreSchema()` derives paths/schemas from workspace metadata maps (`flatObjectMetadataMaps`, `flatFieldMetadataMaps`).

Practical consequences:

- Two workspaces can expose different object endpoints.
- Custom object/field changes alter core OpenAPI output.
- Fetching without a valid token can return a reduced/base schema.

Operational takeaway:

- Use baseline specs for record-only tasks.
- Treat metadata writes as schema-change boundaries that require spec refresh.

Core path families are generated per object:

- `/<objectPlural>`
- `/batch/<objectPlural>`
- `/<objectPlural>/{id}`
- `/<objectPlural>/duplicates`
- `/restore/<objectPlural>/{id}`
- `/restore/<objectPlural>`
- `/<objectPlural>/merge`
- `/<objectPlural>/groupBy`

## Metadata OpenAPI shape

`generateMetaDataSchema()` builds metadata paths from a metadata resource list (for example: `objects`, `fields`, `webhooks`, `apiKeys`, `views`, `viewFields`, `viewFilters`, `viewSorts`, `viewGroups`, `viewFilterGroups`, `pageLayouts`, `pageLayoutTabs`, `pageLayoutWidgets`).

Use fetched metadata OpenAPI as runtime truth for available operations.

## Compatibility caveat

The metadata REST query-builder parser in current Twenty source (`parse-metadata-path.utils.ts`) enforces `fields` and `objects` path names. This can be stricter than generated metadata OpenAPI in some versions/builds.

Treat this as version-sensitive behavior:

1. Prefer endpoints present in the live fetched OpenAPI.
2. If an advertised metadata REST route fails at runtime, use GraphQL metadata endpoint `/metadata` for that operation.
3. Refresh both OpenAPI files after metadata mutations and continue from updated specs.

## Authentication details

Token extraction supports:

- `Authorization: Bearer <token>`
- Query fallback `?token=<token>` (used by some playground/tooling flows)

Relevant file:

- `packages/twenty-server/src/engine/core-modules/jwt/services/jwt-wrapper.service.ts`

## Metadata-change implications

Metadata mutations run through migration validation/build/run services before becoming active. Expect schema-impacting operations to be transactional and validated.

Operational rule:

- Perform metadata change.
- Refetch core + metadata OpenAPI.
- Then perform core record writes that depend on new fields/objects.
