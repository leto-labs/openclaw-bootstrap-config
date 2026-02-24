# Google Meet API - API Reference

**Version**: `v2` | **Methods**: 16 | **Schemas**: 27

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `meet.conferenceRecords.get` | GET | `v2/{+name}` | Gets a conference record by conference ID. |
| `meet.conferenceRecords.list` | GET | `v2/conferenceRecords` | Lists the conference records. By default, ordered by start time and in descending order. |
| `meet.conferenceRecords.recordings.list` | GET | `v2/{+parent}/recordings` | Lists the recording resources from the conference record. By default, ordered by start time and i... |
| `meet.conferenceRecords.recordings.get` | GET | `v2/{+name}` | Gets a recording by recording ID. |
| `meet.conferenceRecords.transcripts.get` | GET | `v2/{+name}` | Gets a transcript by transcript ID. |
| `meet.conferenceRecords.transcripts.list` | GET | `v2/{+parent}/transcripts` | Lists the set of transcripts from the conference record. By default, ordered by start time and in... |
| `meet.conferenceRecords.transcripts.entries.list` | GET | `v2/{+parent}/entries` | Lists the structured transcript entries per transcript. By default, ordered by start time and in ... |
| `meet.conferenceRecords.transcripts.entries.get` | GET | `v2/{+name}` | Gets a `TranscriptEntry` resource by entry ID. Note: The transcript entries returned by the Googl... |
| `meet.conferenceRecords.participants.get` | GET | `v2/{+name}` | Gets a participant by participant ID. |
| `meet.conferenceRecords.participants.list` | GET | `v2/{+parent}/participants` | Lists the participants in a conference record. By default, ordered by join time and in descending... |
| `meet.conferenceRecords.participants.participantSessions.list` | GET | `v2/{+parent}/participantSessions` | Lists the participant sessions of a participant in a conference record. By default, ordered by jo... |
| `meet.conferenceRecords.participants.participantSessions.get` | GET | `v2/{+name}` | Gets a participant session by participant session ID. |
| `meet.spaces.get` | GET | `v2/{+name}` | Gets details about a meeting space. For an example, see [Get a meeting space](https://developers.... |
| `meet.spaces.endActiveConference` | POST | `v2/{+name}:endActiveConference` | Ends an active conference (if there's one). For an example, see [End active conference](https://d... |
| `meet.spaces.patch` | PATCH | `v2/{+name}` | Updates details about a meeting space. For an example, see [Update a meeting space](https://devel... |
| `meet.spaces.create` | POST | `v2/spaces` | Creates a space. |

### `meet.conferenceRecords.get`

**GET** `v2/{+name}`

Gets a conference record by conference ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the conference. |

**Response**: `ConferenceRecord`

```typescript
const res = await meet.conferenceRecords.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `meet.conferenceRecords.list`

**GET** `v2/conferenceRecords`

Lists the conference records. By default, ordered by start time and in descending order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Optional. User specified filtering condition in [EBNF format](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93N... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of conference records to return. The service might return fewer than this value. If unspecif... |
| `pageToken` | `string` | query | No | Optional. Page token returned from previous List Call. |

**Response**: `ListConferenceRecordsResponse`

```typescript
const res = await meet.conferenceRecords.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `meet.conferenceRecords.recordings.list`

**GET** `v2/{+parent}/recordings`

Lists the recording resources from the conference record. By default, ordered by start time and in ascending order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: `conferenceRecords/{conference_record}` |
| `pageSize` | `integer` | query | No | Maximum number of recordings to return. The service might return fewer than this value. If unspecified, at most 10 re... |
| `pageToken` | `string` | query | No | Page token returned from previous List Call. |

**Response**: `ListRecordingsResponse`

```typescript
const res = await meet.recordings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `meet.conferenceRecords.recordings.get`

**GET** `v2/{+name}`

Gets a recording by recording ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the recording. |

**Response**: `Recording`

```typescript
const res = await meet.recordings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `meet.conferenceRecords.transcripts.get`

**GET** `v2/{+name}`

Gets a transcript by transcript ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the transcript. |

**Response**: `Transcript`

```typescript
const res = await meet.transcripts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `meet.conferenceRecords.transcripts.list`

**GET** `v2/{+parent}/transcripts`

Lists the set of transcripts from the conference record. By default, ordered by start time and in ascending order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: `conferenceRecords/{conference_record}` |
| `pageSize` | `integer` | query | No | Maximum number of transcripts to return. The service might return fewer than this value. If unspecified, at most 10 t... |
| `pageToken` | `string` | query | No | Page token returned from previous List Call. |

**Response**: `ListTranscriptsResponse`

```typescript
const res = await meet.transcripts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `meet.conferenceRecords.transcripts.entries.list`

**GET** `v2/{+parent}/entries`

Lists the structured transcript entries per transcript. By default, ordered by start time and in ascending order. Note: The transcript entries returned by the Google Meet API might not match the transcription found in the Google Docs transcript file. This can occur when 1) we have interleaved speakers within milliseconds, or 2) the Google Docs transcript file is modified after generation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: `conferenceRecords/{conference_record}/transcripts/{transcript}` |
| `pageSize` | `integer` | query | No | Maximum number of entries to return. The service might return fewer than this value. If unspecified, at most 10 entri... |
| `pageToken` | `string` | query | No | Page token returned from previous List Call. |

**Response**: `ListTranscriptEntriesResponse`

```typescript
const res = await meet.entries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `meet.conferenceRecords.transcripts.entries.get`

**GET** `v2/{+name}`

Gets a `TranscriptEntry` resource by entry ID. Note: The transcript entries returned by the Google Meet API might not match the transcription found in the Google Docs transcript file. This can occur when 1) we have interleaved speakers within milliseconds, or 2) the Google Docs transcript file is modified after generation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the `TranscriptEntry`. |

**Response**: `TranscriptEntry`

```typescript
const res = await meet.entries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `meet.conferenceRecords.participants.get`

**GET** `v2/{+name}`

Gets a participant by participant ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the participant. |

**Response**: `Participant`

```typescript
const res = await meet.participants.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `meet.conferenceRecords.participants.list`

**GET** `v2/{+parent}/participants`

Lists the participants in a conference record. By default, ordered by join time and in descending order. This API supports `fields` as standard parameters like every other API. However, when the `fields` request parameter is omitted, this API defaults to `'participants/*, next_page_token'`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: `conferenceRecords/{conference_record}` |
| `filter` | `string` | query | No | Optional. User specified filtering condition in [EBNF format](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93N... |
| `pageSize` | `integer` | query | No | Maximum number of participants to return. The service might return fewer than this value. If unspecified, at most 100... |
| `pageToken` | `string` | query | No | Page token returned from previous List Call. |

**Response**: `ListParticipantsResponse`

```typescript
const res = await meet.participants.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `meet.conferenceRecords.participants.participantSessions.list`

**GET** `v2/{+parent}/participantSessions`

Lists the participant sessions of a participant in a conference record. By default, ordered by join time and in descending order. This API supports `fields` as standard parameters like every other API. However, when the `fields` request parameter is omitted this API defaults to `'participantsessions/*, next_page_token'`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: `conferenceRecords/{conference_record}/participants/{participant}` |
| `filter` | `string` | query | No | Optional. User specified filtering condition in [EBNF format](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93N... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of participant sessions to return. The service might return fewer than this value. If unspec... |
| `pageToken` | `string` | query | No | Optional. Page token returned from previous List Call. |

**Response**: `ListParticipantSessionsResponse`

```typescript
const res = await meet.participantSessions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `meet.conferenceRecords.participants.participantSessions.get`

**GET** `v2/{+name}`

Gets a participant session by participant session ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the participant. |

**Response**: `ParticipantSession`

```typescript
const res = await meet.participantSessions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `meet.spaces.get`

**GET** `v2/{+name}`

Gets details about a meeting space. For an example, see [Get a meeting space](https://developers.google.com/workspace/meet/api/guides/meeting-spaces#get-meeting-space).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the space. Format: `spaces/{space}` or `spaces/{meetingCode}`. `{space}` is the resource i... |

**Response**: `Space`

```typescript
const res = await meet.spaces.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`
- `https://www.googleapis.com/auth/meetings.space.settings`

---

### `meet.spaces.endActiveConference`

**POST** `v2/{+name}:endActiveConference`

Ends an active conference (if there's one). For an example, see [End active conference](https://developers.google.com/workspace/meet/api/guides/meeting-spaces#end-active-conference).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the space. Format: `spaces/{space}`. `{space}` is the resource identifier for the space. I... |

**Request body**: `EndActiveConferenceRequest`

**Response**: `Empty`

```typescript
const res = await meet.spaces.endActiveConference({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`

---

### `meet.spaces.patch`

**PATCH** `v2/{+name}`

Updates details about a meeting space. For an example, see [Update a meeting space](https://developers.google.com/workspace/meet/api/guides/meeting-spaces#update-meeting-space).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Resource name of the space. Format: `spaces/{space}`. `{space}` is the resource identifier for the space. ... |
| `updateMask` | `string` | query | No | Optional. Field mask used to specify the fields to be updated in the space. If update_mask isn't provided(not set, se... |

**Request body**: `Space`

**Response**: `Space`

```typescript
const res = await meet.spaces.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.settings`

---

### `meet.spaces.create`

**POST** `v2/spaces`

Creates a space.

**Request body**: `Space`

**Response**: `Space`

```typescript
const res = await meet.spaces.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/meetings.space.created`

---

## Schemas

### `ActiveConference`

Active conference.

| Property | Type | Description |
|----------|------|-------------|
| `conferenceRecord` | `string` | Output only. Reference to 'ConferenceRecord' resource. Format: `conferenceRecords/{conference_rec... |

### `AnonymousUser`

User who joins anonymously (meaning not signed into a Google Account).

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. User provided name when they join a conference anonymously. |

### `ArtifactConfig`

Configuration related to meeting artifacts potentially generated by this meeting space.

| Property | Type | Description |
|----------|------|-------------|
| `recordingConfig` | `RecordingConfig` | Configuration for recording. |
| `smartNotesConfig` | `SmartNotesConfig` | Configuration for auto-smart-notes. |
| `transcriptionConfig` | `TranscriptionConfig` | Configuration for auto-transcript. |

### `ConferenceRecord`

Single instance of a meeting held in a space.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. Timestamp when the conference ended. Set for past conferences. Unset if the conferen... |
| `expireTime` | `string` | Output only. Server enforced expiration time for when this conference record resource is deleted.... |
| `name` | `string` | Identifier. Resource name of the conference record. Format: `conferenceRecords/{conference_record... |
| `space` | `string` | Output only. The space where the conference was held. |
| `startTime` | `string` | Output only. Timestamp when the conference started. Always set. |

### `DocsDestination`

Google Docs location where the transcript file is saved.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `string` | Output only. The document ID for the underlying Google Docs transcript file. For example, "1kuceF... |
| `exportUri` | `string` | Output only. URI for the Google Docs transcript file. Use `https://docs.google.com/document/d/{$D... |

### `DriveDestination`

Export location where a recording file is saved in Google Drive.

| Property | Type | Description |
|----------|------|-------------|
| `exportUri` | `string` | Output only. Link used to play back the recording file in the browser. For example, `https://driv... |
| `file` | `string` | Output only. The `fileId` for the underlying MP4 file. For example, "1kuceFZohVoCh6FulBHxwy6I15Og... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EndActiveConferenceRequest`

Request to end an ongoing conference of a space.

### `ListConferenceRecordsResponse`

Response of ListConferenceRecords method.

| Property | Type | Description |
|----------|------|-------------|
| `conferenceRecords` | `array<ConferenceRecord>` | List of conferences in one page. |
| `nextPageToken` | `string` | Token to be circulated back for further List call if current List does NOT include all the Confer... |

### `ListParticipantSessionsResponse`

Response of ListParticipants method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to be circulated back for further List call if current List doesn't include all the partici... |
| `participantSessions` | `array<ParticipantSession>` | List of participants in one page. |

### `ListParticipantsResponse`

Response of ListParticipants method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to be circulated back for further List call if current List doesn't include all the partici... |
| `participants` | `array<Participant>` | List of participants in one page. |
| `totalSize` | `integer` | Total, exact number of `participants`. By default, this field isn't included in the response. Set... |

### `ListRecordingsResponse`

Response for ListRecordings method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to be circulated back for further List call if current List doesn't include all the recordi... |
| `recordings` | `array<Recording>` | List of recordings in one page. |

### `ListTranscriptEntriesResponse`

Response for ListTranscriptEntries method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to be circulated back for further List call if current List doesn't include all the transcr... |
| `transcriptEntries` | `array<TranscriptEntry>` | List of TranscriptEntries in one page. |

### `ListTranscriptsResponse`

Response for ListTranscripts method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to be circulated back for further List call if current List doesn't include all the transcr... |
| `transcripts` | `array<Transcript>` | List of transcripts in one page. |

### `ModerationRestrictions`

Defines restrictions for features when the meeting is moderated.

| Property | Type | Description |
|----------|------|-------------|
| `chatRestriction` | `string` | Defines who has permission to send chat messages in the meeting space. |
| `defaultJoinAsViewerType` | `string` | Defines whether to restrict the default role assigned to users as viewer. |
| `presentRestriction` | `string` | Defines who has permission to share their screen in the meeting space. |
| `reactionRestriction` | `string` | Defines who has permission to send reactions in the meeting space. |

### `Participant`

User who attended or is attending a conference.

| Property | Type | Description |
|----------|------|-------------|
| `anonymousUser` | `AnonymousUser` | Anonymous user. |
| `earliestStartTime` | `string` | Output only. Time when the participant first joined the meeting. |
| `latestEndTime` | `string` | Output only. Time when the participant left the meeting for the last time. This can be null if it... |
| `name` | `string` | Output only. Resource name of the participant. Format: `conferenceRecords/{conference_record}/par... |
| `phoneUser` | `PhoneUser` | User calling from their phone. |
| `signedinUser` | `SignedinUser` | Signed-in user. |

### `ParticipantSession`

Refers to each unique join or leave session when a user joins a conference from a device. Note that any time a user joins the conference a new unique ID is assigned. That means if a user joins a space multiple times from the same device, they're assigned different IDs, and are also be treated as different participant sessions.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. Timestamp when the user session ends. Unset if the user session hasn’t ended. |
| `name` | `string` | Identifier. Session id. |
| `startTime` | `string` | Output only. Timestamp when the user session starts. |

### `PhoneUser`

User dialing in from a phone where the user's identity is unknown because they haven't signed in with a Google Account.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. Partially redacted user's phone number when calling. |

### `Recording`

Metadata about a recording created during a conference.

| Property | Type | Description |
|----------|------|-------------|
| `driveDestination` | `DriveDestination` | Output only. Recording is saved to Google Drive as an MP4 file. The `drive_destination` includes ... |
| `endTime` | `string` | Output only. Timestamp when the recording ended. |
| `name` | `string` | Output only. Resource name of the recording. Format: `conferenceRecords/{conference_record}/recor... |
| `startTime` | `string` | Output only. Timestamp when the recording started. |
| `state` | `string` | Output only. Current state. |

### `RecordingConfig`

Configuration related to recording in a meeting space.

| Property | Type | Description |
|----------|------|-------------|
| `autoRecordingGeneration` | `string` | Defines whether a meeting space is automatically recorded when someone with the privilege to reco... |

### `SignedinUser`

A signed-in user can be: a) An individual joining from a personal computer, mobile device, or through companion mode. b) A robot account used by conference room devices.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. For a personal device, it's the user's first name and last name. For a robot account... |
| `user` | `string` | Output only. Unique ID for the user. Interoperable with Admin SDK API and People API. Format: `us... |

### `SmartNotesConfig`

Configuration related to smart notes in a meeting space. For more information about smart notes, see ["Take notes for me" in Google Meet](https://support.google.com/meet/answer/14754931).

| Property | Type | Description |
|----------|------|-------------|
| `autoSmartNotesGeneration` | `string` | Defines whether to automatically generate a summary and recap of the meeting for all invitees in ... |

### `Space`

Virtual place where conferences are held. Only one active conference can be held in one space at any given time.

| Property | Type | Description |
|----------|------|-------------|
| `activeConference` | `ActiveConference` | Active conference, if it exists. |
| `config` | `SpaceConfig` | Configuration pertaining to the meeting space. |
| `meetingCode` | `string` | Output only. Type friendly unique string used to join the meeting. Format: `[a-z]+-[a-z]+-[a-z]+`... |
| `meetingUri` | `string` | Output only. URI used to join meetings consisting of `https://meet.google.com/` followed by the `... |
| `name` | `string` | Immutable. Resource name of the space. Format: `spaces/{space}`. `{space}` is the resource identi... |

### `SpaceConfig`

The configuration pertaining to a meeting space.

| Property | Type | Description |
|----------|------|-------------|
| `accessType` | `string` | Access type of the meeting space that determines who can join without knocking. Default: The user... |
| `artifactConfig` | `ArtifactConfig` | Configuration pertaining to the auto-generated artifacts that the meeting supports. |
| `attendanceReportGenerationType` | `string` | Whether attendance report is enabled for the meeting space. |
| `entryPointAccess` | `string` | Defines the entry points that can be used to join meetings hosted in this meeting space. Default:... |
| `moderation` | `string` | The pre-configured moderation mode for the Meeting. Default: Controlled by the user's policies. |
| `moderationRestrictions` | `ModerationRestrictions` | When moderation.ON, these restrictions go into effect for the meeting. When moderation.OFF, will ... |

### `Transcript`

Metadata for a transcript generated from a conference. It refers to the ASR (Automatic Speech Recognition) result of user's speech during the conference.

| Property | Type | Description |
|----------|------|-------------|
| `docsDestination` | `DocsDestination` | Output only. Where the Google Docs transcript is saved. |
| `endTime` | `string` | Output only. Timestamp when the transcript stopped. |
| `name` | `string` | Output only. Resource name of the transcript. Format: `conferenceRecords/{conference_record}/tran... |
| `startTime` | `string` | Output only. Timestamp when the transcript started. |
| `state` | `string` | Output only. Current state. |

### `TranscriptEntry`

Single entry for one user’s speech during a transcript session.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. Timestamp when the transcript entry ended. |
| `languageCode` | `string` | Output only. Language of spoken text, such as "en-US". IETF BCP 47 syntax (https://tools.ietf.org... |
| `name` | `string` | Output only. Resource name of the entry. Format: "conferenceRecords/{conference_record}/transcrip... |
| `participant` | `string` | Output only. Refers to the participant who speaks. |
| `startTime` | `string` | Output only. Timestamp when the transcript entry started. |
| `text` | `string` | Output only. The transcribed text of the participant's voice, at maximum 10K words. Note that the... |

### `TranscriptionConfig`

Configuration related to transcription in a meeting space.

| Property | Type | Description |
|----------|------|-------------|
| `autoTranscriptionGeneration` | `string` | Defines whether the content of a meeting is automatically transcribed when someone with the privi... |

