# Google Play Games Services Publishing API - API Reference

**Version**: `v1configuration` | **Methods**: 10 | **Schemas**: 10

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `gamesConfiguration.leaderboardConfigurations.delete` | DELETE | `games/v1configuration/leaderboards/{leaderboardId}` | Delete the leaderboard configuration with the given ID. |
| `gamesConfiguration.leaderboardConfigurations.get` | GET | `games/v1configuration/leaderboards/{leaderboardId}` | Retrieves the metadata of the leaderboard configuration with the given ID. |
| `gamesConfiguration.leaderboardConfigurations.insert` | POST | `games/v1configuration/applications/{applicationId}/leaderboards` | Insert a new leaderboard configuration in this application. |
| `gamesConfiguration.leaderboardConfigurations.update` | PUT | `games/v1configuration/leaderboards/{leaderboardId}` | Update the metadata of the leaderboard configuration with the given ID. |
| `gamesConfiguration.leaderboardConfigurations.list` | GET | `games/v1configuration/applications/{applicationId}/leaderboards` | Returns a list of the leaderboard configurations in this application. |
| `gamesConfiguration.achievementConfigurations.insert` | POST | `games/v1configuration/applications/{applicationId}/achievements` | Insert a new achievement configuration in this application. |
| `gamesConfiguration.achievementConfigurations.update` | PUT | `games/v1configuration/achievements/{achievementId}` | Update the metadata of the achievement configuration with the given ID. |
| `gamesConfiguration.achievementConfigurations.list` | GET | `games/v1configuration/applications/{applicationId}/achievements` | Returns a list of the achievement configurations in this application. |
| `gamesConfiguration.achievementConfigurations.get` | GET | `games/v1configuration/achievements/{achievementId}` | Retrieves the metadata of the achievement configuration with the given ID. |
| `gamesConfiguration.achievementConfigurations.delete` | DELETE | `games/v1configuration/achievements/{achievementId}` | Delete the achievement configuration with the given ID. |

### `gamesConfiguration.leaderboardConfigurations.delete`

**DELETE** `games/v1configuration/leaderboards/{leaderboardId}`

Delete the leaderboard configuration with the given ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `leaderboardId` | `string` | path | Yes | The ID of the leaderboard. |

```typescript
const res = await gamesConfiguration.leaderboardConfigurations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `gamesConfiguration.leaderboardConfigurations.get`

**GET** `games/v1configuration/leaderboards/{leaderboardId}`

Retrieves the metadata of the leaderboard configuration with the given ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `leaderboardId` | `string` | path | Yes | The ID of the leaderboard. |

**Response**: `LeaderboardConfiguration`

```typescript
const res = await gamesConfiguration.leaderboardConfigurations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `gamesConfiguration.leaderboardConfigurations.insert`

**POST** `games/v1configuration/applications/{applicationId}/leaderboards`

Insert a new leaderboard configuration in this application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `applicationId` | `string` | path | Yes | The application ID from the Google Play developer console. |

**Request body**: `LeaderboardConfiguration`

**Response**: `LeaderboardConfiguration`

```typescript
const res = await gamesConfiguration.leaderboardConfigurations.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `gamesConfiguration.leaderboardConfigurations.update`

**PUT** `games/v1configuration/leaderboards/{leaderboardId}`

Update the metadata of the leaderboard configuration with the given ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `leaderboardId` | `string` | path | Yes | The ID of the leaderboard. |

**Request body**: `LeaderboardConfiguration`

**Response**: `LeaderboardConfiguration`

```typescript
const res = await gamesConfiguration.leaderboardConfigurations.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `gamesConfiguration.leaderboardConfigurations.list`

**GET** `games/v1configuration/applications/{applicationId}/leaderboards`

Returns a list of the leaderboard configurations in this application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `applicationId` | `string` | path | Yes | The application ID from the Google Play developer console. |
| `maxResults` | `integer` | query | No | The maximum number of resource configurations to return in the response, used for paging. For any response, the actua... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `LeaderboardConfigurationListResponse`

```typescript
const res = await gamesConfiguration.leaderboardConfigurations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `gamesConfiguration.achievementConfigurations.insert`

**POST** `games/v1configuration/applications/{applicationId}/achievements`

Insert a new achievement configuration in this application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `applicationId` | `string` | path | Yes | The application ID from the Google Play developer console. |

**Request body**: `AchievementConfiguration`

**Response**: `AchievementConfiguration`

```typescript
const res = await gamesConfiguration.achievementConfigurations.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `gamesConfiguration.achievementConfigurations.update`

**PUT** `games/v1configuration/achievements/{achievementId}`

Update the metadata of the achievement configuration with the given ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `achievementId` | `string` | path | Yes | The ID of the achievement used by this method. |

**Request body**: `AchievementConfiguration`

**Response**: `AchievementConfiguration`

```typescript
const res = await gamesConfiguration.achievementConfigurations.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `gamesConfiguration.achievementConfigurations.list`

**GET** `games/v1configuration/applications/{applicationId}/achievements`

Returns a list of the achievement configurations in this application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `applicationId` | `string` | path | Yes | The application ID from the Google Play developer console. |
| `maxResults` | `integer` | query | No | The maximum number of resource configurations to return in the response, used for paging. For any response, the actua... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `AchievementConfigurationListResponse`

```typescript
const res = await gamesConfiguration.achievementConfigurations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `gamesConfiguration.achievementConfigurations.get`

**GET** `games/v1configuration/achievements/{achievementId}`

Retrieves the metadata of the achievement configuration with the given ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `achievementId` | `string` | path | Yes | The ID of the achievement used by this method. |

**Response**: `AchievementConfiguration`

```typescript
const res = await gamesConfiguration.achievementConfigurations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `gamesConfiguration.achievementConfigurations.delete`

**DELETE** `games/v1configuration/achievements/{achievementId}`

Delete the achievement configuration with the given ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `achievementId` | `string` | path | Yes | The ID of the achievement used by this method. |

```typescript
const res = await gamesConfiguration.achievementConfigurations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

## Schemas

### `AchievementConfiguration`

An achievement configuration resource.

| Property | Type | Description |
|----------|------|-------------|
| `achievementType` | `string` | The type of the achievement. |
| `draft` | `AchievementConfigurationDetail` | The draft data of the achievement. |
| `id` | `string` | The ID of the achievement. |
| `initialState` | `string` | The initial state of the achievement. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfigurati... |
| `published` | `AchievementConfigurationDetail` | The read-only published data of the achievement. |
| `stepsToUnlock` | `integer` | Steps to unlock. Only applicable to incremental achievements. |
| `token` | `string` | The token for this resource. |

### `AchievementConfigurationDetail`

An achievement configuration detail.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `LocalizedStringBundle` | Localized strings for the achievement description. |
| `iconUrl` | `string` | The icon url of this achievement. Writes to this field are ignored. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfigurati... |
| `name` | `LocalizedStringBundle` | Localized strings for the achievement name. |
| `pointValue` | `integer` | Point value for the achievement. |
| `sortRank` | `integer` | The sort rank of this achievement. Writes to this field are ignored. |

### `AchievementConfigurationListResponse`

A ListConfigurations response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<AchievementConfiguration>` | The achievement configurations. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfigurati... |
| `nextPageToken` | `string` | The pagination token for the next page of results. |

### `GamesNumberAffixConfiguration`

A number affix resource.

| Property | Type | Description |
|----------|------|-------------|
| `few` | `LocalizedStringBundle` | When the language requires special treatment of "small" numbers (as with 2, 3, and 4 in Czech; or... |
| `many` | `LocalizedStringBundle` | When the language requires special treatment of "large" numbers (as with numbers ending 11-99 in ... |
| `one` | `LocalizedStringBundle` | When the language requires special treatment of numbers like one (as with the number 1 in English... |
| `other` | `LocalizedStringBundle` | When the language does not require special treatment of the given quantity (as with all numbers i... |
| `two` | `LocalizedStringBundle` | When the language requires special treatment of numbers like two (as with 2 in Welsh, or 102 in S... |
| `zero` | `LocalizedStringBundle` | When the language requires special treatment of the number 0 (as in Arabic). |

### `GamesNumberFormatConfiguration`

A number format resource.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The curreny code string. Only used for CURRENCY format type. |
| `numDecimalPlaces` | `integer` | The number of decimal places for number. Only used for NUMERIC format type. |
| `numberFormatType` | `string` | The formatting for the number. |
| `suffix` | `GamesNumberAffixConfiguration` | An optional suffix for the NUMERIC format type. These strings follow the same plural rules as all... |

### `LeaderboardConfiguration`

An leaderboard configuration resource.

| Property | Type | Description |
|----------|------|-------------|
| `draft` | `LeaderboardConfigurationDetail` | The draft data of the leaderboard. |
| `id` | `string` | The ID of the leaderboard. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfigurati... |
| `published` | `LeaderboardConfigurationDetail` | The read-only published data of the leaderboard. |
| `scoreMax` | `string` | Maximum score that can be posted to this leaderboard. |
| `scoreMin` | `string` | Minimum score that can be posted to this leaderboard. |
| `scoreOrder` | `string` |  |
| `token` | `string` | The token for this resource. |

### `LeaderboardConfigurationDetail`

A leaderboard configuration detail.

| Property | Type | Description |
|----------|------|-------------|
| `iconUrl` | `string` | The icon url of this leaderboard. Writes to this field are ignored. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfigurati... |
| `name` | `LocalizedStringBundle` | Localized strings for the leaderboard name. |
| `scoreFormat` | `GamesNumberFormatConfiguration` | The score formatting for the leaderboard. |
| `sortRank` | `integer` | The sort rank of this leaderboard. Writes to this field are ignored. |

### `LeaderboardConfigurationListResponse`

A ListConfigurations response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<LeaderboardConfiguration>` | The leaderboard configurations. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfigurati... |
| `nextPageToken` | `string` | The pagination token for the next page of results. |

### `LocalizedString`

A localized string resource.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfigurati... |
| `locale` | `string` | The locale string. |
| `value` | `string` | The string value. |

### `LocalizedStringBundle`

A localized string bundle resource.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfigurati... |
| `translations` | `array<LocalizedString>` | The locale strings. |

