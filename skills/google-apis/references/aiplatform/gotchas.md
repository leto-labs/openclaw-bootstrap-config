# Vertex AI API - Gotchas & Troubleshooting

## Gemini Model Quotas & Rate Limits

### Requests Per Minute (RPM) by Model

Gemini 2.0+ models use **Standard PayGo** by default -- quotas are dynamically managed based on your consumption option rather than fixed RPM values. Check your actual quotas in the Cloud Console.

| Base Model | Default RPM |
|------------|-------------|
| `gemini-2.0-flash-001` | Dynamic (Standard PayGo) |
| `gemini-2.0-flash-lite-001` | Dynamic (Standard PayGo) |
| `multimodalembedding` | 120 |
| `text-embedding` | 1,500 |
| `gemini-embedding` | 100,000 |
| `medlm-medium` | 3 (us-central1 only) |
| `medlm-large` | 3 (us-central1 only) |

### Token Limits

- **Gemini 2.0 Flash / Flash-Lite**: Temperature range 0.0-2.0 (default 1.0), topP default 0.95
- **maxOutputTokens**: Model-specific; set explicitly to avoid truncation
- **Embeddings**: Max 250 input texts per request, 20,000 tokens per request, first 2,048 tokens per input text used
- **Gemini Embedding quota**: 5,000,000 input tokens per minute per project (token-based, not RPM-based)

### Platform Rate Limits

| Request Type | Requests Per Minute |
|---|---|
| Resource management (CRUD) | 600 |
| Job / LRO submission | 60 |
| Online inference (public endpoints) | 30,000 |
| Online inference throughput | 1.5 GB/min |
| Online explain | 600 |
| Count tokens / compute tokens | 3,000 |
| Context caching (CRUD) | 200 |

### Batch Prediction Limits

- **Gemini models**: No predefined quota limits. Resources are dynamically allocated from a shared pool based on real-time model availability.
- **Non-Gemini models**: `textembedding_gecko` concurrent batch prediction jobs: 4

### Agent Engine Quotas

| Operation | Quota |
|---|---|
| Create/delete/update Agent Engine resources | 10/min |
| Query or StreamQuery | 90/min |
| Session create/delete/update | 100/min |
| Session event append | 300/min |
| Concurrent BidiStreamQuery connections | 10/min |
| Max Agent Engine resources | 100 per region |

### Gen AI Evaluation Service

| Quota | Value |
|---|---|
| Evaluation requests per minute | 1,000 per project per region |
| Concurrent evaluation runs | 20 per project per region |
| Request timeout | 60 seconds |

Note: First-time evaluation in a new project may have a 2-minute setup delay. Wait and retry.

## Regional Availability

- **Not all models are available in all regions.** Gemini models are available in major regions (us-central1, europe-west1, asia-northeast1, etc.) but specialty models like `medlm-medium`/`medlm-large` are restricted to `us-central1`.
- **Quotas are per-project, per-region.** You can run 30,000 online inference RPM in us-central1 AND another 30,000 in europe-west1.
- **Endpoints are region-specific**: `https://{LOCATION}-aiplatform.googleapis.com/v1/...`. Using the wrong region for a model returns 404.
- **`videotext` embeddings**: Only available in `us-central1` (Iowa).

## Model Version Pinning

- **Auto-updated versions**: `gemini-2.0-flash` (no suffix) auto-updates to the latest stable version. Good for development.
- **Pinned versions**: `gemini-2.0-flash-001` stays fixed. Use pinned versions in production to avoid unexpected behavior changes.
- **Tuned model inference** shares the same quota as the base model. There is no separate quota for tuned models.
- Models have a lifecycle: preview -> stable -> deprecated. Monitor [model versioning docs](https://cloud.google.com/vertex-ai/generative-ai/docs/learn/model-versioning) for deprecation notices.

## Pricing Tiers & Consumption Options

- **Standard PayGo**: Default for Gemini 2.0+. Pay per token consumed, no upfront commitment. Quotas scale dynamically.
- **Provisioned Throughput**: Reserved capacity for predictable workloads. Higher cost but guaranteed throughput.
- **Batch prediction**: Lower cost than online inference. No predefined quota limits for Gemini; resources allocated from shared pool.
- **Context caching**: Reduces cost for repeated requests against the same large context. Cached tokens are billed at a reduced rate.
- **Input vs output tokens**: Priced differently. Output tokens cost more than input tokens. Use `maxOutputTokens` to control spend.

## Common Errors

| Code | Meaning | Fix |
|------|---------|-----|
| 400 | Invalid request | Check parameter types, required fields, MIME types, model name format |
| 401 | Unauthenticated | Refresh token or check credentials |
| 403 | Forbidden | Enable API in console, check scopes, verify billing is active |
| 404 | Not found | Verify resource ID, API version, region, and model name |
| 429 | Rate limited | Implement exponential backoff with jitter; check quota in console |
| 500 | Server error | Retry with backoff |
| 503 | Service unavailable | Retry with backoff |

### Gemini-Specific finishReason Values

When the model stops generating, check `finishReason` in the response:

| finishReason | Meaning |
|---|---|
| `FINISH_REASON_STOP` | Natural stop or stop sequence hit |
| `FINISH_REASON_MAX_TOKENS` | Hit `maxOutputTokens` limit |
| `FINISH_REASON_SAFETY` | Blocked by safety filters (response content will be empty) |
| `FINISH_REASON_RECITATION` | Blocked for unauthorized citations |
| `FINISH_REASON_BLOCKLIST` | Response contains blocked terms |
| `FINISH_REASON_MALFORMED_FUNCTION_CALL` | Function call could not be parsed |

If you get empty responses with `FINISH_REASON_SAFETY`, adjust `safetySettings` thresholds or rephrase the prompt.

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

## Error 429 Troubleshooting

If you get `RESOURCE_EXHAUSTED` (429):
1. Check which quota is exhausted in [Cloud Console > Quotas](https://console.cloud.google.com/iam-admin/quotas)
2. Filter by `aiplatform.googleapis.com` to find the specific metric
3. Request a quota increase if needed, or switch to a different region
4. For Gemini models on Standard PayGo, consider Provisioned Throughput for guaranteed capacity

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

- Always enable `aiplatform.googleapis.com` in your GCP project before making calls
- Use `fields` parameter to request only needed fields (reduces response size and latency)
- Endpoints are regional: `https://{LOCATION}-aiplatform.googleapis.com/v1/...`
- The `responseMimeType` must match the `responseSchema` -- do not use `text/plain` with a schema
- When using `inlineData`, images are limited to 7 MB; use `fileData` with Cloud Storage URIs for larger files
- For Cloud Storage URIs, the object must be publicly readable or in the same GCP project
- YouTube URLs are supported in `fileData` but limited to one per request
- VPC Service Controls block media file URLs in `fileUri` -- use Cloud Storage instead
- System instruction `role` field is ignored; only the `text` matters
- Set `seed` for reproducible outputs, but determinism is best-effort, not guaranteed
