# YouTube Data API v3 - API Reference

**Version**: `v3` | **Methods**: 83 | **Schemas**: 199

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `youtube.abuseReports.insert` | POST | `youtube/v3/abuseReports` | Inserts a new resource into this collection. |
| `youtube.activities.list` | GET | `youtube/v3/activities` | Retrieves a list of resources, possibly filtered. |
| `youtube.captions.list` | GET | `youtube/v3/captions` | Retrieves a list of resources, possibly filtered. |
| `youtube.captions.insert` | POST | `youtube/v3/captions` | Inserts a new resource into this collection. |
| `youtube.captions.update` | PUT | `youtube/v3/captions` | Updates an existing resource. |
| `youtube.captions.delete` | DELETE | `youtube/v3/captions` | Deletes a resource. |
| `youtube.captions.download` | GET | `youtube/v3/captions/{id}` | Downloads a caption track. |
| `youtube.channels.list` | GET | `youtube/v3/channels` | Retrieves a list of resources, possibly filtered. |
| `youtube.channels.update` | PUT | `youtube/v3/channels` | Updates an existing resource. |
| `youtube.channelBanners.insert` | POST | `youtube/v3/channelBanners/insert` | Inserts a new resource into this collection. |
| `youtube.channelSections.list` | GET | `youtube/v3/channelSections` | Retrieves a list of resources, possibly filtered. |
| `youtube.channelSections.insert` | POST | `youtube/v3/channelSections` | Inserts a new resource into this collection. |
| `youtube.channelSections.update` | PUT | `youtube/v3/channelSections` | Updates an existing resource. |
| `youtube.channelSections.delete` | DELETE | `youtube/v3/channelSections` | Deletes a resource. |
| `youtube.comments.list` | GET | `youtube/v3/comments` | Retrieves a list of resources, possibly filtered. |
| `youtube.comments.insert` | POST | `youtube/v3/comments` | Inserts a new resource into this collection. |
| `youtube.comments.update` | PUT | `youtube/v3/comments` | Updates an existing resource. |
| `youtube.comments.delete` | DELETE | `youtube/v3/comments` | Deletes a resource. |
| `youtube.comments.setModerationStatus` | POST | `youtube/v3/comments/setModerationStatus` | Sets the moderation status of one or more comments. |
| `youtube.comments.markAsSpam` | POST | `youtube/v3/comments/markAsSpam` | Expresses the caller's opinion that one or more comments should be flagged as spam. |
| `youtube.commentThreads.list` | GET | `youtube/v3/commentThreads` | Retrieves a list of resources, possibly filtered. |
| `youtube.commentThreads.insert` | POST | `youtube/v3/commentThreads` | Inserts a new resource into this collection. |
| `youtube.youtube.v3.updateCommentThreads` | PUT | `youtube/v3/commentThreads` | Updates an existing resource. |
| `youtube.youtube.v3.liveChat.messages.stream` | GET | `youtube/v3/liveChat/messages/stream` | Allows a user to load live chat through a server-streamed RPC. |
| `youtube.i18nLanguages.list` | GET | `youtube/v3/i18nLanguages` | Retrieves a list of resources, possibly filtered. |
| `youtube.i18nRegions.list` | GET | `youtube/v3/i18nRegions` | Retrieves a list of resources, possibly filtered. |
| `youtube.liveBroadcasts.list` | GET | `youtube/v3/liveBroadcasts` | Retrieve the list of broadcasts associated with the given channel. |
| `youtube.liveBroadcasts.insert` | POST | `youtube/v3/liveBroadcasts` | Inserts a new stream for the authenticated user. |
| `youtube.liveBroadcasts.update` | PUT | `youtube/v3/liveBroadcasts` | Updates an existing broadcast for the authenticated user. |
| `youtube.liveBroadcasts.delete` | DELETE | `youtube/v3/liveBroadcasts` | Delete a given broadcast. |
| `youtube.liveBroadcasts.bind` | POST | `youtube/v3/liveBroadcasts/bind` | Bind a broadcast to a stream. |
| `youtube.liveBroadcasts.transition` | POST | `youtube/v3/liveBroadcasts/transition` | Transition a broadcast to a given status. |
| `youtube.liveBroadcasts.insertCuepoint` | POST | `youtube/v3/liveBroadcasts/cuepoint` | Insert cuepoints in a broadcast |
| `youtube.liveChatBans.insert` | POST | `youtube/v3/liveChat/bans` | Inserts a new resource into this collection. |
| `youtube.liveChatBans.delete` | DELETE | `youtube/v3/liveChat/bans` | Deletes a chat ban. |
| `youtube.liveChatMessages.list` | GET | `youtube/v3/liveChat/messages` | Retrieves a list of resources, possibly filtered. |
| `youtube.liveChatMessages.insert` | POST | `youtube/v3/liveChat/messages` | Inserts a new resource into this collection. |
| `youtube.liveChatMessages.delete` | DELETE | `youtube/v3/liveChat/messages` | Deletes a chat message. |
| `youtube.liveChatMessages.transition` | POST | `youtube/v3/liveChat/messages/transition` | Transition a durable chat event. |
| `youtube.liveChatModerators.list` | GET | `youtube/v3/liveChat/moderators` | Retrieves a list of resources, possibly filtered. |
| `youtube.liveChatModerators.insert` | POST | `youtube/v3/liveChat/moderators` | Inserts a new resource into this collection. |
| `youtube.liveChatModerators.delete` | DELETE | `youtube/v3/liveChat/moderators` | Deletes a chat moderator. |
| `youtube.liveStreams.list` | GET | `youtube/v3/liveStreams` | Retrieve the list of streams associated with the given channel. -- |
| `youtube.liveStreams.insert` | POST | `youtube/v3/liveStreams` | Inserts a new stream for the authenticated user. |
| `youtube.liveStreams.update` | PUT | `youtube/v3/liveStreams` | Updates an existing stream for the authenticated user. |
| `youtube.liveStreams.delete` | DELETE | `youtube/v3/liveStreams` | Deletes an existing stream for the authenticated user. |
| `youtube.members.list` | GET | `youtube/v3/members` | Retrieves a list of members that match the request criteria for a channel. |
| `youtube.membershipsLevels.list` | GET | `youtube/v3/membershipsLevels` | Retrieves a list of all pricing levels offered by a creator to the fans. |
| `youtube.playlists.list` | GET | `youtube/v3/playlists` | Retrieves a list of resources, possibly filtered. |
| `youtube.playlists.insert` | POST | `youtube/v3/playlists` | Inserts a new resource into this collection. |
| `youtube.playlists.update` | PUT | `youtube/v3/playlists` | Updates an existing resource. |
| `youtube.playlists.delete` | DELETE | `youtube/v3/playlists` | Deletes a resource. |
| `youtube.playlistItems.list` | GET | `youtube/v3/playlistItems` | Retrieves a list of resources, possibly filtered. |
| `youtube.playlistItems.delete` | DELETE | `youtube/v3/playlistItems` | Deletes a resource. |
| `youtube.playlistItems.insert` | POST | `youtube/v3/playlistItems` | Inserts a new resource into this collection. |
| `youtube.playlistItems.update` | PUT | `youtube/v3/playlistItems` | Updates an existing resource. |
| `youtube.playlistImages.list` | GET | `youtube/v3/playlistImages` | Retrieves a list of resources, possibly filtered. |
| `youtube.playlistImages.insert` | POST | `youtube/v3/playlistImages` | Inserts a new resource into this collection. |
| `youtube.playlistImages.update` | PUT | `youtube/v3/playlistImages` | Updates an existing resource. |
| `youtube.playlistImages.delete` | DELETE | `youtube/v3/playlistImages` | Deletes a resource. |
| `youtube.search.list` | GET | `youtube/v3/search` | Retrieves a list of search resources |
| `youtube.subscriptions.list` | GET | `youtube/v3/subscriptions` | Retrieves a list of resources, possibly filtered. |
| `youtube.subscriptions.delete` | DELETE | `youtube/v3/subscriptions` | Deletes a resource. |
| `youtube.subscriptions.insert` | POST | `youtube/v3/subscriptions` | Inserts a new resource into this collection. |
| `youtube.superChatEvents.list` | GET | `youtube/v3/superChatEvents` | Retrieves a list of resources, possibly filtered. |
| `youtube.tests.insert` | POST | `youtube/v3/tests` | POST method. |
| `youtube.thirdPartyLinks.list` | GET | `youtube/v3/thirdPartyLinks` | Retrieves a list of resources, possibly filtered. |
| `youtube.thirdPartyLinks.insert` | POST | `youtube/v3/thirdPartyLinks` | Inserts a new resource into this collection. |
| `youtube.thirdPartyLinks.update` | PUT | `youtube/v3/thirdPartyLinks` | Updates an existing resource. |
| `youtube.thirdPartyLinks.delete` | DELETE | `youtube/v3/thirdPartyLinks` | Deletes a resource. |
| `youtube.thumbnails.set` | POST | `youtube/v3/thumbnails/set` | As this is not an insert in a strict sense (it supports uploading/setting of a thumbnail for mult... |
| `youtube.videos.list` | GET | `youtube/v3/videos` | Retrieves a list of resources, possibly filtered. |
| `youtube.videos.insert` | POST | `youtube/v3/videos` | Inserts a new resource into this collection. |
| `youtube.videos.update` | PUT | `youtube/v3/videos` | Updates an existing resource. |
| `youtube.videos.delete` | DELETE | `youtube/v3/videos` | Deletes a resource. |
| `youtube.videos.reportAbuse` | POST | `youtube/v3/videos/reportAbuse` | Report abuse for a video. |
| `youtube.videos.rate` | POST | `youtube/v3/videos/rate` | Adds a like or dislike rating to a video or removes a rating from a video. |
| `youtube.videos.getRating` | GET | `youtube/v3/videos/getRating` | Retrieves the ratings that the authorized user gave to a list of specified videos. |
| `youtube.videoAbuseReportReasons.list` | GET | `youtube/v3/videoAbuseReportReasons` | Retrieves a list of resources, possibly filtered. |
| `youtube.videoCategories.list` | GET | `youtube/v3/videoCategories` | Retrieves a list of resources, possibly filtered. |
| `youtube.videoTrainability.get` | GET | `youtube/v3/videoTrainability` | Returns the trainability status of a video. |
| `youtube.watermarks.set` | POST | `youtube/v3/watermarks/set` | Allows upload of watermark image and setting it for a channel. |
| `youtube.watermarks.unset` | POST | `youtube/v3/watermarks/unset` | Allows removal of channel watermark. |

### `youtube.abuseReports.insert`

**POST** `youtube/v3/abuseReports`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |

**Request body**: `AbuseReport`

**Response**: `AbuseReport`

```typescript
const res = await youtube.abuseReports.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.activities.list`

**GET** `youtube/v3/activities`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more activity resource properties that the API respon... |
| `channelId` | `string` | query | No |  |
| `home` | `boolean` | query | No |  |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `mine` | `boolean` | query | No |  |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |
| `publishedAfter` | `string` | query | No |  |
| `publishedBefore` | `string` | query | No |  |
| `regionCode` | `string` | query | No |  |

**Response**: `ActivityListResponse`

```typescript
const res = await youtube.activities.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`

---

### `youtube.captions.list`

**GET** `youtube/v3/captions`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more caption resource parts that the API response wil... |
| `videoId` | `string` | query | Yes | Returns the captions for the specified video. |
| `id` | `string` | query | No | Returns the captions with the given IDs for Stubby or Apiary. |
| `onBehalfOf` | `string` | query | No | ID of the Google+ Page for the channel that the request is on behalf of. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

**Response**: `CaptionListResponse`

```typescript
const res = await youtube.captions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.captions.insert`

**POST** `youtube/v3/captions`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies the caption resource parts that the API response will include. Set the parameter value... |
| `onBehalfOf` | `string` | query | No | ID of the Google+ Page for the channel that the request is be on behalf of |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `sync` | `boolean` | query | No | Extra parameter to allow automatically syncing the uploaded caption/transcript with the audio. |

**Request body**: `Caption`

**Response**: `Caption`

```typescript
const res = await youtube.captions.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.captions.update`

**PUT** `youtube/v3/captions`

Updates an existing resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more caption resource parts that the API response wil... |
| `onBehalfOf` | `string` | query | No | ID of the Google+ Page for the channel that the request is on behalf of. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `sync` | `boolean` | query | No | Extra parameter to allow automatically syncing the uploaded caption/transcript with the audio. |

**Request body**: `Caption`

**Response**: `Caption`

```typescript
const res = await youtube.captions.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.captions.delete`

**DELETE** `youtube/v3/captions`

Deletes a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes |  |
| `onBehalfOf` | `string` | query | No | ID of the Google+ Page for the channel that the request is be on behalf of |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

```typescript
const res = await youtube.captions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.captions.download`

**GET** `youtube/v3/captions/{id}`

Downloads a caption track.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | path | Yes | The ID of the caption track to download, required for One Platform. |
| `onBehalfOf` | `string` | query | No | ID of the Google+ Page for the channel that the request is be on behalf of |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `tfmt` | `string` | query | No | Convert the captions into this format. Supported options are sbv, srt, and vtt. |
| `tlang` | `string` | query | No | tlang is the language code; machine translate the captions into this language. |

```typescript
const res = await youtube.captions.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.channels.list`

**GET** `youtube/v3/channels`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more channel resource properties that the API respons... |
| `categoryId` | `string` | query | No | Return the channels within the specified guide category ID. |
| `forHandle` | `string` | query | No | Return the channel associated with a YouTube handle. |
| `forUsername` | `string` | query | No | Return the channel associated with a YouTube username. |
| `hl` | `string` | query | No | Stands for "host language". Specifies the localization language of the metadata to be filled into snippet.localized. ... |
| `id` | `string` | query | No | Return the channels with the specified IDs. |
| `managedByMe` | `boolean` | query | No | Return the channels managed by the authenticated user. |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `mine` | `boolean` | query | No | Return the ids of channels owned by the authenticated user. |
| `mySubscribers` | `boolean` | query | No | Return the channels subscribed to the authenticated user |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |

**Response**: `ChannelListResponse`

```typescript
const res = await youtube.channels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`
- `https://www.googleapis.com/auth/youtubepartner-channel-audit`

---

### `youtube.channels.update`

**PUT** `youtube/v3/channels`

Updates an existing resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |
| `onBehalfOfContentOwner` | `string` | query | No | The *onBehalfOfContentOwner* parameter indicates that the authenticated user is acting on behalf of the content owner... |

**Request body**: `Channel`

**Response**: `Channel`

```typescript
const res = await youtube.channels.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.channelBanners.insert`

**POST** `youtube/v3/channelBanners/insert`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `channelId` | `string` | query | No | Unused, channel_id is currently derived from the security context of the requestor. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |

**Request body**: `ChannelBannerResource`

**Response**: `ChannelBannerResource`

```typescript
const res = await youtube.channelBanners.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.upload`

---

### `youtube.channelSections.list`

**GET** `youtube/v3/channelSections`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more channelSection resource properties that the API ... |
| `channelId` | `string` | query | No | Return the ChannelSections owned by the specified channel ID. |
| `hl` | `string` | query | No | Return content in specified language |
| `id` | `string` | query | No | Return the ChannelSections with the given IDs for Stubby or Apiary. |
| `mine` | `boolean` | query | No | Return the ChannelSections owned by the authenticated user. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

**Response**: `ChannelSectionListResponse`

```typescript
const res = await youtube.channelSections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.channelSections.insert`

**POST** `youtube/v3/channelSections`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |

**Request body**: `ChannelSection`

**Response**: `ChannelSection`

```typescript
const res = await youtube.channelSections.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.channelSections.update`

**PUT** `youtube/v3/channelSections`

Updates an existing resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

**Request body**: `ChannelSection`

**Response**: `ChannelSection`

```typescript
const res = await youtube.channelSections.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.channelSections.delete`

**DELETE** `youtube/v3/channelSections`

Deletes a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes |  |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

```typescript
const res = await youtube.channelSections.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.comments.list`

**GET** `youtube/v3/comments`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more comment resource properties that the API respons... |
| `id` | `string` | query | No | Returns the comments with the given IDs for One Platform. |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |
| `parentId` | `string` | query | No | Returns replies to the specified comment. Note, currently YouTube features only one level of replies (ie replies to t... |
| `textFormat` | `string` | query | No | The requested text format for the returned comments. |

**Response**: `CommentListResponse`

```typescript
const res = await youtube.comments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.comments.insert`

**POST** `youtube/v3/comments`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter identifies the properties that the API response will include. Set the parameter value to snippet... |

**Request body**: `Comment`

**Response**: `Comment`

```typescript
const res = await youtube.comments.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.comments.update`

**PUT** `youtube/v3/comments`

Updates an existing resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter identifies the properties that the API response will include. You must at least include the snip... |

**Request body**: `Comment`

**Response**: `Comment`

```typescript
const res = await youtube.comments.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.comments.delete`

**DELETE** `youtube/v3/comments`

Deletes a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes |  |

```typescript
const res = await youtube.comments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.comments.setModerationStatus`

**POST** `youtube/v3/comments/setModerationStatus`

Sets the moderation status of one or more comments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes | Modifies the moderation status of the comments with the given IDs |
| `moderationStatus` | `string` | query | Yes | Specifies the requested moderation status. Note, comments can be in statuses, which are not available through this ca... |
| `banAuthor` | `boolean` | query | No | If set to true the author of the comment gets added to the ban list. This means all future comments of the author wil... |

```typescript
const res = await youtube.comments.setModerationStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.comments.markAsSpam`

**POST** `youtube/v3/comments/markAsSpam`

Expresses the caller's opinion that one or more comments should be flagged as spam.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes | Flags the comments with the given IDs as spam in the caller's opinion. |

```typescript
const res = await youtube.comments.markAsSpam({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.commentThreads.list`

**GET** `youtube/v3/commentThreads`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more commentThread resource properties that the API r... |
| `allThreadsRelatedToChannelId` | `string` | query | No | Returns the comment threads of all videos of the channel and the channel comments as well. |
| `channelId` | `string` | query | No | Returns the comment threads for all the channel comments (ie does not include comments left on videos). |
| `id` | `string` | query | No | Returns the comment threads with the given IDs for Stubby or Apiary. |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `moderationStatus` | `string` | query | No | Limits the returned comment threads to those with the specified moderation status. Not compatible with the 'id' filte... |
| `order` | `string` | query | No |  |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |
| `postId` | `string` | query | No | Returns the comment threads of the specified post. |
| `searchTerms` | `string` | query | No | Limits the returned comment threads to those matching the specified key words. Not compatible with the 'id' filter. |
| `textFormat` | `string` | query | No | The requested text format for the returned comments. |
| `videoId` | `string` | query | No | Returns the comment threads of the specified video. |

**Response**: `CommentThreadListResponse`

```typescript
const res = await youtube.commentThreads.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.commentThreads.insert`

**POST** `youtube/v3/commentThreads`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter identifies the properties that the API response will include. Set the parameter value to snippet... |

**Request body**: `CommentThread`

**Response**: `CommentThread`

```typescript
const res = await youtube.commentThreads.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.youtube.v3.updateCommentThreads`

**PUT** `youtube/v3/commentThreads`

Updates an existing resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | No | The *part* parameter specifies a comma-separated list of commentThread resource properties that the API response will... |

**Request body**: `CommentThread`

**Response**: `CommentThread`

```typescript
const res = await youtube.v3.updateCommentThreads({
  // parameters
});
```

---

### `youtube.youtube.v3.liveChat.messages.stream`

**GET** `youtube/v3/liveChat/messages/stream`

Allows a user to load live chat through a server-streamed RPC.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `hl` | `string` | query | No | Specifies the localization language in which the system messages should be returned. |
| `liveChatId` | `string` | query | No | The id of the live chat for which comments should be returned. |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. Not used ... |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |
| `part` | `string` | query | No | The *part* parameter specifies the liveChatComment resource parts that the API response will include. Supported value... |
| `profileImageSize` | `integer` | query | No | Specifies the size of the profile image that should be returned for each user. |

**Response**: `LiveChatMessageListResponse`

```typescript
const res = await youtube.messages.stream({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`

---

### `youtube.i18nLanguages.list`

**GET** `youtube/v3/i18nLanguages`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies the i18nLanguage resource properties that the API response will include. Set the param... |
| `hl` | `string` | query | No |  |

**Response**: `I18nLanguageListResponse`

```typescript
const res = await youtube.i18nLanguages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.i18nRegions.list`

**GET** `youtube/v3/i18nRegions`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies the i18nRegion resource properties that the API response will include. Set the paramet... |
| `hl` | `string` | query | No |  |

**Response**: `I18nRegionListResponse`

```typescript
const res = await youtube.i18nRegions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.liveBroadcasts.list`

**GET** `youtube/v3/liveBroadcasts`

Retrieve the list of broadcasts associated with the given channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API r... |
| `broadcastStatus` | `string` | query | No | Return broadcasts with a certain status, e.g. active broadcasts. |
| `broadcastType` | `string` | query | No | Return only broadcasts with the selected type. |
| `id` | `string` | query | No | Return broadcasts with the given ids from Stubby or Apiary. |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `mine` | `boolean` | query | No |  |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |

**Response**: `LiveBroadcastListResponse`

```typescript
const res = await youtube.liveBroadcasts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`

---

### `youtube.liveBroadcasts.insert`

**POST** `youtube/v3/liveBroadcasts`

Inserts a new stream for the authenticated user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |

**Request body**: `LiveBroadcast`

**Response**: `LiveBroadcast`

```typescript
const res = await youtube.liveBroadcasts.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveBroadcasts.update`

**PUT** `youtube/v3/liveBroadcasts`

Updates an existing broadcast for the authenticated user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |

**Request body**: `LiveBroadcast`

**Response**: `LiveBroadcast`

```typescript
const res = await youtube.liveBroadcasts.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveBroadcasts.delete`

**DELETE** `youtube/v3/liveBroadcasts`

Delete a given broadcast.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes | Broadcast to delete. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |

```typescript
const res = await youtube.liveBroadcasts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveBroadcasts.bind`

**POST** `youtube/v3/liveBroadcasts/bind`

Bind a broadcast to a stream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes | Broadcast to bind to the stream |
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API r... |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |
| `streamId` | `string` | query | No | Stream to bind, if not set unbind the current one. |

**Response**: `LiveBroadcast`

```typescript
const res = await youtube.liveBroadcasts.bind({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveBroadcasts.transition`

**POST** `youtube/v3/liveBroadcasts/transition`

Transition a broadcast to a given status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `broadcastStatus` | `string` | query | Yes | The status to which the broadcast is going to transition. |
| `id` | `string` | query | Yes | Broadcast to transition. |
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API r... |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |

**Response**: `LiveBroadcast`

```typescript
const res = await youtube.liveBroadcasts.transition({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveBroadcasts.insertCuepoint`

**POST** `youtube/v3/liveBroadcasts/cuepoint`

Insert cuepoints in a broadcast

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | No | Broadcast to insert ads to, or equivalently `external_video_id` for internal use. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |
| `part` | `string` | query | No | The *part* parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API r... |

**Request body**: `Cuepoint`

**Response**: `Cuepoint`

```typescript
const res = await youtube.liveBroadcasts.insertCuepoint({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.liveChatBans.insert`

**POST** `youtube/v3/liveChat/bans`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |

**Request body**: `LiveChatBan`

**Response**: `LiveChatBan`

```typescript
const res = await youtube.liveChatBans.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveChatBans.delete`

**DELETE** `youtube/v3/liveChat/bans`

Deletes a chat ban.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes |  |

```typescript
const res = await youtube.liveChatBans.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveChatMessages.list`

**GET** `youtube/v3/liveChat/messages`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `liveChatId` | `string` | query | Yes | The id of the live chat for which comments should be returned. |
| `part` | `string` | query | Yes | The *part* parameter specifies the liveChatComment resource parts that the API response will include. Supported value... |
| `hl` | `string` | query | No | Specifies the localization language in which the system messages should be returned. |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. Not used ... |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |
| `profileImageSize` | `integer` | query | No | Specifies the size of the profile image that should be returned for each user. |

**Response**: `LiveChatMessageListResponse`

```typescript
const res = await youtube.liveChatMessages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`

---

### `youtube.liveChatMessages.insert`

**POST** `youtube/v3/liveChat/messages`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes. It identifies the properties that the write operation will set as well as t... |

**Request body**: `LiveChatMessage`

**Response**: `LiveChatMessage`

```typescript
const res = await youtube.liveChatMessages.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveChatMessages.delete`

**DELETE** `youtube/v3/liveChat/messages`

Deletes a chat message.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes |  |

```typescript
const res = await youtube.liveChatMessages.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveChatMessages.transition`

**POST** `youtube/v3/liveChat/messages/transition`

Transition a durable chat event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | No | The ID that uniquely identify the chat message event to transition. |
| `status` | `string` | query | No | The status to which the chat event is going to transition. |

**Response**: `LiveChatMessage`

```typescript
const res = await youtube.liveChatMessages.transition({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveChatModerators.list`

**GET** `youtube/v3/liveChat/moderators`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `liveChatId` | `string` | query | Yes | The id of the live chat for which moderators should be returned. |
| `part` | `string` | query | Yes | The *part* parameter specifies the liveChatModerator resource parts that the API response will include. Supported val... |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |

**Response**: `LiveChatModeratorListResponse`

```typescript
const res = await youtube.liveChatModerators.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`

---

### `youtube.liveChatModerators.insert`

**POST** `youtube/v3/liveChat/moderators`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |

**Request body**: `LiveChatModerator`

**Response**: `LiveChatModerator`

```typescript
const res = await youtube.liveChatModerators.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveChatModerators.delete`

**DELETE** `youtube/v3/liveChat/moderators`

Deletes a chat moderator.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes |  |

```typescript
const res = await youtube.liveChatModerators.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveStreams.list`

**GET** `youtube/v3/liveStreams`

Retrieve the list of streams associated with the given channel. --

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more liveStream resource properties that the API resp... |
| `id` | `string` | query | No | Return LiveStreams with the given ids from Stubby or Apiary. |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `mine` | `boolean` | query | No |  |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |

**Response**: `LiveStreamListResponse`

```typescript
const res = await youtube.liveStreams.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`

---

### `youtube.liveStreams.insert`

**POST** `youtube/v3/liveStreams`

Inserts a new stream for the authenticated user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |

**Request body**: `LiveStream`

**Response**: `LiveStream`

```typescript
const res = await youtube.liveStreams.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveStreams.update`

**PUT** `youtube/v3/liveStreams`

Updates an existing stream for the authenticated user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |

**Request body**: `LiveStream`

**Response**: `LiveStream`

```typescript
const res = await youtube.liveStreams.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.liveStreams.delete`

**DELETE** `youtube/v3/liveStreams`

Deletes an existing stream for the authenticated user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes |  |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |

```typescript
const res = await youtube.liveStreams.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`

---

### `youtube.members.list`

**GET** `youtube/v3/members`

Retrieves a list of members that match the request criteria for a channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies the member resource parts that the API response will include. Set the parameter value ... |
| `filterByMemberChannelId` | `string` | query | No | Comma separated list of channel IDs. Only data about members that are part of this list will be included in the respo... |
| `hasAccessToLevel` | `string` | query | No | Filter members in the results set to the ones that have access to a level. |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `mode` | `string` | query | No | Parameter that specifies which channel members to return. |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |

**Response**: `MemberListResponse`

```typescript
const res = await youtube.members.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.channel-memberships.creator`

---

### `youtube.membershipsLevels.list`

**GET** `youtube/v3/membershipsLevels`

Retrieves a list of all pricing levels offered by a creator to the fans.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies the membershipsLevel resource parts that the API response will include. Supported valu... |

**Response**: `MembershipsLevelListResponse`

```typescript
const res = await youtube.membershipsLevels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.channel-memberships.creator`

---

### `youtube.playlists.list`

**GET** `youtube/v3/playlists`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more playlist resource properties that the API respon... |
| `channelId` | `string` | query | No | Return the playlists owned by the specified channel ID. |
| `hl` | `string` | query | No | Return content in specified language |
| `id` | `string` | query | No | Return the playlists with the given IDs for Stubby or Apiary. |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `mine` | `boolean` | query | No | Return the playlists owned by the authenticated user. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |

**Response**: `PlaylistListResponse`

```typescript
const res = await youtube.playlists.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.playlists.insert`

**POST** `youtube/v3/playlists`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |

**Request body**: `Playlist`

**Response**: `Playlist`

```typescript
const res = await youtube.playlists.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.playlists.update`

**PUT** `youtube/v3/playlists`

Updates an existing resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

**Request body**: `Playlist`

**Response**: `Playlist`

```typescript
const res = await youtube.playlists.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.playlists.delete`

**DELETE** `youtube/v3/playlists`

Deletes a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes |  |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

```typescript
const res = await youtube.playlists.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.playlistItems.list`

**GET** `youtube/v3/playlistItems`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more playlistItem resource properties that the API re... |
| `id` | `string` | query | No |  |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |
| `playlistId` | `string` | query | No | Return the playlist items within the given playlist. |
| `videoId` | `string` | query | No | Return the playlist items associated with the given video ID. |

**Response**: `PlaylistItemListResponse`

```typescript
const res = await youtube.playlistItems.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.playlistItems.delete`

**DELETE** `youtube/v3/playlistItems`

Deletes a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes |  |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

```typescript
const res = await youtube.playlistItems.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.playlistItems.insert`

**POST** `youtube/v3/playlistItems`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

**Request body**: `PlaylistItem`

**Response**: `PlaylistItem`

```typescript
const res = await youtube.playlistItems.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.playlistItems.update`

**PUT** `youtube/v3/playlistItems`

Updates an existing resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

**Request body**: `PlaylistItem`

**Response**: `PlaylistItem`

```typescript
const res = await youtube.playlistItems.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.playlistImages.list`

**GET** `youtube/v3/playlistImages`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |
| `parent` | `string` | query | No | Return PlaylistImages for this playlist id. |
| `part` | `string` | query | No | The *part* parameter specifies a comma-separated list of one or more playlistImage resource properties that the API r... |

**Response**: `PlaylistImageListResponse`

```typescript
const res = await youtube.playlistImages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.playlistImages.insert`

**POST** `youtube/v3/playlistImages`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |
| `part` | `string` | query | No | The *part* parameter specifies the properties that the API response will include. |

**Request body**: `PlaylistImage`

**Response**: `PlaylistImage`

```typescript
const res = await youtube.playlistImages.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.playlistImages.update`

**PUT** `youtube/v3/playlistImages`

Updates an existing resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `part` | `string` | query | No | The *part* parameter specifies the properties that the API response will include. |

**Request body**: `PlaylistImage`

**Response**: `PlaylistImage`

```typescript
const res = await youtube.playlistImages.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.playlistImages.delete`

**DELETE** `youtube/v3/playlistImages`

Deletes a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | No | Id to identify this image. This is returned from by the List method. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

```typescript
const res = await youtube.playlistImages.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.search.list`

**GET** `youtube/v3/search`

Retrieves a list of search resources

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more search resource properties that the API response... |
| `channelId` | `string` | query | No | Filter on resources belonging to this channelId. |
| `channelType` | `string` | query | No | Add a filter on the channel search. |
| `eventType` | `string` | query | No | Filter on the livestream status of the videos. |
| `forContentOwner` | `boolean` | query | No | Search owned by a content owner. |
| `forDeveloper` | `boolean` | query | No | Restrict the search to only retrieve videos uploaded using the project id of the authenticated user. |
| `forMine` | `boolean` | query | No | Search for the private videos of the authenticated user. |
| `location` | `string` | query | No | Filter on location of the video |
| `locationRadius` | `string` | query | No | Filter on distance from the location (specified above). |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `order` | `string` | query | No | Sort order of the results. |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |
| `publishedAfter` | `string` | query | No | Filter on resources published after this date. |
| `publishedBefore` | `string` | query | No | Filter on resources published before this date. |
| `q` | `string` | query | No | Textual search terms to match. |
| `regionCode` | `string` | query | No | Display the content as seen by viewers in this country. |
| `relevanceLanguage` | `string` | query | No | Return results relevant to this language. |
| `safeSearch` | `string` | query | No | Indicates whether the search results should include restricted content as well as standard content. |
| `topicId` | `string` | query | No | Restrict results to a particular topic. |
| `type` | `string` | query | No | Restrict results to a particular set of resource types from One Platform. |
| `videoCaption` | `string` | query | No | Filter on the presence of captions on the videos. |
| `videoCategoryId` | `string` | query | No | Filter on videos in a specific category. |
| `videoDefinition` | `string` | query | No | Filter on the definition of the videos. |
| `videoDimension` | `string` | query | No | Filter on 3d videos. |
| `videoDuration` | `string` | query | No | Filter on the duration of the videos. |
| `videoEmbeddable` | `string` | query | No | Filter on embeddable videos. |
| `videoLicense` | `string` | query | No | Filter on the license of the videos. |
| `videoPaidProductPlacement` | `string` | query | No |  |
| `videoSyndicated` | `string` | query | No | Filter on syndicated videos. |
| `videoType` | `string` | query | No | Filter on videos of a specific type. |

**Response**: `SearchListResponse`

```typescript
const res = await youtube.search.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.subscriptions.list`

**GET** `youtube/v3/subscriptions`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more subscription resource properties that the API re... |
| `channelId` | `string` | query | No | Return the subscriptions of the given channel owner. |
| `forChannelId` | `string` | query | No | Return the subscriptions to the subset of these channels that the authenticated user is subscribed to. |
| `id` | `string` | query | No | Return the subscriptions with the given IDs for Stubby or Apiary. |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `mine` | `boolean` | query | No | Flag for returning the subscriptions of the authenticated user. |
| `myRecentSubscribers` | `boolean` | query | No |  |
| `mySubscribers` | `boolean` | query | No | Return the subscribers of the given channel owner. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |
| `order` | `string` | query | No | The order of the returned subscriptions |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |

**Response**: `SubscriptionListResponse`

```typescript
const res = await youtube.subscriptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.subscriptions.delete`

**DELETE** `youtube/v3/subscriptions`

Deletes a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes |  |

```typescript
const res = await youtube.subscriptions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.subscriptions.insert`

**POST** `youtube/v3/subscriptions`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |

**Request body**: `Subscription`

**Response**: `Subscription`

```typescript
const res = await youtube.subscriptions.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.superChatEvents.list`

**GET** `youtube/v3/superChatEvents`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies the superChatEvent resource parts that the API response will include. This parameter i... |
| `hl` | `string` | query | No | Return rendered funding amounts in specified language. |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |

**Response**: `SuperChatEventListResponse`

```typescript
const res = await youtube.superChatEvents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`

---

### `youtube.tests.insert`

**POST** `youtube/v3/tests`

POST method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes |  |
| `externalChannelId` | `string` | query | No |  |

**Request body**: `TestItem`

**Response**: `TestItem`

```typescript
const res = await youtube.tests.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube.readonly`

---

### `youtube.thirdPartyLinks.list`

**GET** `youtube/v3/thirdPartyLinks`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies the thirdPartyLink resource parts that the API response will include. Supported values... |
| `externalChannelId` | `string` | query | No | Channel ID to which changes should be applied, for delegation. |
| `linkingToken` | `string` | query | No | Get a third party link with the given linking token. |
| `type` | `string` | query | No | Get a third party link of the given type. |

**Response**: `ThirdPartyLinkListResponse`

```typescript
const res = await youtube.thirdPartyLinks.list({
  // parameters
});
```

---

### `youtube.thirdPartyLinks.insert`

**POST** `youtube/v3/thirdPartyLinks`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies the thirdPartyLink resource parts that the API request and response will include. Supp... |
| `externalChannelId` | `string` | query | No | Channel ID to which changes should be applied, for delegation. |

**Request body**: `ThirdPartyLink`

**Response**: `ThirdPartyLink`

```typescript
const res = await youtube.thirdPartyLinks.insert({
  // parameters
});
```

---

### `youtube.thirdPartyLinks.update`

**PUT** `youtube/v3/thirdPartyLinks`

Updates an existing resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies the thirdPartyLink resource parts that the API request and response will include. Supp... |
| `externalChannelId` | `string` | query | No | Channel ID to which changes should be applied, for delegation. |

**Request body**: `ThirdPartyLink`

**Response**: `ThirdPartyLink`

```typescript
const res = await youtube.thirdPartyLinks.update({
  // parameters
});
```

---

### `youtube.thirdPartyLinks.delete`

**DELETE** `youtube/v3/thirdPartyLinks`

Deletes a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `linkingToken` | `string` | query | Yes | Delete the partner links with the given linking token. |
| `type` | `string` | query | Yes | Type of the link to be deleted. |
| `externalChannelId` | `string` | query | No | Channel ID to which changes should be applied, for delegation. |
| `part` | `string` | query | No | Do not use. Required for compatibility. |

```typescript
const res = await youtube.thirdPartyLinks.delete({
  // parameters
});
```

---

### `youtube.thumbnails.set`

**POST** `youtube/v3/thumbnails/set`

As this is not an insert in a strict sense (it supports uploading/setting of a thumbnail for multiple videos, which doesn't result in creation of a single resource), I use a custom verb here.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `videoId` | `string` | query | Yes | Returns the Thumbnail with the given video IDs for Stubby or Apiary. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

**Response**: `ThumbnailSetResponse`

```typescript
const res = await youtube.thumbnails.set({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.upload`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.videos.list`

**GET** `youtube/v3/videos`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies a comma-separated list of one or more video resource properties that the API response ... |
| `chart` | `string` | query | No | Return the videos that are in the specified chart. |
| `hl` | `string` | query | No | Stands for "host language". Specifies the localization language of the metadata to be filled into snippet.localized. ... |
| `id` | `string` | query | No | Return videos with the given ids. |
| `locale` | `string` | query | No |  |
| `maxHeight` | `integer` | query | No |  |
| `maxResults` | `integer` | query | No | The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. *Note:* T... |
| `maxWidth` | `integer` | query | No | Return the player with maximum height specified in |
| `myRating` | `string` | query | No | Return videos liked/disliked by the authenticated user. Does not support RateType.RATED_TYPE_NONE. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `pageToken` | `string` | query | No | The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, t... |
| `regionCode` | `string` | query | No | Use a chart that is specific to the specified region |
| `videoCategoryId` | `string` | query | No | Use chart that is specific to the specified video category |

**Response**: `VideoListResponse`

```typescript
const res = await youtube.videos.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.videos.insert`

**POST** `youtube/v3/videos`

Inserts a new resource into this collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |
| `autoLevels` | `boolean` | query | No | Should auto-levels be applied to the upload. |
| `notifySubscribers` | `boolean` | query | No | Notify the channel subscribers about the new video. As default, the notification is enabled. |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |
| `onBehalfOfContentOwnerChannel` | `string` | query | No | This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for ... |
| `stabilize` | `boolean` | query | No | Should stabilize be applied to the upload. |

**Request body**: `Video`

**Response**: `Video`

```typescript
const res = await youtube.videos.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.upload`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.videos.update`

**PUT** `youtube/v3/videos`

Updates an existing resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation wil... |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

**Request body**: `Video`

**Response**: `Video`

```typescript
const res = await youtube.videos.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.videos.delete`

**DELETE** `youtube/v3/videos`

Deletes a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes |  |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

```typescript
const res = await youtube.videos.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.videos.reportAbuse`

**POST** `youtube/v3/videos/reportAbuse`

Report abuse for a video.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

**Request body**: `VideoAbuseReport`

```typescript
const res = await youtube.videos.reportAbuse({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.videos.rate`

**POST** `youtube/v3/videos/rate`

Adds a like or dislike rating to a video or removes a rating from a video.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes |  |
| `rating` | `string` | query | Yes |  |

```typescript
const res = await youtube.videos.rate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.videos.getRating`

**GET** `youtube/v3/videos/getRating`

Retrieves the ratings that the authorized user gave to a list of specified videos.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | Yes |  |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

**Response**: `VideoGetRatingResponse`

```typescript
const res = await youtube.videos.getRating({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.videoAbuseReportReasons.list`

**GET** `youtube/v3/videoAbuseReportReasons`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies the videoCategory resource parts that the API response will include. Supported values ... |
| `hl` | `string` | query | No |  |

**Response**: `VideoAbuseReportReasonListResponse`

```typescript
const res = await youtube.videoAbuseReportReasons.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`

---

### `youtube.videoCategories.list`

**GET** `youtube/v3/videoCategories`

Retrieves a list of resources, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `part` | `string` | query | Yes | The *part* parameter specifies the videoCategory resource properties that the API response will include. Set the para... |
| `hl` | `string` | query | No |  |
| `id` | `string` | query | No | Returns the video categories with the given IDs for Stubby or Apiary. |
| `regionCode` | `string` | query | No |  |

**Response**: `VideoCategoryListResponse`

```typescript
const res = await youtube.videoCategories.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.videoTrainability.get`

**GET** `youtube/v3/videoTrainability`

Returns the trainability status of a video.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | No | The ID of the video to retrieve. |

**Response**: `VideoTrainability`

```typescript
const res = await youtube.videoTrainability.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.watermarks.set`

**POST** `youtube/v3/watermarks/set`

Allows upload of watermark image and setting it for a channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `channelId` | `string` | query | Yes |  |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

**Request body**: `InvideoBranding`

```typescript
const res = await youtube.watermarks.set({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtube.upload`
- `https://www.googleapis.com/auth/youtubepartner`

---

### `youtube.watermarks.unset`

**POST** `youtube/v3/watermarks/unset`

Allows removal of channel watermark.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `channelId` | `string` | query | Yes |  |
| `onBehalfOfContentOwner` | `string` | query | No | *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter i... |

```typescript
const res = await youtube.watermarks.unset({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.force-ssl`
- `https://www.googleapis.com/auth/youtubepartner`

---

## Schemas

### `AbuseReport`

| Property | Type | Description |
|----------|------|-------------|
| `abuseTypes` | `array<AbuseType>` |  |
| `description` | `string` |  |
| `relatedEntities` | `array<RelatedEntity>` |  |
| `subject` | `Entity` |  |

### `AbuseType`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` |  |

### `AccessPolicy`

Rights management policy for YouTube resources.

| Property | Type | Description |
|----------|------|-------------|
| `allowed` | `boolean` | The value of allowed indicates whether the access to the policy is allowed or denied by default. |
| `exception` | `array<string>` | A list of region codes that identify countries where the default policy do not apply. |

### `Activity`

An *activity* resource contains information about an action that a particular channel, or user, has taken on YouTube.The actions reported in activity feeds include rating a video, sharing a video, marking a video as a favorite, commenting on a video, uploading a video, and so forth. Each activity resource identifies the type of action, the channel associated with the action, and the resource(s) associated with the action, such as the video that was rated or uploaded.

| Property | Type | Description |
|----------|------|-------------|
| `contentDetails` | `ActivityContentDetails` | The contentDetails object contains information about the content associated with the activity. Fo... |
| `etag` | `string` | Etag of this resource |
| `id` | `string` | The ID that YouTube uses to uniquely identify the activity. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#activity". |
| `snippet` | `ActivitySnippet` | The snippet object contains basic details about the activity, including the activity's type and g... |

### `ActivityContentDetails`

Details about the content of an activity: the video that was shared, the channel that was subscribed to, etc.

| Property | Type | Description |
|----------|------|-------------|
| `bulletin` | `ActivityContentDetailsBulletin` | The bulletin object contains details about a channel bulletin post. This object is only present i... |
| `channelItem` | `ActivityContentDetailsChannelItem` | The channelItem object contains details about a resource which was added to a channel. This prope... |
| `comment` | `ActivityContentDetailsComment` | The comment object contains information about a resource that received a comment. This property i... |
| `favorite` | `ActivityContentDetailsFavorite` | The favorite object contains information about a video that was marked as a favorite video. This ... |
| `like` | `ActivityContentDetailsLike` | The like object contains information about a resource that received a positive (like) rating. Thi... |
| `playlistItem` | `ActivityContentDetailsPlaylistItem` | The playlistItem object contains information about a new playlist item. This property is only pre... |
| `promotedItem` | `ActivityContentDetailsPromotedItem` | The promotedItem object contains details about a resource which is being promoted. This property ... |
| `recommendation` | `ActivityContentDetailsRecommendation` | The recommendation object contains information about a recommended resource. This property is onl... |
| `social` | `ActivityContentDetailsSocial` | The social object contains details about a social network post. This property is only present if ... |
| `subscription` | `ActivityContentDetailsSubscription` | The subscription object contains information about a channel that a user subscribed to. This prop... |
| `upload` | `ActivityContentDetailsUpload` | The upload object contains information about the uploaded video. This property is only present if... |

### `ActivityContentDetailsBulletin`

Details about a channel bulletin post.

| Property | Type | Description |
|----------|------|-------------|
| `resourceId` | `ResourceId` | The resourceId object contains information that identifies the resource associated with a bulleti... |

### `ActivityContentDetailsChannelItem`

Details about a resource which was added to a channel.

| Property | Type | Description |
|----------|------|-------------|
| `resourceId` | `ResourceId` | The resourceId object contains information that identifies the resource that was added to the cha... |

### `ActivityContentDetailsComment`

Information about a resource that received a comment.

| Property | Type | Description |
|----------|------|-------------|
| `resourceId` | `ResourceId` | The resourceId object contains information that identifies the resource associated with the comment. |

### `ActivityContentDetailsFavorite`

Information about a video that was marked as a favorite video.

| Property | Type | Description |
|----------|------|-------------|
| `resourceId` | `ResourceId` | The resourceId object contains information that identifies the resource that was marked as a favo... |

### `ActivityContentDetailsLike`

Information about a resource that received a positive (like) rating.

| Property | Type | Description |
|----------|------|-------------|
| `resourceId` | `ResourceId` | The resourceId object contains information that identifies the rated resource. |

### `ActivityContentDetailsPlaylistItem`

Information about a new playlist item.

| Property | Type | Description |
|----------|------|-------------|
| `playlistId` | `string` | The value that YouTube uses to uniquely identify the playlist. |
| `playlistItemId` | `string` | ID of the item within the playlist. |
| `resourceId` | `ResourceId` | The resourceId object contains information about the resource that was added to the playlist. |

### `ActivityContentDetailsPromotedItem`

Details about a resource which is being promoted.

| Property | Type | Description |
|----------|------|-------------|
| `adTag` | `string` | The URL the client should fetch to request a promoted item. |
| `clickTrackingUrl` | `string` | The URL the client should ping to indicate that the user clicked through on this promoted item. |
| `creativeViewUrl` | `string` | The URL the client should ping to indicate that the user was shown this promoted item. |
| `ctaType` | `string` | The type of call-to-action, a message to the user indicating action that can be taken. |
| `customCtaButtonText` | `string` | The custom call-to-action button text. If specified, it will override the default button text for... |
| `descriptionText` | `string` | The text description to accompany the promoted item. |
| `destinationUrl` | `string` | The URL the client should direct the user to, if the user chooses to visit the advertiser's website. |
| `forecastingUrl` | `array<string>` | The list of forecasting URLs. The client should ping all of these URLs when a promoted item is no... |
| `impressionUrl` | `array<string>` | The list of impression URLs. The client should ping all of these URLs to indicate that the user w... |
| `videoId` | `string` | The ID that YouTube uses to uniquely identify the promoted video. |

### `ActivityContentDetailsRecommendation`

Information that identifies the recommended resource.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | The reason that the resource is recommended to the user. |
| `resourceId` | `ResourceId` | The resourceId object contains information that identifies the recommended resource. |
| `seedResourceId` | `ResourceId` | The seedResourceId object contains information about the resource that caused the recommendation. |

### `ActivityContentDetailsSocial`

Details about a social network post.

| Property | Type | Description |
|----------|------|-------------|
| `author` | `string` | The author of the social network post. |
| `imageUrl` | `string` | An image of the post's author. |
| `referenceUrl` | `string` | The URL of the social network post. |
| `resourceId` | `ResourceId` | The resourceId object encapsulates information that identifies the resource associated with a soc... |
| `type` | `string` | The name of the social network. |

### `ActivityContentDetailsSubscription`

Information about a channel that a user subscribed to.

| Property | Type | Description |
|----------|------|-------------|
| `resourceId` | `ResourceId` | The resourceId object contains information that identifies the resource that the user subscribed to. |

### `ActivityContentDetailsUpload`

Information about the uploaded video.

| Property | Type | Description |
|----------|------|-------------|
| `videoId` | `string` | The ID that YouTube uses to uniquely identify the uploaded video. |

### `ActivityListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<Activity>` |  |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#activityListResponse". |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` | General pagination information. |
| `prevPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the previous page ... |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `ActivitySnippet`

Basic details about an activity, including title, description, thumbnails, activity type and group. Next ID: 12

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | The ID that YouTube uses to uniquely identify the channel associated with the activity. |
| `channelTitle` | `string` | Channel title for the channel responsible for this activity |
| `description` | `string` | The description of the resource primarily associated with the activity. @mutable youtube.activiti... |
| `groupId` | `string` | The group ID associated with the activity. A group ID identifies user events that are associated ... |
| `publishedAt` | `string` | The date and time that the video was uploaded. |
| `thumbnails` | `ThumbnailDetails` | A map of thumbnail images associated with the resource that is primarily associated with the acti... |
| `title` | `string` | The title of the resource primarily associated with the activity. |
| `type` | `string` | The type of activity that the resource describes. |

### `Caption`

A *caption* resource represents a YouTube caption track. A caption track is associated with exactly one YouTube video.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube uses to uniquely identify the caption track. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#caption". |
| `snippet` | `CaptionSnippet` | The snippet object contains basic details about the caption. |

### `CaptionListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<Caption>` | A list of captions that match the request criteria. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#captionListResponse". |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `CaptionSnippet`

Basic details about a caption track, such as its language and name.

| Property | Type | Description |
|----------|------|-------------|
| `audioTrackType` | `string` | The type of audio track associated with the caption track. |
| `failureReason` | `string` | The reason that YouTube failed to process the caption track. This property is only present if the... |
| `isAutoSynced` | `boolean` | Indicates whether YouTube synchronized the caption track to the audio track in the video. The val... |
| `isCC` | `boolean` | Indicates whether the track contains closed captions for the deaf and hard of hearing. The defaul... |
| `isDraft` | `boolean` | Indicates whether the caption track is a draft. If the value is true, then the track is not publi... |
| `isEasyReader` | `boolean` | Indicates whether caption track is formatted for "easy reader," meaning it is at a third-grade le... |
| `isLarge` | `boolean` | Indicates whether the caption track uses large text for the vision-impaired. The default value is... |
| `language` | `string` | The language of the caption track. The property value is a BCP-47 language tag. |
| `lastUpdated` | `string` | The date and time when the caption track was last updated. |
| `name` | `string` | The name of the caption track. The name is intended to be visible to the user as an option during... |
| `status` | `string` | The caption track's status. |
| `trackKind` | `string` | The caption track's type. |
| `videoId` | `string` | The ID that YouTube uses to uniquely identify the video associated with the caption track. @mutab... |

### `CdnSettings`

Brief description of the live stream cdn settings.

| Property | Type | Description |
|----------|------|-------------|
| `format` | `string` | The format of the video stream that you are sending to Youtube. |
| `frameRate` | `string` | The frame rate of the inbound video data. |
| `ingestionInfo` | `IngestionInfo` | The ingestionInfo object contains information that YouTube provides that you need to transmit you... |
| `ingestionType` | `string` | The method or protocol used to transmit the video stream. |
| `resolution` | `string` | The resolution of the inbound video data. |

### `Channel`

A *channel* resource contains information about a YouTube channel.

| Property | Type | Description |
|----------|------|-------------|
| `auditDetails` | `ChannelAuditDetails` | The auditionDetails object encapsulates channel data that is relevant for YouTube Partners during... |
| `brandingSettings` | `ChannelBrandingSettings` | The brandingSettings object encapsulates information about the branding of the channel. |
| `contentDetails` | `ChannelContentDetails` | The contentDetails object encapsulates information about the channel's content. |
| `contentOwnerDetails` | `ChannelContentOwnerDetails` | The contentOwnerDetails object encapsulates channel data that is relevant for YouTube Partners li... |
| `conversionPings` | `ChannelConversionPings` | The conversionPings object encapsulates information about conversion pings that need to be respec... |
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube uses to uniquely identify the channel. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#channel". |
| `localizations` | `object` | Localizations for different languages |
| `snippet` | `ChannelSnippet` | The snippet object contains basic details about the channel, such as its title, description, and ... |
| `statistics` | `ChannelStatistics` | The statistics object encapsulates statistics for the channel. |
| `status` | `ChannelStatus` | The status object encapsulates information about the privacy status of the channel. |
| `topicDetails` | `ChannelTopicDetails` | The topicDetails object encapsulates information about Freebase topics associated with the channel. |

### `ChannelAuditDetails`

The auditDetails object encapsulates channel data that is relevant for YouTube Partners during the audit process.

| Property | Type | Description |
|----------|------|-------------|
| `communityGuidelinesGoodStanding` | `boolean` | Whether or not the channel respects the community guidelines. |
| `contentIdClaimsGoodStanding` | `boolean` | Whether or not the channel has any unresolved claims. |
| `copyrightStrikesGoodStanding` | `boolean` | Whether or not the channel has any copyright strikes. |

### `ChannelBannerResource`

A channel banner returned as the response to a channel_banner.insert call.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` |  |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#channelBannerResource". |
| `url` | `string` | The URL of this banner image. |

### `ChannelBrandingSettings`

Branding properties of a YouTube channel.

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `ChannelSettings` | Branding properties for the channel view. |
| `hints` | `array<PropertyValue>` | Additional experimental branding properties. |
| `image` | `ImageSettings` | Branding properties for branding images. |
| `watch` | `WatchSettings` | Branding properties for the watch page. |

### `ChannelContentDetails`

Details about the content of a channel.

| Property | Type | Description |
|----------|------|-------------|
| `relatedPlaylists` | `object` |  |

### `ChannelContentOwnerDetails`

The contentOwnerDetails object encapsulates channel data that is relevant for YouTube Partners linked with the channel.

| Property | Type | Description |
|----------|------|-------------|
| `contentOwner` | `string` | The ID of the content owner linked to the channel. |
| `timeLinked` | `string` | The date and time when the channel was linked to the content owner. |

### `ChannelConversionPing`

Pings that the app shall fire (authenticated by biscotti cookie). Each ping has a context, in which the app must fire the ping, and a url identifying the ping.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `string` | Defines the context of the ping. |
| `conversionUrl` | `string` | The url (without the schema) that the player shall send the ping to. It's at caller's descretion ... |

### `ChannelConversionPings`

The conversionPings object encapsulates information about conversion pings that need to be respected by the channel.

| Property | Type | Description |
|----------|------|-------------|
| `pings` | `array<ChannelConversionPing>` | Pings that the app shall fire (authenticated by biscotti cookie). Each ping has a context, in whi... |

### `ChannelListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<Channel>` |  |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#channelListResponse". |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` | General pagination information. |
| `prevPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the previous page ... |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `ChannelLocalization`

Channel localization setting

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The localized strings for channel's description. |
| `title` | `string` | The localized strings for channel's title. |

### `ChannelProfileDetails`

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | The YouTube channel ID. |
| `channelUrl` | `string` | The channel's URL. |
| `displayName` | `string` | The channel's display name. |
| `profileImageUrl` | `string` | The channels's avatar URL. |

### `ChannelSection`

| Property | Type | Description |
|----------|------|-------------|
| `contentDetails` | `ChannelSectionContentDetails` | The contentDetails object contains details about the channel section content, such as a list of p... |
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube uses to uniquely identify the channel section. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#channelSection". |
| `localizations` | `object` | Localizations for different languages |
| `snippet` | `ChannelSectionSnippet` | The snippet object contains basic details about the channel section, such as its type, style and ... |
| `targeting` | `ChannelSectionTargeting` | The targeting object contains basic targeting settings about the channel section. |

### `ChannelSectionContentDetails`

Details about a channelsection, including playlists and channels.

| Property | Type | Description |
|----------|------|-------------|
| `channels` | `array<string>` | The channel ids for type multiple_channels. |
| `playlists` | `array<string>` | The playlist ids for type single_playlist and multiple_playlists. For singlePlaylist, only one pl... |

### `ChannelSectionListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<ChannelSection>` | A list of ChannelSections that match the request criteria. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#channelSectionListResp... |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `ChannelSectionLocalization`

ChannelSection localization setting

| Property | Type | Description |
|----------|------|-------------|
| `title` | `string` | The localized strings for channel section's title. |

### `ChannelSectionSnippet`

Basic details about a channel section, including title, style and position.

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | The ID that YouTube uses to uniquely identify the channel that published the channel section. |
| `defaultLanguage` | `string` | The language of the channel section's default title and description. |
| `localized` | `ChannelSectionLocalization` | Localized title, read-only. |
| `position` | `integer` | The position of the channel section in the channel. |
| `style` | `string` | The style of the channel section. |
| `title` | `string` | The channel section's title for multiple_playlists and multiple_channels. |
| `type` | `string` | The type of the channel section. |

### `ChannelSectionTargeting`

ChannelSection targeting setting.

| Property | Type | Description |
|----------|------|-------------|
| `countries` | `array<string>` | The country the channel section is targeting. |
| `languages` | `array<string>` | The language the channel section is targeting. |
| `regions` | `array<string>` | The region the channel section is targeting. |

### `ChannelSettings`

Branding properties for the channel view.

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | The country of the channel. |
| `defaultLanguage` | `string` |  |
| `defaultTab` | `string` | Which content tab users should see when viewing the channel. |
| `description` | `string` | Specifies the channel description. |
| `featuredChannelsTitle` | `string` | Title for the featured channels tab. |
| `featuredChannelsUrls` | `array<string>` | The list of featured channels. |
| `keywords` | `string` | Lists keywords associated with the channel, comma-separated. |
| `moderateComments` | `boolean` | Whether user-submitted comments left on the channel page need to be approved by the channel owner... |
| `profileColor` | `string` | A prominent color that can be rendered on this channel page. |
| `showBrowseView` | `boolean` | Whether the tab to browse the videos should be displayed. |
| `showRelatedChannels` | `boolean` | Whether related channels should be proposed. |
| `title` | `string` | Specifies the channel title. |
| `trackingAnalyticsAccountId` | `string` | The ID for a Google Analytics account to track and measure traffic to the channels. |
| `unsubscribedTrailer` | `string` | The trailer of the channel, for users that are not subscribers. |

### `ChannelSnippet`

Basic details about a channel, including title, description and thumbnails.

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | The country of the channel. |
| `customUrl` | `string` | The custom url of the channel. |
| `defaultLanguage` | `string` | The language of the channel's default title and description. |
| `description` | `string` | The description of the channel. |
| `localized` | `ChannelLocalization` | Localized title and description, read-only. |
| `publishedAt` | `string` | The date and time that the channel was created. |
| `thumbnails` | `ThumbnailDetails` | A map of thumbnail images associated with the channel. For each object in the map, the key is the... |
| `title` | `string` | The channel's title. |

### `ChannelStatistics`

Statistics about a channel: number of subscribers, number of videos in the channel, etc.

| Property | Type | Description |
|----------|------|-------------|
| `commentCount` | `string` | The number of comments for the channel. |
| `hiddenSubscriberCount` | `boolean` | Whether or not the number of subscribers is shown for this user. |
| `subscriberCount` | `string` | The number of subscribers that the channel has. |
| `videoCount` | `string` | The number of videos uploaded to the channel. |
| `viewCount` | `string` | The number of times the channel has been viewed. |

### `ChannelStatus`

JSON template for the status part of a channel.

| Property | Type | Description |
|----------|------|-------------|
| `isChannelMonetizationEnabled` | `boolean` | Whether the channel is considered ypp monetization enabled. See go/yppornot for more details. |
| `isLinked` | `boolean` | If true, then the user is linked to either a YouTube username or G+ account. Otherwise, the user ... |
| `longUploadsStatus` | `string` | The long uploads status of this channel. See https://support.google.com/youtube/answer/71673 for ... |
| `madeForKids` | `boolean` |  |
| `privacyStatus` | `string` | Privacy status of the channel. |
| `selfDeclaredMadeForKids` | `boolean` |  |

### `ChannelToStoreLinkDetails`

Information specific to a store on a merchandising platform linked to a YouTube channel.

| Property | Type | Description |
|----------|------|-------------|
| `billingDetails` | `ChannelToStoreLinkDetailsBillingDetails` | Information specific to billing (read-only). |
| `merchantAffiliateProgramDetails` | `ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails` | Information specific to merchant affiliate program (read-only). |
| `merchantId` | `string` | Google Merchant Center id of the store. |
| `storeName` | `string` | Name of the store. |
| `storeUrl` | `string` | Landing page of the store. |

### `ChannelToStoreLinkDetailsBillingDetails`

Information specific to billing.

| Property | Type | Description |
|----------|------|-------------|
| `billingStatus` | `string` | The current billing profile status. |

### `ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails`

Information specific to merchant affiliate program.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `string` | The current merchant affiliate program status. |

### `ChannelTopicDetails`

Freebase topic information related to the channel.

| Property | Type | Description |
|----------|------|-------------|
| `topicCategories` | `array<string>` | A list of Wikipedia URLs that describe the channel's content. |
| `topicIds` | `array<string>` | A list of Freebase topic IDs associated with the channel. You can retrieve information about each... |

### `Comment`

A *comment* represents a single YouTube comment.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube uses to uniquely identify the comment. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#comment". |
| `snippet` | `CommentSnippet` | The snippet object contains basic details about the comment. |

### `CommentListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<Comment>` | A list of comments that match the request criteria. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#commentListResponse". |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` | General pagination information. |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `CommentSnippet`

Basic details about a comment, such as its author and text.

| Property | Type | Description |
|----------|------|-------------|
| `authorChannelId` | `CommentSnippetAuthorChannelId` |  |
| `authorChannelUrl` | `string` | Link to the author's YouTube channel, if any. |
| `authorDisplayName` | `string` | The name of the user who posted the comment. |
| `authorProfileImageUrl` | `string` | The URL for the avatar of the user who posted the comment. |
| `canRate` | `boolean` | Whether the current viewer can rate this comment. |
| `channelId` | `string` | The id of the corresponding YouTube channel. In case of a channel comment this is the channel the... |
| `likeCount` | `integer` | The total number of likes this comment has received. |
| `moderationStatus` | `string` | The comment's moderation status. Will not be set if the comments were requested through the id fi... |
| `parentId` | `string` | The unique id of the top-level comment, only set for replies. |
| `postId` | `string` | The ID of the post the comment refers to, if any. |
| `publishedAt` | `string` | The date and time when the comment was originally published. |
| `textDisplay` | `string` | The comment's text. The format is either plain text or HTML dependent on what has been requested.... |
| `textOriginal` | `string` | The comment's original raw text as initially posted or last updated. The original text will only ... |
| `updatedAt` | `string` | The date and time when the comment was last updated. |
| `videoId` | `string` | The ID of the video the comment refers to, if any. |
| `viewerRating` | `string` | The rating the viewer has given to this comment. For the time being this will never return RATE_T... |

### `CommentSnippetAuthorChannelId`

Contains the id of the author's YouTube channel, if any.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | The id of the author's YouTube channel. |

### `CommentThread`

A *comment thread* represents information that applies to a top level comment and all its replies. It can also include the top level comment itself and some of the replies.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube uses to uniquely identify the comment thread. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#commentThread". |
| `replies` | `CommentThreadReplies` | The replies object contains a limited number of replies (if any) to the top level comment found i... |
| `snippet` | `CommentThreadSnippet` | The snippet object contains basic details about the comment thread and also the top level comment. |

### `CommentThreadListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<CommentThread>` | A list of comment threads that match the request criteria. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#commentThreadListRespo... |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` | General pagination information. |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `CommentThreadReplies`

Comments written in (direct or indirect) reply to the top level comment.

| Property | Type | Description |
|----------|------|-------------|
| `comments` | `array<Comment>` | A limited number of replies. Unless the number of replies returned equals total_reply_count in th... |

### `CommentThreadSnippet`

Basic details about a comment thread.

| Property | Type | Description |
|----------|------|-------------|
| `canReply` | `boolean` | Whether the current viewer of the thread can reply to it. This is viewer specific - other viewers... |
| `channelId` | `string` | The YouTube channel the comments in the thread refer to or the channel with the video the comment... |
| `isPublic` | `boolean` | Whether the thread (and therefore all its comments) is visible to all YouTube users. |
| `postId` | `string` | The ID of the post the comments refer to, if any. |
| `topLevelComment` | `Comment` | The top level comment of this thread. |
| `totalReplyCount` | `integer` | The total number of replies (not including the top level comment). |
| `videoId` | `string` | The ID of the video the comments refer to, if any. |

### `ContentRating`

Ratings schemes. The country-specific ratings are mostly for movies and shows. LINT.IfChange

| Property | Type | Description |
|----------|------|-------------|
| `acbRating` | `string` | The video's Australian Classification Board (ACB) or Australian Communications and Media Authorit... |
| `agcomRating` | `string` | The video's rating from Italy's Autorità per le Garanzie nelle Comunicazioni (AGCOM). |
| `anatelRating` | `string` | The video's Anatel (Asociación Nacional de Televisión) rating for Chilean television. |
| `bbfcRating` | `string` | The video's British Board of Film Classification (BBFC) rating. |
| `bfvcRating` | `string` | The video's rating from Thailand's Board of Film and Video Censors. |
| `bmukkRating` | `string` | The video's rating from the Austrian Board of Media Classification (Bundesministerium für Unterri... |
| `catvRating` | `string` | Rating system for Canadian TV - Canadian TV Classification System The video's rating from the Can... |
| `catvfrRating` | `string` | The video's rating from the Canadian Radio-Television and Telecommunications Commission (CRTC) fo... |
| `cbfcRating` | `string` | The video's Central Board of Film Certification (CBFC - India) rating. |
| `cccRating` | `string` | The video's Consejo de Calificación Cinematográfica (Chile) rating. |
| `cceRating` | `string` | The video's rating from Portugal's Comissão de Classificação de Espect´culos. |
| `chfilmRating` | `string` | The video's rating in Switzerland. |
| `chvrsRating` | `string` | The video's Canadian Home Video Rating System (CHVRS) rating. |
| `cicfRating` | `string` | The video's rating from the Commission de Contrôle des Films (Belgium). |
| `cnaRating` | `string` | The video's rating from Romania's CONSILIUL NATIONAL AL AUDIOVIZUALULUI (CNA). |
| `cncRating` | `string` | Rating system in France - Commission de classification cinematographique |
| `csaRating` | `string` | The video's rating from France's Conseil supérieur de l’audiovisuel, which rates broadcast content. |
| `cscfRating` | `string` | The video's rating from Luxembourg's Commission de surveillance de la classification des films (C... |
| `czfilmRating` | `string` | The video's rating in the Czech Republic. |
| `djctqRating` | `string` | The video's Departamento de Justiça, Classificação, Qualificação e Títulos (DJCQT - Brazil) rating. |
| `djctqRatingReasons` | `array<string>` | Reasons that explain why the video received its DJCQT (Brazil) rating. |
| `ecbmctRating` | `string` | Rating system in Turkey - Evaluation and Classification Board of the Ministry of Culture and Tourism |
| `eefilmRating` | `string` | The video's rating in Estonia. |
| `egfilmRating` | `string` | The video's rating in Egypt. |
| `eirinRating` | `string` | The video's Eirin (映倫) rating. Eirin is the Japanese rating system. |
| `fcbmRating` | `string` | The video's rating from Malaysia's Film Censorship Board. |
| `fcoRating` | `string` | The video's rating from Hong Kong's Office for Film, Newspaper and Article Administration. |
| `fmocRating` | `string` | This property has been deprecated. Use the contentDetails.contentRating.cncRating instead. |
| `fpbRating` | `string` | The video's rating from South Africa's Film and Publication Board. |
| `fpbRatingReasons` | `array<string>` | Reasons that explain why the video received its FPB (South Africa) rating. |
| `fskRating` | `string` | The video's Freiwillige Selbstkontrolle der Filmwirtschaft (FSK - Germany) rating. |
| `grfilmRating` | `string` | The video's rating in Greece. |
| `icaaRating` | `string` | The video's Instituto de la Cinematografía y de las Artes Audiovisuales (ICAA - Spain) rating. |
| `ifcoRating` | `string` | The video's Irish Film Classification Office (IFCO - Ireland) rating. See the IFCO website for mo... |
| `ilfilmRating` | `string` | The video's rating in Israel. |
| `incaaRating` | `string` | The video's INCAA (Instituto Nacional de Cine y Artes Audiovisuales - Argentina) rating. |
| `kfcbRating` | `string` | The video's rating from the Kenya Film Classification Board. |
| `kijkwijzerRating` | `string` | The video's NICAM/Kijkwijzer rating from the Nederlands Instituut voor de Classificatie van Audio... |
| `kmrbRating` | `string` | The video's Korea Media Rating Board (영상물등급위원회) rating. The KMRB rates videos in South Korea. |
| `lsfRating` | `string` | The video's rating from Indonesia's Lembaga Sensor Film. |
| `mccaaRating` | `string` | The video's rating from Malta's Film Age-Classification Board. |
| `mccypRating` | `string` | The video's rating from the Danish Film Institute's (Det Danske Filminstitut) Media Council for C... |
| `mcstRating` | `string` | The video's rating system for Vietnam - MCST |
| `mdaRating` | `string` | The video's rating from Singapore's Media Development Authority (MDA) and, specifically, it's Boa... |
| `medietilsynetRating` | `string` | The video's rating from Medietilsynet, the Norwegian Media Authority. |
| `mekuRating` | `string` | The video's rating from Finland's Kansallinen Audiovisuaalinen Instituutti (National Audiovisual ... |
| `menaMpaaRating` | `string` | The rating system for MENA countries, a clone of MPAA. It is needed to prevent titles go live w/o... |
| `mibacRating` | `string` | The video's rating from the Ministero dei Beni e delle Attività Culturali e del Turismo (Italy). |
| `mocRating` | `string` | The video's Ministerio de Cultura (Colombia) rating. |
| `moctwRating` | `string` | The video's rating from Taiwan's Ministry of Culture (文化部). |
| `mpaaRating` | `string` | The video's Motion Picture Association of America (MPAA) rating. |
| `mpaatRating` | `string` | The rating system for trailer, DVD, and Ad in the US. See http://movielabs.com/md/ratings/v2.3/ht... |
| `mtrcbRating` | `string` | The video's rating from the Movie and Television Review and Classification Board (Philippines). |
| `nbcRating` | `string` | The video's rating from the Maldives National Bureau of Classification. |
| `nbcplRating` | `string` | The video's rating in Poland. |
| `nfrcRating` | `string` | The video's rating from the Bulgarian National Film Center. |
| `nfvcbRating` | `string` | The video's rating from Nigeria's National Film and Video Censors Board. |
| `nkclvRating` | `string` | The video's rating from the Nacionãlais Kino centrs (National Film Centre of Latvia). |
| `nmcRating` | `string` | The National Media Council ratings system for United Arab Emirates. |
| `oflcRating` | `string` | The video's Office of Film and Literature Classification (OFLC - New Zealand) rating. |
| `pefilmRating` | `string` | The video's rating in Peru. |
| `rcnofRating` | `string` | The video's rating from the Hungarian Nemzeti Filmiroda, the Rating Committee of the National Off... |
| `resorteviolenciaRating` | `string` | The video's rating in Venezuela. |
| `rtcRating` | `string` | The video's General Directorate of Radio, Television and Cinematography (Mexico) rating. |
| `rteRating` | `string` | The video's rating from Ireland's Raidió Teilifís Éireann. |
| `russiaRating` | `string` | The video's National Film Registry of the Russian Federation (MKRF - Russia) rating. |
| `skfilmRating` | `string` | The video's rating in Slovakia. |
| `smaisRating` | `string` | The video's rating in Iceland. |
| `smsaRating` | `string` | The video's rating from Statens medieråd (Sweden's National Media Council). |
| `tvpgRating` | `string` | The video's TV Parental Guidelines (TVPG) rating. |
| `ytRating` | `string` | A rating that YouTube uses to identify age-restricted content. |

### `Cuepoint`

Note that there may be a 5-second end-point resolution issue. For instance, if a cuepoint comes in for 22:03:27, we may stuff the cuepoint into 22:03:25 or 22:03:30, depending. This is an artifact of HLS.

| Property | Type | Description |
|----------|------|-------------|
| `cueType` | `string` |  |
| `durationSecs` | `integer` | The duration of this cuepoint. |
| `etag` | `string` |  |
| `id` | `string` | The identifier for cuepoint resource. |
| `insertionOffsetTimeMs` | `string` | The time when the cuepoint should be inserted by offset to the broadcast actual start time. |
| `walltimeMs` | `string` | The wall clock time at which the cuepoint should be inserted. Only one of insertion_offset_time_m... |

### `CuepointSchedule`

Schedule to insert cuepoints into a broadcast by ads automator.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | This field is semantically required. If it is set false or not set, other fields in this message ... |
| `pauseAdsUntil` | `string` | If set, automatic cuepoint insertion is paused until this timestamp ("No Ad Zone"). The value is ... |
| `repeatIntervalSecs` | `integer` | Interval frequency in seconds that api uses to insert cuepoints automatically. |
| `scheduleStrategy` | `string` | The strategy to use when scheduling cuepoints. |

### `Entity`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` |  |
| `typeId` | `string` |  |
| `url` | `string` |  |

### `GeoPoint`

Geographical coordinates of a point, in WGS84.

| Property | Type | Description |
|----------|------|-------------|
| `altitude` | `number` | Altitude above the reference ellipsoid, in meters. |
| `latitude` | `number` | Latitude in degrees. |
| `longitude` | `number` | Longitude in degrees. |

### `I18nLanguage`

An *i18nLanguage* resource identifies a UI language currently supported by YouTube.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube uses to uniquely identify the i18n language. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#i18nLanguage". |
| `snippet` | `I18nLanguageSnippet` | The snippet object contains basic details about the i18n language, such as language code and huma... |

### `I18nLanguageListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<I18nLanguage>` | A list of supported i18n languages. In this map, the i18n language ID is the map key, and its val... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#i18nLanguageListRespon... |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `I18nLanguageSnippet`

Basic details about an i18n language, such as language code and human-readable name.

| Property | Type | Description |
|----------|------|-------------|
| `hl` | `string` | A short BCP-47 code that uniquely identifies a language. |
| `name` | `string` | The human-readable name of the language in the language itself. |

### `I18nRegion`

A *i18nRegion* resource identifies a region where YouTube is available.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube uses to uniquely identify the i18n region. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#i18nRegion". |
| `snippet` | `I18nRegionSnippet` | The snippet object contains basic details about the i18n region, such as region code and human-re... |

### `I18nRegionListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<I18nRegion>` | A list of regions where YouTube is available. In this map, the i18n region ID is the map key, and... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#i18nRegionListResponse". |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `I18nRegionSnippet`

Basic details about an i18n region, such as region code and human-readable name.

| Property | Type | Description |
|----------|------|-------------|
| `gl` | `string` | The region code as a 2-letter ISO country code. |
| `name` | `string` | The human-readable name of the region. |

### `ImageSettings`

Branding properties for images associated with the channel.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundImageUrl` | `LocalizedProperty` | The URL for the background image shown on the video watch page. The image should be 1200px by 615... |
| `bannerExternalUrl` | `string` | This is generated when a ChannelBanner.Insert request has succeeded for the given channel. |
| `bannerImageUrl` | `string` | Banner image. Desktop size (1060x175). |
| `bannerMobileExtraHdImageUrl` | `string` | Banner image. Mobile size high resolution (1440x395). |
| `bannerMobileHdImageUrl` | `string` | Banner image. Mobile size high resolution (1280x360). |
| `bannerMobileImageUrl` | `string` | Banner image. Mobile size (640x175). |
| `bannerMobileLowImageUrl` | `string` | Banner image. Mobile size low resolution (320x88). |
| `bannerMobileMediumHdImageUrl` | `string` | Banner image. Mobile size medium/high resolution (960x263). |
| `bannerTabletExtraHdImageUrl` | `string` | Banner image. Tablet size extra high resolution (2560x424). |
| `bannerTabletHdImageUrl` | `string` | Banner image. Tablet size high resolution (2276x377). |
| `bannerTabletImageUrl` | `string` | Banner image. Tablet size (1707x283). |
| `bannerTabletLowImageUrl` | `string` | Banner image. Tablet size low resolution (1138x188). |
| `bannerTvHighImageUrl` | `string` | Banner image. TV size high resolution (1920x1080). |
| `bannerTvImageUrl` | `string` | Banner image. TV size extra high resolution (2120x1192). |
| `bannerTvLowImageUrl` | `string` | Banner image. TV size low resolution (854x480). |
| `bannerTvMediumImageUrl` | `string` | Banner image. TV size medium resolution (1280x720). |
| `largeBrandedBannerImageImapScript` | `LocalizedProperty` | The image map script for the large banner image. |
| `largeBrandedBannerImageUrl` | `LocalizedProperty` | The URL for the 854px by 70px image that appears below the video player in the expanded video vie... |
| `smallBrandedBannerImageImapScript` | `LocalizedProperty` | The image map script for the small banner image. |
| `smallBrandedBannerImageUrl` | `LocalizedProperty` | The URL for the 640px by 70px banner image that appears below the video player in the default vie... |
| `trackingImageUrl` | `string` | The URL for a 1px by 1px tracking pixel that can be used to collect statistics for views of the c... |
| `watchIconImageUrl` | `string` |  |

### `IngestionInfo`

Describes information necessary for ingesting an RTMP, HTTP, or SRT stream.

| Property | Type | Description |
|----------|------|-------------|
| `backupIngestionAddress` | `string` | The backup ingestion URL that you should use to stream video to YouTube. You have the option of s... |
| `ingestionAddress` | `string` | The primary ingestion URL that you should use to stream video to YouTube. You must stream video t... |
| `rtmpsBackupIngestionAddress` | `string` | This ingestion url may be used instead of backupIngestionAddress in order to stream via RTMPS. No... |
| `rtmpsIngestionAddress` | `string` | This ingestion url may be used instead of ingestionAddress in order to stream via RTMPS. Not appl... |
| `streamName` | `string` | The stream name that YouTube assigns to the video stream. |

### `InvideoBranding`

Describes an invideo branding.

| Property | Type | Description |
|----------|------|-------------|
| `imageBytes` | `string` | The bytes the uploaded image. Only used in api to youtube communication. |
| `imageUrl` | `string` | The url of the uploaded image. Only used in apiary to api communication. |
| `position` | `InvideoPosition` | The spatial position within the video where the branding watermark will be displayed. |
| `targetChannelId` | `string` | The channel to which this branding links. If not present it defaults to the current channel. |
| `timing` | `InvideoTiming` | The temporal position within the video where watermark will be displayed. |

### `InvideoPosition`

Describes the spatial position of a visual widget inside a video. It is a union of various position types, out of which only will be set one.

| Property | Type | Description |
|----------|------|-------------|
| `cornerPosition` | `string` | Describes in which corner of the video the visual widget will appear. |
| `type` | `string` | Defines the position type. |

### `InvideoTiming`

Describes a temporal position of a visual widget inside a video.

| Property | Type | Description |
|----------|------|-------------|
| `durationMs` | `string` | Defines the duration in milliseconds for which the promotion should be displayed. If missing, the... |
| `offsetMs` | `string` | Defines the time at which the promotion will appear. Depending on the value of type the value of ... |
| `type` | `string` | Describes a timing type. If the value is offsetFromStart, then the offsetMs field represents an o... |

### `LanguageTag`

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` |  |

### `LevelDetails`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The name that should be used when referring to this level. |

### `LiveBroadcast`

A *liveBroadcast* resource represents an event that will be streamed, via live video, on YouTube.

| Property | Type | Description |
|----------|------|-------------|
| `contentDetails` | `LiveBroadcastContentDetails` | The contentDetails object contains information about the event's video content, such as whether t... |
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube assigns to uniquely identify the broadcast. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#liveBroadcast". |
| `monetizationDetails` | `LiveBroadcastMonetizationDetails` | The monetizationDetails object contains information about the event's monetization details. |
| `snippet` | `LiveBroadcastSnippet` | The snippet object contains basic details about the event, including its title, description, star... |
| `statistics` | `LiveBroadcastStatistics` | The statistics object contains info about the event's current stats. These include concurrent vie... |
| `status` | `LiveBroadcastStatus` | The status object contains information about the event's status. |

### `LiveBroadcastContentDetails`

Detailed settings of a broadcast.

| Property | Type | Description |
|----------|------|-------------|
| `boundStreamId` | `string` | This value uniquely identifies the live stream bound to the broadcast. |
| `boundStreamLastUpdateTimeMs` | `string` | The date and time that the live stream referenced by boundStreamId was last updated. |
| `closedCaptionsType` | `string` |  |
| `enableAutoStart` | `boolean` | This setting indicates whether auto start is enabled for this broadcast. The default value for th... |
| `enableAutoStop` | `boolean` | This setting indicates whether auto stop is enabled for this broadcast. The default value for thi... |
| `enableClosedCaptions` | `boolean` | This setting indicates whether HTTP POST closed captioning is enabled for this broadcast. The ing... |
| `enableContentEncryption` | `boolean` | This setting indicates whether YouTube should enable content encryption for the broadcast. |
| `enableDvr` | `boolean` | This setting determines whether viewers can access DVR controls while watching the video. DVR con... |
| `enableEmbed` | `boolean` | This setting indicates whether the broadcast video can be played in an embedded player. If you ch... |
| `enableLowLatency` | `boolean` | Indicates whether this broadcast has low latency enabled. |
| `latencyPreference` | `string` | If both this and enable_low_latency are set, they must match. LATENCY_NORMAL should match enable_... |
| `mesh` | `string` | The mesh for projecting the video if projection is mesh. The mesh value must be a UTF-8 string co... |
| `monitorStream` | `MonitorStreamInfo` | The monitorStream object contains information about the monitor stream, which the broadcaster can... |
| `projection` | `string` | The projection format of this broadcast. This defaults to rectangular. |
| `recordFromStart` | `boolean` | Automatically start recording after the event goes live. The default value for this property is t... |
| `startWithSlate` | `boolean` | This setting indicates whether the broadcast should automatically begin with an in-stream slate w... |
| `stereoLayout` | `string` | The 3D stereo layout of this broadcast. This defaults to mono. |

### `LiveBroadcastListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<LiveBroadcast>` | A list of broadcasts that match the request criteria. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#liveBroadcastListRespo... |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` | General pagination information. |
| `prevPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the previous page ... |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `LiveBroadcastMonetizationDetails`

Monetization settings of a broadcast.

| Property | Type | Description |
|----------|------|-------------|
| `cuepointSchedule` | `CuepointSchedule` |  |

### `LiveBroadcastSnippet`

Basic broadcast information.

| Property | Type | Description |
|----------|------|-------------|
| `actualEndTime` | `string` | The date and time that the broadcast actually ended. This information is only available once the ... |
| `actualStartTime` | `string` | The date and time that the broadcast actually started. This information is only available once th... |
| `channelId` | `string` | The ID that YouTube uses to uniquely identify the channel that is publishing the broadcast. |
| `description` | `string` | The broadcast's description. As with the title, you can set this field by modifying the broadcast... |
| `isDefaultBroadcast` | `boolean` | Indicates whether this broadcast is the default broadcast. Internal only. |
| `liveChatId` | `string` | The id of the live chat for this broadcast. |
| `publishedAt` | `string` | The date and time that the broadcast was added to YouTube's live broadcast schedule. |
| `scheduledEndTime` | `string` | The date and time that the broadcast is scheduled to end. |
| `scheduledStartTime` | `string` | The date and time that the broadcast is scheduled to start. |
| `thumbnails` | `ThumbnailDetails` | A map of thumbnail images associated with the broadcast. For each nested object in this object, t... |
| `title` | `string` | The broadcast's title. Note that the broadcast represents exactly one YouTube video. You can set ... |

### `LiveBroadcastStatistics`

Statistics about the live broadcast. These represent a snapshot of the values at the time of the request. Statistics are only returned for live broadcasts.

| Property | Type | Description |
|----------|------|-------------|
| `concurrentViewers` | `string` | The number of viewers currently watching the broadcast. The property and its value will be presen... |

### `LiveBroadcastStatus`

Live broadcast state.

| Property | Type | Description |
|----------|------|-------------|
| `lifeCycleStatus` | `string` | The broadcast's status. The status can be updated using the API's liveBroadcasts.transition method. |
| `liveBroadcastPriority` | `string` | Priority of the live broadcast event (internal state). |
| `madeForKids` | `boolean` | Whether the broadcast is made for kids or not, decided by YouTube instead of the creator. This fi... |
| `privacyStatus` | `string` | The broadcast's privacy status. Note that the broadcast represents exactly one YouTube video, so ... |
| `recordingStatus` | `string` | The broadcast's recording status. |
| `selfDeclaredMadeForKids` | `boolean` | This field will be set to True if the creator declares the broadcast to be kids only: go/live-cw-... |

### `LiveChatBan`

A `__liveChatBan__` resource represents a ban for a YouTube live chat.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube assigns to uniquely identify the ban. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"youtube#liveChatBan"`. |
| `snippet` | `LiveChatBanSnippet` | The `snippet` object contains basic details about the ban. |

### `LiveChatBanSnippet`

| Property | Type | Description |
|----------|------|-------------|
| `banDurationSeconds` | `string` | The duration of a ban, only filled if the ban has type TEMPORARY. |
| `bannedUserDetails` | `ChannelProfileDetails` |  |
| `liveChatId` | `string` | The chat this ban is pertinent to. |
| `type` | `string` | The type of ban. |

### `LiveChatFanFundingEventDetails`

| Property | Type | Description |
|----------|------|-------------|
| `amountDisplayString` | `string` | A rendered string that displays the fund amount and currency to the user. |
| `amountMicros` | `string` | The amount of the fund. |
| `currency` | `string` | The currency in which the fund was made. |
| `userComment` | `string` | The comment added by the user to this fan funding event. |

### `LiveChatGiftDetails`

Details about the gift event, this is only set if the type is 'giftEvent'.

| Property | Type | Description |
|----------|------|-------------|
| `altText` | `string` | The alternative text to be used for accessibility. |
| `comboCount` | `integer` | The number of times the gift has been sent in a row. |
| `giftDuration` | `string` | The duration of the gift. |
| `giftName` | `string` | The name of the gift. |
| `giftUrl` | `string` | The URL of the gift image. |
| `hasVisualEffect` | `boolean` | Whether the gift involves a visual effect. |
| `jewelsCount` | `integer` | The cost of the gift in jewels. |
| `language` | `string` | The BCP-47 language code of the gift. |

### `LiveChatGiftMembershipReceivedDetails`

| Property | Type | Description |
|----------|------|-------------|
| `associatedMembershipGiftingMessageId` | `string` | The ID of the membership gifting message that is related to this gift membership. This ID will al... |
| `gifterChannelId` | `string` | The ID of the user that made the membership gifting purchase. This matches the `snippet.authorCha... |
| `memberLevelName` | `string` | The name of the Level at which the viewer is a member. This matches the `snippet.membershipGiftin... |

### `LiveChatMemberMilestoneChatDetails`

| Property | Type | Description |
|----------|------|-------------|
| `memberLevelName` | `string` | The name of the Level at which the viever is a member. The Level names are defined by the YouTube... |
| `memberMonth` | `integer` | The total amount of months (rounded up) the viewer has been a member that granted them this Membe... |
| `userComment` | `string` | The comment added by the member to this Member Milestone Chat. This field is empty for messages w... |

### `LiveChatMembershipGiftingDetails`

| Property | Type | Description |
|----------|------|-------------|
| `giftMembershipsCount` | `integer` | The number of gift memberships purchased by the user. |
| `giftMembershipsLevelName` | `string` | The name of the level of the gift memberships purchased by the user. The Level names are defined ... |

### `LiveChatMessage`

A *liveChatMessage* resource represents a chat message in a YouTube Live Chat.

| Property | Type | Description |
|----------|------|-------------|
| `authorDetails` | `LiveChatMessageAuthorDetails` | The authorDetails object contains basic details about the user that posted this message. |
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube assigns to uniquely identify the message. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#liveChatMessage". |
| `snippet` | `LiveChatMessageSnippet` | The snippet object contains basic details about the message. |

### `LiveChatMessageAuthorDetails`

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | The YouTube channel ID. |
| `channelUrl` | `string` | The channel's URL. |
| `displayName` | `string` | The channel's display name. |
| `isChatModerator` | `boolean` | Whether the author is a moderator of the live chat. |
| `isChatOwner` | `boolean` | Whether the author is the owner of the live chat. |
| `isChatSponsor` | `boolean` | Whether the author is a sponsor of the live chat. |
| `isVerified` | `boolean` | Whether the author's identity has been verified by YouTube. |
| `profileImageUrl` | `string` | The channels's avatar URL. |

### `LiveChatMessageDeletedDetails`

| Property | Type | Description |
|----------|------|-------------|
| `deletedMessageId` | `string` |  |

### `LiveChatMessageListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `activePollItem` | `LiveChatMessage` | Set when there is an active poll. |
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<LiveChatMessage>` |  |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#liveChatMessageListRes... |
| `nextPageToken` | `string` |  |
| `offlineAt` | `string` | The date and time when the underlying stream went offline. |
| `pageInfo` | `PageInfo` | General pagination information. |
| `pollingIntervalMillis` | `integer` | The amount of time the client should wait before polling again. |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `LiveChatMessageRetractedDetails`

| Property | Type | Description |
|----------|------|-------------|
| `retractedMessageId` | `string` |  |

### `LiveChatMessageSnippet`

Next ID: 35

| Property | Type | Description |
|----------|------|-------------|
| `authorChannelId` | `string` | The ID of the user that authored this message, this field is not always filled. textMessageEvent ... |
| `displayMessage` | `string` | Contains a string that can be displayed to the user. If this field is not present the message is ... |
| `fanFundingEventDetails` | `LiveChatFanFundingEventDetails` | Details about the funding event, this is only set if the type is 'fanFundingEvent'. |
| `giftDetails` | `LiveChatGiftDetails` | Details about the gift event, this is only set if the type is 'giftEvent'. |
| `giftMembershipReceivedDetails` | `LiveChatGiftMembershipReceivedDetails` | Details about the Gift Membership Received event, this is only set if the type is 'giftMembership... |
| `hasDisplayContent` | `boolean` | Whether the message has display content that should be displayed to users. |
| `liveChatId` | `string` |  |
| `memberMilestoneChatDetails` | `LiveChatMemberMilestoneChatDetails` | Details about the Member Milestone Chat event, this is only set if the type is 'memberMilestoneCh... |
| `membershipGiftingDetails` | `LiveChatMembershipGiftingDetails` | Details about the Membership Gifting event, this is only set if the type is 'membershipGiftingEve... |
| `messageDeletedDetails` | `LiveChatMessageDeletedDetails` |  |
| `messageRetractedDetails` | `LiveChatMessageRetractedDetails` |  |
| `newSponsorDetails` | `LiveChatNewSponsorDetails` | Details about the New Member Announcement event, this is only set if the type is 'newSponsorEvent... |
| `pollDetails` | `LiveChatPollDetails` | Details about the poll event, this is only set if the type is 'pollEvent'. |
| `publishedAt` | `string` | The date and time when the message was orignally published. |
| `superChatDetails` | `LiveChatSuperChatDetails` | Details about the Super Chat event, this is only set if the type is 'superChatEvent'. |
| `superStickerDetails` | `LiveChatSuperStickerDetails` | Details about the Super Sticker event, this is only set if the type is 'superStickerEvent'. |
| `textMessageDetails` | `LiveChatTextMessageDetails` | Details about the text message, this is only set if the type is 'textMessageEvent'. |
| `type` | `string` | The type of message, this will always be present, it determines the contents of the message as we... |
| `userBannedDetails` | `LiveChatUserBannedMessageDetails` |  |

### `LiveChatModerator`

A *liveChatModerator* resource represents a moderator for a YouTube live chat. A chat moderator has the ability to ban/unban users from a chat, remove message, etc.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube assigns to uniquely identify the moderator. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#liveChatModerator". |
| `snippet` | `LiveChatModeratorSnippet` | The snippet object contains basic details about the moderator. |

### `LiveChatModeratorListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<LiveChatModerator>` | A list of moderators that match the request criteria. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#liveChatModeratorListR... |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` | General pagination information. |
| `prevPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the previous page ... |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `LiveChatModeratorSnippet`

| Property | Type | Description |
|----------|------|-------------|
| `liveChatId` | `string` | The ID of the live chat this moderator can act on. |
| `moderatorDetails` | `ChannelProfileDetails` | Details about the moderator. |

### `LiveChatNewSponsorDetails`

| Property | Type | Description |
|----------|------|-------------|
| `isUpgrade` | `boolean` | If the viewer just had upgraded from a lower level. For viewers that were not members at the time... |
| `memberLevelName` | `string` | The name of the Level that the viewer just had joined. The Level names are defined by the YouTube... |

### `LiveChatPollDetails`

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `LiveChatPollDetailsPollMetadata` |  |
| `status` | `string` |  |

### `LiveChatPollDetailsPollMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `options` | `array<LiveChatPollDetailsPollMetadataPollOption>` | The options will be returned in the order that is displayed in 1P |
| `questionText` | `string` |  |

### `LiveChatPollDetailsPollMetadataPollOption`

| Property | Type | Description |
|----------|------|-------------|
| `optionText` | `string` |  |
| `tally` | `string` |  |

### `LiveChatSuperChatDetails`

| Property | Type | Description |
|----------|------|-------------|
| `amountDisplayString` | `string` | A rendered string that displays the fund amount and currency to the user. |
| `amountMicros` | `string` | The amount purchased by the user, in micros (1,750,000 micros = 1.75). |
| `currency` | `string` | The currency in which the purchase was made. |
| `tier` | `integer` | The tier in which the amount belongs. Lower amounts belong to lower tiers. The lowest tier is 1. |
| `userComment` | `string` | The comment added by the user to this Super Chat event. |

### `LiveChatSuperStickerDetails`

| Property | Type | Description |
|----------|------|-------------|
| `amountDisplayString` | `string` | A rendered string that displays the fund amount and currency to the user. |
| `amountMicros` | `string` | The amount purchased by the user, in micros (1,750,000 micros = 1.75). |
| `currency` | `string` | The currency in which the purchase was made. |
| `superStickerMetadata` | `SuperStickerMetadata` | Information about the Super Sticker. |
| `tier` | `integer` | The tier in which the amount belongs. Lower amounts belong to lower tiers. The lowest tier is 1. |

### `LiveChatTextMessageDetails`

| Property | Type | Description |
|----------|------|-------------|
| `messageText` | `string` | The user's message. |

### `LiveChatUserBannedMessageDetails`

| Property | Type | Description |
|----------|------|-------------|
| `banDurationSeconds` | `string` | The duration of the ban. This property is only present if the banType is temporary. |
| `banType` | `string` | The type of ban. |
| `bannedUserDetails` | `ChannelProfileDetails` | The details of the user that was banned. |

### `LiveStream`

A live stream describes a live ingestion point.

| Property | Type | Description |
|----------|------|-------------|
| `cdn` | `CdnSettings` | The cdn object defines the live stream's content delivery network (CDN) settings. These settings ... |
| `contentDetails` | `LiveStreamContentDetails` | The content_details object contains information about the stream, including the closed captions i... |
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube assigns to uniquely identify the stream. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#liveStream". |
| `snippet` | `LiveStreamSnippet` | The snippet object contains basic details about the stream, including its channel, title, and des... |
| `status` | `LiveStreamStatus` | The status object contains information about live stream's status. |

### `LiveStreamConfigurationIssue`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The long-form description of the issue and how to resolve it. |
| `reason` | `string` | The short-form reason for this issue. |
| `severity` | `string` | How severe this issue is to the stream. |
| `type` | `string` | The kind of error happening. |

### `LiveStreamContentDetails`

Detailed settings of a stream.

| Property | Type | Description |
|----------|------|-------------|
| `closedCaptionsIngestionUrl` | `string` | The ingestion URL where the closed captions of this stream are sent. |
| `isReusable` | `boolean` | Indicates whether the stream is reusable, which means that it can be bound to multiple broadcasts... |

### `LiveStreamHealthStatus`

| Property | Type | Description |
|----------|------|-------------|
| `configurationIssues` | `array<LiveStreamConfigurationIssue>` | The configurations issues on this stream |
| `lastUpdateTimeSeconds` | `string` | The last time this status was updated (in seconds) |
| `status` | `string` | The status code of this stream |

### `LiveStreamListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<LiveStream>` | A list of live streams that match the request criteria. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#liveStreamListResponse". |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` |  |
| `prevPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the previous page ... |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `LiveStreamSnippet`

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | The ID that YouTube uses to uniquely identify the channel that is transmitting the stream. |
| `description` | `string` | The stream's description. The value cannot be longer than 10000 characters. |
| `isDefaultStream` | `boolean` |  |
| `publishedAt` | `string` | The date and time that the stream was created. |
| `title` | `string` | The stream's title. The value must be between 1 and 128 characters long. |

### `LiveStreamStatus`

Brief description of the live stream status.

| Property | Type | Description |
|----------|------|-------------|
| `healthStatus` | `LiveStreamHealthStatus` | The health status of the stream. |
| `streamStatus` | `string` |  |

### `LocalizedProperty`

| Property | Type | Description |
|----------|------|-------------|
| `default` | `string` |  |
| `defaultLanguage` | `LanguageTag` | The language of the default property. |
| `localized` | `array<LocalizedString>` |  |

### `LocalizedString`

| Property | Type | Description |
|----------|------|-------------|
| `language` | `string` |  |
| `value` | `string` |  |

### `Member`

A *member* resource represents a member for a YouTube channel. A member provides recurring monetary support to a creator and receives special benefits.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#member". |
| `snippet` | `MemberSnippet` | The snippet object contains basic details about the member. |

### `MemberListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<Member>` | A list of members that match the request criteria. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#memberListResponse". |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` |  |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `MemberSnippet`

| Property | Type | Description |
|----------|------|-------------|
| `creatorChannelId` | `string` | The id of the channel that's offering memberships. |
| `memberDetails` | `ChannelProfileDetails` | Details about the member. |
| `membershipsDetails` | `MembershipsDetails` | Details about the user's membership. |

### `MembershipsDetails`

| Property | Type | Description |
|----------|------|-------------|
| `accessibleLevels` | `array<string>` | Ids of all levels that the user has access to. This includes the currently active level and all o... |
| `highestAccessibleLevel` | `string` | Id of the highest level that the user has access to at the moment. |
| `highestAccessibleLevelDisplayName` | `string` | Display name for the highest level that the user has access to at the moment. |
| `membershipsDuration` | `MembershipsDuration` | Data about memberships duration without taking into consideration pricing levels. |
| `membershipsDurationAtLevels` | `array<MembershipsDurationAtLevel>` | Data about memberships duration on particular pricing levels. |

### `MembershipsDuration`

| Property | Type | Description |
|----------|------|-------------|
| `memberSince` | `string` | The date and time when the user became a continuous member across all levels. |
| `memberTotalDurationMonths` | `integer` | The cumulative time the user has been a member across all levels in complete months (the time is ... |

### `MembershipsDurationAtLevel`

| Property | Type | Description |
|----------|------|-------------|
| `level` | `string` | Pricing level ID. |
| `memberSince` | `string` | The date and time when the user became a continuous member for the given level. |
| `memberTotalDurationMonths` | `integer` | The cumulative time the user has been a member for the given level in complete months (the time i... |

### `MembershipsLevel`

A *membershipsLevel* resource represents an offer made by YouTube creators for their fans. Users can become members of the channel by joining one of the available levels. They will provide recurring monetary support and receives special benefits.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube assigns to uniquely identify the memberships level. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#membershipsLevelListRe... |
| `snippet` | `MembershipsLevelSnippet` | The snippet object contains basic details about the level. |

### `MembershipsLevelListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<MembershipsLevel>` | A list of pricing levels offered by a creator to the fans. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#membershipsLevelListRe... |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `MembershipsLevelSnippet`

| Property | Type | Description |
|----------|------|-------------|
| `creatorChannelId` | `string` | The id of the channel that's offering channel memberships. |
| `levelDetails` | `LevelDetails` | Details about the pricing level. |

### `MonitorStreamInfo`

Settings and Info of the monitor stream

| Property | Type | Description |
|----------|------|-------------|
| `broadcastStreamDelayMs` | `integer` | If you have set the enableMonitorStream property to true, then this property determines the lengt... |
| `embedHtml` | `string` | HTML code that embeds a player that plays the monitor stream. |
| `enableMonitorStream` | `boolean` | This value determines whether the monitor stream is enabled for the broadcast. If the monitor str... |

### `PageInfo`

Paging details for lists of resources, including total number of items available and number of resources returned in a single page.

| Property | Type | Description |
|----------|------|-------------|
| `resultsPerPage` | `integer` | The number of results included in the API response. |
| `totalResults` | `integer` | The total number of results in the result set. |

### `Playlist`

A *playlist* resource represents a YouTube playlist. A playlist is a collection of videos that can be viewed sequentially and shared with other users. A playlist can contain up to 200 videos, and YouTube does not limit the number of playlists that each user creates. By default, playlists are publicly visible to other users, but playlists can be public or private. YouTube also uses playlists to identify special collections of videos for a channel, such as: - uploaded videos - favorite videos - positively rated (liked) videos - watch history - watch later To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company's videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the channel resource for a given channel. You can then use the playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the playlistItems.insert and playlistItems.delete methods.

| Property | Type | Description |
|----------|------|-------------|
| `contentDetails` | `PlaylistContentDetails` | The contentDetails object contains information like video count. |
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube uses to uniquely identify the playlist. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#playlist". |
| `localizations` | `object` | Localizations for different languages |
| `player` | `PlaylistPlayer` | The player object contains information that you would use to play the playlist in an embedded pla... |
| `snippet` | `PlaylistSnippet` | The snippet object contains basic details about the playlist, such as its title and description. |
| `status` | `PlaylistStatus` | The status object contains status information for the playlist. |

### `PlaylistContentDetails`

| Property | Type | Description |
|----------|------|-------------|
| `itemCount` | `integer` | The number of videos in the playlist. |

### `PlaylistImage`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Identifies this resource (playlist id and image type). |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#playlistImages". |
| `snippet` | `PlaylistImageSnippet` |  |

### `PlaylistImageListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<PlaylistImage>` |  |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#playlistImageListRespo... |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` | General pagination information. |
| `prevPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the previous page ... |

### `PlaylistImageSnippet`

A *playlistImage* resource identifies another resource, such as a image, that is associated with a playlist. In addition, the playlistImage resource contains details about the included resource that pertain specifically to how that resource is used in that playlist. YouTube uses playlists to identify special collections of videos for a channel, such as: - uploaded videos - favorite videos - positively rated (liked) videos - watch history To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company's videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the channel resource for a given channel. You can then use the playlistImages.list method to retrieve image data for any of those playlists. You can also add or remove images from those lists by calling the playlistImages.insert and playlistImages.delete methods.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | The image height. |
| `playlistId` | `string` | The Playlist ID of the playlist this image is associated with. |
| `type` | `string` | The image type. |
| `width` | `integer` | The image width. |

### `PlaylistItem`

A *playlistItem* resource identifies another resource, such as a video, that is included in a playlist. In addition, the playlistItem resource contains details about the included resource that pertain specifically to how that resource is used in that playlist. YouTube uses playlists to identify special collections of videos for a channel, such as: - uploaded videos - favorite videos - positively rated (liked) videos - watch history - watch later To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company's videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the channel resource for a given channel. You can then use the playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the playlistItems.insert and playlistItems.delete methods. For example, if a user gives a positive rating to a video, you would insert that video into the liked videos playlist for that user's channel.

| Property | Type | Description |
|----------|------|-------------|
| `contentDetails` | `PlaylistItemContentDetails` | The contentDetails object is included in the resource if the included item is a YouTube video. Th... |
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube uses to uniquely identify the playlist item. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#playlistItem". |
| `snippet` | `PlaylistItemSnippet` | The snippet object contains basic details about the playlist item, such as its title and position... |
| `status` | `PlaylistItemStatus` | The status object contains information about the playlist item's privacy status. |

### `PlaylistItemContentDetails`

| Property | Type | Description |
|----------|------|-------------|
| `endAt` | `string` | The time, measured in seconds from the start of the video, when the video should stop playing. (T... |
| `note` | `string` | A user-generated note for this item. |
| `startAt` | `string` | The time, measured in seconds from the start of the video, when the video should start playing. (... |
| `videoId` | `string` | The ID that YouTube uses to uniquely identify a video. To retrieve the video resource, set the id... |
| `videoPublishedAt` | `string` | The date and time that the video was published to YouTube. |

### `PlaylistItemListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` |  |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<PlaylistItem>` | A list of playlist items that match the request criteria. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#playlistItemListRespon... |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` | General pagination information. |
| `prevPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the previous page ... |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `PlaylistItemSnippet`

Basic details about a playlist, including title, description and thumbnails. Basic details of a YouTube Playlist item provided by the author. Next ID: 15

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | The ID that YouTube uses to uniquely identify the user that added the item to the playlist. |
| `channelTitle` | `string` | Channel title for the channel that the playlist item belongs to. |
| `description` | `string` | The item's description. |
| `playlistId` | `string` | The ID that YouTube uses to uniquely identify thGe playlist that the playlist item is in. |
| `position` | `integer` | The order in which the item appears in the playlist. The value uses a zero-based index, so the fi... |
| `publishedAt` | `string` | The date and time that the item was added to the playlist. |
| `resourceId` | `ResourceId` | The id object contains information that can be used to uniquely identify the resource that is inc... |
| `thumbnails` | `ThumbnailDetails` | A map of thumbnail images associated with the playlist item. For each object in the map, the key ... |
| `title` | `string` | The item's title. |
| `videoOwnerChannelId` | `string` | Channel id for the channel this video belongs to. |
| `videoOwnerChannelTitle` | `string` | Channel title for the channel this video belongs to. |

### `PlaylistItemStatus`

Information about the playlist item's privacy status.

| Property | Type | Description |
|----------|------|-------------|
| `privacyStatus` | `string` | This resource's privacy status. |

### `PlaylistListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<Playlist>` | A list of playlists that match the request criteria |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#playlistListResponse". |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` | General pagination information. |
| `prevPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the previous page ... |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `PlaylistLocalization`

Playlist localization setting

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The localized strings for playlist's description. |
| `title` | `string` | The localized strings for playlist's title. |

### `PlaylistPlayer`

| Property | Type | Description |
|----------|------|-------------|
| `embedHtml` | `string` | An <iframe> tag that embeds a player that will play the playlist. |

### `PlaylistSnippet`

Basic details about a playlist, including title, description and thumbnails.

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | The ID that YouTube uses to uniquely identify the channel that published the playlist. |
| `channelTitle` | `string` | The channel title of the channel that the video belongs to. |
| `defaultLanguage` | `string` | The language of the playlist's default title and description. |
| `description` | `string` | The playlist's description. |
| `localized` | `PlaylistLocalization` | Localized title and description, read-only. |
| `publishedAt` | `string` | The date and time that the playlist was created. |
| `tags` | `array<string>` | Keyword tags associated with the playlist. |
| `thumbnailVideoId` | `string` | Note: if the playlist has a custom thumbnail, this field will not be populated. The video id sele... |
| `thumbnails` | `ThumbnailDetails` | A map of thumbnail images associated with the playlist. For each object in the map, the key is th... |
| `title` | `string` | The playlist's title. |

### `PlaylistStatus`

| Property | Type | Description |
|----------|------|-------------|
| `podcastStatus` | `string` | The playlist's podcast status. |
| `privacyStatus` | `string` | The playlist's privacy status. |

### `PropertyValue`

A pair Property / Value.

| Property | Type | Description |
|----------|------|-------------|
| `property` | `string` | A property. |
| `value` | `string` | The property's value. |

### `RelatedEntity`

| Property | Type | Description |
|----------|------|-------------|
| `entity` | `Entity` |  |

### `ResourceId`

A resource id is a generic reference that points to another YouTube resource.

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | The ID that YouTube uses to uniquely identify the referred resource, if that resource is a channe... |
| `kind` | `string` | The type of the API resource. |
| `playlistId` | `string` | The ID that YouTube uses to uniquely identify the referred resource, if that resource is a playli... |
| `videoId` | `string` | The ID that YouTube uses to uniquely identify the referred resource, if that resource is a video.... |

### `SearchListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<SearchResult>` | Pagination information for token pagination. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#searchListResponse". |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` | General pagination information. |
| `prevPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the previous page ... |
| `regionCode` | `string` |  |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `SearchResult`

A search result contains information about a YouTube video, channel, or playlist that matches the search parameters specified in an API request. While a search result points to a uniquely identifiable resource, like a video, it does not have its own persistent data.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `id` | `ResourceId` | The id object contains information that can be used to uniquely identify the resource that matche... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#searchResult". |
| `snippet` | `SearchResultSnippet` | The snippet object contains basic details about a search result, such as its title or description... |

### `SearchResultSnippet`

Basic details about a search result, including title, description and thumbnails of the item referenced by the search result.

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | The value that YouTube uses to uniquely identify the channel that published the resource that the... |
| `channelTitle` | `string` | The title of the channel that published the resource that the search result identifies. |
| `description` | `string` | A description of the search result. |
| `liveBroadcastContent` | `string` | It indicates if the resource (video or channel) has upcoming/active live broadcast content. Or it... |
| `publishedAt` | `string` | The creation date and time of the resource that the search result identifies. |
| `thumbnails` | `ThumbnailDetails` | A map of thumbnail images associated with the search result. For each object in the map, the key ... |
| `title` | `string` | The title of the search result. |

### `Subscription`

A *subscription* resource contains information about a YouTube user subscription. A subscription notifies a user when new videos are added to a channel or when another user takes one of several actions on YouTube, such as uploading a video, rating a video, or commenting on a video.

| Property | Type | Description |
|----------|------|-------------|
| `contentDetails` | `SubscriptionContentDetails` | The contentDetails object contains basic statistics about the subscription. |
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube uses to uniquely identify the subscription. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#subscription". |
| `snippet` | `SubscriptionSnippet` | The snippet object contains basic details about the subscription, including its title and the cha... |
| `subscriberSnippet` | `SubscriptionSubscriberSnippet` | The subscriberSnippet object contains basic details about the subscriber. |

### `SubscriptionContentDetails`

Details about the content to witch a subscription refers.

| Property | Type | Description |
|----------|------|-------------|
| `activityType` | `string` | The type of activity this subscription is for (only uploads, everything). |
| `newItemCount` | `integer` | The number of new items in the subscription since its content was last read. |
| `totalItemCount` | `integer` | The approximate number of items that the subscription points to. |

### `SubscriptionListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<Subscription>` | A list of subscriptions that match the request criteria. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#subscriptionListRespon... |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` |  |
| `prevPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the previous page ... |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `SubscriptionSnippet`

Basic details about a subscription, including title, description and thumbnails of the subscribed item.

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | The ID that YouTube uses to uniquely identify the subscriber's channel. |
| `description` | `string` | The subscription's details. |
| `publishedAt` | `string` | The date and time that the subscription was created. |
| `resourceId` | `ResourceId` | The id object contains information about the channel that the user subscribed to. |
| `thumbnails` | `ThumbnailDetails` | A map of thumbnail images associated with the video. For each object in the map, the key is the n... |
| `title` | `string` | The subscription's title. |

### `SubscriptionSubscriberSnippet`

Basic details about a subscription's subscriber including title, description, channel ID and thumbnails.

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | The channel ID of the subscriber. |
| `description` | `string` | The description of the subscriber. |
| `thumbnails` | `ThumbnailDetails` | Thumbnails for this subscriber. |
| `title` | `string` | The title of the subscriber. |

### `SuperChatEvent`

A `__superChatEvent__` resource represents a Super Chat purchase on a YouTube channel.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube assigns to uniquely identify the Super Chat event. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"youtube#superChatEvent"`. |
| `snippet` | `SuperChatEventSnippet` | The `snippet` object contains basic details about the Super Chat event. |

### `SuperChatEventListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<SuperChatEvent>` | A list of Super Chat purchases that match the request criteria. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#superChatEventListResp... |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` |  |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `SuperChatEventSnippet`

| Property | Type | Description |
|----------|------|-------------|
| `amountMicros` | `string` | The purchase amount, in micros of the purchase currency. e.g., 1 is represented as 1000000. |
| `channelId` | `string` | Channel id where the event occurred. |
| `commentText` | `string` | The text contents of the comment left by the user. |
| `createdAt` | `string` | The date and time when the event occurred. |
| `currency` | `string` | The currency in which the purchase was made. ISO 4217. |
| `displayString` | `string` | A rendered string that displays the purchase amount and currency (e.g., "$1.00"). The string is r... |
| `isSuperStickerEvent` | `boolean` | True if this event is a Super Sticker event. |
| `messageType` | `integer` | The tier for the paid message, which is based on the amount of money spent to purchase the message. |
| `superStickerMetadata` | `SuperStickerMetadata` | If this event is a Super Sticker event, this field will contain metadata about the Super Sticker. |
| `supporterDetails` | `ChannelProfileDetails` | Details about the supporter. |

### `SuperStickerMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `altText` | `string` | Internationalized alt text that describes the sticker image and any animation associated with it. |
| `altTextLanguage` | `string` | Specifies the localization language in which the alt text is returned. |
| `stickerId` | `string` | Unique identifier of the Super Sticker. This is a shorter form of the alt_text that includes pack... |

### `TestItem`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag for the resource. See https://en.wikipedia.org/wiki/HTTP_ETag. |
| `featuredPart` | `boolean` |  |
| `gaia` | `string` |  |
| `id` | `string` |  |
| `snippet` | `TestItemTestItemSnippet` |  |

### `TestItemTestItemSnippet`

### `ThirdPartyLink`

A *third party account link* resource represents a link between a YouTube account or a channel and an account on a third-party service.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#thirdPartyLink". |
| `linkingToken` | `string` | The linking_token identifies a YouTube account and channel with which the third party account is ... |
| `snippet` | `ThirdPartyLinkSnippet` | The snippet object contains basic details about the third- party account link. |
| `status` | `ThirdPartyLinkStatus` | The status object contains information about the status of the link. |

### `ThirdPartyLinkListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `items` | `array<ThirdPartyLink>` |  |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#thirdPartyLinkListResp... |

### `ThirdPartyLinkSnippet`

Basic information about a third party account link, including its type and type-specific information.

| Property | Type | Description |
|----------|------|-------------|
| `channelToStoreLink` | `ChannelToStoreLinkDetails` | Information specific to a link between a channel and a store on a merchandising platform. |
| `type` | `string` | Type of the link named after the entities that are being linked. |

### `ThirdPartyLinkStatus`

The third-party link status object contains information about the status of the link.

| Property | Type | Description |
|----------|------|-------------|
| `linkStatus` | `string` |  |

### `Thumbnail`

A thumbnail is an image representing a YouTube resource.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | (Optional) Height of the thumbnail image. |
| `url` | `string` | The thumbnail image's URL. |
| `width` | `integer` | (Optional) Width of the thumbnail image. |

### `ThumbnailDetails`

Internal representation of thumbnails for a YouTube resource.

| Property | Type | Description |
|----------|------|-------------|
| `default` | `Thumbnail` | The default image for this resource. |
| `high` | `Thumbnail` | The high quality image for this resource. |
| `maxres` | `Thumbnail` | The maximum resolution quality image for this resource. |
| `medium` | `Thumbnail` | The medium quality image for this resource. |
| `standard` | `Thumbnail` | The standard quality image for this resource. |

### `ThumbnailSetResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<ThumbnailDetails>` | A list of thumbnails. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#thumbnailSetResponse". |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `TokenPagination`

Stub token pagination template to suppress results.

### `Video`

A *video* resource represents a YouTube video.

| Property | Type | Description |
|----------|------|-------------|
| `ageGating` | `VideoAgeGating` | Age restriction details related to a video. This data can only be retrieved by the video owner. |
| `contentDetails` | `VideoContentDetails` | The contentDetails object contains information about the video content, including the length of t... |
| `etag` | `string` | Etag of this resource. |
| `fileDetails` | `VideoFileDetails` | The fileDetails object encapsulates information about the video file that was uploaded to YouTube... |
| `id` | `string` | The ID that YouTube uses to uniquely identify the video. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#video". |
| `liveStreamingDetails` | `VideoLiveStreamingDetails` | The liveStreamingDetails object contains metadata about a live video broadcast. The object will o... |
| `localizations` | `object` | The localizations object contains localized versions of the basic details about the video, such a... |
| `monetizationDetails` | `VideoMonetizationDetails` | The monetizationDetails object encapsulates information about the monetization status of the video. |
| `paidProductPlacementDetails` | `VideoPaidProductPlacementDetails` |  |
| `player` | `VideoPlayer` | The player object contains information that you would use to play the video in an embedded player. |
| `processingDetails` | `VideoProcessingDetails` | The processingDetails object encapsulates information about YouTube's progress in processing the ... |
| `projectDetails` | `VideoProjectDetails` | The projectDetails object contains information about the project specific video metadata. b/15751... |
| `recordingDetails` | `VideoRecordingDetails` | The recordingDetails object encapsulates information about the location, date and address where t... |
| `snippet` | `VideoSnippet` | The snippet object contains basic details about the video, such as its title, description, and ca... |
| `statistics` | `VideoStatistics` | The statistics object contains statistics about the video. |
| `status` | `VideoStatus` | The status object contains information about the video's uploading, processing, and privacy statu... |
| `suggestions` | `VideoSuggestions` | The suggestions object encapsulates suggestions that identify opportunities to improve the video ... |
| `topicDetails` | `VideoTopicDetails` | The topicDetails object encapsulates information about Freebase topics associated with the video. |

### `VideoAbuseReport`

| Property | Type | Description |
|----------|------|-------------|
| `comments` | `string` | Additional comments regarding the abuse report. |
| `language` | `string` | The language that the content was viewed in. |
| `reasonId` | `string` | The high-level, or primary, reason that the content is abusive. The value is an abuse report reas... |
| `secondaryReasonId` | `string` | The specific, or secondary, reason that this content is abusive (if available). The value is an a... |
| `videoId` | `string` | The ID that YouTube uses to uniquely identify the video. |

### `VideoAbuseReportReason`

A `__videoAbuseReportReason__` resource identifies a reason that a video could be reported as abusive. Video abuse report reasons are used with `video.ReportAbuse`.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID of this abuse report reason. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"youtube#videoAbuseReportReaso... |
| `snippet` | `VideoAbuseReportReasonSnippet` | The `snippet` object contains basic details about the abuse report reason. |

### `VideoAbuseReportReasonListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<VideoAbuseReportReason>` | A list of valid abuse reasons that are used with `video.ReportAbuse`. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"youtube#videoAbuseReportReaso... |
| `visitorId` | `string` | The `visitorId` identifies the visitor. |

### `VideoAbuseReportReasonSnippet`

Basic details about a video category, such as its localized title.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | The localized label belonging to this abuse report reason. |
| `secondaryReasons` | `array<VideoAbuseReportSecondaryReason>` | The secondary reasons associated with this reason, if any are available. (There might be 0 or more.) |

### `VideoAbuseReportSecondaryReason`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The ID of this abuse report secondary reason. |
| `label` | `string` | The localized label for this abuse report secondary reason. |

### `VideoAgeGating`

| Property | Type | Description |
|----------|------|-------------|
| `alcoholContent` | `boolean` | Indicates whether or not the video has alcoholic beverage content. Only users of legal purchasing... |
| `restricted` | `boolean` | Age-restricted trailers. For redband trailers and adult-rated video-games. Only users aged 18+ ca... |
| `videoGameRating` | `string` | Video game rating, if any. |

### `VideoCategory`

A *videoCategory* resource identifies a category that has been or could be associated with uploaded videos.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `id` | `string` | The ID that YouTube uses to uniquely identify the video category. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#videoCategory". |
| `snippet` | `VideoCategorySnippet` | The snippet object contains basic details about the video category, including its title. |

### `VideoCategoryListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<VideoCategory>` | A list of video categories that can be associated with YouTube videos. In this map, the video cat... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#videoCategoryListRespo... |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` | General pagination information. |
| `prevPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the previous page ... |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `VideoCategorySnippet`

Basic details about a video category, such as its localized title.

| Property | Type | Description |
|----------|------|-------------|
| `assignable` | `boolean` |  |
| `channelId` | `string` | The YouTube channel that created the video category. |
| `title` | `string` | The video category's title. |

### `VideoContentDetails`

Details about the content of a YouTube Video.

| Property | Type | Description |
|----------|------|-------------|
| `caption` | `string` | The value of captions indicates whether the video has captions or not. |
| `contentRating` | `ContentRating` | Specifies the ratings that the video received under various rating schemes. |
| `countryRestriction` | `AccessPolicy` | The countryRestriction object contains information about the countries where a video is (or is no... |
| `definition` | `string` | The value of definition indicates whether the video is available in high definition or only in st... |
| `dimension` | `string` | The value of dimension indicates whether the video is available in 3D or in 2D. |
| `duration` | `string` | The length of the video. The tag value is an ISO 8601 duration in the format PT#M#S, in which the... |
| `hasCustomThumbnail` | `boolean` | Indicates whether the video uploader has provided a custom thumbnail image for the video. This pr... |
| `licensedContent` | `boolean` | The value of is_license_content indicates whether the video is licensed content. |
| `projection` | `string` | Specifies the projection format of the video. |
| `regionRestriction` | `VideoContentDetailsRegionRestriction` | The regionRestriction object contains information about the countries where a video is (or is not... |

### `VideoContentDetailsRegionRestriction`

DEPRECATED Region restriction of the video.

| Property | Type | Description |
|----------|------|-------------|
| `allowed` | `array<string>` | A list of region codes that identify countries where the video is viewable. If this property is p... |
| `blocked` | `array<string>` | A list of region codes that identify countries where the video is blocked. If this property is pr... |

### `VideoFileDetails`

Describes original video file properties, including technical details about audio and video streams, but also metadata information like content length, digitization time, or geotagging information.

| Property | Type | Description |
|----------|------|-------------|
| `audioStreams` | `array<VideoFileDetailsAudioStream>` | A list of audio streams contained in the uploaded video file. Each item in the list contains deta... |
| `bitrateBps` | `string` | The uploaded video file's combined (video and audio) bitrate in bits per second. |
| `container` | `string` | The uploaded video file's container format. |
| `creationTime` | `string` | The date and time when the uploaded video file was created. The value is specified in ISO 8601 fo... |
| `durationMs` | `string` | The length of the uploaded video in milliseconds. |
| `fileName` | `string` | The uploaded file's name. This field is present whether a video file or another type of file was ... |
| `fileSize` | `string` | The uploaded file's size in bytes. This field is present whether a video file or another type of ... |
| `fileType` | `string` | The uploaded file's type as detected by YouTube's video processing engine. Currently, YouTube onl... |
| `videoStreams` | `array<VideoFileDetailsVideoStream>` | A list of video streams contained in the uploaded video file. Each item in the list contains deta... |

### `VideoFileDetailsAudioStream`

Information about an audio stream.

| Property | Type | Description |
|----------|------|-------------|
| `bitrateBps` | `string` | The audio stream's bitrate, in bits per second. |
| `channelCount` | `integer` | The number of audio channels that the stream contains. |
| `codec` | `string` | The audio codec that the stream uses. |
| `vendor` | `string` | A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code. |

### `VideoFileDetailsVideoStream`

Information about a video stream.

| Property | Type | Description |
|----------|------|-------------|
| `aspectRatio` | `number` | The video content's display aspect ratio, which specifies the aspect ratio in which the video sho... |
| `bitrateBps` | `string` | The video stream's bitrate, in bits per second. |
| `codec` | `string` | The video codec that the stream uses. |
| `frameRateFps` | `number` | The video stream's frame rate, in frames per second. |
| `heightPixels` | `integer` | The encoded video content's height in pixels. |
| `rotation` | `string` | The amount that YouTube needs to rotate the original source content to properly display the video. |
| `vendor` | `string` | A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code. |
| `widthPixels` | `integer` | The encoded video content's width in pixels. You can calculate the video's encoding aspect ratio ... |

### `VideoGetRatingResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<VideoRating>` | A list of ratings that match the request criteria. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#videoGetRatingResponse". |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `VideoListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `eventId` | `string` | Serialized EventId of the request which produced this response. |
| `items` | `array<Video>` |  |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#videoListResponse". |
| `nextPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the next page in t... |
| `pageInfo` | `PageInfo` | General pagination information. |
| `prevPageToken` | `string` | The token that can be used as the value of the pageToken parameter to retrieve the previous page ... |
| `tokenPagination` | `TokenPagination` |  |
| `visitorId` | `string` | The visitorId identifies the visitor. |

### `VideoLiveStreamingDetails`

Details about the live streaming metadata.

| Property | Type | Description |
|----------|------|-------------|
| `activeLiveChatId` | `string` | The ID of the currently active live chat attached to this video. This field is filled only if the... |
| `actualEndTime` | `string` | The time that the broadcast actually ended. This value will not be available until the broadcast ... |
| `actualStartTime` | `string` | The time that the broadcast actually started. This value will not be available until the broadcas... |
| `concurrentViewers` | `string` | The number of viewers currently watching the broadcast. The property and its value will be presen... |
| `scheduledEndTime` | `string` | The time that the broadcast is scheduled to end. If the value is empty or the property is not pre... |
| `scheduledStartTime` | `string` | The time that the broadcast is scheduled to begin. |

### `VideoLocalization`

Localized versions of certain video properties (e.g. title).

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Localized version of the video's description. |
| `title` | `string` | Localized version of the video's title. |

### `VideoMonetizationDetails`

Details about monetization of a YouTube Video.

| Property | Type | Description |
|----------|------|-------------|
| `access` | `AccessPolicy` | The value of access indicates whether the video can be monetized or not. |

### `VideoPaidProductPlacementDetails`

Details about paid content, such as paid product placement, sponsorships or endorsement, contained in a YouTube video and a method to inform viewers of paid promotion. This data can only be retrieved by the video owner.

| Property | Type | Description |
|----------|------|-------------|
| `hasPaidProductPlacement` | `boolean` | This boolean represents whether the video contains Paid Product Placement, Studio equivalent: htt... |

### `VideoPlayer`

Player to be used for a video playback.

| Property | Type | Description |
|----------|------|-------------|
| `embedHeight` | `string` |  |
| `embedHtml` | `string` | An <iframe> tag that embeds a player that will play the video. |
| `embedWidth` | `string` | The embed width |

### `VideoProcessingDetails`

Describes processing status and progress and availability of some other Video resource parts.

| Property | Type | Description |
|----------|------|-------------|
| `editorSuggestionsAvailability` | `string` | This value indicates whether video editing suggestions, which might improve video quality or the ... |
| `fileDetailsAvailability` | `string` | This value indicates whether file details are available for the uploaded video. You can retrieve ... |
| `processingFailureReason` | `string` | The reason that YouTube failed to process the video. This property will only have a value if the ... |
| `processingIssuesAvailability` | `string` | This value indicates whether the video processing engine has generated suggestions that might imp... |
| `processingProgress` | `VideoProcessingDetailsProcessingProgress` | The processingProgress object contains information about the progress YouTube has made in process... |
| `processingStatus` | `string` | The video's processing status. This value indicates whether YouTube was able to process the video... |
| `tagSuggestionsAvailability` | `string` | This value indicates whether keyword (tag) suggestions are available for the video. Tags can be a... |
| `thumbnailsAvailability` | `string` | This value indicates whether thumbnail images have been generated for the video. |

### `VideoProcessingDetailsProcessingProgress`

Video processing progress and completion time estimate.

| Property | Type | Description |
|----------|------|-------------|
| `partsProcessed` | `string` | The number of parts of the video that YouTube has already processed. You can estimate the percent... |
| `partsTotal` | `string` | An estimate of the total number of parts that need to be processed for the video. The number may ... |
| `timeLeftMs` | `string` | An estimate of the amount of time, in millseconds, that YouTube needs to finish processing the vi... |

### `VideoProjectDetails`

DEPRECATED. b/157517979: This part was never populated after it was added. However, it sees non-zero traffic because there is generated client code in the wild that refers to it [1]. We keep this field and do NOT remove it because otherwise V3 would return an error when this part gets requested [2]. [1] https://developers.google.com/resources/api-libraries/documentation/youtube/v3/csharp/latest/classGoogle_1_1Apis_1_1YouTube_1_1v3_1_1Data_1_1VideoProjectDetails.html [2] http://google3/video/youtube/src/python/servers/data_api/common.py?l=1565-1569&rcl=344141677

### `VideoRating`

Basic details about rating of a video.

| Property | Type | Description |
|----------|------|-------------|
| `rating` | `string` | Rating of a video. |
| `videoId` | `string` | The ID that YouTube uses to uniquely identify the video. |

### `VideoRecordingDetails`

Recording information associated with the video.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `GeoPoint` | The geolocation information associated with the video. |
| `locationDescription` | `string` | The text description of the location where the video was recorded. |
| `recordingDate` | `string` | The date and time when the video was recorded. |

### `VideoSnippet`

Basic details about a video, including title, description, uploader, thumbnails and category.

| Property | Type | Description |
|----------|------|-------------|
| `categoryId` | `string` | The YouTube video category associated with the video. |
| `channelId` | `string` | The ID that YouTube uses to uniquely identify the channel that the video was uploaded to. |
| `channelTitle` | `string` | Channel title for the channel that the video belongs to. |
| `defaultAudioLanguage` | `string` | The default_audio_language property specifies the language spoken in the video's default audio tr... |
| `defaultLanguage` | `string` | The language of the videos's default snippet. |
| `description` | `string` | The video's description. @mutable youtube.videos.insert youtube.videos.update |
| `liveBroadcastContent` | `string` | Indicates if the video is an upcoming/active live broadcast. Or it's "none" if the video is not a... |
| `localized` | `VideoLocalization` | Localized snippet selected with the hl parameter. If no such localization exists, this field is p... |
| `publishedAt` | `string` | The date and time when the video was uploaded. |
| `tags` | `array<string>` | A list of keyword tags associated with the video. Tags may contain spaces. |
| `thumbnails` | `ThumbnailDetails` | A map of thumbnail images associated with the video. For each object in the map, the key is the n... |
| `title` | `string` | The video's title. @mutable youtube.videos.insert youtube.videos.update |

### `VideoStatistics`

Statistics about the video, such as the number of times the video was viewed or liked.

| Property | Type | Description |
|----------|------|-------------|
| `commentCount` | `string` | The number of comments for the video. |
| `dislikeCount` | `string` | The number of users who have indicated that they disliked the video by giving it a negative rating. |
| `favoriteCount` | `string` | The number of users who currently have the video marked as a favorite video. |
| `likeCount` | `string` | The number of users who have indicated that they liked the video by giving it a positive rating. |
| `viewCount` | `string` | The number of times the video has been viewed. |

### `VideoStatus`

Basic details about a video category, such as its localized title. Next Id: 19

| Property | Type | Description |
|----------|------|-------------|
| `containsSyntheticMedia` | `boolean` | Indicates if the video contains altered or synthetic media. |
| `embeddable` | `boolean` | This value indicates if the video can be embedded on another website. @mutable youtube.videos.ins... |
| `failureReason` | `string` | This value explains why a video failed to upload. This property is only present if the uploadStat... |
| `license` | `string` | The video's license. @mutable youtube.videos.insert youtube.videos.update |
| `madeForKids` | `boolean` |  |
| `privacyStatus` | `string` | The video's privacy status. |
| `publicStatsViewable` | `boolean` | This value indicates if the extended video statistics on the watch page can be viewed by everyone... |
| `publishAt` | `string` | The date and time when the video is scheduled to publish. It can be set only if the privacy statu... |
| `rejectionReason` | `string` | This value explains why YouTube rejected an uploaded video. This property is only present if the ... |
| `selfDeclaredMadeForKids` | `boolean` |  |
| `uploadStatus` | `string` | The status of the uploaded video. |

### `VideoSuggestions`

Specifies suggestions on how to improve video content, including encoding hints, tag suggestions, and editor suggestions.

| Property | Type | Description |
|----------|------|-------------|
| `editorSuggestions` | `array<string>` | A list of video editing operations that might improve the video quality or playback experience of... |
| `processingErrors` | `array<string>` | A list of errors that will prevent YouTube from successfully processing the uploaded video video.... |
| `processingHints` | `array<string>` | A list of suggestions that may improve YouTube's ability to process the video. |
| `processingWarnings` | `array<string>` | A list of reasons why YouTube may have difficulty transcoding the uploaded video or that might re... |
| `tagSuggestions` | `array<VideoSuggestionsTagSuggestion>` | A list of keyword tags that could be added to the video's metadata to increase the likelihood tha... |

### `VideoSuggestionsTagSuggestion`

A single tag suggestion with its relevance information.

| Property | Type | Description |
|----------|------|-------------|
| `categoryRestricts` | `array<string>` | A set of video categories for which the tag is relevant. You can use this information to display ... |
| `tag` | `string` | The keyword tag suggested for the video. |

### `VideoTopicDetails`

Freebase topic information related to the video.

| Property | Type | Description |
|----------|------|-------------|
| `relevantTopicIds` | `array<string>` | Similar to topic_id, except that these topics are merely relevant to the video. These are topics ... |
| `topicCategories` | `array<string>` | A list of Wikipedia URLs that provide a high-level description of the video's content. |
| `topicIds` | `array<string>` | A list of Freebase topic IDs that are centrally associated with the video. These are topics that ... |

### `VideoTrainability`

Specifies who is allowed to train on the video.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "youtube#videoTrainability". |
| `permitted` | `array<string>` | Specifies who is allowed to train on the video. Valid values are: - a single string "all" - a sin... |
| `videoId` | `string` | The ID of the video. |

### `WatchSettings`

Branding properties for the watch. All deprecated.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColor` | `string` | The text color for the video watch page's branded area. |
| `featuredPlaylistId` | `string` | An ID that uniquely identifies a playlist that displays next to the video player. |
| `textColor` | `string` | The background color for the video watch page's branded area. |

