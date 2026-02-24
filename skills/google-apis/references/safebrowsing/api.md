# Safe Browsing API - API Reference

**Version**: `v5` | **Methods**: 5 | **Schemas**: 13

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `safebrowsing.hashes.search` | GET | `v5/hashes:search` | Searches for full hashes matching the specified prefixes. This is a custom method as defined by h... |
| `safebrowsing.hashLists.batchGet` | GET | `v5/hashLists:batchGet` | Gets multiple hash lists at once. It is very common for a client to need to get multiple hash lis... |
| `safebrowsing.hashLists.list` | GET | `v5/hashLists` | Lists hash lists. In the V5 API, Google will never remove a hash list that has ever been returned... |
| `safebrowsing.hashList.get` | GET | `v5/hashList/{name}` | Gets the latest contents of a hash list. A hash list may either by a threat list or a non-threat ... |
| `safebrowsing.urls.search` | GET | `v5/urls:search` | Searches for URLs matching known threats. Each URL and it's host-suffix and path-prefix expressio... |

### `safebrowsing.hashes.search`

**GET** `v5/hashes:search`

Searches for full hashes matching the specified prefixes. This is a custom method as defined by https://google.aip.dev/136 (the custom method refers to this method having a custom name within Google's general API development nomenclature; it does not refer to using a custom HTTP method).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `hashPrefixes` | `string` | query | No | Required. The hash prefixes to be looked up. Clients MUST NOT send more than 1000 hash prefixes. However, following t... |

**Response**: `GoogleSecuritySafebrowsingV5SearchHashesResponse`

```typescript
const res = await safebrowsing.hashes.search({
  // parameters
});
```

---

### `safebrowsing.hashLists.batchGet`

**GET** `v5/hashLists:batchGet`

Gets multiple hash lists at once. It is very common for a client to need to get multiple hash lists. Using this method is preferred over using the regular Get method multiple times. This is a standard batch Get method as defined by https://google.aip.dev/231 and the HTTP method is also GET.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `names` | `string` | query | No | Required. The names of the particular hash lists. The list MAY be a threat list, or it may be the Global Cache. The n... |
| `sizeConstraints.maxDatabaseEntries` | `integer` | query | No | Sets the maximum number of entries that the client is willing to have in the local database for the list. (The server... |
| `sizeConstraints.maxUpdateEntries` | `integer` | query | No | The maximum size in number of entries. The update will not contain more entries than this value, but it is possible t... |
| `version` | `string` | query | No | The versions of the hash list that the client already has. If this is the first time the client is fetching the hash ... |

**Response**: `GoogleSecuritySafebrowsingV5BatchGetHashListsResponse`

```typescript
const res = await safebrowsing.hashLists.batchGet({
  // parameters
});
```

---

### `safebrowsing.hashLists.list`

**GET** `v5/hashLists`

Lists hash lists. In the V5 API, Google will never remove a hash list that has ever been returned by this method. This enables clients to skip using this method and simply hard-code all hash lists they need. This is a standard List method as defined by https://google.aip.dev/132 and the HTTP method is GET.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of hash lists to return. The service may return fewer than this value. If unspecified, the server ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListHashLists` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleSecuritySafebrowsingV5ListHashListsResponse`

```typescript
const res = await safebrowsing.hashLists.list({
  // parameters
});
```

---

### `safebrowsing.hashList.get`

**GET** `v5/hashList/{name}`

Gets the latest contents of a hash list. A hash list may either by a threat list or a non-threat list such as the Global Cache. This is a standard Get method as defined by https://google.aip.dev/131 and the HTTP method is also GET.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of this particular hash list. It may be a threat list, or it may be the Global Cache. |
| `sizeConstraints.maxDatabaseEntries` | `integer` | query | No | Sets the maximum number of entries that the client is willing to have in the local database for the list. (The server... |
| `sizeConstraints.maxUpdateEntries` | `integer` | query | No | The maximum size in number of entries. The update will not contain more entries than this value, but it is possible t... |
| `version` | `string` | query | No | The version of the hash list that the client already has. If this is the first time the client is fetching the hash l... |

**Response**: `GoogleSecuritySafebrowsingV5HashList`

```typescript
const res = await safebrowsing.hashList.get({
  // parameters
});
```

---

### `safebrowsing.urls.search`

**GET** `v5/urls:search`

Searches for URLs matching known threats. Each URL and it's host-suffix and path-prefix expressions (up to a limited depth) are checked. This means that the response may contain URLs that were not included in the request, but are expressions of the requested URLs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `urls` | `string` | query | No | Required. The URLs to be looked up. Clients MUST NOT send more than 50 URLs. |

**Response**: `GoogleSecuritySafebrowsingV5SearchUrlsResponse`

```typescript
const res = await safebrowsing.urls.search({
  // parameters
});
```

---

## Schemas

### `GoogleSecuritySafebrowsingV5BatchGetHashListsResponse`

The response containing multiple hash lists.

| Property | Type | Description |
|----------|------|-------------|
| `hashLists` | `array<GoogleSecuritySafebrowsingV5HashList>` | The hash lists in the same order given in the request. |

### `GoogleSecuritySafebrowsingV5FullHash`

The full hash identified with one or more matches.

| Property | Type | Description |
|----------|------|-------------|
| `fullHash` | `string` | The matching full hash. This is the SHA256 hash. The length will be exactly 32 bytes. |
| `fullHashDetails` | `array<GoogleSecuritySafebrowsingV5FullHashFullHashDetail>` | Unordered list. A repeated field identifying the details relevant to this full hash. |

### `GoogleSecuritySafebrowsingV5FullHashFullHashDetail`

Details about a matching full hash. An important note about forward compatibility: new threat types and threat attributes may be added by the server at any time; those additions are considered minor version changes. It is Google's policy not to expose minor version numbers in APIs (see https://cloud.google.com/apis/design/versioning for the versioning policy), so clients MUST be prepared to receive `FullHashDetail` messages containing `ThreatType` enum values or `ThreatAttribute` enum values that are considered invalid by the client. Therefore, it is the client's responsibility to check for the validity of all `ThreatType` and `ThreatAttribute` enum values; if any value is considered invalid, the client MUST disregard the entire `FullHashDetail` message.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<string>` | Unordered list. Additional attributes about those full hashes. This may be empty. |
| `threatType` | `string` | The type of threat. This field will never be empty. |

### `GoogleSecuritySafebrowsingV5HashList`

A list of hashes identified by its name.

| Property | Type | Description |
|----------|------|-------------|
| `additionsEightBytes` | `GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit` | The 8-byte additions. |
| `additionsFourBytes` | `GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit` | The 4-byte additions. |
| `additionsSixteenBytes` | `GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit` | The 16-byte additions. |
| `additionsThirtyTwoBytes` | `GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit` | The 32-byte additions. |
| `compressedRemovals` | `GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit` | The Rice-delta encoded version of removal indices. Since each hash list definitely has less than ... |
| `metadata` | `GoogleSecuritySafebrowsingV5HashListMetadata` | Metadata about the hash list. This is not populated by the `GetHashList` method, but this is popu... |
| `minimumWaitDuration` | `string` | Clients should wait at least this long to get the hash list again. If omitted or zero, clients SH... |
| `name` | `string` | The name of the hash list. Note that the Global Cache is also just a hash list and can be referre... |
| `partialUpdate` | `boolean` | When true, this is a partial diff containing additions and removals based on what the client alre... |
| `sha256Checksum` | `string` | The sorted list of all hashes, hashed again with SHA256. This is the checksum for the sorted list... |
| `version` | `string` | The version of the hash list. The client MUST NOT manipulate those bytes. |

### `GoogleSecuritySafebrowsingV5HashListMetadata`

Metadata about a particular hash list.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A human-readable description about this list. Written in English. |
| `hashLength` | `string` | The supported hash length for this hash list. Each hash list will support exactly one length. If ... |
| `likelySafeTypes` | `array<string>` | Unordered list. If not empty, this specifies that the hash list represents a list of likely safe ... |
| `threatTypes` | `array<string>` | Unordered list. If not empty, this specifies that the hash list is a kind of threat list, and thi... |

### `GoogleSecuritySafebrowsingV5ListHashListsResponse`

The response containing metadata about hash lists.

| Property | Type | Description |
|----------|------|-------------|
| `hashLists` | `array<GoogleSecuritySafebrowsingV5HashList>` | The hash lists in an arbitrary order. Only metadata about the hash lists will be included, not th... |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit`

Same as `RiceDeltaEncoded32Bit` except this encodes 128-bit numbers.

| Property | Type | Description |
|----------|------|-------------|
| `encodedData` | `string` | The encoded deltas that are encoded using the Golomb-Rice coder. |
| `entriesCount` | `integer` | The number of entries that are delta encoded in the encoded data. If only a single integer was en... |
| `firstValueHi` | `string` | The upper 64 bits of the first entry in the encoded data (hashes). If the field is empty, the upp... |
| `firstValueLo` | `string` | The lower 64 bits of the first entry in the encoded data (hashes). If the field is empty, the low... |
| `riceParameter` | `integer` | The Golomb-Rice parameter. This parameter is guaranteed to be between 99 and 126, inclusive. |

### `GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit`

Same as `RiceDeltaEncoded32Bit` except this encodes 256-bit numbers.

| Property | Type | Description |
|----------|------|-------------|
| `encodedData` | `string` | The encoded deltas that are encoded using the Golomb-Rice coder. |
| `entriesCount` | `integer` | The number of entries that are delta encoded in the encoded data. If only a single integer was en... |
| `firstValueFirstPart` | `string` | The first 64 bits of the first entry in the encoded data (hashes). If the field is empty, the fir... |
| `firstValueFourthPart` | `string` | The last 64 bits of the first entry in the encoded data (hashes). If the field is empty, the last... |
| `firstValueSecondPart` | `string` | The 65 through 128th bits of the first entry in the encoded data (hashes). If the field is empty,... |
| `firstValueThirdPart` | `string` | The 129 through 192th bits of the first entry in the encoded data (hashes). If the field is empty... |
| `riceParameter` | `integer` | The Golomb-Rice parameter. This parameter is guaranteed to be between 227 and 254, inclusive. |

### `GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit`

The Rice-Golomb encoded data. Used for either hashes or removal indices. It is guaranteed that every hash or index here has the same length, and this length is exactly 32 bits. Generally speaking, if we sort all the entries lexicographically, we will find that the higher order bits tend not to change as frequently as lower order bits. This means that if we also take the adjacent difference between entries, the higher order bits have a high probability of being zero. This exploits this high probability of zero by essentially choosing a certain number of bits; all bits more significant than this are likely to be zero so we use unary encoding. See the `rice_parameter` field. Historical note: the Rice-delta encoding was first used in V4 of this API. In V5, two significant improvements were made: firstly, the Rice-delta encoding is now available with hash prefixes longer than 4 bytes; secondly, the encoded data are now treated as big-endian so as to avoid a costly sorting step.

| Property | Type | Description |
|----------|------|-------------|
| `encodedData` | `string` | The encoded deltas that are encoded using the Golomb-Rice coder. |
| `entriesCount` | `integer` | The number of entries that are delta encoded in the encoded data. If only a single integer was en... |
| `firstValue` | `integer` | The first entry in the encoded data (hashes or indices), or, if only a single hash prefix or inde... |
| `riceParameter` | `integer` | The Golomb-Rice parameter. This parameter is guaranteed to be between 3 and 30, inclusive. |

### `GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit`

Same as `RiceDeltaEncoded32Bit` except this encodes 64-bit numbers.

| Property | Type | Description |
|----------|------|-------------|
| `encodedData` | `string` | The encoded deltas that are encoded using the Golomb-Rice coder. |
| `entriesCount` | `integer` | The number of entries that are delta encoded in the encoded data. If only a single integer was en... |
| `firstValue` | `string` | The first entry in the encoded data (hashes), or, if only a single hash prefix was encoded, that ... |
| `riceParameter` | `integer` | The Golomb-Rice parameter. This parameter is guaranteed to be between 35 and 62, inclusive. |

### `GoogleSecuritySafebrowsingV5SearchHashesResponse`

The response returned after searching threat hashes. If nothing is found, the server will return an OK status (HTTP status code 200) with the `full_hashes` field empty, rather than returning a NOT_FOUND status (HTTP status code 404). **What's new in V5**: There is a separation between `FullHash` and `FullHashDetail`. In the case when a hash represents a site having multiple threats (e.g. both MALWARE and SOCIAL_ENGINEERING), the full hash does not need to be sent twice as in V4. Furthermore, the cache duration has been simplified into a single `cache_duration` field.

| Property | Type | Description |
|----------|------|-------------|
| `cacheDuration` | `string` | The client-side cache duration. The client MUST add this duration to the current time to determin... |
| `fullHashes` | `array<GoogleSecuritySafebrowsingV5FullHash>` | Unordered list. The unordered list of full hashes found. |

### `GoogleSecuritySafebrowsingV5SearchUrlsResponse`

The response returned after searching threats matching the specified URLs. If nothing is found, the server will return an OK status (HTTP status code 200) with the `threats` field empty, rather than returning a NOT_FOUND status (HTTP status code 404).

| Property | Type | Description |
|----------|------|-------------|
| `cacheDuration` | `string` | The client-side cache duration. The client MUST add this duration to the current time to determin... |
| `threats` | `array<GoogleSecuritySafebrowsingV5ThreatUrl>` | Unordered list. The unordered list of threat matches found. Each entry contains a URL and the thr... |

### `GoogleSecuritySafebrowsingV5ThreatUrl`

A URL matching one or more threats.

| Property | Type | Description |
|----------|------|-------------|
| `threatTypes` | `array<string>` | Unordered list. The unordered list of threat that the URL is classified as. |
| `url` | `string` | The requested URL that was matched by one or more threats. |

