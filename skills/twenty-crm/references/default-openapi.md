# Default OpenAPI references

This skill keeps baseline Twenty OpenAPI snapshots here:

- `skills/twenty-crm/openapi/twenty-core.json`
- `skills/twenty-crm/openapi/twenty-metadata.json`

Use them as the default contract when metadata is not changing.

## Why keep defaults

- Faster day-to-day CRM work (no mandatory live fetch every task)
- Stable prompt input for code generation
- Predictable behavior in offline or flaky-network sessions

## When defaults are usually safe

- record-only CRUD tasks,
- filtering/sorting/pagination work,
- no object/field/view/layout changes in current flow.

## When defaults are not enough

Refresh from live instance when:

- metadata has changed (or is about to change),
- environment changed (different workspace/server),
- API errors suggest schema mismatch.

## Refresh command

```bash
bash skills/twenty-crm/scripts/fetch_openapi_specs.sh \
  --base-url "$TWENTY_BASE_URL" \
  --token "$TWENTY_API_KEY" \
  --out-dir skills/twenty-crm/openapi \
  --pretty
```

## Optional stale-first behavior

If you want to keep operating with baseline specs when live fetch fails:

```bash
bash skills/twenty-crm/scripts/fetch_openapi_specs.sh \
  --base-url "$TWENTY_BASE_URL" \
  --token "$TWENTY_API_KEY" \
  --out-dir skills/twenty-crm/openapi \
  --allow-stale \
  --fallback-dir skills/twenty-crm/openapi
```

The baseline files are now skill-local by default, so no extra copy step is required.
