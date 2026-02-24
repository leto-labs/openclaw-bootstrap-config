# Web Risk API - API Reference

**Version**: `v1` | **Methods**: 8 | **Schemas**: 17

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `webrisk.projects.submissions.create` | POST | `v1/{+parent}/submissions` | Creates a Submission of a URI suspected of containing phishing content to be reviewed. If the res... |
| `webrisk.projects.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `webrisk.projects.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `webrisk.projects.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `webrisk.projects.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `webrisk.hashes.search` | GET | `v1/hashes:search` | Gets the full hashes that match the requested hash prefix. This is used after a hash prefix is lo... |
| `webrisk.threatLists.computeDiff` | GET | `v1/threatLists:computeDiff` | Gets the most recent threat list diffs. These diffs should be applied to a local database of hash... |
| `webrisk.uris.search` | GET | `v1/uris:search` | This method is used to check whether a URI is on a given threatList. Multiple threatLists may be ... |

### `webrisk.projects.submissions.create`

**POST** `v1/{+parent}/submissions`

Creates a Submission of a URI suspected of containing phishing content to be reviewed. If the result verifies the existence of malicious phishing content, the site will be added to the [Google's Social Engineering lists](https://support.google.com/webmasters/answer/6350487/) in order to protect users that could get exposed to this threat in the future. Only allowlisted projects can use this method during Early Access. Please reach out to Sales or your customer engineer to obtain access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project that is making the submission. This string is in the format "projects/{project_numb... |

**Request body**: `GoogleCloudWebriskV1Submission`

**Response**: `GoogleCloudWebriskV1Submission`

```typescript
const res = await webrisk.submissions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `webrisk.projects.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await webrisk.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `webrisk.projects.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await webrisk.operations.delete({
  // parameters
});
```

---

### `webrisk.projects.operations.list`

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

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await webrisk.operations.list({
  // parameters
});
```

---

### `webrisk.projects.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await webrisk.operations.cancel({
  // parameters
});
```

---

### `webrisk.hashes.search`

**GET** `v1/hashes:search`

Gets the full hashes that match the requested hash prefix. This is used after a hash prefix is looked up in a threatList and there is a match. The client side threatList only holds partial hashes so the client must query this method to determine if there is a full hash match of a threat.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `hashPrefix` | `string` | query | No | A hash prefix, consisting of the most significant 4-32 bytes of a SHA256 hash. For JSON requests, this field is base6... |
| `threatTypes` | `string` | query | No | Required. The ThreatLists to search in. Multiple ThreatLists may be specified. |

**Response**: `GoogleCloudWebriskV1SearchHashesResponse`

```typescript
const res = await webrisk.hashes.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `webrisk.threatLists.computeDiff`

**GET** `v1/threatLists:computeDiff`

Gets the most recent threat list diffs. These diffs should be applied to a local database of hashes to keep it up-to-date. If the local database is empty or excessively out-of-date, a complete snapshot of the database will be returned. This Method only updates a single ThreatList at a time. To update multiple ThreatList databases, this method needs to be called once for each list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `constraints.maxDatabaseEntries` | `integer` | query | No | Sets the maximum number of entries that the client is willing to have in the local database. This should be a power o... |
| `constraints.maxDiffEntries` | `integer` | query | No | The maximum size in number of entries. The diff will not contain more entries than this value. This should be a power... |
| `constraints.supportedCompressions` | `string` | query | No | The compression types supported by the client. |
| `threatType` | `string` | query | No | Required. The threat list to update. Only a single ThreatType should be specified per request. If you want to handle ... |
| `versionToken` | `string` | query | No | The current version token of the client for the requested list (the client version that was received from the last su... |

**Response**: `GoogleCloudWebriskV1ComputeThreatListDiffResponse`

```typescript
const res = await webrisk.threatLists.computeDiff({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `webrisk.uris.search`

**GET** `v1/uris:search`

This method is used to check whether a URI is on a given threatList. Multiple threatLists may be searched in a single query. The response will list all requested threatLists the URI was found to match. If the URI is not found on any of the requested ThreatList an empty response will be returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `threatTypes` | `string` | query | No | Required. The ThreatLists to search in. Multiple ThreatLists may be specified. |
| `uri` | `string` | query | No | Required. The URI to be checked for matches. |

**Response**: `GoogleCloudWebriskV1SearchUrisResponse`

```typescript
const res = await webrisk.uris.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudWebriskV1ComputeThreatListDiffResponse`

| Property | Type | Description |
|----------|------|-------------|
| `additions` | `GoogleCloudWebriskV1ThreatEntryAdditions` | A set of entries to add to a local threat type's list. |
| `checksum` | `GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum` | The expected SHA256 hash of the client state; that is, of the sorted list of all hashes present i... |
| `newVersionToken` | `string` | The new opaque client version token. This should be retained by the client and passed into the ne... |
| `recommendedNextDiff` | `string` | The soonest the client should wait before issuing any diff request. Querying sooner is unlikely t... |
| `removals` | `GoogleCloudWebriskV1ThreatEntryRemovals` | A set of entries to remove from a local threat type's list. This field may be empty. |
| `responseType` | `string` | The type of response. This may indicate that an action must be taken by the client when the respo... |

### `GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum`

The expected state of a client's local database.

| Property | Type | Description |
|----------|------|-------------|
| `sha256` | `string` | The SHA256 hash of the client state; that is, of the sorted list of all hashes present in the dat... |

### `GoogleCloudWebriskV1RawHashes`

The uncompressed threat entries in hash format. Hashes can be anywhere from 4 to 32 bytes in size. A large majority are 4 bytes, but some hashes are lengthened if they collide with the hash of a popular URI. Used for sending ThreatEntryAdditons to clients that do not support compression, or when sending non-4-byte hashes to clients that do support compression.

| Property | Type | Description |
|----------|------|-------------|
| `prefixSize` | `integer` | The number of bytes for each prefix encoded below. This field can be anywhere from 4 (shortest pr... |
| `rawHashes` | `string` | The hashes, in binary format, concatenated into one long string. Hashes are sorted in lexicograph... |

### `GoogleCloudWebriskV1RawIndices`

A set of raw indices to remove from a local list.

| Property | Type | Description |
|----------|------|-------------|
| `indices` | `array<integer>` | The indices to remove from a lexicographically-sorted local list. |

### `GoogleCloudWebriskV1RiceDeltaEncoding`

The Rice-Golomb encoded data. Used for sending compressed 4-byte hashes or compressed removal indices.

| Property | Type | Description |
|----------|------|-------------|
| `encodedData` | `string` | The encoded deltas that are encoded using the Golomb-Rice coder. |
| `entryCount` | `integer` | The number of entries that are delta encoded in the encoded data. If only a single integer was en... |
| `firstValue` | `string` | The offset of the first entry in the encoded data, or, if only a single integer was encoded, that... |
| `riceParameter` | `integer` | The Golomb-Rice parameter, which is a number between 2 and 28. This field is missing (that is, ze... |

### `GoogleCloudWebriskV1SearchHashesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `negativeExpireTime` | `string` | For requested entities that did not match the threat list, how long to cache the response until. |
| `threats` | `array<GoogleCloudWebriskV1SearchHashesResponseThreatHash>` | The full hashes that matched the requested prefixes. The hash will be populated in the key. |

### `GoogleCloudWebriskV1SearchHashesResponseThreatHash`

Contains threat information on a matching hash.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | The cache lifetime for the returned match. Clients must not cache this response past this timesta... |
| `hash` | `string` | A 32 byte SHA256 hash. This field is in binary format. For JSON requests, hashes are base64-encoded. |
| `threatTypes` | `array<string>` | The ThreatList this threat belongs to. This must contain at least one entry. |

### `GoogleCloudWebriskV1SearchUrisResponse`

| Property | Type | Description |
|----------|------|-------------|
| `threat` | `GoogleCloudWebriskV1SearchUrisResponseThreatUri` | The threat list matches. This might be empty if the URI is on no list. |

### `GoogleCloudWebriskV1SearchUrisResponseThreatUri`

Contains threat information on a matching uri.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | The cache lifetime for the returned match. Clients must not cache this response past this timesta... |
| `threatTypes` | `array<string>` | The ThreatList this threat belongs to. |

### `GoogleCloudWebriskV1Submission`

Wraps a URI that might be displaying malicious content.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Required. The URI that is being reported for malicious content to be analyzed. |

### `GoogleCloudWebriskV1ThreatEntryAdditions`

Contains the set of entries to add to a local database. May contain a combination of compressed and raw data in a single response.

| Property | Type | Description |
|----------|------|-------------|
| `rawHashes` | `array<GoogleCloudWebriskV1RawHashes>` | The raw SHA256-formatted entries. Repeated to allow returning sets of hashes with different prefi... |
| `riceHashes` | `GoogleCloudWebriskV1RiceDeltaEncoding` | The encoded 4-byte prefixes of SHA256-formatted entries, using a Golomb-Rice encoding. The hashes... |

### `GoogleCloudWebriskV1ThreatEntryRemovals`

Contains the set of entries to remove from a local database.

| Property | Type | Description |
|----------|------|-------------|
| `rawIndices` | `GoogleCloudWebriskV1RawIndices` | The raw removal indices for a local list. |
| `riceIndices` | `GoogleCloudWebriskV1RiceDeltaEncoding` | The encoded local, lexicographically-sorted list indices, using a Golomb-Rice encoding. Used for ... |

### `GoogleLongrunningCancelOperationRequest`

The request message for Operations.CancelOperation.

### `GoogleLongrunningListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Contains a `SubmitUriMetadata` object. |
| `name` | `string` | Matches the `/v1/{project-name}/operations/{operation-id}` pattern. |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

