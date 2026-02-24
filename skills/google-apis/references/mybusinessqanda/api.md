# My Business Q&A API - API Reference

**Version**: `v1` | **Methods**: 7 | **Schemas**: 7

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `mybusinessqanda.locations.questions.list` | GET | `v1/{+parent}` | Returns the paginated list of questions and some of its answers for a specified location. This op... |
| `mybusinessqanda.locations.questions.create` | POST | `v1/{+parent}` | Adds a question for the specified location. |
| `mybusinessqanda.locations.questions.patch` | PATCH | `v1/{+name}` | Updates a specific question written by the current user. |
| `mybusinessqanda.locations.questions.delete` | DELETE | `v1/{+name}` | Deletes a specific question written by the current user. |
| `mybusinessqanda.locations.questions.answers.list` | GET | `v1/{+parent}/answers` | Returns the paginated list of answers for a specified question. |
| `mybusinessqanda.locations.questions.answers.upsert` | POST | `v1/{+parent}/answers:upsert` | Creates an answer or updates the existing answer written by the user for the specified question. ... |
| `mybusinessqanda.locations.questions.answers.delete` | DELETE | `v1/{+name}/answers:delete` | Deletes the answer written by the current user to a question. |

### `mybusinessqanda.locations.questions.list`

**GET** `v1/{+parent}`

Returns the paginated list of questions and some of its answers for a specified location. This operation is only valid if the specified location is verified.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the location to fetch questions for. |
| `answersPerQuestion` | `integer` | query | No | Optional. How many answers to fetch per question. The default and maximum `answers_per_question` values are 10. |
| `filter` | `string` | query | No | Optional. A filter constraining the questions to return. The only filter currently supported is "ignore_answered=true" |
| `orderBy` | `string` | query | No | Optional. The order to return the questions. Valid options include 'update_time desc' and 'upvote_count desc', which ... |
| `pageSize` | `integer` | query | No | Optional. How many questions to fetch per page. The default and maximum `page_size` values are 10. |
| `pageToken` | `string` | query | No | Optional. If specified, the next page of questions is retrieved. |

**Response**: `ListQuestionsResponse`

```typescript
const res = await mybusinessqanda.questions.list({
  // parameters
});
```

---

### `mybusinessqanda.locations.questions.create`

**POST** `v1/{+parent}`

Adds a question for the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the location to write a question for. |

**Request body**: `Question`

**Response**: `Question`

```typescript
const res = await mybusinessqanda.questions.create({
  // parameters
});
```

---

### `mybusinessqanda.locations.questions.patch`

**PATCH** `v1/{+name}`

Updates a specific question written by the current user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The unique name for the question. locations/*/questions/* This field will be ignored if set during questio... |
| `updateMask` | `string` | query | No | Required. The specific fields to update. Only question text can be updated. |

**Request body**: `Question`

**Response**: `Question`

```typescript
const res = await mybusinessqanda.questions.patch({
  // parameters
});
```

---

### `mybusinessqanda.locations.questions.delete`

**DELETE** `v1/{+name}`

Deletes a specific question written by the current user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the question to delete. |

**Response**: `Empty`

```typescript
const res = await mybusinessqanda.questions.delete({
  // parameters
});
```

---

### `mybusinessqanda.locations.questions.answers.list`

**GET** `v1/{+parent}/answers`

Returns the paginated list of answers for a specified question.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the question to fetch answers for. |
| `orderBy` | `string` | query | No | Optional. The order to return the answers. Valid options include 'update_time desc' and 'upvote_count desc', which wi... |
| `pageSize` | `integer` | query | No | Optional. How many answers to fetch per page. The default and maximum `page_size` values are 10. |
| `pageToken` | `string` | query | No | Optional. If specified, the next page of answers is retrieved. |

**Response**: `ListAnswersResponse`

```typescript
const res = await mybusinessqanda.answers.list({
  // parameters
});
```

---

### `mybusinessqanda.locations.questions.answers.upsert`

**POST** `v1/{+parent}/answers:upsert`

Creates an answer or updates the existing answer written by the user for the specified question. A user can only create one answer per question.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the question to write an answer for. |

**Request body**: `UpsertAnswerRequest`

**Response**: `Answer`

```typescript
const res = await mybusinessqanda.answers.upsert({
  // parameters
});
```

---

### `mybusinessqanda.locations.questions.answers.delete`

**DELETE** `v1/{+name}/answers:delete`

Deletes the answer written by the current user to a question.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the question to delete an answer for. |

**Response**: `Empty`

```typescript
const res = await mybusinessqanda.answers.delete({
  // parameters
});
```

---

## Schemas

### `Answer`

Represents an answer to a question

| Property | Type | Description |
|----------|------|-------------|
| `author` | `Author` | Output only. The author of the answer. Will only be set during list operations. |
| `createTime` | `string` | Output only. The timestamp for when the answer was written. Only retrieved during ListResponse fe... |
| `name` | `string` | Output only. The unique name for the answer locations/*/questions/*/answers/* |
| `text` | `string` | Required. The text of the answer. It should contain at least one non-whitespace character. The ma... |
| `updateTime` | `string` | Output only. The timestamp for when the answer was last modified. |
| `upvoteCount` | `integer` | Output only. The number of upvotes for the answer. |

### `Author`

Represents the author of a question or answer

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the user |
| `profilePhotoUri` | `string` | The profile photo URI of the user. |
| `type` | `string` | The type of user the author is. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ListAnswersResponse`

Response message for QuestionsAndAnswers.ListAnswers

| Property | Type | Description |
|----------|------|-------------|
| `answers` | `array<Answer>` | The requested answers. |
| `nextPageToken` | `string` | If the number of answers exceeds the requested max page size, this field is populated with a toke... |
| `totalSize` | `integer` | The total number of answers posted for this question across all pages. |

### `ListQuestionsResponse`

Response message for QuestionsAndAnswers.ListQuestions

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If the number of questions exceeds the requested max page size, this field is populated with a to... |
| `questions` | `array<Question>` | The requested questions, |
| `totalSize` | `integer` | The total number of questions posted for this location across all pages. |

### `Question`

Represents a single question and some of its answers.

| Property | Type | Description |
|----------|------|-------------|
| `author` | `Author` | Output only. The author of the question. |
| `createTime` | `string` | Output only. The timestamp for when the question was written. |
| `name` | `string` | Immutable. The unique name for the question. locations/*/questions/* This field will be ignored i... |
| `text` | `string` | Required. The text of the question. It should contain at least three words and the total length s... |
| `topAnswers` | `array<Answer>` | Output only. A list of answers to the question, sorted by upvotes. This may not be a complete lis... |
| `totalAnswerCount` | `integer` | Output only. The total number of answers posted for this question. |
| `updateTime` | `string` | Output only. The timestamp for when the question was last modified. |
| `upvoteCount` | `integer` | Output only. The number of upvotes for the question. |

### `UpsertAnswerRequest`

Request message for QuestionsAndAnswers.UpsertAnswer

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `Answer` | Required. The new answer. |

