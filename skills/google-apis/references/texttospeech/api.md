# Cloud Text-to-Speech API - API Reference

**Version**: `v1` | **Methods**: 7 | **Schemas**: 24

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `texttospeech.projects.locations.synthesizeLongAudio` | POST | `v1/{+parent}:synthesizeLongAudio` | Synthesizes long form text asynchronously. |
| `texttospeech.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `texttospeech.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `texttospeech.text.synthesize` | POST | `v1/text:synthesize` | Synthesizes speech synchronously: receive results after all text input has been processed. |
| `texttospeech.voices.list` | GET | `v1/voices` | Returns a list of Voice supported for synthesis. |
| `texttospeech.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `texttospeech.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |

### `texttospeech.projects.locations.synthesizeLongAudio`

**POST** `v1/{+parent}:synthesizeLongAudio`

Synthesizes long form text asynchronously.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource states of the request in the form of `projects/*/locations/*`. |

**Request body**: `SynthesizeLongAudioRequest`

**Response**: `Operation`

```typescript
const res = await texttospeech.locations.synthesizeLongAudio({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `texttospeech.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await texttospeech.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `texttospeech.projects.locations.operations.list`

**GET** `v1/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `ListOperationsResponse`

```typescript
const res = await texttospeech.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `texttospeech.text.synthesize`

**POST** `v1/text:synthesize`

Synthesizes speech synchronously: receive results after all text input has been processed.

**Request body**: `SynthesizeSpeechRequest`

**Response**: `SynthesizeSpeechResponse`

```typescript
const res = await texttospeech.text.synthesize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `texttospeech.voices.list`

**GET** `v1/voices`

Returns a list of Voice supported for synthesis.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `languageCode` | `string` | query | No | Optional. Recommended. [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. If not specified, the API... |

**Response**: `ListVoicesResponse`

```typescript
const res = await texttospeech.voices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `texttospeech.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await texttospeech.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `texttospeech.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await texttospeech.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AdvancedVoiceOptions`

Used for advanced voice options.

| Property | Type | Description |
|----------|------|-------------|
| `enableTextnorm` | `boolean` | Optional. If true, textnorm will be applied to text input. This feature is enabled by default. On... |
| `lowLatencyJourneySynthesis` | `boolean` | Only for Journey voices. If false, the synthesis is context aware and has a higher latency. |
| `relaxSafetyFilters` | `boolean` | Optional. Input only. If true, relaxes safety filters for Gemini TTS. Only supported for accounts... |

### `AudioConfig`

Description of audio data to be synthesized.

| Property | Type | Description |
|----------|------|-------------|
| `audioEncoding` | `string` | Required. The format of the audio byte stream. |
| `effectsProfileId` | `array<string>` | Optional. Input only. An identifier which selects 'audio effects' profiles that are applied on (p... |
| `pitch` | `number` | Optional. Input only. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20 semitones ... |
| `sampleRateHertz` | `integer` | Optional. The synthesis sample rate (in hertz) for this audio. When this is specified in Synthesi... |
| `speakingRate` | `number` | Optional. Input only. Speaking rate/speed, in the range [0.25, 2.0]. 1.0 is the normal native spe... |
| `volumeGainDb` | `number` | Optional. Input only. Volume gain (in dB) of the normal native volume supported by the specific v... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CustomPronunciationParams`

Pronunciation customization for a phrase.

| Property | Type | Description |
|----------|------|-------------|
| `phoneticEncoding` | `string` | The phonetic encoding of the phrase. |
| `phrase` | `string` | The phrase to which the customization is applied. The phrase can be multiple words, such as prope... |
| `pronunciation` | `string` | The pronunciation of the phrase. This must be in the phonetic encoding specified above. |

### `CustomPronunciations`

A collection of pronunciation customizations.

| Property | Type | Description |
|----------|------|-------------|
| `pronunciations` | `array<CustomPronunciationParams>` | The pronunciation customizations are applied. |

### `CustomVoiceParams`

Description of the custom voice to be synthesized.

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` | Required. The name of the AutoML model that synthesizes the custom voice. |
| `reportedUsage` | `string` | Optional. Deprecated. The usage of the synthesized audio to be reported. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata`

Metadata for response returned by the `SynthesizeLongAudio` method.

| Property | Type | Description |
|----------|------|-------------|
| `lastUpdateTime` | `string` | Deprecated. Do not use. |
| `progressPercentage` | `number` | The progress of the most recent processing update in percentage, ie. 70.0%. |
| `startTime` | `string` | Time when the request was received. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListVoicesResponse`

The message returned to the client by the `ListVoices` method.

| Property | Type | Description |
|----------|------|-------------|
| `voices` | `array<Voice>` | The list of voices. |

### `MultiSpeakerMarkup`

A collection of turns for multi-speaker synthesis.

| Property | Type | Description |
|----------|------|-------------|
| `turns` | `array<Turn>` | Required. Speaker turns. |

### `MultiSpeakerVoiceConfig`

Configuration for a multi-speaker text-to-speech setup. Enables the use of up to two distinct voices in a single synthesis request.

| Property | Type | Description |
|----------|------|-------------|
| `speakerVoiceConfigs` | `array<MultispeakerPrebuiltVoice>` | Required. A list of configurations for the voices of the speakers. Exactly two speaker voice conf... |

### `MultispeakerPrebuiltVoice`

Configuration for a single speaker in a Gemini TTS multi-speaker setup. Enables dialogue between two speakers.

| Property | Type | Description |
|----------|------|-------------|
| `speakerAlias` | `string` | Required. The speaker alias of the voice. This is the user-chosen speaker name that is used in th... |
| `speakerId` | `string` | Required. The speaker ID of the voice. See https://cloud.google.com/text-to-speech/docs/gemini-tt... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `SynthesisInput`

Contains text input to be synthesized. Either `text` or `ssml` must be supplied. Supplying both or neither returns google.rpc.Code.INVALID_ARGUMENT. The input size is limited to 5000 bytes.

| Property | Type | Description |
|----------|------|-------------|
| `customPronunciations` | `CustomPronunciations` | Optional. The pronunciation customizations are applied to the input. If this is set, the input is... |
| `markup` | `string` | Markup for Chirp 3: HD voices specifically. This field may not be used with any other voices. |
| `multiSpeakerMarkup` | `MultiSpeakerMarkup` | The multi-speaker input to be synthesized. Only applicable for multi-speaker synthesis. |
| `prompt` | `string` | This system instruction is supported only for controllable/promptable voice models. If this syste... |
| `ssml` | `string` | The SSML document to be synthesized. The SSML document must be valid and well-formed. Otherwise t... |
| `text` | `string` | The raw text to be synthesized. |

### `SynthesizeLongAudioMetadata`

Metadata for response returned by the `SynthesizeLongAudio` method.

| Property | Type | Description |
|----------|------|-------------|
| `lastUpdateTime` | `string` | Deprecated. Do not use. |
| `progressPercentage` | `number` | The progress of the most recent processing update in percentage, ie. 70.0%. |
| `startTime` | `string` | Time when the request was received. |

### `SynthesizeLongAudioRequest`

The top-level message sent by the client for the `SynthesizeLongAudio` method.

| Property | Type | Description |
|----------|------|-------------|
| `audioConfig` | `AudioConfig` | Required. The configuration of the synthesized audio. |
| `input` | `SynthesisInput` | Required. The Synthesizer requires either plain text or SSML as input. |
| `outputGcsUri` | `string` | Required. Specifies a Cloud Storage URI for the synthesis results. Must be specified in the forma... |
| `voice` | `VoiceSelectionParams` | Required. The desired voice of the synthesized audio. |

### `SynthesizeSpeechRequest`

The top-level message sent by the client for the `SynthesizeSpeech` method.

| Property | Type | Description |
|----------|------|-------------|
| `advancedVoiceOptions` | `AdvancedVoiceOptions` | Optional. Advanced voice options. |
| `audioConfig` | `AudioConfig` | Required. The configuration of the synthesized audio. |
| `input` | `SynthesisInput` | Required. The Synthesizer requires either plain text or SSML as input. |
| `voice` | `VoiceSelectionParams` | Required. The desired voice of the synthesized audio. |

### `SynthesizeSpeechResponse`

The message returned to the client by the `SynthesizeSpeech` method.

| Property | Type | Description |
|----------|------|-------------|
| `audioContent` | `string` | The audio data bytes encoded as specified in the request, including the header for encodings that... |

### `Turn`

A multi-speaker turn.

| Property | Type | Description |
|----------|------|-------------|
| `speaker` | `string` | Required. The speaker of the turn, for example, 'O' or 'Q'. Please refer to documentation for ava... |
| `text` | `string` | Required. The text to speak. |

### `Voice`

Description of a voice supported by the TTS service.

| Property | Type | Description |
|----------|------|-------------|
| `languageCodes` | `array<string>` | The languages that this voice supports, expressed as [BCP-47](https://www.rfc-editor.org/rfc/bcp/... |
| `name` | `string` | The name of this voice. Each distinct voice has a unique name. |
| `naturalSampleRateHertz` | `integer` | The natural sample rate (in hertz) for this voice. |
| `ssmlGender` | `string` | The gender of this voice. |

### `VoiceCloneParams`

The configuration of Voice Clone feature.

| Property | Type | Description |
|----------|------|-------------|
| `voiceCloningKey` | `string` | Required. Created by GenerateVoiceCloningKey. |

### `VoiceSelectionParams`

Description of which voice to use for a synthesis request.

| Property | Type | Description |
|----------|------|-------------|
| `customVoice` | `CustomVoiceParams` | The configuration for a custom voice. If [CustomVoiceParams.model] is set, the service will choos... |
| `languageCode` | `string` | Required. The language (and potentially also the region) of the voice expressed as a [BCP-47](htt... |
| `modelName` | `string` | Optional. The name of the model. If set, the service will choose the model matching the specified... |
| `multiSpeakerVoiceConfig` | `MultiSpeakerVoiceConfig` | Optional. The configuration for a Gemini multi-speaker text-to-speech setup. Enables the use of t... |
| `name` | `string` | The name of the voice. If both the name and the gender are not set, the service will choose a voi... |
| `ssmlGender` | `string` | The preferred gender of the voice. If not set, the service will choose a voice based on the other... |
| `voiceClone` | `VoiceCloneParams` | Optional. The configuration for a voice clone. If [VoiceCloneParams.voice_clone_key] is set, the ... |

