# Google Forms API - API Reference

**Version**: `v1` | **Methods**: 10 | **Schemas**: 64

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `forms.forms.get` | GET | `v1/forms/{formId}` | Get a form. |
| `forms.forms.batchUpdate` | POST | `v1/forms/{formId}:batchUpdate` | Change the form with a batch of updates. |
| `forms.forms.setPublishSettings` | POST | `v1/forms/{formId}:setPublishSettings` | Updates the publish settings of a form. Legacy forms aren't supported because they don't have the... |
| `forms.forms.create` | POST | `v1/forms` | Create a new form using the title given in the provided form message in the request. *Important:*... |
| `forms.forms.watches.list` | GET | `v1/forms/{formId}/watches` | Return a list of the watches owned by the invoking project. The maximum number of watches is two:... |
| `forms.forms.watches.renew` | POST | `v1/forms/{formId}/watches/{watchId}:renew` | Renew an existing watch for seven days. The state of the watch after renewal is `ACTIVE`, and the... |
| `forms.forms.watches.create` | POST | `v1/forms/{formId}/watches` | Create a new watch. If a watch ID is provided, it must be unused. For each invoking project, the ... |
| `forms.forms.watches.delete` | DELETE | `v1/forms/{formId}/watches/{watchId}` | Delete a watch. |
| `forms.forms.responses.get` | GET | `v1/forms/{formId}/responses/{responseId}` | Get one response from the form. |
| `forms.forms.responses.list` | GET | `v1/forms/{formId}/responses` | List a form's responses. |

### `forms.forms.get`

**GET** `v1/forms/{formId}`

Get a form.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `formId` | `string` | path | Yes | Required. The form ID. |

**Response**: `Form`

```typescript
const res = await forms.forms.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/forms.body`
- `https://www.googleapis.com/auth/forms.body.readonly`

---

### `forms.forms.batchUpdate`

**POST** `v1/forms/{formId}:batchUpdate`

Change the form with a batch of updates.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `formId` | `string` | path | Yes | Required. The form ID. |

**Request body**: `BatchUpdateFormRequest`

**Response**: `BatchUpdateFormResponse`

```typescript
const res = await forms.forms.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/forms.body`

---

### `forms.forms.setPublishSettings`

**POST** `v1/forms/{formId}:setPublishSettings`

Updates the publish settings of a form. Legacy forms aren't supported because they don't have the `publish_settings` field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `formId` | `string` | path | Yes | Required. The ID of the form. You can get the id from Form.form_id field. |

**Request body**: `SetPublishSettingsRequest`

**Response**: `SetPublishSettingsResponse`

```typescript
const res = await forms.forms.setPublishSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/forms.body`

---

### `forms.forms.create`

**POST** `v1/forms`

Create a new form using the title given in the provided form message in the request. *Important:* Only the form.info.title and form.info.document_title fields are copied to the new form. All other fields including the form description, items and settings are disallowed. To create a new form and add items, you must first call forms.create to create an empty form with a title and (optional) document title, and then call forms.update to add the items.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `unpublished` | `boolean` | query | No | Optional. Whether the form is unpublished. If set to `true`, the form doesn't accept responses. If set to `false` or ... |

**Request body**: `Form`

**Response**: `Form`

```typescript
const res = await forms.forms.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/forms.body`

---

### `forms.forms.watches.list`

**GET** `v1/forms/{formId}/watches`

Return a list of the watches owned by the invoking project. The maximum number of watches is two: For each invoker, the limit is one for each event type per form.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `formId` | `string` | path | Yes | Required. ID of the Form whose watches to list. |

**Response**: `ListWatchesResponse`

```typescript
const res = await forms.watches.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/forms.body`
- `https://www.googleapis.com/auth/forms.body.readonly`
- `https://www.googleapis.com/auth/forms.responses.readonly`

---

### `forms.forms.watches.renew`

**POST** `v1/forms/{formId}/watches/{watchId}:renew`

Renew an existing watch for seven days. The state of the watch after renewal is `ACTIVE`, and the `expire_time` is seven days from the renewal. Renewing a watch in an error state (e.g. `SUSPENDED`) succeeds if the error is no longer present, but fail otherwise. After a watch has expired, RenewWatch returns `NOT_FOUND`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `formId` | `string` | path | Yes | Required. The ID of the Form. |
| `watchId` | `string` | path | Yes | Required. The ID of the Watch to renew. |

**Request body**: `RenewWatchRequest`

**Response**: `Watch`

```typescript
const res = await forms.watches.renew({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/forms.body`
- `https://www.googleapis.com/auth/forms.body.readonly`
- `https://www.googleapis.com/auth/forms.responses.readonly`

---

### `forms.forms.watches.create`

**POST** `v1/forms/{formId}/watches`

Create a new watch. If a watch ID is provided, it must be unused. For each invoking project, the per form limit is one watch per Watch.EventType. A watch expires seven days after it is created (see Watch.expire_time).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `formId` | `string` | path | Yes | Required. ID of the Form to watch. |

**Request body**: `CreateWatchRequest`

**Response**: `Watch`

```typescript
const res = await forms.watches.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/forms.body`
- `https://www.googleapis.com/auth/forms.body.readonly`
- `https://www.googleapis.com/auth/forms.responses.readonly`

---

### `forms.forms.watches.delete`

**DELETE** `v1/forms/{formId}/watches/{watchId}`

Delete a watch.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `formId` | `string` | path | Yes | Required. The ID of the Form. |
| `watchId` | `string` | path | Yes | Required. The ID of the Watch to delete. |

**Response**: `Empty`

```typescript
const res = await forms.watches.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/forms.body`
- `https://www.googleapis.com/auth/forms.body.readonly`
- `https://www.googleapis.com/auth/forms.responses.readonly`

---

### `forms.forms.responses.get`

**GET** `v1/forms/{formId}/responses/{responseId}`

Get one response from the form.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `formId` | `string` | path | Yes | Required. The form ID. |
| `responseId` | `string` | path | Yes | Required. The response ID within the form. |

**Response**: `FormResponse`

```typescript
const res = await forms.responses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/forms.responses.readonly`

---

### `forms.forms.responses.list`

**GET** `v1/forms/{formId}/responses`

List a form's responses.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `formId` | `string` | path | Yes | Required. ID of the Form whose responses to list. |
| `filter` | `string` | query | No | Which form responses to return. Currently, the only supported filters are: * timestamp > *N* which means to get all f... |
| `pageSize` | `integer` | query | No | The maximum number of responses to return. The service may return fewer than this value. If unspecified or zero, at m... |
| `pageToken` | `string` | query | No | A page token returned by a previous list response. If this field is set, the form and the values of the filter must b... |

**Response**: `ListFormResponsesResponse`

```typescript
const res = await forms.responses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/forms.responses.readonly`

---

## Schemas

### `Answer`

The submitted answer for a question.

| Property | Type | Description |
|----------|------|-------------|
| `fileUploadAnswers` | `FileUploadAnswers` | Output only. The answers to a file upload question. |
| `grade` | `Grade` | Output only. The grade for the answer if the form was a quiz. |
| `questionId` | `string` | Output only. The question's ID. See also Question.question_id. |
| `textAnswers` | `TextAnswers` | Output only. The specific answers as text. |

### `BatchUpdateFormRequest`

A batch of updates to perform on a form. All the specified updates are made or none of them are.

| Property | Type | Description |
|----------|------|-------------|
| `includeFormInResponse` | `boolean` | Whether to return an updated version of the model in the response. |
| `requests` | `array<Request>` | Required. The update requests of this batch. |
| `writeControl` | `WriteControl` | Provides control over how write requests are executed. |

### `BatchUpdateFormResponse`

Response to a BatchUpdateFormRequest.

| Property | Type | Description |
|----------|------|-------------|
| `form` | `Form` | Based on the bool request field `include_form_in_response`, a form with all applied mutations/upd... |
| `replies` | `array<Response>` | The reply of the updates. This maps 1:1 with the update requests, although replies to some reques... |
| `writeControl` | `WriteControl` | The updated write control after applying the request. |

### `ChoiceQuestion`

A radio/checkbox/dropdown question.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `array<Option>` | Required. List of options that a respondent must choose from. |
| `shuffle` | `boolean` | Whether the options should be displayed in random order for different instances of the quiz. This... |
| `type` | `string` | Required. The type of choice question. |

### `CloudPubsubTopic`

A Pub/Sub topic.

| Property | Type | Description |
|----------|------|-------------|
| `topicName` | `string` | Required. A fully qualified Pub/Sub topic name to publish the events to. This topic must be owned... |

### `CorrectAnswer`

A single correct answer for a question. For multiple-valued (`CHECKBOX`) questions, several `CorrectAnswer`s may be needed to represent a single correct response option.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Required. The correct answer value. See the documentation for TextAnswer.value for details on how... |

### `CorrectAnswers`

The answer key for a question.

| Property | Type | Description |
|----------|------|-------------|
| `answers` | `array<CorrectAnswer>` | A list of correct answers. A quiz response can be automatically graded based on these answers. Fo... |

### `CreateItemRequest`

Create an item in a form.

| Property | Type | Description |
|----------|------|-------------|
| `item` | `Item` | Required. The item to create. |
| `location` | `Location` | Required. Where to place the new item. |

### `CreateItemResponse`

The result of creating an item.

| Property | Type | Description |
|----------|------|-------------|
| `itemId` | `string` | The ID of the created item. |
| `questionId` | `array<string>` | The ID of the question created as part of this item, for a question group it lists IDs of all the... |

### `CreateWatchRequest`

Create a new watch.

| Property | Type | Description |
|----------|------|-------------|
| `watch` | `Watch` | Required. The watch object. No ID should be set on this object; use `watch_id` instead. |
| `watchId` | `string` | The ID to use for the watch. If specified, the ID must not already be in use. If not specified, a... |

### `DateQuestion`

A date question. Date questions default to just month + day.

| Property | Type | Description |
|----------|------|-------------|
| `includeTime` | `boolean` | Whether to include the time as part of the question. |
| `includeYear` | `boolean` | Whether to include the year as part of the question. |

### `DeleteItemRequest`

Delete an item in a form.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `Location` | Required. The location of the item to delete. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ExtraMaterial`

Supplementary material to the feedback.

| Property | Type | Description |
|----------|------|-------------|
| `link` | `TextLink` | Text feedback. |
| `video` | `VideoLink` | Video feedback. |

### `Feedback`

Feedback for a respondent about their response to a question.

| Property | Type | Description |
|----------|------|-------------|
| `material` | `array<ExtraMaterial>` | Additional information provided as part of the feedback, often used to point the respondent to mo... |
| `text` | `string` | Required. The main text of the feedback. |

### `FileUploadAnswer`

Info for a single file submitted to a file upload question.

| Property | Type | Description |
|----------|------|-------------|
| `fileId` | `string` | Output only. The ID of the Google Drive file. |
| `fileName` | `string` | Output only. The file name, as stored in Google Drive on upload. |
| `mimeType` | `string` | Output only. The MIME type of the file, as stored in Google Drive on upload. |

### `FileUploadAnswers`

All submitted files for a FileUpload question.

| Property | Type | Description |
|----------|------|-------------|
| `answers` | `array<FileUploadAnswer>` | Output only. All submitted files for a FileUpload question. |

### `FileUploadQuestion`

A file upload question. The API currently does not support creating file upload questions.

| Property | Type | Description |
|----------|------|-------------|
| `folderId` | `string` | Required. The ID of the Drive folder where uploaded files are stored. |
| `maxFileSize` | `string` | Maximum number of bytes allowed for any single file uploaded to this question. |
| `maxFiles` | `integer` | Maximum number of files that can be uploaded for this question in a single response. |
| `types` | `array<string>` | File types accepted by this question. |

### `Form`

A Google Forms document. A form is created in Drive, and deleting a form or changing its access protections is done via the [Drive API](https://developers.google.com/drive/api/v3/about-sdk).

| Property | Type | Description |
|----------|------|-------------|
| `formId` | `string` | Output only. The form ID. |
| `info` | `Info` | Required. The title and description of the form. |
| `items` | `array<Item>` | Required. A list of the form's items, which can include section headers, questions, embedded medi... |
| `linkedSheetId` | `string` | Output only. The ID of the linked Google Sheet which is accumulating responses from this Form (if... |
| `publishSettings` | `PublishSettings` | Output only. The publishing settings for a form. This field isn't set for legacy forms because th... |
| `responderUri` | `string` | Output only. The form URI to share with responders. This opens a page that allows the user to sub... |
| `revisionId` | `string` | Output only. The revision ID of the form. Used in the WriteControl in update requests to identify... |
| `settings` | `FormSettings` | The form's settings. This must be updated with UpdateSettingsRequest; it is ignored during Create... |

### `FormResponse`

A form response.

| Property | Type | Description |
|----------|------|-------------|
| `answers` | `object` | Output only. The actual answers to the questions, keyed by question_id. |
| `createTime` | `string` | Output only. Timestamp for the first time the response was submitted. |
| `formId` | `string` | Output only. The form ID. |
| `lastSubmittedTime` | `string` | Output only. Timestamp for the most recent time the response was submitted. Does not track change... |
| `respondentEmail` | `string` | Output only. The email address (if collected) for the respondent. |
| `responseId` | `string` | Output only. The response ID. |
| `totalScore` | `number` | Output only. The total number of points the respondent received for their submission Only set if ... |

### `FormSettings`

A form's settings.

| Property | Type | Description |
|----------|------|-------------|
| `emailCollectionType` | `string` | Optional. The setting that determines whether the form collects email addresses from respondents. |
| `quizSettings` | `QuizSettings` | Settings related to quiz forms and grading. |

### `Grade`

Grade information associated with a respondent's answer to a question.

| Property | Type | Description |
|----------|------|-------------|
| `correct` | `boolean` | Output only. Whether the question was answered correctly or not. A zero-point score is not enough... |
| `feedback` | `Feedback` | Output only. Additional feedback given for an answer. |
| `score` | `number` | Output only. The numeric score awarded for the answer. |

### `Grading`

Grading for a single question

| Property | Type | Description |
|----------|------|-------------|
| `correctAnswers` | `CorrectAnswers` | Required. The answer key for the question. Responses are automatically graded based on this field. |
| `generalFeedback` | `Feedback` | The feedback displayed for all answers. This is commonly used for short answer questions when a q... |
| `pointValue` | `integer` | Required. The maximum number of points a respondent can automatically get for a correct answer. T... |
| `whenRight` | `Feedback` | The feedback displayed for correct responses. This feedback can only be set for multiple choice q... |
| `whenWrong` | `Feedback` | The feedback displayed for incorrect responses. This feedback can only be set for multiple choice... |

### `Grid`

A grid of choices (radio or check boxes) with each row constituting a separate question. Each row has the same choices, which are shown as the columns.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `ChoiceQuestion` | Required. The choices shared by each question in the grid. In other words, the values of the colu... |
| `shuffleQuestions` | `boolean` | If `true`, the questions are randomly ordered. In other words, the rows appear in a different ord... |

### `Image`

Data representing an image.

| Property | Type | Description |
|----------|------|-------------|
| `altText` | `string` | A description of the image that is shown on hover and read by screenreaders. |
| `contentUri` | `string` | Output only. A URI from which you can download the image; this is valid only for a limited time. |
| `properties` | `MediaProperties` | Properties of an image. |
| `sourceUri` | `string` | Input only. The source URI is the URI used to insert the image. The source URI can be empty when ... |

### `ImageItem`

An item containing an image.

| Property | Type | Description |
|----------|------|-------------|
| `image` | `Image` | Required. The image displayed in the item. |

### `Info`

The general information for a form.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the form. |
| `documentTitle` | `string` | Output only. The title of the document which is visible in Drive. If Info.title is empty, `docume... |
| `title` | `string` | Required. The title of the form which is visible to responders. |

### `Item`

A single item of the form. `kind` defines which kind of item it is.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the item. |
| `imageItem` | `ImageItem` | Displays an image on the page. |
| `itemId` | `string` | The item ID. On creation, it can be provided but the ID must not be already used in the form. If ... |
| `pageBreakItem` | `PageBreakItem` | Starts a new page with a title. |
| `questionGroupItem` | `QuestionGroupItem` | Poses one or more questions to the user with a single major prompt. |
| `questionItem` | `QuestionItem` | Poses a question to the user. |
| `textItem` | `TextItem` | Displays a title and description on the page. |
| `title` | `string` | The title of the item. |
| `videoItem` | `VideoItem` | Displays a video on the page. |

### `ListFormResponsesResponse`

Response to a ListFormResponsesRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If set, there are more responses. To get the next page of responses, provide this as `page_token`... |
| `responses` | `array<FormResponse>` | The returned form responses. Note: The `formId` field is not returned in the `FormResponse` objec... |

### `ListWatchesResponse`

The response of a ListWatchesRequest.

| Property | Type | Description |
|----------|------|-------------|
| `watches` | `array<Watch>` | The returned watches. |

### `Location`

A specific location in a form.

| Property | Type | Description |
|----------|------|-------------|
| `index` | `integer` | The index of an item in the form. This must be in the range [0..*N*), where *N* is the number of ... |

### `MediaProperties`

Properties of the media.

| Property | Type | Description |
|----------|------|-------------|
| `alignment` | `string` | Position of the media. |
| `width` | `integer` | The width of the media in pixels. When the media is displayed, it is scaled to the smaller of thi... |

### `MoveItemRequest`

Move an item in a form.

| Property | Type | Description |
|----------|------|-------------|
| `newLocation` | `Location` | Required. The new location for the item. |
| `originalLocation` | `Location` | Required. The location of the item to move. |

### `Option`

An option for a Choice question.

| Property | Type | Description |
|----------|------|-------------|
| `goToAction` | `string` | Section navigation type. |
| `goToSectionId` | `string` | Item ID of section header to go to. |
| `image` | `Image` | Display image as an option. |
| `isOther` | `boolean` | Whether the option is "other". Currently only applies to `RADIO` and `CHECKBOX` choice types, but... |
| `value` | `string` | Required. The choice as presented to the user. |

### `PageBreakItem`

A page break. The title and description of this item are shown at the top of the new page.

### `PublishSettings`

The publishing settings of a form.

| Property | Type | Description |
|----------|------|-------------|
| `publishState` | `PublishState` | Optional. The publishing state of a form. When updating `publish_state`, both `is_published` and ... |

### `PublishState`

The publishing state of a form.

| Property | Type | Description |
|----------|------|-------------|
| `isAcceptingResponses` | `boolean` | Required. Whether the form accepts responses. If `is_published` is set to `false`, this field is ... |
| `isPublished` | `boolean` | Required. Whether the form is published and visible to others. |

### `Question`

Any question. The specific type of question is known by its `kind`.

| Property | Type | Description |
|----------|------|-------------|
| `choiceQuestion` | `ChoiceQuestion` | A respondent can choose from a pre-defined set of options. |
| `dateQuestion` | `DateQuestion` | A respondent can enter a date. |
| `fileUploadQuestion` | `FileUploadQuestion` | A respondent can upload one or more files. |
| `grading` | `Grading` | Grading setup for the question. |
| `questionId` | `string` | Read only. The question ID. On creation, it can be provided but the ID must not be already used i... |
| `ratingQuestion` | `RatingQuestion` | A respondent can choose a rating from a pre-defined set of icons. |
| `required` | `boolean` | Whether the question must be answered in order for a respondent to submit their response. |
| `rowQuestion` | `RowQuestion` | A row of a QuestionGroupItem. |
| `scaleQuestion` | `ScaleQuestion` | A respondent can choose a number from a range. |
| `textQuestion` | `TextQuestion` | A respondent can enter a free text response. |
| `timeQuestion` | `TimeQuestion` | A respondent can enter a time. |

### `QuestionGroupItem`

Defines a question that comprises multiple questions grouped together.

| Property | Type | Description |
|----------|------|-------------|
| `grid` | `Grid` | The question group is a grid with rows of multiple choice questions that share the same options. ... |
| `image` | `Image` | The image displayed within the question group above the specific questions. |
| `questions` | `array<Question>` | Required. A list of questions that belong in this question group. A question must only belong to ... |

### `QuestionItem`

A form item containing a single question.

| Property | Type | Description |
|----------|------|-------------|
| `image` | `Image` | The image displayed within the question. |
| `question` | `Question` | Required. The displayed question. |

### `QuizSettings`

Settings related to quiz forms and grading. These must be updated with the UpdateSettingsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `isQuiz` | `boolean` | Whether this form is a quiz or not. When true, responses are graded based on question Grading. Up... |

### `RatingQuestion`

A rating question. The user has a range of icons to choose from.

| Property | Type | Description |
|----------|------|-------------|
| `iconType` | `string` | Required. The icon type to use for the rating. |
| `ratingScaleLevel` | `integer` | Required. The rating scale level of the rating question. |

### `RenewWatchRequest`

Renew an existing Watch for seven days.

### `Request`

The kinds of update requests that can be made.

| Property | Type | Description |
|----------|------|-------------|
| `createItem` | `CreateItemRequest` | Create a new item. |
| `deleteItem` | `DeleteItemRequest` | Delete an item. |
| `moveItem` | `MoveItemRequest` | Move an item to a specified location. |
| `updateFormInfo` | `UpdateFormInfoRequest` | Update Form's Info. |
| `updateItem` | `UpdateItemRequest` | Update an item. |
| `updateSettings` | `UpdateSettingsRequest` | Updates the Form's settings. |

### `Response`

A single response from an update.

| Property | Type | Description |
|----------|------|-------------|
| `createItem` | `CreateItemResponse` | The result of creating an item. |

### `RowQuestion`

Configuration for a question that is part of a question group.

| Property | Type | Description |
|----------|------|-------------|
| `title` | `string` | Required. The title for the single row in the QuestionGroupItem. |

### `ScaleQuestion`

A scale question. The user has a range of numeric values to choose from.

| Property | Type | Description |
|----------|------|-------------|
| `high` | `integer` | Required. The highest possible value for the scale. |
| `highLabel` | `string` | The label to display describing the highest point on the scale. |
| `low` | `integer` | Required. The lowest possible value for the scale. |
| `lowLabel` | `string` | The label to display describing the lowest point on the scale. |

### `SetPublishSettingsRequest`

Updates the publish settings of a Form.

| Property | Type | Description |
|----------|------|-------------|
| `publishSettings` | `PublishSettings` | Required. The desired publish settings to apply to the form. |
| `updateMask` | `string` | Optional. The `publish_settings` fields to update. This field mask accepts the following values: ... |

### `SetPublishSettingsResponse`

The response of a SetPublishSettings request.

| Property | Type | Description |
|----------|------|-------------|
| `formId` | `string` | Required. The ID of the Form. This is same as the Form.form_id field. |
| `publishSettings` | `PublishSettings` | The publish settings of the form. |

### `TextAnswer`

An answer to a question represented as text.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Output only. The answer value. Formatting used for different kinds of question: * ChoiceQuestion ... |

### `TextAnswers`

A question's answers as text.

| Property | Type | Description |
|----------|------|-------------|
| `answers` | `array<TextAnswer>` | Output only. Answers to a question. For multiple-value ChoiceQuestions, each answer is a separate... |

### `TextItem`

A text item.

### `TextLink`

Link for text.

| Property | Type | Description |
|----------|------|-------------|
| `displayText` | `string` | Required. Display text for the URI. |
| `uri` | `string` | Required. The URI. |

### `TextQuestion`

A text-based question.

| Property | Type | Description |
|----------|------|-------------|
| `paragraph` | `boolean` | Whether the question is a paragraph question or not. If not, the question is a short text question. |

### `TimeQuestion`

A time question.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `boolean` | `true` if the question is about an elapsed time. Otherwise it is about a time of day. |

### `UpdateFormInfoRequest`

Update Form's Info.

| Property | Type | Description |
|----------|------|-------------|
| `info` | `Info` | The info to update. |
| `updateMask` | `string` | Required. Only values named in this mask are changed. At least one field must be specified. The r... |

### `UpdateItemRequest`

Update an item in a form.

| Property | Type | Description |
|----------|------|-------------|
| `item` | `Item` | Required. New values for the item. Note that item and question IDs are used if they are provided ... |
| `location` | `Location` | Required. The location identifying the item to update. |
| `updateMask` | `string` | Required. Only values named in this mask are changed. |

### `UpdateSettingsRequest`

Update Form's FormSettings.

| Property | Type | Description |
|----------|------|-------------|
| `settings` | `FormSettings` | Required. The settings to update with. |
| `updateMask` | `string` | Required. Only values named in this mask are changed. At least one field must be specified. The r... |

### `Video`

Data representing a video.

| Property | Type | Description |
|----------|------|-------------|
| `properties` | `MediaProperties` | Properties of a video. |
| `youtubeUri` | `string` | Required. A YouTube URI. |

### `VideoItem`

An item containing a video.

| Property | Type | Description |
|----------|------|-------------|
| `caption` | `string` | The text displayed below the video. |
| `video` | `Video` | Required. The video displayed in the item. |

### `VideoLink`

Link to a video.

| Property | Type | Description |
|----------|------|-------------|
| `displayText` | `string` | Required. The display text for the link. |
| `youtubeUri` | `string` | The URI of a YouTube video. |

### `Watch`

A watch for events for a form. When the designated event happens, a notification will be published to the specified target. The notification's attributes will include a `formId` key that has the ID of the watched form and an `eventType` key that has the string of the type. Messages are sent with at-least-once delivery and are only dropped in extraordinary circumstances. Typically all notifications should be reliably delivered within a few seconds; however, in some situations notifications may be delayed. A watch expires seven days after it is created unless it is renewed with watches.renew

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp of when this was created. |
| `errorType` | `string` | Output only. The most recent error type for an attempted delivery. To begin watching the form aga... |
| `eventType` | `string` | Required. Which event type to watch for. |
| `expireTime` | `string` | Output only. Timestamp for when this will expire. Each watches.renew call resets this to seven da... |
| `id` | `string` | Output only. The ID of this watch. See notes on CreateWatchRequest.watch_id. |
| `state` | `string` | Output only. The current state of the watch. Additional details about suspended watches can be fo... |
| `target` | `WatchTarget` | Required. Where to send the notification. |

### `WatchTarget`

The target for notification delivery.

| Property | Type | Description |
|----------|------|-------------|
| `topic` | `CloudPubsubTopic` | A Pub/Sub topic. To receive notifications, the topic must grant publish privileges to the Forms s... |

### `WriteControl`

Provides control over how write requests are executed.

| Property | Type | Description |
|----------|------|-------------|
| `requiredRevisionId` | `string` | The revision ID of the form that the write request is applied to. If this is not the latest revis... |
| `targetRevisionId` | `string` | The target revision ID of the form that the write request is applied to. If changes have occurred... |

