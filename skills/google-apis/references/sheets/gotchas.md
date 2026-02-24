# Google Sheets API - Gotchas & Troubleshooting

## Rate Limits

The Sheets API enforces per-minute quotas that refill every minute.

| Quota | Limit |
|-------|-------|
| **Read requests per minute per project** | 300 |
| **Read requests per minute per user per project** | 60 |
| **Write requests per minute per project** | 300 |
| **Write requests per minute per user per project** | 60 |

**Key details**:
- There is **no daily limit** -- as long as you stay within per-minute quotas, you can make unlimited requests per day
- Each `batchUpdate` or `batchGet` call (including all sub-requests) counts as **one** API request
- Read requests: any method that retrieves data (`get`, `batchGet`, etc.)
- Write requests: any method that changes data (`update`, `batchUpdate`, `append`, `clear`, `copyTo`, etc.)
- Exceeding the quota returns `429: Too many requests`
- All use of the Sheets API is **free** -- exceeding quotas does not incur charges
- Requests that exceed 180 seconds of processing time return a timeout error
- Google recommends a maximum payload of **2 MB** per request for best performance

### Requesting Higher Quotas

You can request a quota increase from the [Google Cloud Console Quotas page](https://console.cloud.google.com/iam-admin/quotas). Service account calls all count as a single "user", so service account-heavy workloads may need quota increases.

## Spreadsheet Limits

| Limit | Value |
|-------|-------|
| Maximum cells per spreadsheet | 10,000,000 |
| Maximum columns per sheet | 18,278 |
| Maximum characters per cell | 50,000 |
| Maximum sheets per spreadsheet | 200 |

For current file limits, see [Files you can store in Google Drive](https://support.google.com/drive/answer/37603).

## A1 Notation Gotchas

- **Sheet names with spaces or special characters** must be wrapped in single quotes: `'My Sheet'!A1:B2`
- **No quotes** for simple sheet names: `Sheet1!A1:B2`
- **Omitting the sheet name** targets the **first visible sheet**: `A1:B2`
- **Named ranges** can collide with sheet names. If you have a named range called `Sheet1` and a sheet called `Sheet1`:
  - `Sheet1` refers to the **named range**
  - `'Sheet1'` (with quotes) refers to the **sheet**
- **Open-ended ranges** are supported:
  - `Sheet1!A:A` -- entire column A
  - `Sheet1!1:2` -- entire rows 1 and 2
  - `Sheet1!A5:A` -- column A from row 5 downward
- **Case sensitivity**: sheet names in A1 notation are case-insensitive in the API, but the returned range uses the actual case

## ValueInputOption Pitfalls

| Issue | Cause | Fix |
|-------|-------|-----|
| Formulas stored as text | Using `RAW` input option | Use `USER_ENTERED` for formulas |
| Dates not recognized | Using `RAW` input option | Use `USER_ENTERED` to parse dates like the UI |
| Numbers formatted as text | Leading apostrophe or string input | Ensure numeric values are actual numbers, not strings, when using `RAW` |
| `$100.15` not treated as currency | Using `RAW` input option | Use `USER_ENTERED` -- it infers currency formatting |

**Rule of thumb**: Use `USER_ENTERED` by default. Use `RAW` only when you want to store literal strings that look like formulas or dates (e.g., storing the string `=SUM(A:A)` without it becoming a formula).

## Number and Date Formatting Issues

- **Dates are serial numbers internally**: When reading with `valueRenderOption: 'UNFORMATTED_VALUE'`, dates return as serial numbers (days since December 30, 1899). Use `FORMATTED_VALUE` to get human-readable dates.
- **Time zones matter**: Sheets stores dates relative to the spreadsheet's time zone setting. The API does not automatically convert time zones.
- **Locale-dependent formatting**: Number and date formats depend on the spreadsheet's locale. `$1,234.56` in en-US becomes `1.234,56 $` in de-DE.
- **Empty cells are omitted**: Trailing empty rows and columns are not returned in API responses. If you expect data at `A1:D10` but column D is empty, you may only get 3 columns back.
- **Booleans**: `TRUE`/`FALSE` in Sheets are returned as the booleans `true`/`false` when using `UNFORMATTED_VALUE`, and as the strings `"TRUE"`/`"FALSE"` when using `FORMATTED_VALUE`.

## Append Behavior

The `append` method has non-obvious table detection logic:

- It searches the given range for a "table" (contiguous block of data)
- New rows are appended **after the last row of the last table** found in the range
- If no table is found at the target, it writes at the start of the range
- If multiple tables exist in the range, it appends after the **last** one
- The `range` parameter defines where to **look** for a table, not where to write

**Example**: If `Sheet1` has data in `A1:C2` and `B4:D6`, calling `append` with range `Sheet1` will append starting at `B7` (after the last table `B4:D6`).

## Common Errors

| Code | Meaning | Fix |
|------|---------|-----|
| 400 | Invalid request | Check A1 notation syntax, verify `valueInputOption` is set for writes |
| 401 | Unauthenticated | Refresh token or check credentials |
| 403 | Forbidden | Enable Sheets API in console, check OAuth scopes, verify spreadsheet sharing |
| 404 | Not found | Verify `spreadsheetId` exists and is accessible, check sheet name in range |
| 429 | Rate limited | Implement exponential backoff with jitter (see below) |
| 500 | Server error | Retry with backoff |
| 503 | Service unavailable | Retry with backoff |

## Exponential Backoff

Google requires exponential backoff for rate limit (429) and server error (5xx) retries:

```typescript
async function withBackoff<T>(fn: () => Promise<T>, maxRetries = 5): Promise<T> {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await fn();
    } catch (err: any) {
      if (i === maxRetries - 1 || ![429, 500, 503].includes(err.code)) throw err;
      // wait = min(2^n + random_ms, max_backoff)
      const delay = Math.min(Math.pow(2, i) * 1000 + Math.random() * 1000, 64000);
      await new Promise(r => setTimeout(r, delay));
    }
  }
  throw new Error('Unreachable');
}
```

The algorithm:
1. Attempt the request
2. On failure, wait `min((2^n) + random_milliseconds, maximum_backoff)` seconds
3. Increment `n` and retry
4. `maximum_backoff` is typically 32 or 64 seconds
5. After reaching `maximum_backoff`, continue retrying at that interval up to `maxRetries`

## Atomicity

All Sheets `batchUpdate` requests are **atomic**. If any single request in the batch is invalid, the entire batch fails and no changes are applied. This includes the `spreadsheets.values.batchUpdate` method.

## Google API Error Response Format

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

- Always enable `sheets.googleapis.com` in your GCP project before making calls
- Use `fields` parameter to request only needed fields (reduces response size and latency)
- Combine multiple reads into `batchGet` and multiple writes into `batchUpdate` to reduce quota consumption
- For Workspace APIs, ensure the OAuth consent screen is configured
- Service accounts need the spreadsheet **shared** with their email, or need domain-wide delegation for Workspace org access
- Use `includeValuesInResponse: true` in update/append requests if you need to see what was written (saves an extra read)
- When writing large amounts of data, prefer fewer large `batchUpdate` calls over many small `update` calls
- Monitor your quota usage at [Google Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/sheets.googleapis.com/quotas)
