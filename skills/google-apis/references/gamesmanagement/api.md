# Google Play Games Services Management API - API Reference

**Version**: `v1management` | **Methods**: 18 | **Schemas**: 13

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `gamesManagement.scores.resetMultipleForAllPlayers` | POST | `games/v1management/scores/resetMultipleForAllPlayers` | Resets scores for the leaderboards with the given IDs for all players. This method is only availa... |
| `gamesManagement.scores.reset` | POST | `games/v1management/leaderboards/{leaderboardId}/scores/reset` | Resets scores for the leaderboard with the given ID for the currently authenticated player. This ... |
| `gamesManagement.scores.resetAllForAllPlayers` | POST | `games/v1management/scores/resetAllForAllPlayers` | Resets scores for all draft leaderboards for all players. This method is only available to user a... |
| `gamesManagement.scores.resetForAllPlayers` | POST | `games/v1management/leaderboards/{leaderboardId}/scores/resetForAllPlayers` | Resets scores for the leaderboard with the given ID for all players. This method is only availabl... |
| `gamesManagement.scores.resetAll` | POST | `games/v1management/scores/reset` | Resets all scores for all leaderboards for the currently authenticated players. This method is on... |
| `gamesManagement.applications.listHidden` | GET | `games/v1management/applications/{applicationId}/players/hidden` | Get the list of players hidden from the given application. This method is only available to user ... |
| `gamesManagement.achievements.resetMultipleForAllPlayers` | POST | `games/v1management/achievements/resetMultipleForAllPlayers` | Resets achievements with the given IDs for all players. This method is only available to user acc... |
| `gamesManagement.achievements.resetAllForAllPlayers` | POST | `games/v1management/achievements/resetAllForAllPlayers` | Resets all draft achievements for all players. This method is only available to user accounts for... |
| `gamesManagement.achievements.resetForAllPlayers` | POST | `games/v1management/achievements/{achievementId}/resetForAllPlayers` | Resets the achievement with the given ID for all players. This method is only available to user a... |
| `gamesManagement.achievements.resetAll` | POST | `games/v1management/achievements/reset` | Resets all achievements for the currently authenticated player for your application. This method ... |
| `gamesManagement.achievements.reset` | POST | `games/v1management/achievements/{achievementId}/reset` | Resets the achievement with the given ID for the currently authenticated player. This method is o... |
| `gamesManagement.events.resetForAllPlayers` | POST | `games/v1management/events/{eventId}/resetForAllPlayers` | Resets the event with the given ID for all players. This method is only available to user account... |
| `gamesManagement.events.resetMultipleForAllPlayers` | POST | `games/v1management/events/resetMultipleForAllPlayers` | Resets events with the given IDs for all players. This method is only available to user accounts ... |
| `gamesManagement.events.reset` | POST | `games/v1management/events/{eventId}/reset` | Resets all player progress on the event with the given ID for the currently authenticated player.... |
| `gamesManagement.events.resetAll` | POST | `games/v1management/events/reset` | Resets all player progress on all events for the currently authenticated player. This method is o... |
| `gamesManagement.events.resetAllForAllPlayers` | POST | `games/v1management/events/resetAllForAllPlayers` | Resets all draft events for all players. This method is only available to user accounts for your ... |
| `gamesManagement.players.hide` | POST | `games/v1management/applications/{applicationId}/players/hidden/{playerId}` | Hide the given player's leaderboard scores from the given application. This method is only availa... |
| `gamesManagement.players.unhide` | DELETE | `games/v1management/applications/{applicationId}/players/hidden/{playerId}` | Unhide the given player's leaderboard scores from the given application. This method is only avai... |

### `gamesManagement.scores.resetMultipleForAllPlayers`

**POST** `games/v1management/scores/resetMultipleForAllPlayers`

Resets scores for the leaderboards with the given IDs for all players. This method is only available to user accounts for your developer console. Only draft leaderboards may be reset.

**Request body**: `ScoresResetMultipleForAllRequest`

```typescript
const res = await gamesManagement.scores.resetMultipleForAllPlayers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.scores.reset`

**POST** `games/v1management/leaderboards/{leaderboardId}/scores/reset`

Resets scores for the leaderboard with the given ID for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `leaderboardId` | `string` | path | Yes | The ID of the leaderboard. |

**Response**: `PlayerScoreResetResponse`

```typescript
const res = await gamesManagement.scores.reset({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.scores.resetAllForAllPlayers`

**POST** `games/v1management/scores/resetAllForAllPlayers`

Resets scores for all draft leaderboards for all players. This method is only available to user accounts for your developer console.

```typescript
const res = await gamesManagement.scores.resetAllForAllPlayers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.scores.resetForAllPlayers`

**POST** `games/v1management/leaderboards/{leaderboardId}/scores/resetForAllPlayers`

Resets scores for the leaderboard with the given ID for all players. This method is only available to user accounts for your developer console. Only draft leaderboards can be reset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `leaderboardId` | `string` | path | Yes | The ID of the leaderboard. |

```typescript
const res = await gamesManagement.scores.resetForAllPlayers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.scores.resetAll`

**POST** `games/v1management/scores/reset`

Resets all scores for all leaderboards for the currently authenticated players. This method is only accessible to whitelisted tester accounts for your application.

**Response**: `PlayerScoreResetAllResponse`

```typescript
const res = await gamesManagement.scores.resetAll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.applications.listHidden`

**GET** `games/v1management/applications/{applicationId}/players/hidden`

Get the list of players hidden from the given application. This method is only available to user accounts for your developer console.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `applicationId` | `string` | path | Yes | The application ID from the Google Play developer console. |
| `maxResults` | `integer` | query | No | The maximum number of player resources to return in the response, used for paging. For any response, the actual numbe... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `HiddenPlayerList`

```typescript
const res = await gamesManagement.applications.listHidden({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.achievements.resetMultipleForAllPlayers`

**POST** `games/v1management/achievements/resetMultipleForAllPlayers`

Resets achievements with the given IDs for all players. This method is only available to user accounts for your developer console. Only draft achievements may be reset.

**Request body**: `AchievementResetMultipleForAllRequest`

```typescript
const res = await gamesManagement.achievements.resetMultipleForAllPlayers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.achievements.resetAllForAllPlayers`

**POST** `games/v1management/achievements/resetAllForAllPlayers`

Resets all draft achievements for all players. This method is only available to user accounts for your developer console.

```typescript
const res = await gamesManagement.achievements.resetAllForAllPlayers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.achievements.resetForAllPlayers`

**POST** `games/v1management/achievements/{achievementId}/resetForAllPlayers`

Resets the achievement with the given ID for all players. This method is only available to user accounts for your developer console. Only draft achievements can be reset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `achievementId` | `string` | path | Yes | The ID of the achievement used by this method. |

```typescript
const res = await gamesManagement.achievements.resetForAllPlayers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.achievements.resetAll`

**POST** `games/v1management/achievements/reset`

Resets all achievements for the currently authenticated player for your application. This method is only accessible to whitelisted tester accounts for your application.

**Response**: `AchievementResetAllResponse`

```typescript
const res = await gamesManagement.achievements.resetAll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.achievements.reset`

**POST** `games/v1management/achievements/{achievementId}/reset`

Resets the achievement with the given ID for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `achievementId` | `string` | path | Yes | The ID of the achievement used by this method. |

**Response**: `AchievementResetResponse`

```typescript
const res = await gamesManagement.achievements.reset({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.events.resetForAllPlayers`

**POST** `games/v1management/events/{eventId}/resetForAllPlayers`

Resets the event with the given ID for all players. This method is only available to user accounts for your developer console. Only draft events can be reset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `eventId` | `string` | path | Yes | The ID of the event. |

```typescript
const res = await gamesManagement.events.resetForAllPlayers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.events.resetMultipleForAllPlayers`

**POST** `games/v1management/events/resetMultipleForAllPlayers`

Resets events with the given IDs for all players. This method is only available to user accounts for your developer console. Only draft events may be reset.

**Request body**: `EventsResetMultipleForAllRequest`

```typescript
const res = await gamesManagement.events.resetMultipleForAllPlayers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.events.reset`

**POST** `games/v1management/events/{eventId}/reset`

Resets all player progress on the event with the given ID for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `eventId` | `string` | path | Yes | The ID of the event. |

```typescript
const res = await gamesManagement.events.reset({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.events.resetAll`

**POST** `games/v1management/events/reset`

Resets all player progress on all events for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.

```typescript
const res = await gamesManagement.events.resetAll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.events.resetAllForAllPlayers`

**POST** `games/v1management/events/resetAllForAllPlayers`

Resets all draft events for all players. This method is only available to user accounts for your developer console.

```typescript
const res = await gamesManagement.events.resetAllForAllPlayers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.players.hide`

**POST** `games/v1management/applications/{applicationId}/players/hidden/{playerId}`

Hide the given player's leaderboard scores from the given application. This method is only available to user accounts for your developer console.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `applicationId` | `string` | path | Yes | The application ID from the Google Play developer console. |
| `playerId` | `string` | path | Yes | A player ID. A value of `me` may be used in place of the authenticated player's ID. |

```typescript
const res = await gamesManagement.players.hide({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `gamesManagement.players.unhide`

**DELETE** `games/v1management/applications/{applicationId}/players/hidden/{playerId}`

Unhide the given player's leaderboard scores from the given application. This method is only available to user accounts for your developer console.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `applicationId` | `string` | path | Yes | The application ID from the Google Play developer console. |
| `playerId` | `string` | path | Yes | A player ID. A value of `me` may be used in place of the authenticated player's ID. |

```typescript
const res = await gamesManagement.players.unhide({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

## Schemas

### `AchievementResetAllResponse`

Achievement reset all response.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#... |
| `results` | `array<AchievementResetResponse>` | The achievement reset results. |

### `AchievementResetMultipleForAllRequest`

| Property | Type | Description |
|----------|------|-------------|
| `achievement_ids` | `array<string>` | The IDs of achievements to reset. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#... |

### `AchievementResetResponse`

An achievement reset response.

| Property | Type | Description |
|----------|------|-------------|
| `currentState` | `string` | The current state of the achievement. This is the same as the initial state of the achievement. P... |
| `definitionId` | `string` | The ID of an achievement for which player state has been updated. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#... |
| `updateOccurred` | `boolean` | Flag to indicate if the requested update actually occurred. |

### `EventsResetMultipleForAllRequest`

Multiple events reset all request.

| Property | Type | Description |
|----------|------|-------------|
| `event_ids` | `array<string>` | The IDs of events to reset. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#... |

### `GamesPlayerExperienceInfoResource`

1P/3P metadata about the player's experience.

| Property | Type | Description |
|----------|------|-------------|
| `currentExperiencePoints` | `string` | The current number of experience points for the player. |
| `currentLevel` | `GamesPlayerLevelResource` | The current level of the player. |
| `lastLevelUpTimestampMillis` | `string` | The timestamp when the player was leveled up, in millis since Unix epoch UTC. |
| `nextLevel` | `GamesPlayerLevelResource` | The next level of the player. If the current level is the maximum level, this should be same as t... |

### `GamesPlayerLevelResource`

1P/3P metadata about a user's level.

| Property | Type | Description |
|----------|------|-------------|
| `level` | `integer` | The level for the user. |
| `maxExperiencePoints` | `string` | The maximum experience points for this level. |
| `minExperiencePoints` | `string` | The minimum experience points for this level. |

### `HiddenPlayer`

The HiddenPlayer resource.

| Property | Type | Description |
|----------|------|-------------|
| `hiddenTimeMillis` | `string` | Output only. The time this player was hidden. |
| `kind` | `string` | Output only. Uniquely identifies the type of this resource. Value is always the fixed string `gam... |
| `player` | `Player` | Output only. The player information. |

### `HiddenPlayerList`

A list of hidden players.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<HiddenPlayer>` | The players. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#... |
| `nextPageToken` | `string` | The pagination token for the next page of results. |

### `Player`

A Player resource.

| Property | Type | Description |
|----------|------|-------------|
| `avatarImageUrl` | `string` | The base URL for the image that represents the player. |
| `bannerUrlLandscape` | `string` | The url to the landscape mode player banner image. |
| `bannerUrlPortrait` | `string` | The url to the portrait mode player banner image. |
| `displayName` | `string` | The name to display for the player. |
| `experienceInfo` | `GamesPlayerExperienceInfoResource` | An object to represent Play Game experience information for the player. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#... |
| `name` | `object` | An object representation of the individual components of the player's name. For some players, the... |
| `originalPlayerId` | `string` | The player ID that was used for this player the first time they signed into the game in question.... |
| `playerId` | `string` | The ID of the player. |
| `profileSettings` | `ProfileSettings` | The player's profile settings. Controls whether or not the player's profile is visible to other p... |
| `title` | `string` | The player's title rewarded for their game activities. |

### `PlayerScoreResetAllResponse`

A list of leaderboard reset resources.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#... |
| `results` | `array<PlayerScoreResetResponse>` | The leaderboard reset results. |

### `PlayerScoreResetResponse`

A list of reset leaderboard entry resources.

| Property | Type | Description |
|----------|------|-------------|
| `definitionId` | `string` | The ID of an leaderboard for which player state has been updated. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#... |
| `resetScoreTimeSpans` | `array<string>` | The time spans of the updated score. Possible values are: - "`ALL_TIME`" - The score is an all-ti... |

### `ProfileSettings`

Profile settings

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#... |
| `profileVisible` | `boolean` |  |

### `ScoresResetMultipleForAllRequest`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#... |
| `leaderboard_ids` | `array<string>` | The IDs of leaderboards to reset. |

