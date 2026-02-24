# Google Docs API - Gotchas & Troubleshooting

## Index Offset Gotchas

This is the single biggest source of bugs when working with the Docs API.

### Insertions shift all subsequent indexes

When you insert text at index N, every index after N increases by the length of the inserted string. If you have multiple insertions in a single `batchUpdate`, requests execute sequentially -- each sees the state left by the previous request.

**Wrong** -- inserts at the original offsets without accounting for shifts:
```typescript
// BAD: Inserting "AAA" at index 10, then "BBB" at index 20
// After first insert, index 20 is now actually index 23
requests: [
  { insertText: { location: { index: 10 }, text: 'AAA' } },
  { insertText: { location: { index: 20 }, text: 'BBB' } },  // Wrong!
]
```

**Correct** -- either adjust indexes or work backwards:
```typescript
// GOOD: Process in reverse order (highest index first)
requests: [
  { insertText: { location: { index: 20 }, text: 'BBB' } },
  { insertText: { location: { index: 10 }, text: 'AAA' } },
]
```

### Edit backwards for efficiency

Google's official best practice: order your requests in **descending index order** within a single `batchUpdate`. This eliminates the need to recalculate index offsets after each operation.

### Deletions also shift indexes

Deleting content reduces subsequent indexes by the deleted range length. The same backward-editing principle applies.

### UTF-16 code unit indexing

Indexes are measured in UTF-16 code units, not characters. Surrogate pairs (emoji, some CJK characters) consume **two** indexes. For example, the emoji `U+1F604` is `\uD83D\uDE00` in UTF-16 and occupies 2 index positions.

### Body starts at index 0 but first insertable index is 1

The body content begins at index 0 (a `SectionBreak`), but the first index where you can insert text is **1**. Inserting at index 0 will fail with a 400 error.

### Table and image elements consume indexes

Tables, inline images, and other structural elements occupy index ranges. After inserting a table, you must re-read the document (`documents.get`) to discover the new index layout before writing into cells.

## Batch Update Requirements

### All mutations go through batchUpdate

There is **no** individual insert/update/delete endpoint. Every modification uses `documents.batchUpdate` with an array of `Request` objects. Even a single text insertion requires a batch call.

### Requests execute sequentially (not atomically)

Within a single `batchUpdate` call, requests are processed in order. Each request sees the document state as modified by all preceding requests. If any request fails, subsequent requests in the batch are **not** executed. The entire batch is **not** atomic -- partial execution can occur.

### `fields` mask is required for style updates

When using `UpdateTextStyleRequest` or `UpdateParagraphStyleRequest`, you **must** include a `fields` parameter listing which properties to update. If omitted or set to `'*'`, all unspecified properties are **reset to their inherited defaults** (which is almost never what you want).

```typescript
// GOOD: Only updates bold, leaves everything else unchanged
{ updateTextStyle: { textStyle: { bold: true }, fields: 'bold' } }

// BAD: Resets font, color, size, italic, etc. to defaults
{ updateTextStyle: { textStyle: { bold: true }, fields: '*' } }
```

## Image URL Requirements

- The `uri` in `InsertInlineImageRequest` must be a **publicly accessible HTTPS URL**.
- Google's servers fetch the image at insert time -- the URL must be reachable from Google's infrastructure, not just your local network.
- Private URLs, localhost URLs, or URLs requiring authentication will fail.
- There is no way to upload image bytes directly through the Docs API. To use private images, first upload to Google Drive or a public host, then use that URL.
- The image is snapshotted at insert time. If the URL content changes later, the document retains the original image.

## Formatting Inheritance

### Character formatting

Text characters inherit their formatting from the paragraph's `TextStyle`. Any formatting you explicitly set via `UpdateTextStyleRequest` overrides the inherited style. Characters whose formatting you do **not** set continue to inherit from the paragraph style.

### Paragraph formatting

Paragraphs inherit from their named style (e.g., `HEADING_1`, `NORMAL_TEXT`). Explicit `UpdateParagraphStyleRequest` values override the named style. Unset properties continue to inherit.

### Newly inserted text inherits from context

When you insert text at a location, the new text inherits the `TextStyle` of the text at that index. To change its formatting, you must follow the insert with a separate `UpdateTextStyleRequest`.

## Content Structure Complexity

### Document hierarchy is deeply nested

The document JSON has a multi-level hierarchy:
```
document.tabs[].documentTab.body.content[].paragraph.elements[].textRun.content
```
Parsing document content requires recursive traversal. Tables add another level of nesting since each cell contains its own `content[]` array of structural elements.

### Every paragraph ends with a newline

Each paragraph's text content always ends with a `\n` character. This newline is part of the paragraph structure and cannot be deleted without deleting the paragraph itself.

### Section breaks occupy their own structural element

The body starts with a `SectionBreak` at index 0. This is why the first insertable index is 1.

## Tabs

### includeTabsContent defaults to false

When calling `documents.get`, tab contents are **not** returned by default. You must pass `includeTabsContent: true` to get the full content of all tabs.

### batchUpdate defaults to first tab

If you do not specify a `tabId` in your update requests, most operations default to the first tab. Always specify `tabId` explicitly when working with multi-tab documents.

### Tab IDs are opaque strings

Tab IDs are not sequential numbers. Always read them from the document's `tabs[].tabProperties.tabId`.

## Drive API Interaction

### Cannot create documents in a specific folder directly

The Docs API `documents.create` always creates in the user's root Drive folder. To create in a specific folder:
1. Use Docs API to create, then Drive API `files.update` to move it, or
2. Use Drive API `files.create` with `mimeType: 'application/vnd.google-apps.document'` to create directly in the folder.

Either approach requires adding Drive API scopes.

### Copying documents requires Drive API

There is no copy method in the Docs API. Use Drive API `files.copy` to duplicate a document.

## Rate Limits

- Check quotas at [Google Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/docs.googleapis.com/quotas)
- Default: **300 read requests per minute per project** and **60 write requests per minute per user per project**
- Per-user rate limits apply separately from per-project limits
- Monitor usage via the Cloud Console quotas dashboard

## Common Errors

| Code | Meaning | Fix |
|------|---------|-----|
| 400 | Invalid request | Check index ranges (not out of bounds), `fields` mask correctness, required fields present |
| 400 | Invalid index | Index is out of range or falls inside a non-editable element (e.g., index 0 section break) |
| 401 | Unauthenticated | Refresh token or check credentials |
| 403 | Forbidden | Enable `docs.googleapis.com` in console, check scopes, verify billing |
| 404 | Not found | Verify `documentId` -- check for typos or permission issues |
| 409 | Conflict | Document was modified concurrently -- use `WriteControl` with `requiredRevisionId` to detect |
| 429 | Rate limited | Implement exponential backoff with jitter |
| 500 | Server error | Retry with backoff |

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

- Always enable `docs.googleapis.com` in your GCP project before making calls
- Use `fields` parameter on `documents.get` to request only needed top-level fields (reduces response size)
- For Workspace APIs, ensure the OAuth consent screen is configured
- Service accounts need domain-wide delegation for Workspace APIs acting on behalf of users
- When building documents incrementally, re-read the document between batch updates to get fresh indexes rather than trying to track them manually
- Use `ReplaceAllTextRequest` instead of manual find-and-replace with indexes -- it handles index math automatically
- For large documents, `documents.get` can return very large JSON payloads; parse selectively rather than loading everything into memory
- Use `WriteControl` with `requiredRevisionId` in collaborative environments to detect concurrent edits before applying updates

