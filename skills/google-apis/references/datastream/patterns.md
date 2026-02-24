# Datastream API - Common Patterns

## Standard Patterns

### Pagination

Most `list` methods support pagination with `pageToken`/`nextPageToken`:

```typescript
let pageToken: string | undefined;
const allItems = [];
do {
  const res = await api.resource.list({ pageToken, maxResults: 100 });
  allItems.push(...(res.data.items || []));
  pageToken = res.data.nextPageToken;
} while (pageToken);
```

### Create / Insert

```typescript
const res = await api.resource.create({
  requestBody: { /* fields */ },
});
```

### Get by ID

```typescript
const res = await api.resource.get({ id: 'resource-id' });
```

### Update / Patch

```typescript
const res = await api.resource.patch({
  id: 'resource-id',
  requestBody: { /* updated fields */ },
});
```

### Delete

```typescript
const res = await api.resource.delete({ id: 'resource-id' });
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

