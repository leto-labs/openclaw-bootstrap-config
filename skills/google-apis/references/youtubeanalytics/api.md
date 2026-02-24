# YouTube Analytics API - API Reference

**Version**: `v2` | **Methods**: 8 | **Schemas**: 12

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `youtubeAnalytics.groups.insert` | POST | `v2/groups` | Creates a group. |
| `youtubeAnalytics.groups.list` | GET | `v2/groups` | Returns a collection of groups that match the API request parameters. For example, you can retrie... |
| `youtubeAnalytics.groups.update` | PUT | `v2/groups` | Modifies a group. For example, you could change a group's title. |
| `youtubeAnalytics.groups.delete` | DELETE | `v2/groups` | Deletes a group. |
| `youtubeAnalytics.groupItems.insert` | POST | `v2/groupItems` | Creates a group item. |
| `youtubeAnalytics.groupItems.list` | GET | `v2/groupItems` | Returns a collection of group items that match the API request parameters. |
| `youtubeAnalytics.groupItems.delete` | DELETE | `v2/groupItems` | Removes an item from a group. |
| `youtubeAnalytics.reports.query` | GET | `v2/reports` | Retrieve your YouTube Analytics reports. |

### `youtubeAnalytics.groups.insert`

**POST** `v2/groups`

Creates a group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `onBehalfOfContentOwner` | `string` | query | No | This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively fo... |

**Request body**: `Group`

**Response**: `Group`

```typescript
const res = await youtubeAnalytics.groups.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubeAnalytics.groups.list`

**GET** `v2/groups`

Returns a collection of groups that match the API request parameters. For example, you can retrieve all groups that the authenticated user owns, or you can retrieve one or more groups by their unique IDs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | No | The `id` parameter specifies a comma-separated list of the YouTube group ID(s) for the resource(s) that are being ret... |
| `mine` | `boolean` | query | No | This parameter can only be used in a properly authorized request. Set this parameter's value to true to retrieve all ... |
| `onBehalfOfContentOwner` | `string` | query | No | This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively fo... |
| `pageToken` | `string` | query | No | The `pageToken` parameter identifies a specific page in the result set that should be returned. In an API response, t... |

**Response**: `ListGroupsResponse`

```typescript
const res = await youtubeAnalytics.groups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubeAnalytics.groups.update`

**PUT** `v2/groups`

Modifies a group. For example, you could change a group's title.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `onBehalfOfContentOwner` | `string` | query | No | This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively fo... |

**Request body**: `Group`

**Response**: `Group`

```typescript
const res = await youtubeAnalytics.groups.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubeAnalytics.groups.delete`

**DELETE** `v2/groups`

Deletes a group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | No | The `id` parameter specifies the YouTube group ID of the group that is being deleted. |
| `onBehalfOfContentOwner` | `string` | query | No | This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively fo... |

**Response**: `EmptyResponse`

```typescript
const res = await youtubeAnalytics.groups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubeAnalytics.groupItems.insert`

**POST** `v2/groupItems`

Creates a group item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `onBehalfOfContentOwner` | `string` | query | No | This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively fo... |

**Request body**: `GroupItem`

**Response**: `GroupItem`

```typescript
const res = await youtubeAnalytics.groupItems.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubeAnalytics.groupItems.list`

**GET** `v2/groupItems`

Returns a collection of group items that match the API request parameters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `groupId` | `string` | query | No | The `groupId` parameter specifies the unique ID of the group for which you want to retrieve group items. |
| `onBehalfOfContentOwner` | `string` | query | No | This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively fo... |

**Response**: `ListGroupItemsResponse`

```typescript
const res = await youtubeAnalytics.groupItems.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubeAnalytics.groupItems.delete`

**DELETE** `v2/groupItems`

Removes an item from a group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | No | The `id` parameter specifies the YouTube group item ID of the group item that is being deleted. |
| `onBehalfOfContentOwner` | `string` | query | No | This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively fo... |

**Response**: `EmptyResponse`

```typescript
const res = await youtubeAnalytics.groupItems.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubeAnalytics.reports.query`

**GET** `v2/reports`

Retrieve your YouTube Analytics reports.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `currency` | `string` | query | No | The currency to which financial metrics should be converted. The default is US Dollar (USD). If the result contains n... |
| `dimensions` | `string` | query | No | A comma-separated list of YouTube Analytics dimensions, such as `views` or `ageGroup,gender`. See the [Available Repo... |
| `endDate` | `string` | query | No | The end date for fetching YouTube Analytics data. The value should be in `YYYY-MM-DD` format. required: true, pattern... |
| `filters` | `string` | query | No | A list of filters that should be applied when retrieving YouTube Analytics data. The [Available Reports](/youtube/ana... |
| `ids` | `string` | query | No | Identifies the YouTube channel or content owner for which you are retrieving YouTube Analytics data. - To request dat... |
| `includeHistoricalChannelData` | `boolean` | query | No | If set to true historical data (i.e. channel data from before the linking of the channel to the content owner) will b... |
| `maxResults` | `integer` | query | No | The maximum number of rows to include in the response.", minValue: 1 |
| `metrics` | `string` | query | No | A comma-separated list of YouTube Analytics metrics, such as `views` or `likes,dislikes`. See the [Available Reports]... |
| `sort` | `string` | query | No | A comma-separated list of dimensions or metrics that determine the sort order for YouTube Analytics data. By default ... |
| `startDate` | `string` | query | No | The start date for fetching YouTube Analytics data. The value should be in `YYYY-MM-DD` format. required: true, patte... |
| `startIndex` | `integer` | query | No | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results par... |

**Response**: `QueryResponse`

```typescript
const res = await youtubeAnalytics.reports.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/youtube`
- `https://www.googleapis.com/auth/youtube.readonly`
- `https://www.googleapis.com/auth/youtubepartner`
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

## Schemas

### `EmptyResponse`

Empty response.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `Errors` | Apiary error details |

### `ErrorProto`

Describes one specific error.

| Property | Type | Description |
|----------|------|-------------|
| `argument` | `array<string>` | Error arguments, to be used when building user-friendly error messages given the error domain and... |
| `code` | `string` | Error code in the error domain. This should correspond to a value of the enum type whose name is ... |
| `debugInfo` | `string` | Debugging information, which should not be shared externally. |
| `domain` | `string` | Error domain. RoSy services can define their own domain and error codes. This should normally be ... |
| `externalErrorMessage` | `string` | A short explanation for the error, which can be shared outside Google. Please set domain, code an... |
| `location` | `string` | Location of the error, as specified by the location type. If location_type is PATH, this should b... |
| `locationType` | `string` |  |

### `Errors`

Request Error information. The presence of an error field signals that the operation has failed.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Global error code. Deprecated and ignored. Set custom error codes in ErrorProto.domain and ErrorP... |
| `error` | `array<ErrorProto>` | Specific error description and codes |
| `requestId` | `string` | Request identifier generated by the service, which can be used to identify the error in the logs |

### `Group`

A group.

| Property | Type | Description |
|----------|------|-------------|
| `contentDetails` | `GroupContentDetails` | The `contentDetails` object contains additional information about the group, such as the number a... |
| `errors` | `Errors` | Apiary error details |
| `etag` | `string` | The Etag of this resource. |
| `id` | `string` | The ID that YouTube uses to uniquely identify the group. |
| `kind` | `string` | Identifies the API resource's type. The value will be `youtube#group`. |
| `snippet` | `GroupSnippet` | The `snippet` object contains basic information about the group, including its creation date and ... |

### `GroupContentDetails`

A group's content details.

| Property | Type | Description |
|----------|------|-------------|
| `itemCount` | `string` | The number of items in the group. |
| `itemType` | `string` | The type of resources that the group contains. Valid values for this property are: * `youtube#cha... |

### `GroupItem`

A group item.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `Errors` | Apiary error details |
| `etag` | `string` | The Etag of this resource. |
| `groupId` | `string` | The ID that YouTube uses to uniquely identify the group that contains the item. |
| `id` | `string` | The ID that YouTube uses to uniquely identify the `channel`, `video`, `playlist`, or `asset` reso... |
| `kind` | `string` | Identifies the API resource's type. The value will be `youtube#groupItem`. |
| `resource` | `GroupItemResource` | The `resource` object contains information that identifies the item being added to the group. |

### `GroupItemResource`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The channel, video, playlist, or asset ID that YouTube uses to uniquely identify the item that is... |
| `kind` | `string` | Identifies the type of resource being added to the group. Valid values for this property are: * `... |

### `GroupSnippet`

A group snippet.

| Property | Type | Description |
|----------|------|-------------|
| `publishedAt` | `string` | The date and time that the group was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:m... |
| `title` | `string` | The group name. The value must be a non-empty string. |

### `ListGroupItemsResponse`

Response message for GroupsService.ListGroupItems.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `Errors` | Apiary error details |
| `etag` | `string` | The Etag of this resource. |
| `items` | `array<GroupItem>` | A list of groups that match the API request parameters. Each item in the list represents a `group... |
| `kind` | `string` | Identifies the API resource's type. The value will be `youtube#groupItemListResponse`. |

### `ListGroupsResponse`

Response message for GroupsService.ListGroups.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `Errors` | Apiary error details |
| `etag` | `string` | The Etag of this resource. |
| `items` | `array<Group>` | A list of groups that match the API request parameters. Each item in the list represents a `group... |
| `kind` | `string` | Identifies the API resource's type. The value will be `youtube#groupListResponse`. |
| `nextPageToken` | `string` | The token that can be used as the value of the `pageToken` parameter to retrieve the next page in... |

### `QueryResponse`

Response message for TargetedQueriesService.Query.

| Property | Type | Description |
|----------|------|-------------|
| `columnHeaders` | `array<ResultTableColumnHeader>` | This value specifies information about the data returned in the `rows` fields. Each item in the `... |
| `errors` | `Errors` | When set, indicates that the operation failed. |
| `kind` | `string` | This value specifies the type of data included in the API response. For the query method, the kin... |
| `rows` | `array<array>` | The list contains all rows of the result table. Each item in the list is an array that contains c... |

### `ResultTableColumnHeader`

The description of a column of the result table.

| Property | Type | Description |
|----------|------|-------------|
| `columnType` | `string` | The type of the column (`DIMENSION` or `METRIC`). |
| `dataType` | `string` | The type of the data in the column (`STRING`, `INTEGER`, `FLOAT`, etc.). |
| `name` | `string` | The name of the dimension or metric. |

