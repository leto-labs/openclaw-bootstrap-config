# Accelerated Mobile Pages (AMP) URL API - API Reference

**Version**: `v1` | **Methods**: 1 | **Schemas**: 4

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `acceleratedmobilepageurl.ampUrls.batchGet` | POST | `v1/ampUrls:batchGet` | Returns AMP URL(s) and equivalent [AMP Cache URL(s)](/amp/cache/overview#amp-cache-url-format). |

### `acceleratedmobilepageurl.ampUrls.batchGet`

**POST** `v1/ampUrls:batchGet`

Returns AMP URL(s) and equivalent [AMP Cache URL(s)](/amp/cache/overview#amp-cache-url-format).

**Request body**: `BatchGetAmpUrlsRequest`

**Response**: `BatchGetAmpUrlsResponse`

```typescript
const res = await acceleratedmobilepageurl.ampUrls.batchGet({
  // parameters
});
```

---

## Schemas

### `AmpUrl`

AMP URL response for a requested URL.

| Property | Type | Description |
|----------|------|-------------|
| `ampUrl` | `string` | The AMP URL pointing to the publisher's web server. |
| `cdnAmpUrl` | `string` | The [AMP Cache URL](/amp/cache/overview#amp-cache-url-format) pointing to the cached document in ... |
| `originalUrl` | `string` | The original non-AMP URL. |

### `AmpUrlError`

AMP URL Error resource for a requested URL that couldn't be found.

| Property | Type | Description |
|----------|------|-------------|
| `errorCode` | `string` | The error code of an API call. |
| `errorMessage` | `string` | An optional descriptive error message. |
| `originalUrl` | `string` | The original non-AMP URL. |

### `BatchGetAmpUrlsRequest`

AMP URL request for a batch of URLs.

| Property | Type | Description |
|----------|------|-------------|
| `lookupStrategy` | `string` | The lookup_strategy being requested. |
| `urls` | `array<string>` | List of URLs to look up for the paired AMP URLs. The URLs are case-sensitive. Up to 50 URLs per l... |

### `BatchGetAmpUrlsResponse`

Batch AMP URL response.

| Property | Type | Description |
|----------|------|-------------|
| `ampUrls` | `array<AmpUrl>` | For each URL in BatchAmpUrlsRequest, the URL response. The response might not be in the same orde... |
| `urlErrors` | `array<AmpUrlError>` | The errors for requested URLs that have no AMP URL. |

