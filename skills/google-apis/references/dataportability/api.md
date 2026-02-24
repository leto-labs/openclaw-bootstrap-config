# Data Portability API - API Reference

**Version**: `v1` | **Methods**: 6 | **Schemas**: 11

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `dataportability.portabilityArchive.initiate` | POST | `v1/portabilityArchive:initiate` | Initiates a new Archive job for the Portability API. |
| `dataportability.archiveJobs.getPortabilityArchiveState` | GET | `v1/{+name}` | Retrieves the state of an Archive job for the Portability API. |
| `dataportability.archiveJobs.retry` | POST | `v1/{+name}:retry` | Retries a failed Portability Archive job. |
| `dataportability.archiveJobs.cancel` | POST | `v1/{+name}:cancel` | Cancels a Portability Archive job. |
| `dataportability.authorization.reset` | POST | `v1/authorization:reset` | Revokes OAuth tokens and resets exhausted scopes for a user/project pair. This method allows you ... |
| `dataportability.accessType.check` | POST | `v1/accessType:check` | Gets the access type of the token. |

### `dataportability.portabilityArchive.initiate`

**POST** `v1/portabilityArchive:initiate`

Initiates a new Archive job for the Portability API.

**Request body**: `InitiatePortabilityArchiveRequest`

**Response**: `InitiatePortabilityArchiveResponse`

```typescript
const res = await dataportability.portabilityArchive.initiate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dataportability.alerts.subscriptions`
- `https://www.googleapis.com/auth/dataportability.chrome.autofill`
- `https://www.googleapis.com/auth/dataportability.chrome.bookmarks`
- `https://www.googleapis.com/auth/dataportability.chrome.dictionary`
- `https://www.googleapis.com/auth/dataportability.chrome.extensions`
- `https://www.googleapis.com/auth/dataportability.chrome.history`
- `https://www.googleapis.com/auth/dataportability.chrome.reading_list`
- `https://www.googleapis.com/auth/dataportability.chrome.settings`
- `https://www.googleapis.com/auth/dataportability.discover.follows`
- `https://www.googleapis.com/auth/dataportability.discover.likes`
- `https://www.googleapis.com/auth/dataportability.discover.not_interested`
- `https://www.googleapis.com/auth/dataportability.maps.aliased_places`
- `https://www.googleapis.com/auth/dataportability.maps.commute_routes`
- `https://www.googleapis.com/auth/dataportability.maps.commute_settings`
- `https://www.googleapis.com/auth/dataportability.maps.ev_profile`
- `https://www.googleapis.com/auth/dataportability.maps.factual_contributions`
- `https://www.googleapis.com/auth/dataportability.maps.offering_contributions`
- `https://www.googleapis.com/auth/dataportability.maps.photos_videos`
- `https://www.googleapis.com/auth/dataportability.maps.questions_answers`
- `https://www.googleapis.com/auth/dataportability.maps.reviews`
- `https://www.googleapis.com/auth/dataportability.maps.starred_places`
- `https://www.googleapis.com/auth/dataportability.maps.vehicle_profile`
- `https://www.googleapis.com/auth/dataportability.myactivity.maps`
- `https://www.googleapis.com/auth/dataportability.myactivity.myadcenter`
- `https://www.googleapis.com/auth/dataportability.myactivity.play`
- `https://www.googleapis.com/auth/dataportability.myactivity.search`
- `https://www.googleapis.com/auth/dataportability.myactivity.shopping`
- `https://www.googleapis.com/auth/dataportability.myactivity.youtube`
- `https://www.googleapis.com/auth/dataportability.mymaps.maps`
- `https://www.googleapis.com/auth/dataportability.nest.camera_event`
- `https://www.googleapis.com/auth/dataportability.nest.camera_feature`
- `https://www.googleapis.com/auth/dataportability.nest.camera_video`
- `https://www.googleapis.com/auth/dataportability.nest.store`
- `https://www.googleapis.com/auth/dataportability.nest.user`
- `https://www.googleapis.com/auth/dataportability.order_reserve.purchases_reservations`
- `https://www.googleapis.com/auth/dataportability.play.devices`
- `https://www.googleapis.com/auth/dataportability.play.grouping`
- `https://www.googleapis.com/auth/dataportability.play.installs`
- `https://www.googleapis.com/auth/dataportability.play.library`
- `https://www.googleapis.com/auth/dataportability.play.playpoints`
- `https://www.googleapis.com/auth/dataportability.play.promotions`
- `https://www.googleapis.com/auth/dataportability.play.purchases`
- `https://www.googleapis.com/auth/dataportability.play.redemptions`
- `https://www.googleapis.com/auth/dataportability.play.subscriptions`
- `https://www.googleapis.com/auth/dataportability.play.usersettings`
- `https://www.googleapis.com/auth/dataportability.saved.collections`
- `https://www.googleapis.com/auth/dataportability.search_ugc.comments`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.reviews_and_stars`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.streaming_video_providers`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.thumbs`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.watched`
- `https://www.googleapis.com/auth/dataportability.searchnotifications.settings`
- `https://www.googleapis.com/auth/dataportability.searchnotifications.subscriptions`
- `https://www.googleapis.com/auth/dataportability.shopping.addresses`
- `https://www.googleapis.com/auth/dataportability.shopping.reviews`
- `https://www.googleapis.com/auth/dataportability.streetview.imagery`
- `https://www.googleapis.com/auth/dataportability.youtube.channel`
- `https://www.googleapis.com/auth/dataportability.youtube.clips`
- `https://www.googleapis.com/auth/dataportability.youtube.comments`
- `https://www.googleapis.com/auth/dataportability.youtube.conversations`
- `https://www.googleapis.com/auth/dataportability.youtube.live_chat`
- `https://www.googleapis.com/auth/dataportability.youtube.music`
- `https://www.googleapis.com/auth/dataportability.youtube.playable`
- `https://www.googleapis.com/auth/dataportability.youtube.posts`
- `https://www.googleapis.com/auth/dataportability.youtube.private_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.private_videos`
- `https://www.googleapis.com/auth/dataportability.youtube.public_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.public_videos`
- `https://www.googleapis.com/auth/dataportability.youtube.shopping`
- `https://www.googleapis.com/auth/dataportability.youtube.subscriptions`
- `https://www.googleapis.com/auth/dataportability.youtube.unlisted_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.unlisted_videos`

---

### `dataportability.archiveJobs.getPortabilityArchiveState`

**GET** `v1/{+name}`

Retrieves the state of an Archive job for the Portability API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The archive job ID that is returned when you request the state of the job. The format is: archiveJobs/{arch... |

**Response**: `PortabilityArchiveState`

```typescript
const res = await dataportability.archiveJobs.getPortabilityArchiveState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dataportability.alerts.subscriptions`
- `https://www.googleapis.com/auth/dataportability.chrome.autofill`
- `https://www.googleapis.com/auth/dataportability.chrome.bookmarks`
- `https://www.googleapis.com/auth/dataportability.chrome.dictionary`
- `https://www.googleapis.com/auth/dataportability.chrome.extensions`
- `https://www.googleapis.com/auth/dataportability.chrome.history`
- `https://www.googleapis.com/auth/dataportability.chrome.reading_list`
- `https://www.googleapis.com/auth/dataportability.chrome.settings`
- `https://www.googleapis.com/auth/dataportability.discover.follows`
- `https://www.googleapis.com/auth/dataportability.discover.likes`
- `https://www.googleapis.com/auth/dataportability.discover.not_interested`
- `https://www.googleapis.com/auth/dataportability.maps.aliased_places`
- `https://www.googleapis.com/auth/dataportability.maps.commute_routes`
- `https://www.googleapis.com/auth/dataportability.maps.commute_settings`
- `https://www.googleapis.com/auth/dataportability.maps.ev_profile`
- `https://www.googleapis.com/auth/dataportability.maps.factual_contributions`
- `https://www.googleapis.com/auth/dataportability.maps.offering_contributions`
- `https://www.googleapis.com/auth/dataportability.maps.photos_videos`
- `https://www.googleapis.com/auth/dataportability.maps.questions_answers`
- `https://www.googleapis.com/auth/dataportability.maps.reviews`
- `https://www.googleapis.com/auth/dataportability.maps.starred_places`
- `https://www.googleapis.com/auth/dataportability.maps.vehicle_profile`
- `https://www.googleapis.com/auth/dataportability.myactivity.maps`
- `https://www.googleapis.com/auth/dataportability.myactivity.myadcenter`
- `https://www.googleapis.com/auth/dataportability.myactivity.play`
- `https://www.googleapis.com/auth/dataportability.myactivity.search`
- `https://www.googleapis.com/auth/dataportability.myactivity.shopping`
- `https://www.googleapis.com/auth/dataportability.myactivity.youtube`
- `https://www.googleapis.com/auth/dataportability.mymaps.maps`
- `https://www.googleapis.com/auth/dataportability.nest.camera_event`
- `https://www.googleapis.com/auth/dataportability.nest.camera_feature`
- `https://www.googleapis.com/auth/dataportability.nest.camera_video`
- `https://www.googleapis.com/auth/dataportability.nest.store`
- `https://www.googleapis.com/auth/dataportability.nest.user`
- `https://www.googleapis.com/auth/dataportability.order_reserve.purchases_reservations`
- `https://www.googleapis.com/auth/dataportability.play.devices`
- `https://www.googleapis.com/auth/dataportability.play.grouping`
- `https://www.googleapis.com/auth/dataportability.play.installs`
- `https://www.googleapis.com/auth/dataportability.play.library`
- `https://www.googleapis.com/auth/dataportability.play.playpoints`
- `https://www.googleapis.com/auth/dataportability.play.promotions`
- `https://www.googleapis.com/auth/dataportability.play.purchases`
- `https://www.googleapis.com/auth/dataportability.play.redemptions`
- `https://www.googleapis.com/auth/dataportability.play.subscriptions`
- `https://www.googleapis.com/auth/dataportability.play.usersettings`
- `https://www.googleapis.com/auth/dataportability.saved.collections`
- `https://www.googleapis.com/auth/dataportability.search_ugc.comments`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.reviews_and_stars`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.streaming_video_providers`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.thumbs`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.watched`
- `https://www.googleapis.com/auth/dataportability.searchnotifications.settings`
- `https://www.googleapis.com/auth/dataportability.searchnotifications.subscriptions`
- `https://www.googleapis.com/auth/dataportability.shopping.addresses`
- `https://www.googleapis.com/auth/dataportability.shopping.reviews`
- `https://www.googleapis.com/auth/dataportability.streetview.imagery`
- `https://www.googleapis.com/auth/dataportability.youtube.channel`
- `https://www.googleapis.com/auth/dataportability.youtube.clips`
- `https://www.googleapis.com/auth/dataportability.youtube.comments`
- `https://www.googleapis.com/auth/dataportability.youtube.conversations`
- `https://www.googleapis.com/auth/dataportability.youtube.live_chat`
- `https://www.googleapis.com/auth/dataportability.youtube.music`
- `https://www.googleapis.com/auth/dataportability.youtube.playable`
- `https://www.googleapis.com/auth/dataportability.youtube.posts`
- `https://www.googleapis.com/auth/dataportability.youtube.private_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.private_videos`
- `https://www.googleapis.com/auth/dataportability.youtube.public_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.public_videos`
- `https://www.googleapis.com/auth/dataportability.youtube.shopping`
- `https://www.googleapis.com/auth/dataportability.youtube.subscriptions`
- `https://www.googleapis.com/auth/dataportability.youtube.unlisted_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.unlisted_videos`

---

### `dataportability.archiveJobs.retry`

**POST** `v1/{+name}:retry`

Retries a failed Portability Archive job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The Archive job ID you're retrying. This is returned by the InitiatePortabilityArchiveResponse. Retrying is... |

**Request body**: `RetryPortabilityArchiveRequest`

**Response**: `RetryPortabilityArchiveResponse`

```typescript
const res = await dataportability.archiveJobs.retry({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dataportability.alerts.subscriptions`
- `https://www.googleapis.com/auth/dataportability.chrome.autofill`
- `https://www.googleapis.com/auth/dataportability.chrome.bookmarks`
- `https://www.googleapis.com/auth/dataportability.chrome.dictionary`
- `https://www.googleapis.com/auth/dataportability.chrome.extensions`
- `https://www.googleapis.com/auth/dataportability.chrome.history`
- `https://www.googleapis.com/auth/dataportability.chrome.reading_list`
- `https://www.googleapis.com/auth/dataportability.chrome.settings`
- `https://www.googleapis.com/auth/dataportability.discover.follows`
- `https://www.googleapis.com/auth/dataportability.discover.likes`
- `https://www.googleapis.com/auth/dataportability.discover.not_interested`
- `https://www.googleapis.com/auth/dataportability.maps.aliased_places`
- `https://www.googleapis.com/auth/dataportability.maps.commute_routes`
- `https://www.googleapis.com/auth/dataportability.maps.commute_settings`
- `https://www.googleapis.com/auth/dataportability.maps.ev_profile`
- `https://www.googleapis.com/auth/dataportability.maps.factual_contributions`
- `https://www.googleapis.com/auth/dataportability.maps.offering_contributions`
- `https://www.googleapis.com/auth/dataportability.maps.photos_videos`
- `https://www.googleapis.com/auth/dataportability.maps.questions_answers`
- `https://www.googleapis.com/auth/dataportability.maps.reviews`
- `https://www.googleapis.com/auth/dataportability.maps.starred_places`
- `https://www.googleapis.com/auth/dataportability.maps.vehicle_profile`
- `https://www.googleapis.com/auth/dataportability.myactivity.maps`
- `https://www.googleapis.com/auth/dataportability.myactivity.myadcenter`
- `https://www.googleapis.com/auth/dataportability.myactivity.play`
- `https://www.googleapis.com/auth/dataportability.myactivity.search`
- `https://www.googleapis.com/auth/dataportability.myactivity.shopping`
- `https://www.googleapis.com/auth/dataportability.myactivity.youtube`
- `https://www.googleapis.com/auth/dataportability.mymaps.maps`
- `https://www.googleapis.com/auth/dataportability.nest.camera_event`
- `https://www.googleapis.com/auth/dataportability.nest.camera_feature`
- `https://www.googleapis.com/auth/dataportability.nest.camera_video`
- `https://www.googleapis.com/auth/dataportability.nest.store`
- `https://www.googleapis.com/auth/dataportability.nest.user`
- `https://www.googleapis.com/auth/dataportability.order_reserve.purchases_reservations`
- `https://www.googleapis.com/auth/dataportability.play.devices`
- `https://www.googleapis.com/auth/dataportability.play.grouping`
- `https://www.googleapis.com/auth/dataportability.play.installs`
- `https://www.googleapis.com/auth/dataportability.play.library`
- `https://www.googleapis.com/auth/dataportability.play.playpoints`
- `https://www.googleapis.com/auth/dataportability.play.promotions`
- `https://www.googleapis.com/auth/dataportability.play.purchases`
- `https://www.googleapis.com/auth/dataportability.play.redemptions`
- `https://www.googleapis.com/auth/dataportability.play.subscriptions`
- `https://www.googleapis.com/auth/dataportability.play.usersettings`
- `https://www.googleapis.com/auth/dataportability.saved.collections`
- `https://www.googleapis.com/auth/dataportability.search_ugc.comments`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.reviews_and_stars`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.streaming_video_providers`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.thumbs`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.watched`
- `https://www.googleapis.com/auth/dataportability.searchnotifications.settings`
- `https://www.googleapis.com/auth/dataportability.searchnotifications.subscriptions`
- `https://www.googleapis.com/auth/dataportability.shopping.addresses`
- `https://www.googleapis.com/auth/dataportability.shopping.reviews`
- `https://www.googleapis.com/auth/dataportability.streetview.imagery`
- `https://www.googleapis.com/auth/dataportability.youtube.channel`
- `https://www.googleapis.com/auth/dataportability.youtube.clips`
- `https://www.googleapis.com/auth/dataportability.youtube.comments`
- `https://www.googleapis.com/auth/dataportability.youtube.conversations`
- `https://www.googleapis.com/auth/dataportability.youtube.live_chat`
- `https://www.googleapis.com/auth/dataportability.youtube.music`
- `https://www.googleapis.com/auth/dataportability.youtube.playable`
- `https://www.googleapis.com/auth/dataportability.youtube.posts`
- `https://www.googleapis.com/auth/dataportability.youtube.private_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.private_videos`
- `https://www.googleapis.com/auth/dataportability.youtube.public_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.public_videos`
- `https://www.googleapis.com/auth/dataportability.youtube.shopping`
- `https://www.googleapis.com/auth/dataportability.youtube.subscriptions`
- `https://www.googleapis.com/auth/dataportability.youtube.unlisted_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.unlisted_videos`

---

### `dataportability.archiveJobs.cancel`

**POST** `v1/{+name}:cancel`

Cancels a Portability Archive job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The Archive job ID you're canceling. This is returned by the InitiatePortabilityArchive response. The forma... |

**Request body**: `CancelPortabilityArchiveRequest`

**Response**: `CancelPortabilityArchiveResponse`

```typescript
const res = await dataportability.archiveJobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dataportability.alerts.subscriptions`
- `https://www.googleapis.com/auth/dataportability.chrome.autofill`
- `https://www.googleapis.com/auth/dataportability.chrome.bookmarks`
- `https://www.googleapis.com/auth/dataportability.chrome.dictionary`
- `https://www.googleapis.com/auth/dataportability.chrome.extensions`
- `https://www.googleapis.com/auth/dataportability.chrome.history`
- `https://www.googleapis.com/auth/dataportability.chrome.reading_list`
- `https://www.googleapis.com/auth/dataportability.chrome.settings`
- `https://www.googleapis.com/auth/dataportability.discover.follows`
- `https://www.googleapis.com/auth/dataportability.discover.likes`
- `https://www.googleapis.com/auth/dataportability.discover.not_interested`
- `https://www.googleapis.com/auth/dataportability.maps.aliased_places`
- `https://www.googleapis.com/auth/dataportability.maps.commute_routes`
- `https://www.googleapis.com/auth/dataportability.maps.commute_settings`
- `https://www.googleapis.com/auth/dataportability.maps.ev_profile`
- `https://www.googleapis.com/auth/dataportability.maps.factual_contributions`
- `https://www.googleapis.com/auth/dataportability.maps.offering_contributions`
- `https://www.googleapis.com/auth/dataportability.maps.photos_videos`
- `https://www.googleapis.com/auth/dataportability.maps.questions_answers`
- `https://www.googleapis.com/auth/dataportability.maps.reviews`
- `https://www.googleapis.com/auth/dataportability.maps.starred_places`
- `https://www.googleapis.com/auth/dataportability.maps.vehicle_profile`
- `https://www.googleapis.com/auth/dataportability.myactivity.maps`
- `https://www.googleapis.com/auth/dataportability.myactivity.myadcenter`
- `https://www.googleapis.com/auth/dataportability.myactivity.play`
- `https://www.googleapis.com/auth/dataportability.myactivity.search`
- `https://www.googleapis.com/auth/dataportability.myactivity.shopping`
- `https://www.googleapis.com/auth/dataportability.myactivity.youtube`
- `https://www.googleapis.com/auth/dataportability.mymaps.maps`
- `https://www.googleapis.com/auth/dataportability.nest.camera_event`
- `https://www.googleapis.com/auth/dataportability.nest.camera_feature`
- `https://www.googleapis.com/auth/dataportability.nest.camera_video`
- `https://www.googleapis.com/auth/dataportability.nest.store`
- `https://www.googleapis.com/auth/dataportability.nest.user`
- `https://www.googleapis.com/auth/dataportability.order_reserve.purchases_reservations`
- `https://www.googleapis.com/auth/dataportability.play.devices`
- `https://www.googleapis.com/auth/dataportability.play.grouping`
- `https://www.googleapis.com/auth/dataportability.play.installs`
- `https://www.googleapis.com/auth/dataportability.play.library`
- `https://www.googleapis.com/auth/dataportability.play.playpoints`
- `https://www.googleapis.com/auth/dataportability.play.promotions`
- `https://www.googleapis.com/auth/dataportability.play.purchases`
- `https://www.googleapis.com/auth/dataportability.play.redemptions`
- `https://www.googleapis.com/auth/dataportability.play.subscriptions`
- `https://www.googleapis.com/auth/dataportability.play.usersettings`
- `https://www.googleapis.com/auth/dataportability.saved.collections`
- `https://www.googleapis.com/auth/dataportability.search_ugc.comments`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.reviews_and_stars`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.streaming_video_providers`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.thumbs`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.watched`
- `https://www.googleapis.com/auth/dataportability.searchnotifications.settings`
- `https://www.googleapis.com/auth/dataportability.searchnotifications.subscriptions`
- `https://www.googleapis.com/auth/dataportability.shopping.addresses`
- `https://www.googleapis.com/auth/dataportability.shopping.reviews`
- `https://www.googleapis.com/auth/dataportability.streetview.imagery`
- `https://www.googleapis.com/auth/dataportability.youtube.channel`
- `https://www.googleapis.com/auth/dataportability.youtube.clips`
- `https://www.googleapis.com/auth/dataportability.youtube.comments`
- `https://www.googleapis.com/auth/dataportability.youtube.conversations`
- `https://www.googleapis.com/auth/dataportability.youtube.live_chat`
- `https://www.googleapis.com/auth/dataportability.youtube.music`
- `https://www.googleapis.com/auth/dataportability.youtube.playable`
- `https://www.googleapis.com/auth/dataportability.youtube.posts`
- `https://www.googleapis.com/auth/dataportability.youtube.private_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.private_videos`
- `https://www.googleapis.com/auth/dataportability.youtube.public_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.public_videos`
- `https://www.googleapis.com/auth/dataportability.youtube.shopping`
- `https://www.googleapis.com/auth/dataportability.youtube.subscriptions`
- `https://www.googleapis.com/auth/dataportability.youtube.unlisted_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.unlisted_videos`

---

### `dataportability.authorization.reset`

**POST** `v1/authorization:reset`

Revokes OAuth tokens and resets exhausted scopes for a user/project pair. This method allows you to initiate a request after a new consent is granted. This method also indicates that previous archives can be garbage collected. You should call this method when all jobs are complete and all archives are downloaded. Do not call it only when you start a new job.

**Request body**: `ResetAuthorizationRequest`

**Response**: `Empty`

```typescript
const res = await dataportability.authorization.reset({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dataportability.alerts.subscriptions`
- `https://www.googleapis.com/auth/dataportability.chrome.autofill`
- `https://www.googleapis.com/auth/dataportability.chrome.bookmarks`
- `https://www.googleapis.com/auth/dataportability.chrome.dictionary`
- `https://www.googleapis.com/auth/dataportability.chrome.extensions`
- `https://www.googleapis.com/auth/dataportability.chrome.history`
- `https://www.googleapis.com/auth/dataportability.chrome.reading_list`
- `https://www.googleapis.com/auth/dataportability.chrome.settings`
- `https://www.googleapis.com/auth/dataportability.discover.follows`
- `https://www.googleapis.com/auth/dataportability.discover.likes`
- `https://www.googleapis.com/auth/dataportability.discover.not_interested`
- `https://www.googleapis.com/auth/dataportability.maps.aliased_places`
- `https://www.googleapis.com/auth/dataportability.maps.commute_routes`
- `https://www.googleapis.com/auth/dataportability.maps.commute_settings`
- `https://www.googleapis.com/auth/dataportability.maps.ev_profile`
- `https://www.googleapis.com/auth/dataportability.maps.factual_contributions`
- `https://www.googleapis.com/auth/dataportability.maps.offering_contributions`
- `https://www.googleapis.com/auth/dataportability.maps.photos_videos`
- `https://www.googleapis.com/auth/dataportability.maps.questions_answers`
- `https://www.googleapis.com/auth/dataportability.maps.reviews`
- `https://www.googleapis.com/auth/dataportability.maps.starred_places`
- `https://www.googleapis.com/auth/dataportability.maps.vehicle_profile`
- `https://www.googleapis.com/auth/dataportability.myactivity.maps`
- `https://www.googleapis.com/auth/dataportability.myactivity.myadcenter`
- `https://www.googleapis.com/auth/dataportability.myactivity.play`
- `https://www.googleapis.com/auth/dataportability.myactivity.search`
- `https://www.googleapis.com/auth/dataportability.myactivity.shopping`
- `https://www.googleapis.com/auth/dataportability.myactivity.youtube`
- `https://www.googleapis.com/auth/dataportability.mymaps.maps`
- `https://www.googleapis.com/auth/dataportability.nest.camera_event`
- `https://www.googleapis.com/auth/dataportability.nest.camera_feature`
- `https://www.googleapis.com/auth/dataportability.nest.camera_video`
- `https://www.googleapis.com/auth/dataportability.nest.store`
- `https://www.googleapis.com/auth/dataportability.nest.user`
- `https://www.googleapis.com/auth/dataportability.order_reserve.purchases_reservations`
- `https://www.googleapis.com/auth/dataportability.play.devices`
- `https://www.googleapis.com/auth/dataportability.play.grouping`
- `https://www.googleapis.com/auth/dataportability.play.installs`
- `https://www.googleapis.com/auth/dataportability.play.library`
- `https://www.googleapis.com/auth/dataportability.play.playpoints`
- `https://www.googleapis.com/auth/dataportability.play.promotions`
- `https://www.googleapis.com/auth/dataportability.play.purchases`
- `https://www.googleapis.com/auth/dataportability.play.redemptions`
- `https://www.googleapis.com/auth/dataportability.play.subscriptions`
- `https://www.googleapis.com/auth/dataportability.play.usersettings`
- `https://www.googleapis.com/auth/dataportability.saved.collections`
- `https://www.googleapis.com/auth/dataportability.search_ugc.comments`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.reviews_and_stars`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.streaming_video_providers`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.thumbs`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.watched`
- `https://www.googleapis.com/auth/dataportability.searchnotifications.settings`
- `https://www.googleapis.com/auth/dataportability.searchnotifications.subscriptions`
- `https://www.googleapis.com/auth/dataportability.shopping.addresses`
- `https://www.googleapis.com/auth/dataportability.shopping.reviews`
- `https://www.googleapis.com/auth/dataportability.streetview.imagery`
- `https://www.googleapis.com/auth/dataportability.youtube.channel`
- `https://www.googleapis.com/auth/dataportability.youtube.clips`
- `https://www.googleapis.com/auth/dataportability.youtube.comments`
- `https://www.googleapis.com/auth/dataportability.youtube.conversations`
- `https://www.googleapis.com/auth/dataportability.youtube.live_chat`
- `https://www.googleapis.com/auth/dataportability.youtube.music`
- `https://www.googleapis.com/auth/dataportability.youtube.playable`
- `https://www.googleapis.com/auth/dataportability.youtube.posts`
- `https://www.googleapis.com/auth/dataportability.youtube.private_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.private_videos`
- `https://www.googleapis.com/auth/dataportability.youtube.public_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.public_videos`
- `https://www.googleapis.com/auth/dataportability.youtube.shopping`
- `https://www.googleapis.com/auth/dataportability.youtube.subscriptions`
- `https://www.googleapis.com/auth/dataportability.youtube.unlisted_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.unlisted_videos`

---

### `dataportability.accessType.check`

**POST** `v1/accessType:check`

Gets the access type of the token.

**Request body**: `CheckAccessTypeRequest`

**Response**: `CheckAccessTypeResponse`

```typescript
const res = await dataportability.accessType.check({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dataportability.alerts.subscriptions`
- `https://www.googleapis.com/auth/dataportability.chrome.autofill`
- `https://www.googleapis.com/auth/dataportability.chrome.bookmarks`
- `https://www.googleapis.com/auth/dataportability.chrome.dictionary`
- `https://www.googleapis.com/auth/dataportability.chrome.extensions`
- `https://www.googleapis.com/auth/dataportability.chrome.history`
- `https://www.googleapis.com/auth/dataportability.chrome.reading_list`
- `https://www.googleapis.com/auth/dataportability.chrome.settings`
- `https://www.googleapis.com/auth/dataportability.discover.follows`
- `https://www.googleapis.com/auth/dataportability.discover.likes`
- `https://www.googleapis.com/auth/dataportability.discover.not_interested`
- `https://www.googleapis.com/auth/dataportability.maps.aliased_places`
- `https://www.googleapis.com/auth/dataportability.maps.commute_routes`
- `https://www.googleapis.com/auth/dataportability.maps.commute_settings`
- `https://www.googleapis.com/auth/dataportability.maps.ev_profile`
- `https://www.googleapis.com/auth/dataportability.maps.factual_contributions`
- `https://www.googleapis.com/auth/dataportability.maps.offering_contributions`
- `https://www.googleapis.com/auth/dataportability.maps.photos_videos`
- `https://www.googleapis.com/auth/dataportability.maps.questions_answers`
- `https://www.googleapis.com/auth/dataportability.maps.reviews`
- `https://www.googleapis.com/auth/dataportability.maps.starred_places`
- `https://www.googleapis.com/auth/dataportability.maps.vehicle_profile`
- `https://www.googleapis.com/auth/dataportability.myactivity.maps`
- `https://www.googleapis.com/auth/dataportability.myactivity.myadcenter`
- `https://www.googleapis.com/auth/dataportability.myactivity.play`
- `https://www.googleapis.com/auth/dataportability.myactivity.search`
- `https://www.googleapis.com/auth/dataportability.myactivity.shopping`
- `https://www.googleapis.com/auth/dataportability.myactivity.youtube`
- `https://www.googleapis.com/auth/dataportability.mymaps.maps`
- `https://www.googleapis.com/auth/dataportability.nest.camera_event`
- `https://www.googleapis.com/auth/dataportability.nest.camera_feature`
- `https://www.googleapis.com/auth/dataportability.nest.camera_video`
- `https://www.googleapis.com/auth/dataportability.nest.store`
- `https://www.googleapis.com/auth/dataportability.nest.user`
- `https://www.googleapis.com/auth/dataportability.order_reserve.purchases_reservations`
- `https://www.googleapis.com/auth/dataportability.play.devices`
- `https://www.googleapis.com/auth/dataportability.play.grouping`
- `https://www.googleapis.com/auth/dataportability.play.installs`
- `https://www.googleapis.com/auth/dataportability.play.library`
- `https://www.googleapis.com/auth/dataportability.play.playpoints`
- `https://www.googleapis.com/auth/dataportability.play.promotions`
- `https://www.googleapis.com/auth/dataportability.play.purchases`
- `https://www.googleapis.com/auth/dataportability.play.redemptions`
- `https://www.googleapis.com/auth/dataportability.play.subscriptions`
- `https://www.googleapis.com/auth/dataportability.play.usersettings`
- `https://www.googleapis.com/auth/dataportability.saved.collections`
- `https://www.googleapis.com/auth/dataportability.search_ugc.comments`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.reviews_and_stars`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.streaming_video_providers`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.thumbs`
- `https://www.googleapis.com/auth/dataportability.search_ugc.media.watched`
- `https://www.googleapis.com/auth/dataportability.searchnotifications.settings`
- `https://www.googleapis.com/auth/dataportability.searchnotifications.subscriptions`
- `https://www.googleapis.com/auth/dataportability.shopping.addresses`
- `https://www.googleapis.com/auth/dataportability.shopping.reviews`
- `https://www.googleapis.com/auth/dataportability.streetview.imagery`
- `https://www.googleapis.com/auth/dataportability.youtube.channel`
- `https://www.googleapis.com/auth/dataportability.youtube.clips`
- `https://www.googleapis.com/auth/dataportability.youtube.comments`
- `https://www.googleapis.com/auth/dataportability.youtube.conversations`
- `https://www.googleapis.com/auth/dataportability.youtube.live_chat`
- `https://www.googleapis.com/auth/dataportability.youtube.music`
- `https://www.googleapis.com/auth/dataportability.youtube.playable`
- `https://www.googleapis.com/auth/dataportability.youtube.posts`
- `https://www.googleapis.com/auth/dataportability.youtube.private_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.private_videos`
- `https://www.googleapis.com/auth/dataportability.youtube.public_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.public_videos`
- `https://www.googleapis.com/auth/dataportability.youtube.shopping`
- `https://www.googleapis.com/auth/dataportability.youtube.subscriptions`
- `https://www.googleapis.com/auth/dataportability.youtube.unlisted_playlists`
- `https://www.googleapis.com/auth/dataportability.youtube.unlisted_videos`

---

## Schemas

### `CancelPortabilityArchiveRequest`

Request to cancel a Portability Archive job.

### `CancelPortabilityArchiveResponse`

Response to canceling a Data Portability Archive job.

### `CheckAccessTypeRequest`

Request to check the token's access type. All required information is derived from the attached OAuth token.

### `CheckAccessTypeResponse`

Response to checking the token's access type.

| Property | Type | Description |
|----------|------|-------------|
| `oneTimeResources` | `array<string>` | Jobs initiated with this token will be one-time if any requested resources have one-time access. |
| `timeBasedResources` | `array<string>` | Jobs initiated with this token will be time-based if all requested resources have time-based access. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `InitiatePortabilityArchiveRequest`

Request to kick off an Archive job.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. The timestamp that represents the end point for the data you are exporting. If the end_... |
| `resources` | `array<string>` | The resources from which you're exporting data. These values have a 1:1 correspondence with the O... |
| `startTime` | `string` | Optional. The timestamp that represents the starting point for the data you are exporting. If the... |

### `InitiatePortabilityArchiveResponse`

Response from initiating an Archive job.

| Property | Type | Description |
|----------|------|-------------|
| `accessType` | `string` | The access type of the Archive job initiated by the API. |
| `archiveJobId` | `string` | The archive job ID that is initiated in the API. This can be used to get the state of the job. |

### `PortabilityArchiveState`

Resource that contains the state of an Archive job.

| Property | Type | Description |
|----------|------|-------------|
| `exportTime` | `string` | The timestamp that represents the end point for the data you are exporting. If the end_time value... |
| `name` | `string` | The resource name of ArchiveJob's PortabilityArchiveState singleton. The format is: archiveJobs/{... |
| `startTime` | `string` | The timestamp that represents the starting point for the data you are exporting. This field is se... |
| `state` | `string` | Resource that represents the state of the Archive job. |
| `urls` | `array<string>` | If the state is complete, this method returns the signed URLs of the objects in the Cloud Storage... |

### `ResetAuthorizationRequest`

Request to reset exhausted OAuth scopes.

### `RetryPortabilityArchiveRequest`

Request to retry a failed Portability Archive job.

### `RetryPortabilityArchiveResponse`

Response from retrying a Portability Archive.

| Property | Type | Description |
|----------|------|-------------|
| `archiveJobId` | `string` | The archive job ID that is initiated by the retry endpoint. This can be used to get the state of ... |

