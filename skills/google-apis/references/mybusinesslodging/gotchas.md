# My Business Lodging API - Gotchas & Troubleshooting

## Rate Limits

- Check quotas at [Google Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/{name}.googleapis.com/quotas)
- Default quotas vary by API and project billing status
- Monitor usage via `X-RateLimit-*` response headers (when available)

## Common Errors

| Code | Meaning | Fix |
|------|---------|-----|
| 400 | Invalid request | Check parameter types and required fields |
| 401 | Unauthenticated | Refresh token or check credentials |
| 403 | Forbidden | Enable API in console, check scopes, verify billing |
| 404 | Not found | Verify resource ID and API version |
| 429 | Rate limited | Implement exponential backoff with jitter |
| 500 | Server error | Retry with backoff |
| 503 | Service unavailable | Retry with backoff |

## Exponential Backoff

Google APIs require exponential backoff for retries:

```typescript
async function withBackoff<T>(fn: () => Promise<T>, maxRetries = 5): Promise<T> {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await fn();
    } catch (err: any) {
      if (i === maxRetries - 1 || ![429, 500, 503].includes(err.code)) throw err;
      const delay = Math.pow(2, i) * 1000 + Math.random() * 1000;
      await new Promise(r => setTimeout(r, delay));
    }
  }
  throw new Error('Unreachable');
}
```

## Google API Error Response Format

All Google APIs return errors in this format:

```json
{
  "error": {
    "code": 403,
    "message": "The caller does not have permission",
    "status": "PERMISSION_DENIED",
    "errors": [{ "domain": "global", "reason": "forbidden" }]
  }
}
```

## Tips

- Always enable `mybusinesslodging.googleapis.com` in your GCP project before making calls
- Use `fields` parameter to request only needed fields (reduces response size and latency)
- For Workspace APIs, ensure the OAuth consent screen is configured
- Service accounts need domain-wide delegation for Workspace APIs acting on behalf of users

