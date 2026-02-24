# Google Play Games Services API - API Reference

**Version**: `v1` | **Methods**: 39 | **Schemas**: 77

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `games.achievementDefinitions.list` | GET | `games/v1/achievements` | Lists all the achievement definitions for your application. |
| `games.scores.get` | GET | `games/v1/players/{playerId}/leaderboards/{leaderboardId}/scores/{timeSpan}` | Get high scores, and optionally ranks, in leaderboards for the currently authenticated player. Fo... |
| `games.scores.list` | GET | `games/v1/leaderboards/{leaderboardId}/scores/{collection}` | Lists the scores in a leaderboard, starting from the top. |
| `games.scores.submitMultiple` | POST | `games/v1/leaderboards/scores` | Submits multiple scores to leaderboards. |
| `games.scores.listWindow` | GET | `games/v1/leaderboards/{leaderboardId}/window/{collection}` | Lists the scores in a leaderboard around (and including) a player's score. |
| `games.scores.submit` | POST | `games/v1/leaderboards/{leaderboardId}/scores` | Submits a score to the specified leaderboard. |
| `games.leaderboards.get` | GET | `games/v1/leaderboards/{leaderboardId}` | Retrieves the metadata of the leaderboard with the given ID. |
| `games.leaderboards.list` | GET | `games/v1/leaderboards` | Lists all the leaderboard metadata for your application. |
| `games.players.get` | GET | `games/v1/players/{playerId}` | Retrieves the Player resource with the given ID. To retrieve the player for the currently authent... |
| `games.players.list` | GET | `games/v1/players/me/players/{collection}` | Get the collection of players for the currently authenticated user. |
| `games.players.getScopedPlayerIds` | GET | `games/v1/players/me/scopedIds` | Retrieves scoped player identifiers for currently authenticated user. |
| `games.players.getMultipleApplicationPlayerIds` | GET | `games/v1/players/me/multipleApplicationPlayerIds` | Get the application player ids for the currently authenticated player across all requested games ... |
| `games.stats.get` | GET | `games/v1/stats` | Returns engagement and spend statistics in this application for the currently authenticated user. |
| `games.recall.retrieveTokens` | GET | `games/v1/recall/tokens/{sessionId}` | Retrieve all Recall tokens associated with the PGS Player encoded in the provided recall session ... |
| `games.recall.linkPersona` | POST | `games/v1/recall:linkPersona` | Associate the PGS Player principal encoded in the provided recall session id with an in-game account |
| `games.recall.resetPersona` | POST | `games/v1/recall:resetPersona` | Delete all Recall tokens linking the given persona to any player (with or without a profile). |
| `games.recall.lastTokenFromAllDeveloperGames` | GET | `games/v1/recall/developerGamesLastPlayerToken/{sessionId}` | Retrieve the last Recall token from all developer games that is associated with the PGS Player en... |
| `games.recall.gamesPlayerTokens` | GET | `games/v1/recall/gamesPlayerTokens/{sessionId}` | Retrieve the Recall tokens from all requested games that is associated with the PGS Player encode... |
| `games.recall.unlinkPersona` | POST | `games/v1/recall:unlinkPersona` | Delete a Recall token linking the PGS Player principal identified by the Recall session and an in... |
| `games.metagame.getMetagameConfig` | GET | `games/v1/metagameConfig` | Return the metagame configuration data for the calling application. |
| `games.metagame.listCategoriesByPlayer` | GET | `games/v1/players/{playerId}/categories/{collection}` | List play data aggregated per category for the player corresponding to `playerId`. |
| `games.revisions.check` | GET | `games/v1/revisions/check` | Checks whether the games client is out of date. |
| `games.achievements.reveal` | POST | `games/v1/achievements/{achievementId}/reveal` | Sets the state of the achievement with the given ID to `REVEALED` for the currently authenticated... |
| `games.achievements.increment` | POST | `games/v1/achievements/{achievementId}/increment` | Increments the steps of the achievement with the given ID for the currently authenticated player. |
| `games.achievements.list` | GET | `games/v1/players/{playerId}/achievements` | Lists the progress for all your application's achievements for the currently authenticated player. |
| `games.achievements.setStepsAtLeast` | POST | `games/v1/achievements/{achievementId}/setStepsAtLeast` | Sets the steps for the currently authenticated player towards unlocking an achievement. If the st... |
| `games.achievements.updateMultiple` | POST | `games/v1/achievements/updateMultiple` | Updates multiple achievements for the currently authenticated player. |
| `games.achievements.unlock` | POST | `games/v1/achievements/{achievementId}/unlock` | Unlocks this achievement for the currently authenticated player. |
| `games.events.listByPlayer` | GET | `games/v1/events` | Returns a list showing the current progress on events in this application for the currently authe... |
| `games.events.listDefinitions` | GET | `games/v1/eventDefinitions` | Returns a list of the event definitions in this application. |
| `games.events.record` | POST | `games/v1/events` | Records a batch of changes to the number of times events have occurred for the currently authenti... |
| `games.accesstokens.generatePlayGroupingApiToken` | POST | `games/v1/accesstokens/generatePlayGroupingApiToken` | Generates a Play Grouping API token for the PGS user identified by the attached credential. |
| `games.accesstokens.generateRecallPlayGroupingApiToken` | POST | `games/v1/accesstokens/generateRecallPlayGroupingApiToken` | Generates a Play Grouping API token for the PGS user identified by the Recall session ID provided... |
| `games.applications.verify` | GET | `games/v1/applications/{applicationId}/verify` | Verifies the auth token provided with this request is for the application with the specified ID, ... |
| `games.applications.get` | GET | `games/v1/applications/{applicationId}` | Retrieves the metadata of the application with the given ID. If the requested application is not ... |
| `games.applications.played` | POST | `games/v1/applications/played` | Indicate that the currently authenticated user is playing your application. |
| `games.applications.getEndPoint` | POST | `games/v1/applications/getEndPoint` | Returns a URL for the requested end point type. |
| `games.snapshots.list` | GET | `games/v1/players/{playerId}/snapshots` | Retrieves a list of snapshots created by your application for the player corresponding to the pla... |
| `games.snapshots.get` | GET | `games/v1/snapshots/{snapshotId}` | Retrieves the metadata for a given snapshot ID. |

### `games.achievementDefinitions.list`

**GET** `games/v1/achievements`

Lists all the achievement definitions for your application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `maxResults` | `integer` | query | No | The maximum number of achievement resources to return in the response, used for paging. For any response, the actual ... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `AchievementDefinitionsListResponse`

```typescript
const res = await games.achievementDefinitions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.scores.get`

**GET** `games/v1/players/{playerId}/leaderboards/{leaderboardId}/scores/{timeSpan}`

Get high scores, and optionally ranks, in leaderboards for the currently authenticated player. For a specific time span, `leaderboardId` can be set to `ALL` to retrieve data for all leaderboards in a given time span. `NOTE: You cannot ask for 'ALL' leaderboards and 'ALL' timeSpans in the same request; only one parameter may be set to 'ALL'.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `playerId` | `string` | path | Yes | A player ID. A value of `me` may be used in place of the authenticated player's ID. |
| `leaderboardId` | `string` | path | Yes | The ID of the leaderboard. Can be set to 'ALL' to retrieve data for all leaderboards for this application. |
| `timeSpan` | `string` | path | Yes | The time span for the scores and ranks you're requesting. |
| `includeRankType` | `string` | query | No | The types of ranks to return. If the parameter is omitted, no ranks will be returned. |
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `maxResults` | `integer` | query | No | The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboar... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `PlayerLeaderboardScoreListResponse`

```typescript
const res = await games.scores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.scores.list`

**GET** `games/v1/leaderboards/{leaderboardId}/scores/{collection}`

Lists the scores in a leaderboard, starting from the top.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `leaderboardId` | `string` | path | Yes | The ID of the leaderboard. |
| `collection` | `string` | path | Yes | The collection of scores you're requesting. |
| `timeSpan` | `string` | query | Yes | Required. The time span for the scores and ranks you're requesting. |
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `maxResults` | `integer` | query | No | The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboar... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `LeaderboardScores`

```typescript
const res = await games.scores.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.scores.submitMultiple`

**POST** `games/v1/leaderboards/scores`

Submits multiple scores to leaderboards.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |

**Request body**: `PlayerScoreSubmissionList`

**Response**: `PlayerScoreListResponse`

```typescript
const res = await games.scores.submitMultiple({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.scores.listWindow`

**GET** `games/v1/leaderboards/{leaderboardId}/window/{collection}`

Lists the scores in a leaderboard around (and including) a player's score.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `leaderboardId` | `string` | path | Yes | The ID of the leaderboard. |
| `collection` | `string` | path | Yes | The collection of scores you're requesting. |
| `timeSpan` | `string` | query | Yes | Required. The time span for the scores and ranks you're requesting. |
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `maxResults` | `integer` | query | No | The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboar... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |
| `resultsAbove` | `integer` | query | No | The preferred number of scores to return above the player's score. More scores may be returned if the player is at th... |
| `returnTopIfAbsent` | `boolean` | query | No | True if the top scores should be returned when the player is not in the leaderboard. Defaults to true. |

**Response**: `LeaderboardScores`

```typescript
const res = await games.scores.listWindow({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.scores.submit`

**POST** `games/v1/leaderboards/{leaderboardId}/scores`

Submits a score to the specified leaderboard.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `leaderboardId` | `string` | path | Yes | The ID of the leaderboard. |
| `score` | `string` | query | Yes | Required. The score you're submitting. The submitted score is ignored if it is worse than a previously submitted scor... |
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `scoreTag` | `string` | query | No | Additional information about the score you're submitting. Values must contain no more than 64 URI-safe characters as ... |

**Response**: `PlayerScoreResponse`

```typescript
const res = await games.scores.submit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.leaderboards.get`

**GET** `games/v1/leaderboards/{leaderboardId}`

Retrieves the metadata of the leaderboard with the given ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `leaderboardId` | `string` | path | Yes | The ID of the leaderboard. |
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |

**Response**: `Leaderboard`

```typescript
const res = await games.leaderboards.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.leaderboards.list`

**GET** `games/v1/leaderboards`

Lists all the leaderboard metadata for your application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `maxResults` | `integer` | query | No | The maximum number of leaderboards to return in the response. For any response, the actual number of leaderboards ret... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `LeaderboardListResponse`

```typescript
const res = await games.leaderboards.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.players.get`

**GET** `games/v1/players/{playerId}`

Retrieves the Player resource with the given ID. To retrieve the player for the currently authenticated user, set `playerId` to `me`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `playerId` | `string` | path | Yes | A player ID. A value of `me` may be used in place of the authenticated player's ID. |
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `playerIdConsistencyToken` | `string` | query | No | Consistency token of the player id. The call returns a 'not found' result when the token is present and invalid. Empt... |

**Response**: `Player`

```typescript
const res = await games.players.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.players.list`

**GET** `games/v1/players/me/players/{collection}`

Get the collection of players for the currently authenticated user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `collection` | `string` | path | Yes | Collection of players being retrieved |
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `maxResults` | `integer` | query | No | The maximum number of player resources to return in the response, used for paging. For any response, the actual numbe... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `PlayerListResponse`

```typescript
const res = await games.players.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.players.getScopedPlayerIds`

**GET** `games/v1/players/me/scopedIds`

Retrieves scoped player identifiers for currently authenticated user.

**Response**: `ScopedPlayerIds`

```typescript
const res = await games.players.getScopedPlayerIds({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.players.getMultipleApplicationPlayerIds`

**GET** `games/v1/players/me/multipleApplicationPlayerIds`

Get the application player ids for the currently authenticated player across all requested games by the same developer as the calling application. This will only return ids for players that actually have an id (scoped or otherwise) with that game.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `applicationIds` | `string` | query | No | Required. The application IDs from the Google Play developer console for the games to return scoped ids for. |

**Response**: `GetMultipleApplicationPlayerIdsResponse`

```typescript
const res = await games.players.getMultipleApplicationPlayerIds({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.stats.get`

**GET** `games/v1/stats`

Returns engagement and spend statistics in this application for the currently authenticated user.

**Response**: `StatsResponse`

```typescript
const res = await games.stats.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.recall.retrieveTokens`

**GET** `games/v1/recall/tokens/{sessionId}`

Retrieve all Recall tokens associated with the PGS Player encoded in the provided recall session id. The API is only available for users that have active PGS Player profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sessionId` | `string` | path | Yes | Required. Opaque server-generated string that encodes all the necessary information to identify the PGS player / Goog... |

**Response**: `RetrievePlayerTokensResponse`

```typescript
const res = await games.recall.retrieveTokens({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `games.recall.linkPersona`

**POST** `games/v1/recall:linkPersona`

Associate the PGS Player principal encoded in the provided recall session id with an in-game account

**Request body**: `LinkPersonaRequest`

**Response**: `LinkPersonaResponse`

```typescript
const res = await games.recall.linkPersona({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `games.recall.resetPersona`

**POST** `games/v1/recall:resetPersona`

Delete all Recall tokens linking the given persona to any player (with or without a profile).

**Request body**: `ResetPersonaRequest`

**Response**: `ResetPersonaResponse`

```typescript
const res = await games.recall.resetPersona({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `games.recall.lastTokenFromAllDeveloperGames`

**GET** `games/v1/recall/developerGamesLastPlayerToken/{sessionId}`

Retrieve the last Recall token from all developer games that is associated with the PGS Player encoded in the provided recall session id. The API is only available for users that have active PGS Player profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sessionId` | `string` | path | Yes | Required. Opaque server-generated string that encodes all the necessary information to identify the PGS player / Goog... |

**Response**: `RetrieveDeveloperGamesLastPlayerTokenResponse`

```typescript
const res = await games.recall.lastTokenFromAllDeveloperGames({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `games.recall.gamesPlayerTokens`

**GET** `games/v1/recall/gamesPlayerTokens/{sessionId}`

Retrieve the Recall tokens from all requested games that is associated with the PGS Player encoded in the provided recall session id. The API is only available for users that have an active PGS Player profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sessionId` | `string` | path | Yes | Required. Opaque server-generated string that encodes all the necessary information to identify the PGS player / Goog... |
| `applicationIds` | `string` | query | No | Required. The application IDs from the Google Play developer console for the games to return scoped ids for. |

**Response**: `RetrieveGamesPlayerTokensResponse`

```typescript
const res = await games.recall.gamesPlayerTokens({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `games.recall.unlinkPersona`

**POST** `games/v1/recall:unlinkPersona`

Delete a Recall token linking the PGS Player principal identified by the Recall session and an in-game account identified either by the 'persona' or by the token value.

**Request body**: `UnlinkPersonaRequest`

**Response**: `UnlinkPersonaResponse`

```typescript
const res = await games.recall.unlinkPersona({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `games.metagame.getMetagameConfig`

**GET** `games/v1/metagameConfig`

Return the metagame configuration data for the calling application.

**Response**: `MetagameConfig`

```typescript
const res = await games.metagame.getMetagameConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.metagame.listCategoriesByPlayer`

**GET** `games/v1/players/{playerId}/categories/{collection}`

List play data aggregated per category for the player corresponding to `playerId`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `playerId` | `string` | path | Yes | A player ID. A value of `me` may be used in place of the authenticated player's ID. |
| `collection` | `string` | path | Yes | The collection of categories for which data will be returned. |
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `maxResults` | `integer` | query | No | The maximum number of category resources to return in the response, used for paging. For any response, the actual num... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `CategoryListResponse`

```typescript
const res = await games.metagame.listCategoriesByPlayer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.revisions.check`

**GET** `games/v1/revisions/check`

Checks whether the games client is out of date.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `clientRevision` | `string` | query | Yes | Required. The revision of the client SDK used by your application. Format: `[PLATFORM_TYPE]:[VERSION_NUMBER]`. Possib... |

**Response**: `RevisionCheckResponse`

```typescript
const res = await games.revisions.check({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.achievements.reveal`

**POST** `games/v1/achievements/{achievementId}/reveal`

Sets the state of the achievement with the given ID to `REVEALED` for the currently authenticated player.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `achievementId` | `string` | path | Yes | The ID of the achievement used by this method. |

**Response**: `AchievementRevealResponse`

```typescript
const res = await games.achievements.reveal({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.achievements.increment`

**POST** `games/v1/achievements/{achievementId}/increment`

Increments the steps of the achievement with the given ID for the currently authenticated player.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `achievementId` | `string` | path | Yes | The ID of the achievement used by this method. |
| `stepsToIncrement` | `integer` | query | Yes | Required. The number of steps to increment. |
| `requestId` | `string` | query | No | A randomly generated numeric ID for each request specified by the caller. This number is used at the server to ensure... |

**Response**: `AchievementIncrementResponse`

```typescript
const res = await games.achievements.increment({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.achievements.list`

**GET** `games/v1/players/{playerId}/achievements`

Lists the progress for all your application's achievements for the currently authenticated player.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `playerId` | `string` | path | Yes | A player ID. A value of `me` may be used in place of the authenticated player's ID. |
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `maxResults` | `integer` | query | No | The maximum number of achievement resources to return in the response, used for paging. For any response, the actual ... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |
| `state` | `string` | query | No | Tells the server to return only achievements with the specified state. If this parameter isn't specified, all achieve... |

**Response**: `PlayerAchievementListResponse`

```typescript
const res = await games.achievements.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.achievements.setStepsAtLeast`

**POST** `games/v1/achievements/{achievementId}/setStepsAtLeast`

Sets the steps for the currently authenticated player towards unlocking an achievement. If the steps parameter is less than the current number of steps that the player already gained for the achievement, the achievement is not modified.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `achievementId` | `string` | path | Yes | The ID of the achievement used by this method. |
| `steps` | `integer` | query | Yes | Required. The minimum value to set the steps to. |

**Response**: `AchievementSetStepsAtLeastResponse`

```typescript
const res = await games.achievements.setStepsAtLeast({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.achievements.updateMultiple`

**POST** `games/v1/achievements/updateMultiple`

Updates multiple achievements for the currently authenticated player.

**Request body**: `AchievementUpdateMultipleRequest`

**Response**: `AchievementUpdateMultipleResponse`

```typescript
const res = await games.achievements.updateMultiple({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.achievements.unlock`

**POST** `games/v1/achievements/{achievementId}/unlock`

Unlocks this achievement for the currently authenticated player.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `achievementId` | `string` | path | Yes | The ID of the achievement used by this method. |

**Response**: `AchievementUnlockResponse`

```typescript
const res = await games.achievements.unlock({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.events.listByPlayer`

**GET** `games/v1/events`

Returns a list showing the current progress on events in this application for the currently authenticated user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `maxResults` | `integer` | query | No | The maximum number of events to return in the response, used for paging. For any response, the actual number of event... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `PlayerEventListResponse`

```typescript
const res = await games.events.listByPlayer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.events.listDefinitions`

**GET** `games/v1/eventDefinitions`

Returns a list of the event definitions in this application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `maxResults` | `integer` | query | No | The maximum number of event definitions to return in the response, used for paging. For any response, the actual numb... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `EventDefinitionListResponse`

```typescript
const res = await games.events.listDefinitions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.events.record`

**POST** `games/v1/events`

Records a batch of changes to the number of times events have occurred for the currently authenticated user of this application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |

**Request body**: `EventRecordRequest`

**Response**: `EventUpdateResponse`

```typescript
const res = await games.events.record({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.accesstokens.generatePlayGroupingApiToken`

**POST** `games/v1/accesstokens/generatePlayGroupingApiToken`

Generates a Play Grouping API token for the PGS user identified by the attached credential.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | query | No | Required. App package name to generate the token for (e.g. com.example.mygame). |
| `persona` | `string` | query | No | Required. Persona to associate with the token. Persona is a developer-provided stable identifier of the user. Must be... |

**Response**: `GeneratePlayGroupingApiTokenResponse`

```typescript
const res = await games.accesstokens.generatePlayGroupingApiToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.accesstokens.generateRecallPlayGroupingApiToken`

**POST** `games/v1/accesstokens/generateRecallPlayGroupingApiToken`

Generates a Play Grouping API token for the PGS user identified by the Recall session ID provided in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | query | No | Required. App package name to generate the token for (e.g. com.example.mygame). |
| `persona` | `string` | query | No | Required. Persona to associate with the token. Persona is a developer-provided stable identifier of the user. Must be... |
| `recallSessionId` | `string` | query | No | Required. Opaque server-generated string that encodes all the necessary information to identify the PGS player / Goog... |

**Response**: `GenerateRecallPlayGroupingApiTokenResponse`

```typescript
const res = await games.accesstokens.generateRecallPlayGroupingApiToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `games.applications.verify`

**GET** `games/v1/applications/{applicationId}/verify`

Verifies the auth token provided with this request is for the application with the specified ID, and returns the ID of the player it was granted for.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `applicationId` | `string` | path | Yes | The application ID from the Google Play developer console. |

**Response**: `ApplicationVerifyResponse`

```typescript
const res = await games.applications.verify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.applications.get`

**GET** `games/v1/applications/{applicationId}`

Retrieves the metadata of the application with the given ID. If the requested application is not available for the specified `platformType`, the returned response will not include any instance data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `applicationId` | `string` | path | Yes | The application ID from the Google Play developer console. |
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `platformType` | `string` | query | No | Restrict application details returned to the specific platform. |

**Response**: `Application`

```typescript
const res = await games.applications.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.applications.played`

**POST** `games/v1/applications/played`

Indicate that the currently authenticated user is playing your application.

```typescript
const res = await games.applications.played({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.applications.getEndPoint`

**POST** `games/v1/applications/getEndPoint`

Returns a URL for the requested end point type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `applicationId` | `string` | query | No | The application ID from the Google Play developer console. |
| `endPointType` | `string` | query | No | Type of endpoint being requested. |

**Response**: `EndPoint`

```typescript
const res = await games.applications.getEndPoint({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/games`

---

### `games.snapshots.list`

**GET** `games/v1/players/{playerId}/snapshots`

Retrieves a list of snapshots created by your application for the player corresponding to the player ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `playerId` | `string` | path | Yes | A player ID. A value of `me` may be used in place of the authenticated player's ID. |
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |
| `maxResults` | `integer` | query | No | The maximum number of snapshot resources to return in the response, used for paging. For any response, the actual num... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `SnapshotListResponse`

```typescript
const res = await games.snapshots.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/games`

---

### `games.snapshots.get`

**GET** `games/v1/snapshots/{snapshotId}`

Retrieves the metadata for a given snapshot ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `snapshotId` | `string` | path | Yes | The ID of the snapshot. |
| `language` | `string` | query | No | The preferred language to use for strings returned by this method. |

**Response**: `Snapshot`

```typescript
const res = await games.snapshots.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/games`

---

## Schemas

### `AchievementDefinition`

An achievement definition object.

| Property | Type | Description |
|----------|------|-------------|
| `achievementType` | `string` | The type of the achievement. |
| `description` | `string` | The description of the achievement. |
| `experiencePoints` | `string` | Experience points which will be earned when unlocking this achievement. |
| `formattedTotalSteps` | `string` | The total steps for an incremental achievement as a string. |
| `id` | `string` | The ID of the achievement. |
| `initialState` | `string` | The initial state of the achievement. |
| `isRevealedIconUrlDefault` | `boolean` | Indicates whether the revealed icon image being returned is a default image, or is provided by th... |
| `isUnlockedIconUrlDefault` | `boolean` | Indicates whether the unlocked icon image being returned is a default image, or is game-provided. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#achievemen... |
| `name` | `string` | The name of the achievement. |
| `revealedIconUrl` | `string` | The image URL for the revealed achievement icon. |
| `totalSteps` | `integer` | The total steps for an incremental achievement. |
| `unlockedIconUrl` | `string` | The image URL for the unlocked achievement icon. |

### `AchievementDefinitionsListResponse`

A list of achievement definition objects.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<AchievementDefinition>` | The achievement definitions. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#achievemen... |
| `nextPageToken` | `string` | Token corresponding to the next page of results. |

### `AchievementIncrementResponse`

An achievement increment response

| Property | Type | Description |
|----------|------|-------------|
| `currentSteps` | `integer` | The current steps recorded for this incremental achievement. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#achievemen... |
| `newlyUnlocked` | `boolean` | Whether the current steps for the achievement has reached the number of steps required to unlock. |

### `AchievementRevealResponse`

An achievement reveal response

| Property | Type | Description |
|----------|------|-------------|
| `currentState` | `string` | The current state of the achievement for which a reveal was attempted. This might be `UNLOCKED` i... |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#achievemen... |

### `AchievementSetStepsAtLeastResponse`

An achievement set steps at least response.

| Property | Type | Description |
|----------|------|-------------|
| `currentSteps` | `integer` | The current steps recorded for this incremental achievement. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#achievemen... |
| `newlyUnlocked` | `boolean` | Whether the current steps for the achievement has reached the number of steps required to unlock. |

### `AchievementUnlockResponse`

An achievement unlock response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#achievemen... |
| `newlyUnlocked` | `boolean` | Whether this achievement was newly unlocked (that is, whether the unlock request for the achievem... |

### `AchievementUpdateMultipleRequest`

A list of achievement update requests.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#achievemen... |
| `updates` | `array<AchievementUpdateRequest>` | The individual achievement update requests. |

### `AchievementUpdateMultipleResponse`

Response message for UpdateMultipleAchievements rpc.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#achievemen... |
| `updatedAchievements` | `array<AchievementUpdateResponse>` | The updated state of the achievements. |

### `AchievementUpdateRequest`

A request to update an achievement.

| Property | Type | Description |
|----------|------|-------------|
| `achievementId` | `string` | The achievement this update is being applied to. |
| `incrementPayload` | `GamesAchievementIncrement` | The payload if an update of type `INCREMENT` was requested for the achievement. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#achievemen... |
| `setStepsAtLeastPayload` | `GamesAchievementSetStepsAtLeast` | The payload if an update of type `SET_STEPS_AT_LEAST` was requested for the achievement. |
| `updateType` | `string` | The type of update being applied. |

### `AchievementUpdateResponse`

An updated achievement.

| Property | Type | Description |
|----------|------|-------------|
| `achievementId` | `string` | The achievement this update is was applied to. |
| `currentState` | `string` | The current state of the achievement. |
| `currentSteps` | `integer` | The current steps recorded for this achievement if it is incremental. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#achievemen... |
| `newlyUnlocked` | `boolean` | Whether this achievement was newly unlocked (that is, whether the unlock request for the achievem... |
| `updateOccurred` | `boolean` | Whether the requested updates actually affected the achievement. |

### `Application`

The Application resource.

| Property | Type | Description |
|----------|------|-------------|
| `achievement_count` | `integer` | The number of achievements visible to the currently authenticated player. |
| `assets` | `array<ImageAsset>` | The assets of the application. |
| `author` | `string` | The author of the application. |
| `category` | `ApplicationCategory` | The category of the application. |
| `description` | `string` | The description of the application. |
| `enabledFeatures` | `array<string>` | A list of features that have been enabled for the application. |
| `id` | `string` | The ID of the application. |
| `instances` | `array<Instance>` | The instances of the application. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#application`. |
| `lastUpdatedTimestamp` | `string` | The last updated timestamp of the application. |
| `leaderboard_count` | `integer` | The number of leaderboards visible to the currently authenticated player. |
| `name` | `string` | The name of the application. |
| `themeColor` | `string` | A hint to the client UI for what color to use as an app-themed color. The color is given as an RG... |

### `ApplicationCategory`

An application category object.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#applicatio... |
| `primary` | `string` | The primary category. |
| `secondary` | `string` | The secondary category. |

### `ApplicationPlayerId`

Primary scoped player identifier for an application.

| Property | Type | Description |
|----------|------|-------------|
| `applicationId` | `string` | The application that this player identifier is for. |
| `playerId` | `string` | The player identifier for the application. |

### `ApplicationVerifyResponse`

A third party application verification response resource.

| Property | Type | Description |
|----------|------|-------------|
| `alternate_player_id` | `string` | An alternate ID that was once used for the player that was issued the auth token used in this req... |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#applicatio... |
| `player_id` | `string` | The ID of the player that was issued the auth token used in this request. |

### `Category`

Data related to individual game categories.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | The category name. |
| `experiencePoints` | `string` | Experience points earned in this category. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#category`. |

### `CategoryListResponse`

A third party list metagame categories response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Category>` | The list of categories with usage data. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#categoryLi... |
| `nextPageToken` | `string` | Token corresponding to the next page of results. |

### `EndPoint`

Container for a URL end point of the requested type.

| Property | Type | Description |
|----------|------|-------------|
| `url` | `string` | A URL suitable for loading in a web browser for the requested endpoint. |

### `EventBatchRecordFailure`

A batch update failure resource.

| Property | Type | Description |
|----------|------|-------------|
| `failureCause` | `string` | The cause for the update failure. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#eventBatch... |
| `range` | `EventPeriodRange` | The time range which was rejected; empty for a request-wide failure. |

### `EventChild`

An event child relationship resource.

| Property | Type | Description |
|----------|------|-------------|
| `childId` | `string` | The ID of the child event. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#eventChild`. |

### `EventDefinition`

An event definition resource.

| Property | Type | Description |
|----------|------|-------------|
| `childEvents` | `array<EventChild>` | A list of events that are a child of this event. |
| `description` | `string` | Description of what this event represents. |
| `displayName` | `string` | The name to display for the event. |
| `id` | `string` | The ID of the event. |
| `imageUrl` | `string` | The base URL for the image that represents the event. |
| `isDefaultImageUrl` | `boolean` | Indicates whether the icon image being returned is a default image, or is game-provided. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#eventDefin... |
| `visibility` | `string` | The visibility of event being tracked in this definition. |

### `EventDefinitionListResponse`

A ListDefinitions response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<EventDefinition>` | The event definitions. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#eventDefin... |
| `nextPageToken` | `string` | The pagination token for the next page of results. |

### `EventPeriodRange`

An event period time range.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#eventPerio... |
| `periodEndMillis` | `string` | The time when this update period ends, in millis, since 1970 UTC (Unix Epoch). |
| `periodStartMillis` | `string` | The time when this update period begins, in millis, since 1970 UTC (Unix Epoch). |

### `EventPeriodUpdate`

An event period update resource.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#eventPerio... |
| `timePeriod` | `EventPeriodRange` | The time period being covered by this update. |
| `updates` | `array<EventUpdateRequest>` | The updates being made for this time period. |

### `EventRecordFailure`

An event update failure resource.

| Property | Type | Description |
|----------|------|-------------|
| `eventId` | `string` | The ID of the event that was not updated. |
| `failureCause` | `string` | The cause for the update failure. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#eventRecor... |

### `EventRecordRequest`

An event period update resource.

| Property | Type | Description |
|----------|------|-------------|
| `currentTimeMillis` | `string` | The current time when this update was sent, in milliseconds, since 1970 UTC (Unix Epoch). |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#eventRecor... |
| `requestId` | `string` | The request ID used to identify this attempt to record events. |
| `timePeriods` | `array<EventPeriodUpdate>` | A list of the time period updates being made in this request. |

### `EventUpdateRequest`

An event period update resource.

| Property | Type | Description |
|----------|------|-------------|
| `definitionId` | `string` | The ID of the event being modified in this update. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#eventUpdat... |
| `updateCount` | `string` | The number of times this event occurred in this time period. |

### `EventUpdateResponse`

An event period update resource.

| Property | Type | Description |
|----------|------|-------------|
| `batchFailures` | `array<EventBatchRecordFailure>` | Any batch-wide failures which occurred applying updates. |
| `eventFailures` | `array<EventRecordFailure>` | Any failures updating a particular event. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#eventUpdat... |
| `playerEvents` | `array<PlayerEvent>` | The current status of any updated events |

### `GamePlayerToken`

Recall tokens for a game.

| Property | Type | Description |
|----------|------|-------------|
| `applicationId` | `string` | The application that this player identifier is for. |
| `recallToken` | `RecallToken` | Recall token data. |

### `GamesAchievementIncrement`

The payload to request to increment an achievement.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#GamesAchie... |
| `requestId` | `string` | The requestId associated with an increment to an achievement. |
| `steps` | `integer` | The number of steps to be incremented. |

### `GamesAchievementSetStepsAtLeast`

The payload to request to increment an achievement.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#GamesAchie... |
| `steps` | `integer` | The minimum number of steps for the achievement to be set to. |

### `GeneratePlayGroupingApiTokenResponse`

Response for the GeneratePlayGroupingApiToken RPC.

| Property | Type | Description |
|----------|------|-------------|
| `token` | `PlayGroupingApiToken` | Token for accessing the Play Grouping API. |

### `GenerateRecallPlayGroupingApiTokenResponse`

Response for the GenerateRecallPlayGroupingApiToken RPC.

| Property | Type | Description |
|----------|------|-------------|
| `token` | `PlayGroupingApiToken` | Token for accessing the Play Grouping API. |

### `GetMultipleApplicationPlayerIdsResponse`

Response message for GetMultipleApplicationPlayerIds rpc.

| Property | Type | Description |
|----------|------|-------------|
| `playerIds` | `array<ApplicationPlayerId>` | Output only. The requested applications along with the scoped ids for tha player, if that player ... |

### `ImageAsset`

An image asset object.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | The height of the asset. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#imageAsset`. |
| `name` | `string` | The name of the asset. |
| `url` | `string` | The URL of the asset. |
| `width` | `integer` | The width of the asset. |

### `Instance`

The Instance resource.

| Property | Type | Description |
|----------|------|-------------|
| `acquisitionUri` | `string` | URI which shows where a user can acquire this instance. |
| `androidInstance` | `InstanceAndroidDetails` | Platform dependent details for Android. |
| `iosInstance` | `InstanceIosDetails` | Platform dependent details for iOS. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#instance`. |
| `name` | `string` | Localized display name. |
| `platformType` | `string` | The platform type. |
| `realtimePlay` | `boolean` | Flag to show if this game instance supports realtime play. |
| `turnBasedPlay` | `boolean` | Flag to show if this game instance supports turn based play. |
| `webInstance` | `InstanceWebDetails` | Platform dependent details for Web. |

### `InstanceAndroidDetails`

The Android instance details resource.

| Property | Type | Description |
|----------|------|-------------|
| `enablePiracyCheck` | `boolean` | Flag indicating whether the anti-piracy check is enabled. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#instanceAn... |
| `packageName` | `string` | Android package name which maps to Google Play URL. |
| `preferred` | `boolean` | Indicates that this instance is the default for new installations. |

### `InstanceIosDetails`

The iOS details resource.

| Property | Type | Description |
|----------|------|-------------|
| `bundleIdentifier` | `string` | Bundle identifier. |
| `itunesAppId` | `string` | iTunes App ID. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#instanceIo... |
| `preferredForIpad` | `boolean` | Indicates that this instance is the default for new installations on iPad devices. |
| `preferredForIphone` | `boolean` | Indicates that this instance is the default for new installations on iPhone devices. |
| `supportIpad` | `boolean` | Flag to indicate if this instance supports iPad. |
| `supportIphone` | `boolean` | Flag to indicate if this instance supports iPhone. |

### `InstanceWebDetails`

The Web details resource.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#instanceWe... |
| `launchUrl` | `string` | Launch URL for the game. |
| `preferred` | `boolean` | Indicates that this instance is the default for new installations. |

### `Leaderboard`

The Leaderboard resource.

| Property | Type | Description |
|----------|------|-------------|
| `iconUrl` | `string` | The icon for the leaderboard. |
| `id` | `string` | The leaderboard ID. |
| `isIconUrlDefault` | `boolean` | Indicates whether the icon image being returned is a default image, or is game-provided. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#leaderboard`. |
| `name` | `string` | The name of the leaderboard. |
| `order` | `string` | How scores are ordered. |

### `LeaderboardEntry`

The Leaderboard Entry resource.

| Property | Type | Description |
|----------|------|-------------|
| `formattedScore` | `string` | The localized string for the numerical value of this score. |
| `formattedScoreRank` | `string` | The localized string for the rank of this score for this leaderboard. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#leaderboar... |
| `player` | `Player` | The player who holds this score. |
| `scoreRank` | `string` | The rank of this score for this leaderboard. |
| `scoreTag` | `string` | Additional information about the score. Values must contain no more than 64 URI-safe characters a... |
| `scoreValue` | `string` | The numerical value of this score. |
| `timeSpan` | `string` | The time span of this high score. |
| `writeTimestampMillis` | `string` | The timestamp at which this score was recorded, in milliseconds since the epoch in UTC. |

### `LeaderboardListResponse`

A list of leaderboard objects.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Leaderboard>` | The leaderboards. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#leaderboar... |
| `nextPageToken` | `string` | Token corresponding to the next page of results. |

### `LeaderboardScoreRank`

A score rank in a leaderboard.

| Property | Type | Description |
|----------|------|-------------|
| `formattedNumScores` | `string` | The number of scores in the leaderboard as a string. |
| `formattedRank` | `string` | The rank in the leaderboard as a string. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#leaderboar... |
| `numScores` | `string` | The number of scores in the leaderboard. |
| `rank` | `string` | The rank in the leaderboard. |

### `LeaderboardScores`

A ListScores response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<LeaderboardEntry>` | The scores in the leaderboard. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#leaderboar... |
| `nextPageToken` | `string` | The pagination token for the next page of results. |
| `numScores` | `string` | The total number of scores in the leaderboard. |
| `playerScore` | `LeaderboardEntry` | The score of the requesting player on the leaderboard. The player's score may appear both here an... |
| `prevPageToken` | `string` | The pagination token for the previous page of results. |

### `LinkPersonaRequest`

Request to link an in-game account with a PGS principal (encoded in the session id).

| Property | Type | Description |
|----------|------|-------------|
| `cardinalityConstraint` | `string` | Required. Cardinality constraint to observe when linking a persona to a player in the scope of a ... |
| `conflictingLinksResolutionPolicy` | `string` | Required. Resolution policy to apply when the linking of a persona to a player would result in vi... |
| `expireTime` | `string` | Input only. Optional expiration time. |
| `persona` | `string` | Required. Stable identifier of the in-game account. Please refrain from re-using the same persona... |
| `sessionId` | `string` | Required. Opaque server-generated string that encodes all the necessary information to identify t... |
| `token` | `string` | Required. Value of the token to create. Opaque to Play Games and assumed to be non-stable (encryp... |
| `ttl` | `string` | Input only. Optional time-to-live. |

### `LinkPersonaResponse`

Outcome of a persona linking attempt.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. State of a persona linking attempt. |

### `MetagameConfig`

The metagame config resource

| Property | Type | Description |
|----------|------|-------------|
| `currentVersion` | `integer` | Current version of the metagame configuration data. When this data is updated, the version number... |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#metagameCo... |
| `playerLevels` | `array<PlayerLevel>` | The list of player levels. |

### `PlayGroupingApiToken`

Token data returned from GeneratePlayGroupingApiToken RPC.

| Property | Type | Description |
|----------|------|-------------|
| `tokenValue` | `string` | Value of the token. |

### `Player`

A Player resource.

| Property | Type | Description |
|----------|------|-------------|
| `avatarImageUrl` | `string` | The base URL for the image that represents the player. |
| `bannerUrlLandscape` | `string` | The url to the landscape mode player banner image. |
| `bannerUrlPortrait` | `string` | The url to the portrait mode player banner image. |
| `displayName` | `string` | The name to display for the player. |
| `experienceInfo` | `PlayerExperienceInfo` | An object to represent Play Game experience information for the player. |
| `friendStatus` | `string` | The friend status of the given player, relative to the requester. This is unset if the player is ... |
| `gamePlayerId` | `string` | Per-application unique player identifier. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#player` |
| `name` | `object` | A representation of the individual components of the name. |
| `originalPlayerId` | `string` | The player ID that was used for this player the first time they signed into the game in question.... |
| `playerId` | `string` | The ID of the player. |
| `profileSettings` | `ProfileSettings` | The player's profile settings. Controls whether or not the player's profile is visible to other p... |
| `title` | `string` | The player's title rewarded for their game activities. |

### `PlayerAchievement`

An achievement object.

| Property | Type | Description |
|----------|------|-------------|
| `achievementState` | `string` | The state of the achievement. |
| `currentSteps` | `integer` | The current steps for an incremental achievement. |
| `experiencePoints` | `string` | Experience points earned for the achievement. This field is absent for achievements that have not... |
| `formattedCurrentStepsString` | `string` | The current steps for an incremental achievement as a string. |
| `id` | `string` | The ID of the achievement. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#playerAchi... |
| `lastUpdatedTimestamp` | `string` | The timestamp of the last modification to this achievement's state. |

### `PlayerAchievementListResponse`

A list of achievement objects.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<PlayerAchievement>` | The achievements. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#playerAchi... |
| `nextPageToken` | `string` | Token corresponding to the next page of results. |

### `PlayerEvent`

An event status resource.

| Property | Type | Description |
|----------|------|-------------|
| `definitionId` | `string` | The ID of the event definition. |
| `formattedNumEvents` | `string` | The current number of times this event has occurred, as a string. The formatting of this string d... |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#playerEvent`. |
| `numEvents` | `string` | The current number of times this event has occurred. |
| `playerId` | `string` | The ID of the player. |

### `PlayerEventListResponse`

A ListByPlayer response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<PlayerEvent>` | The player events. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#playerEven... |
| `nextPageToken` | `string` | The pagination token for the next page of results. |

### `PlayerExperienceInfo`

1P/3P metadata about the player's experience.

| Property | Type | Description |
|----------|------|-------------|
| `currentExperiencePoints` | `string` | The current number of experience points for the player. |
| `currentLevel` | `PlayerLevel` | The current level of the player. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#playerExpe... |
| `lastLevelUpTimestampMillis` | `string` | The timestamp when the player was leveled up, in millis since Unix epoch UTC. |
| `nextLevel` | `PlayerLevel` | The next level of the player. If the current level is the maximum level, this should be same as t... |

### `PlayerLeaderboardScore`

A player leaderboard score object.

| Property | Type | Description |
|----------|------|-------------|
| `friendsRank` | `LeaderboardScoreRank` | The rank of the score in the friends collection for this leaderboard. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#playerLead... |
| `leaderboard_id` | `string` | The ID of the leaderboard this score is in. |
| `publicRank` | `LeaderboardScoreRank` | The public rank of the score in this leaderboard. This object will not be present if the user is ... |
| `scoreString` | `string` | The formatted value of this score. |
| `scoreTag` | `string` | Additional information about the score. Values must contain no more than 64 URI-safe characters a... |
| `scoreValue` | `string` | The numerical value of this score. |
| `socialRank` | `LeaderboardScoreRank` | The social rank of the score in this leaderboard. |
| `timeSpan` | `string` | The time span of this score. |
| `writeTimestamp` | `string` | The timestamp at which this score was recorded, in milliseconds since the epoch in UTC. |

### `PlayerLeaderboardScoreListResponse`

A list of player leaderboard scores.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<PlayerLeaderboardScore>` | The leaderboard scores. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#playerLead... |
| `nextPageToken` | `string` | The pagination token for the next page of results. |
| `player` | `Player` | The Player resources for the owner of this score. |

### `PlayerLevel`

1P/3P metadata about a user's level.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#playerLevel`. |
| `level` | `integer` | The level for the user. |
| `maxExperiencePoints` | `string` | The maximum experience points for this level. |
| `minExperiencePoints` | `string` | The minimum experience points for this level. |

### `PlayerListResponse`

A third party player list response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Player>` | The players. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#playerList... |
| `nextPageToken` | `string` | Token corresponding to the next page of results. |

### `PlayerScore`

A player score.

| Property | Type | Description |
|----------|------|-------------|
| `formattedScore` | `string` | The formatted score for this player score. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#playerScore`. |
| `score` | `string` | The numerical value for this player score. |
| `scoreTag` | `string` | Additional information about this score. Values will contain no more than 64 URI-safe characters ... |
| `timeSpan` | `string` | The time span for this player score. |

### `PlayerScoreListResponse`

A list of score submission statuses.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#playerScor... |
| `submittedScores` | `array<PlayerScoreResponse>` | The score submissions statuses. |

### `PlayerScoreResponse`

A list of leaderboard entry resources.

| Property | Type | Description |
|----------|------|-------------|
| `beatenScoreTimeSpans` | `array<string>` | The time spans where the submitted score is better than the existing score for that time span. |
| `formattedScore` | `string` | The formatted value of the submitted score. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#playerScor... |
| `leaderboardId` | `string` | The leaderboard ID that this score was submitted to. |
| `scoreTag` | `string` | Additional information about this score. Values will contain no more than 64 URI-safe characters ... |
| `unbeatenScores` | `array<PlayerScore>` | The scores in time spans that have not been beaten. As an example, the submitted score may be bet... |

### `PlayerScoreSubmissionList`

A list of score submission requests.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#playerScor... |
| `scores` | `array<ScoreSubmission>` | The score submissions. |

### `ProfileSettings`

Profile settings

| Property | Type | Description |
|----------|------|-------------|
| `friendsListVisibility` | `string` |  |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#profileSet... |
| `profileVisible` | `boolean` | Whether the player's profile is visible to the currently signed in player. |

### `RecallToken`

Recall token data returned from RetrievePlayerTokens RPC

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | Optional. Optional expiration time of the token |
| `multiPlayerPersona` | `boolean` | Required. Whether the persona identified by the token is linked to multiple PGS Players |
| `token` | `string` | Required. Value of the Recall token as it is provided by the client via LinkPersona RPC |

### `ResetPersonaRequest`

Request to remove all Recall tokens associated with a persona for an app.

| Property | Type | Description |
|----------|------|-------------|
| `persona` | `string` | Value of the 'persona' field as it was provided by the client in LinkPersona RPC |

### `ResetPersonaResponse`

Response for the ResetPersona RPC

| Property | Type | Description |
|----------|------|-------------|
| `unlinked` | `boolean` | Required. Whether any tokens were unlinked as a result of this request. |

### `RetrieveDeveloperGamesLastPlayerTokenResponse`

Recall token data returned from for the RetrieveDeveloperGamesLastPlayerToken RPC

| Property | Type | Description |
|----------|------|-------------|
| `gamePlayerToken` | `GamePlayerToken` | The recall token associated with the requested PGS Player principal. It can be unset if there is ... |

### `RetrieveGamesPlayerTokensResponse`

A list of recall token data returned from the RetrieveGamesPlayerTokens RPC

| Property | Type | Description |
|----------|------|-------------|
| `gamePlayerTokens` | `array<GamePlayerToken>` | The requested applications along with the recall tokens for the player. If the player does not ha... |

### `RetrievePlayerTokensResponse`

Response for the RetrievePlayerTokens RPC

| Property | Type | Description |
|----------|------|-------------|
| `tokens` | `array<RecallToken>` | Required. Recall tokens associated with the requested PGS Player principal |

### `RevisionCheckResponse`

A third party checking a revision response.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | The version of the API this client revision should use when calling API methods. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#revisionCh... |
| `revisionStatus` | `string` | The result of the revision check. |

### `ScopedPlayerIds`

Scoped player identifiers.

| Property | Type | Description |
|----------|------|-------------|
| `developerPlayerKey` | `string` | Identifier of the player across all games of the given developer. Every player has the same devel... |
| `gamePlayerId` | `string` | Game-scoped player identifier. This is the same id that is returned in GetPlayer game_player_id f... |

### `ScoreSubmission`

A request to submit a score to leaderboards.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#scoreSubmi... |
| `leaderboardId` | `string` | The leaderboard this score is being submitted to. |
| `score` | `string` | The new score being submitted. |
| `scoreTag` | `string` | Additional information about this score. Values will contain no more than 64 URI-safe characters ... |
| `signature` | `string` | Signature Values will contain URI-safe characters as defined by section 2.3 of RFC 3986. |

### `Snapshot`

An snapshot object.

| Property | Type | Description |
|----------|------|-------------|
| `coverImage` | `SnapshotImage` | The cover image of this snapshot. May be absent if there is no image. |
| `description` | `string` | The description of this snapshot. |
| `driveId` | `string` | The ID of the file underlying this snapshot in the Drive API. Only present if the snapshot is a v... |
| `durationMillis` | `string` | The duration associated with this snapshot, in millis. |
| `id` | `string` | The ID of the snapshot. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#snapshot`. |
| `lastModifiedMillis` | `string` | The timestamp (in millis since Unix epoch) of the last modification to this snapshot. |
| `progressValue` | `string` | The progress value (64-bit integer set by developer) associated with this snapshot. |
| `title` | `string` | The title of this snapshot. |
| `type` | `string` | The type of this snapshot. |
| `uniqueName` | `string` | The unique name provided when the snapshot was created. |

### `SnapshotImage`

An image of a snapshot.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | The height of the image. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#snapshotIm... |
| `mime_type` | `string` | The MIME type of the image. |
| `url` | `string` | The URL of the image. This URL may be invalidated at any time and should not be cached. |
| `width` | `integer` | The width of the image. |

### `SnapshotListResponse`

A third party list snapshots response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Snapshot>` | The snapshots. |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#snapshotLi... |
| `nextPageToken` | `string` | Token corresponding to the next page of results. If there are no more results, the token is omitted. |

### `StatsResponse`

A third party stats resource.

| Property | Type | Description |
|----------|------|-------------|
| `avg_session_length_minutes` | `number` | Average session length in minutes of the player. E.g., 1, 30, 60, ... . Not populated if there is... |
| `churn_probability` | `number` | The probability of the player not returning to play the game in the next day. E.g., 0, 0.1, 0.5, ... |
| `days_since_last_played` | `integer` | Number of days since the player last played this game. E.g., 0, 1, 5, 10, ... . Not populated if ... |
| `high_spender_probability` | `number` | The probability of the player going to spend beyond a threshold amount of money. E.g., 0, 0.25, 0... |
| `kind` | `string` | Uniquely identifies the type of this resource. Value is always the fixed string `games#statsRespo... |
| `num_purchases` | `integer` | Number of in-app purchases made by the player in this game. E.g., 0, 1, 5, 10, ... . Not populate... |
| `num_sessions` | `integer` | The approximate number of sessions of the player within the last 28 days, where a session begins ... |
| `num_sessions_percentile` | `number` | The approximation of the sessions percentile of the player within the last 30 days, where a sessi... |
| `spend_percentile` | `number` | The approximate spend percentile of the player in this game. E.g., 0, 0.25, 0.5, 0.75. Not popula... |
| `spend_probability` | `number` | The probability of the player going to spend the game in the next seven days. E.g., 0, 0.25, 0.50... |
| `total_spend_next_28_days` | `number` | The predicted amount of money that the player going to spend in the next 28 days. E.g., 1, 30, 60... |

### `UnlinkPersonaRequest`

Request to remove a Recall token linking PGS principal and an in-game account

| Property | Type | Description |
|----------|------|-------------|
| `persona` | `string` | Value of the 'persona' field as it was provided by the client in LinkPersona RPC |
| `sessionId` | `string` | Required. Opaque server-generated string that encodes all the necessary information to identify t... |
| `token` | `string` | Value of the Recall token as it was provided by the client in LinkPersona RPC |

### `UnlinkPersonaResponse`

Response for the UnlinkPersona RPC

| Property | Type | Description |
|----------|------|-------------|
| `unlinked` | `boolean` | Required. Whether a Recall token specified by the request was deleted. Can be 'false' when there ... |

