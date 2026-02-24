# YouTube Data API v3 - Configuration

## Enable the API

```bash
gcloud services enable youtube.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/youtube.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/youtube` | Manage your YouTube account (full read/write access) |
| `https://www.googleapis.com/auth/youtube.channel-memberships.creator` | See a list of your current active channel members, their current level, and when they became a member |
| `https://www.googleapis.com/auth/youtube.force-ssl` | See, edit, and permanently delete your YouTube videos, ratings, comments and captions |
| `https://www.googleapis.com/auth/youtube.readonly` | View your YouTube account (read-only) |
| `https://www.googleapis.com/auth/youtube.upload` | Manage your YouTube videos |
| `https://www.googleapis.com/auth/youtubepartner` | View and manage your assets and associated content on YouTube |
| `https://www.googleapis.com/auth/youtubepartner-channel-audit` | View private information of your YouTube channel relevant during the audit process with a YouTube partner |

### Scope Selection Guide

| Use Case | Recommended Scope |
|----------|------------------|
| Read-only video/channel/playlist data | `youtube.readonly` |
| Upload videos | `youtube.upload` |
| Manage playlists, subscriptions, ratings | `youtube` |
| Manage comments or captions | `youtube.force-ssl` |
| Full management (upload + manage + comments) | `youtube` + `youtube.force-ssl` |
| Public data only (search, public video details) | API Key (no OAuth scope needed) |

## Service Endpoint

- **Root URL**: `https://youtube.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **API Key** - For public data (search, public video details, public playlists). Most common for read-only apps.
2. **OAuth2** - Required for any user-specific or write operations (upload, manage playlists, comments, subscriptions, live streaming)
3. **Service Account** - Not typically used for YouTube (YouTube accounts are tied to Google users, not service accounts)
4. **ADC (Application Default Credentials)** - Works when OAuth2 credentials are configured

### Important Auth Notes

- Unlike most Google APIs, YouTube Data API **does not support service accounts** for accessing user-specific data. You must use OAuth2 with user consent.
- For public data (searching, viewing public video info), an **API Key** is sufficient and does not require OAuth.
- The `youtube.force-ssl` scope is required for any comment or caption operations, even if you already have the `youtube` scope.
