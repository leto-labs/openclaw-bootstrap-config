# versionhistory.googleapis.com API - API Reference

**Version**: `v1` | **Methods**: 4 | **Schemas**: 10

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `versionhistory.platforms.list` | GET | `v1/{+parent}/platforms` | Returns list of platforms that are available for a given product. The resource "product" has no r... |
| `versionhistory.platforms.channels.list` | GET | `v1/{+parent}/channels` | Returns list of channels that are available for a given platform. |
| `versionhistory.platforms.channels.versions.list` | GET | `v1/{+parent}/versions` | Returns list of version for the given platform/channel. |
| `versionhistory.platforms.channels.versions.releases.list` | GET | `v1/{+parent}/releases` | Returns list of releases of the given version. |

### `versionhistory.platforms.list`

**GET** `v1/{+parent}/platforms`

Returns list of platforms that are available for a given product. The resource "product" has no resource name in its name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The product, which owns this collection of platforms. Format: {product} |
| `pageSize` | `integer` | query | No | Optional. Optional limit on the number of channels to include in the response. If unspecified, the server will pick a... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListChannels` call. Provide this to retrieve the subsequent page. |

**Response**: `ListPlatformsResponse`

```typescript
const res = await versionhistory.platforms.list({
  // parameters
});
```

---

### `versionhistory.platforms.channels.list`

**GET** `v1/{+parent}/channels`

Returns list of channels that are available for a given platform.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The platform, which owns this collection of channels. Format: {product}/platforms/{platform} |
| `pageSize` | `integer` | query | No | Optional. Optional limit on the number of channels to include in the response. If unspecified, the server will pick a... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListChannels` call. Provide this to retrieve the subsequent page. |

**Response**: `ListChannelsResponse`

```typescript
const res = await versionhistory.channels.list({
  // parameters
});
```

---

### `versionhistory.platforms.channels.versions.list`

**GET** `v1/{+parent}/versions`

Returns list of version for the given platform/channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The channel, which owns this collection of versions. Format: {product}/platforms/{platform}/channels/{channel} |
| `filter` | `string` | query | No | Optional. Filter string. Format is a comma separated list of All comma separated filter clauses are conjoined with a ... |
| `orderBy` | `string` | query | No | Optional. Ordering string. Valid order_by strings are "version", "name", "platform", and "channel". Optionally, you c... |
| `pageSize` | `integer` | query | No | Optional. Optional limit on the number of versions to include in the response. If unspecified, the server will pick a... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListVersions` call. Provide this to retrieve the subsequent page. |

**Response**: `ListVersionsResponse`

```typescript
const res = await versionhistory.versions.list({
  // parameters
});
```

---

### `versionhistory.platforms.channels.versions.releases.list`

**GET** `v1/{+parent}/releases`

Returns list of releases of the given version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The version, which owns this collection of releases. Format: {product}/platforms/{platform}/channels/{chann... |
| `filter` | `string` | query | No | Optional. Filter string. Format is a comma separated list of All comma separated filter clauses are conjoined with a ... |
| `orderBy` | `string` | query | No | Optional. Ordering string. Valid order_by strings are "version", "name", "starttime", "endtime", "platform", "channel... |
| `pageSize` | `integer` | query | No | Optional. Optional limit on the number of releases to include in the response. If unspecified, the server will pick a... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListReleases` call. Provide this to retrieve the subsequent page. |

**Response**: `ListReleasesResponse`

```typescript
const res = await versionhistory.releases.list({
  // parameters
});
```

---

## Schemas

### `Channel`

Each Channel is owned by a Platform and owns a collection of versions. Possible Channels are listed in the Channel enum below. Not all Channels are available for every Platform (e.g. CANARY does not exist for LINUX).

| Property | Type | Description |
|----------|------|-------------|
| `channelType` | `string` | Type of channel. |
| `name` | `string` | Channel name. Format is "{product}/platforms/{platform}/channels/{channel}" |

### `Interval`

Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will ha... |
| `startTime` | `string` | Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will ... |

### `ListChannelsResponse`

Response message for ListChannels.

| Property | Type | Description |
|----------|------|-------------|
| `channels` | `array<Channel>` | The list of channels. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListPlatformsResponse`

Response message for ListPlatforms.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `platforms` | `array<Platform>` | The list of platforms. |

### `ListReleasesResponse`

Response message for ListReleases.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `releases` | `array<Release>` | The list of releases. |

### `ListVersionsResponse`

Response message for ListVersions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `versions` | `array<Version>` | The list of versions. |

### `Platform`

Each Platform is owned by a Product and owns a collection of channels. Available platforms are listed in Platform enum below. Not all Channels are available for every Platform (e.g. CANARY does not exist for LINUX).

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Platform name. Format is "{product}/platforms/{platform}" |
| `platformType` | `string` | Type of platform. |

### `Release`

A Release is owned by a Version. A Release contains information about the release(s) of its parent version. This includes when the release began and ended, as well as what percentage it was released at. If the version is released again, or if the serving percentage changes, it will create another release under the version.

| Property | Type | Description |
|----------|------|-------------|
| `fraction` | `number` | Rollout fraction. This fraction indicates the fraction of people that should receive this version... |
| `fractionGroup` | `string` | Rollout fraction group. Only fractions with the same fraction_group are statistically comparable:... |
| `name` | `string` | Release name. Format is "{product}/platforms/{platform}/channels/{channel}/versions/{version}/rel... |
| `pinnable` | `boolean` | Whether or not the release was available for version pinning. |
| `rolloutData` | `array<RolloutData>` | Rollout-related metadata. Some releases are part of one or more A/B rollouts. This field contains... |
| `serving` | `Interval` | Timestamp interval of when the release was live. If end_time is unspecified, the release is curre... |
| `version` | `string` | String containing just the version number. e.g. "84.0.4147.38" |

### `RolloutData`

Rollout-related metadata for a release.

| Property | Type | Description |
|----------|------|-------------|
| `rolloutName` | `string` | The name of the rollout. |
| `tag` | `array<string>` | Tags associated with a release's role in a rollout. Most rollouts will have at least one release ... |

### `Version`

Each Version is owned by a Channel. A Version only displays the Version number (e.g. 84.0.4147.38). A Version owns a collection of releases.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Version name. Format is "{product}/platforms/{platform}/channels/{channel}/versions/{version}" e.... |
| `version` | `string` | String containing just the version number. e.g. "84.0.4147.38" |

