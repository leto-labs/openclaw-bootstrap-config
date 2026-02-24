# Cloud Vision API - Gotchas & Troubleshooting

Quotas, limits, pricing, common errors, and debugging tips for the Cloud Vision API.

## Quotas

Quotas are per-project and shared across all applications and IP addresses using that project.

| Vision API Quota | Quota Type | Default Value |
|-----------------|------------|---------------|
| Requests per minute (general) | Request quota | 1,800 |
| Celebrity recognition requests per minute | Request quota | 0 (disabled) |
| Label detection requests per minute | Feature quota | 1,800 |
| Text detection requests per minute | Feature quota | 1,800 |
| Async image annotation -- images in processing | In Processing quota | 8,000 |
| Async document text detection -- pages in processing | In Processing quota | 10,000 |

### Product Search Quotas

| Quota | Default Value |
|-------|---------------|
| Requests per minute | 1,800 |
| Batch requests per day | 300 |
| Resource management write requests per minute | 1,200 |
| Resource management requests per minute | 2,400 |

### Quota Types Explained

1. **Request quota** -- counts per request sent to the API endpoint.
2. **Feature quota** -- counts per image or page sent. For `files:annotate`, if the `pages` field is not specified, the quota counts 5 pages per file (but you are only billed for actual pages processed).
3. **In Processing quota** -- counts images/pages currently being processed by async methods. Excess items are queued, not rejected.

### Requesting Quota Increases

- Edit quotas in [Google Cloud Console > Quotas](https://console.cloud.google.com/iam-admin/quotas).
- When requesting a feature quota increase, ensure: `(Requests per minute) * (batch size) >= requested feature quota`. Otherwise the request quota will still throttle you.
- Both "per project per user" and "per project" variants may need adjustment.

---

## Content Limits

| Limit | Value |
|-------|-------|
| Image file size | 20 MB |
| JSON request object size | 10 MB |
| PDF file size | 1 GB |
| Images per `images:annotate` request (sync) | 16 |
| Images per `images:asyncBatchAnnotate` request (async) | 2,000 |
| Pages per `files:annotate` request (sync) | 5 |
| Pages per `files:asyncBatchAnnotate` request (async) | 2,000 |

### Base64 Encoding Inflation

Base64-encoded images are approximately 37% larger than the original binary file. An image under the 20 MB file size limit may exceed the 10 MB JSON request size limit when base64-encoded. For large images, use Cloud Storage URIs (`gs://`) or publicly accessible HTTP URLs instead of inline base64.

---

## Supported Image Formats

The Vision API supports these image formats:
- JPEG
- PNG
- GIF (first frame only for animated GIFs)
- BMP
- WEBP
- RAW
- ICO
- PDF (via `files:annotate` / `files:asyncBatchAnnotate` only)
- TIFF (via `files:annotate` / `files:asyncBatchAnnotate` only)

---

## Pricing

Charges are per image. For multi-page files (PDF/TIFF), each page counts as one image. Each feature applied to an image is a separate billable unit.

| Feature | First 1,000 units/month | Units 1,001 - 5,000,000/month | Units 5,000,001+/month |
|---------|------------------------|-------------------------------|----------------------|
| Label Detection | Free | $1.50 | $1.00 |
| Text Detection | Free | $1.50 | $0.60 |
| Document Text Detection | Free | $1.50 | $0.60 |
| SafeSearch Detection | Free | Free with Label Detection, or $1.50 | Free with Label Detection, or $0.60 |
| Face Detection | Free | $1.50 | $0.60 |
| Landmark Detection | Free | $1.50 | $0.60 |
| Logo Detection | Free | $1.50 | $0.60 |
| Image Properties | Free | $1.50 | $0.60 |
| Crop Hints | Free | Free with Image Properties, or $1.50 | Free with Image Properties, or $0.60 |
| Web Detection | Free | $3.50 | Contact Google |
| Object Localization | Free | $2.25 | $1.50 |

### Pricing Tips

- **SafeSearch is free** when combined with Label Detection on the same image.
- **Crop Hints is free** when combined with Image Properties on the same image.
- **Web Detection** is the most expensive feature at $3.50 per 1,000 units.
- The free tier resets monthly -- first 1,000 units per feature per month are always free.
- Each feature counts independently: requesting 3 features on 1 image = 3 billable units (one per feature).

---

## Confidence Score Interpretation

### Numeric Scores (0.0 - 1.0)

Used by: Label Detection, Landmark Detection, Logo Detection, Object Localization, Web Detection entities.

| Score Range | Interpretation |
|-------------|---------------|
| 0.90 - 1.00 | Very high confidence -- reliable for automated decisions |
| 0.70 - 0.89 | High confidence -- suitable for most use cases |
| 0.50 - 0.69 | Moderate confidence -- consider human review |
| Below 0.50 | Low confidence -- likely noise, use with caution |

### Likelihood Enum

Used by: Face Detection (emotions), SafeSearch Detection.

| Value | Meaning |
|-------|---------|
| `UNKNOWN` | Unknown likelihood |
| `VERY_UNLIKELY` | Very unlikely |
| `UNLIKELY` | Unlikely |
| `POSSIBLE` | Possible |
| `LIKELY` | Likely |
| `VERY_LIKELY` | Very likely |

**Recommendation**: For content moderation, block at `LIKELY` or `VERY_LIKELY`. Using `POSSIBLE` as a threshold catches more but produces more false positives.

---

## Common Errors

| Code | Meaning | Fix |
|------|---------|-----|
| 400 | Invalid request / image too large | Check base64 size (10 MB JSON limit); use GCS URI for large images |
| 400 | Cannot access URL | Ensure URL is publicly reachable; use GCS with proper IAM for private images |
| 401 | Unauthenticated | Refresh token or check credentials |
| 403 | API not enabled | Run `gcloud services enable vision.googleapis.com` |
| 403 | Insufficient permissions | Grant `roles/storage.objectViewer` for GCS access |
| 404 | Not found | Verify resource ID, API version, and endpoint URL |
| 429 | Rate limited / quota exceeded | Implement exponential backoff; use `asyncBatchAnnotate` for bulk; request quota increase |
| 500 | Server error | Retry with backoff |
| 503 | Service unavailable | Retry with backoff |

### Partial Failures in Batch Requests

When sending multiple images in a single `images:annotate` request, individual images may fail while others succeed. The HTTP response will still be 200. Always check the `error` field in each response entry:

```typescript
for (const response of batchResult.responses) {
  if (response.error) {
    console.error(`Error on image: ${response.error.message}`);
    continue;
  }
  // Process successful result
}
```

---

## TEXT_DETECTION vs DOCUMENT_TEXT_DETECTION

| Aspect | TEXT_DETECTION | DOCUMENT_TEXT_DETECTION |
|--------|--------------|----------------------|
| Optimized for | Sparse text (signs, labels, captions) | Dense text (documents, books, handwriting) |
| Response | `textAnnotations` + `fullTextAnnotation` | `fullTextAnnotation` only |
| Handwriting | Limited | Good support |
| PDF/TIFF | Not applicable | Supported via `files:annotate` |
| Precedence | Overridden when both requested | Takes precedence |

If you request both `TEXT_DETECTION` and `DOCUMENT_TEXT_DETECTION` on the same image, `DOCUMENT_TEXT_DETECTION` takes precedence. Do not request both simultaneously.

---

## Debugging Tips

1. **Always check `response.error`** in batch results -- individual images can fail even when the HTTP request returns 200.
2. **Use `maxResults`** to limit response size. Without it, some features (especially Label Detection) may return many low-confidence results.
3. **Prefer Cloud Storage URIs** over base64 for images larger than ~7 MB (accounting for ~37% base64 inflation).
4. **Set `imageContext.languageHints`** for OCR on non-English text to improve accuracy.
5. **Async for bulk**: Use `asyncBatchAnnotate` for more than 16 images. Sync `images:annotate` is limited to 16 images per request.
6. **Monitor quota usage** in the [Cloud Console](https://console.cloud.google.com/iam-admin/quotas) to avoid unexpected throttling.
7. **Face detection does not identify individuals** -- it only detects face presence, landmarks, and emotion likelihoods.
8. **Celebrity recognition is disabled by default** (quota is 0). Contact Google to enable it.
9. **GIF limitation**: Only the first frame of animated GIFs is analyzed.
10. **PDF page counting for quotas**: If you do not specify the `pages` field in `files:annotate`, the quota counts 5 pages per file regardless of actual page count.

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
