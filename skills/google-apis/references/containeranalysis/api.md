# Container Analysis API - API Reference

**Version**: `v1` | **Methods**: 44 | **Schemas**: 182

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `containeranalysis.projects.locations.notes.delete` | DELETE | `v1/{+name}` | Deletes the specified note. |
| `containeranalysis.projects.locations.notes.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns the permissions that a caller has on the specified note or occurrence. Requires list perm... |
| `containeranalysis.projects.locations.notes.patch` | PATCH | `v1/{+name}` | Updates the specified note. |
| `containeranalysis.projects.locations.notes.batchCreate` | POST | `v1/{+parent}/notes:batchCreate` | Creates new notes in batch. |
| `containeranalysis.projects.locations.notes.get` | GET | `v1/{+name}` | Gets the specified note. |
| `containeranalysis.projects.locations.notes.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.... |
| `containeranalysis.projects.locations.notes.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified note or occurrence. Requires `containeranalysis.n... |
| `containeranalysis.projects.locations.notes.list` | GET | `v1/{+parent}/notes` | Lists notes for the specified project. |
| `containeranalysis.projects.locations.notes.create` | POST | `v1/{+parent}/notes` | Creates a new note. |
| `containeranalysis.projects.locations.notes.occurrences.list` | GET | `v1/{+name}/occurrences` | Lists occurrences referencing the specified note. Provider projects can use this method to get al... |
| `containeranalysis.projects.locations.resources.exportSBOM` | POST | `v1/{+name}:exportSBOM` | Generates an SBOM for the given resource. |
| `containeranalysis.projects.locations.occurrences.create` | POST | `v1/{+parent}/occurrences` | Creates a new occurrence. |
| `containeranalysis.projects.locations.occurrences.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.... |
| `containeranalysis.projects.locations.occurrences.delete` | DELETE | `v1/{+name}` | Deletes the specified occurrence. For example, use this method to delete an occurrence when the o... |
| `containeranalysis.projects.locations.occurrences.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified note or occurrence. Requires `containeranalysis.n... |
| `containeranalysis.projects.locations.occurrences.getVulnerabilitySummary` | GET | `v1/{+parent}/occurrences:vulnerabilitySummary` | Gets a summary of the number and severity of occurrences. |
| `containeranalysis.projects.locations.occurrences.getNotes` | GET | `v1/{+name}/notes` | Gets the note attached to the specified occurrence. Consumer projects can use this method to get ... |
| `containeranalysis.projects.locations.occurrences.patch` | PATCH | `v1/{+name}` | Updates the specified occurrence. |
| `containeranalysis.projects.locations.occurrences.batchCreate` | POST | `v1/{+parent}/occurrences:batchCreate` | Creates new occurrences in batch. |
| `containeranalysis.projects.locations.occurrences.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns the permissions that a caller has on the specified note or occurrence. Requires list perm... |
| `containeranalysis.projects.locations.occurrences.list` | GET | `v1/{+parent}/occurrences` | Lists occurrences for the specified project. |
| `containeranalysis.projects.locations.occurrences.get` | GET | `v1/{+name}` | Gets the specified occurrence. |
| `containeranalysis.projects.notes.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns the permissions that a caller has on the specified note or occurrence. Requires list perm... |
| `containeranalysis.projects.notes.get` | GET | `v1/{+name}` | Gets the specified note. |
| `containeranalysis.projects.notes.patch` | PATCH | `v1/{+name}` | Updates the specified note. |
| `containeranalysis.projects.notes.delete` | DELETE | `v1/{+name}` | Deletes the specified note. |
| `containeranalysis.projects.notes.batchCreate` | POST | `v1/{+parent}/notes:batchCreate` | Creates new notes in batch. |
| `containeranalysis.projects.notes.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified note or occurrence. Requires `containeranalysis.n... |
| `containeranalysis.projects.notes.list` | GET | `v1/{+parent}/notes` | Lists notes for the specified project. |
| `containeranalysis.projects.notes.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.... |
| `containeranalysis.projects.notes.create` | POST | `v1/{+parent}/notes` | Creates a new note. |
| `containeranalysis.projects.notes.occurrences.list` | GET | `v1/{+name}/occurrences` | Lists occurrences referencing the specified note. Provider projects can use this method to get al... |
| `containeranalysis.projects.resources.exportSBOM` | POST | `v1/{+name}:exportSBOM` | Generates an SBOM for the given resource. |
| `containeranalysis.projects.occurrences.getVulnerabilitySummary` | GET | `v1/{+parent}/occurrences:vulnerabilitySummary` | Gets a summary of the number and severity of occurrences. |
| `containeranalysis.projects.occurrences.delete` | DELETE | `v1/{+name}` | Deletes the specified occurrence. For example, use this method to delete an occurrence when the o... |
| `containeranalysis.projects.occurrences.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns the permissions that a caller has on the specified note or occurrence. Requires list perm... |
| `containeranalysis.projects.occurrences.get` | GET | `v1/{+name}` | Gets the specified occurrence. |
| `containeranalysis.projects.occurrences.getNotes` | GET | `v1/{+name}/notes` | Gets the note attached to the specified occurrence. Consumer projects can use this method to get ... |
| `containeranalysis.projects.occurrences.list` | GET | `v1/{+parent}/occurrences` | Lists occurrences for the specified project. |
| `containeranalysis.projects.occurrences.patch` | PATCH | `v1/{+name}` | Updates the specified occurrence. |
| `containeranalysis.projects.occurrences.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.... |
| `containeranalysis.projects.occurrences.create` | POST | `v1/{+parent}/occurrences` | Creates a new occurrence. |
| `containeranalysis.projects.occurrences.batchCreate` | POST | `v1/{+parent}/occurrences:batchCreate` | Creates new occurrences in batch. |
| `containeranalysis.projects.occurrences.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified note or occurrence. Requires `containeranalysis.n... |

### `containeranalysis.projects.locations.notes.delete`

**DELETE** `v1/{+name}`

Deletes the specified note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. |

**Response**: `Empty`

```typescript
const res = await containeranalysis.notes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.notes.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns the permissions that a caller has on the specified note or occurrence. Requires list permission on the project (for example, `containeranalysis.notes.list`). The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await containeranalysis.notes.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.notes.patch`

**PATCH** `v1/{+name}`

Updates the specified note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. |
| `updateMask` | `string` | query | No | The fields to update. |

**Request body**: `Note`

**Response**: `Note`

```typescript
const res = await containeranalysis.notes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.notes.batchCreate`

**POST** `v1/{+parent}/notes:batchCreate`

Creates new notes in batch.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in the form of `projects/[PROJECT_ID]`, under which the notes are to be created. |

**Request body**: `BatchCreateNotesRequest`

**Response**: `BatchCreateNotesResponse`

```typescript
const res = await containeranalysis.notes.batchCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.notes.get`

**GET** `v1/{+name}`

Gets the specified note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. |

**Response**: `Note`

```typescript
const res = await containeranalysis.notes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.notes.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await containeranalysis.notes.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.notes.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified note or occurrence. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or an occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await containeranalysis.notes.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.notes.list`

**GET** `v1/{+parent}/notes`

Lists notes for the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project to list notes for in the form of `projects/[PROJECT_ID]`. |
| `filter` | `string` | query | No | The filter expression. |
| `pageSize` | `integer` | query | No | Number of notes to return in the list. Must be positive. Max allowed page size is 1000. If not specified, page size d... |
| `pageToken` | `string` | query | No | Token to provide to skip to a particular spot in the list. |
| `returnPartialSuccess` | `boolean` | query | No | If set, the request will return all reachable Notes and report all unreachable regions in the `unreachable` field in ... |

**Response**: `ListNotesResponse`

```typescript
const res = await containeranalysis.notes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.notes.create`

**POST** `v1/{+parent}/notes`

Creates a new note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in the form of `projects/[PROJECT_ID]`, under which the note is to be created. |
| `noteId` | `string` | query | No | Required. The ID to use for this note. |

**Request body**: `Note`

**Response**: `Note`

```typescript
const res = await containeranalysis.notes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.notes.occurrences.list`

**GET** `v1/{+name}/occurrences`

Lists occurrences referencing the specified note. Provider projects can use this method to get all occurrences across consumer projects referencing the specified note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the note to list occurrences for in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. |
| `filter` | `string` | query | No | The filter expression. |
| `pageSize` | `integer` | query | No | Number of occurrences to return in the list. |
| `pageToken` | `string` | query | No | Token to provide to skip to a particular spot in the list. |

**Response**: `ListNoteOccurrencesResponse`

```typescript
const res = await containeranalysis.occurrences.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.resources.exportSBOM`

**POST** `v1/{+name}:exportSBOM`

Generates an SBOM for the given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource in the form of `projects/[PROJECT_ID]/resources/[RESOURCE_URL]`. |

**Request body**: `ExportSBOMRequest`

**Response**: `ExportSBOMResponse`

```typescript
const res = await containeranalysis.resources.exportSBOM({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.occurrences.create`

**POST** `v1/{+parent}/occurrences`

Creates a new occurrence.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in the form of `projects/[PROJECT_ID]`, under which the occurrence is to be created. |

**Request body**: `Occurrence`

**Response**: `Occurrence`

```typescript
const res = await containeranalysis.occurrences.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.occurrences.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await containeranalysis.occurrences.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.occurrences.delete`

**DELETE** `v1/{+name}`

Deletes the specified occurrence. For example, use this method to delete an occurrence when the occurrence is no longer applicable for the given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`. |

**Response**: `Empty`

```typescript
const res = await containeranalysis.occurrences.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.occurrences.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified note or occurrence. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or an occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await containeranalysis.occurrences.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.occurrences.getVulnerabilitySummary`

**GET** `v1/{+parent}/occurrences:vulnerabilitySummary`

Gets a summary of the number and severity of occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project to get a vulnerability summary for in the form of `projects/[PROJECT_ID]`. |
| `filter` | `string` | query | No | The filter expression. |
| `returnPartialSuccess` | `boolean` | query | No | If set, the request will return all reachable occurrence summaries and report all unreachable regions in the `unreach... |

**Response**: `VulnerabilityOccurrencesSummary`

```typescript
const res = await containeranalysis.occurrences.getVulnerabilitySummary({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.occurrences.getNotes`

**GET** `v1/{+name}/notes`

Gets the note attached to the specified occurrence. Consumer projects can use this method to get a note that belongs to a provider project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`. |

**Response**: `Note`

```typescript
const res = await containeranalysis.occurrences.getNotes({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.occurrences.patch`

**PATCH** `v1/{+name}`

Updates the specified occurrence.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`. |
| `updateMask` | `string` | query | No | The fields to update. |

**Request body**: `Occurrence`

**Response**: `Occurrence`

```typescript
const res = await containeranalysis.occurrences.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.occurrences.batchCreate`

**POST** `v1/{+parent}/occurrences:batchCreate`

Creates new occurrences in batch.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in the form of `projects/[PROJECT_ID]`, under which the occurrences are to be created. |

**Request body**: `BatchCreateOccurrencesRequest`

**Response**: `BatchCreateOccurrencesResponse`

```typescript
const res = await containeranalysis.occurrences.batchCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.occurrences.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns the permissions that a caller has on the specified note or occurrence. Requires list permission on the project (for example, `containeranalysis.notes.list`). The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await containeranalysis.occurrences.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.occurrences.list`

**GET** `v1/{+parent}/occurrences`

Lists occurrences for the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project to list occurrences for in the form of `projects/[PROJECT_ID]`. |
| `filter` | `string` | query | No | The filter expression. |
| `pageSize` | `integer` | query | No | Number of occurrences to return in the list. Must be positive. Max allowed page size is 1000. If not specified, page ... |
| `pageToken` | `string` | query | No | Token to provide to skip to a particular spot in the list. |
| `returnPartialSuccess` | `boolean` | query | No | If set, the request will return all reachable Occurrences and report all unreachable regions in the `unreachable` fie... |

**Response**: `ListOccurrencesResponse`

```typescript
const res = await containeranalysis.occurrences.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.locations.occurrences.get`

**GET** `v1/{+name}`

Gets the specified occurrence.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`. |

**Response**: `Occurrence`

```typescript
const res = await containeranalysis.occurrences.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.notes.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns the permissions that a caller has on the specified note or occurrence. Requires list permission on the project (for example, `containeranalysis.notes.list`). The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await containeranalysis.notes.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.notes.get`

**GET** `v1/{+name}`

Gets the specified note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. |

**Response**: `Note`

```typescript
const res = await containeranalysis.notes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.notes.patch`

**PATCH** `v1/{+name}`

Updates the specified note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. |
| `updateMask` | `string` | query | No | The fields to update. |

**Request body**: `Note`

**Response**: `Note`

```typescript
const res = await containeranalysis.notes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.notes.delete`

**DELETE** `v1/{+name}`

Deletes the specified note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. |

**Response**: `Empty`

```typescript
const res = await containeranalysis.notes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.notes.batchCreate`

**POST** `v1/{+parent}/notes:batchCreate`

Creates new notes in batch.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in the form of `projects/[PROJECT_ID]`, under which the notes are to be created. |

**Request body**: `BatchCreateNotesRequest`

**Response**: `BatchCreateNotesResponse`

```typescript
const res = await containeranalysis.notes.batchCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.notes.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified note or occurrence. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or an occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await containeranalysis.notes.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.notes.list`

**GET** `v1/{+parent}/notes`

Lists notes for the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project to list notes for in the form of `projects/[PROJECT_ID]`. |
| `filter` | `string` | query | No | The filter expression. |
| `pageSize` | `integer` | query | No | Number of notes to return in the list. Must be positive. Max allowed page size is 1000. If not specified, page size d... |
| `pageToken` | `string` | query | No | Token to provide to skip to a particular spot in the list. |
| `returnPartialSuccess` | `boolean` | query | No | If set, the request will return all reachable Notes and report all unreachable regions in the `unreachable` field in ... |

**Response**: `ListNotesResponse`

```typescript
const res = await containeranalysis.notes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.notes.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await containeranalysis.notes.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.notes.create`

**POST** `v1/{+parent}/notes`

Creates a new note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in the form of `projects/[PROJECT_ID]`, under which the note is to be created. |
| `noteId` | `string` | query | No | Required. The ID to use for this note. |

**Request body**: `Note`

**Response**: `Note`

```typescript
const res = await containeranalysis.notes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.notes.occurrences.list`

**GET** `v1/{+name}/occurrences`

Lists occurrences referencing the specified note. Provider projects can use this method to get all occurrences across consumer projects referencing the specified note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the note to list occurrences for in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. |
| `filter` | `string` | query | No | The filter expression. |
| `pageSize` | `integer` | query | No | Number of occurrences to return in the list. |
| `pageToken` | `string` | query | No | Token to provide to skip to a particular spot in the list. |

**Response**: `ListNoteOccurrencesResponse`

```typescript
const res = await containeranalysis.occurrences.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.resources.exportSBOM`

**POST** `v1/{+name}:exportSBOM`

Generates an SBOM for the given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource in the form of `projects/[PROJECT_ID]/resources/[RESOURCE_URL]`. |

**Request body**: `ExportSBOMRequest`

**Response**: `ExportSBOMResponse`

```typescript
const res = await containeranalysis.resources.exportSBOM({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.occurrences.getVulnerabilitySummary`

**GET** `v1/{+parent}/occurrences:vulnerabilitySummary`

Gets a summary of the number and severity of occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project to get a vulnerability summary for in the form of `projects/[PROJECT_ID]`. |
| `filter` | `string` | query | No | The filter expression. |
| `returnPartialSuccess` | `boolean` | query | No | If set, the request will return all reachable occurrence summaries and report all unreachable regions in the `unreach... |

**Response**: `VulnerabilityOccurrencesSummary`

```typescript
const res = await containeranalysis.occurrences.getVulnerabilitySummary({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.occurrences.delete`

**DELETE** `v1/{+name}`

Deletes the specified occurrence. For example, use this method to delete an occurrence when the occurrence is no longer applicable for the given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`. |

**Response**: `Empty`

```typescript
const res = await containeranalysis.occurrences.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.occurrences.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns the permissions that a caller has on the specified note or occurrence. Requires list permission on the project (for example, `containeranalysis.notes.list`). The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await containeranalysis.occurrences.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.occurrences.get`

**GET** `v1/{+name}`

Gets the specified occurrence.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`. |

**Response**: `Occurrence`

```typescript
const res = await containeranalysis.occurrences.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.occurrences.getNotes`

**GET** `v1/{+name}/notes`

Gets the note attached to the specified occurrence. Consumer projects can use this method to get a note that belongs to a provider project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`. |

**Response**: `Note`

```typescript
const res = await containeranalysis.occurrences.getNotes({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.occurrences.list`

**GET** `v1/{+parent}/occurrences`

Lists occurrences for the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project to list occurrences for in the form of `projects/[PROJECT_ID]`. |
| `filter` | `string` | query | No | The filter expression. |
| `pageSize` | `integer` | query | No | Number of occurrences to return in the list. Must be positive. Max allowed page size is 1000. If not specified, page ... |
| `pageToken` | `string` | query | No | Token to provide to skip to a particular spot in the list. |
| `returnPartialSuccess` | `boolean` | query | No | If set, the request will return all reachable Occurrences and report all unreachable regions in the `unreachable` fie... |

**Response**: `ListOccurrencesResponse`

```typescript
const res = await containeranalysis.occurrences.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.occurrences.patch`

**PATCH** `v1/{+name}`

Updates the specified occurrence.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`. |
| `updateMask` | `string` | query | No | The fields to update. |

**Request body**: `Occurrence`

**Response**: `Occurrence`

```typescript
const res = await containeranalysis.occurrences.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.occurrences.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await containeranalysis.occurrences.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.occurrences.create`

**POST** `v1/{+parent}/occurrences`

Creates a new occurrence.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in the form of `projects/[PROJECT_ID]`, under which the occurrence is to be created. |

**Request body**: `Occurrence`

**Response**: `Occurrence`

```typescript
const res = await containeranalysis.occurrences.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.occurrences.batchCreate`

**POST** `v1/{+parent}/occurrences:batchCreate`

Creates new occurrences in batch.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in the form of `projects/[PROJECT_ID]`, under which the occurrences are to be created. |

**Request body**: `BatchCreateOccurrencesRequest`

**Response**: `BatchCreateOccurrencesResponse`

```typescript
const res = await containeranalysis.occurrences.batchCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `containeranalysis.projects.occurrences.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified note or occurrence. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or an occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await containeranalysis.occurrences.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AliasContext`

An alias to a repo revision.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The alias kind. |
| `name` | `string` | The alias name. |

### `AnalysisCompleted`

Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.

| Property | Type | Description |
|----------|------|-------------|
| `analysisType` | `array<string>` |  |

### `Artifact`

Artifact describes a build product.

| Property | Type | Description |
|----------|------|-------------|
| `checksum` | `string` | Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container. |
| `id` | `string` | Artifact ID, if any; for container images, this will be a URL by digest like `gcr.io/projectID/im... |
| `names` | `array<string>` | Related artifact names. This may be the path to a binary or jar file, or in the case of a contain... |

### `Assessment`

Assessment provides all information that is related to a single vulnerability for this product.

| Property | Type | Description |
|----------|------|-------------|
| `cve` | `string` | Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulne... |
| `impacts` | `array<string>` | Contains information about the impact of this vulnerability, this will change with time. |
| `justification` | `Justification` | Justification provides the justification when the state of the assessment if NOT_AFFECTED. |
| `longDescription` | `string` | A detailed description of this Vex. |
| `relatedUris` | `array<RelatedUrl>` | Holds a list of references associated with this vulnerability item and assessment. These uris hav... |
| `remediations` | `array<Remediation>` | Specifies details on how to handle (and presumably, fix) a vulnerability. |
| `shortDescription` | `string` | A one sentence description of this Vex. |
| `state` | `string` | Provides the state of this Vulnerability assessment. |
| `vulnerabilityId` | `string` | The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, G... |

### `AttestationNote`

Note kind that represents a logical attestation "role" or "authority". For example, an organization might have one `Authority` for "QA" and one for "build". This note is intended to act strictly as a grouping mechanism for the attached occurrences (Attestations). This grouping mechanism also provides a security boundary, since IAM ACLs gate the ability for a principle to attach an occurrence to a given note. It also provides a single point of lookup to find all attached attestation occurrences, even if they don't all live in the same project.

| Property | Type | Description |
|----------|------|-------------|
| `hint` | `Hint` | Hint hints at the purpose of the attestation authority. |

### `AttestationOccurrence`

Occurrence that represents a single "attestation". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for lookup (how to find this attestation if you already know the authority and artifact to be verified) and intent (for which authority this attestation was intended to sign.

| Property | Type | Description |
|----------|------|-------------|
| `jwts` | `array<Jwt>` | One or more JWTs encoding a self-contained attestation. Each JWT encodes the payload that it veri... |
| `serializedPayload` | `string` | Required. The serialized payload that is verified by one or more `signatures`. |
| `signatures` | `array<Signature>` | One or more signatures over `serialized_payload`. Verifier implementations should consider this a... |

### `BaseImage`

BaseImage describes a base image of a container image.

| Property | Type | Description |
|----------|------|-------------|
| `layerCount` | `integer` | The number of layers that the base image is composed of. |
| `name` | `string` | The name of the base image. |
| `registry` | `string` | The registry in which the base image is from. |
| `repository` | `string` | The repository name in which the base image is from. |

### `BatchCreateNotesRequest`

Request to create notes in batch.

| Property | Type | Description |
|----------|------|-------------|
| `notes` | `object` | Required. The notes to create. Max allowed length is 1000. |

### `BatchCreateNotesResponse`

Response for creating notes in batch.

| Property | Type | Description |
|----------|------|-------------|
| `notes` | `array<Note>` | The notes that were created. |

### `BatchCreateOccurrencesRequest`

Request to create occurrences in batch.

| Property | Type | Description |
|----------|------|-------------|
| `occurrences` | `array<Occurrence>` | Required. The occurrences to create. Max allowed length is 1000. |

### `BatchCreateOccurrencesResponse`

Response for creating occurrences in batch.

| Property | Type | Description |
|----------|------|-------------|
| `occurrences` | `array<Occurrence>` | The occurrences that were created. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `BuildDefinition`

| Property | Type | Description |
|----------|------|-------------|
| `buildType` | `string` |  |
| `externalParameters` | `object` |  |
| `internalParameters` | `object` |  |
| `resolvedDependencies` | `array<ResourceDescriptor>` |  |

### `BuildMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `finishedOn` | `string` |  |
| `invocationId` | `string` |  |
| `startedOn` | `string` |  |

### `BuildNote`

Note holding the version of the provider's builder and the signature of the provenance message in the build details occurrence.

| Property | Type | Description |
|----------|------|-------------|
| `builderVersion` | `string` | Required. Immutable. Version of the builder which produced this build. |

### `BuildOccurrence`

Details of a build occurrence.

| Property | Type | Description |
|----------|------|-------------|
| `inTotoSlsaProvenanceV1` | `InTotoSlsaProvenanceV1` | In-Toto Slsa Provenance V1 represents a slsa provenance meeting the slsa spec, wrapped in an in-t... |
| `intotoProvenance` | `InTotoProvenance` | Deprecated. See InTotoStatement for the replacement. In-toto Provenance representation as defined... |
| `intotoStatement` | `InTotoStatement` | In-toto Statement representation as defined in spec. The intoto_statement can contain any type of... |
| `provenance` | `BuildProvenance` | The actual provenance for the build. |
| `provenanceBytes` | `string` | Serialized JSON representation of the provenance, used in generating the build signature in the c... |

### `BuildProvenance`

Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.

| Property | Type | Description |
|----------|------|-------------|
| `buildOptions` | `object` | Special options applied to this build. This is a catch-all field where build providers can enter ... |
| `builderVersion` | `string` | Version string of the builder at the time this build was executed. |
| `builtArtifacts` | `array<Artifact>` | Output of the build. |
| `commands` | `array<Command>` | Commands requested by the build. |
| `createTime` | `string` | Time at which the build was created. |
| `creator` | `string` | E-mail address of the user who initiated this build. Note that this was the user's e-mail address... |
| `endTime` | `string` | Time at which execution of the build was finished. |
| `id` | `string` | Required. Unique identifier of the build. |
| `logsUri` | `string` | URI where any logs for this provenance were written. |
| `projectId` | `string` | ID of the project. |
| `sourceProvenance` | `Source` | Details of the Source input to the build. |
| `startTime` | `string` | Time at which execution of the build was started. |
| `triggerId` | `string` | Trigger identifier if the build was triggered automatically; empty if not. |

### `BuildStep`

A step in the build pipeline. Next ID: 23

| Property | Type | Description |
|----------|------|-------------|
| `allowExitCodes` | `array<integer>` | Allow this build step to fail without failing the entire build if and only if the exit code is on... |
| `allowFailure` | `boolean` | Allow this build step to fail without failing the entire build. If false, the entire build will f... |
| `args` | `array<string>` | A list of arguments that will be presented to the step when it is started. If the image used to r... |
| `automapSubstitutions` | `boolean` | Option to include built-in and custom substitutions as env variables for this build step. This op... |
| `dir` | `string` | Working directory to use when running this step's container. If this value is a relative path, it... |
| `entrypoint` | `string` | Entrypoint to be used instead of the build step image's default entrypoint. If unset, the image's... |
| `env` | `array<string>` | A list of environment variable definitions to be used when running a step. The elements are of th... |
| `exitCode` | `integer` | Output only. Return code from running the step. |
| `id` | `string` | Unique identifier for this build step, used in `wait_for` to reference this build step as a depen... |
| `name` | `string` | Required. The name of the container image that will run this particular build step. If the image ... |
| `pullTiming` | `TimeSpan` | Output only. Stores timing information for pulling this build step's builder image only. |
| `remoteConfig` | `string` | Remote configuration for the build step. |
| `results` | `array<StepResult>` |  |
| `script` | `string` | A shell script to be executed in the step. When script is provided, the user cannot specify the e... |
| `secretEnv` | `array<string>` | A list of environment variables which are encrypted using a Cloud Key Management Service crypto k... |
| `status` | `string` | Output only. Status of the build step. At this time, build step status is only updated on build c... |
| `timeout` | `string` | Time limit for executing this build step. If not defined, the step has no time limit and will be ... |
| `timing` | `TimeSpan` | Output only. Stores timing information for executing this build step. |
| `volumes` | `array<Volume>` | List of volumes to mount into the build step. Each volume is created as an empty volume prior to ... |
| `waitFor` | `array<string>` | The ID(s) of the step(s) that this build step depends on. This build step will not start until al... |

### `BuilderConfig`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` |  |

### `CISAKnownExploitedVulnerabilities`

| Property | Type | Description |
|----------|------|-------------|
| `knownRansomwareCampaignUse` | `string` | Whether the vulnerability is known to have been leveraged as part of a ransomware campaign. |

### `CVSS`

Common Vulnerability Scoring System. For details, see https://www.first.org/cvss/specification-document This is a message we will try to use for storing various versions of CVSS rather than making a separate proto for storing a specific version.

| Property | Type | Description |
|----------|------|-------------|
| `attackComplexity` | `string` |  |
| `attackVector` | `string` | Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over t... |
| `authentication` | `string` |  |
| `availabilityImpact` | `string` |  |
| `baseScore` | `number` | The base score is a function of the base metric scores. |
| `confidentialityImpact` | `string` |  |
| `exploitabilityScore` | `number` |  |
| `impactScore` | `number` |  |
| `integrityImpact` | `string` |  |
| `privilegesRequired` | `string` |  |
| `scope` | `string` |  |
| `userInteraction` | `string` |  |

### `CVSSv3`

Common Vulnerability Scoring System version 3. For details, see https://www.first.org/cvss/specification-document

| Property | Type | Description |
|----------|------|-------------|
| `attackComplexity` | `string` |  |
| `attackVector` | `string` | Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over t... |
| `availabilityImpact` | `string` |  |
| `baseScore` | `number` | The base score is a function of the base metric scores. |
| `confidentialityImpact` | `string` |  |
| `exploitabilityScore` | `number` |  |
| `impactScore` | `number` |  |
| `integrityImpact` | `string` |  |
| `privilegesRequired` | `string` |  |
| `scope` | `string` |  |
| `userInteraction` | `string` |  |

### `Category`

The category to which the update belongs.

| Property | Type | Description |
|----------|------|-------------|
| `categoryId` | `string` | The identifier of the category. |
| `name` | `string` | The localized name of the category. |

### `CisBenchmark`

A compliance check that is a CIS benchmark.

| Property | Type | Description |
|----------|------|-------------|
| `profileLevel` | `integer` |  |
| `severity` | `string` |  |

### `CloudRepoSourceContext`

A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.

| Property | Type | Description |
|----------|------|-------------|
| `aliasContext` | `AliasContext` | An alias, which may be a branch or tag. |
| `repoId` | `RepoId` | The ID of the repo. |
| `revisionId` | `string` | A revision ID. |

### `CloudStorageLocation`

Empty placeholder to denote that this is a Google Cloud Storage export request.

### `Command`

Command describes a step performed as part of the build pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<string>` | Command-line arguments used when executing this command. |
| `dir` | `string` | Working directory (relative to project source root) used when running this command. |
| `env` | `array<string>` | Environment variables set before running this command. |
| `id` | `string` | Optional unique identifier for this command, used in wait_for to reference this command as a depe... |
| `name` | `string` | Required. Name of the command, as presented on the command line, or if the command is packaged as... |
| `waitFor` | `array<string>` | The ID(s) of the command(s) that this command depends on. |

### `Completeness`

Indicates that the builder claims certain fields in this message to be complete.

| Property | Type | Description |
|----------|------|-------------|
| `arguments` | `boolean` | If true, the builder claims that recipe.arguments is complete, meaning that all external inputs a... |
| `environment` | `boolean` | If true, the builder claims that recipe.environment is claimed to be complete. |
| `materials` | `boolean` | If true, the builder claims that materials are complete, usually through some controls to prevent... |

### `ComplianceNote`

| Property | Type | Description |
|----------|------|-------------|
| `cisBenchmark` | `CisBenchmark` |  |
| `description` | `string` | A description about this compliance check. |
| `impact` | `string` |  |
| `rationale` | `string` | A rationale for the existence of this compliance check. |
| `remediation` | `string` | A description of remediation steps if the compliance check fails. |
| `scanInstructions` | `string` | Serialized scan instructions with a predefined format. |
| `title` | `string` | The title that identifies this compliance check. |
| `version` | `array<ComplianceVersion>` | The OS and config versions the benchmark applies to. |

### `ComplianceOccurrence`

An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.

| Property | Type | Description |
|----------|------|-------------|
| `nonComplianceReason` | `string` |  |
| `nonCompliantFiles` | `array<NonCompliantFile>` |  |
| `version` | `ComplianceVersion` | The OS and config version the benchmark was run on. |

### `ComplianceVersion`

Describes the CIS benchmark version that is applicable to a given OS and os version.

| Property | Type | Description |
|----------|------|-------------|
| `benchmarkDocument` | `string` | The name of the document that defines this benchmark, e.g. "CIS Container-Optimized OS". |
| `cpeUri` | `string` | The CPE URI (https://cpe.mitre.org/specification/) this benchmark is applicable to. |
| `version` | `string` | The version of the benchmark. This is set to the version of the OS-specific CIS document the benc... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig`

ApprovalConfig describes configuration for manual approval of a build.

| Property | Type | Description |
|----------|------|-------------|
| `approvalRequired` | `boolean` | Whether or not approval is needed. If this is set on a build, it will become pending when created... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult`

ApprovalResult describes the decision and associated metadata of a manual approval of a build.

| Property | Type | Description |
|----------|------|-------------|
| `approvalTime` | `string` | Output only. The time when the approval decision was made. |
| `approverAccount` | `string` | Output only. Email of the user that called the ApproveBuild API to approve or reject a build at t... |
| `comment` | `string` | Optional. An optional comment for this manual approval result. |
| `decision` | `string` | Required. The decision of this manual approval. |
| `url` | `string` | Optional. An optional URL tied to this manual approval result. This field is essentially the same... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts`

Artifacts produced by a build that should be uploaded upon successful completion of all build steps.

| Property | Type | Description |
|----------|------|-------------|
| `goModules` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsGoModule>` | Optional. A list of Go modules to be uploaded to Artifact Registry upon successful completion of ... |
| `images` | `array<string>` | A list of images to be pushed upon the successful completion of all build steps. The images will ... |
| `mavenArtifacts` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact>` | A list of Maven artifacts to be uploaded to Artifact Registry upon successful completion of all b... |
| `npmPackages` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage>` | A list of npm packages to be uploaded to Artifact Registry upon successful completion of all buil... |
| `objects` | `ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects` | A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps. ... |
| `pythonPackages` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage>` | A list of Python packages to be uploaded to Artifact Registry upon successful completion of all b... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects`

Files in the workspace to upload to Cloud Storage upon successful completion of all build steps.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Cloud Storage bucket and optional object path, in the form "gs://bucket/path/to/somewhere/". (see... |
| `paths` | `array<string>` | Path globs used to match files in the build's workspace. |
| `timing` | `ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pushing all artifact objects. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsGoModule`

Go module to upload to Artifact Registry upon successful completion of all build steps. A module refers to all dependencies in a go.mod file.

| Property | Type | Description |
|----------|------|-------------|
| `modulePath` | `string` | Optional. The Go module's "module path". e.g. example.com/foo/v2 |
| `moduleVersion` | `string` | Optional. The Go module's semantic version in the form vX.Y.Z. e.g. v0.1.1 Pre-release identifier... |
| `repositoryLocation` | `string` | Optional. Location of the Artifact Registry repository. i.e. us-east1 Defaults to the build’s loc... |
| `repositoryName` | `string` | Optional. Artifact Registry repository name. Specified Go modules will be zipped and uploaded to ... |
| `repositoryProjectId` | `string` | Optional. Project ID of the Artifact Registry repository. Defaults to the build project. |
| `sourcePath` | `string` | Optional. Source path of the go.mod file in the build's workspace. If not specified, this will de... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact`

A Maven artifact to upload to Artifact Registry upon successful completion of all build steps.

| Property | Type | Description |
|----------|------|-------------|
| `artifactId` | `string` | Maven `artifactId` value used when uploading the artifact to Artifact Registry. |
| `deployFolder` | `string` | Optional. Path to a folder containing the files to upload to Artifact Registry. This can be eithe... |
| `groupId` | `string` | Maven `groupId` value used when uploading the artifact to Artifact Registry. |
| `path` | `string` | Optional. Path to an artifact in the build's workspace to be uploaded to Artifact Registry. This ... |
| `repository` | `string` | Artifact Registry repository, in the form "https://$REGION-maven.pkg.dev/$PROJECT/$REPOSITORY" Ar... |
| `version` | `string` | Maven `version` value used when uploading the artifact to Artifact Registry. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage`

Npm package to upload to Artifact Registry upon successful completion of all build steps.

| Property | Type | Description |
|----------|------|-------------|
| `packagePath` | `string` | Optional. Path to the package.json. e.g. workspace/path/to/package Only one of `archive` or `pack... |
| `repository` | `string` | Artifact Registry repository, in the form "https://$REGION-npm.pkg.dev/$PROJECT/$REPOSITORY" Npm ... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage`

Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository.

| Property | Type | Description |
|----------|------|-------------|
| `paths` | `array<string>` | Path globs used to match files in the build's workspace. For Python/ Twine, this is usually `dist... |
| `repository` | `string` | Artifact Registry repository, in the form "https://$REGION-python.pkg.dev/$PROJECT/$REPOSITORY" F... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1Build`

A build resource in the Cloud Build API. At a high level, a `Build` describes where to find source code, how to build it (for example, the builder image to run on the source), and where to store the built artifacts. Fields can include the following variables, which will be expanded when the build is created: - $PROJECT_ID: the project ID of the build. - $PROJECT_NUMBER: the project number of the build. - $LOCATION: the location/region of the build. - $BUILD_ID: the autogenerated ID of the build. - $REPO_NAME: the source repository name specified by RepoSource. - $BRANCH_NAME: the branch name specified by RepoSource. - $TAG_NAME: the tag name specified by RepoSource. - $REVISION_ID or $COMMIT_SHA: the commit SHA specified by RepoSource or resolved from the specified branch or tag. - $SHORT_SHA: first 7 characters of $REVISION_ID or $COMMIT_SHA.

| Property | Type | Description |
|----------|------|-------------|
| `approval` | `ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval` | Output only. Describes this build's approval configuration, status, and result. |
| `artifacts` | `ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts` | Artifacts produced by the build that should be uploaded upon successful completion of all build s... |
| `availableSecrets` | `ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets` | Secrets and secret environment variables. |
| `buildTriggerId` | `string` | Output only. The ID of the `BuildTrigger` that triggered this build, if it was triggered automati... |
| `createTime` | `string` | Output only. Time at which the request to create the build was received. |
| `dependencies` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1Dependency>` | Optional. Dependencies that the Cloud Build worker will fetch before executing user steps. |
| `failureInfo` | `ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo` | Output only. Contains information about the build when status=FAILURE. |
| `finishTime` | `string` | Output only. Time at which execution of the build was finished. The difference between finish_tim... |
| `gitConfig` | `ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig` | Optional. Configuration for git operations. |
| `id` | `string` | Output only. Unique identifier of the build. |
| `images` | `array<string>` | A list of images to be pushed upon the successful completion of all build steps. The images are p... |
| `logUrl` | `string` | Output only. URL to logs for this build in Google Cloud Console. |
| `logsBucket` | `string` | Cloud Storage bucket where logs should be written (see [Bucket Name Requirements](https://cloud.g... |
| `name` | `string` | Output only. The 'Build' name with format: `projects/{project}/locations/{location}/builds/{build... |
| `options` | `ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions` | Special options for this build. |
| `projectId` | `string` | Output only. ID of the project. |
| `queueTtl` | `string` | TTL in queue for this build. If provided and the build is enqueued longer than this value, the bu... |
| `results` | `ContaineranalysisGoogleDevtoolsCloudbuildV1Results` | Output only. Results of the build. |
| `secrets` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1Secret>` | Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended te... |
| `serviceAccount` | `string` | IAM service account whose credentials will be used at build runtime. Must be of the format `proje... |
| `source` | `ContaineranalysisGoogleDevtoolsCloudbuildV1Source` | Optional. The location of the source files to build. |
| `sourceProvenance` | `ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance` | Output only. A permanent fixed identifier for source. |
| `startTime` | `string` | Output only. Time at which execution of the build was started. |
| `status` | `string` | Output only. Status of the build. |
| `statusDetail` | `string` | Output only. Customer-readable message about the current status. |
| `steps` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep>` | Required. The operations to be performed on the workspace. |
| `substitutions` | `object` | Substitutions data for `Build` resource. |
| `tags` | `array<string>` | Tags for annotation of a `Build`. These are not docker tags. |
| `timeout` | `string` | Amount of time that this build should be allowed to run, to second granularity. If this amount of... |
| `timing` | `object` | Output only. Stores timing information for phases of the build. Valid keys are: * BUILD: time to ... |
| `warnings` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning>` | Output only. Non-fatal problems encountered during the execution of the build. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval`

BuildApproval describes a build's approval configuration, state, and result.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig` | Output only. Configuration for manual approval of this build. |
| `result` | `ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult` | Output only. Result of manual approval for this Build. |
| `state` | `string` | Output only. The state of this build's approval. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo`

A fatal problem encountered during the execution of the build.

| Property | Type | Description |
|----------|------|-------------|
| `detail` | `string` | Explains the failure issue in more detail using hard-coded text. |
| `type` | `string` | The name of the failure. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions`

Optional arguments to enable specific features of builds.

| Property | Type | Description |
|----------|------|-------------|
| `automapSubstitutions` | `boolean` | Option to include built-in and custom substitutions as env variables for all build steps. |
| `defaultLogsBucketBehavior` | `string` | Optional. Option to specify how default logs buckets are setup. |
| `diskSizeGb` | `string` | Requested disk size for the VM that runs the build. Note that this is *NOT* "disk free"; some of ... |
| `dynamicSubstitutions` | `boolean` | Option to specify whether or not to apply bash style string operations to the substitutions. NOTE... |
| `enableStructuredLogging` | `boolean` | Optional. Option to specify whether structured logging is enabled. If true, JSON-formatted logs a... |
| `env` | `array<string>` | A list of global environment variable definitions that will exist for all build steps in this bui... |
| `logStreamingOption` | `string` | Option to define build log streaming behavior to Cloud Storage. |
| `logging` | `string` | Option to specify the logging mode, which determines if and where build logs are stored. |
| `machineType` | `string` | Compute Engine machine type on which to run the build. |
| `pool` | `ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption` | Optional. Specification for execution on a `WorkerPool`. See [running builds in a private pool](h... |
| `pubsubTopic` | `string` | Optional. Option to specify the Pub/Sub topic to receive build status updates. |
| `requestedVerifyOption` | `string` | Requested verifiability options. |
| `secretEnv` | `array<string>` | A list of global environment variables, which are encrypted using a Cloud Key Management Service ... |
| `sourceProvenanceHash` | `array<string>` | Requested hash for SourceProvenance. |
| `substitutionOption` | `string` | Option to specify behavior when there is an error in the substitution checks. NOTE: this is alway... |
| `volumes` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1Volume>` | Global list of volumes to mount for ALL build steps Each volume is created as an empty volume pri... |
| `workerPool` | `string` | This field deprecated; please use `pool.name` instead. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption`

Details about how a build should be executed on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The `WorkerPool` resource to execute the build on. You must have `cloudbuild.workerpools.use` on ... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep`

A step in the build pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `allowExitCodes` | `array<integer>` | Allow this build step to fail without failing the entire build if and only if the exit code is on... |
| `allowFailure` | `boolean` | Allow this build step to fail without failing the entire build. If false, the entire build will f... |
| `args` | `array<string>` | A list of arguments that will be presented to the step when it is started. If the image used to r... |
| `automapSubstitutions` | `boolean` | Option to include built-in and custom substitutions as env variables for this build step. This op... |
| `dir` | `string` | Working directory to use when running this step's container. If this value is a relative path, it... |
| `entrypoint` | `string` | Entrypoint to be used instead of the build step image's default entrypoint. If unset, the image's... |
| `env` | `array<string>` | A list of environment variable definitions to be used when running a step. The elements are of th... |
| `exitCode` | `integer` | Output only. Return code from running the step. |
| `id` | `string` | Unique identifier for this build step, used in `wait_for` to reference this build step as a depen... |
| `name` | `string` | Required. The name of the container image that will run this particular build step. If the image ... |
| `pullTiming` | `ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pulling this build step's builder image only. |
| `script` | `string` | A shell script to be executed in the step. When script is provided, the user cannot specify the e... |
| `secretEnv` | `array<string>` | A list of environment variables which are encrypted using a Cloud Key Management Service crypto k... |
| `status` | `string` | Output only. Status of the build step. At this time, build step status is only updated on build c... |
| `timeout` | `string` | Time limit for executing this build step. If not defined, the step has no time limit and will be ... |
| `timing` | `ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for executing this build step. |
| `volumes` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1Volume>` | List of volumes to mount into the build step. Each volume is created as an empty volume prior to ... |
| `waitFor` | `array<string>` | The ID(s) of the step(s) that this build step depends on. This build step will not start until al... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning`

A non-fatal problem encountered during the execution of the build.

| Property | Type | Description |
|----------|------|-------------|
| `priority` | `string` | The priority for this warning. |
| `text` | `string` | Explanation of the warning generated. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage`

An image built by the pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `artifactRegistryPackage` | `string` | Output only. Path to the artifact in Artifact Registry. |
| `digest` | `string` | Docker Registry 2.0 digest. |
| `name` | `string` | Name used to push the container image to Google Container Registry, as presented to `docker push`. |
| `pushTiming` | `ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pushing the specified image. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository`

Location of the source in a 2nd-gen Google Cloud Build repository resource.

| Property | Type | Description |
|----------|------|-------------|
| `dir` | `string` | Optional. Directory, relative to the source root, in which to run the build. |
| `repository` | `string` | Required. Name of the Google Cloud Build repository, formatted as `projects/*/locations/*/connect... |
| `revision` | `string` | Required. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1Dependency`

A dependency that the Cloud Build worker will fetch before executing user steps.

| Property | Type | Description |
|----------|------|-------------|
| `empty` | `boolean` | If set to true disable all dependency fetching (ignoring the default source as well). |
| `gitSource` | `ContaineranalysisGoogleDevtoolsCloudbuildV1DependencyGitSourceDependency` | Represents a git repository as a build dependency. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1DependencyGitSourceDependency`

Represents a git repository as a build dependency.

| Property | Type | Description |
|----------|------|-------------|
| `depth` | `string` | Optional. How much history should be fetched for the build (default 1, -1 for all history). |
| `destPath` | `string` | Required. Where should the files be placed on the worker. |
| `recurseSubmodules` | `boolean` | Optional. True if submodules should be fetched too (default false). |
| `repository` | `ContaineranalysisGoogleDevtoolsCloudbuildV1DependencyGitSourceRepository` | Required. The kind of repo (url or dev connect). |
| `revision` | `string` | Required. The revision that we will fetch the repo at. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1DependencyGitSourceRepository`

A repository for a git source.

| Property | Type | Description |
|----------|------|-------------|
| `developerConnect` | `string` | The Developer Connect Git repository link formatted as `projects/*/locations/*/connections/*/gitR... |
| `url` | `string` | Location of the Git repository. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig`

This config defines the location of a source through Developer Connect.

| Property | Type | Description |
|----------|------|-------------|
| `dir` | `string` | Required. Directory, relative to the source root, in which to run the build. |
| `gitRepositoryLink` | `string` | Required. The Developer Connect Git repository link, formatted as `projects/*/locations/*/connect... |
| `revision` | `string` | Required. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes`

Container message for hashes of byte content of files, used in SourceProvenance messages to verify integrity of source input to the build.

| Property | Type | Description |
|----------|------|-------------|
| `fileHash` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1Hash>` | Collection of file hashes. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig`

GitConfig is a configuration for git operations.

| Property | Type | Description |
|----------|------|-------------|
| `http` | `ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig` | Configuration for HTTP related git operations. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig`

HttpConfig is a configuration for HTTP related git operations.

| Property | Type | Description |
|----------|------|-------------|
| `proxySecretVersionName` | `string` | SecretVersion resource of the HTTP proxy URL. The Service Account used in the build (either the d... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource`

Location of the source in any accessible Git repository.

| Property | Type | Description |
|----------|------|-------------|
| `dir` | `string` | Optional. Directory, relative to the source root, in which to run the build. This must be a relat... |
| `revision` | `string` | Optional. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or... |
| `url` | `string` | Required. Location of the Git repo to build. This will be used as a `git remote`, see https://git... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1Hash`

Container message for hash values.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of hash that was performed. |
| `value` | `string` | The hash value. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret`

Pairs a set of secret environment variables mapped to encrypted values with the Cloud KMS key to use to decrypt the value.

| Property | Type | Description |
|----------|------|-------------|
| `envMap` | `object` | Map of environment variable name to its encrypted value. Secret environment variables must be uni... |
| `kmsKeyName` | `string` | Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locat... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource`

Location of the source in a Google Cloud Source Repository.

| Property | Type | Description |
|----------|------|-------------|
| `branchName` | `string` | Regex matching branches to build. The syntax of the regular expressions accepted is the syntax ac... |
| `commitSha` | `string` | Explicit commit SHA to build. |
| `dir` | `string` | Optional. Directory, relative to the source root, in which to run the build. This must be a relat... |
| `invertRegex` | `boolean` | Optional. Only trigger a build if the revision regex does NOT match the revision regex. |
| `projectId` | `string` | Optional. ID of the project that owns the Cloud Source Repository. If omitted, the project ID req... |
| `repoName` | `string` | Required. Name of the Cloud Source Repository. |
| `substitutions` | `object` | Optional. Substitutions to use in a triggered build. Should only be used with RunBuildTrigger |
| `tagName` | `string` | Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accept... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1Results`

Artifacts created by the build pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `artifactManifest` | `string` | Path to the artifact manifest for non-container artifacts uploaded to Cloud Storage. Only populat... |
| `artifactTiming` | `ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan` | Time to push all non-container artifacts to Cloud Storage. |
| `buildStepImages` | `array<string>` | List of build step digests, in the order corresponding to build step indices. |
| `buildStepOutputs` | `array<string>` | List of build step outputs, produced by builder images, in the order corresponding to build step ... |
| `goModules` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedGoModule>` | Optional. Go module artifacts uploaded to Artifact Registry at the end of the build. |
| `images` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage>` | Container images that were built as a part of the build. |
| `mavenArtifacts` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact>` | Maven artifacts uploaded to Artifact Registry at the end of the build. |
| `npmPackages` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage>` | Npm packages uploaded to Artifact Registry at the end of the build. |
| `numArtifacts` | `string` | Number of non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are up... |
| `pythonPackages` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage>` | Python artifacts uploaded to Artifact Registry at the end of the build. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1Secret`

Pairs a set of secret environment variables containing encrypted values with the Cloud KMS key to use to decrypt the value. Note: Use `kmsKeyName` with `available_secrets` instead of using `kmsKeyName` with `secret`. For instructions see: https://cloud.google.com/cloud-build/docs/securing-builds/use-encrypted-credentials.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Cloud KMS key name to use to decrypt these envs. |
| `secretEnv` | `object` | Map of environment variable name to its encrypted value. Secret environment variables must be uni... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret`

Pairs a secret environment variable with a SecretVersion in Secret Manager.

| Property | Type | Description |
|----------|------|-------------|
| `env` | `string` | Environment variable name to associate with the secret. Secret environment variables must be uniq... |
| `versionName` | `string` | Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/* |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets`

Secrets and secret environment variables.

| Property | Type | Description |
|----------|------|-------------|
| `inline` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret>` | Secrets encrypted with KMS key and the associated secret environment variable. |
| `secretManager` | `array<ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret>` | Secrets in Secret Manager and associated secret environment variable. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1Source`

Location of the source in a supported storage service.

| Property | Type | Description |
|----------|------|-------------|
| `connectedRepository` | `ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository` | Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource. |
| `developerConnectConfig` | `ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig` | If provided, get the source from this Developer Connect config. |
| `gitSource` | `ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource` | If provided, get the source from this Git repository. |
| `repoSource` | `ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource` | If provided, get the source from this location in a Cloud Source Repository. |
| `storageSource` | `ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource` | If provided, get the source from this location in Cloud Storage. |
| `storageSourceManifest` | `ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest` | If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see ... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance`

Provenance of the source. Ways to find the original source, or verify that some source was used for this build.

| Property | Type | Description |
|----------|------|-------------|
| `fileHashes` | `object` | Output only. Hash(es) of the build source, which can be used to verify that the original source i... |
| `resolvedConnectedRepository` | `ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository` | Output only. A copy of the build's `source.connected_repository`, if exists, with any revisions r... |
| `resolvedGitSource` | `ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource` | Output only. A copy of the build's `source.git_source`, if exists, with any revisions resolved. |
| `resolvedRepoSource` | `ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource` | A copy of the build's `source.repo_source`, if exists, with any revisions resolved. |
| `resolvedStorageSource` | `ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource` | A copy of the build's `source.storage_source`, if exists, with any generations resolved. |
| `resolvedStorageSourceManifest` | `ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest` | A copy of the build's `source.storage_source_manifest`, if exists, with any revisions resolved. T... |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource`

Location of the source in an archive file in Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.c... |
| `generation` | `string` | Optional. Cloud Storage generation for the object. If the generation is omitted, the latest gener... |
| `object` | `string` | Required. Cloud Storage object containing the source. This object must be a zipped (`.zip`) or gz... |
| `sourceFetcher` | `string` | Optional. Option to specify the tool to fetch the source file for the build. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest`

Location of the source manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Required. Cloud Storage bucket containing the source manifest (see [Bucket Name Requirements](htt... |
| `generation` | `string` | Cloud Storage generation for the object. If the generation is omitted, the latest generation will... |
| `object` | `string` | Required. Cloud Storage object containing the source manifest. This object must be a JSON file. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan`

Start and end times for a build execution phase.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End of time span. |
| `startTime` | `string` | Start of time span. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedGoModule`

A Go module artifact uploaded to Artifact Registry using the GoModule directive.

| Property | Type | Description |
|----------|------|-------------|
| `artifactRegistryPackage` | `string` | Output only. Path to the artifact in Artifact Registry. |
| `fileHashes` | `ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes` | Hash types and values of the Go Module Artifact. |
| `pushTiming` | `ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pushing the specified artifact. |
| `uri` | `string` | URI of the uploaded artifact. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact`

A Maven artifact uploaded using the MavenArtifact directive.

| Property | Type | Description |
|----------|------|-------------|
| `artifactRegistryPackage` | `string` | Output only. Path to the artifact in Artifact Registry. |
| `fileHashes` | `ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes` | Hash types and values of the Maven Artifact. |
| `pushTiming` | `ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pushing the specified artifact. |
| `uri` | `string` | URI of the uploaded artifact. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage`

An npm package uploaded to Artifact Registry using the NpmPackage directive.

| Property | Type | Description |
|----------|------|-------------|
| `artifactRegistryPackage` | `string` | Output only. Path to the artifact in Artifact Registry. |
| `fileHashes` | `ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes` | Hash types and values of the npm package. |
| `pushTiming` | `ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pushing the specified artifact. |
| `uri` | `string` | URI of the uploaded npm package. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage`

Artifact uploaded using the PythonPackage directive.

| Property | Type | Description |
|----------|------|-------------|
| `artifactRegistryPackage` | `string` | Output only. Path to the artifact in Artifact Registry. |
| `fileHashes` | `ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes` | Hash types and values of the Python Artifact. |
| `pushTiming` | `ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pushing the specified artifact. |
| `uri` | `string` | URI of the uploaded artifact. |

### `ContaineranalysisGoogleDevtoolsCloudbuildV1Volume`

Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the volume to mount. Volume names must be unique per build step and must be valid names f... |
| `path` | `string` | Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume p... |

### `DSSEAttestationNote`

| Property | Type | Description |
|----------|------|-------------|
| `hint` | `DSSEHint` | DSSEHint hints at the purpose of the attestation authority. |

### `DSSEAttestationOccurrence`

Deprecated. Prefer to use a regular Occurrence, and populate the Envelope at the top level of the Occurrence.

| Property | Type | Description |
|----------|------|-------------|
| `envelope` | `Envelope` | If doing something security critical, make sure to verify the signatures in this metadata. |
| `statement` | `InTotoStatement` |  |

### `DSSEHint`

This submessage provides human-readable hints about the purpose of the authority. Because the name of a note acts as its resource reference, it is important to disambiguate the canonical name of the Note (which might be a UUID for security purposes) from "readable" names more suitable for debug output. Note that these hints should not be used to look up authorities in security sensitive contexts, such as when looking up attestations to verify.

| Property | Type | Description |
|----------|------|-------------|
| `humanReadableName` | `string` | Required. The human readable name of this attestation authority, for example "cloudbuild-prod". |

### `DeploymentNote`

An artifact that can be deployed in some runtime.

| Property | Type | Description |
|----------|------|-------------|
| `resourceUri` | `array<string>` | Required. Resource URI for the artifact being deployed. |

### `DeploymentOccurrence`

The period during which some deployable was active in a runtime.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | Address of the runtime element hosting this deployment. |
| `config` | `string` | Configuration used to create this deployment. |
| `deployTime` | `string` | Required. Beginning of the lifetime of this deployment. |
| `platform` | `string` | Platform hosting this deployment. |
| `resourceUri` | `array<string>` | Output only. Resource URI for the artifact being deployed taken from the deployable field with th... |
| `undeployTime` | `string` | End of the lifetime of this deployment. |
| `userEmail` | `string` | Identity of the user that triggered this deployment. |

### `Detail`

A detail for a distro and package affected by this vulnerability and its associated fix (if one is available).

| Property | Type | Description |
|----------|------|-------------|
| `affectedCpeUri` | `string` | Required. The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects. |
| `affectedPackage` | `string` | Required. The package this vulnerability affects. |
| `affectedVersionEnd` | `Version` | The version number at the end of an interval in which this vulnerability exists. A vulnerability ... |
| `affectedVersionStart` | `Version` | The version number at the start of an interval in which this vulnerability exists. A vulnerabilit... |
| `description` | `string` | A vendor-specific description of this vulnerability. |
| `fixedCpeUri` | `string` | The distro recommended [CPE URI](https://cpe.mitre.org/specification/) to update to that contains... |
| `fixedPackage` | `string` | The distro recommended package to update to that contains a fix for this vulnerability. It is pos... |
| `fixedVersion` | `Version` | The distro recommended version to update to that contains a fix for this vulnerability. Setting t... |
| `isObsolete` | `boolean` | Whether this detail is obsolete. Occurrences are expected not to point to obsolete details. |
| `packageType` | `string` | The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.). |
| `severityName` | `string` | The distro assigned severity of this vulnerability. |
| `source` | `string` | The source from which the information in this Detail was obtained. |
| `sourceUpdateTime` | `string` | The time this information was last changed at the source. This is an upstream timestamp from the ... |
| `vendor` | `string` | The name of the vendor of the product. |

### `Digest`

Digest information.

| Property | Type | Description |
|----------|------|-------------|
| `algo` | `string` | `SHA1`, `SHA512` etc. |
| `digestBytes` | `string` | Value of the digest. |

### `DiscoveryNote`

A note that indicates a type of analysis a provider would perform. This note exists in a provider's project. A `Discovery` occurrence is created in a consumer's project at the start of analysis.

| Property | Type | Description |
|----------|------|-------------|
| `analysisKind` | `string` | Required. Immutable. The kind of analysis that is handled by this discovery. |

### `DiscoveryOccurrence`

Provides information about the analysis status of a discovered resource.

| Property | Type | Description |
|----------|------|-------------|
| `analysisCompleted` | `AnalysisCompleted` |  |
| `analysisError` | `array<Status>` | Indicates any errors encountered during analysis of a resource. There could be 0 or more of these... |
| `analysisStatus` | `string` | The status of discovery for the resource. |
| `analysisStatusError` | `Status` | When an error is encountered this will contain a LocalizedMessage under details to show to the us... |
| `archiveTime` | `string` | Output only. The time occurrences related to this discovery occurrence were archived. |
| `continuousAnalysis` | `string` | Whether the resource is continuously analyzed. |
| `cpe` | `string` | The CPE of the resource being scanned. |
| `files` | `array<File>` | Files that make up the resource described by the occurrence. |
| `lastScanTime` | `string` | The last time this resource was scanned. |
| `lastVulnerabilityUpdateTime` | `string` | The last time vulnerability scan results changed. |
| `sbomStatus` | `SBOMStatus` | The status of an SBOM generation. |

### `Distribution`

This represents a particular channel of distribution for a given package. E.g., Debian's jessie-backports dpkg mirror.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | The CPU architecture for which packages in this distribution channel were built. |
| `cpeUri` | `string` | Required. The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package ... |
| `description` | `string` | The distribution channel-specific description of this package. |
| `latestVersion` | `Version` | The latest available version of this package in this distribution channel. |
| `maintainer` | `string` | A freeform string denoting the maintainer of this package. |
| `url` | `string` | The distribution channel-specific homepage for this package. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Envelope`

MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.

| Property | Type | Description |
|----------|------|-------------|
| `payload` | `string` |  |
| `payloadType` | `string` |  |
| `signatures` | `array<EnvelopeSignature>` |  |

### `EnvelopeSignature`

| Property | Type | Description |
|----------|------|-------------|
| `keyid` | `string` |  |
| `sig` | `string` |  |

### `ExploitPredictionScoringSystem`

| Property | Type | Description |
|----------|------|-------------|
| `percentile` | `number` | The percentile of the current score, the proportion of all scored vulnerabilities with the same o... |
| `score` | `number` | The EPSS score representing the probability [0-1] of exploitation in the wild in the next 30 days |

### `ExportSBOMRequest`

The request to generate and export SBOM. Target must be specified for the request.

| Property | Type | Description |
|----------|------|-------------|
| `cloudStorageLocation` | `CloudStorageLocation` | Optional. Empty placeholder to denote that this is a Google Cloud Storage export request. |

### `ExportSBOMResponse`

The response from a call to ExportSBOM.

| Property | Type | Description |
|----------|------|-------------|
| `discoveryOccurrence` | `string` | The name of the discovery occurrence in the form "projects/{project_id}/occurrences/{OCCURRENCE_I... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `File`

| Property | Type | Description |
|----------|------|-------------|
| `digest` | `object` |  |
| `name` | `string` |  |

### `FileHashes`

Container message for hashes of byte content of files, used in source messages to verify integrity of source input to the build.

| Property | Type | Description |
|----------|------|-------------|
| `fileHash` | `array<Hash>` | Required. Collection of file hashes. |

### `Fingerprint`

A set of properties that uniquely identify a given Docker image.

| Property | Type | Description |
|----------|------|-------------|
| `v1Name` | `string` | Required. The layer ID of the final layer in the Docker image's v1 representation. |
| `v2Blob` | `array<string>` | Required. The ordered list of v2 blobs that represent a given image. |
| `v2Name` | `string` | Output only. The name of the image's v2 blobs computed via: [bottom] := v2_blobbottom := sha256(v... |

### `FixableTotalByDigest`

Per resource and severity counts of fixable and total vulnerabilities.

| Property | Type | Description |
|----------|------|-------------|
| `fixableCount` | `string` | The number of fixable vulnerabilities associated with this resource. |
| `resourceUri` | `string` | The affected resource. |
| `severity` | `string` | The severity for this count. SEVERITY_UNSPECIFIED indicates total across all severities. |
| `totalCount` | `string` | The total number of vulnerabilities associated with this resource. |

### `GerritSourceContext`

A SourceContext referring to a Gerrit project.

| Property | Type | Description |
|----------|------|-------------|
| `aliasContext` | `AliasContext` | An alias, which may be a branch or tag. |
| `gerritProject` | `string` | The full project name within the host. Projects may be nested, so "project/subproject" is a valid... |
| `hostUri` | `string` | The URI of a running Gerrit instance. |
| `revisionId` | `string` | A revision (commit) ID. |

### `GetIamPolicyRequest`

Request message for `GetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `GetPolicyOptions` | OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`. |

### `GetPolicyOptions`

Encapsulates settings provided to GetIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `requestedPolicyVersion` | `integer` | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, ... |

### `GitSourceContext`

A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).

| Property | Type | Description |
|----------|------|-------------|
| `revisionId` | `string` | Git commit hash. |
| `url` | `string` | Git repository URL. |

### `GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata`

Metadata for all operations used and required for all operations that created by Container Analysis Providers

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time this operation was created. |
| `endTime` | `string` | Output only. The time that this operation was marked completed or failed. |

### `GrafeasV1FileLocation`

Indicates the location at which a package was found.

| Property | Type | Description |
|----------|------|-------------|
| `filePath` | `string` | For jars that are contained inside .war files, this filepath can indicate the path to war file co... |
| `layerDetails` | `LayerDetails` | Each package found in a file should have its own layer metadata (that is, information from the or... |

### `GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder`

Identifies the entity that executed the recipe, which is trusted to have correctly performed the operation and populated this provenance.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` |  |

### `GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness`

Indicates that the builder claims certain fields in this message to be complete.

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `boolean` |  |
| `materials` | `boolean` |  |
| `parameters` | `boolean` |  |

### `GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource`

Describes where the config file that kicked off the build came from. This is effectively a pointer to the source where buildConfig came from.

| Property | Type | Description |
|----------|------|-------------|
| `digest` | `object` |  |
| `entryPoint` | `string` |  |
| `uri` | `string` |  |

### `GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation`

Identifies the event that kicked off the build.

| Property | Type | Description |
|----------|------|-------------|
| `configSource` | `GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource` |  |
| `environment` | `object` |  |
| `parameters` | `object` |  |

### `GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial`

The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.

| Property | Type | Description |
|----------|------|-------------|
| `digest` | `object` |  |
| `uri` | `string` |  |

### `GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata`

Other properties of the build.

| Property | Type | Description |
|----------|------|-------------|
| `buildFinishedOn` | `string` |  |
| `buildInvocationId` | `string` |  |
| `buildStartedOn` | `string` |  |
| `completeness` | `GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness` |  |
| `reproducible` | `boolean` |  |

### `Hash`

Container message for hash values.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Required. The type of hash that was performed, e.g. "SHA-256". |
| `value` | `string` | Required. The hash value. |

### `Hint`

This submessage provides human-readable hints about the purpose of the authority. Because the name of a note acts as its resource reference, it is important to disambiguate the canonical name of the Note (which might be a UUID for security purposes) from "readable" names more suitable for debug output. Note that these hints should not be used to look up authorities in security sensitive contexts, such as when looking up attestations to verify.

| Property | Type | Description |
|----------|------|-------------|
| `humanReadableName` | `string` | Required. The human readable name of this attestation authority, for example "qa". |

### `Identity`

The unique identifier of the update.

| Property | Type | Description |
|----------|------|-------------|
| `revision` | `integer` | The revision number of the update. |
| `updateId` | `string` | The revision independent identifier of the update. |

### `ImageNote`

Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g., a tag of the resource_url.

| Property | Type | Description |
|----------|------|-------------|
| `fingerprint` | `Fingerprint` | Required. Immutable. The fingerprint of the base image. |
| `resourceUrl` | `string` | Required. Immutable. The resource_url for the resource representing the basis of associated occur... |

### `ImageOccurrence`

Details of the derived image portion of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .

| Property | Type | Description |
|----------|------|-------------|
| `baseResourceUrl` | `string` | Output only. This contains the base image URL for the derived image occurrence. |
| `distance` | `integer` | Output only. The number of layers by which this image differs from the associated image basis. |
| `fingerprint` | `Fingerprint` | Required. The fingerprint of the derived image. |
| `layerInfo` | `array<Layer>` | This contains layer-specific metadata, if populated it has length "distance" and is ordered with ... |

### `InTotoProvenance`

| Property | Type | Description |
|----------|------|-------------|
| `builderConfig` | `BuilderConfig` | required |
| `materials` | `array<string>` | The collection of artifacts that influenced the build including sources, dependencies, build tool... |
| `metadata` | `Metadata` |  |
| `recipe` | `Recipe` | Identifies the configuration used for the build. When combined with materials, this SHOULD fully ... |

### `InTotoSlsaProvenanceV1`

| Property | Type | Description |
|----------|------|-------------|
| `_type` | `string` | InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement |
| `predicate` | `SlsaProvenanceV1` |  |
| `predicateType` | `string` |  |
| `subject` | `array<Subject>` |  |

### `InTotoStatement`

Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always "application/vnd.in-toto+json".

| Property | Type | Description |
|----------|------|-------------|
| `_type` | `string` | Always `https://in-toto.io/Statement/v0.1`. |
| `predicateType` | `string` | `https://slsa.dev/provenance/v0.1` for SlsaProvenance. |
| `provenance` | `InTotoProvenance` |  |
| `slsaProvenance` | `SlsaProvenance` |  |
| `slsaProvenanceZeroTwo` | `SlsaProvenanceZeroTwo` |  |
| `subject` | `array<Subject>` |  |

### `Justification`

Justification provides the justification when the state of the assessment if NOT_AFFECTED.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Additional details on why this justification was chosen. |
| `justificationType` | `string` | The justification type for this vulnerability. |

### `Jwt`

| Property | Type | Description |
|----------|------|-------------|
| `compactJwt` | `string` | The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. Fo... |

### `KnowledgeBase`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The KB name (generally of the form KB[0-9]+ (e.g., KB123456)). |
| `url` | `string` | A link to the KB in the [Windows update catalog] (https://www.catalog.update.microsoft.com/). |

### `Layer`

Layer holds metadata specific to a layer of a Docker image.

| Property | Type | Description |
|----------|------|-------------|
| `arguments` | `string` | The recovered arguments to the Dockerfile directive. |
| `directive` | `string` | Required. The recovered Dockerfile directive used to construct this layer. See https://docs.docke... |

### `LayerDetails`

Details about the layer a package was found in.

| Property | Type | Description |
|----------|------|-------------|
| `baseImages` | `array<BaseImage>` | The base images the layer is found within. |
| `chainId` | `string` | The layer chain ID (sha256 hash) of the layer in the container image. https://github.com/opencont... |
| `command` | `string` | The layer build command that was used to build the layer. This may not be found in all layers dep... |
| `diffId` | `string` | The diff ID (typically a sha256 hash) of the layer in the container image. |
| `index` | `integer` | The index of the layer in the container image. |

### `License`

License information.

| Property | Type | Description |
|----------|------|-------------|
| `comments` | `string` | Comments |
| `expression` | `string` | Often a single license can be used to represent the licensing terms. Sometimes it is necessary to... |

### `ListNoteOccurrencesResponse`

Response for listing occurrences for a note.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to provide to skip to a particular spot in the list. |
| `occurrences` | `array<Occurrence>` | The occurrences attached to the specified note. |

### `ListNotesResponse`

Response for listing notes.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next pagination token in the list response. It should be used as `page_token` for the followi... |
| `notes` | `array<Note>` | The notes requested. |
| `unreachable` | `array<string>` | Unordered list. Unreachable regions. Populated for requests from the global region when `return_p... |

### `ListOccurrencesResponse`

Response for listing occurrences.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next pagination token in the list response. It should be used as `page_token` for the followi... |
| `occurrences` | `array<Occurrence>` | The occurrences requested. |
| `unreachable` | `array<string>` | Unordered list. Unreachable regions. Populated for requests from the global region when `return_p... |

### `Location`

An occurrence of a particular package installation found within a system's filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.

| Property | Type | Description |
|----------|------|-------------|
| `cpeUri` | `string` | Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/) |
| `path` | `string` | The path from which we gathered that this package/version is installed. |
| `version` | `Version` | Deprecated. The version installed at this location. |

### `Material`

| Property | Type | Description |
|----------|------|-------------|
| `digest` | `object` |  |
| `uri` | `string` |  |

### `Metadata`

Other properties of the build.

| Property | Type | Description |
|----------|------|-------------|
| `buildFinishedOn` | `string` | The timestamp of when the build completed. |
| `buildInvocationId` | `string` | Identifies the particular build invocation, which can be useful for finding associated logs or ot... |
| `buildStartedOn` | `string` | The timestamp of when the build started. |
| `completeness` | `Completeness` | Indicates that the builder claims certain fields in this message to be complete. |
| `reproducible` | `boolean` | If true, the builder claims that running the recipe on materials will produce bit-for-bit identic... |

### `NonCompliantFile`

Details about files that caused a compliance check to fail. display_command is a single command that can be used to display a list of non compliant files. When there is no such command, we can also iterate a list of non compliant file using 'path'.

| Property | Type | Description |
|----------|------|-------------|
| `displayCommand` | `string` | Command to display the non-compliant files. |
| `path` | `string` | Empty if `display_command` is set. |
| `reason` | `string` | Explains why a file is non compliant for a CIS check. |

### `Note`

A type of analysis that can be done for a resource.

| Property | Type | Description |
|----------|------|-------------|
| `advisoryPublishTime` | `string` | The timestamp when the advisory was first published by the source feed. |
| `attestation` | `AttestationNote` | A note describing an attestation role. |
| `build` | `BuildNote` | A note describing build provenance for a verifiable build. |
| `compliance` | `ComplianceNote` | A note describing a compliance check. |
| `createTime` | `string` | Output only. The time this note was created. This field can be used as a filter in list requests. |
| `deployment` | `DeploymentNote` | A note describing something that can be deployed. |
| `discovery` | `DiscoveryNote` | A note describing the initial analysis of a resource. |
| `dsseAttestation` | `DSSEAttestationNote` | A note describing a dsse attestation note. |
| `expirationTime` | `string` | Time of expiration for this note. Empty if note does not expire. |
| `image` | `ImageNote` | A note describing a base image. |
| `kind` | `string` | Output only. The type of analysis. This field can be used as a filter in list requests. |
| `longDescription` | `string` | A detailed description of this note. |
| `name` | `string` | Output only. The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. |
| `package` | `PackageNote` | A note describing a package hosted by various package managers. |
| `relatedNoteNames` | `array<string>` | Other notes related to this note. |
| `relatedUrl` | `array<RelatedUrl>` | URLs associated with this note. |
| `sbomReference` | `SBOMReferenceNote` | A note describing an SBOM reference. |
| `secret` | `SecretNote` | A note describing a secret. |
| `shortDescription` | `string` | A one sentence description of this note. |
| `updateTime` | `string` | Output only. The time this note was last updated. This field can be used as a filter in list requ... |
| `upgrade` | `UpgradeNote` | A note describing available package upgrades. |
| `vulnerability` | `VulnerabilityNote` | A note describing a package vulnerability. |
| `vulnerabilityAssessment` | `VulnerabilityAssessmentNote` | A note describing a vulnerability assessment. |

### `Occurrence`

An instance of an analysis type that has been found on a resource.

| Property | Type | Description |
|----------|------|-------------|
| `attestation` | `AttestationOccurrence` | Describes an attestation of an artifact. |
| `build` | `BuildOccurrence` | Describes a verifiable build. |
| `compliance` | `ComplianceOccurrence` | Describes a compliance violation on a linked resource. |
| `createTime` | `string` | Output only. The time this occurrence was created. |
| `deployment` | `DeploymentOccurrence` | Describes the deployment of an artifact on a runtime. |
| `discovery` | `DiscoveryOccurrence` | Describes when a resource was discovered. |
| `dsseAttestation` | `DSSEAttestationOccurrence` | Describes an attestation of an artifact using dsse. |
| `envelope` | `Envelope` | https://github.com/secure-systems-lab/dsse |
| `image` | `ImageOccurrence` | Describes how this resource derives from the basis in the associated note. |
| `kind` | `string` | Output only. This explicitly denotes which of the occurrence details are specified. This field ca... |
| `name` | `string` | Output only. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURR... |
| `noteName` | `string` | Required. Immutable. The analysis note associated with this occurrence, in the form of `projects/... |
| `package` | `PackageOccurrence` | Describes the installation of a package on the linked resource. |
| `remediation` | `string` | A description of actions that can be taken to remedy the note. |
| `resourceUri` | `string` | Required. Immutable. A URI that represents the resource for which the occurrence applies. For exa... |
| `sbomReference` | `SBOMReferenceOccurrence` | Describes a specific SBOM reference occurrences. |
| `secret` | `SecretOccurrence` | Describes a secret. |
| `updateTime` | `string` | Output only. The time this occurrence was last updated. |
| `upgrade` | `UpgradeOccurrence` | Describes an available package upgrade on the linked resource. |
| `vulnerability` | `VulnerabilityOccurrence` | Describes a security vulnerability. |

### `PackageIssue`

A detail for a distro and package this vulnerability occurrence was found in and its associated fix (if one is available).

| Property | Type | Description |
|----------|------|-------------|
| `affectedCpeUri` | `string` | Required. The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was found in. |
| `affectedPackage` | `string` | Required. The package this vulnerability was found in. |
| `affectedVersion` | `Version` | Required. The version of the package that is installed on the resource affected by this vulnerabi... |
| `effectiveSeverity` | `string` | Output only. The distro or language system assigned severity for this vulnerability when that is ... |
| `fileLocation` | `array<GrafeasV1FileLocation>` | The location at which this package was found. |
| `fixAvailable` | `boolean` | Output only. Whether a fix is available for this package. |
| `fixedCpeUri` | `string` | The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was fixed in. It is possib... |
| `fixedPackage` | `string` | The package this vulnerability was fixed in. It is possible for this to be different from the aff... |
| `fixedVersion` | `Version` | Required. The version of the package this vulnerability was fixed in. Setting this to VersionKind... |
| `packageType` | `string` | The type of package (e.g. OS, MAVEN, GO). |

### `PackageNote`

PackageNote represents a particular package version.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | The CPU architecture for which packages in this distribution channel were built. Architecture wil... |
| `cpeUri` | `string` | The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager ve... |
| `description` | `string` | The description of this package. |
| `digest` | `array<Digest>` | Hash value, typically a file digest, that allows unique identification a specific package. |
| `distribution` | `array<Distribution>` | Deprecated. The various channels by which a package is distributed. |
| `license` | `License` | Licenses that have been declared by the authors of the package. |
| `maintainer` | `string` | A freeform text denoting the maintainer of this package. |
| `name` | `string` | Required. Immutable. The name of the package. |
| `packageType` | `string` | The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.). |
| `url` | `string` | The homepage for this package. |
| `version` | `Version` | The version of the package. |

### `PackageOccurrence`

Details on how a particular software package was installed on a system.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | Output only. The CPU architecture for which packages in this distribution channel were built. Arc... |
| `cpeUri` | `string` | Output only. The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the packa... |
| `license` | `License` | Licenses that have been declared by the authors of the package. |
| `location` | `array<Location>` | All of the places within the filesystem versions of this package have been found. |
| `name` | `string` | Required. Output only. The name of the installed package. |
| `packageType` | `string` | Output only. The type of package; whether native or non native (e.g., ruby gems, node.js packages... |
| `version` | `Version` | Output only. The version of the package. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `Product`

Product contains information about a product and how to uniquely identify it.

| Property | Type | Description |
|----------|------|-------------|
| `genericUri` | `string` | Contains a URI which is vendor-specific. Example: The artifact repository URL of an image. |
| `id` | `string` | Token that identifies a product so that it can be referred to from other parts in the document. T... |
| `name` | `string` | Name of the product. |

### `ProjectRepoId`

Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31) and a repo name within that project.

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | The ID of the project. |
| `repoName` | `string` | The name of the repo. Leave empty for the default repo. |

### `ProvenanceBuilder`

| Property | Type | Description |
|----------|------|-------------|
| `builderDependencies` | `array<ResourceDescriptor>` |  |
| `id` | `string` |  |
| `version` | `object` |  |

### `Publisher`

Publisher contains information about the publisher of this Note.

| Property | Type | Description |
|----------|------|-------------|
| `issuingAuthority` | `string` | Provides information about the authority of the issuing party to release the document, in particu... |
| `name` | `string` | Name of the publisher. Examples: 'Google', 'Google Cloud Platform'. |
| `publisherNamespace` | `string` | The context or namespace. Contains a URL which is under control of the issuing party and can be u... |

### `Recipe`

Steps taken to build the artifact. For a TaskRun, typically each container corresponds to one step in the recipe.

| Property | Type | Description |
|----------|------|-------------|
| `arguments` | `array<object>` | Collection of all external inputs that influenced the build on top of recipe.definedInMaterial an... |
| `definedInMaterial` | `string` | Index in materials containing the recipe steps that are not implied by recipe.type. For example, ... |
| `entryPoint` | `string` | String identifying the entry point into the build. This is often a path to a configuration file a... |
| `environment` | `array<object>` | Any other builder-controlled inputs necessary for correctly evaluating the recipe. Usually only n... |
| `type` | `string` | URI indicating what type of recipe was performed. It determines the meaning of recipe.entryPoint,... |

### `RelatedUrl`

Metadata for any related URL information.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | Label to describe usage of the URL. |
| `url` | `string` | Specific URL associated with the resource. |

### `Remediation`

Specifies details on how to handle (and presumably, fix) a vulnerability.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Contains a comprehensive human-readable discussion of the remediation. |
| `remediationType` | `string` | The type of remediation that can be applied. |
| `remediationUri` | `RelatedUrl` | Contains the URL where to obtain the remediation. |

### `RepoId`

A unique identifier for a Cloud Repo.

| Property | Type | Description |
|----------|------|-------------|
| `projectRepoId` | `ProjectRepoId` | A combination of a project ID and a repo name. |
| `uid` | `string` | A server-assigned, globally unique identifier. |

### `ResourceDescriptor`

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` |  |
| `content` | `string` |  |
| `digest` | `object` |  |
| `downloadLocation` | `string` |  |
| `mediaType` | `string` |  |
| `name` | `string` |  |
| `uri` | `string` |  |

### `Risk`

| Property | Type | Description |
|----------|------|-------------|
| `cisaKev` | `CISAKnownExploitedVulnerabilities` | CISA maintains the authoritative source of vulnerabilities that have been exploited in the wild. |
| `epss` | `ExploitPredictionScoringSystem` | The Exploit Prediction Scoring System (EPSS) estimates the likelihood (probability) that a softwa... |

### `RunDetails`

| Property | Type | Description |
|----------|------|-------------|
| `builder` | `ProvenanceBuilder` |  |
| `byproducts` | `array<ResourceDescriptor>` |  |
| `metadata` | `BuildMetadata` |  |

### `SBOMReferenceNote`

The note representing an SBOM reference.

| Property | Type | Description |
|----------|------|-------------|
| `format` | `string` | The format that SBOM takes. E.g. may be spdx, cyclonedx, etc... |
| `version` | `string` | The version of the format that the SBOM takes. E.g. if the format is spdx, the version may be 2.3. |

### `SBOMReferenceOccurrence`

The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more details.

| Property | Type | Description |
|----------|------|-------------|
| `payload` | `SbomReferenceIntotoPayload` | The actual payload that contains the SBOM reference data. |
| `payloadType` | `string` | The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this ... |
| `signatures` | `array<EnvelopeSignature>` | The signatures over the payload. |

### `SBOMStatus`

The status of an SBOM generation.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `string` | If there was an error generating an SBOM, this will indicate what that error was. |
| `sbomState` | `string` | The progress of the SBOM generation. |

### `SbomReferenceIntotoPayload`

The actual payload that contains the SBOM Reference data. The payload follows the intoto statement specification. See https://github.com/in-toto/attestation/blob/main/spec/v1.0/statement.md for more details.

| Property | Type | Description |
|----------|------|-------------|
| `_type` | `string` | Identifier for the schema of the Statement. |
| `predicate` | `SbomReferenceIntotoPredicate` | Additional parameters of the Predicate. Includes the actual data about the SBOM. |
| `predicateType` | `string` | URI identifying the type of the Predicate. |
| `subject` | `array<Subject>` | Set of software artifacts that the attestation applies to. Each element represents a single softw... |

### `SbomReferenceIntotoPredicate`

A predicate which describes the SBOM being referenced.

| Property | Type | Description |
|----------|------|-------------|
| `digest` | `object` | A map of algorithm to digest of the contents of the SBOM. |
| `location` | `string` | The location of the SBOM. |
| `mimeType` | `string` | The mime type of the SBOM. |
| `referrerId` | `string` | The person or system referring this predicate to the consumer. |

### `SecretLocation`

The location of the secret.

| Property | Type | Description |
|----------|------|-------------|
| `fileLocation` | `GrafeasV1FileLocation` | The secret is found from a file. |

### `SecretNote`

The note representing a secret.

### `SecretOccurrence`

The occurrence provides details of a secret.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Required. Type of secret. |
| `locations` | `array<SecretLocation>` | Optional. Locations where the secret is detected. |
| `statuses` | `array<SecretStatus>` | Optional. Status of the secret. |

### `SecretStatus`

The status of the secret with a timestamp.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Optional. Optional message about the status code. |
| `status` | `string` | Optional. The status of the secret. |
| `updateTime` | `string` | Optional. The time the secret status was last updated. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

### `Signature`

Verifiers (e.g. Kritis implementations) MUST verify signatures with respect to the trust anchors defined in policy (e.g. a Kritis policy). Typically this means that the verifier has been configured with a map from `public_key_id` to public key material (and any required parameters, e.g. signing algorithm). In particular, verification implementations MUST NOT treat the signature `public_key_id` as anything more than a key lookup hint. The `public_key_id` DOES NOT validate or authenticate a public key; it only provides a mechanism for quickly selecting a public key ALREADY CONFIGURED on the verifier through a trusted channel. Verification implementations MUST reject signatures in any of the following circumstances: * The `public_key_id` is not recognized by the verifier. * The public key that `public_key_id` refers to does not verify the signature with respect to the payload. The `signature` contents SHOULD NOT be "attached" (where the payload is included with the serialized `signature` bytes). Verifiers MUST ignore any "attached" payload and only verify signatures with respect to explicitly provided payload (e.g. a `payload` field on the proto message that holds this Signature, or the canonical serialization of the proto message that holds this signature).

| Property | Type | Description |
|----------|------|-------------|
| `publicKeyId` | `string` | The identifier for the public key that verifies this signature. * The `public_key_id` is required... |
| `signature` | `string` | The content of the signature, an opaque bytestring. The payload that this signature verifies MUST... |

### `SlsaBuilder`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` |  |

### `SlsaCompleteness`

Indicates that the builder claims certain fields in this message to be complete.

| Property | Type | Description |
|----------|------|-------------|
| `arguments` | `boolean` | If true, the builder claims that recipe.arguments is complete, meaning that all external inputs a... |
| `environment` | `boolean` | If true, the builder claims that recipe.environment is claimed to be complete. |
| `materials` | `boolean` | If true, the builder claims that materials are complete, usually through some controls to prevent... |

### `SlsaMetadata`

Other properties of the build.

| Property | Type | Description |
|----------|------|-------------|
| `buildFinishedOn` | `string` | The timestamp of when the build completed. |
| `buildInvocationId` | `string` | Identifies the particular build invocation, which can be useful for finding associated logs or ot... |
| `buildStartedOn` | `string` | The timestamp of when the build started. |
| `completeness` | `SlsaCompleteness` | Indicates that the builder claims certain fields in this message to be complete. |
| `reproducible` | `boolean` | If true, the builder claims that running the recipe on materials will produce bit-for-bit identic... |

### `SlsaProvenance`

| Property | Type | Description |
|----------|------|-------------|
| `builder` | `SlsaBuilder` | required |
| `materials` | `array<Material>` | The collection of artifacts that influenced the build including sources, dependencies, build tool... |
| `metadata` | `SlsaMetadata` |  |
| `recipe` | `SlsaRecipe` | Identifies the configuration used for the build. When combined with materials, this SHOULD fully ... |

### `SlsaProvenanceV1`

Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.

| Property | Type | Description |
|----------|------|-------------|
| `buildDefinition` | `BuildDefinition` |  |
| `runDetails` | `RunDetails` |  |

### `SlsaProvenanceZeroTwo`

See full explanation of fields at slsa.dev/provenance/v0.2.

| Property | Type | Description |
|----------|------|-------------|
| `buildConfig` | `object` |  |
| `buildType` | `string` |  |
| `builder` | `GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder` |  |
| `invocation` | `GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation` |  |
| `materials` | `array<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial>` |  |
| `metadata` | `GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata` |  |

### `SlsaRecipe`

Steps taken to build the artifact. For a TaskRun, typically each container corresponds to one step in the recipe.

| Property | Type | Description |
|----------|------|-------------|
| `arguments` | `object` | Collection of all external inputs that influenced the build on top of recipe.definedInMaterial an... |
| `definedInMaterial` | `string` | Index in materials containing the recipe steps that are not implied by recipe.type. For example, ... |
| `entryPoint` | `string` | String identifying the entry point into the build. This is often a path to a configuration file a... |
| `environment` | `object` | Any other builder-controlled inputs necessary for correctly evaluating the recipe. Usually only n... |
| `type` | `string` | URI indicating what type of recipe was performed. It determines the meaning of recipe.entryPoint,... |

### `Source`

Source describes the location of the source used for the build.

| Property | Type | Description |
|----------|------|-------------|
| `additionalContexts` | `array<SourceContext>` | If provided, some of the source code used for the build may be found in these locations, in the c... |
| `artifactStorageSourceUri` | `string` | If provided, the input binary artifacts for the build came from this location. |
| `context` | `SourceContext` | If provided, the source code used for the build came from this location. |
| `fileHashes` | `object` | Hash(es) of the build source, which can be used to verify that the original source integrity was ... |

### `SourceContext`

A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.

| Property | Type | Description |
|----------|------|-------------|
| `cloudRepo` | `CloudRepoSourceContext` | A SourceContext referring to a revision in a Google Cloud Source Repo. |
| `gerrit` | `GerritSourceContext` | A SourceContext referring to a Gerrit project. |
| `git` | `GitSourceContext` | A SourceContext referring to any third party Git repo (e.g., GitHub). |
| `labels` | `object` | Labels with user defined metadata. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StepResult`

StepResult is the declaration of a result for a build step.

| Property | Type | Description |
|----------|------|-------------|
| `attestationContentName` | `string` |  |
| `attestationType` | `string` |  |
| `name` | `string` |  |

### `Subject`

| Property | Type | Description |
|----------|------|-------------|
| `digest` | `object` | `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/ma... |
| `name` | `string` |  |

### `TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `TimeSpan`

Start and end times for a build execution phase. Next ID: 3

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End of time span. |
| `startTime` | `string` | Start of time span. |

### `UpgradeDistribution`

The Upgrade Distribution represents metadata about the Upgrade for each operating system (CPE). Some distributions have additional metadata around updates, classifying them into various categories and severities.

| Property | Type | Description |
|----------|------|-------------|
| `classification` | `string` | The operating system classification of this Upgrade, as specified by the upstream operating syste... |
| `cpeUri` | `string` | Required - The specific operating system this metadata applies to. See https://cpe.mitre.org/spec... |
| `cve` | `array<string>` | The cve tied to this Upgrade. |
| `severity` | `string` | The severity as specified by the upstream operating system. |

### `UpgradeNote`

An Upgrade Note represents a potential upgrade of a package to a given version. For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2), there will be an Upgrade Note. For Windows, windows_update field represents the information related to the update.

| Property | Type | Description |
|----------|------|-------------|
| `distributions` | `array<UpgradeDistribution>` | Metadata about the upgrade for each specific operating system. |
| `package` | `string` | Required for non-Windows OS. The package this Upgrade is for. |
| `version` | `Version` | Required for non-Windows OS. The version of the package in machine + human readable form. |
| `windowsUpdate` | `WindowsUpdate` | Required for Windows OS. Represents the metadata about the Windows update. |

### `UpgradeOccurrence`

An Upgrade Occurrence represents that a specific resource_url could install a specific upgrade. This presence is supplied via local sources (i.e. it is present in the mirror and the running system has noticed its availability). For Windows, both distribution and windows_update contain information for the Windows update.

| Property | Type | Description |
|----------|------|-------------|
| `distribution` | `UpgradeDistribution` | Metadata about the upgrade for available for the specific operating system for the resource_url. ... |
| `package` | `string` | Required for non-Windows OS. The package this Upgrade is for. |
| `parsedVersion` | `Version` | Required for non-Windows OS. The version of the package in a machine + human readable form. |
| `windowsUpdate` | `WindowsUpdate` | Required for Windows OS. Represents the metadata about the Windows update. |

### `Version`

Version contains structured information about the version of a package.

| Property | Type | Description |
|----------|------|-------------|
| `epoch` | `integer` | Used to correct mistakes in the version numbering scheme. |
| `fullName` | `string` | Human readable version string. This string is of the form :- and is only set when kind is NORMAL. |
| `inclusive` | `boolean` | Whether this version is specifying part of an inclusive range. Grafeas does not have the capabili... |
| `kind` | `string` | Required. Distinguishes between sentinel MIN/MAX versions and normal versions. |
| `name` | `string` | Required only when version kind is NORMAL. The main part of the version name. |
| `revision` | `string` | The iteration of the package build from the above version. |

### `VexAssessment`

VexAssessment provides all publisher provided Vex information that is related to this vulnerability.

| Property | Type | Description |
|----------|------|-------------|
| `cve` | `string` | Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulne... |
| `impacts` | `array<string>` | Contains information about the impact of this vulnerability, this will change with time. |
| `justification` | `Justification` | Justification provides the justification when the state of the assessment if NOT_AFFECTED. |
| `noteName` | `string` | The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the... |
| `relatedUris` | `array<RelatedUrl>` | Holds a list of references associated with this vulnerability item and assessment. |
| `remediations` | `array<Remediation>` | Specifies details on how to handle (and presumably, fix) a vulnerability. |
| `state` | `string` | Provides the state of this Vulnerability assessment. |
| `vulnerabilityId` | `string` | The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, G... |

### `Volume`

Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution. Next ID: 3

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the volume to mount. Volume names must be unique per build step and must be valid names f... |
| `path` | `string` | Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume p... |

### `VulnerabilityAssessmentNote`

A single VulnerabilityAssessmentNote represents one particular product's vulnerability assessment for one CVE.

| Property | Type | Description |
|----------|------|-------------|
| `assessment` | `Assessment` | Represents a vulnerability assessment for the product. |
| `languageCode` | `string` | Identifies the language used by this document, corresponding to IETF BCP 47 / RFC 5646. |
| `longDescription` | `string` | A detailed description of this Vex. |
| `product` | `Product` | The product affected by this vex. |
| `publisher` | `Publisher` | Publisher details of this Note. |
| `shortDescription` | `string` | A one sentence description of this Vex. |
| `title` | `string` | The title of the note. E.g. `Vex-Debian-11.4` |

### `VulnerabilityNote`

A security vulnerability that can be found in resources.

| Property | Type | Description |
|----------|------|-------------|
| `cvssScore` | `number` | The CVSS score of this vulnerability. CVSS score is on a scale of 0 - 10 where 0 indicates low se... |
| `cvssV2` | `CVSS` | The full description of the v2 CVSS for this vulnerability. |
| `cvssV3` | `CVSSv3` | The full description of the CVSSv3 for this vulnerability. |
| `cvssVersion` | `string` | CVSS version used to populate cvss_score and severity. |
| `details` | `array<Detail>` | Details of all known distros and packages affected by this vulnerability. |
| `severity` | `string` | The note provider assigned severity of this vulnerability. |
| `sourceUpdateTime` | `string` | The time this information was last changed at the source. This is an upstream timestamp from the ... |
| `windowsDetails` | `array<WindowsDetail>` | Windows details get their own format because the information format and model don't match a norma... |

### `VulnerabilityOccurrence`

An occurrence of a severity vulnerability on a resource.

| Property | Type | Description |
|----------|------|-------------|
| `cvssScore` | `number` | Output only. The CVSS score of this vulnerability. CVSS score is on a scale of 0 - 10 where 0 ind... |
| `cvssV2` | `CVSS` | The cvss v2 score for the vulnerability. |
| `cvssVersion` | `string` | Output only. CVSS version used to populate cvss_score and severity. |
| `cvssv3` | `CVSS` | The cvss v3 score for the vulnerability. |
| `effectiveSeverity` | `string` | The distro assigned severity for this vulnerability when it is available, otherwise this is the n... |
| `extraDetails` | `string` | Occurrence-specific extra details about the vulnerability. |
| `fixAvailable` | `boolean` | Output only. Whether at least one of the affected packages has a fix available. |
| `longDescription` | `string` | Output only. A detailed description of this vulnerability. |
| `packageIssue` | `array<PackageIssue>` | Required. The set of affected locations and their fixes (if available) within the associated reso... |
| `relatedUrls` | `array<RelatedUrl>` | Output only. URLs related to this vulnerability. |
| `risk` | `Risk` | Risk information about the vulnerability, such as CISA, EPSS, etc. |
| `severity` | `string` | Output only. The note provider assigned severity of this vulnerability. |
| `shortDescription` | `string` | Output only. A one sentence description of this vulnerability. |
| `type` | `string` | The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.). |
| `vexAssessment` | `VexAssessment` |  |

### `VulnerabilityOccurrencesSummary`

A summary of how many vulnerability occurrences there are per resource and severity type.

| Property | Type | Description |
|----------|------|-------------|
| `counts` | `array<FixableTotalByDigest>` | A listing by resource of the number of fixable and total vulnerabilities. |
| `unreachable` | `array<string>` | Unordered list. Unreachable regions. Populated for requests from the global region when `return_p... |

### `WindowsDetail`

| Property | Type | Description |
|----------|------|-------------|
| `cpeUri` | `string` | Required. The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects. |
| `description` | `string` | The description of this vulnerability. |
| `fixingKbs` | `array<KnowledgeBase>` | Required. The names of the KBs which have hotfixes to mitigate this vulnerability. Note that ther... |
| `name` | `string` | Required. The name of this vulnerability. |

### `WindowsUpdate`

Windows Update represents the metadata about the update for the Windows operating system. The fields in this message come from the Windows Update API documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-wuapi-iupdate.

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<Category>` | The list of categories to which the update belongs. |
| `description` | `string` | The localized description of the update. |
| `identity` | `Identity` | Required - The unique identifier for the update. |
| `kbArticleIds` | `array<string>` | The Microsoft Knowledge Base article IDs that are associated with the update. |
| `lastPublishedTimestamp` | `string` | The last published timestamp of the update. |
| `supportUrl` | `string` | The hyperlink to the support information for the update. |
| `title` | `string` | The localized title of the update. |

