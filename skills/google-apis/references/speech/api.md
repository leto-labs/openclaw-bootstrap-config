# Cloud Speech-to-Text API - API Reference

**Version**: `v1` | **Methods**: 14 | **Schemas**: 31

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `speech.projects.locations.customClasses.create` | POST | `v1/{+parent}/customClasses` | Create a custom class. |
| `speech.projects.locations.customClasses.patch` | PATCH | `v1/{+name}` | Update a custom class. |
| `speech.projects.locations.customClasses.list` | GET | `v1/{+parent}/customClasses` | List custom classes. |
| `speech.projects.locations.customClasses.get` | GET | `v1/{+name}` | Get a custom class. |
| `speech.projects.locations.customClasses.delete` | DELETE | `v1/{+name}` | Delete a custom class. |
| `speech.projects.locations.phraseSets.list` | GET | `v1/{+parent}/phraseSets` | List phrase sets. |
| `speech.projects.locations.phraseSets.patch` | PATCH | `v1/{+name}` | Update a phrase set. |
| `speech.projects.locations.phraseSets.create` | POST | `v1/{+parent}/phraseSets` | Create a set of phrase hints. Each item in the set can be a single word or a multi-word phrase. T... |
| `speech.projects.locations.phraseSets.get` | GET | `v1/{+name}` | Get a phrase set. |
| `speech.projects.locations.phraseSets.delete` | DELETE | `v1/{+name}` | Delete a phrase set. |
| `speech.speech.recognize` | POST | `v1/speech:recognize` | Performs synchronous speech recognition: receive results after all audio has been sent and proces... |
| `speech.speech.longrunningrecognize` | POST | `v1/speech:longrunningrecognize` | Performs asynchronous speech recognition: receive results via the google.longrunning.Operations i... |
| `speech.operations.list` | GET | `v1/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `speech.operations.get` | GET | `v1/operations/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |

### `speech.projects.locations.customClasses.create`

**POST** `v1/{+parent}/customClasses`

Create a custom class.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this custom class will be created. Format: `projects/{project}/locations/{locatio... |

**Request body**: `CreateCustomClassRequest`

**Response**: `CustomClass`

```typescript
const res = await speech.customClasses.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `speech.projects.locations.customClasses.patch`

**PATCH** `v1/{+name}`

Update a custom class.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the custom class. |
| `updateMask` | `string` | query | No | The list of fields to be updated. |

**Request body**: `CustomClass`

**Response**: `CustomClass`

```typescript
const res = await speech.customClasses.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `speech.projects.locations.customClasses.list`

**GET** `v1/{+parent}/customClasses`

List custom classes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of custom classes. Format: `projects/{project}/locations/{location}/... |
| `pageSize` | `integer` | query | No | The maximum number of custom classes to return. The service may return fewer than this value. If unspecified, at most... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListCustomClass` call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `ListCustomClassesResponse`

```typescript
const res = await speech.customClasses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `speech.projects.locations.customClasses.get`

**GET** `v1/{+name}`

Get a custom class.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the custom class to retrieve. Format: `projects/{project}/locations/{location}/customClasses/{c... |

**Response**: `CustomClass`

```typescript
const res = await speech.customClasses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `speech.projects.locations.customClasses.delete`

**DELETE** `v1/{+name}`

Delete a custom class.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the custom class to delete. Format: `projects/{project}/locations/{location}/customClasses/{cus... |

**Response**: `Empty`

```typescript
const res = await speech.customClasses.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `speech.projects.locations.phraseSets.list`

**GET** `v1/{+parent}/phraseSets`

List phrase sets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of phrase set. Format: `projects/{project}/locations/{location}` Spe... |
| `pageSize` | `integer` | query | No | The maximum number of phrase sets to return. The service may return fewer than this value. If unspecified, at most 50... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListPhraseSet` call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `ListPhraseSetResponse`

```typescript
const res = await speech.phraseSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `speech.projects.locations.phraseSets.patch`

**PATCH** `v1/{+name}`

Update a phrase set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the phrase set. |
| `updateMask` | `string` | query | No | The list of fields to be updated. |

**Request body**: `PhraseSet`

**Response**: `PhraseSet`

```typescript
const res = await speech.phraseSets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `speech.projects.locations.phraseSets.create`

**POST** `v1/{+parent}/phraseSets`

Create a set of phrase hints. Each item in the set can be a single word or a multi-word phrase. The items in the PhraseSet are favored by the recognition model when you send a call that includes the PhraseSet.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this phrase set will be created. Format: `projects/{project}/locations/{location}... |

**Request body**: `CreatePhraseSetRequest`

**Response**: `PhraseSet`

```typescript
const res = await speech.phraseSets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `speech.projects.locations.phraseSets.get`

**GET** `v1/{+name}`

Get a phrase set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the phrase set to retrieve. Format: `projects/{project}/locations/{location}/phraseSets/{phrase... |

**Response**: `PhraseSet`

```typescript
const res = await speech.phraseSets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `speech.projects.locations.phraseSets.delete`

**DELETE** `v1/{+name}`

Delete a phrase set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the phrase set to delete. Format: `projects/{project}/locations/{location}/phraseSets/{phrase_s... |

**Response**: `Empty`

```typescript
const res = await speech.phraseSets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `speech.speech.recognize`

**POST** `v1/speech:recognize`

Performs synchronous speech recognition: receive results after all audio has been sent and processed.

**Request body**: `RecognizeRequest`

**Response**: `RecognizeResponse`

```typescript
const res = await speech.speech.recognize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `speech.speech.longrunningrecognize`

**POST** `v1/speech:longrunningrecognize`

Performs asynchronous speech recognition: receive results via the google.longrunning.Operations interface. Returns either an `Operation.error` or an `Operation.response` which contains a `LongRunningRecognizeResponse` message. For more information on asynchronous speech recognition, see the [how-to](https://cloud.google.com/speech-to-text/docs/async-recognize).

**Request body**: `LongRunningRecognizeRequest`

**Response**: `Operation`

```typescript
const res = await speech.speech.longrunningrecognize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `speech.operations.list`

**GET** `v1/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | The standard list filter. |
| `name` | `string` | query | No | The name of the operation's parent resource. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `ListOperationsResponse`

```typescript
const res = await speech.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `speech.operations.get`

**GET** `v1/operations/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await speech.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `ABNFGrammar`

| Property | Type | Description |
|----------|------|-------------|
| `abnfStrings` | `array<string>` | All declarations and rules of an ABNF grammar broken up into multiple strings that will end up co... |

### `ClassItem`

An item of the class.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | The class item's value. |

### `CreateCustomClassRequest`

Message sent by the client for the `CreateCustomClass` method.

| Property | Type | Description |
|----------|------|-------------|
| `customClass` | `CustomClass` | Required. The custom class to create. |
| `customClassId` | `string` | Required. The ID to use for the custom class, which will become the final component of the custom... |

### `CreatePhraseSetRequest`

Message sent by the client for the `CreatePhraseSet` method.

| Property | Type | Description |
|----------|------|-------------|
| `phraseSet` | `PhraseSet` | Required. The phrase set to create. |
| `phraseSetId` | `string` | Required. The ID to use for the phrase set, which will become the final component of the phrase s... |

### `CustomClass`

A set of words or phrases that represents a common concept likely to appear in your audio, for example a list of passenger ship names. CustomClass items can be substituted into placeholders that you set in PhraseSet phrases.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Output only. Allows users to store small amounts of arbitrary data. Both the key and the value mu... |
| `customClassId` | `string` | If this custom class is a resource, the custom_class_id is the resource id of the CustomClass. Ca... |
| `deleteTime` | `string` | Output only. The time at which this resource was requested for deletion. This field is not used. |
| `displayName` | `string` | Output only. User-settable, human-readable name for the CustomClass. Must be 63 characters or les... |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields. This may... |
| `expireTime` | `string` | Output only. The time at which this resource will be purged. This field is not used. |
| `items` | `array<ClassItem>` | A collection of class items. |
| `kmsKeyName` | `string` | Output only. The [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with w... |
| `kmsKeyVersionName` | `string` | Output only. The [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_... |
| `name` | `string` | The resource name of the custom class. |
| `reconciling` | `boolean` | Output only. Whether or not this CustomClass is in the process of being updated. This field is no... |
| `state` | `string` | Output only. The CustomClass lifecycle state. This field is not used. |
| `uid` | `string` | Output only. System-assigned unique identifier for the CustomClass. This field is not used. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Entry`

A single replacement configuration.

| Property | Type | Description |
|----------|------|-------------|
| `caseSensitive` | `boolean` | Whether the search is case sensitive. |
| `replace` | `string` | What to replace with. Max length is 100 characters. |
| `search` | `string` | What to replace. Max length is 100 characters. |

### `ListCustomClassesResponse`

Message returned to the client by the `ListCustomClasses` method.

| Property | Type | Description |
|----------|------|-------------|
| `customClasses` | `array<CustomClass>` | The custom classes. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListPhraseSetResponse`

Message returned to the client by the `ListPhraseSet` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `phraseSets` | `array<PhraseSet>` | The phrase set. |

### `LongRunningRecognizeMetadata`

Describes the progress of a long-running `LongRunningRecognize` call. It is included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `lastUpdateTime` | `string` | Time of the most recent processing update. |
| `progressPercent` | `integer` | Approximate percentage of audio processed thus far. Guaranteed to be 100 when the audio is fully ... |
| `startTime` | `string` | Time when the request was received. |
| `uri` | `string` | Output only. The URI of the audio file being transcribed. Empty if the audio was sent as byte con... |

### `LongRunningRecognizeRequest`

The top-level message sent by the client for the `LongRunningRecognize` method.

| Property | Type | Description |
|----------|------|-------------|
| `audio` | `RecognitionAudio` | Required. The audio data to be recognized. |
| `config` | `RecognitionConfig` | Required. Provides information to the recognizer that specifies how to process the request. |
| `outputConfig` | `TranscriptOutputConfig` | Optional. Specifies an optional destination for the recognition results. |

### `LongRunningRecognizeResponse`

The only message returned to the client by the `LongRunningRecognize` method. It contains the result as zero or more sequential `SpeechRecognitionResult` messages. It is included in the `result.response` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `outputConfig` | `TranscriptOutputConfig` | Original output config if present in the request. |
| `outputError` | `Status` | If the transcript output fails this field contains the relevant error. |
| `requestId` | `string` | The ID associated with the request. This is a unique ID specific only to the given request. |
| `results` | `array<SpeechRecognitionResult>` | Sequential list of transcription results corresponding to sequential portions of audio. |
| `speechAdaptationInfo` | `SpeechAdaptationInfo` | Provides information on speech adaptation behavior in response |
| `totalBilledTime` | `string` | When available, billed audio seconds for the corresponding request. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Phrase`

A phrases containing words and phrase "hints" so that the speech recognition is more likely to recognize them. This can be used to improve the accuracy for specific words and phrases, for example, if specific commands are typically spoken by the user. This can also be used to add additional words to the vocabulary of the recognizer. See [usage limits](https://cloud.google.com/speech-to-text/quotas#content). List items can also include pre-built or custom classes containing groups of words that represent common concepts that occur in natural language. For example, rather than providing a phrase hint for every month of the year (e.g. "i was born in january", "i was born in febuary", ...), use the pre-built `$MONTH` class improves the likelihood of correctly transcribing audio that includes months (e.g. "i was born in $month"). To refer to pre-built classes, use the class' symbol prepended with `$` e.g. `$MONTH`. To refer to custom classes that were defined inline in the request, set the class's `custom_class_id` to a string unique to all class resources and inline classes. Then use the class' id wrapped in $`{...}` e.g. "${my-months}". To refer to custom classes resources, use the class' id wrapped in `${}` (e.g. `${my-months}`). Speech-to-Text supports three locations: `global`, `us` (US North America), and `eu` (Europe). If you are calling the `speech.googleapis.com` endpoint, use the `global` location. To specify a region, use a [regional endpoint](https://cloud.google.com/speech-to-text/docs/endpoints) with matching `us` or `eu` location value.

| Property | Type | Description |
|----------|------|-------------|
| `boost` | `number` | Hint Boost. Overrides the boost set at the phrase set level. Positive value will increase the pro... |
| `value` | `string` | The phrase itself. |

### `PhraseSet`

Provides "hints" to the speech recognizer to favor specific words and phrases in the results.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Output only. Allows users to store small amounts of arbitrary data. Both the key and the value mu... |
| `boost` | `number` | Hint Boost. Positive value will increase the probability that a specific phrase will be recognize... |
| `deleteTime` | `string` | Output only. The time at which this resource was requested for deletion. This field is not used. |
| `displayName` | `string` | Output only. User-settable, human-readable name for the PhraseSet. Must be 63 characters or less.... |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields. This may... |
| `expireTime` | `string` | Output only. The time at which this resource will be purged. This field is not used. |
| `kmsKeyName` | `string` | Output only. The [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with w... |
| `kmsKeyVersionName` | `string` | Output only. The [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_... |
| `name` | `string` | The resource name of the phrase set. |
| `phrases` | `array<Phrase>` | A list of word and phrases. |
| `reconciling` | `boolean` | Output only. Whether or not this PhraseSet is in the process of being updated. This field is not ... |
| `state` | `string` | Output only. The CustomClass lifecycle state. This field is not used. |
| `uid` | `string` | Output only. System-assigned unique identifier for the PhraseSet. This field is not used. |

### `RecognitionAudio`

Contains audio data in the encoding specified in the `RecognitionConfig`. Either `content` or `uri` must be supplied. Supplying both or neither returns google.rpc.Code.INVALID_ARGUMENT. See [content limits](https://cloud.google.com/speech-to-text/quotas#content).

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The audio data bytes encoded as specified in `RecognitionConfig`. Note: as with all bytes fields,... |
| `uri` | `string` | URI that points to a file that contains audio data bytes as specified in `RecognitionConfig`. The... |

### `RecognitionConfig`

Provides information to the recognizer that specifies how to process the request.

| Property | Type | Description |
|----------|------|-------------|
| `adaptation` | `SpeechAdaptation` | Speech adaptation configuration improves the accuracy of speech recognition. For more information... |
| `alternativeLanguageCodes` | `array<string>` | A list of up to 3 additional [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tags... |
| `audioChannelCount` | `integer` | The number of channels in the input audio data. ONLY set this for MULTI-CHANNEL recognition. Vali... |
| `diarizationConfig` | `SpeakerDiarizationConfig` | Config to enable speaker diarization and set additional parameters to make diarization better sui... |
| `enableAutomaticPunctuation` | `boolean` | If 'true', adds punctuation to recognition result hypotheses. This feature is only available in s... |
| `enableSeparateRecognitionPerChannel` | `boolean` | This needs to be set to `true` explicitly and `audio_channel_count` > 1 to get each channel recog... |
| `enableSpokenEmojis` | `boolean` | The spoken emoji behavior for the call If not set, uses default behavior based on model of choice... |
| `enableSpokenPunctuation` | `boolean` | The spoken punctuation behavior for the call If not set, uses default behavior based on model of ... |
| `enableWordConfidence` | `boolean` | If `true`, the top result includes a list of words and the confidence for those words. If `false`... |
| `enableWordTimeOffsets` | `boolean` | If `true`, the top result includes a list of words and the start and end time offsets (timestamps... |
| `encoding` | `string` | Encoding of audio data sent in all `RecognitionAudio` messages. This field is optional for `FLAC`... |
| `languageCode` | `string` | Required. The language of the supplied audio as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp... |
| `maxAlternatives` | `integer` | Maximum number of recognition hypotheses to be returned. Specifically, the maximum number of `Spe... |
| `metadata` | `RecognitionMetadata` | Metadata regarding this request. |
| `model` | `string` | Which model to select for the given request. Select the model best suited to your domain to get b... |
| `profanityFilter` | `boolean` | If set to `true`, the server will attempt to filter out profanities, replacing all but the initia... |
| `sampleRateHertz` | `integer` | Sample rate in Hertz of the audio data sent in all `RecognitionAudio` messages. Valid values are:... |
| `speechContexts` | `array<SpeechContext>` | Array of SpeechContext. A means to provide context to assist the speech recognition. For more inf... |
| `transcriptNormalization` | `TranscriptNormalization` | Optional. Use transcription normalization to automatically replace parts of the transcript with p... |
| `useEnhanced` | `boolean` | Set to true to use an enhanced model for speech recognition. If `use_enhanced` is set to true and... |

### `RecognitionMetadata`

Description of audio data to be recognized.

| Property | Type | Description |
|----------|------|-------------|
| `audioTopic` | `string` | Description of the content. Eg. "Recordings of federal supreme court hearings from 2012". |
| `industryNaicsCodeOfAudio` | `integer` | The industry vertical to which this speech recognition request most closely applies. This is most... |
| `interactionType` | `string` | The use case most closely describing the audio content to be recognized. |
| `microphoneDistance` | `string` | The audio type that most closely describes the audio being recognized. |
| `originalMediaType` | `string` | The original media the speech was recorded on. |
| `originalMimeType` | `string` | Mime type of the original audio file. For example `audio/m4a`, `audio/x-alaw-basic`, `audio/mp3`,... |
| `recordingDeviceName` | `string` | The device used to make the recording. Examples 'Nexus 5X' or 'Polycom SoundStation IP 6000' or '... |
| `recordingDeviceType` | `string` | The type of device the speech was recorded with. |

### `RecognizeRequest`

The top-level message sent by the client for the `Recognize` method.

| Property | Type | Description |
|----------|------|-------------|
| `audio` | `RecognitionAudio` | Required. The audio data to be recognized. |
| `config` | `RecognitionConfig` | Required. Provides information to the recognizer that specifies how to process the request. |

### `RecognizeResponse`

The only message returned to the client by the `Recognize` method. It contains the result as zero or more sequential `SpeechRecognitionResult` messages.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | The ID associated with the request. This is a unique ID specific only to the given request. |
| `results` | `array<SpeechRecognitionResult>` | Sequential list of transcription results corresponding to sequential portions of audio. |
| `speechAdaptationInfo` | `SpeechAdaptationInfo` | Provides information on adaptation behavior in response |
| `totalBilledTime` | `string` | When available, billed audio seconds for the corresponding request. |
| `usingLegacyModels` | `boolean` | Whether request used legacy asr models (was not automatically migrated to use conformer models). |

### `SpeakerDiarizationConfig`

Config to enable speaker diarization.

| Property | Type | Description |
|----------|------|-------------|
| `enableSpeakerDiarization` | `boolean` | If 'true', enables speaker detection for each recognized word in the top alternative of the recog... |
| `maxSpeakerCount` | `integer` | Maximum number of speakers in the conversation. This range gives you more flexibility by allowing... |
| `minSpeakerCount` | `integer` | Minimum number of speakers in the conversation. This range gives you more flexibility by allowing... |
| `speakerTag` | `integer` | Output only. Unused. |

### `SpeechAdaptation`

Speech adaptation configuration.

| Property | Type | Description |
|----------|------|-------------|
| `abnfGrammar` | `ABNFGrammar` | Augmented Backus-Naur form (ABNF) is a standardized grammar notation comprised by a set of deriva... |
| `customClasses` | `array<CustomClass>` | A collection of custom classes. To specify the classes inline, leave the class' `name` blank and ... |
| `phraseSetReferences` | `array<string>` | A collection of phrase set resource names to use. |
| `phraseSets` | `array<PhraseSet>` | A collection of phrase sets. To specify the hints inline, leave the phrase set's `name` blank and... |

### `SpeechAdaptationInfo`

Information on speech adaptation use in results

| Property | Type | Description |
|----------|------|-------------|
| `adaptationTimeout` | `boolean` | Whether there was a timeout when applying speech adaptation. If true, adaptation had no effect in... |
| `timeoutMessage` | `string` | If set, returns a message specifying which part of the speech adaptation request timed out. |

### `SpeechContext`

Provides "hints" to the speech recognizer to favor specific words and phrases in the results.

| Property | Type | Description |
|----------|------|-------------|
| `boost` | `number` | Hint Boost. Positive value will increase the probability that a specific phrase will be recognize... |
| `phrases` | `array<string>` | A list of strings containing words and phrases "hints" so that the speech recognition is more lik... |

### `SpeechRecognitionAlternative`

Alternative hypotheses (a.k.a. n-best list).

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likel... |
| `transcript` | `string` | Transcript text representing the words that the user spoke. In languages that use spaces to separ... |
| `words` | `array<WordInfo>` | A list of word-specific information for each recognized word. Note: When `enable_speaker_diarizat... |

### `SpeechRecognitionResult`

A speech recognition result corresponding to a portion of the audio.

| Property | Type | Description |
|----------|------|-------------|
| `alternatives` | `array<SpeechRecognitionAlternative>` | May contain one or more recognition hypotheses (up to the maximum specified in `max_alternatives`... |
| `channelTag` | `integer` | For multi-channel audio, this is the channel number corresponding to the recognized result for th... |
| `languageCode` | `string` | Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the langu... |
| `resultEndTime` | `string` | Time offset of the end of this result relative to the beginning of the audio. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TranscriptNormalization`

Transcription normalization configuration. Use transcription normalization to automatically replace parts of the transcript with phrases of your choosing. For StreamingRecognize, this normalization only applies to stable partial transcripts (stability > 0.8) and final transcripts.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<Entry>` | A list of replacement entries. We will perform replacement with one entry at a time. For example,... |

### `TranscriptOutputConfig`

Specifies an optional destination for the recognition results.

| Property | Type | Description |
|----------|------|-------------|
| `gcsUri` | `string` | Specifies a Cloud Storage URI for the recognition results. Must be specified in the format: `gs:/... |

### `WordInfo`

Word-specific information for recognized words.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likel... |
| `endTime` | `string` | Time offset relative to the beginning of the audio, and corresponding to the end of the spoken wo... |
| `speakerLabel` | `string` | Output only. A label value assigned for every unique speaker within the audio. This field specifi... |
| `speakerTag` | `integer` | Output only. A distinct integer value is assigned for every speaker within the audio. This field ... |
| `startTime` | `string` | Time offset relative to the beginning of the audio, and corresponding to the start of the spoken ... |
| `word` | `string` | The word corresponding to this set of information. |

