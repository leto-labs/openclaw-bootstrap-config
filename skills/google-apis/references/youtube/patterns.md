# YouTube Data API v3 - Common Patterns

## Search Videos

Search is the most expensive common operation (100 quota units per call). Prefer `videos.list` by ID when possible.

```typescript
const res = await youtube.search.list({
  part: ['snippet'],
  q: 'machine learning tutorial',
  type: ['video'],           // 'video' | 'channel' | 'playlist'
  maxResults: 25,            // max 50
  order: 'relevance',        // relevance | date | rating | viewCount | title
  publishedAfter: '2024-01-01T00:00:00Z',
  regionCode: 'US',
  videoDuration: 'medium',   // short (<4min) | medium (4-20min) | long (>20min)
});

// Each item has id.videoId, snippet.title, snippet.description, snippet.thumbnails
for (const item of res.data.items || []) {
  console.log(`${item.snippet.title} — ${item.id.videoId}`);
}
```

### Search with Pagination

```typescript
let pageToken: string | undefined;
const allResults = [];
do {
  const res = await youtube.search.list({
    part: ['snippet'],
    q: 'nodejs tutorial',
    type: ['video'],
    maxResults: 50,
    pageToken,
  });
  allResults.push(...(res.data.items || []));
  pageToken = res.data.nextPageToken;
  // WARNING: each page costs 100 quota units
} while (pageToken && allResults.length < 200);
```

## Get Video Details

Retrieve full metadata for one or more videos (1 quota unit). Use `part` to control which property groups are returned.

```typescript
const res = await youtube.videos.list({
  part: ['snippet', 'statistics', 'contentDetails', 'status'],
  id: ['dQw4w9WgXcQ', 'jNQXAC9IVRw'],  // up to 50 IDs
});

for (const video of res.data.items || []) {
  console.log(`Title: ${video.snippet.title}`);
  console.log(`Views: ${video.statistics.viewCount}`);
  console.log(`Duration: ${video.contentDetails.duration}`);  // ISO 8601, e.g. "PT4M13S"
  console.log(`Privacy: ${video.status.privacyStatus}`);
}
```

### Video `part` Values

| Part | Contains | Notes |
|------|----------|-------|
| `snippet` | title, description, thumbnails, channelId, tags, categoryId, publishedAt | Most commonly used |
| `contentDetails` | duration, definition (hd/sd), caption, dimension | Duration is ISO 8601 |
| `statistics` | viewCount, likeCount, commentCount, favoriteCount | Counts are strings |
| `status` | uploadStatus, privacyStatus, embeddable, publicStatsViewable, license | |
| `player` | embedHtml | For embedding |
| `topicDetails` | topicCategories (Wikipedia URLs) | |
| `recordingDetails` | location, recordingDate | |
| `fileDetails` | fileName, fileSize, fileType, container, video/audioStreams | Owner only |
| `processingDetails` | processingStatus, processingProgress, processingFailureReason | Owner only |
| `suggestions` | processingErrors, processingWarnings, editorSuggestions, tagSuggestions | Owner only |

## List Channel Videos (Uploads)

Two-step process: get the "uploads" playlist ID from the channel, then list playlist items. Costs only 2 quota units (vs 100 for search).

```typescript
// Step 1: Get the uploads playlist ID (1 quota unit)
const channelRes = await youtube.channels.list({
  part: ['contentDetails'],
  id: ['UC_x5XG1OV2P6uZZ5FSM9Ttw'],  // or use: forUsername: 'GoogleDevelopers'
  // or use: mine: true  (with OAuth)
});

const uploadsPlaylistId =
  channelRes.data.items?.[0]?.contentDetails?.relatedPlaylists?.uploads;

// Step 2: List the uploaded videos (1 quota unit per page)
let pageToken: string | undefined;
const uploadedVideos = [];
do {
  const playlistRes = await youtube.playlistItems.list({
    part: ['snippet', 'contentDetails', 'status'],
    playlistId: uploadsPlaylistId,
    maxResults: 50,
    pageToken,
  });
  uploadedVideos.push(...(playlistRes.data.items || []));
  pageToken = playlistRes.data.nextPageToken;
} while (pageToken);

// Each item has snippet.title, contentDetails.videoId, snippet.publishedAt
```

### Get Most Popular Videos

```typescript
const res = await youtube.videos.list({
  part: ['snippet', 'statistics'],
  chart: 'mostPopular',
  regionCode: 'US',
  videoCategoryId: '17',  // Sports (optional)
  maxResults: 25,
});
```

## Upload Videos

Video upload uses resumable upload protocol. Costs 100 quota units.

```typescript
import * as fs from 'fs';

const res = await youtube.videos.insert({
  part: ['snippet', 'status'],
  requestBody: {
    snippet: {
      title: 'My Video Title',
      description: 'Video description here',
      tags: ['tag1', 'tag2'],
      categoryId: '22',       // "People & Blogs"
      defaultLanguage: 'en',
    },
    status: {
      privacyStatus: 'private',  // 'public' | 'unlisted' | 'private'
      selfDeclaredMadeForKids: false,
      embeddable: true,
    },
  },
  media: {
    body: fs.createReadStream('/path/to/video.mp4'),
  },
});

console.log(`Uploaded: ${res.data.id}`);
```

### Check Upload Processing Status

```typescript
const res = await youtube.videos.list({
  part: ['processingDetails'],
  id: [videoId],
});

const status = res.data.items?.[0]?.processingDetails?.processingStatus;
// 'processing' | 'succeeded' | 'failed' | 'terminated'
```

### Update Video Metadata

```typescript
const res = await youtube.videos.update({
  part: ['snippet', 'status'],
  requestBody: {
    id: 'VIDEO_ID',
    snippet: {
      title: 'Updated Title',
      description: 'Updated description',
      categoryId: '22',    // REQUIRED even if not changing
    },
    status: {
      privacyStatus: 'public',
    },
  },
});
```

### Delete a Video

```typescript
await youtube.videos.delete({ id: 'VIDEO_ID' });
```

## Manage Playlists

### Create a Playlist

```typescript
const res = await youtube.playlists.insert({
  part: ['snippet', 'status'],
  requestBody: {
    snippet: {
      title: 'My Playlist',
      description: 'A curated collection of videos',
    },
    status: {
      privacyStatus: 'public',  // 'public' | 'unlisted' | 'private'
    },
  },
});
const playlistId = res.data.id;
```

### Add a Video to a Playlist

```typescript
const res = await youtube.playlistItems.insert({
  part: ['snippet'],
  requestBody: {
    snippet: {
      playlistId: 'PLAYLIST_ID',
      resourceId: {
        kind: 'youtube#video',
        videoId: 'VIDEO_ID',
      },
      position: 0,  // optional: insert at specific position
    },
  },
});
```

### List Playlist Items

```typescript
let pageToken: string | undefined;
const items = [];
do {
  const res = await youtube.playlistItems.list({
    part: ['snippet', 'contentDetails'],
    playlistId: 'PLAYLIST_ID',
    maxResults: 50,
    pageToken,
  });
  items.push(...(res.data.items || []));
  pageToken = res.data.nextPageToken;
} while (pageToken);
```

### Remove a Video from a Playlist

```typescript
// Note: use the playlistItem ID, NOT the video ID
await youtube.playlistItems.delete({ id: 'PLAYLIST_ITEM_ID' });
```

### Update and Delete Playlists

```typescript
// Update playlist metadata
await youtube.playlists.update({
  part: ['snippet', 'status'],
  requestBody: {
    id: 'PLAYLIST_ID',
    snippet: { title: 'Updated Title', description: 'Updated description' },
    status: { privacyStatus: 'unlisted' },
  },
});

// Delete a playlist
await youtube.playlists.delete({ id: 'PLAYLIST_ID' });
```

## Get Comments

### List Comment Threads on a Video

```typescript
const res = await youtube.commentThreads.list({
  part: ['snippet', 'replies'],
  videoId: 'VIDEO_ID',
  maxResults: 100,
  order: 'relevance',   // 'time' | 'relevance'
  textFormat: 'plainText',
});

for (const thread of res.data.items || []) {
  const topComment = thread.snippet.topLevelComment;
  console.log(`${topComment.snippet.authorDisplayName}: ${topComment.snippet.textDisplay}`);
  // thread.replies?.comments contains reply comments (if any)
}
```

### Post a Comment

```typescript
// Top-level comment on a video (requires youtube.force-ssl scope)
const res = await youtube.commentThreads.insert({
  part: ['snippet'],
  requestBody: {
    snippet: {
      videoId: 'VIDEO_ID',
      topLevelComment: {
        snippet: {
          textOriginal: 'Great video! Thanks for sharing.',
        },
      },
    },
  },
});
```

### Reply to a Comment

```typescript
const res = await youtube.comments.insert({
  part: ['snippet'],
  requestBody: {
    snippet: {
      parentId: 'COMMENT_ID',
      textOriginal: 'Thanks for your comment!',
    },
  },
});
```

### Moderate Comments

```typescript
// Set moderation status (channel owner only)
await youtube.comments.setModerationStatus({
  id: ['COMMENT_ID'],
  moderationStatus: 'published',  // 'published' | 'heldForReview' | 'rejected'
});
```

## Live Streaming (liveBroadcasts + liveStreams)

Live streaming methods are part of the YouTube Data API and consume quota from the same 10,000 unit daily pool.

### Create a Live Broadcast

```typescript
const broadcastRes = await youtube.liveBroadcasts.insert({
  part: ['snippet', 'status', 'contentDetails'],
  requestBody: {
    snippet: {
      title: 'My Live Stream',
      scheduledStartTime: '2024-12-01T18:00:00Z',
      description: 'Live stream description',
    },
    status: {
      privacyStatus: 'public',
      selfDeclaredMadeForKids: false,
    },
    contentDetails: {
      enableAutoStart: true,
      enableAutoStop: true,
      monitorStream: { enableMonitorStream: false },
    },
  },
});
const broadcastId = broadcastRes.data.id;
```

### Create a Live Stream (Ingest Point)

```typescript
const streamRes = await youtube.liveStreams.insert({
  part: ['snippet', 'cdn'],
  requestBody: {
    snippet: {
      title: 'My Stream Key',
    },
    cdn: {
      frameRate: '30fps',
      ingestionType: 'rtmp',
      resolution: '1080p',
    },
  },
});

const streamId = streamRes.data.id;
const ingestionUrl = streamRes.data.cdn.ingestionInfo.ingestionAddress;
const streamKey = streamRes.data.cdn.ingestionInfo.streamName;
// Use in OBS/encoder: rtmp://{ingestionUrl}/{streamKey}
```

### Bind Broadcast to Stream

```typescript
await youtube.liveBroadcasts.bind({
  id: broadcastId,
  part: ['id', 'contentDetails'],
  streamId: streamId,
});
```

### Transition Broadcast Status

```typescript
// Start the broadcast (after stream is active)
await youtube.liveBroadcasts.transition({
  id: broadcastId,
  broadcastStatus: 'live',      // 'testing' | 'live' | 'complete'
  part: ['id', 'status'],
});
```

## Captions

### List Captions for a Video

```typescript
const res = await youtube.captions.list({
  part: ['snippet'],
  videoId: 'VIDEO_ID',
});
// Returns list of caption tracks with language, name, trackKind
```

### Upload a Caption Track

```typescript
import * as fs from 'fs';

const res = await youtube.captions.insert({
  part: ['snippet'],
  requestBody: {
    snippet: {
      videoId: 'VIDEO_ID',
      language: 'en',
      name: 'English',
    },
  },
  media: {
    mimeType: 'application/octet-stream',
    body: fs.createReadStream('/path/to/captions.srt'),
  },
});
```

### Delete a Caption Track

```typescript
await youtube.captions.delete({ id: 'CAPTION_ID' });
```

## Channel Sections

### List Channel Sections

```typescript
const res = await youtube.channelSections.list({
  part: ['snippet', 'contentDetails'],
  channelId: 'CHANNEL_ID',
});
```

### Create a Channel Section

```typescript
const res = await youtube.channelSections.insert({
  part: ['snippet', 'contentDetails'],
  requestBody: {
    snippet: {
      type: 'singlePlaylist',  // or 'multiplePlaylists', 'recentActivity', etc.
      title: 'Featured Playlist',
    },
    contentDetails: {
      playlists: ['PLAYLIST_ID'],
    },
  },
});
```

## Performance Optimization

### Using the `part` Parameter

The `part` parameter is **required** for all resource-retrieval requests. Only request the parts you need to minimize bandwidth and latency.

```typescript
// BAD: requesting everything
const res = await youtube.videos.list({
  part: ['snippet', 'contentDetails', 'statistics', 'status', 'player',
         'topicDetails', 'recordingDetails', 'fileDetails', 'processingDetails', 'suggestions'],
  id: ['VIDEO_ID'],
});

// GOOD: only what you need
const res = await youtube.videos.list({
  part: ['snippet', 'statistics'],
  id: ['VIDEO_ID'],
});
```

### Using the `fields` Parameter

Further reduce response size by filtering nested properties:

```typescript
const res = await youtube.videos.list({
  part: ['snippet', 'statistics'],
  id: ['VIDEO_ID'],
  fields: 'items(id,snippet(title,channelId,thumbnails/default),statistics(viewCount,likeCount))',
});
```

## Pagination

All `list` methods support pagination with `pageToken`/`nextPageToken`:

```typescript
let pageToken: string | undefined;
const allItems = [];
do {
  const res = await youtube.someResource.list({
    part: ['snippet'],
    pageToken,
    maxResults: 50,
  });
  allItems.push(...(res.data.items || []));
  pageToken = res.data.nextPageToken;
} while (pageToken);
```

## Error Handling

```typescript
try {
  const res = await youtube.videos.list({ part: ['snippet'], id: ['VIDEO_ID'] });
} catch (err: any) {
  if (err.code === 403 && err.message.includes('quotaExceeded')) {
    // Quota exhausted -- wait until midnight PT or request quota extension
  } else if (err.code === 403) {
    // Permission denied -- check scopes, API enablement, or video ownership
  } else if (err.code === 404) {
    // Video/resource not found or is private
  } else if (err.code === 429) {
    // Rate limited -- implement exponential backoff
  }
  console.error(err.message);
}
```

## Batch Requests

For multiple independent operations, use batch requests to reduce round trips:

```typescript
// googleapis supports batching via gaxios or manual HTTP batch
// Batch endpoint: https://www.googleapis.com/batch/youtube/v3
// See references/googleapis-client.md for batch patterns
```
