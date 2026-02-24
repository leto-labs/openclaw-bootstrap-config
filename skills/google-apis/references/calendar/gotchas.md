# Calendar API - Gotchas & Troubleshooting

## Rate Limits

The Calendar API enforces per-user and per-project quotas.

| Quota | Default Limit |
|-------|---------------|
| Queries per day | 1,000,000 per project |
| Queries per minute per user | 180 (approximately 3/second) |
| Calendar creation per user | 60 secondary calendars (hard limit) |

- Check your project's actual quotas at [Google Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/calendar-json.googleapis.com/quotas)
- Per-user rate limits apply even if you are using a service account with domain-wide delegation -- the impersonated user is the rate-limit subject
- Batch requests count each sub-request individually against quotas

## Common Errors

| Code | Meaning | Fix |
|------|---------|-----|
| 400 | Invalid request | Check parameter types and required fields. Common causes: invalid RRULE syntax, missing `start`/`end`, wrong date format |
| 401 | Unauthenticated | Refresh token or check credentials |
| 403 | Forbidden / `insufficientPermissions` | Enable Calendar API in console, check OAuth scopes, verify calendar access level |
| 403 | `quotaExceeded` or `rateLimitExceeded` | Implement exponential backoff with jitter. Check per-user rate limits |
| 404 | Not found | Verify `calendarId` and `eventId`. Use `'primary'` for the authenticated user's main calendar |
| 409 | Conflict | Event ID already exists. Use a different ID or handle as idempotent retry |
| 410 | Gone / `fullSyncRequired` | Your `syncToken` is stale. Discard it and perform a full re-sync |
| 429 | Rate limited | Implement exponential backoff with jitter |
| 500 | Server error | Retry with backoff |
| 503 | Service unavailable | Retry with backoff |

## Recurring Event Gotchas

- **singleEvents parameter**: When `singleEvents: true`, recurring events are expanded into instances and `orderBy: 'startTime'` becomes available. When `false` (default), you get the recurring event parent with its RRULE, but no individual instances in the list results.
- **Modifying recurring events**: Patching the parent event changes ALL instances. To modify a single instance, fetch it via `events.instances()` and patch that specific instance by its instance `eventId`.
- **Deleting an instance vs the series**: Deleting a specific instance ID cancels just that occurrence. Deleting the parent recurring event ID deletes the entire series.
- **RRULE time zone required**: Recurring events MUST have a `timeZone` on `start` and `end`. Without it, recurrence expansion across daylight saving time transitions will be incorrect or fail.
- **Expansion limits**: `events.instances()` returns at most 2500 instances per page. For very long-running recurring events, you must paginate or use `timeMin`/`timeMax` to bound the query.
- **UNTIL format**: The `UNTIL` value in an RRULE must be in UTC format (`20251231T000000Z`) or a date (`20251231`). Using a local time without `Z` may produce unexpected results.

## Time Zone Gotchas

- **All-day events ignore time zones**: The `timeZone` field has no significance for all-day events. However, `timeMin`/`timeMax` filters use the calendar's default time zone (or the `timeZone` query parameter) to determine all-day event boundaries.
- **Calendar default time zone**: Query results from `events.list()`, `events.get()`, and `events.instances()` are returned in the time zone specified by the `timeZone` parameter. If omitted, the calendar's default time zone is used.
- **DST transitions**: Events near a DST boundary may shift. Always specify explicit time zones rather than relying on UTC offsets, which do not encode DST rules.
- **Use IANA identifiers**: Always use IANA time zone names (e.g., `America/New_York`, not `EST` or `UTC-5`). The API accepts IANA format exclusively.

## Attendee Gotchas

- **Attendee limits**: Events can have up to **300 attendees** on Google Calendar for Workspace users (100 for personal accounts). Beyond this limit, the API returns a 400 error.
- **sendUpdates parameter**: Controls whether attendees get email notifications. Options: `"all"` (everyone), `"externalOnly"` (only non-Google), `"none"` (no emails). Default is `"none"` for API calls (unlike the web UI which defaults to sending).
- **Organizer vs creator**: The `organizer` is the calendar that owns the event. The `creator` is the user who created it. When using `events.move()`, the organizer changes to the destination calendar.
- **External attendees**: External attendees (non-Google accounts) receive email invitations but do not get a copy of the event on a Google Calendar.

## Push Notification Gotchas

- **HTTPS required**: Your webhook URL must use HTTPS with a valid SSL certificate. Self-signed, revoked, or mismatched certificates will be rejected.
- **Domain verification**: You must verify ownership of your webhook domain via [Google Search Console](https://search.google.com/search-console) before receiving push notifications.
- **No payload in notifications**: Push notification POST requests have an empty body. They only tell you that something changed. You must call `events.list` with your saved `syncToken` to find out what changed.
- **Channel expiration**: Channels expire and there is no auto-renewal. Set a timer to create a new channel before the old one expires. Use a unique `id` for each new channel.
- **Sync message**: The first notification after creating a channel is a `sync` message (indicated by `X-Goog-Resource-State: sync`). This confirms the channel is active. You may receive it before or after the `watch` response returns.
- **Overlapping channels**: When renewing, briefly both old and new channels are active. Your webhook should handle duplicate notifications gracefully.

## syncToken Gotchas

- **410 Gone**: If your saved `syncToken` is too old or becomes invalid, the API returns 410. You must discard the token and do a complete re-sync.
- **Do not mix with timeMin/timeMax**: When using `syncToken`, you cannot also use `timeMin`, `timeMax`, or `updatedMin` filters. The sync returns all changes regardless of time range.
- **Cancelled events**: Deleted events appear in sync results with `status: "cancelled"`. Check for this to handle deletions properly.

## Patch vs Update

- `events.patch()` does partial updates but consumes **3 quota units** instead of 1. For frequent updates, prefer `events.get()` followed by `events.update()` (2 total quota units).
- `events.update()` replaces the entire event resource. Any fields you omit will be cleared. Always fetch the current event first.

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

- Always enable `calendar-json.googleapis.com` (not `calendar.googleapis.com`) in your GCP project -- the Calendar API uses the `calendar-json` service name
- Use `fields` parameter to request only needed fields (reduces response size and latency): e.g., `fields: "items(id,summary,start,end)"`
- For Workspace APIs, ensure the OAuth consent screen is configured
- Service accounts need domain-wide delegation for Workspace APIs acting on behalf of users
- Use `events.import()` instead of `events.insert()` when migrating events from another system -- it preserves the original iCalendar UID and is idempotent
- The `quickAdd` method parses natural language (e.g., "Lunch tomorrow at noon") but is unreliable for complex scheduling -- prefer `events.insert()` with explicit fields
- Set `conferenceDataVersion: 1` on any request that reads or writes `conferenceData` -- without it, conference fields are silently ignored
