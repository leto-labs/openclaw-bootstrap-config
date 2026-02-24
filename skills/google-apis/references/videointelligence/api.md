# Cloud Video Intelligence API - API Reference

**Version**: `v1` | **Methods**: 8 | **Schemas**: 187

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `videointelligence.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `videointelligence.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `videointelligence.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `videointelligence.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `videointelligence.operations.projects.locations.operations.get` | GET | `v1/operations/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `videointelligence.operations.projects.locations.operations.delete` | DELETE | `v1/operations/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `videointelligence.operations.projects.locations.operations.cancel` | POST | `v1/operations/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `videointelligence.videos.annotate` | POST | `v1/videos:annotate` | Performs asynchronous video annotation. Progress and results can be retrieved through the `google... |

### `videointelligence.projects.locations.operations.list`

**GET** `v1/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |

**Response**: `GoogleLongrunning_ListOperationsResponse`

```typescript
const res = await videointelligence.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `videointelligence.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunning_Operation`

```typescript
const res = await videointelligence.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `videointelligence.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `GoogleProtobuf_Empty`

```typescript
const res = await videointelligence.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `videointelligence.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunning_CancelOperationRequest`

**Response**: `GoogleProtobuf_Empty`

```typescript
const res = await videointelligence.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `videointelligence.operations.projects.locations.operations.get`

**GET** `v1/operations/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunning_Operation`

```typescript
const res = await videointelligence.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `videointelligence.operations.projects.locations.operations.delete`

**DELETE** `v1/operations/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `GoogleProtobuf_Empty`

```typescript
const res = await videointelligence.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `videointelligence.operations.projects.locations.operations.cancel`

**POST** `v1/operations/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `GoogleProtobuf_Empty`

```typescript
const res = await videointelligence.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `videointelligence.videos.annotate`

**POST** `v1/videos:annotate`

Performs asynchronous video annotation. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `AnnotateVideoProgress` (progress). `Operation.response` contains `AnnotateVideoResponse` (results).

**Request body**: `GoogleCloudVideointelligenceV1_AnnotateVideoRequest`

**Response**: `GoogleLongrunning_Operation`

```typescript
const res = await videointelligence.videos.annotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudVideointelligenceV1_AnnotateVideoProgress`

Video annotation progress. Included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `annotationProgress` | `array<GoogleCloudVideointelligenceV1_VideoAnnotationProgress>` | Progress metadata for all videos specified in `AnnotateVideoRequest`. |

### `GoogleCloudVideointelligenceV1_AnnotateVideoRequest`

Video annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `features` | `array<string>` | Required. Requested video annotation features. |
| `inputContent` | `string` | The video data bytes. If unset, the input video(s) should be specified via the `input_uri`. If se... |
| `inputUri` | `string` | Input video location. Currently, only [Cloud Storage](https://cloud.google.com/storage/) URIs are... |
| `locationId` | `string` | Optional. Cloud region where annotation should take place. Supported cloud regions are: `us-east1... |
| `outputUri` | `string` | Optional. Location where the output (in JSON format) should be stored. Currently, only [Cloud Sto... |
| `videoContext` | `GoogleCloudVideointelligenceV1_VideoContext` | Additional video context and/or feature-specific parameters. |

### `GoogleCloudVideointelligenceV1_AnnotateVideoResponse`

Video annotation response. Included in the `response` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `annotationResults` | `array<GoogleCloudVideointelligenceV1_VideoAnnotationResults>` | Annotation results for all videos specified in `AnnotateVideoRequest`. |

### `GoogleCloudVideointelligenceV1_DetectedAttribute`

A generic detected attribute represented by name in string format.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Detected attribute confidence. Range [0, 1]. |
| `name` | `string` | The name of the attribute, for example, glasses, dark_glasses, mouth_open. A full list of support... |
| `value` | `string` | Text value of the detection result. For example, the value for "HairColor" can be "black", "blond... |

### `GoogleCloudVideointelligenceV1_DetectedLandmark`

A generic detected landmark represented by name in string format and a 2D location.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The confidence score of the detected landmark. Range [0, 1]. |
| `name` | `string` | The name of this landmark, for example, left_hand, right_shoulder. |
| `point` | `GoogleCloudVideointelligenceV1_NormalizedVertex` | The 2D point of the detected landmark using the normalized image coordinate system. The normalize... |

### `GoogleCloudVideointelligenceV1_Entity`

Detected entity from video analysis.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Textual description, e.g., `Fixed-gear bicycle`. |
| `entityId` | `string` | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://develo... |
| `languageCode` | `string` | Language code for `description` in BCP-47 format. |

### `GoogleCloudVideointelligenceV1_ExplicitContentAnnotation`

Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.

| Property | Type | Description |
|----------|------|-------------|
| `frames` | `array<GoogleCloudVideointelligenceV1_ExplicitContentFrame>` | All video frames where explicit content was detected. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1_ExplicitContentDetectionConfig`

Config for EXPLICIT_CONTENT_DETECTION.

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` | Model to use for explicit content detection. Supported values: "builtin/stable" (the default if u... |

### `GoogleCloudVideointelligenceV1_ExplicitContentFrame`

Video frame level annotation results for explicit content.

| Property | Type | Description |
|----------|------|-------------|
| `pornographyLikelihood` | `string` | Likelihood of the pornography content.. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1_ExportToOutputUriStatus`

Status of exporting annotation response to user specified `output_uri`.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. State of the `output_uri` export. |
| `status` | `GoogleRpc_Status` | Output only. Only set if state is FAILED. |

### `GoogleCloudVideointelligenceV1_FaceAnnotation`

Deprecated. No effect.

| Property | Type | Description |
|----------|------|-------------|
| `frames` | `array<GoogleCloudVideointelligenceV1_FaceFrame>` | All video frames where a face was detected. |
| `segments` | `array<GoogleCloudVideointelligenceV1_FaceSegment>` | All video segments where a face was detected. |
| `thumbnail` | `string` | Thumbnail of a representative face view (in JPEG format). |

### `GoogleCloudVideointelligenceV1_FaceDetectionAnnotation`

Face detection annotation.

| Property | Type | Description |
|----------|------|-------------|
| `thumbnail` | `string` | The thumbnail of a person's face. |
| `tracks` | `array<GoogleCloudVideointelligenceV1_Track>` | The face tracks with attributes. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1_FaceDetectionConfig`

Config for FACE_DETECTION.

| Property | Type | Description |
|----------|------|-------------|
| `includeAttributes` | `boolean` | Whether to enable face attributes detection, such as glasses, dark_glasses, mouth_open etc. Ignor... |
| `includeBoundingBoxes` | `boolean` | Whether bounding boxes are included in the face annotation output. |
| `model` | `string` | Model to use for face detection. Supported values: "builtin/stable" (the default if unset) and "b... |

### `GoogleCloudVideointelligenceV1_FaceFrame`

Deprecated. No effect.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedBoundingBoxes` | `array<GoogleCloudVideointelligenceV1_NormalizedBoundingBox>` | Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detect... |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1_FaceSegment`

Video segment level annotation results for face detection.

| Property | Type | Description |
|----------|------|-------------|
| `segment` | `GoogleCloudVideointelligenceV1_VideoSegment` | Video segment where a face was detected. |

### `GoogleCloudVideointelligenceV1_LabelAnnotation`

Label annotation.

| Property | Type | Description |
|----------|------|-------------|
| `categoryEntities` | `array<GoogleCloudVideointelligenceV1_Entity>` | Common categories for the detected entity. For example, when the label is `Terrier`, the category... |
| `entity` | `GoogleCloudVideointelligenceV1_Entity` | Detected entity. |
| `frames` | `array<GoogleCloudVideointelligenceV1_LabelFrame>` | All video frames where a label was detected. |
| `segments` | `array<GoogleCloudVideointelligenceV1_LabelSegment>` | All video segments where a label was detected. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1_LabelDetectionConfig`

Config for LABEL_DETECTION.

| Property | Type | Description |
|----------|------|-------------|
| `frameConfidenceThreshold` | `number` | The confidence threshold we perform filtering on the labels from frame-level detection. If not se... |
| `labelDetectionMode` | `string` | What labels should be detected with LABEL_DETECTION, in addition to video-level labels or segment... |
| `model` | `string` | Model to use for label detection. Supported values: "builtin/stable" (the default if unset) and "... |
| `stationaryCamera` | `boolean` | Whether the video has been shot from a stationary (i.e., non-moving) camera. When set to true, mi... |
| `videoConfidenceThreshold` | `number` | The confidence threshold we perform filtering on the labels from video-level and shot-level detec... |

### `GoogleCloudVideointelligenceV1_LabelFrame`

Video frame level annotation results for label detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence that the label is accurate. Range: [0, 1]. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1_LabelSegment`

Video segment level annotation results for label detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence that the label is accurate. Range: [0, 1]. |
| `segment` | `GoogleCloudVideointelligenceV1_VideoSegment` | Video segment where a label was detected. |

### `GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation`

Annotation corresponding to one detected, tracked and recognized logo class.

| Property | Type | Description |
|----------|------|-------------|
| `entity` | `GoogleCloudVideointelligenceV1_Entity` | Entity category information to specify the logo class that all the logo tracks within this LogoRe... |
| `segments` | `array<GoogleCloudVideointelligenceV1_VideoSegment>` | All video segments where the recognized logo appears. There might be multiple instances of the sa... |
| `tracks` | `array<GoogleCloudVideointelligenceV1_Track>` | All logo tracks where the recognized logo appears. Each track corresponds to one logo instance ap... |

### `GoogleCloudVideointelligenceV1_NormalizedBoundingBox`

Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].

| Property | Type | Description |
|----------|------|-------------|
| `bottom` | `number` | Bottom Y coordinate. |
| `left` | `number` | Left X coordinate. |
| `right` | `number` | Right X coordinate. |
| `top` | `number` | Top Y coordinate. |

### `GoogleCloudVideointelligenceV1_NormalizedBoundingPoly`

Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it's clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trigonometric calculations for location of the box.

| Property | Type | Description |
|----------|------|-------------|
| `vertices` | `array<GoogleCloudVideointelligenceV1_NormalizedVertex>` | Normalized vertices of the bounding polygon. |

### `GoogleCloudVideointelligenceV1_NormalizedVertex`

A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |

### `GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation`

Annotations corresponding to one tracked object.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Object category's labeling confidence of this track. |
| `entity` | `GoogleCloudVideointelligenceV1_Entity` | Entity to specify the object category that this track is labeled as. |
| `frames` | `array<GoogleCloudVideointelligenceV1_ObjectTrackingFrame>` | Information corresponding to all frames where this object track appears. Non-streaming batch mode... |
| `segment` | `GoogleCloudVideointelligenceV1_VideoSegment` | Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears. |
| `trackId` | `string` | Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it... |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1_ObjectTrackingConfig`

Config for OBJECT_TRACKING.

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` | Model to use for object tracking. Supported values: "builtin/stable" (the default if unset) and "... |

### `GoogleCloudVideointelligenceV1_ObjectTrackingFrame`

Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedBoundingBox` | `GoogleCloudVideointelligenceV1_NormalizedBoundingBox` | The normalized bounding box location of this object track for the frame. |
| `timeOffset` | `string` | The timestamp of the frame in microseconds. |

### `GoogleCloudVideointelligenceV1_PersonDetectionAnnotation`

Person detection annotation per video.

| Property | Type | Description |
|----------|------|-------------|
| `tracks` | `array<GoogleCloudVideointelligenceV1_Track>` | The detected tracks of a person. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1_PersonDetectionConfig`

Config for PERSON_DETECTION.

| Property | Type | Description |
|----------|------|-------------|
| `includeAttributes` | `boolean` | Whether to enable person attributes detection, such as cloth color (black, blue, etc), type (coat... |
| `includeBoundingBoxes` | `boolean` | Whether bounding boxes are included in the person detection annotation output. |
| `includePoseLandmarks` | `boolean` | Whether to enable pose landmarks detection. Ignored if 'include_bounding_boxes' is set to false. |

### `GoogleCloudVideointelligenceV1_ShotChangeDetectionConfig`

Config for SHOT_CHANGE_DETECTION.

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` | Model to use for shot change detection. Supported values: "builtin/stable" (the default if unset)... |

### `GoogleCloudVideointelligenceV1_SpeechContext`

Provides "hints" to the speech recognizer to favor specific words and phrases in the results.

| Property | Type | Description |
|----------|------|-------------|
| `phrases` | `array<string>` | Optional. A list of strings containing words and phrases "hints" so that the speech recognition i... |

### `GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative`

Alternative hypotheses (a.k.a. n-best list).

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated ... |
| `transcript` | `string` | Transcript text representing the words that the user spoke. |
| `words` | `array<GoogleCloudVideointelligenceV1_WordInfo>` | Output only. A list of word-specific information for each recognized word. Note: When `enable_spe... |

### `GoogleCloudVideointelligenceV1_SpeechTranscription`

A speech recognition result corresponding to a portion of the audio.

| Property | Type | Description |
|----------|------|-------------|
| `alternatives` | `array<GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative>` | May contain one or more recognition hypotheses (up to the maximum specified in `max_alternatives`... |
| `languageCode` | `string` | Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the langu... |

### `GoogleCloudVideointelligenceV1_SpeechTranscriptionConfig`

Config for SPEECH_TRANSCRIPTION.

| Property | Type | Description |
|----------|------|-------------|
| `audioTracks` | `array<integer>` | Optional. For file formats, such as MXF or MKV, supporting multiple audio tracks, specify up to t... |
| `diarizationSpeakerCount` | `integer` | Optional. If set, specifies the estimated number of speakers in the conversation. If not set, def... |
| `enableAutomaticPunctuation` | `boolean` | Optional. If 'true', adds punctuation to recognition result hypotheses. This feature is only avai... |
| `enableSpeakerDiarization` | `boolean` | Optional. If 'true', enables speaker detection for each recognized word in the top alternative of... |
| `enableWordConfidence` | `boolean` | Optional. If `true`, the top result includes a list of words and the confidence for those words. ... |
| `filterProfanity` | `boolean` | Optional. If set to `true`, the server will attempt to filter out profanities, replacing all but ... |
| `languageCode` | `string` | Required. *Required* The language of the supplied audio as a [BCP-47](https://www.rfc-editor.org/... |
| `maxAlternatives` | `integer` | Optional. Maximum number of recognition hypotheses to be returned. Specifically, the maximum numb... |
| `speechContexts` | `array<GoogleCloudVideointelligenceV1_SpeechContext>` | Optional. A means to provide context to assist the speech recognition. |

### `GoogleCloudVideointelligenceV1_TextAnnotation`

Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.

| Property | Type | Description |
|----------|------|-------------|
| `segments` | `array<GoogleCloudVideointelligenceV1_TextSegment>` | All video segments where OCR detected text appears. |
| `text` | `string` | The detected text. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1_TextDetectionConfig`

Config for TEXT_DETECTION.

| Property | Type | Description |
|----------|------|-------------|
| `languageHints` | `array<string>` | Language hint can be specified if the language to be detected is known a priori. It can increase ... |
| `model` | `string` | Model to use for text detection. Supported values: "builtin/stable" (the default if unset) and "b... |

### `GoogleCloudVideointelligenceV1_TextFrame`

Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.

| Property | Type | Description |
|----------|------|-------------|
| `rotatedBoundingBox` | `GoogleCloudVideointelligenceV1_NormalizedBoundingPoly` | Bounding polygon of the detected text for this frame. |
| `timeOffset` | `string` | Timestamp of this frame. |

### `GoogleCloudVideointelligenceV1_TextSegment`

Video segment level annotation results for text detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence for the track of detected text. It is calculated as the highest over all frames where ... |
| `frames` | `array<GoogleCloudVideointelligenceV1_TextFrame>` | Information related to the frames where OCR detected text appears. |
| `segment` | `GoogleCloudVideointelligenceV1_VideoSegment` | Video segment where a text snippet was detected. |

### `GoogleCloudVideointelligenceV1_TimestampedObject`

For tracking related features. An object at time_offset with attributes, and located with normalized_bounding_box.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<GoogleCloudVideointelligenceV1_DetectedAttribute>` | Optional. The attributes of the object in the bounding box. |
| `landmarks` | `array<GoogleCloudVideointelligenceV1_DetectedLandmark>` | Optional. The detected landmarks. |
| `normalizedBoundingBox` | `GoogleCloudVideointelligenceV1_NormalizedBoundingBox` | Normalized Bounding box in a frame, where the object is located. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this ob... |

### `GoogleCloudVideointelligenceV1_Track`

A track of an object instance.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<GoogleCloudVideointelligenceV1_DetectedAttribute>` | Optional. Attributes in the track level. |
| `confidence` | `number` | Optional. The confidence score of the tracked object. |
| `segment` | `GoogleCloudVideointelligenceV1_VideoSegment` | Video segment of a track. |
| `timestampedObjects` | `array<GoogleCloudVideointelligenceV1_TimestampedObject>` | The object with timestamp and attributes per frame in the track. |

### `GoogleCloudVideointelligenceV1_VideoAnnotationProgress`

Annotation progress for a single video.

| Property | Type | Description |
|----------|------|-------------|
| `exportStatus` | `GoogleCloudVideointelligenceV1_ExportToOutputUriStatus` | Status of exporting annotation response to user specified `output_uri`. Only set if `output_uri` ... |
| `feature` | `string` | Specifies which feature is being tracked if the request contains more than one feature. |
| `inputUri` | `string` | Video file location in [Cloud Storage](https://cloud.google.com/storage/). |
| `progressPercent` | `integer` | Approximate percentage processed thus far. Guaranteed to be 100 when fully processed. |
| `segment` | `GoogleCloudVideointelligenceV1_VideoSegment` | Specifies which segment is being tracked if the request contains more than one segment. |
| `startTime` | `string` | Time when the request was received. |
| `updateTime` | `string` | Time of the most recent update. |

### `GoogleCloudVideointelligenceV1_VideoAnnotationResults`

Annotation results for a single video.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpc_Status` | If set, indicates an error. Note that for a single `AnnotateVideoRequest` some videos may succeed... |
| `explicitAnnotation` | `GoogleCloudVideointelligenceV1_ExplicitContentAnnotation` | Explicit content annotation. |
| `faceAnnotations` | `array<GoogleCloudVideointelligenceV1_FaceAnnotation>` | Deprecated. Please use `face_detection_annotations` instead. |
| `faceDetectionAnnotations` | `array<GoogleCloudVideointelligenceV1_FaceDetectionAnnotation>` | Face detection annotations. |
| `frameLabelAnnotations` | `array<GoogleCloudVideointelligenceV1_LabelAnnotation>` | Label annotations on frame level. There is exactly one element for each unique label. |
| `inputUri` | `string` | Video file location in [Cloud Storage](https://cloud.google.com/storage/). |
| `logoRecognitionAnnotations` | `array<GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation>` | Annotations for list of logos detected, tracked and recognized in video. |
| `objectAnnotations` | `array<GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation>` | Annotations for list of objects detected and tracked in video. |
| `personDetectionAnnotations` | `array<GoogleCloudVideointelligenceV1_PersonDetectionAnnotation>` | Person detection annotations. |
| `segment` | `GoogleCloudVideointelligenceV1_VideoSegment` | Video segment on which the annotation is run. |
| `segmentLabelAnnotations` | `array<GoogleCloudVideointelligenceV1_LabelAnnotation>` | Topical label annotations on video level or user-specified segment level. There is exactly one el... |
| `segmentPresenceLabelAnnotations` | `array<GoogleCloudVideointelligenceV1_LabelAnnotation>` | Presence label annotations on video level or user-specified segment level. There is exactly one e... |
| `shotAnnotations` | `array<GoogleCloudVideointelligenceV1_VideoSegment>` | Shot annotations. Each shot is represented as a video segment. |
| `shotLabelAnnotations` | `array<GoogleCloudVideointelligenceV1_LabelAnnotation>` | Topical label annotations on shot level. There is exactly one element for each unique label. |
| `shotPresenceLabelAnnotations` | `array<GoogleCloudVideointelligenceV1_LabelAnnotation>` | Presence label annotations on shot level. There is exactly one element for each unique label. Com... |
| `speechTranscriptions` | `array<GoogleCloudVideointelligenceV1_SpeechTranscription>` | Speech transcription. |
| `textAnnotations` | `array<GoogleCloudVideointelligenceV1_TextAnnotation>` | OCR text detection and tracking. Annotations for list of detected text snippets. Each will have l... |

### `GoogleCloudVideointelligenceV1_VideoContext`

Video context and/or feature-specific parameters.

| Property | Type | Description |
|----------|------|-------------|
| `explicitContentDetectionConfig` | `GoogleCloudVideointelligenceV1_ExplicitContentDetectionConfig` | Config for EXPLICIT_CONTENT_DETECTION. |
| `faceDetectionConfig` | `GoogleCloudVideointelligenceV1_FaceDetectionConfig` | Config for FACE_DETECTION. |
| `labelDetectionConfig` | `GoogleCloudVideointelligenceV1_LabelDetectionConfig` | Config for LABEL_DETECTION. |
| `objectTrackingConfig` | `GoogleCloudVideointelligenceV1_ObjectTrackingConfig` | Config for OBJECT_TRACKING. |
| `personDetectionConfig` | `GoogleCloudVideointelligenceV1_PersonDetectionConfig` | Config for PERSON_DETECTION. |
| `segments` | `array<GoogleCloudVideointelligenceV1_VideoSegment>` | Video segments to annotate. The segments may overlap and are not required to be contiguous or spa... |
| `shotChangeDetectionConfig` | `GoogleCloudVideointelligenceV1_ShotChangeDetectionConfig` | Config for SHOT_CHANGE_DETECTION. |
| `speechTranscriptionConfig` | `GoogleCloudVideointelligenceV1_SpeechTranscriptionConfig` | Config for SPEECH_TRANSCRIPTION. |
| `textDetectionConfig` | `GoogleCloudVideointelligenceV1_TextDetectionConfig` | Config for TEXT_DETECTION. |

### `GoogleCloudVideointelligenceV1_VideoSegment`

Video segment.

| Property | Type | Description |
|----------|------|-------------|
| `endTimeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inc... |
| `startTimeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the start of the segment (i... |

### `GoogleCloudVideointelligenceV1_WordInfo`

Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as `enable_word_time_offsets`.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated ... |
| `endTime` | `string` | Time offset relative to the beginning of the audio, and corresponding to the end of the spoken wo... |
| `speakerTag` | `integer` | Output only. A distinct integer value is assigned for every speaker within the audio. This field ... |
| `startTime` | `string` | Time offset relative to the beginning of the audio, and corresponding to the start of the spoken ... |
| `word` | `string` | The word corresponding to this set of information. |

### `GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress`

Video annotation progress. Included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `annotationProgress` | `array<GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress>` | Progress metadata for all videos specified in `AnnotateVideoRequest`. |

### `GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse`

Video annotation response. Included in the `response` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `annotationResults` | `array<GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults>` | Annotation results for all videos specified in `AnnotateVideoRequest`. |

### `GoogleCloudVideointelligenceV1beta2_DetectedAttribute`

A generic detected attribute represented by name in string format.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Detected attribute confidence. Range [0, 1]. |
| `name` | `string` | The name of the attribute, for example, glasses, dark_glasses, mouth_open. A full list of support... |
| `value` | `string` | Text value of the detection result. For example, the value for "HairColor" can be "black", "blond... |

### `GoogleCloudVideointelligenceV1beta2_DetectedLandmark`

A generic detected landmark represented by name in string format and a 2D location.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The confidence score of the detected landmark. Range [0, 1]. |
| `name` | `string` | The name of this landmark, for example, left_hand, right_shoulder. |
| `point` | `GoogleCloudVideointelligenceV1beta2_NormalizedVertex` | The 2D point of the detected landmark using the normalized image coordinate system. The normalize... |

### `GoogleCloudVideointelligenceV1beta2_Entity`

Detected entity from video analysis.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Textual description, e.g., `Fixed-gear bicycle`. |
| `entityId` | `string` | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://develo... |
| `languageCode` | `string` | Language code for `description` in BCP-47 format. |

### `GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation`

Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.

| Property | Type | Description |
|----------|------|-------------|
| `frames` | `array<GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame>` | All video frames where explicit content was detected. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame`

Video frame level annotation results for explicit content.

| Property | Type | Description |
|----------|------|-------------|
| `pornographyLikelihood` | `string` | Likelihood of the pornography content.. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1beta2_ExportToOutputUriStatus`

Status of exporting annotation response to user specified `output_uri`.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. State of the `output_uri` export. |
| `status` | `GoogleRpc_Status` | Output only. Only set if state is FAILED. |

### `GoogleCloudVideointelligenceV1beta2_FaceAnnotation`

Deprecated. No effect.

| Property | Type | Description |
|----------|------|-------------|
| `frames` | `array<GoogleCloudVideointelligenceV1beta2_FaceFrame>` | All video frames where a face was detected. |
| `segments` | `array<GoogleCloudVideointelligenceV1beta2_FaceSegment>` | All video segments where a face was detected. |
| `thumbnail` | `string` | Thumbnail of a representative face view (in JPEG format). |

### `GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation`

Face detection annotation.

| Property | Type | Description |
|----------|------|-------------|
| `thumbnail` | `string` | The thumbnail of a person's face. |
| `tracks` | `array<GoogleCloudVideointelligenceV1beta2_Track>` | The face tracks with attributes. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1beta2_FaceFrame`

Deprecated. No effect.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedBoundingBoxes` | `array<GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox>` | Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detect... |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1beta2_FaceSegment`

Video segment level annotation results for face detection.

| Property | Type | Description |
|----------|------|-------------|
| `segment` | `GoogleCloudVideointelligenceV1beta2_VideoSegment` | Video segment where a face was detected. |

### `GoogleCloudVideointelligenceV1beta2_LabelAnnotation`

Label annotation.

| Property | Type | Description |
|----------|------|-------------|
| `categoryEntities` | `array<GoogleCloudVideointelligenceV1beta2_Entity>` | Common categories for the detected entity. For example, when the label is `Terrier`, the category... |
| `entity` | `GoogleCloudVideointelligenceV1beta2_Entity` | Detected entity. |
| `frames` | `array<GoogleCloudVideointelligenceV1beta2_LabelFrame>` | All video frames where a label was detected. |
| `segments` | `array<GoogleCloudVideointelligenceV1beta2_LabelSegment>` | All video segments where a label was detected. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1beta2_LabelFrame`

Video frame level annotation results for label detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence that the label is accurate. Range: [0, 1]. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1beta2_LabelSegment`

Video segment level annotation results for label detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence that the label is accurate. Range: [0, 1]. |
| `segment` | `GoogleCloudVideointelligenceV1beta2_VideoSegment` | Video segment where a label was detected. |

### `GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation`

Annotation corresponding to one detected, tracked and recognized logo class.

| Property | Type | Description |
|----------|------|-------------|
| `entity` | `GoogleCloudVideointelligenceV1beta2_Entity` | Entity category information to specify the logo class that all the logo tracks within this LogoRe... |
| `segments` | `array<GoogleCloudVideointelligenceV1beta2_VideoSegment>` | All video segments where the recognized logo appears. There might be multiple instances of the sa... |
| `tracks` | `array<GoogleCloudVideointelligenceV1beta2_Track>` | All logo tracks where the recognized logo appears. Each track corresponds to one logo instance ap... |

### `GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox`

Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].

| Property | Type | Description |
|----------|------|-------------|
| `bottom` | `number` | Bottom Y coordinate. |
| `left` | `number` | Left X coordinate. |
| `right` | `number` | Right X coordinate. |
| `top` | `number` | Top Y coordinate. |

### `GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly`

Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it's clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trigonometric calculations for location of the box.

| Property | Type | Description |
|----------|------|-------------|
| `vertices` | `array<GoogleCloudVideointelligenceV1beta2_NormalizedVertex>` | Normalized vertices of the bounding polygon. |

### `GoogleCloudVideointelligenceV1beta2_NormalizedVertex`

A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |

### `GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation`

Annotations corresponding to one tracked object.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Object category's labeling confidence of this track. |
| `entity` | `GoogleCloudVideointelligenceV1beta2_Entity` | Entity to specify the object category that this track is labeled as. |
| `frames` | `array<GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame>` | Information corresponding to all frames where this object track appears. Non-streaming batch mode... |
| `segment` | `GoogleCloudVideointelligenceV1beta2_VideoSegment` | Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears. |
| `trackId` | `string` | Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it... |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame`

Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedBoundingBox` | `GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox` | The normalized bounding box location of this object track for the frame. |
| `timeOffset` | `string` | The timestamp of the frame in microseconds. |

### `GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation`

Person detection annotation per video.

| Property | Type | Description |
|----------|------|-------------|
| `tracks` | `array<GoogleCloudVideointelligenceV1beta2_Track>` | The detected tracks of a person. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative`

Alternative hypotheses (a.k.a. n-best list).

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated ... |
| `transcript` | `string` | Transcript text representing the words that the user spoke. |
| `words` | `array<GoogleCloudVideointelligenceV1beta2_WordInfo>` | Output only. A list of word-specific information for each recognized word. Note: When `enable_spe... |

### `GoogleCloudVideointelligenceV1beta2_SpeechTranscription`

A speech recognition result corresponding to a portion of the audio.

| Property | Type | Description |
|----------|------|-------------|
| `alternatives` | `array<GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative>` | May contain one or more recognition hypotheses (up to the maximum specified in `max_alternatives`... |
| `languageCode` | `string` | Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the langu... |

### `GoogleCloudVideointelligenceV1beta2_TextAnnotation`

Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.

| Property | Type | Description |
|----------|------|-------------|
| `segments` | `array<GoogleCloudVideointelligenceV1beta2_TextSegment>` | All video segments where OCR detected text appears. |
| `text` | `string` | The detected text. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1beta2_TextFrame`

Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.

| Property | Type | Description |
|----------|------|-------------|
| `rotatedBoundingBox` | `GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly` | Bounding polygon of the detected text for this frame. |
| `timeOffset` | `string` | Timestamp of this frame. |

### `GoogleCloudVideointelligenceV1beta2_TextSegment`

Video segment level annotation results for text detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence for the track of detected text. It is calculated as the highest over all frames where ... |
| `frames` | `array<GoogleCloudVideointelligenceV1beta2_TextFrame>` | Information related to the frames where OCR detected text appears. |
| `segment` | `GoogleCloudVideointelligenceV1beta2_VideoSegment` | Video segment where a text snippet was detected. |

### `GoogleCloudVideointelligenceV1beta2_TimestampedObject`

For tracking related features. An object at time_offset with attributes, and located with normalized_bounding_box.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<GoogleCloudVideointelligenceV1beta2_DetectedAttribute>` | Optional. The attributes of the object in the bounding box. |
| `landmarks` | `array<GoogleCloudVideointelligenceV1beta2_DetectedLandmark>` | Optional. The detected landmarks. |
| `normalizedBoundingBox` | `GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox` | Normalized Bounding box in a frame, where the object is located. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this ob... |

### `GoogleCloudVideointelligenceV1beta2_Track`

A track of an object instance.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<GoogleCloudVideointelligenceV1beta2_DetectedAttribute>` | Optional. Attributes in the track level. |
| `confidence` | `number` | Optional. The confidence score of the tracked object. |
| `segment` | `GoogleCloudVideointelligenceV1beta2_VideoSegment` | Video segment of a track. |
| `timestampedObjects` | `array<GoogleCloudVideointelligenceV1beta2_TimestampedObject>` | The object with timestamp and attributes per frame in the track. |

### `GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress`

Annotation progress for a single video.

| Property | Type | Description |
|----------|------|-------------|
| `exportStatus` | `GoogleCloudVideointelligenceV1beta2_ExportToOutputUriStatus` | Status of exporting annotation response to user specified `output_uri`. Only set if `output_uri` ... |
| `feature` | `string` | Specifies which feature is being tracked if the request contains more than one feature. |
| `inputUri` | `string` | Video file location in [Cloud Storage](https://cloud.google.com/storage/). |
| `progressPercent` | `integer` | Approximate percentage processed thus far. Guaranteed to be 100 when fully processed. |
| `segment` | `GoogleCloudVideointelligenceV1beta2_VideoSegment` | Specifies which segment is being tracked if the request contains more than one segment. |
| `startTime` | `string` | Time when the request was received. |
| `updateTime` | `string` | Time of the most recent update. |

### `GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults`

Annotation results for a single video.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpc_Status` | If set, indicates an error. Note that for a single `AnnotateVideoRequest` some videos may succeed... |
| `explicitAnnotation` | `GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation` | Explicit content annotation. |
| `faceAnnotations` | `array<GoogleCloudVideointelligenceV1beta2_FaceAnnotation>` | Deprecated. Please use `face_detection_annotations` instead. |
| `faceDetectionAnnotations` | `array<GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation>` | Face detection annotations. |
| `frameLabelAnnotations` | `array<GoogleCloudVideointelligenceV1beta2_LabelAnnotation>` | Label annotations on frame level. There is exactly one element for each unique label. |
| `inputUri` | `string` | Video file location in [Cloud Storage](https://cloud.google.com/storage/). |
| `logoRecognitionAnnotations` | `array<GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation>` | Annotations for list of logos detected, tracked and recognized in video. |
| `objectAnnotations` | `array<GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation>` | Annotations for list of objects detected and tracked in video. |
| `personDetectionAnnotations` | `array<GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation>` | Person detection annotations. |
| `segment` | `GoogleCloudVideointelligenceV1beta2_VideoSegment` | Video segment on which the annotation is run. |
| `segmentLabelAnnotations` | `array<GoogleCloudVideointelligenceV1beta2_LabelAnnotation>` | Topical label annotations on video level or user-specified segment level. There is exactly one el... |
| `segmentPresenceLabelAnnotations` | `array<GoogleCloudVideointelligenceV1beta2_LabelAnnotation>` | Presence label annotations on video level or user-specified segment level. There is exactly one e... |
| `shotAnnotations` | `array<GoogleCloudVideointelligenceV1beta2_VideoSegment>` | Shot annotations. Each shot is represented as a video segment. |
| `shotLabelAnnotations` | `array<GoogleCloudVideointelligenceV1beta2_LabelAnnotation>` | Topical label annotations on shot level. There is exactly one element for each unique label. |
| `shotPresenceLabelAnnotations` | `array<GoogleCloudVideointelligenceV1beta2_LabelAnnotation>` | Presence label annotations on shot level. There is exactly one element for each unique label. Com... |
| `speechTranscriptions` | `array<GoogleCloudVideointelligenceV1beta2_SpeechTranscription>` | Speech transcription. |
| `textAnnotations` | `array<GoogleCloudVideointelligenceV1beta2_TextAnnotation>` | OCR text detection and tracking. Annotations for list of detected text snippets. Each will have l... |

### `GoogleCloudVideointelligenceV1beta2_VideoSegment`

Video segment.

| Property | Type | Description |
|----------|------|-------------|
| `endTimeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inc... |
| `startTimeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the start of the segment (i... |

### `GoogleCloudVideointelligenceV1beta2_WordInfo`

Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as `enable_word_time_offsets`.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated ... |
| `endTime` | `string` | Time offset relative to the beginning of the audio, and corresponding to the end of the spoken wo... |
| `speakerTag` | `integer` | Output only. A distinct integer value is assigned for every speaker within the audio. This field ... |
| `startTime` | `string` | Time offset relative to the beginning of the audio, and corresponding to the start of the spoken ... |
| `word` | `string` | The word corresponding to this set of information. |

### `GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress`

Video annotation progress. Included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `annotationProgress` | `array<GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress>` | Progress metadata for all videos specified in `AnnotateVideoRequest`. |

### `GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse`

Video annotation response. Included in the `response` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `annotationResults` | `array<GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults>` | Annotation results for all videos specified in `AnnotateVideoRequest`. |

### `GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute`

A generic detected attribute represented by name in string format.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Detected attribute confidence. Range [0, 1]. |
| `name` | `string` | The name of the attribute, for example, glasses, dark_glasses, mouth_open. A full list of support... |
| `value` | `string` | Text value of the detection result. For example, the value for "HairColor" can be "black", "blond... |

### `GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark`

A generic detected landmark represented by name in string format and a 2D location.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The confidence score of the detected landmark. Range [0, 1]. |
| `name` | `string` | The name of this landmark, for example, left_hand, right_shoulder. |
| `point` | `GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex` | The 2D point of the detected landmark using the normalized image coordinate system. The normalize... |

### `GoogleCloudVideointelligenceV1p1beta1_Entity`

Detected entity from video analysis.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Textual description, e.g., `Fixed-gear bicycle`. |
| `entityId` | `string` | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://develo... |
| `languageCode` | `string` | Language code for `description` in BCP-47 format. |

### `GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation`

Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.

| Property | Type | Description |
|----------|------|-------------|
| `frames` | `array<GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame>` | All video frames where explicit content was detected. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame`

Video frame level annotation results for explicit content.

| Property | Type | Description |
|----------|------|-------------|
| `pornographyLikelihood` | `string` | Likelihood of the pornography content.. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1p1beta1_ExportToOutputUriStatus`

Status of exporting annotation response to user specified `output_uri`.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. State of the `output_uri` export. |
| `status` | `GoogleRpc_Status` | Output only. Only set if state is FAILED. |

### `GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation`

Deprecated. No effect.

| Property | Type | Description |
|----------|------|-------------|
| `frames` | `array<GoogleCloudVideointelligenceV1p1beta1_FaceFrame>` | All video frames where a face was detected. |
| `segments` | `array<GoogleCloudVideointelligenceV1p1beta1_FaceSegment>` | All video segments where a face was detected. |
| `thumbnail` | `string` | Thumbnail of a representative face view (in JPEG format). |

### `GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation`

Face detection annotation.

| Property | Type | Description |
|----------|------|-------------|
| `thumbnail` | `string` | The thumbnail of a person's face. |
| `tracks` | `array<GoogleCloudVideointelligenceV1p1beta1_Track>` | The face tracks with attributes. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p1beta1_FaceFrame`

Deprecated. No effect.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedBoundingBoxes` | `array<GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox>` | Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detect... |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1p1beta1_FaceSegment`

Video segment level annotation results for face detection.

| Property | Type | Description |
|----------|------|-------------|
| `segment` | `GoogleCloudVideointelligenceV1p1beta1_VideoSegment` | Video segment where a face was detected. |

### `GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation`

Label annotation.

| Property | Type | Description |
|----------|------|-------------|
| `categoryEntities` | `array<GoogleCloudVideointelligenceV1p1beta1_Entity>` | Common categories for the detected entity. For example, when the label is `Terrier`, the category... |
| `entity` | `GoogleCloudVideointelligenceV1p1beta1_Entity` | Detected entity. |
| `frames` | `array<GoogleCloudVideointelligenceV1p1beta1_LabelFrame>` | All video frames where a label was detected. |
| `segments` | `array<GoogleCloudVideointelligenceV1p1beta1_LabelSegment>` | All video segments where a label was detected. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p1beta1_LabelFrame`

Video frame level annotation results for label detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence that the label is accurate. Range: [0, 1]. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1p1beta1_LabelSegment`

Video segment level annotation results for label detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence that the label is accurate. Range: [0, 1]. |
| `segment` | `GoogleCloudVideointelligenceV1p1beta1_VideoSegment` | Video segment where a label was detected. |

### `GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation`

Annotation corresponding to one detected, tracked and recognized logo class.

| Property | Type | Description |
|----------|------|-------------|
| `entity` | `GoogleCloudVideointelligenceV1p1beta1_Entity` | Entity category information to specify the logo class that all the logo tracks within this LogoRe... |
| `segments` | `array<GoogleCloudVideointelligenceV1p1beta1_VideoSegment>` | All video segments where the recognized logo appears. There might be multiple instances of the sa... |
| `tracks` | `array<GoogleCloudVideointelligenceV1p1beta1_Track>` | All logo tracks where the recognized logo appears. Each track corresponds to one logo instance ap... |

### `GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox`

Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].

| Property | Type | Description |
|----------|------|-------------|
| `bottom` | `number` | Bottom Y coordinate. |
| `left` | `number` | Left X coordinate. |
| `right` | `number` | Right X coordinate. |
| `top` | `number` | Top Y coordinate. |

### `GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly`

Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it's clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trigonometric calculations for location of the box.

| Property | Type | Description |
|----------|------|-------------|
| `vertices` | `array<GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex>` | Normalized vertices of the bounding polygon. |

### `GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex`

A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |

### `GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation`

Annotations corresponding to one tracked object.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Object category's labeling confidence of this track. |
| `entity` | `GoogleCloudVideointelligenceV1p1beta1_Entity` | Entity to specify the object category that this track is labeled as. |
| `frames` | `array<GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame>` | Information corresponding to all frames where this object track appears. Non-streaming batch mode... |
| `segment` | `GoogleCloudVideointelligenceV1p1beta1_VideoSegment` | Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears. |
| `trackId` | `string` | Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it... |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame`

Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedBoundingBox` | `GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox` | The normalized bounding box location of this object track for the frame. |
| `timeOffset` | `string` | The timestamp of the frame in microseconds. |

### `GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation`

Person detection annotation per video.

| Property | Type | Description |
|----------|------|-------------|
| `tracks` | `array<GoogleCloudVideointelligenceV1p1beta1_Track>` | The detected tracks of a person. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative`

Alternative hypotheses (a.k.a. n-best list).

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated ... |
| `transcript` | `string` | Transcript text representing the words that the user spoke. |
| `words` | `array<GoogleCloudVideointelligenceV1p1beta1_WordInfo>` | Output only. A list of word-specific information for each recognized word. Note: When `enable_spe... |

### `GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription`

A speech recognition result corresponding to a portion of the audio.

| Property | Type | Description |
|----------|------|-------------|
| `alternatives` | `array<GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative>` | May contain one or more recognition hypotheses (up to the maximum specified in `max_alternatives`... |
| `languageCode` | `string` | Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the langu... |

### `GoogleCloudVideointelligenceV1p1beta1_TextAnnotation`

Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.

| Property | Type | Description |
|----------|------|-------------|
| `segments` | `array<GoogleCloudVideointelligenceV1p1beta1_TextSegment>` | All video segments where OCR detected text appears. |
| `text` | `string` | The detected text. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p1beta1_TextFrame`

Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.

| Property | Type | Description |
|----------|------|-------------|
| `rotatedBoundingBox` | `GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly` | Bounding polygon of the detected text for this frame. |
| `timeOffset` | `string` | Timestamp of this frame. |

### `GoogleCloudVideointelligenceV1p1beta1_TextSegment`

Video segment level annotation results for text detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence for the track of detected text. It is calculated as the highest over all frames where ... |
| `frames` | `array<GoogleCloudVideointelligenceV1p1beta1_TextFrame>` | Information related to the frames where OCR detected text appears. |
| `segment` | `GoogleCloudVideointelligenceV1p1beta1_VideoSegment` | Video segment where a text snippet was detected. |

### `GoogleCloudVideointelligenceV1p1beta1_TimestampedObject`

For tracking related features. An object at time_offset with attributes, and located with normalized_bounding_box.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute>` | Optional. The attributes of the object in the bounding box. |
| `landmarks` | `array<GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark>` | Optional. The detected landmarks. |
| `normalizedBoundingBox` | `GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox` | Normalized Bounding box in a frame, where the object is located. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this ob... |

### `GoogleCloudVideointelligenceV1p1beta1_Track`

A track of an object instance.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute>` | Optional. Attributes in the track level. |
| `confidence` | `number` | Optional. The confidence score of the tracked object. |
| `segment` | `GoogleCloudVideointelligenceV1p1beta1_VideoSegment` | Video segment of a track. |
| `timestampedObjects` | `array<GoogleCloudVideointelligenceV1p1beta1_TimestampedObject>` | The object with timestamp and attributes per frame in the track. |

### `GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress`

Annotation progress for a single video.

| Property | Type | Description |
|----------|------|-------------|
| `exportStatus` | `GoogleCloudVideointelligenceV1p1beta1_ExportToOutputUriStatus` | Status of exporting annotation response to user specified `output_uri`. Only set if `output_uri` ... |
| `feature` | `string` | Specifies which feature is being tracked if the request contains more than one feature. |
| `inputUri` | `string` | Video file location in [Cloud Storage](https://cloud.google.com/storage/). |
| `progressPercent` | `integer` | Approximate percentage processed thus far. Guaranteed to be 100 when fully processed. |
| `segment` | `GoogleCloudVideointelligenceV1p1beta1_VideoSegment` | Specifies which segment is being tracked if the request contains more than one segment. |
| `startTime` | `string` | Time when the request was received. |
| `updateTime` | `string` | Time of the most recent update. |

### `GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults`

Annotation results for a single video.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpc_Status` | If set, indicates an error. Note that for a single `AnnotateVideoRequest` some videos may succeed... |
| `explicitAnnotation` | `GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation` | Explicit content annotation. |
| `faceAnnotations` | `array<GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation>` | Deprecated. Please use `face_detection_annotations` instead. |
| `faceDetectionAnnotations` | `array<GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation>` | Face detection annotations. |
| `frameLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation>` | Label annotations on frame level. There is exactly one element for each unique label. |
| `inputUri` | `string` | Video file location in [Cloud Storage](https://cloud.google.com/storage/). |
| `logoRecognitionAnnotations` | `array<GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation>` | Annotations for list of logos detected, tracked and recognized in video. |
| `objectAnnotations` | `array<GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation>` | Annotations for list of objects detected and tracked in video. |
| `personDetectionAnnotations` | `array<GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation>` | Person detection annotations. |
| `segment` | `GoogleCloudVideointelligenceV1p1beta1_VideoSegment` | Video segment on which the annotation is run. |
| `segmentLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation>` | Topical label annotations on video level or user-specified segment level. There is exactly one el... |
| `segmentPresenceLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation>` | Presence label annotations on video level or user-specified segment level. There is exactly one e... |
| `shotAnnotations` | `array<GoogleCloudVideointelligenceV1p1beta1_VideoSegment>` | Shot annotations. Each shot is represented as a video segment. |
| `shotLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation>` | Topical label annotations on shot level. There is exactly one element for each unique label. |
| `shotPresenceLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation>` | Presence label annotations on shot level. There is exactly one element for each unique label. Com... |
| `speechTranscriptions` | `array<GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription>` | Speech transcription. |
| `textAnnotations` | `array<GoogleCloudVideointelligenceV1p1beta1_TextAnnotation>` | OCR text detection and tracking. Annotations for list of detected text snippets. Each will have l... |

### `GoogleCloudVideointelligenceV1p1beta1_VideoSegment`

Video segment.

| Property | Type | Description |
|----------|------|-------------|
| `endTimeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inc... |
| `startTimeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the start of the segment (i... |

### `GoogleCloudVideointelligenceV1p1beta1_WordInfo`

Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as `enable_word_time_offsets`.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated ... |
| `endTime` | `string` | Time offset relative to the beginning of the audio, and corresponding to the end of the spoken wo... |
| `speakerTag` | `integer` | Output only. A distinct integer value is assigned for every speaker within the audio. This field ... |
| `startTime` | `string` | Time offset relative to the beginning of the audio, and corresponding to the start of the spoken ... |
| `word` | `string` | The word corresponding to this set of information. |

### `GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress`

Video annotation progress. Included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `annotationProgress` | `array<GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress>` | Progress metadata for all videos specified in `AnnotateVideoRequest`. |

### `GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse`

Video annotation response. Included in the `response` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `annotationResults` | `array<GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults>` | Annotation results for all videos specified in `AnnotateVideoRequest`. |

### `GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute`

A generic detected attribute represented by name in string format.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Detected attribute confidence. Range [0, 1]. |
| `name` | `string` | The name of the attribute, for example, glasses, dark_glasses, mouth_open. A full list of support... |
| `value` | `string` | Text value of the detection result. For example, the value for "HairColor" can be "black", "blond... |

### `GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark`

A generic detected landmark represented by name in string format and a 2D location.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The confidence score of the detected landmark. Range [0, 1]. |
| `name` | `string` | The name of this landmark, for example, left_hand, right_shoulder. |
| `point` | `GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex` | The 2D point of the detected landmark using the normalized image coordinate system. The normalize... |

### `GoogleCloudVideointelligenceV1p2beta1_Entity`

Detected entity from video analysis.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Textual description, e.g., `Fixed-gear bicycle`. |
| `entityId` | `string` | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://develo... |
| `languageCode` | `string` | Language code for `description` in BCP-47 format. |

### `GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation`

Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.

| Property | Type | Description |
|----------|------|-------------|
| `frames` | `array<GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame>` | All video frames where explicit content was detected. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame`

Video frame level annotation results for explicit content.

| Property | Type | Description |
|----------|------|-------------|
| `pornographyLikelihood` | `string` | Likelihood of the pornography content.. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1p2beta1_ExportToOutputUriStatus`

Status of exporting annotation response to user specified `output_uri`.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. State of the `output_uri` export. |
| `status` | `GoogleRpc_Status` | Output only. Only set if state is FAILED. |

### `GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation`

Deprecated. No effect.

| Property | Type | Description |
|----------|------|-------------|
| `frames` | `array<GoogleCloudVideointelligenceV1p2beta1_FaceFrame>` | All video frames where a face was detected. |
| `segments` | `array<GoogleCloudVideointelligenceV1p2beta1_FaceSegment>` | All video segments where a face was detected. |
| `thumbnail` | `string` | Thumbnail of a representative face view (in JPEG format). |

### `GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation`

Face detection annotation.

| Property | Type | Description |
|----------|------|-------------|
| `thumbnail` | `string` | The thumbnail of a person's face. |
| `tracks` | `array<GoogleCloudVideointelligenceV1p2beta1_Track>` | The face tracks with attributes. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p2beta1_FaceFrame`

Deprecated. No effect.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedBoundingBoxes` | `array<GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox>` | Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detect... |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1p2beta1_FaceSegment`

Video segment level annotation results for face detection.

| Property | Type | Description |
|----------|------|-------------|
| `segment` | `GoogleCloudVideointelligenceV1p2beta1_VideoSegment` | Video segment where a face was detected. |

### `GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation`

Label annotation.

| Property | Type | Description |
|----------|------|-------------|
| `categoryEntities` | `array<GoogleCloudVideointelligenceV1p2beta1_Entity>` | Common categories for the detected entity. For example, when the label is `Terrier`, the category... |
| `entity` | `GoogleCloudVideointelligenceV1p2beta1_Entity` | Detected entity. |
| `frames` | `array<GoogleCloudVideointelligenceV1p2beta1_LabelFrame>` | All video frames where a label was detected. |
| `segments` | `array<GoogleCloudVideointelligenceV1p2beta1_LabelSegment>` | All video segments where a label was detected. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p2beta1_LabelFrame`

Video frame level annotation results for label detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence that the label is accurate. Range: [0, 1]. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1p2beta1_LabelSegment`

Video segment level annotation results for label detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence that the label is accurate. Range: [0, 1]. |
| `segment` | `GoogleCloudVideointelligenceV1p2beta1_VideoSegment` | Video segment where a label was detected. |

### `GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation`

Annotation corresponding to one detected, tracked and recognized logo class.

| Property | Type | Description |
|----------|------|-------------|
| `entity` | `GoogleCloudVideointelligenceV1p2beta1_Entity` | Entity category information to specify the logo class that all the logo tracks within this LogoRe... |
| `segments` | `array<GoogleCloudVideointelligenceV1p2beta1_VideoSegment>` | All video segments where the recognized logo appears. There might be multiple instances of the sa... |
| `tracks` | `array<GoogleCloudVideointelligenceV1p2beta1_Track>` | All logo tracks where the recognized logo appears. Each track corresponds to one logo instance ap... |

### `GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox`

Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].

| Property | Type | Description |
|----------|------|-------------|
| `bottom` | `number` | Bottom Y coordinate. |
| `left` | `number` | Left X coordinate. |
| `right` | `number` | Right X coordinate. |
| `top` | `number` | Top Y coordinate. |

### `GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly`

Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it's clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trigonometric calculations for location of the box.

| Property | Type | Description |
|----------|------|-------------|
| `vertices` | `array<GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex>` | Normalized vertices of the bounding polygon. |

### `GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex`

A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |

### `GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation`

Annotations corresponding to one tracked object.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Object category's labeling confidence of this track. |
| `entity` | `GoogleCloudVideointelligenceV1p2beta1_Entity` | Entity to specify the object category that this track is labeled as. |
| `frames` | `array<GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame>` | Information corresponding to all frames where this object track appears. Non-streaming batch mode... |
| `segment` | `GoogleCloudVideointelligenceV1p2beta1_VideoSegment` | Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears. |
| `trackId` | `string` | Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it... |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame`

Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedBoundingBox` | `GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox` | The normalized bounding box location of this object track for the frame. |
| `timeOffset` | `string` | The timestamp of the frame in microseconds. |

### `GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation`

Person detection annotation per video.

| Property | Type | Description |
|----------|------|-------------|
| `tracks` | `array<GoogleCloudVideointelligenceV1p2beta1_Track>` | The detected tracks of a person. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative`

Alternative hypotheses (a.k.a. n-best list).

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated ... |
| `transcript` | `string` | Transcript text representing the words that the user spoke. |
| `words` | `array<GoogleCloudVideointelligenceV1p2beta1_WordInfo>` | Output only. A list of word-specific information for each recognized word. Note: When `enable_spe... |

### `GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription`

A speech recognition result corresponding to a portion of the audio.

| Property | Type | Description |
|----------|------|-------------|
| `alternatives` | `array<GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative>` | May contain one or more recognition hypotheses (up to the maximum specified in `max_alternatives`... |
| `languageCode` | `string` | Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the langu... |

### `GoogleCloudVideointelligenceV1p2beta1_TextAnnotation`

Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.

| Property | Type | Description |
|----------|------|-------------|
| `segments` | `array<GoogleCloudVideointelligenceV1p2beta1_TextSegment>` | All video segments where OCR detected text appears. |
| `text` | `string` | The detected text. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p2beta1_TextFrame`

Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.

| Property | Type | Description |
|----------|------|-------------|
| `rotatedBoundingBox` | `GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly` | Bounding polygon of the detected text for this frame. |
| `timeOffset` | `string` | Timestamp of this frame. |

### `GoogleCloudVideointelligenceV1p2beta1_TextSegment`

Video segment level annotation results for text detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence for the track of detected text. It is calculated as the highest over all frames where ... |
| `frames` | `array<GoogleCloudVideointelligenceV1p2beta1_TextFrame>` | Information related to the frames where OCR detected text appears. |
| `segment` | `GoogleCloudVideointelligenceV1p2beta1_VideoSegment` | Video segment where a text snippet was detected. |

### `GoogleCloudVideointelligenceV1p2beta1_TimestampedObject`

For tracking related features. An object at time_offset with attributes, and located with normalized_bounding_box.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute>` | Optional. The attributes of the object in the bounding box. |
| `landmarks` | `array<GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark>` | Optional. The detected landmarks. |
| `normalizedBoundingBox` | `GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox` | Normalized Bounding box in a frame, where the object is located. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this ob... |

### `GoogleCloudVideointelligenceV1p2beta1_Track`

A track of an object instance.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute>` | Optional. Attributes in the track level. |
| `confidence` | `number` | Optional. The confidence score of the tracked object. |
| `segment` | `GoogleCloudVideointelligenceV1p2beta1_VideoSegment` | Video segment of a track. |
| `timestampedObjects` | `array<GoogleCloudVideointelligenceV1p2beta1_TimestampedObject>` | The object with timestamp and attributes per frame in the track. |

### `GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress`

Annotation progress for a single video.

| Property | Type | Description |
|----------|------|-------------|
| `exportStatus` | `GoogleCloudVideointelligenceV1p2beta1_ExportToOutputUriStatus` | Status of exporting annotation response to user specified `output_uri`. Only set if `output_uri` ... |
| `feature` | `string` | Specifies which feature is being tracked if the request contains more than one feature. |
| `inputUri` | `string` | Video file location in [Cloud Storage](https://cloud.google.com/storage/). |
| `progressPercent` | `integer` | Approximate percentage processed thus far. Guaranteed to be 100 when fully processed. |
| `segment` | `GoogleCloudVideointelligenceV1p2beta1_VideoSegment` | Specifies which segment is being tracked if the request contains more than one segment. |
| `startTime` | `string` | Time when the request was received. |
| `updateTime` | `string` | Time of the most recent update. |

### `GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults`

Annotation results for a single video.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpc_Status` | If set, indicates an error. Note that for a single `AnnotateVideoRequest` some videos may succeed... |
| `explicitAnnotation` | `GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation` | Explicit content annotation. |
| `faceAnnotations` | `array<GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation>` | Deprecated. Please use `face_detection_annotations` instead. |
| `faceDetectionAnnotations` | `array<GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation>` | Face detection annotations. |
| `frameLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation>` | Label annotations on frame level. There is exactly one element for each unique label. |
| `inputUri` | `string` | Video file location in [Cloud Storage](https://cloud.google.com/storage/). |
| `logoRecognitionAnnotations` | `array<GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation>` | Annotations for list of logos detected, tracked and recognized in video. |
| `objectAnnotations` | `array<GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation>` | Annotations for list of objects detected and tracked in video. |
| `personDetectionAnnotations` | `array<GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation>` | Person detection annotations. |
| `segment` | `GoogleCloudVideointelligenceV1p2beta1_VideoSegment` | Video segment on which the annotation is run. |
| `segmentLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation>` | Topical label annotations on video level or user-specified segment level. There is exactly one el... |
| `segmentPresenceLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation>` | Presence label annotations on video level or user-specified segment level. There is exactly one e... |
| `shotAnnotations` | `array<GoogleCloudVideointelligenceV1p2beta1_VideoSegment>` | Shot annotations. Each shot is represented as a video segment. |
| `shotLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation>` | Topical label annotations on shot level. There is exactly one element for each unique label. |
| `shotPresenceLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation>` | Presence label annotations on shot level. There is exactly one element for each unique label. Com... |
| `speechTranscriptions` | `array<GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription>` | Speech transcription. |
| `textAnnotations` | `array<GoogleCloudVideointelligenceV1p2beta1_TextAnnotation>` | OCR text detection and tracking. Annotations for list of detected text snippets. Each will have l... |

### `GoogleCloudVideointelligenceV1p2beta1_VideoSegment`

Video segment.

| Property | Type | Description |
|----------|------|-------------|
| `endTimeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inc... |
| `startTimeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the start of the segment (i... |

### `GoogleCloudVideointelligenceV1p2beta1_WordInfo`

Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as `enable_word_time_offsets`.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated ... |
| `endTime` | `string` | Time offset relative to the beginning of the audio, and corresponding to the end of the spoken wo... |
| `speakerTag` | `integer` | Output only. A distinct integer value is assigned for every speaker within the audio. This field ... |
| `startTime` | `string` | Time offset relative to the beginning of the audio, and corresponding to the start of the spoken ... |
| `word` | `string` | The word corresponding to this set of information. |

### `GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress`

Video annotation progress. Included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `annotationProgress` | `array<GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress>` | Progress metadata for all videos specified in `AnnotateVideoRequest`. |

### `GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse`

Video annotation response. Included in the `response` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `annotationResults` | `array<GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults>` | Annotation results for all videos specified in `AnnotateVideoRequest`. |

### `GoogleCloudVideointelligenceV1p3beta1_Celebrity`

Celebrity definition.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Textual description of additional information about the celebrity, if applicable. |
| `displayName` | `string` | The celebrity name. |
| `name` | `string` | The resource name of the celebrity. Have the format `video-intelligence/kg-mid` indicates a celeb... |

### `GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation`

Celebrity recognition annotation per video.

| Property | Type | Description |
|----------|------|-------------|
| `celebrityTracks` | `array<GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack>` | The tracks detected from the input video, including recognized celebrities and other detected fac... |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack`

The annotation result of a celebrity face track. RecognizedCelebrity field could be empty if the face track does not have any matched celebrities.

| Property | Type | Description |
|----------|------|-------------|
| `celebrities` | `array<GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity>` | Top N match of the celebrities for the face in this track. |
| `faceTrack` | `GoogleCloudVideointelligenceV1p3beta1_Track` | A track of a person's face. |

### `GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute`

A generic detected attribute represented by name in string format.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Detected attribute confidence. Range [0, 1]. |
| `name` | `string` | The name of the attribute, for example, glasses, dark_glasses, mouth_open. A full list of support... |
| `value` | `string` | Text value of the detection result. For example, the value for "HairColor" can be "black", "blond... |

### `GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark`

A generic detected landmark represented by name in string format and a 2D location.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The confidence score of the detected landmark. Range [0, 1]. |
| `name` | `string` | The name of this landmark, for example, left_hand, right_shoulder. |
| `point` | `GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex` | The 2D point of the detected landmark using the normalized image coordinate system. The normalize... |

### `GoogleCloudVideointelligenceV1p3beta1_Entity`

Detected entity from video analysis.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Textual description, e.g., `Fixed-gear bicycle`. |
| `entityId` | `string` | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://develo... |
| `languageCode` | `string` | Language code for `description` in BCP-47 format. |

### `GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation`

Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.

| Property | Type | Description |
|----------|------|-------------|
| `frames` | `array<GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame>` | All video frames where explicit content was detected. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame`

Video frame level annotation results for explicit content.

| Property | Type | Description |
|----------|------|-------------|
| `pornographyLikelihood` | `string` | Likelihood of the pornography content.. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1p3beta1_ExportToOutputUriStatus`

Status of exporting annotation response to user specified `output_uri`.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. State of the `output_uri` export. |
| `status` | `GoogleRpc_Status` | Output only. Only set if state is FAILED. |

### `GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation`

Deprecated. No effect.

| Property | Type | Description |
|----------|------|-------------|
| `frames` | `array<GoogleCloudVideointelligenceV1p3beta1_FaceFrame>` | All video frames where a face was detected. |
| `segments` | `array<GoogleCloudVideointelligenceV1p3beta1_FaceSegment>` | All video segments where a face was detected. |
| `thumbnail` | `string` | Thumbnail of a representative face view (in JPEG format). |

### `GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation`

Face detection annotation.

| Property | Type | Description |
|----------|------|-------------|
| `thumbnail` | `string` | The thumbnail of a person's face. |
| `tracks` | `array<GoogleCloudVideointelligenceV1p3beta1_Track>` | The face tracks with attributes. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p3beta1_FaceFrame`

Deprecated. No effect.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedBoundingBoxes` | `array<GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox>` | Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detect... |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1p3beta1_FaceSegment`

Video segment level annotation results for face detection.

| Property | Type | Description |
|----------|------|-------------|
| `segment` | `GoogleCloudVideointelligenceV1p3beta1_VideoSegment` | Video segment where a face was detected. |

### `GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation`

Label annotation.

| Property | Type | Description |
|----------|------|-------------|
| `categoryEntities` | `array<GoogleCloudVideointelligenceV1p3beta1_Entity>` | Common categories for the detected entity. For example, when the label is `Terrier`, the category... |
| `entity` | `GoogleCloudVideointelligenceV1p3beta1_Entity` | Detected entity. |
| `frames` | `array<GoogleCloudVideointelligenceV1p3beta1_LabelFrame>` | All video frames where a label was detected. |
| `segments` | `array<GoogleCloudVideointelligenceV1p3beta1_LabelSegment>` | All video segments where a label was detected. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p3beta1_LabelFrame`

Video frame level annotation results for label detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence that the label is accurate. Range: [0, 1]. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this lo... |

### `GoogleCloudVideointelligenceV1p3beta1_LabelSegment`

Video segment level annotation results for label detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence that the label is accurate. Range: [0, 1]. |
| `segment` | `GoogleCloudVideointelligenceV1p3beta1_VideoSegment` | Video segment where a label was detected. |

### `GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation`

Annotation corresponding to one detected, tracked and recognized logo class.

| Property | Type | Description |
|----------|------|-------------|
| `entity` | `GoogleCloudVideointelligenceV1p3beta1_Entity` | Entity category information to specify the logo class that all the logo tracks within this LogoRe... |
| `segments` | `array<GoogleCloudVideointelligenceV1p3beta1_VideoSegment>` | All video segments where the recognized logo appears. There might be multiple instances of the sa... |
| `tracks` | `array<GoogleCloudVideointelligenceV1p3beta1_Track>` | All logo tracks where the recognized logo appears. Each track corresponds to one logo instance ap... |

### `GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox`

Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].

| Property | Type | Description |
|----------|------|-------------|
| `bottom` | `number` | Bottom Y coordinate. |
| `left` | `number` | Left X coordinate. |
| `right` | `number` | Right X coordinate. |
| `top` | `number` | Top Y coordinate. |

### `GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly`

Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it's clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trigonometric calculations for location of the box.

| Property | Type | Description |
|----------|------|-------------|
| `vertices` | `array<GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex>` | Normalized vertices of the bounding polygon. |

### `GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex`

A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |

### `GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation`

Annotations corresponding to one tracked object.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Object category's labeling confidence of this track. |
| `entity` | `GoogleCloudVideointelligenceV1p3beta1_Entity` | Entity to specify the object category that this track is labeled as. |
| `frames` | `array<GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame>` | Information corresponding to all frames where this object track appears. Non-streaming batch mode... |
| `segment` | `GoogleCloudVideointelligenceV1p3beta1_VideoSegment` | Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears. |
| `trackId` | `string` | Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it... |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame`

Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedBoundingBox` | `GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox` | The normalized bounding box location of this object track for the frame. |
| `timeOffset` | `string` | The timestamp of the frame in microseconds. |

### `GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation`

Person detection annotation per video.

| Property | Type | Description |
|----------|------|-------------|
| `tracks` | `array<GoogleCloudVideointelligenceV1p3beta1_Track>` | The detected tracks of a person. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity`

The recognized celebrity with confidence score.

| Property | Type | Description |
|----------|------|-------------|
| `celebrity` | `GoogleCloudVideointelligenceV1p3beta1_Celebrity` | The recognized celebrity. |
| `confidence` | `number` | Recognition confidence. Range [0, 1]. |

### `GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative`

Alternative hypotheses (a.k.a. n-best list).

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated ... |
| `transcript` | `string` | Transcript text representing the words that the user spoke. |
| `words` | `array<GoogleCloudVideointelligenceV1p3beta1_WordInfo>` | Output only. A list of word-specific information for each recognized word. Note: When `enable_spe... |

### `GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription`

A speech recognition result corresponding to a portion of the audio.

| Property | Type | Description |
|----------|------|-------------|
| `alternatives` | `array<GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative>` | May contain one or more recognition hypotheses (up to the maximum specified in `max_alternatives`... |
| `languageCode` | `string` | Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the langu... |

### `GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse`

`StreamingAnnotateVideoResponse` is the only message returned to the client by `StreamingAnnotateVideo`. A series of zero or more `StreamingAnnotateVideoResponse` messages are streamed back to the client.

| Property | Type | Description |
|----------|------|-------------|
| `annotationResults` | `GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults` | Streaming annotation results. |
| `annotationResultsUri` | `string` | Google Cloud Storage URI that stores annotation results of one streaming session in JSON format. ... |
| `error` | `GoogleRpc_Status` | If set, returns a google.rpc.Status message that specifies the error for the operation. |

### `GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults`

Streaming annotation results corresponding to a portion of the video that is currently being processed. Only ONE type of annotation will be specified in the response.

| Property | Type | Description |
|----------|------|-------------|
| `explicitAnnotation` | `GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation` | Explicit content annotation results. |
| `frameTimestamp` | `string` | Timestamp of the processed frame in microseconds. |
| `labelAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation>` | Label annotation results. |
| `objectAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation>` | Object tracking results. |
| `shotAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_VideoSegment>` | Shot annotation results. Each shot is represented as a video segment. |

### `GoogleCloudVideointelligenceV1p3beta1_TextAnnotation`

Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.

| Property | Type | Description |
|----------|------|-------------|
| `segments` | `array<GoogleCloudVideointelligenceV1p3beta1_TextSegment>` | All video segments where OCR detected text appears. |
| `text` | `string` | The detected text. |
| `version` | `string` | Feature version. |

### `GoogleCloudVideointelligenceV1p3beta1_TextFrame`

Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.

| Property | Type | Description |
|----------|------|-------------|
| `rotatedBoundingBox` | `GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly` | Bounding polygon of the detected text for this frame. |
| `timeOffset` | `string` | Timestamp of this frame. |

### `GoogleCloudVideointelligenceV1p3beta1_TextSegment`

Video segment level annotation results for text detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence for the track of detected text. It is calculated as the highest over all frames where ... |
| `frames` | `array<GoogleCloudVideointelligenceV1p3beta1_TextFrame>` | Information related to the frames where OCR detected text appears. |
| `segment` | `GoogleCloudVideointelligenceV1p3beta1_VideoSegment` | Video segment where a text snippet was detected. |

### `GoogleCloudVideointelligenceV1p3beta1_TimestampedObject`

For tracking related features. An object at time_offset with attributes, and located with normalized_bounding_box.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute>` | Optional. The attributes of the object in the bounding box. |
| `landmarks` | `array<GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark>` | Optional. The detected landmarks. |
| `normalizedBoundingBox` | `GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox` | Normalized Bounding box in a frame, where the object is located. |
| `timeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the video frame for this ob... |

### `GoogleCloudVideointelligenceV1p3beta1_Track`

A track of an object instance.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute>` | Optional. Attributes in the track level. |
| `confidence` | `number` | Optional. The confidence score of the tracked object. |
| `segment` | `GoogleCloudVideointelligenceV1p3beta1_VideoSegment` | Video segment of a track. |
| `timestampedObjects` | `array<GoogleCloudVideointelligenceV1p3beta1_TimestampedObject>` | The object with timestamp and attributes per frame in the track. |

### `GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress`

Annotation progress for a single video.

| Property | Type | Description |
|----------|------|-------------|
| `exportStatus` | `GoogleCloudVideointelligenceV1p3beta1_ExportToOutputUriStatus` | Status of exporting annotation response to user specified `output_uri`. Only set if `output_uri` ... |
| `feature` | `string` | Specifies which feature is being tracked if the request contains more than one feature. |
| `inputUri` | `string` | Video file location in [Cloud Storage](https://cloud.google.com/storage/). |
| `progressPercent` | `integer` | Approximate percentage processed thus far. Guaranteed to be 100 when fully processed. |
| `segment` | `GoogleCloudVideointelligenceV1p3beta1_VideoSegment` | Specifies which segment is being tracked if the request contains more than one segment. |
| `startTime` | `string` | Time when the request was received. |
| `updateTime` | `string` | Time of the most recent update. |

### `GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults`

Annotation results for a single video.

| Property | Type | Description |
|----------|------|-------------|
| `celebrityRecognitionAnnotations` | `GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation` | Celebrity recognition annotations. |
| `error` | `GoogleRpc_Status` | If set, indicates an error. Note that for a single `AnnotateVideoRequest` some videos may succeed... |
| `explicitAnnotation` | `GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation` | Explicit content annotation. |
| `faceAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation>` | Deprecated. Please use `face_detection_annotations` instead. |
| `faceDetectionAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation>` | Face detection annotations. |
| `frameLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation>` | Label annotations on frame level. There is exactly one element for each unique label. |
| `inputUri` | `string` | Video file location in [Cloud Storage](https://cloud.google.com/storage/). |
| `logoRecognitionAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation>` | Annotations for list of logos detected, tracked and recognized in video. |
| `objectAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation>` | Annotations for list of objects detected and tracked in video. |
| `personDetectionAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation>` | Person detection annotations. |
| `segment` | `GoogleCloudVideointelligenceV1p3beta1_VideoSegment` | Video segment on which the annotation is run. |
| `segmentLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation>` | Topical label annotations on video level or user-specified segment level. There is exactly one el... |
| `segmentPresenceLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation>` | Presence label annotations on video level or user-specified segment level. There is exactly one e... |
| `shotAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_VideoSegment>` | Shot annotations. Each shot is represented as a video segment. |
| `shotLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation>` | Topical label annotations on shot level. There is exactly one element for each unique label. |
| `shotPresenceLabelAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation>` | Presence label annotations on shot level. There is exactly one element for each unique label. Com... |
| `speechTranscriptions` | `array<GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription>` | Speech transcription. |
| `textAnnotations` | `array<GoogleCloudVideointelligenceV1p3beta1_TextAnnotation>` | OCR text detection and tracking. Annotations for list of detected text snippets. Each will have l... |

### `GoogleCloudVideointelligenceV1p3beta1_VideoSegment`

Video segment.

| Property | Type | Description |
|----------|------|-------------|
| `endTimeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inc... |
| `startTimeOffset` | `string` | Time-offset, relative to the beginning of the video, corresponding to the start of the segment (i... |

### `GoogleCloudVideointelligenceV1p3beta1_WordInfo`

Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as `enable_word_time_offsets`.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated ... |
| `endTime` | `string` | Time offset relative to the beginning of the audio, and corresponding to the end of the spoken wo... |
| `speakerTag` | `integer` | Output only. A distinct integer value is assigned for every speaker within the audio. This field ... |
| `startTime` | `string` | Time offset relative to the beginning of the audio, and corresponding to the start of the spoken ... |
| `word` | `string` | The word corresponding to this set of information. |

### `GoogleLongrunning_CancelOperationRequest`

The request message for Operations.CancelOperation.

### `GoogleLongrunning_ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunning_Operation>` | A list of operations that matches the specified filter in the request. |

### `GoogleLongrunning_Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpc_Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleProtobuf_Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpc_Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

