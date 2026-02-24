# YouTube Data API v3

> The YouTube Data API v3 is an API that provides access to YouTube data, such as videos, playlists, and channels. It lets you search for content, upload videos, manage playlists, handle comments, run live streams, and interact with channel data.

## Overview

- **API**: `youtube`
- **Version**: `v3`
- **Base URL**: `https://youtube.googleapis.com/`
- **Docs**: [https://developers.google.com/youtube/](https://developers.google.com/youtube/)

## When to Use

Use the YouTube Data API when you need to:

- **Search videos** -- find videos by keyword, topic, location, or event type (100 quota units per search call)
- **Retrieve video details** -- get metadata (title, description, thumbnails), statistics (views, likes), content details (duration, definition), and status for one or more videos
- **List channel videos** -- enumerate all uploads for a given channel by fetching the channel's "uploads" playlist
- **Upload videos** -- programmatically upload video files with metadata (title, description, tags, category, privacy status) via resumable upload
- **Manage playlists** -- create, update, delete playlists and add/remove/reorder playlist items
- **Read and post comments** -- list comment threads on a video, reply to comments, moderate comments
- **Live streaming** -- create and manage live broadcasts and live streams (`liveBroadcasts` and `liveStreams` resources)
- **Manage captions** -- upload, update, download, and delete caption tracks for videos
- **Channel management** -- update channel metadata, manage channel sections, set channel banners and watermarks
- **Subscriptions** -- list, create, and delete channel subscriptions

### Common Scenarios

| Scenario | Resources Used | Approx. Quota Cost |
|----------|---------------|-------------------|
| Display video search results | `search.list` | 100 units/page |
| Show video details on a page | `videos.list` | 1 unit |
| Display a channel's uploads feed | `channels.list` + `playlistItems.list` | 1 + 1 = 2 units |
| Upload a video with metadata | `videos.insert` | 100 units |
| Create a playlist and add videos | `playlists.insert` + N x `playlistItems.insert` | 50 + N x 50 units |
| Display comments on a video | `commentThreads.list` | 1 unit/page |
| Set up a live broadcast | `liveBroadcasts.insert` + `liveStreams.insert` + `liveBroadcasts.bind` | ~150 units |

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const youtube = google.youtube('v3');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Search for videos (API key sufficient for public data)
const searchRes = await youtube.search.list({
  part: ['snippet'],
  q: 'google cloud',
  type: ['video'],
  maxResults: 10,
});

// Get video details (1 quota unit, up to 50 IDs per call)
const videoRes = await youtube.videos.list({
  part: ['snippet', 'statistics', 'contentDetails'],
  id: ['dQw4w9WgXcQ'],
});
```

### curl

```bash
# Search (API key only -- no OAuth needed for public data)
curl "https://www.googleapis.com/youtube/v3/search?part=snippet&q=google+cloud&type=video&maxResults=5&key=YOUR_API_KEY"

# Get video details
curl "https://www.googleapis.com/youtube/v3/videos?part=snippet,statistics,contentDetails&id=VIDEO_ID&key=YOUR_API_KEY"

# List channel uploads (authenticated)
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://www.googleapis.com/youtube/v3/channels?part=contentDetails&mine=true"
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns with code examples |
| `gotchas.md` | Quota costs, rate limits, common errors, debugging |
