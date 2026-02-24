# Twenty API workflows

Use these playbooks to balance correctness (schema-aware) and speed (baseline-first).

## Table of contents

1. Baseline-first operation mode
2. Sync policy
3. CRM record operations (core REST + GraphQL)
4. Metadata lifecycle (REST + GraphQL)
5. End-to-end custom object rollout
6. Drift triage and recovery
7. High-signal troubleshooting

## 1) Baseline-first operation mode

Default references in this skill:

- `skills/twenty-crm/openapi/twenty-core.json`
- `skills/twenty-crm/openapi/twenty-metadata.json`

Use these baseline specs first when:

- task is record-only,
- no metadata changes are in scope,
- no drift symptoms are present.

## 2) Sync policy

### Standard sync

```bash
bash skills/twenty-crm/scripts/fetch_openapi_specs.sh \
  --base-url "$TWENTY_BASE_URL" \
  --token "$TWENTY_API_KEY" \
  --out-dir skills/twenty-crm/openapi \
  --pretty
```

### Sync with stale fallback

Useful when network/auth is flaky but baseline specs are acceptable for current task:

```bash
bash skills/twenty-crm/scripts/fetch_openapi_specs.sh \
  --base-url "$TWENTY_BASE_URL" \
  --token "$TWENTY_API_KEY" \
  --out-dir skills/twenty-crm/openapi \
  --allow-stale \
  --fallback-dir skills/twenty-crm/openapi
```

### When sync is required

- after any metadata mutation (object/field/view/layout/webhook/api key changes),
- when endpoint or field mismatch errors appear,
- when switching to another workspace or environment.

## 3) CRM record operations (core REST + GraphQL)

For hardened transport patterns (`curl` + Python, including Cloudflare `1010` behavior), use `skills/twenty-crm/references/http-clients.md`.

### Create record

```bash
curl -sS -X POST "$TWENTY_BASE_URL/rest/partners" \
  -H "Authorization: Bearer $TWENTY_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"name":"Acme Partner","tier":"gold"}'
```

### Query with filter/order/pagination

```bash
curl -sS "$TWENTY_BASE_URL/rest/partners?filter=tier[eq]:\"gold\"&order_by=createdAt[DescNullsLast]&limit=20" \
  -H "Authorization: Bearer $TWENTY_API_KEY"
```

### Update record

```bash
curl -sS -X PATCH "$TWENTY_BASE_URL/rest/partners/$PARTNER_ID" \
  -H "Authorization: Bearer $TWENTY_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"tier":"platinum"}'
```

### 3.1 Core GraphQL for selective reads (optimized payloads)

Use core GraphQL when you need tighter payload control or nested relation reads.

```bash
curl -sS -X POST "$TWENTY_BASE_URL/graphql" \
  -H "Authorization: Bearer $TWENTY_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "query":"query Companies($first:Int!, $after:String) { companies(first:$first, after:$after) { edges { cursor node { id name domainName { primaryLinkUrl } } } pageInfo { hasNextPage endCursor } } }",
    "variables":{"first":50,"after":null}
  }'
```

Notes:

- Core GraphQL collections usually use cursor-connection shape (`edges/node/pageInfo`) with `first`/`after` (or `last`/`before`), not REST-style `limit`.
- Request only fields you need to reduce response size and parsing cost.

## 4) Metadata lifecycle (REST + GraphQL)

### 4.1 Discover metadata objects and fields

Some hosted versions reject query params on metadata REST routes (for example `?limit=...`). Start without query params, then use GraphQL metadata when you need richer filtering.

```bash
curl -sS "$TWENTY_BASE_URL/rest/metadata/objects" \
  -H "Authorization: Bearer $TWENTY_API_KEY"
```

```bash
curl -sS "$TWENTY_BASE_URL/rest/metadata/fields" \
  -H "Authorization: Bearer $TWENTY_API_KEY"
```

### 4.2 Create custom object (REST metadata)

```bash
curl -sS -X POST "$TWENTY_BASE_URL/rest/metadata/objects" \
  -H "Authorization: Bearer $TWENTY_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "nameSingular": "partner",
    "namePlural": "partners",
    "labelSingular": "Partner",
    "labelPlural": "Partners",
    "description": "Partner records",
    "icon": "IconBuilding"
  }'
```

### 4.3 Create custom field (REST metadata)

```bash
curl -sS -X POST "$TWENTY_BASE_URL/rest/metadata/fields" \
  -H "Authorization: Bearer $TWENTY_API_KEY" \
  -H "Content-Type: application/json" \
  -d "{
    \"objectMetadataId\": \"$PARTNER_OBJECT_ID\",
    \"type\": \"TEXT\",
    \"name\": \"tier\",
    \"label\": \"Tier\",
    \"description\": \"Partner tier\",
    \"isNullable\": true
  }"
```

### 4.4 Relation-heavy metadata fallback (GraphQL metadata)

Use when relation payload support is easier or REST behavior is version-sensitive.

```bash
curl -sS -X POST "$TWENTY_BASE_URL/metadata" \
  -H "Authorization: Bearer $TWENTY_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "query":"mutation CreateOneField($input: CreateOneFieldMetadataInput!) { createOneField(input: $input) { id name type } }",
    "variables":{
      "input":{
        "field":{
          "name":"company",
          "label":"Company",
          "type":"RELATION",
          "objectMetadataId":"'"$PARTNER_OBJECT_ID"'",
          "relationCreationPayload":{
            "type":"MANY_TO_ONE",
            "targetObjectMetadataId":"'"$COMPANY_OBJECT_ID"'",
            "targetFieldLabel":"Partners",
            "targetFieldIcon":"IconBuilding"
          }
        }
      }
    }
  }'
```

### 4.5 Mandatory post-metadata resync

```bash
bash skills/twenty-crm/scripts/fetch_openapi_specs.sh \
  --base-url "$TWENTY_BASE_URL" \
  --token "$TWENTY_API_KEY" \
  --out-dir skills/twenty-crm/openapi \
  --pretty
```

## 5) End-to-end custom object rollout

1. Read baseline metadata spec and confirm object/field payload contract.
2. Create object.
3. Create fields (including relation fields if needed).
4. Resync specs.
5. Verify new object path exists in core spec (`/rest/<objectPlural>`).
6. Start record ingestion.
7. On errors, run drift triage.

## 6) Drift triage and recovery

### Common symptoms

- `404` for expected object endpoints
- field validation failures for recently added fields
- metadata path behavior mismatch across environments

### Recovery steps

1. Resync specs from target instance.
2. Recheck object names as plural endpoints.
3. Retry operation.
4. If metadata REST route still fails but appears in spec, execute via GraphQL `/metadata`.
5. Resync and continue with core REST.

## 7) High-signal troubleshooting

- `401`/`403`: verify token validity, role assignment, and metadata permissions.
- object path not found in core: verify plural naming and resync after metadata changes.
- metadata route mismatch: treat as version nuance and use GraphQL metadata fallback.
- metadata route fails only with query params: retry metadata REST without query params, then move to GraphQL metadata for advanced filtering.
- name validation/rejected metadata names: avoid reserved keywords and special characters.
