# Gmail API - Gotchas & Troubleshooting

## Rate Limits

- Check quotas at [Google Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/gmail.googleapis.com/quotas)
- Default quotas vary by API and project billing status
- Monitor usage via `X-RateLimit-*` response headers (when available)

### Gmail API Quota Units

The Gmail API uses an abstract "quota units" system. Each API method consumes a different number of units:

| Usage limit type | Limit |
|---|---|
| **Per-project** rate limit | **1,200,000** quota units per minute |
| **Per-user** rate limit | **15,000** quota units per user per minute |

Exceeding the per-project limit returns `rateLimitExceeded`; exceeding the per-user limit returns `userRateLimitExceeded`.

### Per-Method Quota Costs (key methods)

| Method | Quota Units |
|---|---|
| `messages.send` | **100** |
| `messages.get` | 5 |
| `messages.list` | 5 |
| `messages.modify` | 5 |
| `messages.delete` | 10 |
| `messages.batchDelete` | 50 |
| `messages.batchModify` | 50 |
| `messages.import` | 25 |
| `messages.insert` | 25 |
| `messages.trash` / `untrash` | 5 |
| `messages.attachments.get` | 5 |
| `threads.get` | 10 |
| `threads.list` | 10 |
| `threads.modify` | 10 |
| `threads.delete` | 20 |
| `drafts.create` | 10 |
| `drafts.send` | **100** |
| `drafts.get` | 5 |
| `drafts.list` | 5 |
| `drafts.update` | 15 |
| `labels.get` / `labels.list` | 1 |
| `labels.create` / `labels.delete` / `labels.update` | 5 |
| `history.list` | 2 |
| `getProfile` | 1 |
| `watch` | **100** |
| `stop` | 50 |
| `settings.delegates.create` | 100 |
| `settings.sendAs.create` / `update` / `verify` | 100 |
| `settings.forwardingAddresses.create` | 100 |

**Practical implications**: At 15,000 units/user/min, a single user can send at most 150 emails per minute (100 units each), or read 3,000 messages per minute (5 units each).

### Daily Sending Limits

These are separate from API quota units and enforced by Gmail itself:

| Account type | Daily sending limit |
|---|---|
| Gmail (free / personal) | ~500 emails per day |
| Google Workspace | ~2,000 emails per day |

Exceeding this limit results in a temporary lockout from sending (typically 1-24 hours). This limit includes emails sent via the API, web UI, and SMTP.

### Attachment and Message Size Limits

- **Maximum message size** (including attachments): **25 MB** for sending
- **Maximum message size** for receiving: **50 MB**
- For uploads larger than 5 MB, use the resumable upload endpoint
- The base64 encoding inflates attachment size by ~33%, so effective attachment limit is about **18.75 MB** of original file data
- Use `messages.import` or `messages.insert` with `uploadType=resumable` for large messages

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

## Push Notification Gotchas (Watch / Pub/Sub)

- **Watch expires after ~7 days** -- you must call `users.watch()` again before expiration. Google recommends calling it **once per day**.
- The watch response includes an `expiration` timestamp (Unix ms) -- use it to schedule renewals.
- **Notifications only contain `emailAddress` and `historyId`** -- they do NOT include the message content or ID. You must call `history.list` with the `startHistoryId` to discover what actually changed.
- **Max notification rate is 1 event/second per user**. Notifications exceeding this rate are silently dropped.
- **Notifications may be delayed or dropped** in extreme situations. Always implement a periodic fallback poll using `history.list` (e.g., every 5-10 minutes) in case push notifications are missed.
- Be careful not to trigger a notification loop -- handling a notification that modifies the mailbox will generate another notification.
- You must grant `publish` privileges to `gmail-api-push@system.gserviceaccount.com` on your Pub/Sub topic.
- Organization domain-restricted sharing policies can block the service account -- configure an exception if needed.
- Each `watch` call costs **100 quota units**.

## Message Format Gotchas

- **Messages are immutable** -- once created, you cannot change the content of a message. You can only modify labels.
- The `raw` property must be **base64url** encoded (NOT standard base64). In Node.js, use `Buffer.from(str).toString('base64url')` or manually replace `+` with `-`, `/` with `_`, and strip trailing `=`.
- When using `format: 'full'`, the message body is split across `payload.parts` in a MIME tree structure. You must walk the tree recursively to find the `text/plain` or `text/html` part.
- `messages.list` only returns `{ id, threadId }` -- you must call `messages.get` for each message to get headers, body, etc.
- The `snippet` field is automatically generated and limited to ~200 characters; it is HTML-decoded plain text.

## Label Gotchas

- **System labels** (INBOX, SENT, SPAM, TRASH, DRAFT, STARRED, UNREAD, IMPORTANT, CATEGORY_*) cannot be deleted or renamed.
- You can nest custom labels using `/` in the name (e.g., `Project/Invoices`), but the API treats them as flat strings.
- Maximum of **10,000 labels** per user (including system labels).
- `UNREAD` is a label, not a message property -- removing the `UNREAD` label marks a message as read.

## Tips

- Always enable `gmail.googleapis.com` in your GCP project before making calls
- Use `fields` parameter to request only needed fields (reduces response size and latency)
- For Workspace APIs, ensure the OAuth consent screen is configured
- Service accounts need domain-wide delegation for Workspace APIs acting on behalf of users
- Use `format: 'metadata'` with `metadataHeaders` when you only need specific headers -- much faster than `format: 'full'`
- Use `messages.batchModify` and `messages.batchDelete` (up to 1000 IDs per call) instead of individual modify/delete calls to save quota
- For email threading, always set `threadId`, `In-Reply-To`, and `References` headers -- Gmail uses these to group replies into conversations
- The `userId` parameter is almost always `'me'` (the authenticated user), but for domain-wide delegation with service accounts, use the target user's email address
- When searching with `q` parameter, use Gmail search syntax (not regex) -- see https://support.google.com/mail/answer/7190

