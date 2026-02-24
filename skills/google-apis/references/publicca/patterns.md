# Public Certificate Authority API - Common Patterns

## Standard Patterns

### Create / Insert

```typescript
const res = await api.resource.create({
  requestBody: { /* fields */ },
});
```

## Error Handling

```typescript
try {
  const res = await api.resource.method({ ... });
} catch (err: any) {
  if (err.code === 429) {
    // Rate limited — implement exponential backoff
  } else if (err.code === 403) {
    // Permission denied — check scopes and API enablement
  } else if (err.code === 404) {
    // Not found
  }
  console.error(err.message);
}
```

## Batch Requests

For multiple independent operations, use batch requests to reduce round trips:

```typescript
// googleapis supports batching via gaxios or manual HTTP batch
// See references/googleapis-client.md for batch patterns
```

