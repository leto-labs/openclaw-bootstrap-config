# YouTube Data API v3 - Gotchas & Troubleshooting

## Quota System

The YouTube Data API uses a **unit-based quota** system that is fundamentally different from most Google APIs (which use rate-based limits).

- **Default allocation**: 10,000 units per day per project
- **Reset time**: Midnight Pacific Time (PT)
- **All requests cost at least 1 unit**, including invalid/failed requests
- **Pagination costs quota**: each page of results from `search.list` costs another 100 units

### Quota Costs per Method

| Resource | Method | Cost (units) |
|----------|--------|-------------|
| **search** | `list` | **100** |
| **videos** | `list` | 1 |
| **videos** | `insert` (upload) | **100** |
| **videos** | `update` | 50 |
| **videos** | `rate` | 50 |
| **videos** | `getRating` | 1 |
| **videos** | `reportAbuse` | 50 |
| **videos** | `delete` | 50 |
| **channels** | `list` | 1 |
| **channels** | `update` | 50 |
| **playlists** | `list` | 1 |
| **playlists** | `insert` | 50 |
| **playlists** | `update` | 50 |
| **playlists** | `delete` | 50 |
| **playlistItems** | `list` | 1 |
| **playlistItems** | `insert` | 50 |
| **playlistItems** | `update` | 50 |
| **playlistItems** | `delete` | 50 |
| **comments** | `list` | 1 |
| **comments** | `insert` | 50 |
| **comments** | `update` | 50 |
| **comments** | `delete` | 50 |
| **comments** | `setModerationStatus` | 50 |
| **commentThreads** | `list` | 1 |
| **commentThreads** | `insert` | 50 |
| **commentThreads** | `update` | 50 |
| **captions** | `list` | 50 |
| **captions** | `insert` | **400** |
| **captions** | `update` | **450** |
| **captions** | `delete` | 50 |
| **channelSections** | `list` | 1 |
| **channelSections** | `insert` | 50 |
| **channelSections** | `update` | 50 |
| **channelSections** | `delete` | 50 |
| **channelBanners** | `insert` | 50 |
| **subscriptions** | `list` | 1 |
| **subscriptions** | `insert` | 50 |
| **subscriptions** | `delete` | 50 |
| **thumbnails** | `set` | 50 |
| **watermarks** | `set` | 50 |
| **watermarks** | `unset` | 50 |
| **activities** | `list` | 1 |
| **members** | `list` | 1 |
| **membershipsLevels** | `list` | 1 |
| **i18nLanguages** | `list` | 1 |
| **i18nRegions** | `list` | 1 |
| **guideCategories** | `list` | 1 |
| **videoAbuseReportReasons** | `list` | 1 |
| **videoCategories** | `list` | 1 |

> **Note**: YouTube Live Streaming API methods (`liveBroadcasts`, `liveStreams`, `liveChatMessages`, etc.) share the same quota pool and are counted against the 10,000 daily limit.

### Quota Budget Examples

With the default 10,000 units/day:

| Usage Pattern | Calculation | Requests/Day |
|--------------|-------------|--------------|
| Search only | 10,000 / 100 | 100 searches |
| Video details only | 10,000 / 1 | 10,000 lookups |
| Upload videos only | 10,000 / 100 | 100 uploads |
| Mixed: 50 searches + 200 video lookups + 5 uploads | (50 x 100) + (200 x 1) + (5 x 100) = 5,700 | Leaves 4,300 units |

### Checking and Requesting Quota

- View your current quota usage: [Google Cloud Console > Quotas](https://console.cloud.google.com/iam-admin/quotas)
- Request a quota increase: [YouTube API Quota Extension Request Form](https://support.google.com/youtube/contact/yt_api_form)
- Use the [Quota Calculator](https://developers.google.com/youtube/v3/determine_quota_cost) to estimate costs for your API methods

## Common Errors

| Code | Meaning | Fix |
|------|---------|-----|
| 400 | Invalid request | Check parameter types, required fields, and `part` parameter value |
| 401 | Unauthenticated | Refresh OAuth token or check API key |
| 403 `quotaExceeded` | Daily quota exhausted | Wait until midnight PT, optimize usage, or request quota extension |
| 403 `forbidden` | Permission denied | Check scopes, verify API is enabled, ensure video/channel ownership |
| 403 `videoRatingDisabled` | Rating disabled | Video owner has disabled ratings |
| 403 `commentsDisabled` | Comments disabled | Video owner has disabled comments |
| 404 `videoNotFound` | Video not found | Video ID is wrong, video is private, or has been deleted |
| 404 `playlistNotFound` | Playlist not found | Playlist ID is wrong or playlist is private |
| 409 `playlistItemsNotAccessible` | Playlist items not accessible | You do not own the playlist or lack permission |
| 429 | Rate limited | Implement exponential backoff with jitter |
| 500 | Server error | Retry with exponential backoff |
| 503 | Service unavailable | Retry with exponential backoff |

## Critical Gotchas

### 1. Search is Expensive

`search.list` costs **100 units per call** (each page). With a 10,000 unit daily budget, you can only make 100 search calls per day. Alternatives:

- **Cache search results** aggressively
- Use `videos.list` with known IDs (1 unit) instead of searching
- Use `playlistItems.list` to get channel videos (1 unit) instead of `search.list` filtered by channelId
- Use `activities.list` to get recent channel activity (1 unit)

### 2. The `part` Parameter is Required and Affects Response Size

Every resource-retrieval request **must** include the `part` parameter. While `part` does not directly change quota cost (the method cost is fixed), requesting unnecessary parts increases response size and parsing time. Only request the parts you actually use.

### 3. Video Upload Requires OAuth2 (Not API Key)

Video uploads, playlist management, comment posting, and any write operation require **OAuth2 user authorization**. An API key alone is insufficient. Service accounts generally do not work for YouTube user data.

### 4. Pagination Costs Full Quota Per Page

Each call to retrieve the next page of results costs the full quota amount for that method. Paginating through 10 pages of search results costs 1,000 units (10 x 100).

### 5. The `categoryId` Field is Required for `videos.update`

When updating video metadata via `videos.update`, you must include `snippet.categoryId` in the request body even if you are not changing it. Omitting it will clear the category.

### 6. Uploads Playlist ID Convention

A channel's "uploads" playlist ID is derived from the channel ID by replacing the leading `UC` with `UU`. For example:
- Channel ID: `UC_x5XG1OV2P6uZZ5FSM9Ttw`
- Uploads playlist: `UU_x5XG1OV2P6uZZ5FSM9Ttw`

However, always use `channels.list` with `contentDetails` part to get the definitive playlist ID.

### 7. Duration is ISO 8601

Video duration from `contentDetails.duration` is in ISO 8601 format (e.g., `PT1H23M45S` = 1 hour, 23 minutes, 45 seconds). Parse it accordingly.

### 8. Comment Threads vs Comments

- `commentThreads` represents a top-level comment and its replies
- `comments` represents individual comments (either top-level or replies)
- To post a top-level comment, use `commentThreads.insert`
- To reply to a comment, use `comments.insert` with a `parentId`

### 9. Live Streaming Quota

Live streaming methods (`liveBroadcasts`, `liveStreams`, `liveChatMessages`) draw from the **same 10,000 unit daily quota** as regular Data API methods. High-volume live chat polling can exhaust quota rapidly.

### 10. Deleted/Private Videos Return Empty

When requesting details for a deleted or private video via `videos.list`, the API simply does not include that video in the response `items` array -- it does not return an error. Always check that `items.length` matches the number of IDs you requested.

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
    "message": "The request cannot be completed because you have exceeded your quota.",
    "errors": [
      {
        "message": "The request cannot be completed because you have exceeded your quota.",
        "domain": "youtube.quota",
        "reason": "quotaExceeded"
      }
    ]
  }
}
```

## Tips

- Always enable `youtube.googleapis.com` in your GCP project before making calls
- Use `fields` parameter to request only needed fields (reduces response size and latency)
- Cache responses where possible -- video metadata rarely changes, and caching saves quota
- Use ETags for conditional requests: if a resource hasn't changed, the API returns 304 (no quota cost for the data transfer, but the request still costs 1 unit minimum)
- Use gzip compression (`Accept-Encoding: gzip`) to reduce bandwidth
- For high-volume apps, monitor quota usage via the [GCP Console Quotas page](https://console.cloud.google.com/iam-admin/quotas) and set up alerts
- Prefer `playlistItems.list` over `search.list` when you need videos from a specific channel (1 unit vs 100 units)
- Batch video ID lookups: `videos.list` accepts up to 50 comma-separated IDs in a single 1-unit request
