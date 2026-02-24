# Street View Publish API - API Reference

**Version**: `v1` | **Methods**: 14 | **Schemas**: 30

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `streetviewpublish.photo.startUpload` | POST | `v1/photo:startUpload` | Creates an upload session to start uploading photo bytes. The method uses the upload URL of the r... |
| `streetviewpublish.photo.create` | POST | `v1/photo` | After the client finishes uploading the photo with the returned UploadRef, CreatePhoto publishes ... |
| `streetviewpublish.photo.get` | GET | `v1/photo/{photoId}` | Gets the metadata of the specified Photo. This method returns the following error codes: * google... |
| `streetviewpublish.photo.update` | PUT | `v1/photo/{id}` | Updates the metadata of a Photo, such as pose, place association, connections, etc. Changing the ... |
| `streetviewpublish.photo.delete` | DELETE | `v1/photo/{photoId}` | Deletes a Photo and its metadata. This method returns the following error codes: * google.rpc.Cod... |
| `streetviewpublish.photos.batchGet` | GET | `v1/photos:batchGet` | Gets the metadata of the specified Photo batch. Note that if BatchGetPhotos fails, either critica... |
| `streetviewpublish.photos.list` | GET | `v1/photos` | Lists all the Photos that belong to the user. > Note: Recently created photos that are still bein... |
| `streetviewpublish.photos.batchUpdate` | POST | `v1/photos:batchUpdate` | Updates the metadata of Photos, such as pose, place association, connections, etc. Changing the p... |
| `streetviewpublish.photos.batchDelete` | POST | `v1/photos:batchDelete` | Deletes a list of Photos and their metadata. Note that if BatchDeletePhotos fails, either critica... |
| `streetviewpublish.photoSequence.startUpload` | POST | `v1/photoSequence:startUpload` | Creates an upload session to start uploading photo sequence data. The upload URL of the returned ... |
| `streetviewpublish.photoSequence.create` | POST | `v1/photoSequence` | After the client finishes uploading the PhotoSequence with the returned UploadRef, CreatePhotoSeq... |
| `streetviewpublish.photoSequence.get` | GET | `v1/photoSequence/{sequenceId}` | Gets the metadata of the specified PhotoSequence via the Operation interface. This method returns... |
| `streetviewpublish.photoSequence.delete` | DELETE | `v1/photoSequence/{sequenceId}` | Deletes a PhotoSequence and its metadata. This method returns the following error codes: * google... |
| `streetviewpublish.photoSequences.list` | GET | `v1/photoSequences` | Lists all the PhotoSequences that belong to the user, in descending CreatePhotoSequence timestamp... |

### `streetviewpublish.photo.startUpload`

**POST** `v1/photo:startUpload`

Creates an upload session to start uploading photo bytes. The method uses the upload URL of the returned UploadRef to upload the bytes for the Photo. In addition to the photo requirements shown in https://support.google.com/maps/answer/7012050?ref_topic=6275604, the photo must meet the following requirements: * Photo Sphere XMP metadata must be included in the photo metadata. See https://developers.google.com/streetview/spherical-metadata for the required fields. * The pixel size of the photo must meet the size requirements listed in https://support.google.com/maps/answer/7012050?ref_topic=6275604, and the photo must be a full 360 horizontally. After the upload completes, the method uses UploadRef with CreatePhoto to create the Photo object entry.

**Request body**: `Empty`

**Response**: `UploadRef`

```typescript
const res = await streetviewpublish.photo.startUpload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

### `streetviewpublish.photo.create`

**POST** `v1/photo`

After the client finishes uploading the photo with the returned UploadRef, CreatePhoto publishes the uploaded Photo to Street View on Google Maps. Currently, the only way to set heading, pitch, and roll in CreatePhoto is through the [Photo Sphere XMP metadata](https://developers.google.com/streetview/spherical-metadata) in the photo bytes. CreatePhoto ignores the `pose.heading`, `pose.pitch`, `pose.roll`, `pose.altitude`, and `pose.level` fields in Pose. This method returns the following error codes: * google.rpc.Code.INVALID_ARGUMENT if the request is malformed or if the uploaded photo is not a 360 photo. * google.rpc.Code.NOT_FOUND if the upload reference does not exist. * google.rpc.Code.RESOURCE_EXHAUSTED if the account has reached the storage limit.

**Request body**: `Photo`

**Response**: `Photo`

```typescript
const res = await streetviewpublish.photo.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

### `streetviewpublish.photo.get`

**GET** `v1/photo/{photoId}`

Gets the metadata of the specified Photo. This method returns the following error codes: * google.rpc.Code.PERMISSION_DENIED if the requesting user did not create the requested Photo. * google.rpc.Code.NOT_FOUND if the requested Photo does not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is still being indexed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `photoId` | `string` | path | Yes | Required. ID of the Photo. |
| `languageCode` | `string` | query | No | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unicode.org/reports/tr35... |
| `view` | `string` | query | No | Required. Specifies if a download URL for the photo bytes should be returned in the Photo response. |

**Response**: `Photo`

```typescript
const res = await streetviewpublish.photo.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

### `streetviewpublish.photo.update`

**PUT** `v1/photo/{id}`

Updates the metadata of a Photo, such as pose, place association, connections, etc. Changing the pixels of a photo is not supported. Only the fields specified in the updateMask field are used. If `updateMask` is not present, the update applies to all fields. This method returns the following error codes: * google.rpc.Code.PERMISSION_DENIED if the requesting user did not create the requested photo. * google.rpc.Code.INVALID_ARGUMENT if the request is malformed. * google.rpc.Code.NOT_FOUND if the requested photo does not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is still being indexed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | path | Yes | A unique identifier for a photo. |
| `updateMask` | `string` | query | No | Required. Mask that identifies fields on the photo metadata to update. If not present, the old Photo metadata is enti... |

**Request body**: `Photo`

**Response**: `Photo`

```typescript
const res = await streetviewpublish.photo.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

### `streetviewpublish.photo.delete`

**DELETE** `v1/photo/{photoId}`

Deletes a Photo and its metadata. This method returns the following error codes: * google.rpc.Code.PERMISSION_DENIED if the requesting user did not create the requested photo. * google.rpc.Code.NOT_FOUND if the photo ID does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `photoId` | `string` | path | Yes | Required. ID of the Photo. |

**Response**: `Empty`

```typescript
const res = await streetviewpublish.photo.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

### `streetviewpublish.photos.batchGet`

**GET** `v1/photos:batchGet`

Gets the metadata of the specified Photo batch. Note that if BatchGetPhotos fails, either critical fields are missing or there is an authentication error. Even if BatchGetPhotos succeeds, individual photos in the batch may have failures. These failures are specified in each PhotoResponse.status in BatchGetPhotosResponse.results. See GetPhoto for specific failures that can occur per photo.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `languageCode` | `string` | query | No | Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unicode.org/re... |
| `photoIds` | `string` | query | No | Required. IDs of the Photos. For HTTP GET requests, the URL query parameter should be `photoIds=&photoIds=&...`. |
| `view` | `string` | query | No | Required. Specifies if a download URL for the photo bytes should be returned in the Photo response. |

**Response**: `BatchGetPhotosResponse`

```typescript
const res = await streetviewpublish.photos.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

### `streetviewpublish.photos.list`

**GET** `v1/photos`

Lists all the Photos that belong to the user. > Note: Recently created photos that are still being indexed are not returned in the response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Optional. The filter expression. For example: `placeId=ChIJj61dQgK6j4AR4GeTYWZsKWw`. The filters supported are: `plac... |
| `languageCode` | `string` | query | No | Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unicode.org/re... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of photos to return. `pageSize` must be non-negative. If `pageSize` is zero or is not pr... |
| `pageToken` | `string` | query | No | Optional. The nextPageToken value returned from a previous ListPhotos request, if any. |
| `view` | `string` | query | No | Required. Specifies if a download URL for the photos bytes should be returned in the Photos response. |

**Response**: `ListPhotosResponse`

```typescript
const res = await streetviewpublish.photos.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

### `streetviewpublish.photos.batchUpdate`

**POST** `v1/photos:batchUpdate`

Updates the metadata of Photos, such as pose, place association, connections, etc. Changing the pixels of photos is not supported. Note that if BatchUpdatePhotos fails, either critical fields are missing or there is an authentication error. Even if BatchUpdatePhotos succeeds, individual photos in the batch may have failures. These failures are specified in each PhotoResponse.status in BatchUpdatePhotosResponse.results. See UpdatePhoto for specific failures that can occur per photo. Only the fields specified in updateMask field are used. If `updateMask` is not present, the update applies to all fields. The number of UpdatePhotoRequest messages in a BatchUpdatePhotosRequest must not exceed 20. > Note: To update Pose.altitude, Pose.latLngPair has to be filled as well. Otherwise, the request will fail.

**Request body**: `BatchUpdatePhotosRequest`

**Response**: `BatchUpdatePhotosResponse`

```typescript
const res = await streetviewpublish.photos.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

### `streetviewpublish.photos.batchDelete`

**POST** `v1/photos:batchDelete`

Deletes a list of Photos and their metadata. Note that if BatchDeletePhotos fails, either critical fields are missing or there is an authentication error. Even if BatchDeletePhotos succeeds, individual photos in the batch may have failures. These failures are specified in each PhotoResponse.status in BatchDeletePhotosResponse.results. See DeletePhoto for specific failures that can occur per photo.

**Request body**: `BatchDeletePhotosRequest`

**Response**: `BatchDeletePhotosResponse`

```typescript
const res = await streetviewpublish.photos.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

### `streetviewpublish.photoSequence.startUpload`

**POST** `v1/photoSequence:startUpload`

Creates an upload session to start uploading photo sequence data. The upload URL of the returned UploadRef is used to upload the data for the `photoSequence`. After the upload is complete, the UploadRef is used with CreatePhotoSequence to create the PhotoSequence object entry.

**Request body**: `Empty`

**Response**: `UploadRef`

```typescript
const res = await streetviewpublish.photoSequence.startUpload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

### `streetviewpublish.photoSequence.create`

**POST** `v1/photoSequence`

After the client finishes uploading the PhotoSequence with the returned UploadRef, CreatePhotoSequence extracts a sequence of 360 photos from a video or Extensible Device Metadata (XDM, http://www.xdm.org/) to be published to Street View on Google Maps. `CreatePhotoSequence` returns an Operation, with the PhotoSequence Id set in the `Operation.name` field. This method returns the following error codes: * google.rpc.Code.INVALID_ARGUMENT if the request is malformed. * google.rpc.Code.NOT_FOUND if the upload reference does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `inputType` | `string` | query | No | Required. The input form of PhotoSequence. |

**Request body**: `PhotoSequence`

**Response**: `Operation`

```typescript
const res = await streetviewpublish.photoSequence.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

### `streetviewpublish.photoSequence.get`

**GET** `v1/photoSequence/{sequenceId}`

Gets the metadata of the specified PhotoSequence via the Operation interface. This method returns the following three types of responses: * `Operation.done` = false, if the processing of PhotoSequence is not finished yet. * `Operation.done` = true and `Operation.error` is populated, if there was an error in processing. * `Operation.done` = true and `Operation.response` is poulated, which contains a PhotoSequence message. This method returns the following error codes: * google.rpc.Code.PERMISSION_DENIED if the requesting user did not create the requested PhotoSequence. * google.rpc.Code.NOT_FOUND if the requested PhotoSequence does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sequenceId` | `string` | path | Yes | Required. ID of the photo sequence. |
| `filter` | `string` | query | No | Optional. The filter expression. For example: `published_status=PUBLISHED`. The filters supported are: `published_sta... |
| `view` | `string` | query | No | Specifies if a download URL for the photo sequence should be returned in `download_url` of individual photos in the P... |

**Response**: `Operation`

```typescript
const res = await streetviewpublish.photoSequence.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

### `streetviewpublish.photoSequence.delete`

**DELETE** `v1/photoSequence/{sequenceId}`

Deletes a PhotoSequence and its metadata. This method returns the following error codes: * google.rpc.Code.PERMISSION_DENIED if the requesting user did not create the requested photo sequence. * google.rpc.Code.NOT_FOUND if the photo sequence ID does not exist. * google.rpc.Code.FAILED_PRECONDITION if the photo sequence ID is not yet finished processing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sequenceId` | `string` | path | Yes | Required. ID of the PhotoSequence. |

**Response**: `Empty`

```typescript
const res = await streetviewpublish.photoSequence.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

### `streetviewpublish.photoSequences.list`

**GET** `v1/photoSequences`

Lists all the PhotoSequences that belong to the user, in descending CreatePhotoSequence timestamp order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Optional. The filter expression. For example: `imagery_type=SPHERICAL`. The filters supported are: `imagery_type`, `p... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of photo sequences to return. `pageSize` must be non-negative. If `pageSize` is zero or ... |
| `pageToken` | `string` | query | No | Optional. The nextPageToken value returned from a previous ListPhotoSequences request, if any. |

**Response**: `ListPhotoSequencesResponse`

```typescript
const res = await streetviewpublish.photoSequences.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/streetviewpublish`

---

## Schemas

### `BatchDeletePhotosRequest`

Request to delete multiple Photos.

| Property | Type | Description |
|----------|------|-------------|
| `photoIds` | `array<string>` | Required. IDs of the Photos. HTTP GET requests require the following syntax for the URL query par... |

### `BatchDeletePhotosResponse`

Response to batch delete of one or more Photos.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `array<Status>` | The status for the operation to delete a single Photo in the batch request. |

### `BatchGetPhotosResponse`

Response to batch get of Photos.

| Property | Type | Description |
|----------|------|-------------|
| `results` | `array<PhotoResponse>` | List of results for each individual Photo requested, in the same order as the requests in BatchGe... |

### `BatchUpdatePhotosRequest`

Request to update the metadata of photos. Updating the pixels of photos is not supported.

| Property | Type | Description |
|----------|------|-------------|
| `updatePhotoRequests` | `array<UpdatePhotoRequest>` | Required. List of UpdatePhotoRequests. |

### `BatchUpdatePhotosResponse`

Response to batch update of metadata of one or more Photos.

| Property | Type | Description |
|----------|------|-------------|
| `results` | `array<PhotoResponse>` | List of results for each individual Photo updated, in the same order as the request. |

### `Connection`

A connection is the link from a source photo to a destination photo.

| Property | Type | Description |
|----------|------|-------------|
| `target` | `PhotoId` | Required. The destination of the connection from the containing photo to another photo. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GpsDataGapFailureDetails`

Details related to ProcessingFailureReason#GPS_DATA_GAP. If there are multiple GPS data gaps, only the one with the largest duration is reported here.

| Property | Type | Description |
|----------|------|-------------|
| `gapDuration` | `string` | The duration of the gap in GPS data that was found. |
| `gapStartTime` | `string` | Relative time (from the start of the video stream) when the gap started. |

### `Imu`

IMU data from the device sensors.

| Property | Type | Description |
|----------|------|-------------|
| `accelMpsps` | `array<Measurement3d>` | The accelerometer measurements in meters/sec^2 with increasing timestamps from devices. |
| `gyroRps` | `array<Measurement3d>` | The gyroscope measurements in radians/sec with increasing timestamps from devices. |
| `magUt` | `array<Measurement3d>` | The magnetometer measurements of the magnetic field in microtesla (uT) with increasing timestamps... |

### `ImuDataGapFailureDetails`

Details related to ProcessingFailureReason#IMU_DATA_GAP. If there are multiple IMU data gaps, only the one with the largest duration is reported here.

| Property | Type | Description |
|----------|------|-------------|
| `gapDuration` | `string` | The duration of the gap in IMU data that was found. |
| `gapStartTime` | `string` | Relative time (from the start of the video stream) when the gap started. |

### `InsufficientGpsFailureDetails`

Details related to ProcessingFailureReason#INSUFFICIENT_GPS.

| Property | Type | Description |
|----------|------|-------------|
| `gpsPointsFound` | `integer` | The number of GPS points that were found in the video. |

### `LatLng`

An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `longitude` | `number` | The longitude in degrees. It must be in the range [-180.0, +180.0]. |

### `LatLngBounds`

A rectangle in geographical coordinates.

| Property | Type | Description |
|----------|------|-------------|
| `northeast` | `LatLng` | The northeast corner of these bounds. |
| `southwest` | `LatLng` | The southwest corner of these bounds. |

### `Level`

Level information containing level number and its corresponding name.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. A name assigned to this Level, restricted to 3 characters. Consider how the elevator bu... |
| `number` | `number` | Optional. Floor number, used for ordering. 0 indicates the ground level, 1 indicates the first le... |

### `ListPhotoSequencesResponse`

Response to list all photo sequences that belong to a user.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `photoSequences` | `array<Operation>` | List of photo sequences via Operation interface. The maximum number of items returned is based on... |

### `ListPhotosResponse`

Response to list all photos that belong to a user.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `photos` | `array<Photo>` | List of photos. The pageSize field in the request determines the number of items returned. |

### `Measurement3d`

A Generic 3d measurement sample.

| Property | Type | Description |
|----------|------|-------------|
| `captureTime` | `string` | The timestamp of the IMU measurement. |
| `x` | `number` | The sensor measurement in the x axis. |
| `y` | `number` | The sensor measurement in the y axis. |
| `z` | `number` | The sensor measurement in the z axis. |

### `NoOverlapGpsFailureDetails`

Details related to PhotoSequenceProcessingFailureReason#NO_OVERLAP_GPS.

| Property | Type | Description |
|----------|------|-------------|
| `gpsEndTime` | `string` | Time of last recorded GPS point. |
| `gpsStartTime` | `string` | Time of first recorded GPS point. |
| `videoEndTime` | `string` | End time of video. |
| `videoStartTime` | `string` | Start time of video. |

### `NotOutdoorsFailureDetails`

Details related to ProcessingFailureReason#NOT_OUTDOORS. If there are multiple indoor frames found, the first frame is recorded here.

| Property | Type | Description |
|----------|------|-------------|
| `startTime` | `string` | Relative time (from the start of the video stream) when an indoor frame was found. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Photo`

Photo is used to store 360 photos along with photo metadata.

| Property | Type | Description |
|----------|------|-------------|
| `captureTime` | `string` | Optional. Absolute time when the photo was captured. When the photo has no exif timestamp, this i... |
| `connections` | `array<Connection>` | Optional. Connections to other photos. A connection represents the link from this photo to anothe... |
| `downloadUrl` | `string` | Output only. The download URL for the photo bytes. This field is set only when GetPhotoRequest.vi... |
| `mapsPublishStatus` | `string` | Output only. Status in Google Maps, whether this photo was published or rejected. |
| `photoId` | `PhotoId` | Required. Output only. Required when updating a photo. Output only when creating a photo. Identif... |
| `places` | `array<Place>` | Optional. Places where this photo belongs. |
| `pose` | `Pose` | Optional. Pose of the photo. |
| `shareLink` | `string` | Output only. The share link for the photo. |
| `thumbnailUrl` | `string` | Output only. The thumbnail URL for showing a preview of the given photo. |
| `transferStatus` | `string` | Output only. Status of rights transfer on this photo. |
| `uploadReference` | `UploadRef` | Input only. Required when creating a photo. Input only. The resource URL where the photo bytes ar... |
| `uploadTime` | `string` | Output only. Time when the image was uploaded. |
| `viewCount` | `string` | Output only. View count of the photo. |

### `PhotoId`

Identifier for a Photo.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | A unique identifier for a photo. |

### `PhotoResponse`

Response payload for a single Photo in batch operations including BatchGetPhotos and BatchUpdatePhotos.

| Property | Type | Description |
|----------|------|-------------|
| `photo` | `Photo` | The Photo resource, if the request was successful. |
| `status` | `Status` | The status for the operation to get or update a single photo in the batch request. |

### `PhotoSequence`

A sequence of 360 photos along with metadata.

| Property | Type | Description |
|----------|------|-------------|
| `captureTimeOverride` | `string` | Optional. Absolute time when the photo sequence starts to be captured. If the photo sequence is a... |
| `distanceMeters` | `number` | Output only. The computed distance of the photo sequence in meters. |
| `failureDetails` | `ProcessingFailureDetails` | Output only. If this sequence has `failure_reason` set, this may contain additional details about... |
| `failureReason` | `string` | Output only. If this sequence has processing_state = FAILED, this will contain the reason why it ... |
| `filename` | `string` | Output only. The filename of the upload. Does not include the directory path. Only available if t... |
| `gpsSource` | `string` | Input only. If both raw_gps_timeline and the Camera Motion Metadata Track (CAMM) contain GPS meas... |
| `id` | `string` | Output only. Unique identifier for the photo sequence. This also acts as a long running operation... |
| `imu` | `Imu` | Input only. Three axis IMU data for the collection. If this data is too large to put in the reque... |
| `photos` | `array<Photo>` | Output only. Photos with increasing timestamps. |
| `processingState` | `string` | Output only. The processing state of this sequence. |
| `rawGpsTimeline` | `array<Pose>` | Input only. Raw GPS measurements with increasing timestamps from the device that aren't time sync... |
| `sequenceBounds` | `LatLngBounds` | Output only. A rectangular box that encapsulates every image in this photo sequence. |
| `uploadReference` | `UploadRef` | Input only. Required when creating photo sequence. The resource name where the bytes of the photo... |
| `uploadTime` | `string` | Output only. The time this photo sequence was created in uSV Store service. |
| `viewCount` | `string` | Output only. The total number of views that all the published images in this PhotoSequence have r... |

### `Place`

Place metadata for an entity.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | Output only. The language_code that the name is localized with. This should be the language_code ... |
| `name` | `string` | Output only. The name of the place, localized to the language_code. |
| `placeId` | `string` | Place identifier, as described in https://developers.google.com/places/place-id. |

### `Pose`

Raw pose measurement for an entity.

| Property | Type | Description |
|----------|------|-------------|
| `accuracyMeters` | `number` | The estimated horizontal accuracy of this pose in meters with 68% confidence (one standard deviat... |
| `altitude` | `number` | Altitude of the pose in meters above WGS84 ellipsoid. NaN indicates an unmeasured quantity. |
| `gpsRecordTimestampUnixEpoch` | `string` | Time of the GPS record since UTC epoch. |
| `heading` | `number` | The following pose parameters pertain to the center of the photo. They match https://developers.g... |
| `latLngPair` | `LatLng` | Latitude and longitude pair of the pose, as explained here: https://cloud.google.com/datastore/do... |
| `level` | `Level` | Level (the floor in a building) used to configure vertical navigation. |
| `pitch` | `number` | Pitch, measured at the center of the photo in degrees. Value must be >=-90 and <= 90. A value of ... |
| `roll` | `number` | Roll, measured in degrees. Value must be >= 0 and <360. A value of 0 means level with the horizon... |

### `ProcessingFailureDetails`

Additional details to accompany the ProcessingFailureReason enum. This message is always expected to be used in conjunction with ProcessingFailureReason, and the oneof value set in this message should match the FailureReason.

| Property | Type | Description |
|----------|------|-------------|
| `gpsDataGapDetails` | `GpsDataGapFailureDetails` | See GpsDataGapFailureDetails. |
| `imuDataGapDetails` | `ImuDataGapFailureDetails` | See ImuDataGapFailureDetails. |
| `insufficientGpsDetails` | `InsufficientGpsFailureDetails` | See InsufficientGpsFailureDetails. |
| `noOverlapGpsDetails` | `NoOverlapGpsFailureDetails` | See NoOverlapGpsFailureDetails. |
| `notOutdoorsDetails` | `NotOutdoorsFailureDetails` | See NotOutdoorsFailureDetails. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `UpdatePhotoRequest`

Request to update the metadata of a Photo. Updating the pixels of a photo is not supported.

| Property | Type | Description |
|----------|------|-------------|
| `photo` | `Photo` | Required. Photo object containing the new metadata. |
| `updateMask` | `string` | Required. Mask that identifies fields on the photo metadata to update. If not present, the old Ph... |

### `UploadRef`

Upload reference for media files.

| Property | Type | Description |
|----------|------|-------------|
| `uploadUrl` | `string` | An upload reference should be unique for each user. It follows the form: "https://streetviewpubli... |

