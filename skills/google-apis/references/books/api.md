# Books API - API Reference

**Version**: `v1` | **Methods**: 51 | **Schemas**: 37

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `books.bookshelves.get` | GET | `books/v1/users/{userId}/bookshelves/{shelf}` | Retrieves metadata for a specific bookshelf for the specified user. |
| `books.bookshelves.list` | GET | `books/v1/users/{userId}/bookshelves` | Retrieves a list of public bookshelves for the specified user. |
| `books.bookshelves.volumes.list` | GET | `books/v1/users/{userId}/bookshelves/{shelf}/volumes` | Retrieves volumes in a specific bookshelf for the specified user. |
| `books.cloudloading.addBook` | POST | `books/v1/cloudloading/addBook` | Add a user-upload volume and triggers processing. |
| `books.cloudloading.deleteBook` | POST | `books/v1/cloudloading/deleteBook` | Remove the book and its contents |
| `books.cloudloading.updateBook` | POST | `books/v1/cloudloading/updateBook` | Updates a user-upload volume. |
| `books.dictionary.listOfflineMetadata` | GET | `books/v1/dictionary/listOfflineMetadata` | Returns a list of offline dictionary metadata available |
| `books.familysharing.getFamilyInfo` | GET | `books/v1/familysharing/getFamilyInfo` | Gets information regarding the family that the user is part of. |
| `books.familysharing.share` | POST | `books/v1/familysharing/share` | Initiates sharing of the content with the user's family. Empty response indicates success. |
| `books.familysharing.unshare` | POST | `books/v1/familysharing/unshare` | Initiates revoking content that has already been shared with the user's family. Empty response in... |
| `books.layers.get` | GET | `books/v1/volumes/{volumeId}/layersummary/{summaryId}` | Gets the layer summary for a volume. |
| `books.layers.list` | GET | `books/v1/volumes/{volumeId}/layersummary` | List the layer summaries for a volume. |
| `books.layers.annotationData.get` | GET | `books/v1/volumes/{volumeId}/layers/{layerId}/data/{annotationDataId}` | Gets the annotation data. |
| `books.layers.annotationData.list` | GET | `books/v1/volumes/{volumeId}/layers/{layerId}/data` | Gets the annotation data for a volume and layer. |
| `books.layers.volumeAnnotations.get` | GET | `books/v1/volumes/{volumeId}/layers/{layerId}/annotations/{annotationId}` | Gets the volume annotation. |
| `books.layers.volumeAnnotations.list` | GET | `books/v1/volumes/{volumeId}/layers/{layerId}` | Gets the volume annotations for a volume and layer. |
| `books.myconfig.getUserSettings` | GET | `books/v1/myconfig/getUserSettings` | Gets the current settings for the user. |
| `books.myconfig.releaseDownloadAccess` | POST | `books/v1/myconfig/releaseDownloadAccess` | Release downloaded content access restriction. |
| `books.myconfig.requestAccess` | POST | `books/v1/myconfig/requestAccess` | Request concurrent and download access restrictions. |
| `books.myconfig.syncVolumeLicenses` | POST | `books/v1/myconfig/syncVolumeLicenses` | Request downloaded content access for specified volumes on the My eBooks shelf. |
| `books.myconfig.updateUserSettings` | POST | `books/v1/myconfig/updateUserSettings` | Sets the settings for the user. If a sub-object is specified, it will overwrite the existing sub-... |
| `books.mylibrary.annotations.delete` | DELETE | `books/v1/mylibrary/annotations/{annotationId}` | Deletes an annotation. |
| `books.mylibrary.annotations.insert` | POST | `books/v1/mylibrary/annotations` | Inserts a new annotation. |
| `books.mylibrary.annotations.list` | GET | `books/v1/mylibrary/annotations` | Retrieves a list of annotations, possibly filtered. |
| `books.mylibrary.annotations.summary` | POST | `books/v1/mylibrary/annotations/summary` | Gets the summary of specified layers. |
| `books.mylibrary.annotations.update` | PUT | `books/v1/mylibrary/annotations/{annotationId}` | Updates an existing annotation. |
| `books.mylibrary.bookshelves.addVolume` | POST | `books/v1/mylibrary/bookshelves/{shelf}/addVolume` | Adds a volume to a bookshelf. |
| `books.mylibrary.bookshelves.clearVolumes` | POST | `books/v1/mylibrary/bookshelves/{shelf}/clearVolumes` | Clears all volumes from a bookshelf. |
| `books.mylibrary.bookshelves.get` | GET | `books/v1/mylibrary/bookshelves/{shelf}` | Retrieves metadata for a specific bookshelf belonging to the authenticated user. |
| `books.mylibrary.bookshelves.list` | GET | `books/v1/mylibrary/bookshelves` | Retrieves a list of bookshelves belonging to the authenticated user. |
| `books.mylibrary.bookshelves.moveVolume` | POST | `books/v1/mylibrary/bookshelves/{shelf}/moveVolume` | Moves a volume within a bookshelf. |
| `books.mylibrary.bookshelves.removeVolume` | POST | `books/v1/mylibrary/bookshelves/{shelf}/removeVolume` | Removes a volume from a bookshelf. |
| `books.mylibrary.bookshelves.volumes.list` | GET | `books/v1/mylibrary/bookshelves/{shelf}/volumes` | Gets volume information for volumes on a bookshelf. |
| `books.mylibrary.readingpositions.get` | GET | `books/v1/mylibrary/readingpositions/{volumeId}` | Retrieves my reading position information for a volume. |
| `books.mylibrary.readingpositions.setPosition` | POST | `books/v1/mylibrary/readingpositions/{volumeId}/setPosition` | Sets my reading position information for a volume. |
| `books.notification.get` | GET | `books/v1/notification/get` | Returns notification details for a given notification id. |
| `books.onboarding.listCategories` | GET | `books/v1/onboarding/listCategories` | List categories for onboarding experience. |
| `books.onboarding.listCategoryVolumes` | GET | `books/v1/onboarding/listCategoryVolumes` | List available volumes under categories for onboarding experience. |
| `books.personalizedstream.get` | GET | `books/v1/personalizedstream/get` | Returns a stream of personalized book clusters |
| `books.promooffer.accept` | POST | `books/v1/promooffer/accept` | Accepts the promo offer. |
| `books.promooffer.dismiss` | POST | `books/v1/promooffer/dismiss` | Marks the promo offer as dismissed. |
| `books.promooffer.get` | GET | `books/v1/promooffer/get` | Returns a list of promo offers available to the user |
| `books.series.get` | GET | `books/v1/series/get` | Returns Series metadata for the given series ids. |
| `books.series.membership.get` | GET | `books/v1/series/membership/get` | Returns Series membership data given the series id. |
| `books.volumes.get` | GET | `books/v1/volumes/{volumeId}` | Gets volume information for a single volume. |
| `books.volumes.list` | GET | `books/v1/volumes` | Performs a book search. |
| `books.volumes.associated.list` | GET | `books/v1/volumes/{volumeId}/associated` | Return a list of associated books. |
| `books.volumes.mybooks.list` | GET | `books/v1/volumes/mybooks` | Return a list of books in My Library. |
| `books.volumes.recommended.list` | GET | `books/v1/volumes/recommended` | Return a list of recommended books for the current user. |
| `books.volumes.recommended.rate` | POST | `books/v1/volumes/recommended/rate` | Rate a recommended book for the current user. |
| `books.volumes.useruploaded.list` | GET | `books/v1/volumes/useruploaded` | Return a list of books uploaded by the current user. |

### `books.bookshelves.get`

**GET** `books/v1/users/{userId}/bookshelves/{shelf}`

Retrieves metadata for a specific bookshelf for the specified user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | ID of user for whom to retrieve bookshelves. |
| `shelf` | `string` | path | Yes | ID of bookshelf to retrieve. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Bookshelf`

```typescript
const res = await books.bookshelves.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.bookshelves.list`

**GET** `books/v1/users/{userId}/bookshelves`

Retrieves a list of public bookshelves for the specified user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | ID of user for whom to retrieve bookshelves. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Bookshelves`

```typescript
const res = await books.bookshelves.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.bookshelves.volumes.list`

**GET** `books/v1/users/{userId}/bookshelves/{shelf}/volumes`

Retrieves volumes in a specific bookshelf for the specified user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | ID of user for whom to retrieve bookshelf volumes. |
| `shelf` | `string` | path | Yes | ID of bookshelf to retrieve volumes. |
| `maxResults` | `integer` | query | No | Maximum number of results to return |
| `showPreorders` | `boolean` | query | No | Set to true to show pre-ordered books. Defaults to false. |
| `source` | `string` | query | No | String to identify the originator of this request. |
| `startIndex` | `integer` | query | No | Index of the first element to return (starts at 0) |

**Response**: `Volumes`

```typescript
const res = await books.volumes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.cloudloading.addBook`

**POST** `books/v1/cloudloading/addBook`

Add a user-upload volume and triggers processing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `drive_document_id` | `string` | query | No | A drive document id. The upload_client_token must not be set. |
| `mime_type` | `string` | query | No | The document MIME type. It can be set only if the drive_document_id is set. |
| `name` | `string` | query | No | The document name. It can be set only if the drive_document_id is set. |
| `upload_client_token` | `string` | query | No | Scotty upload token. |

**Response**: `BooksCloudloadingResource`

```typescript
const res = await books.cloudloading.addBook({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.cloudloading.deleteBook`

**POST** `books/v1/cloudloading/deleteBook`

Remove the book and its contents

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `volumeId` | `string` | query | Yes | The id of the book to be removed. |

**Response**: `Empty`

```typescript
const res = await books.cloudloading.deleteBook({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.cloudloading.updateBook`

**POST** `books/v1/cloudloading/updateBook`

Updates a user-upload volume.

**Request body**: `BooksCloudloadingResource`

**Response**: `BooksCloudloadingResource`

```typescript
const res = await books.cloudloading.updateBook({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.dictionary.listOfflineMetadata`

**GET** `books/v1/dictionary/listOfflineMetadata`

Returns a list of offline dictionary metadata available

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `cpksver` | `string` | query | Yes | The device/version ID from which to request the data. |

**Response**: `Metadata`

```typescript
const res = await books.dictionary.listOfflineMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.familysharing.getFamilyInfo`

**GET** `books/v1/familysharing/getFamilyInfo`

Gets information regarding the family that the user is part of.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `FamilyInfo`

```typescript
const res = await books.familysharing.getFamilyInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.familysharing.share`

**POST** `books/v1/familysharing/share`

Initiates sharing of the content with the user's family. Empty response indicates success.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `docId` | `string` | query | No | The docid to share. |
| `source` | `string` | query | No | String to identify the originator of this request. |
| `volumeId` | `string` | query | No | The volume to share. |

**Response**: `Empty`

```typescript
const res = await books.familysharing.share({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.familysharing.unshare`

**POST** `books/v1/familysharing/unshare`

Initiates revoking content that has already been shared with the user's family. Empty response indicates success.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `docId` | `string` | query | No | The docid to unshare. |
| `source` | `string` | query | No | String to identify the originator of this request. |
| `volumeId` | `string` | query | No | The volume to unshare. |

**Response**: `Empty`

```typescript
const res = await books.familysharing.unshare({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.layers.get`

**GET** `books/v1/volumes/{volumeId}/layersummary/{summaryId}`

Gets the layer summary for a volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `volumeId` | `string` | path | Yes | The volume to retrieve layers for. |
| `summaryId` | `string` | path | Yes | The ID for the layer to get the summary for. |
| `contentVersion` | `string` | query | No | The content version for the requested volume. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Layersummary`

```typescript
const res = await books.layers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.layers.list`

**GET** `books/v1/volumes/{volumeId}/layersummary`

List the layer summaries for a volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `volumeId` | `string` | path | Yes | The volume to retrieve layers for. |
| `contentVersion` | `string` | query | No | The content version for the requested volume. |
| `maxResults` | `integer` | query | No | Maximum number of results to return |
| `pageToken` | `string` | query | No | The value of the nextToken from the previous page. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Layersummaries`

```typescript
const res = await books.layers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.layers.annotationData.get`

**GET** `books/v1/volumes/{volumeId}/layers/{layerId}/data/{annotationDataId}`

Gets the annotation data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `volumeId` | `string` | path | Yes | The volume to retrieve annotations for. |
| `layerId` | `string` | path | Yes | The ID for the layer to get the annotations. |
| `annotationDataId` | `string` | path | Yes | The ID of the annotation data to retrieve. |
| `contentVersion` | `string` | query | Yes | The content version for the volume you are trying to retrieve. |
| `allowWebDefinitions` | `boolean` | query | No | For the dictionary layer. Whether or not to allow web definitions. |
| `h` | `integer` | query | No | The requested pixel height for any images. If height is provided width must also be provided. |
| `locale` | `string` | query | No | The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. |
| `scale` | `integer` | query | No | The requested scale for the image. |
| `source` | `string` | query | No | String to identify the originator of this request. |
| `w` | `integer` | query | No | The requested pixel width for any images. If width is provided height must also be provided. |

**Response**: `DictionaryAnnotationdata`

```typescript
const res = await books.annotationData.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.layers.annotationData.list`

**GET** `books/v1/volumes/{volumeId}/layers/{layerId}/data`

Gets the annotation data for a volume and layer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `volumeId` | `string` | path | Yes | The volume to retrieve annotation data for. |
| `layerId` | `string` | path | Yes | The ID for the layer to get the annotation data. |
| `contentVersion` | `string` | query | Yes | The content version for the requested volume. |
| `annotationDataId` | `string` | query | No | The list of Annotation Data Ids to retrieve. Pagination is ignored if this is set. |
| `h` | `integer` | query | No | The requested pixel height for any images. If height is provided width must also be provided. |
| `locale` | `string` | query | No | The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. |
| `maxResults` | `integer` | query | No | Maximum number of results to return |
| `pageToken` | `string` | query | No | The value of the nextToken from the previous page. |
| `scale` | `integer` | query | No | The requested scale for the image. |
| `source` | `string` | query | No | String to identify the originator of this request. |
| `updatedMax` | `string` | query | No | RFC 3339 timestamp to restrict to items updated prior to this timestamp (exclusive). |
| `updatedMin` | `string` | query | No | RFC 3339 timestamp to restrict to items updated since this timestamp (inclusive). |
| `w` | `integer` | query | No | The requested pixel width for any images. If width is provided height must also be provided. |

**Response**: `Annotationsdata`

```typescript
const res = await books.annotationData.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.layers.volumeAnnotations.get`

**GET** `books/v1/volumes/{volumeId}/layers/{layerId}/annotations/{annotationId}`

Gets the volume annotation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `volumeId` | `string` | path | Yes | The volume to retrieve annotations for. |
| `layerId` | `string` | path | Yes | The ID for the layer to get the annotations. |
| `annotationId` | `string` | path | Yes | The ID of the volume annotation to retrieve. |
| `locale` | `string` | query | No | The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Volumeannotation`

```typescript
const res = await books.volumeAnnotations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.layers.volumeAnnotations.list`

**GET** `books/v1/volumes/{volumeId}/layers/{layerId}`

Gets the volume annotations for a volume and layer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `volumeId` | `string` | path | Yes | The volume to retrieve annotations for. |
| `layerId` | `string` | path | Yes | The ID for the layer to get the annotations. |
| `contentVersion` | `string` | query | Yes | The content version for the requested volume. |
| `endOffset` | `string` | query | No | The end offset to end retrieving data from. |
| `endPosition` | `string` | query | No | The end position to end retrieving data from. |
| `locale` | `string` | query | No | The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. |
| `maxResults` | `integer` | query | No | Maximum number of results to return |
| `pageToken` | `string` | query | No | The value of the nextToken from the previous page. |
| `showDeleted` | `boolean` | query | No | Set to true to return deleted annotations. updatedMin must be in the request to use this. Defaults to false. |
| `source` | `string` | query | No | String to identify the originator of this request. |
| `startOffset` | `string` | query | No | The start offset to start retrieving data from. |
| `startPosition` | `string` | query | No | The start position to start retrieving data from. |
| `updatedMax` | `string` | query | No | RFC 3339 timestamp to restrict to items updated prior to this timestamp (exclusive). |
| `updatedMin` | `string` | query | No | RFC 3339 timestamp to restrict to items updated since this timestamp (inclusive). |
| `volumeAnnotationsVersion` | `string` | query | No | The version of the volume annotations that you are requesting. |

**Response**: `Volumeannotations`

```typescript
const res = await books.volumeAnnotations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.myconfig.getUserSettings`

**GET** `books/v1/myconfig/getUserSettings`

Gets the current settings for the user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `country` | `string` | query | No | Unused. Added only to workaround TEX mandatory request template requirement |

**Response**: `Usersettings`

```typescript
const res = await books.myconfig.getUserSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.myconfig.releaseDownloadAccess`

**POST** `books/v1/myconfig/releaseDownloadAccess`

Release downloaded content access restriction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `cpksver` | `string` | query | Yes | The device/version ID from which to release the restriction. |
| `volumeIds` | `string` | query | Yes | The volume(s) to release restrictions for. |
| `locale` | `string` | query | No | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `DownloadAccesses`

```typescript
const res = await books.myconfig.releaseDownloadAccess({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.myconfig.requestAccess`

**POST** `books/v1/myconfig/requestAccess`

Request concurrent and download access restrictions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `cpksver` | `string` | query | Yes | The device/version ID from which to request the restrictions. |
| `nonce` | `string` | query | Yes | The client nonce value. |
| `source` | `string` | query | Yes | String to identify the originator of this request. |
| `volumeId` | `string` | query | Yes | The volume to request concurrent/download restrictions for. |
| `licenseTypes` | `string` | query | No | The type of access license to request. If not specified, the default is BOTH. |
| `locale` | `string` | query | No | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US. |

**Response**: `RequestAccessData`

```typescript
const res = await books.myconfig.requestAccess({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.myconfig.syncVolumeLicenses`

**POST** `books/v1/myconfig/syncVolumeLicenses`

Request downloaded content access for specified volumes on the My eBooks shelf.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `cpksver` | `string` | query | Yes | The device/version ID from which to release the restriction. |
| `nonce` | `string` | query | Yes | The client nonce value. |
| `source` | `string` | query | Yes | String to identify the originator of this request. |
| `features` | `string` | query | No | List of features supported by the client, i.e., 'RENTALS' |
| `includeNonComicsSeries` | `boolean` | query | No | Set to true to include non-comics series. Defaults to false. |
| `locale` | `string` | query | No | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US. |
| `showPreorders` | `boolean` | query | No | Set to true to show pre-ordered books. Defaults to false. |
| `volumeIds` | `string` | query | No | The volume(s) to request download restrictions for. |

**Response**: `Volumes`

```typescript
const res = await books.myconfig.syncVolumeLicenses({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.myconfig.updateUserSettings`

**POST** `books/v1/myconfig/updateUserSettings`

Sets the settings for the user. If a sub-object is specified, it will overwrite the existing sub-object stored in the server. Unspecified sub-objects will retain the existing value.

**Request body**: `Usersettings`

**Response**: `Usersettings`

```typescript
const res = await books.myconfig.updateUserSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.annotations.delete`

**DELETE** `books/v1/mylibrary/annotations/{annotationId}`

Deletes an annotation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `annotationId` | `string` | path | Yes | The ID for the annotation to delete. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Empty`

```typescript
const res = await books.annotations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.annotations.insert`

**POST** `books/v1/mylibrary/annotations`

Inserts a new annotation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `annotationId` | `string` | query | No | The ID for the annotation to insert. |
| `country` | `string` | query | No | ISO-3166-1 code to override the IP-based location. |
| `showOnlySummaryInResponse` | `boolean` | query | No | Requests that only the summary of the specified layer be provided in the response. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Request body**: `Annotation`

**Response**: `Annotation`

```typescript
const res = await books.annotations.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.annotations.list`

**GET** `books/v1/mylibrary/annotations`

Retrieves a list of annotations, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `contentVersion` | `string` | query | No | The content version for the requested volume. |
| `layerId` | `string` | query | No | The layer ID to limit annotation by. |
| `layerIds` | `string` | query | No | The layer ID(s) to limit annotation by. |
| `maxResults` | `integer` | query | No | Maximum number of results to return |
| `pageToken` | `string` | query | No | The value of the nextToken from the previous page. |
| `showDeleted` | `boolean` | query | No | Set to true to return deleted annotations. updatedMin must be in the request to use this. Defaults to false. |
| `source` | `string` | query | No | String to identify the originator of this request. |
| `updatedMax` | `string` | query | No | RFC 3339 timestamp to restrict to items updated prior to this timestamp (exclusive). |
| `updatedMin` | `string` | query | No | RFC 3339 timestamp to restrict to items updated since this timestamp (inclusive). |
| `volumeId` | `string` | query | No | The volume to restrict annotations to. |

**Response**: `Annotations`

```typescript
const res = await books.annotations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.annotations.summary`

**POST** `books/v1/mylibrary/annotations/summary`

Gets the summary of specified layers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `layerIds` | `string` | query | Yes | Array of layer IDs to get the summary for. |
| `volumeId` | `string` | query | Yes | Volume id to get the summary for. |
| `source` | `string` | query | No | Optional. String to identify the originator of this request. |

**Response**: `AnnotationsSummary`

```typescript
const res = await books.annotations.summary({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.annotations.update`

**PUT** `books/v1/mylibrary/annotations/{annotationId}`

Updates an existing annotation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `annotationId` | `string` | path | Yes | The ID for the annotation to update. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Request body**: `Annotation`

**Response**: `Annotation`

```typescript
const res = await books.annotations.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.bookshelves.addVolume`

**POST** `books/v1/mylibrary/bookshelves/{shelf}/addVolume`

Adds a volume to a bookshelf.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `shelf` | `string` | path | Yes | ID of bookshelf to which to add a volume. |
| `volumeId` | `string` | query | Yes | ID of volume to add. |
| `reason` | `string` | query | No | The reason for which the book is added to the library. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Empty`

```typescript
const res = await books.bookshelves.addVolume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.bookshelves.clearVolumes`

**POST** `books/v1/mylibrary/bookshelves/{shelf}/clearVolumes`

Clears all volumes from a bookshelf.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `shelf` | `string` | path | Yes | ID of bookshelf from which to remove a volume. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Empty`

```typescript
const res = await books.bookshelves.clearVolumes({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.bookshelves.get`

**GET** `books/v1/mylibrary/bookshelves/{shelf}`

Retrieves metadata for a specific bookshelf belonging to the authenticated user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `shelf` | `string` | path | Yes | ID of bookshelf to retrieve. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Bookshelf`

```typescript
const res = await books.bookshelves.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.bookshelves.list`

**GET** `books/v1/mylibrary/bookshelves`

Retrieves a list of bookshelves belonging to the authenticated user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Bookshelves`

```typescript
const res = await books.bookshelves.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.bookshelves.moveVolume`

**POST** `books/v1/mylibrary/bookshelves/{shelf}/moveVolume`

Moves a volume within a bookshelf.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `shelf` | `string` | path | Yes | ID of bookshelf with the volume. |
| `volumeId` | `string` | query | Yes | ID of volume to move. |
| `volumePosition` | `integer` | query | Yes | Position on shelf to move the item (0 puts the item before the current first item, 1 puts it between the first and th... |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Empty`

```typescript
const res = await books.bookshelves.moveVolume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.bookshelves.removeVolume`

**POST** `books/v1/mylibrary/bookshelves/{shelf}/removeVolume`

Removes a volume from a bookshelf.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `shelf` | `string` | path | Yes | ID of bookshelf from which to remove a volume. |
| `volumeId` | `string` | query | Yes | ID of volume to remove. |
| `reason` | `string` | query | No | The reason for which the book is removed from the library. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Empty`

```typescript
const res = await books.bookshelves.removeVolume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.bookshelves.volumes.list`

**GET** `books/v1/mylibrary/bookshelves/{shelf}/volumes`

Gets volume information for volumes on a bookshelf.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `shelf` | `string` | path | Yes | The bookshelf ID or name retrieve volumes for. |
| `country` | `string` | query | No | ISO-3166-1 code to override the IP-based location. |
| `maxResults` | `integer` | query | No | Maximum number of results to return |
| `projection` | `string` | query | No | Restrict information returned to a set of selected fields. |
| `q` | `string` | query | No | Full-text search query string in this bookshelf. |
| `showPreorders` | `boolean` | query | No | Set to true to show pre-ordered books. Defaults to false. |
| `source` | `string` | query | No | String to identify the originator of this request. |
| `startIndex` | `integer` | query | No | Index of the first element to return (starts at 0) |

**Response**: `Volumes`

```typescript
const res = await books.volumes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.readingpositions.get`

**GET** `books/v1/mylibrary/readingpositions/{volumeId}`

Retrieves my reading position information for a volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `volumeId` | `string` | path | Yes | ID of volume for which to retrieve a reading position. |
| `contentVersion` | `string` | query | No | Volume content version for which this reading position is requested. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `ReadingPosition`

```typescript
const res = await books.readingpositions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.mylibrary.readingpositions.setPosition`

**POST** `books/v1/mylibrary/readingpositions/{volumeId}/setPosition`

Sets my reading position information for a volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `volumeId` | `string` | path | Yes | ID of volume for which to update the reading position. |
| `position` | `string` | query | Yes | Position string for the new volume reading position. |
| `timestamp` | `string` | query | Yes | RFC 3339 UTC format timestamp associated with this reading position. |
| `action` | `string` | query | No | Action that caused this reading position to be set. |
| `contentVersion` | `string` | query | No | Volume content version for which this reading position applies. |
| `deviceCookie` | `string` | query | No | Random persistent device cookie optional on set position. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Empty`

```typescript
const res = await books.readingpositions.setPosition({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.notification.get`

**GET** `books/v1/notification/get`

Returns notification details for a given notification id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `notification_id` | `string` | query | Yes | String to identify the notification. |
| `locale` | `string` | query | No | ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating notification title and body. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Notification`

```typescript
const res = await books.notification.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.onboarding.listCategories`

**GET** `books/v1/onboarding/listCategories`

List categories for onboarding experience.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `locale` | `string` | query | No | ISO-639-1 language and ISO-3166-1 country code. Default is en-US if unset. |

**Response**: `Category`

```typescript
const res = await books.onboarding.listCategories({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.onboarding.listCategoryVolumes`

**GET** `books/v1/onboarding/listCategoryVolumes`

List available volumes under categories for onboarding experience.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `categoryId` | `string` | query | No | List of category ids requested. |
| `locale` | `string` | query | No | ISO-639-1 language and ISO-3166-1 country code. Default is en-US if unset. |
| `maxAllowedMaturityRating` | `string` | query | No | The maximum allowed maturity rating of returned volumes. Books with a higher maturity rating are filtered out. |
| `pageSize` | `integer` | query | No | Number of maximum results per page to be included in the response. |
| `pageToken` | `string` | query | No | The value of the nextToken from the previous page. |

**Response**: `Volume2`

```typescript
const res = await books.onboarding.listCategoryVolumes({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.personalizedstream.get`

**GET** `books/v1/personalizedstream/get`

Returns a stream of personalized book clusters

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `locale` | `string` | query | No | ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations. |
| `maxAllowedMaturityRating` | `string` | query | No | The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Discoveryclusters`

```typescript
const res = await books.personalizedstream.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.promooffer.accept`

**POST** `books/v1/promooffer/accept`

Accepts the promo offer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `androidId` | `string` | query | No | device android_id |
| `device` | `string` | query | No | device device |
| `manufacturer` | `string` | query | No | device manufacturer |
| `model` | `string` | query | No | device model |
| `offerId` | `string` | query | No |  |
| `product` | `string` | query | No | device product |
| `serial` | `string` | query | No | device serial |
| `volumeId` | `string` | query | No | Volume id to exercise the offer |

**Response**: `Empty`

```typescript
const res = await books.promooffer.accept({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.promooffer.dismiss`

**POST** `books/v1/promooffer/dismiss`

Marks the promo offer as dismissed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `androidId` | `string` | query | No | device android_id |
| `device` | `string` | query | No | device device |
| `manufacturer` | `string` | query | No | device manufacturer |
| `model` | `string` | query | No | device model |
| `offerId` | `string` | query | No | Offer to dimiss |
| `product` | `string` | query | No | device product |
| `serial` | `string` | query | No | device serial |

**Response**: `Empty`

```typescript
const res = await books.promooffer.dismiss({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.promooffer.get`

**GET** `books/v1/promooffer/get`

Returns a list of promo offers available to the user

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `androidId` | `string` | query | No | device android_id |
| `device` | `string` | query | No | device device |
| `manufacturer` | `string` | query | No | device manufacturer |
| `model` | `string` | query | No | device model |
| `product` | `string` | query | No | device product |
| `serial` | `string` | query | No | device serial |

**Response**: `Offers`

```typescript
const res = await books.promooffer.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.series.get`

**GET** `books/v1/series/get`

Returns Series metadata for the given series ids.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `series_id` | `string` | query | Yes | String that identifies the series |

**Response**: `Series`

```typescript
const res = await books.series.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.series.membership.get`

**GET** `books/v1/series/membership/get`

Returns Series membership data given the series id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `series_id` | `string` | query | Yes | String that identifies the series |
| `page_size` | `integer` | query | No | Number of maximum results per page to be included in the response. |
| `page_token` | `string` | query | No | The value of the nextToken from the previous page. |

**Response**: `Seriesmembership`

```typescript
const res = await books.membership.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.volumes.get`

**GET** `books/v1/volumes/{volumeId}`

Gets volume information for a single volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `volumeId` | `string` | path | Yes | ID of volume to retrieve. |
| `country` | `string` | query | No | ISO-3166-1 code to override the IP-based location. |
| `includeNonComicsSeries` | `boolean` | query | No | Set to true to include non-comics series. Defaults to false. |
| `partner` | `string` | query | No | Brand results for partner ID. |
| `projection` | `string` | query | No | Restrict information returned to a set of selected fields. |
| `source` | `string` | query | No | string to identify the originator of this request. |
| `user_library_consistent_read` | `boolean` | query | No |  |

**Response**: `Volume`

```typescript
const res = await books.volumes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.volumes.list`

**GET** `books/v1/volumes`

Performs a book search.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `q` | `string` | query | Yes | Full-text search query string. |
| `download` | `string` | query | No | Restrict to volumes by download availability. |
| `filter` | `string` | query | No | Filter search results. |
| `langRestrict` | `string` | query | No | Restrict results to books with this language code. |
| `libraryRestrict` | `string` | query | No | Restrict search to this user's library. |
| `maxAllowedMaturityRating` | `string` | query | No | The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `orderBy` | `string` | query | No | Sort search results. |
| `partner` | `string` | query | No | Restrict and brand results for partner ID. |
| `printType` | `string` | query | No | Restrict to books or magazines. |
| `projection` | `string` | query | No | Restrict information returned to a set of selected fields. |
| `showPreorders` | `boolean` | query | No | Set to true to show books available for preorder. Defaults to false. |
| `source` | `string` | query | No | String to identify the originator of this request. |
| `startIndex` | `integer` | query | No | Index of the first result to return (starts at 0) |

**Response**: `Volumes`

```typescript
const res = await books.volumes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.volumes.associated.list`

**GET** `books/v1/volumes/{volumeId}/associated`

Return a list of associated books.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `volumeId` | `string` | path | Yes | ID of the source volume. |
| `association` | `string` | query | No | Association type. |
| `locale` | `string` | query | No | ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations. |
| `maxAllowedMaturityRating` | `string` | query | No | The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Volumes`

```typescript
const res = await books.associated.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.volumes.mybooks.list`

**GET** `books/v1/volumes/mybooks`

Return a list of books in My Library.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `acquireMethod` | `string` | query | No | How the book was acquired |
| `country` | `string` | query | No | ISO-3166-1 code to override the IP-based location. |
| `locale` | `string` | query | No | ISO-639-1 language and ISO-3166-1 country code. Ex:'en_US'. Used for generating recommendations. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `processingState` | `string` | query | No | The processing state of the user uploaded volumes to be returned. Applicable only if the UPLOADED is specified in the... |
| `source` | `string` | query | No | String to identify the originator of this request. |
| `startIndex` | `integer` | query | No | Index of the first result to return (starts at 0) |

**Response**: `Volumes`

```typescript
const res = await books.mybooks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.volumes.recommended.list`

**GET** `books/v1/volumes/recommended`

Return a list of recommended books for the current user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `locale` | `string` | query | No | ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations. |
| `maxAllowedMaturityRating` | `string` | query | No | The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `Volumes`

```typescript
const res = await books.recommended.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.volumes.recommended.rate`

**POST** `books/v1/volumes/recommended/rate`

Rate a recommended book for the current user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `rating` | `string` | query | Yes | Rating to be given to the volume. |
| `volumeId` | `string` | query | Yes | ID of the source volume. |
| `locale` | `string` | query | No | ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations. |
| `source` | `string` | query | No | String to identify the originator of this request. |

**Response**: `BooksVolumesRecommendedRateResponse`

```typescript
const res = await books.recommended.rate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

### `books.volumes.useruploaded.list`

**GET** `books/v1/volumes/useruploaded`

Return a list of books uploaded by the current user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `locale` | `string` | query | No | ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `processingState` | `string` | query | No | The processing state of the user uploaded volumes to be returned. |
| `source` | `string` | query | No | String to identify the originator of this request. |
| `startIndex` | `integer` | query | No | Index of the first result to return (starts at 0) |
| `volumeId` | `string` | query | No | The ids of the volumes to be returned. If not specified all that match the processingState are returned. |

**Response**: `Volumes`

```typescript
const res = await books.useruploaded.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/books`

---

## Schemas

### `Annotation`

| Property | Type | Description |
|----------|------|-------------|
| `afterSelectedText` | `string` | Anchor text after excerpt. For requests, if the user bookmarked a screen that has no flowing text... |
| `beforeSelectedText` | `string` | Anchor text before excerpt. For requests, if the user bookmarked a screen that has no flowing tex... |
| `clientVersionRanges` | `object` | Selection ranges sent from the client. |
| `created` | `string` | Timestamp for the created time of this annotation. |
| `currentVersionRanges` | `object` | Selection ranges for the most recent content version. |
| `data` | `string` | User-created data for this annotation. |
| `deleted` | `boolean` | Indicates that this annotation is deleted. |
| `highlightStyle` | `string` | The highlight style for this annotation. |
| `id` | `string` | Id of this annotation, in the form of a GUID. |
| `kind` | `string` | Resource type. |
| `layerId` | `string` | The layer this annotation is for. |
| `layerSummary` | `object` |  |
| `pageIds` | `array<string>` | Pages that this annotation spans. |
| `selectedText` | `string` | Excerpt from the volume. |
| `selfLink` | `string` | URL to this resource. |
| `updated` | `string` | Timestamp for the last time this annotation was modified. |
| `volumeId` | `string` | The volume that this annotation belongs to. |

### `Annotations`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Annotation>` | A list of annotations. |
| `kind` | `string` | Resource type. |
| `nextPageToken` | `string` | Token to pass in for pagination for the next page. This will not be present if this request does ... |
| `totalItems` | `integer` | Total number of annotations found. This may be greater than the number of notes returned in this ... |

### `AnnotationsSummary`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` |  |
| `layers` | `array<object>` |  |

### `Annotationsdata`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<GeoAnnotationdata>` | A list of Annotation Data. |
| `kind` | `string` | Resource type |
| `nextPageToken` | `string` | Token to pass in for pagination for the next page. This will not be present if this request does ... |
| `totalItems` | `integer` | The total number of volume annotations found. |

### `BooksAnnotationsRange`

| Property | Type | Description |
|----------|------|-------------|
| `endOffset` | `string` | The offset from the ending position. |
| `endPosition` | `string` | The ending position for the range. |
| `startOffset` | `string` | The offset from the starting position. |
| `startPosition` | `string` | The starting position for the range. |

### `BooksCloudloadingResource`

| Property | Type | Description |
|----------|------|-------------|
| `author` | `string` |  |
| `processingState` | `string` |  |
| `title` | `string` |  |
| `volumeId` | `string` |  |

### `BooksVolumesRecommendedRateResponse`

| Property | Type | Description |
|----------|------|-------------|
| `consistency_token` | `string` |  |

### `Bookshelf`

| Property | Type | Description |
|----------|------|-------------|
| `access` | `string` | Whether this bookshelf is PUBLIC or PRIVATE. |
| `created` | `string` | Created time for this bookshelf (formatted UTC timestamp with millisecond resolution). |
| `description` | `string` | Description of this bookshelf. |
| `id` | `integer` | Id of this bookshelf, only unique by user. |
| `kind` | `string` | Resource type for bookshelf metadata. |
| `selfLink` | `string` | URL to this resource. |
| `title` | `string` | Title of this bookshelf. |
| `updated` | `string` | Last modified time of this bookshelf (formatted UTC timestamp with millisecond resolution). |
| `volumeCount` | `integer` | Number of volumes in this bookshelf. |
| `volumesLastUpdated` | `string` | Last time a volume was added or removed from this bookshelf (formatted UTC timestamp with millise... |

### `Bookshelves`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Bookshelf>` | A list of bookshelves. |
| `kind` | `string` | Resource type. |

### `Category`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<object>` | A list of onboarding categories. |
| `kind` | `string` | Resource type. |

### `ConcurrentAccessRestriction`

| Property | Type | Description |
|----------|------|-------------|
| `deviceAllowed` | `boolean` | Whether access is granted for this (user, device, volume). |
| `kind` | `string` | Resource type. |
| `maxConcurrentDevices` | `integer` | The maximum number of concurrent access licenses for this volume. |
| `message` | `string` | Error/warning message. |
| `nonce` | `string` | Client nonce for verification. Download access and client-validation only. |
| `reasonCode` | `string` | Error/warning reason code. |
| `restricted` | `boolean` | Whether this volume has any concurrent access restrictions. |
| `signature` | `string` | Response signature. |
| `source` | `string` | Client app identifier for verification. Download access and client-validation only. |
| `timeWindowSeconds` | `integer` | Time in seconds for license auto-expiration. |
| `volumeId` | `string` | Identifies the volume for which this entry applies. |

### `DictionaryAnnotationdata`

| Property | Type | Description |
|----------|------|-------------|
| `annotationType` | `string` | The type of annotation this data is for. |
| `data` | `Dictlayerdata` | JSON encoded data for this dictionary annotation data. Emitted with name 'data' in JSON output. E... |
| `encodedData` | `string` | Base64 encoded data for this annotation data. |
| `id` | `string` | Unique id for this annotation data. |
| `kind` | `string` | Resource Type |
| `layerId` | `string` | The Layer id for this data. * |
| `selfLink` | `string` | URL for this resource. * |
| `updated` | `string` | Timestamp for the last time this data was updated. (RFC 3339 UTC date-time format). |
| `volumeId` | `string` | The volume id for this data. * |

### `Dictlayerdata`

| Property | Type | Description |
|----------|------|-------------|
| `common` | `object` |  |
| `dict` | `object` |  |
| `kind` | `string` |  |

### `Discoveryclusters`

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `array<object>` |  |
| `kind` | `string` | Resorce type. |
| `totalClusters` | `integer` |  |

### `DownloadAccessRestriction`

| Property | Type | Description |
|----------|------|-------------|
| `deviceAllowed` | `boolean` | If restricted, whether access is granted for this (user, device, volume). |
| `downloadsAcquired` | `integer` | If restricted, the number of content download licenses already acquired (including the requesting... |
| `justAcquired` | `boolean` | If deviceAllowed, whether access was just acquired with this request. |
| `kind` | `string` | Resource type. |
| `maxDownloadDevices` | `integer` | If restricted, the maximum number of content download licenses for this volume. |
| `message` | `string` | Error/warning message. |
| `nonce` | `string` | Client nonce for verification. Download access and client-validation only. |
| `reasonCode` | `string` | Error/warning reason code. Additional codes may be added in the future. 0 OK 100 ACCESS_DENIED_PU... |
| `restricted` | `boolean` | Whether this volume has any download access restrictions. |
| `signature` | `string` | Response signature. |
| `source` | `string` | Client app identifier for verification. Download access and client-validation only. |
| `volumeId` | `string` | Identifies the volume for which this entry applies. |

### `DownloadAccesses`

| Property | Type | Description |
|----------|------|-------------|
| `downloadAccessList` | `array<DownloadAccessRestriction>` | A list of download access responses. |
| `kind` | `string` | Resource type. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `FamilyInfo`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Resource type. |
| `membership` | `object` | Family membership info of the user that made the request. |

### `GeoAnnotationdata`

| Property | Type | Description |
|----------|------|-------------|
| `annotationType` | `string` | The type of annotation this data is for. |
| `data` | `Geolayerdata` | JSON encoded data for this geo annotation data. Emitted with name 'data' in JSON output. Either t... |
| `encodedData` | `string` | Base64 encoded data for this annotation data. |
| `id` | `string` | Unique id for this annotation data. |
| `kind` | `string` | Resource Type |
| `layerId` | `string` | The Layer id for this data. * |
| `selfLink` | `string` | URL for this resource. * |
| `updated` | `string` | Timestamp for the last time this data was updated. (RFC 3339 UTC date-time format). |
| `volumeId` | `string` | The volume id for this data. * |

### `Geolayerdata`

| Property | Type | Description |
|----------|------|-------------|
| `common` | `object` |  |
| `geo` | `object` |  |
| `kind` | `string` |  |

### `Layersummaries`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Layersummary>` | A list of layer summary items. |
| `kind` | `string` | Resource type. |
| `totalItems` | `integer` | The total number of layer summaries found. |

### `Layersummary`

| Property | Type | Description |
|----------|------|-------------|
| `annotationCount` | `integer` | The number of annotations for this layer. |
| `annotationTypes` | `array<string>` | The list of annotation types contained for this layer. |
| `annotationsDataLink` | `string` | Link to get data for this annotation. |
| `annotationsLink` | `string` | The link to get the annotations for this layer. |
| `contentVersion` | `string` | The content version this resource is for. |
| `dataCount` | `integer` | The number of data items for this layer. |
| `id` | `string` | Unique id of this layer summary. |
| `kind` | `string` | Resource Type |
| `layerId` | `string` | The layer id for this summary. |
| `selfLink` | `string` | URL to this resource. |
| `updated` | `string` | Timestamp for the last time an item in this layer was updated. (RFC 3339 UTC date-time format). |
| `volumeAnnotationsVersion` | `string` | The current version of this layer's volume annotations. Note that this version applies only to th... |
| `volumeId` | `string` | The volume id this resource is for. |

### `Metadata`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<object>` | A list of offline dictionary metadata. |
| `kind` | `string` | Resource type. |

### `Notification`

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` |  |
| `crmExperimentIds` | `array<string>` | The list of crm experiment ids. |
| `doc_id` | `string` |  |
| `doc_type` | `string` |  |
| `dont_show_notification` | `boolean` |  |
| `iconUrl` | `string` |  |
| `is_document_mature` | `boolean` |  |
| `kind` | `string` | Resource type. |
| `notificationGroup` | `string` |  |
| `notification_type` | `string` |  |
| `pcampaign_id` | `string` |  |
| `reason` | `string` |  |
| `show_notification_settings_action` | `boolean` |  |
| `targetUrl` | `string` |  |
| `timeToExpireMs` | `string` |  |
| `title` | `string` |  |

### `Offers`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<object>` | A list of offers. |
| `kind` | `string` | Resource type. |

### `ReadingPosition`

| Property | Type | Description |
|----------|------|-------------|
| `epubCfiPosition` | `string` | Position in an EPUB as a CFI. |
| `gbImagePosition` | `string` | Position in a volume for image-based content. |
| `gbTextPosition` | `string` | Position in a volume for text-based content. |
| `kind` | `string` | Resource type for a reading position. |
| `pdfPosition` | `string` | Position in a PDF file. |
| `updated` | `string` | Timestamp when this reading position was last updated (formatted UTC timestamp with millisecond r... |
| `volumeId` | `string` | Volume id associated with this reading position. |

### `RequestAccessData`

| Property | Type | Description |
|----------|------|-------------|
| `concurrentAccess` | `ConcurrentAccessRestriction` | A concurrent access response. |
| `downloadAccess` | `DownloadAccessRestriction` | A download access response. |
| `kind` | `string` | Resource type. |

### `Review`

| Property | Type | Description |
|----------|------|-------------|
| `author` | `object` | Author of this review. |
| `content` | `string` | Review text. |
| `date` | `string` | Date of this review. |
| `fullTextUrl` | `string` | URL for the full review text, for reviews gathered from the web. |
| `kind` | `string` | Resource type for a review. |
| `rating` | `string` | Star rating for this review. Possible values are ONE, TWO, THREE, FOUR, FIVE or NOT_RATED. |
| `source` | `object` | Information regarding the source of this review, when the review is not from a Google Books user. |
| `title` | `string` | Title for this review. |
| `type` | `string` | Source type for this review. Possible values are EDITORIAL, WEB_USER or GOOGLE_USER. |
| `volumeId` | `string` | Volume that this review is for. |

### `Series`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Resource type. |
| `series` | `array<object>` |  |

### `Seriesmembership`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Resorce type. |
| `member` | `array<Volume>` |  |
| `nextPageToken` | `string` |  |

### `Usersettings`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Resource type. |
| `notesExport` | `object` | User settings in sub-objects, each for different purposes. |
| `notification` | `object` |  |

### `Volume`

| Property | Type | Description |
|----------|------|-------------|
| `accessInfo` | `object` | Any information about a volume related to reading or obtaining that volume text. This information... |
| `etag` | `string` | Opaque identifier for a specific version of a volume resource. (In LITE projection) |
| `id` | `string` | Unique identifier for a volume. (In LITE projection.) |
| `kind` | `string` | Resource type for a volume. (In LITE projection.) |
| `layerInfo` | `object` | What layers exist in this volume and high level information about them. |
| `recommendedInfo` | `object` | Recommendation related information for this volume. |
| `saleInfo` | `object` | Any information about a volume related to the eBookstore and/or purchaseability. This information... |
| `searchInfo` | `object` | Search result information related to this volume. |
| `selfLink` | `string` | URL to this resource. (In LITE projection.) |
| `userInfo` | `object` | User specific information related to this volume. (e.g. page this user last read or whether they ... |
| `volumeInfo` | `object` | General volume information. |

### `Volume2`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Volume>` | A list of volumes. |
| `kind` | `string` | Resource type. |
| `nextPageToken` | `string` |  |

### `Volumeannotation`

| Property | Type | Description |
|----------|------|-------------|
| `annotationDataId` | `string` | The annotation data id for this volume annotation. |
| `annotationDataLink` | `string` | Link to get data for this annotation. |
| `annotationType` | `string` | The type of annotation this is. |
| `contentRanges` | `object` | The content ranges to identify the selected text. |
| `data` | `string` | Data for this annotation. |
| `deleted` | `boolean` | Indicates that this annotation is deleted. |
| `id` | `string` | Unique id of this volume annotation. |
| `kind` | `string` | Resource Type |
| `layerId` | `string` | The Layer this annotation is for. |
| `pageIds` | `array<string>` | Pages the annotation spans. |
| `selectedText` | `string` | Excerpt from the volume. |
| `selfLink` | `string` | URL to this resource. |
| `updated` | `string` | Timestamp for the last time this anntoation was updated. (RFC 3339 UTC date-time format). |
| `volumeId` | `string` | The Volume this annotation is for. |

### `Volumeannotations`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Volumeannotation>` | A list of volume annotations. |
| `kind` | `string` | Resource type |
| `nextPageToken` | `string` | Token to pass in for pagination for the next page. This will not be present if this request does ... |
| `totalItems` | `integer` | The total number of volume annotations found. |
| `version` | `string` | The version string for all of the volume annotations in this layer (not just the ones in this res... |

### `Volumes`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Volume>` | A list of volumes. |
| `kind` | `string` | Resource type. |
| `totalItems` | `integer` | Total number of volumes found. This might be greater than the number of volumes returned in this ... |

### `Volumeseriesinfo`

| Property | Type | Description |
|----------|------|-------------|
| `bookDisplayNumber` | `string` | The display number string. This should be used only for display purposes and the actual sequence ... |
| `kind` | `string` | Resource type. |
| `shortSeriesBookTitle` | `string` | Short book title in the context of the series. |
| `volumeSeries` | `array<object>` |  |

