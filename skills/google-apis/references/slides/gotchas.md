# Google Slides API - Gotchas & Troubleshooting

## Rate Limits

- Check quotas at [Google Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/slides.googleapis.com/quotas)
- Default read quota: **300 requests per minute per project**
- Default write quota: **60 requests per minute per project**
- Each `batchUpdate` call counts as a single write request, regardless of how many sub-requests it contains -- always batch operations together
- The `pages.getThumbnail` method counts as an **expensive read request** and has a lower quota

## Batch Update Ordering Matters

Requests within a single `batchUpdate` call are applied **sequentially** in the order they appear in the array. This has important implications:

- You can create an object and modify it in the same batch, as long as the `createSlide` or `createShape` request comes **before** the `insertText` or `updateTextStyle` request.
- If a request fails, subsequent requests in the batch are **not applied** (atomic behavior).
- When deleting text before inserting replacement text, the delete must come first in the array.
- When reordering slides, earlier moves affect the indices of later moves.

```typescript
// CORRECT: create, then modify
requests: [
  { createSlide: { objectId: 'new_slide', ... } },
  { insertText: { objectId: 'new_slide', text: 'Hello', insertionIndex: 0 } },
]

// WRONG: modify before create -- will fail with 404
requests: [
  { insertText: { objectId: 'new_slide', text: 'Hello', insertionIndex: 0 } },
  { createSlide: { objectId: 'new_slide', ... } },
]
```

## Object ID Requirements

- Object IDs must be **unique across the entire presentation** -- across all slides, masters, layouts, and page elements.
- IDs must start with a word character `[a-zA-Z0-9_]` and can contain word characters, hyphens, and colons.
- Maximum length is 128 characters.
- If you provide a duplicate ID, the API returns a **400 Bad Request** error with message "The object ID is not unique".
- Google recommends generating random UUIDs for object IDs (e.g., `crypto.randomUUID()` in Node.js).
- Do NOT rely on object IDs being stable after the presentation is edited in the Slides UI. Users can copy-paste elements, which changes their IDs.
- To find elements reliably over time, search by text content or alt-text rather than storing IDs.

## EMU (English Metric Units) Coordinates

All positioning and sizing uses EMU, not pixels or inches:

| Measurement | EMU Value |
|-------------|-----------|
| 1 inch | 914,400 EMU |
| 1 centimeter | 360,000 EMU |
| 1 point | 12,700 EMU |
| 1 pixel (96 dpi) | 9,525 EMU |

Standard slide dimensions (default 10" x 7.5"):
- Width: **9,144,000 EMU** (10 inches)
- Height: **6,858,000 EMU** (7.5 inches)

Common mistakes:
- Using pixel values instead of EMU -- a `translateX` of `100` is nearly invisible (0.00011 inches).
- Setting `magnitude: 0` for width or height -- the API requires positive dimensions for shapes and images.
- Forgetting to set `unit: 'EMU'` in size and transform objects.

## Image URL Requirements

When using `createImage` or `replaceAllShapesWithImage`:

- The image URL **must be publicly accessible** or accessible with the authenticated user's credentials. Private URLs behind auth walls will fail silently or return a broken image.
- Google fetches the image server-side at the time of the API call and caches it. The URL does not need to remain accessible after creation.
- Supported formats: PNG, JPEG, GIF, BMP, ICO, SVG, WebP. Animated GIFs render as static images.
- Maximum image size: **25 MB**.
- For Google Drive images, use the format: `https://www.googleapis.com/drive/v3/files/FILE_ID?alt=media` and ensure the service account or user has read access to the file.
- `data:` URIs are **not supported**. You must host the image at an HTTP(S) URL.

## Limited Undo Capability

- The Slides API does **not provide an undo mechanism**. Once a `batchUpdate` is applied, it cannot be rolled back via the API.
- Always copy the template first (`drive.files.copy`), then modify the copy. Never modify the master template directly.
- For safety, read the presentation state with `presentations.get` before making destructive changes, so you can reconstruct if needed.

## Text Insertion and Deletion Gotchas

- `insertText` inserts at a **character index** within the shape's text. Index 0 is the beginning. If the shape has no text, the only valid index is 0.
- Every text shape contains an implicit trailing newline `\n`. When using `deleteText` with `type: 'ALL'`, this trailing newline is preserved -- you cannot remove it.
- When inserting text at a specific index in a shape that already contains text, existing text shifts to the right. If you insert text then try to style only the new text, calculate the range carefully.
- `replaceAllText` operates on the **entire presentation**, not just one slide. There is no per-slide text replacement in a single request. To replace text on one slide only, find the shape IDs on that slide, delete their text, and insert new text.
- You can limit `replaceAllText` to specific pages using the `pageObjectIds` field.

## Page Element Transform Gotchas

- The `transform` field uses an affine transformation matrix with `scaleX`, `scaleY`, `shearX`, `shearY`, `translateX`, `translateY`.
- When replacing a tag shape with an image and preserving aspect ratio, set the image `size` to `tag.width * tag.scaleX` and `tag.height * tag.scaleY`, then set both `scaleX` and `scaleY` to `1`. Otherwise the image gets scaled twice.
- `updatePageElementTransform` has an `applyMode` field: `RELATIVE` (multiplies onto existing transform) or `ABSOLUTE` (replaces it). Use `ABSOLUTE` to set exact position.

## Speaker Notes Limitations

- Only the text content of the speaker notes shape can be modified. You cannot change the speaker notes page layout or add other elements to the notes page.
- Notes masters are **read-only** in the API.
- To find the speaker notes shape, look for the page element with `shape.placeholder.type === 'BODY'` on the slide's `notesPage`.

## Presentation Size and Content Limits

- A single presentation can contain a maximum of **100 MB** of total content.
- Slides recommends a maximum of **200 slides** per presentation for reliable performance.
- A single `batchUpdate` request body has a maximum size of **10 MB**.
- The API returns full presentation data on `presentations.get` -- for very large presentations, use the `fields` parameter to request only what you need (e.g., `fields=slides.objectId` to get only slide IDs).

## Common Errors

| Code | Meaning | Fix |
|------|---------|-----|
| 400 | Invalid request | Check object ID uniqueness, EMU values, required fields, and request ordering in batch |
| 400 | `The object ID is not unique` | Use a different object ID -- it conflicts with an existing page or element |
| 400 | `Invalid requests[N].insertText` | Check that the target object exists and insertionIndex is within bounds |
| 401 | Unauthenticated | Refresh token or check credentials |
| 403 | Forbidden | Enable `slides.googleapis.com` in console, check scopes, verify sharing permissions |
| 404 | Not found | Verify presentationId and object IDs; elements may have been deleted or IDs changed |
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
    "code": 400,
    "message": "Invalid value at 'requests[0].create_slide.insertion_index' (TYPE_INT32), \"abc\"",
    "status": "INVALID_ARGUMENT",
    "errors": [{ "domain": "global", "reason": "badRequest" }]
  }
}
```

## Tips

- Always enable `slides.googleapis.com` in your GCP project before making calls
- Use `fields` parameter to request only needed fields on `presentations.get` (reduces response size and latency)
- For Workspace APIs, ensure the OAuth consent screen is configured
- Service accounts need domain-wide delegation for Workspace APIs acting on behalf of users
- Combine as many operations as possible into a single `batchUpdate` to minimize quota usage and round trips
- Use `placeholderIdMappings` when creating slides to assign known IDs to placeholders, allowing you to populate them in the same batch
- For mail merge workflows, always copy the template with `drive.files.copy` first, then modify the copy -- never edit the original template
- When working with tables, you must address each cell individually via `cellLocation: { rowIndex, columnIndex }` in `insertText`
- The `replaceAllShapesWithSheetsChart` request can insert live Sheets charts that update when the source spreadsheet changes (use `linkingMode: 'LINKED'`)
- Use the `writeControl.requiredRevisionId` field in `batchUpdate` to ensure you are modifying the expected version of the presentation and avoid race conditions with concurrent editors
