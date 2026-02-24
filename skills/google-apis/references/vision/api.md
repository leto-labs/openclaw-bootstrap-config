# Cloud Vision API - API Reference

**Version**: `v1` | **Methods**: 38 | **Schemas**: 281

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `vision.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `vision.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `vision.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `vision.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `vision.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `vision.projects.locations.products.list` | GET | `v1/{+parent}/products` | Lists products in an unspecified order. Possible errors: * Returns INVALID_ARGUMENT if page_size ... |
| `vision.projects.locations.products.purge` | POST | `v1/{+parent}/products:purge` | Asynchronous API to delete all Products in a ProductSet or all Products that are in no ProductSet... |
| `vision.projects.locations.products.patch` | PATCH | `v1/{+name}` | Makes changes to a Product resource. Only the `display_name`, `description`, and `labels` fields ... |
| `vision.projects.locations.products.get` | GET | `v1/{+name}` | Gets information associated with a Product. Possible errors: * Returns NOT_FOUND if the Product d... |
| `vision.projects.locations.products.create` | POST | `v1/{+parent}/products` | Creates and returns a new product resource. Possible errors: * Returns INVALID_ARGUMENT if displa... |
| `vision.projects.locations.products.delete` | DELETE | `v1/{+name}` | Permanently deletes a product and its reference images. Metadata of the product and all its image... |
| `vision.projects.locations.products.referenceImages.get` | GET | `v1/{+name}` | Gets information associated with a ReferenceImage. Possible errors: * Returns NOT_FOUND if the sp... |
| `vision.projects.locations.products.referenceImages.create` | POST | `v1/{+parent}/referenceImages` | Creates and returns a new ReferenceImage resource. The `bounding_poly` field is optional. If `bou... |
| `vision.projects.locations.products.referenceImages.delete` | DELETE | `v1/{+name}` | Permanently deletes a reference image. The image metadata will be deleted right away, but search ... |
| `vision.projects.locations.products.referenceImages.list` | GET | `v1/{+parent}/referenceImages` | Lists reference images. Possible errors: * Returns NOT_FOUND if the parent product does not exist... |
| `vision.projects.locations.files.asyncBatchAnnotate` | POST | `v1/{+parent}/files:asyncBatchAnnotate` | Run asynchronous image detection and annotation for a list of generic files, such as PDF files, w... |
| `vision.projects.locations.files.annotate` | POST | `v1/{+parent}/files:annotate` | Service that performs image detection and annotation for a batch of files. Now only "application/... |
| `vision.projects.locations.productSets.addProduct` | POST | `v1/{+name}:addProduct` | Adds a Product to the specified ProductSet. If the Product is already present, no change is made.... |
| `vision.projects.locations.productSets.removeProduct` | POST | `v1/{+name}:removeProduct` | Removes a Product from the specified ProductSet. |
| `vision.projects.locations.productSets.import` | POST | `v1/{+parent}/productSets:import` | Asynchronous API that imports a list of reference images to specified product sets based on a lis... |
| `vision.projects.locations.productSets.get` | GET | `v1/{+name}` | Gets information associated with a ProductSet. Possible errors: * Returns NOT_FOUND if the Produc... |
| `vision.projects.locations.productSets.delete` | DELETE | `v1/{+name}` | Permanently deletes a ProductSet. Products and ReferenceImages in the ProductSet are not deleted.... |
| `vision.projects.locations.productSets.patch` | PATCH | `v1/{+name}` | Makes changes to a ProductSet resource. Only display_name can be updated currently. Possible erro... |
| `vision.projects.locations.productSets.create` | POST | `v1/{+parent}/productSets` | Creates and returns a new ProductSet resource. Possible errors: * Returns INVALID_ARGUMENT if dis... |
| `vision.projects.locations.productSets.list` | GET | `v1/{+parent}/productSets` | Lists ProductSets in an unspecified order. Possible errors: * Returns INVALID_ARGUMENT if page_si... |
| `vision.projects.locations.productSets.products.list` | GET | `v1/{+name}/products` | Lists the Products in a ProductSet, in an unspecified order. If the ProductSet does not exist, th... |
| `vision.projects.locations.images.asyncBatchAnnotate` | POST | `v1/{+parent}/images:asyncBatchAnnotate` | Run asynchronous image detection and annotation for a list of images. Progress and results can be... |
| `vision.projects.locations.images.annotate` | POST | `v1/{+parent}/images:annotate` | Run image detection and annotation for a batch of images. |
| `vision.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `vision.projects.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `vision.projects.files.annotate` | POST | `v1/{+parent}/files:annotate` | Service that performs image detection and annotation for a batch of files. Now only "application/... |
| `vision.projects.files.asyncBatchAnnotate` | POST | `v1/{+parent}/files:asyncBatchAnnotate` | Run asynchronous image detection and annotation for a list of generic files, such as PDF files, w... |
| `vision.projects.images.annotate` | POST | `v1/{+parent}/images:annotate` | Run image detection and annotation for a batch of images. |
| `vision.projects.images.asyncBatchAnnotate` | POST | `v1/{+parent}/images:asyncBatchAnnotate` | Run asynchronous image detection and annotation for a list of images. Progress and results can be... |
| `vision.images.annotate` | POST | `v1/images:annotate` | Run image detection and annotation for a batch of images. |
| `vision.images.asyncBatchAnnotate` | POST | `v1/images:asyncBatchAnnotate` | Run asynchronous image detection and annotation for a list of images. Progress and results can be... |
| `vision.files.annotate` | POST | `v1/files:annotate` | Service that performs image detection and annotation for a batch of files. Now only "application/... |
| `vision.files.asyncBatchAnnotate` | POST | `v1/files:asyncBatchAnnotate` | Run asynchronous image detection and annotation for a list of generic files, such as PDF files, w... |

### `vision.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await vision.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.operations.list`

**GET** `v1/{+name}`

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
const res = await vision.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await vision.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await vision.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await vision.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.products.list`

**GET** `v1/{+parent}/products`

Lists products in an unspecified order. Possible errors: * Returns INVALID_ARGUMENT if page_size is greater than 100 or less than 1.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project OR ProductSet from which Products should be listed. Format: `projects/PROJECT_ID/locations/LOC_ID` |
| `pageSize` | `integer` | query | No | The maximum number of items to return. Default 10, maximum 100. |
| `pageToken` | `string` | query | No | The next_page_token returned from a previous List request, if any. |

**Response**: `ListProductsResponse`

```typescript
const res = await vision.products.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.products.purge`

**POST** `v1/{+parent}/products:purge`

Asynchronous API to delete all Products in a ProductSet or all Products that are in no ProductSet. If a Product is a member of the specified ProductSet in addition to other ProductSets, the Product will still be deleted. It is recommended to not delete the specified ProductSet until after this operation has completed. It is also recommended to not add any of the Products involved in the batch delete to a new ProductSet while this operation is running because those Products may still end up deleted. It's not possible to undo the PurgeProducts operation. Therefore, it is recommended to keep the csv files used in ImportProductSets (if that was how you originally built the Product Set) before starting PurgeProducts, in case you need to re-import the data after deletion. If the plan is to purge all of the Products from a ProductSet and then re-use the empty ProductSet to re-import new Products into the empty ProductSet, you must wait until the PurgeProducts operation has finished for that ProductSet. The google.longrunning.Operation API can be used to keep track of the progress and results of the request. `Operation.metadata` contains `BatchOperationMetadata`. (progress)

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location in which the Products should be deleted. Format is `projects/PROJECT_ID/locations/... |

**Request body**: `PurgeProductsRequest`

**Response**: `Operation`

```typescript
const res = await vision.products.purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.products.patch`

**PATCH** `v1/{+name}`

Makes changes to a Product resource. Only the `display_name`, `description`, and `labels` fields can be updated right now. If labels are updated, the change will not be reflected in queries until the next index time. Possible errors: * Returns NOT_FOUND if the Product does not exist. * Returns INVALID_ARGUMENT if display_name is present in update_mask but is missing from the request or longer than 4096 characters. * Returns INVALID_ARGUMENT if description is present in update_mask but is longer than 4096 characters. * Returns INVALID_ARGUMENT if product_category is present in update_mask.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field i... |
| `updateMask` | `string` | query | No | The FieldMask that specifies which fields to update. If update_mask isn't specified, all mutable fields are to be upd... |

**Request body**: `Product`

**Response**: `Product`

```typescript
const res = await vision.products.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.products.get`

**GET** `v1/{+name}`

Gets information associated with a Product. Possible errors: * Returns NOT_FOUND if the Product does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Product to get. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID` |

**Response**: `Product`

```typescript
const res = await vision.products.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.products.create`

**POST** `v1/{+parent}/products`

Creates and returns a new product resource. Possible errors: * Returns INVALID_ARGUMENT if display_name is missing or longer than 4096 characters. * Returns INVALID_ARGUMENT if description is longer than 4096 characters. * Returns INVALID_ARGUMENT if product_category is missing or invalid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project in which the Product should be created. Format is `projects/PROJECT_ID/locations/LOC_ID`. |
| `productId` | `string` | query | No | A user-supplied resource id for this Product. If set, the server will attempt to use this value as the resource id. I... |

**Request body**: `Product`

**Response**: `Product`

```typescript
const res = await vision.products.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.products.delete`

**DELETE** `v1/{+name}`

Permanently deletes a product and its reference images. Metadata of the product and all its images will be deleted right away, but search queries against ProductSets containing the product may still work until all related caches are refreshed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of product to delete. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID` |

**Response**: `Empty`

```typescript
const res = await vision.products.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.products.referenceImages.get`

**GET** `v1/{+name}`

Gets information associated with a ReferenceImage. Possible errors: * Returns NOT_FOUND if the specified image does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ReferenceImage to get. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/P... |

**Response**: `ReferenceImage`

```typescript
const res = await vision.referenceImages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.products.referenceImages.create`

**POST** `v1/{+parent}/referenceImages`

Creates and returns a new ReferenceImage resource. The `bounding_poly` field is optional. If `bounding_poly` is not specified, the system will try to detect regions of interest in the image that are compatible with the product_category on the parent product. If it is specified, detection is ALWAYS skipped. The system converts polygons into non-rotated rectangles. Note that the pipeline will resize the image if the image resolution is too large to process (above 50MP). Possible errors: * Returns INVALID_ARGUMENT if the image_uri is missing or longer than 4096 characters. * Returns INVALID_ARGUMENT if the product does not exist. * Returns INVALID_ARGUMENT if bounding_poly is not provided, and nothing compatible with the parent product's product_category is detected. * Returns INVALID_ARGUMENT if bounding_poly contains more than 10 polygons.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the product in which to create the reference image. Format is `projects/PROJECT_ID/locatio... |
| `referenceImageId` | `string` | query | No | A user-supplied resource id for the ReferenceImage to be added. If set, the server will attempt to use this value as ... |

**Request body**: `ReferenceImage`

**Response**: `ReferenceImage`

```typescript
const res = await vision.referenceImages.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.products.referenceImages.delete`

**DELETE** `v1/{+name}`

Permanently deletes a reference image. The image metadata will be deleted right away, but search queries against ProductSets containing the image may still work until all related caches are refreshed. The actual image files are not deleted from Google Cloud Storage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the reference image to delete. Format is: `projects/PROJECT_ID/locations/LOC_ID/produc... |

**Response**: `Empty`

```typescript
const res = await vision.referenceImages.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.products.referenceImages.list`

**GET** `v1/{+parent}/referenceImages`

Lists reference images. Possible errors: * Returns NOT_FOUND if the parent product does not exist. * Returns INVALID_ARGUMENT if the page_size is greater than 100, or less than 1.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the product containing the reference images. Format is `projects/PROJECT_ID/locations/LOC_... |
| `pageSize` | `integer` | query | No | The maximum number of items to return. Default 10, maximum 100. |
| `pageToken` | `string` | query | No | A token identifying a page of results to be returned. This is the value of `nextPageToken` returned in a previous ref... |

**Response**: `ListReferenceImagesResponse`

```typescript
const res = await vision.referenceImages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.files.asyncBatchAnnotate`

**POST** `v1/{+parent}/files:asyncBatchAnnotate`

Run asynchronous image detection and annotation for a list of generic files, such as PDF files, which may contain multiple pages and multiple images per page. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `OperationMetadata` (metadata). `Operation.response` contains `AsyncBatchAnnotateFilesResponse` (results).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no ... |

**Request body**: `AsyncBatchAnnotateFilesRequest`

**Response**: `Operation`

```typescript
const res = await vision.files.asyncBatchAnnotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.files.annotate`

**POST** `v1/{+parent}/files:annotate`

Service that performs image detection and annotation for a batch of files. Now only "application/pdf", "image/tiff" and "image/gif" are supported. This service will extract at most 5 (customers can specify which 5 in AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each file provided and perform detection and annotation for each image extracted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no ... |

**Request body**: `BatchAnnotateFilesRequest`

**Response**: `BatchAnnotateFilesResponse`

```typescript
const res = await vision.files.annotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.productSets.addProduct`

**POST** `v1/{+name}:addProduct`

Adds a Product to the specified ProductSet. If the Product is already present, no change is made. One Product can be added to at most 100 ProductSets. Possible errors: * Returns NOT_FOUND if the Product or the ProductSet doesn't exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for the ProductSet to modify. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSet... |

**Request body**: `AddProductToProductSetRequest`

**Response**: `Empty`

```typescript
const res = await vision.productSets.addProduct({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.productSets.removeProduct`

**POST** `v1/{+name}:removeProduct`

Removes a Product from the specified ProductSet.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for the ProductSet to modify. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSet... |

**Request body**: `RemoveProductFromProductSetRequest`

**Response**: `Empty`

```typescript
const res = await vision.productSets.removeProduct({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.productSets.import`

**POST** `v1/{+parent}/productSets:import`

Asynchronous API that imports a list of reference images to specified product sets based on a list of image information. The google.longrunning.Operation API can be used to keep track of the progress and results of the request. `Operation.metadata` contains `BatchOperationMetadata`. (progress) `Operation.response` contains `ImportProductSetsResponse`. (results) The input source of this method is a csv file on Google Cloud Storage. For the format of the csv file please see ImportProductSetsGcsSource.csv_file_uri.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project in which the ProductSets should be imported. Format is `projects/PROJECT_ID/locations/LOC_ID`. |

**Request body**: `ImportProductSetsRequest`

**Response**: `Operation`

```typescript
const res = await vision.productSets.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.productSets.get`

**GET** `v1/{+name}`

Gets information associated with a ProductSet. Possible errors: * Returns NOT_FOUND if the ProductSet does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the ProductSet to get. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUC... |

**Response**: `ProductSet`

```typescript
const res = await vision.productSets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.productSets.delete`

**DELETE** `v1/{+name}`

Permanently deletes a ProductSet. Products and ReferenceImages in the ProductSet are not deleted. The actual image files are not deleted from Google Cloud Storage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the ProductSet to delete. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRO... |

**Response**: `Empty`

```typescript
const res = await vision.productSets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.productSets.patch`

**PATCH** `v1/{+name}`

Makes changes to a ProductSet resource. Only display_name can be updated currently. Possible errors: * Returns NOT_FOUND if the ProductSet does not exist. * Returns INVALID_ARGUMENT if display_name is present in update_mask but missing from the request or longer than 4096 characters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. Th... |
| `updateMask` | `string` | query | No | The FieldMask that specifies which fields to update. If update_mask isn't specified, all mutable fields are to be upd... |

**Request body**: `ProductSet`

**Response**: `ProductSet`

```typescript
const res = await vision.productSets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.productSets.create`

**POST** `v1/{+parent}/productSets`

Creates and returns a new ProductSet resource. Possible errors: * Returns INVALID_ARGUMENT if display_name is missing, or is longer than 4096 characters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project in which the ProductSet should be created. Format is `projects/PROJECT_ID/locations/LOC_ID`. |
| `productSetId` | `string` | query | No | A user-supplied resource id for this ProductSet. If set, the server will attempt to use this value as the resource id... |

**Request body**: `ProductSet`

**Response**: `ProductSet`

```typescript
const res = await vision.productSets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.productSets.list`

**GET** `v1/{+parent}/productSets`

Lists ProductSets in an unspecified order. Possible errors: * Returns INVALID_ARGUMENT if page_size is greater than 100, or less than 1.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project from which ProductSets should be listed. Format is `projects/PROJECT_ID/locations/LOC_ID`. |
| `pageSize` | `integer` | query | No | The maximum number of items to return. Default 10, maximum 100. |
| `pageToken` | `string` | query | No | The next_page_token returned from a previous List request, if any. |

**Response**: `ListProductSetsResponse`

```typescript
const res = await vision.productSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.productSets.products.list`

**GET** `v1/{+name}/products`

Lists the Products in a ProductSet, in an unspecified order. If the ProductSet does not exist, the products field of the response will be empty. Possible errors: * Returns INVALID_ARGUMENT if page_size is greater than 100 or less than 1.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The ProductSet resource for which to retrieve Products. Format is: `projects/PROJECT_ID/locations/LOC_ID/pr... |
| `pageSize` | `integer` | query | No | The maximum number of items to return. Default 10, maximum 100. |
| `pageToken` | `string` | query | No | The next_page_token returned from a previous List request, if any. |

**Response**: `ListProductsInProductSetResponse`

```typescript
const res = await vision.products.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.images.asyncBatchAnnotate`

**POST** `v1/{+parent}/images:asyncBatchAnnotate`

Run asynchronous image detection and annotation for a list of images. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `OperationMetadata` (metadata). `Operation.response` contains `AsyncBatchAnnotateImagesResponse` (results). This service will write image annotation outputs to json files in customer GCS bucket, each json file containing BatchAnnotateImagesResponse proto.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no ... |

**Request body**: `AsyncBatchAnnotateImagesRequest`

**Response**: `Operation`

```typescript
const res = await vision.images.asyncBatchAnnotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.images.annotate`

**POST** `v1/{+parent}/images:annotate`

Run image detection and annotation for a batch of images.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no ... |

**Request body**: `BatchAnnotateImagesRequest`

**Response**: `BatchAnnotateImagesResponse`

```typescript
const res = await vision.images.annotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await vision.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await vision.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.files.annotate`

**POST** `v1/{+parent}/files:annotate`

Service that performs image detection and annotation for a batch of files. Now only "application/pdf", "image/tiff" and "image/gif" are supported. This service will extract at most 5 (customers can specify which 5 in AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each file provided and perform detection and annotation for each image extracted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no ... |

**Request body**: `BatchAnnotateFilesRequest`

**Response**: `BatchAnnotateFilesResponse`

```typescript
const res = await vision.files.annotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.files.asyncBatchAnnotate`

**POST** `v1/{+parent}/files:asyncBatchAnnotate`

Run asynchronous image detection and annotation for a list of generic files, such as PDF files, which may contain multiple pages and multiple images per page. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `OperationMetadata` (metadata). `Operation.response` contains `AsyncBatchAnnotateFilesResponse` (results).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no ... |

**Request body**: `AsyncBatchAnnotateFilesRequest`

**Response**: `Operation`

```typescript
const res = await vision.files.asyncBatchAnnotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.images.annotate`

**POST** `v1/{+parent}/images:annotate`

Run image detection and annotation for a batch of images.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no ... |

**Request body**: `BatchAnnotateImagesRequest`

**Response**: `BatchAnnotateImagesResponse`

```typescript
const res = await vision.images.annotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.projects.images.asyncBatchAnnotate`

**POST** `v1/{+parent}/images:asyncBatchAnnotate`

Run asynchronous image detection and annotation for a list of images. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `OperationMetadata` (metadata). `Operation.response` contains `AsyncBatchAnnotateImagesResponse` (results). This service will write image annotation outputs to json files in customer GCS bucket, each json file containing BatchAnnotateImagesResponse proto.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no ... |

**Request body**: `AsyncBatchAnnotateImagesRequest`

**Response**: `Operation`

```typescript
const res = await vision.images.asyncBatchAnnotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.images.annotate`

**POST** `v1/images:annotate`

Run image detection and annotation for a batch of images.

**Request body**: `BatchAnnotateImagesRequest`

**Response**: `BatchAnnotateImagesResponse`

```typescript
const res = await vision.images.annotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.images.asyncBatchAnnotate`

**POST** `v1/images:asyncBatchAnnotate`

Run asynchronous image detection and annotation for a list of images. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `OperationMetadata` (metadata). `Operation.response` contains `AsyncBatchAnnotateImagesResponse` (results). This service will write image annotation outputs to json files in customer GCS bucket, each json file containing BatchAnnotateImagesResponse proto.

**Request body**: `AsyncBatchAnnotateImagesRequest`

**Response**: `Operation`

```typescript
const res = await vision.images.asyncBatchAnnotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.files.annotate`

**POST** `v1/files:annotate`

Service that performs image detection and annotation for a batch of files. Now only "application/pdf", "image/tiff" and "image/gif" are supported. This service will extract at most 5 (customers can specify which 5 in AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each file provided and perform detection and annotation for each image extracted.

**Request body**: `BatchAnnotateFilesRequest`

**Response**: `BatchAnnotateFilesResponse`

```typescript
const res = await vision.files.annotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

### `vision.files.asyncBatchAnnotate`

**POST** `v1/files:asyncBatchAnnotate`

Run asynchronous image detection and annotation for a list of generic files, such as PDF files, which may contain multiple pages and multiple images per page. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `OperationMetadata` (metadata). `Operation.response` contains `AsyncBatchAnnotateFilesResponse` (results).

**Request body**: `AsyncBatchAnnotateFilesRequest`

**Response**: `Operation`

```typescript
const res = await vision.files.asyncBatchAnnotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-vision`

---

## Schemas

### `AddProductToProductSetRequest`

Request message for the `AddProductToProductSet` method.

| Property | Type | Description |
|----------|------|-------------|
| `product` | `string` | Required. The resource name for the Product to be added to this ProductSet. Format is: `projects/... |

### `AnnotateFileRequest`

A request to annotate one single file, e.g. a PDF, TIFF or GIF file.

| Property | Type | Description |
|----------|------|-------------|
| `features` | `array<Feature>` | Required. Requested features. |
| `imageContext` | `ImageContext` | Additional context that may accompany the image(s) in the file. |
| `inputConfig` | `InputConfig` | Required. Information about the input file. |
| `pages` | `array<integer>` | Pages of the file to perform image annotation. Pages starts from 1, we assume the first page of t... |

### `AnnotateFileResponse`

Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | If set, represents the error message for the failed request. The `responses` field will not be se... |
| `inputConfig` | `InputConfig` | Information about the file for which this response is generated. |
| `responses` | `array<AnnotateImageResponse>` | Individual responses to images found within the file. This field will be empty if the `error` fie... |
| `totalPages` | `integer` | This field gives the total number of pages in the file. |

### `AnnotateImageRequest`

Request for performing Google Cloud Vision API tasks over a user-provided image, with user-requested features, and with context information.

| Property | Type | Description |
|----------|------|-------------|
| `features` | `array<Feature>` | Requested features. |
| `image` | `Image` | The image to be processed. |
| `imageContext` | `ImageContext` | Additional context that may accompany the image. |

### `AnnotateImageResponse`

Response to an image annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `ImageAnnotationContext` | If present, contextual information is needed to understand where this image comes from. |
| `cropHintsAnnotation` | `CropHintsAnnotation` | If present, crop hints have completed successfully. |
| `error` | `Status` | If set, represents the error message for the operation. Note that filled-in image annotations are... |
| `faceAnnotations` | `array<FaceAnnotation>` | If present, face detection has completed successfully. |
| `fullTextAnnotation` | `TextAnnotation` | If present, text (OCR) detection or document (OCR) text detection has completed successfully. Thi... |
| `imagePropertiesAnnotation` | `ImageProperties` | If present, image properties were extracted successfully. |
| `labelAnnotations` | `array<EntityAnnotation>` | If present, label detection has completed successfully. |
| `landmarkAnnotations` | `array<EntityAnnotation>` | If present, landmark detection has completed successfully. |
| `localizedObjectAnnotations` | `array<LocalizedObjectAnnotation>` | If present, localized object detection has completed successfully. This will be sorted descending... |
| `logoAnnotations` | `array<EntityAnnotation>` | If present, logo detection has completed successfully. |
| `productSearchResults` | `ProductSearchResults` | If present, product search has completed successfully. |
| `safeSearchAnnotation` | `SafeSearchAnnotation` | If present, safe-search annotation has completed successfully. |
| `textAnnotations` | `array<EntityAnnotation>` | If present, text (OCR) detection has completed successfully. |
| `webDetection` | `WebDetection` | If present, web detection has completed successfully. |

### `AsyncAnnotateFileRequest`

An offline file annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `features` | `array<Feature>` | Required. Requested features. |
| `imageContext` | `ImageContext` | Additional context that may accompany the image(s) in the file. |
| `inputConfig` | `InputConfig` | Required. Information about the input file. |
| `outputConfig` | `OutputConfig` | Required. The desired output location and metadata (e.g. format). |

### `AsyncAnnotateFileResponse`

The response for a single offline file annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `outputConfig` | `OutputConfig` | The output location and metadata from AsyncAnnotateFileRequest. |

### `AsyncBatchAnnotateFilesRequest`

Multiple async file annotation requests are batched into a single service call.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Optional. The labels with user-defined metadata for the request. Label keys and values can be no ... |
| `parent` | `string` | Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{l... |
| `requests` | `array<AsyncAnnotateFileRequest>` | Required. Individual async file annotation requests for this batch. |

### `AsyncBatchAnnotateFilesResponse`

Response to an async batch file annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<AsyncAnnotateFileResponse>` | The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest. |

### `AsyncBatchAnnotateImagesRequest`

Request for async image annotation for a list of images.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Optional. The labels with user-defined metadata for the request. Label keys and values can be no ... |
| `outputConfig` | `OutputConfig` | Required. The desired output location and metadata (e.g. format). |
| `parent` | `string` | Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{l... |
| `requests` | `array<AnnotateImageRequest>` | Required. Individual image annotation requests for this batch. |

### `AsyncBatchAnnotateImagesResponse`

Response to an async batch image annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `outputConfig` | `OutputConfig` | The output location and metadata from AsyncBatchAnnotateImagesRequest. |

### `BatchAnnotateFilesRequest`

A list of requests to annotate files using the BatchAnnotateFiles API.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Optional. The labels with user-defined metadata for the request. Label keys and values can be no ... |
| `parent` | `string` | Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{l... |
| `requests` | `array<AnnotateFileRequest>` | Required. The list of file annotation requests. Right now we support only one AnnotateFileRequest... |

### `BatchAnnotateFilesResponse`

A list of file annotation responses.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<AnnotateFileResponse>` | The list of file annotation responses, each response corresponding to each AnnotateFileRequest in... |

### `BatchAnnotateImagesRequest`

Multiple image annotation requests are batched into a single service call.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Optional. The labels with user-defined metadata for the request. Label keys and values can be no ... |
| `parent` | `string` | Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{l... |
| `requests` | `array<AnnotateImageRequest>` | Required. Individual image annotation requests for this batch. |

### `BatchAnnotateImagesResponse`

Response to a batch image annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<AnnotateImageResponse>` | Individual responses to image annotation requests within the batch. |

### `BatchOperationMetadata`

Metadata for the batch operations such as the current state. This is included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time when the batch request is finished and google.longrunning.Operation.done is set to true. |
| `state` | `string` | The current state of the batch operation. |
| `submitTime` | `string` | The time when the batch request was submitted to the server. |

### `Block`

Logical element on the page.

| Property | Type | Description |
|----------|------|-------------|
| `blockType` | `string` | Detected block type (text, image etc) for this block. |
| `boundingBox` | `BoundingPoly` | The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-righ... |
| `confidence` | `number` | Confidence of the OCR results on the block. Range [0, 1]. |
| `paragraphs` | `array<Paragraph>` | List of paragraphs in this block (if this blocks is of type text). |
| `property` | `TextProperty` | Additional information detected for the block. |

### `BoundingPoly`

A bounding polygon for the detected image annotation.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedVertices` | `array<NormalizedVertex>` | The bounding polygon normalized vertices. |
| `vertices` | `array<Vertex>` | The bounding polygon vertices. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Color`

Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to and from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of `java.awt.Color` in Java; it can also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little work, it can be easily formatted into a CSS `rgba()` string in JavaScript. This reference page doesn't have information about the absolute color space that should be used to interpret the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most `1e-5`. Example (Java): import com.google.type.Color; // ... public static java.awt.Color fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build()); } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } // ... Example (JavaScript): // ... var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join(''); }; var rgbToCssColor = function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) { resultBuilder.push('0'); } resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...

| Property | Type | Description |
|----------|------|-------------|
| `alpha` | `number` | The fraction of this color that should be applied to the pixel. That is, the final pixel color is... |
| `blue` | `number` | The amount of blue in the color as a value in the interval [0, 1]. |
| `green` | `number` | The amount of green in the color as a value in the interval [0, 1]. |
| `red` | `number` | The amount of red in the color as a value in the interval [0, 1]. |

### `ColorInfo`

Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `Color` | RGB components of the color. |
| `pixelFraction` | `number` | The fraction of pixels the color occupies in the image. Value in range [0, 1]. |
| `score` | `number` | Image-specific score for this color. Value in range [0, 1]. |

### `CropHint`

Single crop hint that is used to generate a new crop when serving an image.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `BoundingPoly` | The bounding polygon for the crop region. The coordinates of the bounding box are in the original... |
| `confidence` | `number` | Confidence of this being a salient region. Range [0, 1]. |
| `importanceFraction` | `number` | Fraction of importance of this salient region with respect to the original image. |

### `CropHintsAnnotation`

Set of crop hints that are used to generate new crops when serving images.

| Property | Type | Description |
|----------|------|-------------|
| `cropHints` | `array<CropHint>` | Crop hint results. |

### `CropHintsParams`

Parameters for crop hints annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `aspectRatios` | `array<number>` | Aspect ratios in floats, representing the ratio of the width to the height of the image. For exam... |

### `DetectedBreak`

Detected start or end of a structural component.

| Property | Type | Description |
|----------|------|-------------|
| `isPrefix` | `boolean` | True if break prepends the element. |
| `type` | `string` | Detected break type. |

### `DetectedLanguage`

Detected language for a structural component.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence of detected language. Range [0, 1]. |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |

### `DominantColorsAnnotation`

Set of dominant colors and their corresponding scores.

| Property | Type | Description |
|----------|------|-------------|
| `colors` | `array<ColorInfo>` | RGB color values with their score and pixel fraction. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EntityAnnotation`

Set of detected entity features.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `BoundingPoly` | Image region to which this entity belongs. Not produced for `LABEL_DETECTION` features. |
| `confidence` | `number` | **Deprecated. Use `score` instead.** The accuracy of the entity detection in an image. For exampl... |
| `description` | `string` | Entity textual description, expressed in its `locale` language. |
| `locale` | `string` | The language code for the locale in which the entity textual `description` is expressed. |
| `locations` | `array<LocationInfo>` | The location information for the detected entity. Multiple `LocationInfo` elements can be present... |
| `mid` | `string` | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://develo... |
| `properties` | `array<Property>` | Some entities may have optional user-supplied `Property` (name/value) fields, such a score or str... |
| `score` | `number` | Overall score of the result. Range [0, 1]. |
| `topicality` | `number` | The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevanc... |

### `FaceAnnotation`

A face annotation object contains the results of face detection.

| Property | Type | Description |
|----------|------|-------------|
| `angerLikelihood` | `string` | Anger likelihood. |
| `blurredLikelihood` | `string` | Blurred likelihood. |
| `boundingPoly` | `BoundingPoly` | The bounding polygon around the face. The coordinates of the bounding box are in the original ima... |
| `detectionConfidence` | `number` | Detection confidence. Range [0, 1]. |
| `fdBoundingPoly` | `BoundingPoly` | The `fd_bounding_poly` bounding polygon is tighter than the `boundingPoly`, and encloses only the... |
| `headwearLikelihood` | `string` | Headwear likelihood. |
| `joyLikelihood` | `string` | Joy likelihood. |
| `landmarkingConfidence` | `number` | Face landmarking confidence. Range [0, 1]. |
| `landmarks` | `array<Landmark>` | Detected face landmarks. |
| `panAngle` | `number` | Yaw angle, which indicates the leftward/rightward angle that the face is pointing relative to the... |
| `rollAngle` | `number` | Roll angle, which indicates the amount of clockwise/anti-clockwise rotation of the face relative ... |
| `sorrowLikelihood` | `string` | Sorrow likelihood. |
| `surpriseLikelihood` | `string` | Surprise likelihood. |
| `tiltAngle` | `number` | Pitch angle, which indicates the upwards/downwards angle that the face is pointing relative to th... |
| `underExposedLikelihood` | `string` | Under-exposed likelihood. |

### `Feature`

The type of Google Cloud Vision API detection to perform, and the maximum number of results to return for that type. Multiple `Feature` objects can be specified in the `features` list.

| Property | Type | Description |
|----------|------|-------------|
| `maxResults` | `integer` | Maximum number of results of this type. Does not apply to `TEXT_DETECTION`, `DOCUMENT_TEXT_DETECT... |
| `model` | `string` | Model to use for the feature. Supported values: "builtin/stable" (the default if unset) and "buil... |
| `type` | `string` | The feature type. |

### `GcsDestination`

The Google Cloud Storage location where the output will be written to.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format ... |

### `GcsSource`

The Google Cloud Storage location where the input will be read from.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wil... |

### `GoogleCloudVisionV1p1beta1AnnotateFileResponse`

Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | If set, represents the error message for the failed request. The `responses` field will not be se... |
| `inputConfig` | `GoogleCloudVisionV1p1beta1InputConfig` | Information about the file for which this response is generated. |
| `responses` | `array<GoogleCloudVisionV1p1beta1AnnotateImageResponse>` | Individual responses to images found within the file. This field will be empty if the `error` fie... |
| `totalPages` | `integer` | This field gives the total number of pages in the file. |

### `GoogleCloudVisionV1p1beta1AnnotateImageResponse`

Response to an image annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `GoogleCloudVisionV1p1beta1ImageAnnotationContext` | If present, contextual information is needed to understand where this image comes from. |
| `cropHintsAnnotation` | `GoogleCloudVisionV1p1beta1CropHintsAnnotation` | If present, crop hints have completed successfully. |
| `error` | `Status` | If set, represents the error message for the operation. Note that filled-in image annotations are... |
| `faceAnnotations` | `array<GoogleCloudVisionV1p1beta1FaceAnnotation>` | If present, face detection has completed successfully. |
| `fullTextAnnotation` | `GoogleCloudVisionV1p1beta1TextAnnotation` | If present, text (OCR) detection or document (OCR) text detection has completed successfully. Thi... |
| `imagePropertiesAnnotation` | `GoogleCloudVisionV1p1beta1ImageProperties` | If present, image properties were extracted successfully. |
| `labelAnnotations` | `array<GoogleCloudVisionV1p1beta1EntityAnnotation>` | If present, label detection has completed successfully. |
| `landmarkAnnotations` | `array<GoogleCloudVisionV1p1beta1EntityAnnotation>` | If present, landmark detection has completed successfully. |
| `localizedObjectAnnotations` | `array<GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation>` | If present, localized object detection has completed successfully. This will be sorted descending... |
| `logoAnnotations` | `array<GoogleCloudVisionV1p1beta1EntityAnnotation>` | If present, logo detection has completed successfully. |
| `productSearchResults` | `GoogleCloudVisionV1p1beta1ProductSearchResults` | If present, product search has completed successfully. |
| `safeSearchAnnotation` | `GoogleCloudVisionV1p1beta1SafeSearchAnnotation` | If present, safe-search annotation has completed successfully. |
| `textAnnotations` | `array<GoogleCloudVisionV1p1beta1EntityAnnotation>` | If present, text (OCR) detection has completed successfully. |
| `webDetection` | `GoogleCloudVisionV1p1beta1WebDetection` | If present, web detection has completed successfully. |

### `GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse`

The response for a single offline file annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `outputConfig` | `GoogleCloudVisionV1p1beta1OutputConfig` | The output location and metadata from AsyncAnnotateFileRequest. |

### `GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse`

Response to an async batch file annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse>` | The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest. |

### `GoogleCloudVisionV1p1beta1Block`

Logical element on the page.

| Property | Type | Description |
|----------|------|-------------|
| `blockType` | `string` | Detected block type (text, image etc) for this block. |
| `boundingBox` | `GoogleCloudVisionV1p1beta1BoundingPoly` | The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-righ... |
| `confidence` | `number` | Confidence of the OCR results on the block. Range [0, 1]. |
| `paragraphs` | `array<GoogleCloudVisionV1p1beta1Paragraph>` | List of paragraphs in this block (if this blocks is of type text). |
| `property` | `GoogleCloudVisionV1p1beta1TextAnnotationTextProperty` | Additional information detected for the block. |

### `GoogleCloudVisionV1p1beta1BoundingPoly`

A bounding polygon for the detected image annotation.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedVertices` | `array<GoogleCloudVisionV1p1beta1NormalizedVertex>` | The bounding polygon normalized vertices. |
| `vertices` | `array<GoogleCloudVisionV1p1beta1Vertex>` | The bounding polygon vertices. |

### `GoogleCloudVisionV1p1beta1ColorInfo`

Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `Color` | RGB components of the color. |
| `pixelFraction` | `number` | The fraction of pixels the color occupies in the image. Value in range [0, 1]. |
| `score` | `number` | Image-specific score for this color. Value in range [0, 1]. |

### `GoogleCloudVisionV1p1beta1CropHint`

Single crop hint that is used to generate a new crop when serving an image.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p1beta1BoundingPoly` | The bounding polygon for the crop region. The coordinates of the bounding box are in the original... |
| `confidence` | `number` | Confidence of this being a salient region. Range [0, 1]. |
| `importanceFraction` | `number` | Fraction of importance of this salient region with respect to the original image. |

### `GoogleCloudVisionV1p1beta1CropHintsAnnotation`

Set of crop hints that are used to generate new crops when serving images.

| Property | Type | Description |
|----------|------|-------------|
| `cropHints` | `array<GoogleCloudVisionV1p1beta1CropHint>` | Crop hint results. |

### `GoogleCloudVisionV1p1beta1DominantColorsAnnotation`

Set of dominant colors and their corresponding scores.

| Property | Type | Description |
|----------|------|-------------|
| `colors` | `array<GoogleCloudVisionV1p1beta1ColorInfo>` | RGB color values with their score and pixel fraction. |

### `GoogleCloudVisionV1p1beta1EntityAnnotation`

Set of detected entity features.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p1beta1BoundingPoly` | Image region to which this entity belongs. Not produced for `LABEL_DETECTION` features. |
| `confidence` | `number` | **Deprecated. Use `score` instead.** The accuracy of the entity detection in an image. For exampl... |
| `description` | `string` | Entity textual description, expressed in its `locale` language. |
| `locale` | `string` | The language code for the locale in which the entity textual `description` is expressed. |
| `locations` | `array<GoogleCloudVisionV1p1beta1LocationInfo>` | The location information for the detected entity. Multiple `LocationInfo` elements can be present... |
| `mid` | `string` | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://develo... |
| `properties` | `array<GoogleCloudVisionV1p1beta1Property>` | Some entities may have optional user-supplied `Property` (name/value) fields, such a score or str... |
| `score` | `number` | Overall score of the result. Range [0, 1]. |
| `topicality` | `number` | The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevanc... |

### `GoogleCloudVisionV1p1beta1FaceAnnotation`

A face annotation object contains the results of face detection.

| Property | Type | Description |
|----------|------|-------------|
| `angerLikelihood` | `string` | Anger likelihood. |
| `blurredLikelihood` | `string` | Blurred likelihood. |
| `boundingPoly` | `GoogleCloudVisionV1p1beta1BoundingPoly` | The bounding polygon around the face. The coordinates of the bounding box are in the original ima... |
| `detectionConfidence` | `number` | Detection confidence. Range [0, 1]. |
| `fdBoundingPoly` | `GoogleCloudVisionV1p1beta1BoundingPoly` | The `fd_bounding_poly` bounding polygon is tighter than the `boundingPoly`, and encloses only the... |
| `headwearLikelihood` | `string` | Headwear likelihood. |
| `joyLikelihood` | `string` | Joy likelihood. |
| `landmarkingConfidence` | `number` | Face landmarking confidence. Range [0, 1]. |
| `landmarks` | `array<GoogleCloudVisionV1p1beta1FaceAnnotationLandmark>` | Detected face landmarks. |
| `panAngle` | `number` | Yaw angle, which indicates the leftward/rightward angle that the face is pointing relative to the... |
| `rollAngle` | `number` | Roll angle, which indicates the amount of clockwise/anti-clockwise rotation of the face relative ... |
| `sorrowLikelihood` | `string` | Sorrow likelihood. |
| `surpriseLikelihood` | `string` | Surprise likelihood. |
| `tiltAngle` | `number` | Pitch angle, which indicates the upwards/downwards angle that the face is pointing relative to th... |
| `underExposedLikelihood` | `string` | Under-exposed likelihood. |

### `GoogleCloudVisionV1p1beta1FaceAnnotationLandmark`

A face-specific landmark (for example, a face feature). Landmark positions may fall outside the bounds of the image if the face is near one or more edges of the image. Therefore it is NOT guaranteed that `0 <= x < width` or `0 <= y < height`.

| Property | Type | Description |
|----------|------|-------------|
| `position` | `GoogleCloudVisionV1p1beta1Position` | Face landmark position. |
| `type` | `string` | Face landmark type. |

### `GoogleCloudVisionV1p1beta1GcsDestination`

The Google Cloud Storage location where the output will be written to.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format ... |

### `GoogleCloudVisionV1p1beta1GcsSource`

The Google Cloud Storage location where the input will be read from.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wil... |

### `GoogleCloudVisionV1p1beta1ImageAnnotationContext`

If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.

| Property | Type | Description |
|----------|------|-------------|
| `pageNumber` | `integer` | If the file was a PDF or TIFF, this field gives the page number within the file used to produce t... |
| `uri` | `string` | The URI of the file used to produce the image. |

### `GoogleCloudVisionV1p1beta1ImageProperties`

Stores image properties, such as dominant colors.

| Property | Type | Description |
|----------|------|-------------|
| `dominantColors` | `GoogleCloudVisionV1p1beta1DominantColorsAnnotation` | If present, dominant colors completed successfully. |

### `GoogleCloudVisionV1p1beta1InputConfig`

The desired input location and metadata.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | File content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers us... |
| `gcsSource` | `GoogleCloudVisionV1p1beta1GcsSource` | The Google Cloud Storage location to read the input from. |
| `mimeType` | `string` | The type of the file. Currently only "application/pdf", "image/tiff" and "image/gif" are supporte... |

### `GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation`

Set of detected objects with bounding boxes.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p1beta1BoundingPoly` | Image region to which this object belongs. This must be populated. |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |
| `mid` | `string` | Object ID that should align with EntityAnnotation mid. |
| `name` | `string` | Object name, expressed in its `language_code` language. |
| `score` | `number` | Score of the result. Range [0, 1]. |

### `GoogleCloudVisionV1p1beta1LocationInfo`

Detected entity location information.

| Property | Type | Description |
|----------|------|-------------|
| `latLng` | `LatLng` | lat/long location coordinates. |

### `GoogleCloudVisionV1p1beta1NormalizedVertex`

A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |

### `GoogleCloudVisionV1p1beta1OperationMetadata`

Contains metadata for the BatchAnnotateImages operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time when the batch request was received. |
| `state` | `string` | Current state of the batch operation. |
| `updateTime` | `string` | The time when the operation result was last updated. |

### `GoogleCloudVisionV1p1beta1OutputConfig`

The desired output location and metadata.

| Property | Type | Description |
|----------|------|-------------|
| `batchSize` | `integer` | The max number of response protos to put into each output JSON file on Google Cloud Storage. The ... |
| `gcsDestination` | `GoogleCloudVisionV1p1beta1GcsDestination` | The Google Cloud Storage location to write the output(s) to. |

### `GoogleCloudVisionV1p1beta1Page`

Detected page from OCR.

| Property | Type | Description |
|----------|------|-------------|
| `blocks` | `array<GoogleCloudVisionV1p1beta1Block>` | List of blocks of text, images etc on this page. |
| `confidence` | `number` | Confidence of the OCR results on the page. Range [0, 1]. |
| `height` | `integer` | Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels. |
| `property` | `GoogleCloudVisionV1p1beta1TextAnnotationTextProperty` | Additional information detected on the page. |
| `width` | `integer` | Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels. |

### `GoogleCloudVisionV1p1beta1Paragraph`

Structural unit of text representing a number of words in certain order.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `GoogleCloudVisionV1p1beta1BoundingPoly` | The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-... |
| `confidence` | `number` | Confidence of the OCR results for the paragraph. Range [0, 1]. |
| `property` | `GoogleCloudVisionV1p1beta1TextAnnotationTextProperty` | Additional information detected for the paragraph. |
| `words` | `array<GoogleCloudVisionV1p1beta1Word>` | List of all words in this paragraph. |

### `GoogleCloudVisionV1p1beta1Position`

A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |
| `z` | `number` | Z coordinate (or depth). |

### `GoogleCloudVisionV1p1beta1Product`

A Product contains ReferenceImages.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | User-provided metadata to be stored with this product. Must be at most 4096 characters long. |
| `displayName` | `string` | The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long. |
| `name` | `string` | The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODU... |
| `productCategory` | `string` | Immutable. The category for the product identified by the reference image. This should be one of ... |
| `productLabels` | `array<GoogleCloudVisionV1p1beta1ProductKeyValue>` | Key-value pairs that can be attached to a product. At query time, constraints can be specified ba... |

### `GoogleCloudVisionV1p1beta1ProductKeyValue`

A product label represented as a key-value pair.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes. |
| `value` | `string` | The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes. |

### `GoogleCloudVisionV1p1beta1ProductSearchResults`

Results for a product search request.

| Property | Type | Description |
|----------|------|-------------|
| `indexTime` | `string` | Timestamp of the index which provided these results. Products added to the product set and produc... |
| `productGroupedResults` | `array<GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult>` | List of results grouped by products detected in the query image. Each entry corresponds to one bo... |
| `results` | `array<GoogleCloudVisionV1p1beta1ProductSearchResultsResult>` | List of results, one for each product match. |

### `GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult`

Information about the products similar to a single product in a query image.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p1beta1BoundingPoly` | The bounding polygon around the product detected in the query image. |
| `objectAnnotations` | `array<GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation>` | List of generic predictions for the object in the bounding box. |
| `results` | `array<GoogleCloudVisionV1p1beta1ProductSearchResultsResult>` | List of results, one for each product match. |

### `GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation`

Prediction for what the object in the bounding box is.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |
| `mid` | `string` | Object ID that should align with EntityAnnotation mid. |
| `name` | `string` | Object name, expressed in its `language_code` language. |
| `score` | `number` | Score of the result. Range [0, 1]. |

### `GoogleCloudVisionV1p1beta1ProductSearchResultsResult`

Information about a product.

| Property | Type | Description |
|----------|------|-------------|
| `image` | `string` | The resource name of the image from the product that is the closest match to the query. |
| `product` | `GoogleCloudVisionV1p1beta1Product` | The Product. |
| `score` | `number` | A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence). |

### `GoogleCloudVisionV1p1beta1Property`

A `Property` consists of a user-supplied name/value pair.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the property. |
| `uint64Value` | `string` | Value of numeric properties. |
| `value` | `string` | Value of the property. |

### `GoogleCloudVisionV1p1beta1SafeSearchAnnotation`

Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).

| Property | Type | Description |
|----------|------|-------------|
| `adult` | `string` | Represents the adult content likelihood for the image. Adult content may contain elements such as... |
| `medical` | `string` | Likelihood that this is a medical image. |
| `racy` | `string` | Likelihood that the request image contains racy content. Racy content may include (but is not lim... |
| `spoof` | `string` | Spoof likelihood. The likelihood that an modification was made to the image's canonical version t... |
| `violence` | `string` | Likelihood that this image contains violent content. Violent content may include death, serious h... |

### `GoogleCloudVisionV1p1beta1Symbol`

A single symbol representation.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `GoogleCloudVisionV1p1beta1BoundingPoly` | The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-rig... |
| `confidence` | `number` | Confidence of the OCR results for the symbol. Range [0, 1]. |
| `property` | `GoogleCloudVisionV1p1beta1TextAnnotationTextProperty` | Additional information detected for the symbol. |
| `text` | `string` | The actual UTF-8 representation of the symbol. |

### `GoogleCloudVisionV1p1beta1TextAnnotation`

TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.

| Property | Type | Description |
|----------|------|-------------|
| `pages` | `array<GoogleCloudVisionV1p1beta1Page>` | List of pages detected by OCR. |
| `text` | `string` | UTF-8 text detected on the pages. |

### `GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak`

Detected start or end of a structural component.

| Property | Type | Description |
|----------|------|-------------|
| `isPrefix` | `boolean` | True if break prepends the element. |
| `type` | `string` | Detected break type. |

### `GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage`

Detected language for a structural component.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence of detected language. Range [0, 1]. |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |

### `GoogleCloudVisionV1p1beta1TextAnnotationTextProperty`

Additional information detected on the structural component.

| Property | Type | Description |
|----------|------|-------------|
| `detectedBreak` | `GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak` | Detected start or end of a text segment. |
| `detectedLanguages` | `array<GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage>` | A list of detected languages together with confidence. |

### `GoogleCloudVisionV1p1beta1Vertex`

A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `integer` | X coordinate. |
| `y` | `integer` | Y coordinate. |

### `GoogleCloudVisionV1p1beta1WebDetection`

Relevant information for the image from the Internet.

| Property | Type | Description |
|----------|------|-------------|
| `bestGuessLabels` | `array<GoogleCloudVisionV1p1beta1WebDetectionWebLabel>` | The service's best guess as to the topic of the request image. Inferred from similar images on th... |
| `fullMatchingImages` | `array<GoogleCloudVisionV1p1beta1WebDetectionWebImage>` | Fully matching images from the Internet. Can include resized copies of the query image. |
| `pagesWithMatchingImages` | `array<GoogleCloudVisionV1p1beta1WebDetectionWebPage>` | Web pages containing the matching images from the Internet. |
| `partialMatchingImages` | `array<GoogleCloudVisionV1p1beta1WebDetectionWebImage>` | Partial matching images from the Internet. Those images are similar enough to share some key-poin... |
| `visuallySimilarImages` | `array<GoogleCloudVisionV1p1beta1WebDetectionWebImage>` | The visually similar image results. |
| `webEntities` | `array<GoogleCloudVisionV1p1beta1WebDetectionWebEntity>` | Deduced entities from similar images on the Internet. |

### `GoogleCloudVisionV1p1beta1WebDetectionWebEntity`

Entity deduced from similar images on the Internet.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Canonical description of the entity, in English. |
| `entityId` | `string` | Opaque entity ID. |
| `score` | `number` | Overall relevancy score for the entity. Not normalized and not comparable across different image ... |

### `GoogleCloudVisionV1p1beta1WebDetectionWebImage`

Metadata for online images.

| Property | Type | Description |
|----------|------|-------------|
| `score` | `number` | (Deprecated) Overall relevancy score for the image. |
| `url` | `string` | The result image URL. |

### `GoogleCloudVisionV1p1beta1WebDetectionWebLabel`

Label to provide extra metadata for the web detection.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | Label for extra metadata. |
| `languageCode` | `string` | The BCP-47 language code for `label`, such as "en-US" or "sr-Latn". For more information, see htt... |

### `GoogleCloudVisionV1p1beta1WebDetectionWebPage`

Metadata for web pages.

| Property | Type | Description |
|----------|------|-------------|
| `fullMatchingImages` | `array<GoogleCloudVisionV1p1beta1WebDetectionWebImage>` | Fully matching images on the page. Can include resized copies of the query image. |
| `pageTitle` | `string` | Title for the web page, may contain HTML markups. |
| `partialMatchingImages` | `array<GoogleCloudVisionV1p1beta1WebDetectionWebImage>` | Partial matching images on the page. Those images are similar enough to share some key-point feat... |
| `score` | `number` | (Deprecated) Overall relevancy score for the web page. |
| `url` | `string` | The result web page URL. |

### `GoogleCloudVisionV1p1beta1Word`

A word representation.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `GoogleCloudVisionV1p1beta1BoundingPoly` | The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right... |
| `confidence` | `number` | Confidence of the OCR results for the word. Range [0, 1]. |
| `property` | `GoogleCloudVisionV1p1beta1TextAnnotationTextProperty` | Additional information detected for the word. |
| `symbols` | `array<GoogleCloudVisionV1p1beta1Symbol>` | List of symbols in the word. The order of the symbols follows the natural reading order. |

### `GoogleCloudVisionV1p2beta1AnnotateFileResponse`

Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | If set, represents the error message for the failed request. The `responses` field will not be se... |
| `inputConfig` | `GoogleCloudVisionV1p2beta1InputConfig` | Information about the file for which this response is generated. |
| `responses` | `array<GoogleCloudVisionV1p2beta1AnnotateImageResponse>` | Individual responses to images found within the file. This field will be empty if the `error` fie... |
| `totalPages` | `integer` | This field gives the total number of pages in the file. |

### `GoogleCloudVisionV1p2beta1AnnotateImageResponse`

Response to an image annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `GoogleCloudVisionV1p2beta1ImageAnnotationContext` | If present, contextual information is needed to understand where this image comes from. |
| `cropHintsAnnotation` | `GoogleCloudVisionV1p2beta1CropHintsAnnotation` | If present, crop hints have completed successfully. |
| `error` | `Status` | If set, represents the error message for the operation. Note that filled-in image annotations are... |
| `faceAnnotations` | `array<GoogleCloudVisionV1p2beta1FaceAnnotation>` | If present, face detection has completed successfully. |
| `fullTextAnnotation` | `GoogleCloudVisionV1p2beta1TextAnnotation` | If present, text (OCR) detection or document (OCR) text detection has completed successfully. Thi... |
| `imagePropertiesAnnotation` | `GoogleCloudVisionV1p2beta1ImageProperties` | If present, image properties were extracted successfully. |
| `labelAnnotations` | `array<GoogleCloudVisionV1p2beta1EntityAnnotation>` | If present, label detection has completed successfully. |
| `landmarkAnnotations` | `array<GoogleCloudVisionV1p2beta1EntityAnnotation>` | If present, landmark detection has completed successfully. |
| `localizedObjectAnnotations` | `array<GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation>` | If present, localized object detection has completed successfully. This will be sorted descending... |
| `logoAnnotations` | `array<GoogleCloudVisionV1p2beta1EntityAnnotation>` | If present, logo detection has completed successfully. |
| `productSearchResults` | `GoogleCloudVisionV1p2beta1ProductSearchResults` | If present, product search has completed successfully. |
| `safeSearchAnnotation` | `GoogleCloudVisionV1p2beta1SafeSearchAnnotation` | If present, safe-search annotation has completed successfully. |
| `textAnnotations` | `array<GoogleCloudVisionV1p2beta1EntityAnnotation>` | If present, text (OCR) detection has completed successfully. |
| `webDetection` | `GoogleCloudVisionV1p2beta1WebDetection` | If present, web detection has completed successfully. |

### `GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse`

The response for a single offline file annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `outputConfig` | `GoogleCloudVisionV1p2beta1OutputConfig` | The output location and metadata from AsyncAnnotateFileRequest. |

### `GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse`

Response to an async batch file annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse>` | The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest. |

### `GoogleCloudVisionV1p2beta1Block`

Logical element on the page.

| Property | Type | Description |
|----------|------|-------------|
| `blockType` | `string` | Detected block type (text, image etc) for this block. |
| `boundingBox` | `GoogleCloudVisionV1p2beta1BoundingPoly` | The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-righ... |
| `confidence` | `number` | Confidence of the OCR results on the block. Range [0, 1]. |
| `paragraphs` | `array<GoogleCloudVisionV1p2beta1Paragraph>` | List of paragraphs in this block (if this blocks is of type text). |
| `property` | `GoogleCloudVisionV1p2beta1TextAnnotationTextProperty` | Additional information detected for the block. |

### `GoogleCloudVisionV1p2beta1BoundingPoly`

A bounding polygon for the detected image annotation.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedVertices` | `array<GoogleCloudVisionV1p2beta1NormalizedVertex>` | The bounding polygon normalized vertices. |
| `vertices` | `array<GoogleCloudVisionV1p2beta1Vertex>` | The bounding polygon vertices. |

### `GoogleCloudVisionV1p2beta1ColorInfo`

Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `Color` | RGB components of the color. |
| `pixelFraction` | `number` | The fraction of pixels the color occupies in the image. Value in range [0, 1]. |
| `score` | `number` | Image-specific score for this color. Value in range [0, 1]. |

### `GoogleCloudVisionV1p2beta1CropHint`

Single crop hint that is used to generate a new crop when serving an image.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p2beta1BoundingPoly` | The bounding polygon for the crop region. The coordinates of the bounding box are in the original... |
| `confidence` | `number` | Confidence of this being a salient region. Range [0, 1]. |
| `importanceFraction` | `number` | Fraction of importance of this salient region with respect to the original image. |

### `GoogleCloudVisionV1p2beta1CropHintsAnnotation`

Set of crop hints that are used to generate new crops when serving images.

| Property | Type | Description |
|----------|------|-------------|
| `cropHints` | `array<GoogleCloudVisionV1p2beta1CropHint>` | Crop hint results. |

### `GoogleCloudVisionV1p2beta1DominantColorsAnnotation`

Set of dominant colors and their corresponding scores.

| Property | Type | Description |
|----------|------|-------------|
| `colors` | `array<GoogleCloudVisionV1p2beta1ColorInfo>` | RGB color values with their score and pixel fraction. |

### `GoogleCloudVisionV1p2beta1EntityAnnotation`

Set of detected entity features.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p2beta1BoundingPoly` | Image region to which this entity belongs. Not produced for `LABEL_DETECTION` features. |
| `confidence` | `number` | **Deprecated. Use `score` instead.** The accuracy of the entity detection in an image. For exampl... |
| `description` | `string` | Entity textual description, expressed in its `locale` language. |
| `locale` | `string` | The language code for the locale in which the entity textual `description` is expressed. |
| `locations` | `array<GoogleCloudVisionV1p2beta1LocationInfo>` | The location information for the detected entity. Multiple `LocationInfo` elements can be present... |
| `mid` | `string` | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://develo... |
| `properties` | `array<GoogleCloudVisionV1p2beta1Property>` | Some entities may have optional user-supplied `Property` (name/value) fields, such a score or str... |
| `score` | `number` | Overall score of the result. Range [0, 1]. |
| `topicality` | `number` | The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevanc... |

### `GoogleCloudVisionV1p2beta1FaceAnnotation`

A face annotation object contains the results of face detection.

| Property | Type | Description |
|----------|------|-------------|
| `angerLikelihood` | `string` | Anger likelihood. |
| `blurredLikelihood` | `string` | Blurred likelihood. |
| `boundingPoly` | `GoogleCloudVisionV1p2beta1BoundingPoly` | The bounding polygon around the face. The coordinates of the bounding box are in the original ima... |
| `detectionConfidence` | `number` | Detection confidence. Range [0, 1]. |
| `fdBoundingPoly` | `GoogleCloudVisionV1p2beta1BoundingPoly` | The `fd_bounding_poly` bounding polygon is tighter than the `boundingPoly`, and encloses only the... |
| `headwearLikelihood` | `string` | Headwear likelihood. |
| `joyLikelihood` | `string` | Joy likelihood. |
| `landmarkingConfidence` | `number` | Face landmarking confidence. Range [0, 1]. |
| `landmarks` | `array<GoogleCloudVisionV1p2beta1FaceAnnotationLandmark>` | Detected face landmarks. |
| `panAngle` | `number` | Yaw angle, which indicates the leftward/rightward angle that the face is pointing relative to the... |
| `rollAngle` | `number` | Roll angle, which indicates the amount of clockwise/anti-clockwise rotation of the face relative ... |
| `sorrowLikelihood` | `string` | Sorrow likelihood. |
| `surpriseLikelihood` | `string` | Surprise likelihood. |
| `tiltAngle` | `number` | Pitch angle, which indicates the upwards/downwards angle that the face is pointing relative to th... |
| `underExposedLikelihood` | `string` | Under-exposed likelihood. |

### `GoogleCloudVisionV1p2beta1FaceAnnotationLandmark`

A face-specific landmark (for example, a face feature). Landmark positions may fall outside the bounds of the image if the face is near one or more edges of the image. Therefore it is NOT guaranteed that `0 <= x < width` or `0 <= y < height`.

| Property | Type | Description |
|----------|------|-------------|
| `position` | `GoogleCloudVisionV1p2beta1Position` | Face landmark position. |
| `type` | `string` | Face landmark type. |

### `GoogleCloudVisionV1p2beta1GcsDestination`

The Google Cloud Storage location where the output will be written to.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format ... |

### `GoogleCloudVisionV1p2beta1GcsSource`

The Google Cloud Storage location where the input will be read from.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wil... |

### `GoogleCloudVisionV1p2beta1ImageAnnotationContext`

If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.

| Property | Type | Description |
|----------|------|-------------|
| `pageNumber` | `integer` | If the file was a PDF or TIFF, this field gives the page number within the file used to produce t... |
| `uri` | `string` | The URI of the file used to produce the image. |

### `GoogleCloudVisionV1p2beta1ImageProperties`

Stores image properties, such as dominant colors.

| Property | Type | Description |
|----------|------|-------------|
| `dominantColors` | `GoogleCloudVisionV1p2beta1DominantColorsAnnotation` | If present, dominant colors completed successfully. |

### `GoogleCloudVisionV1p2beta1InputConfig`

The desired input location and metadata.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | File content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers us... |
| `gcsSource` | `GoogleCloudVisionV1p2beta1GcsSource` | The Google Cloud Storage location to read the input from. |
| `mimeType` | `string` | The type of the file. Currently only "application/pdf", "image/tiff" and "image/gif" are supporte... |

### `GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation`

Set of detected objects with bounding boxes.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p2beta1BoundingPoly` | Image region to which this object belongs. This must be populated. |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |
| `mid` | `string` | Object ID that should align with EntityAnnotation mid. |
| `name` | `string` | Object name, expressed in its `language_code` language. |
| `score` | `number` | Score of the result. Range [0, 1]. |

### `GoogleCloudVisionV1p2beta1LocationInfo`

Detected entity location information.

| Property | Type | Description |
|----------|------|-------------|
| `latLng` | `LatLng` | lat/long location coordinates. |

### `GoogleCloudVisionV1p2beta1NormalizedVertex`

A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |

### `GoogleCloudVisionV1p2beta1OperationMetadata`

Contains metadata for the BatchAnnotateImages operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time when the batch request was received. |
| `state` | `string` | Current state of the batch operation. |
| `updateTime` | `string` | The time when the operation result was last updated. |

### `GoogleCloudVisionV1p2beta1OutputConfig`

The desired output location and metadata.

| Property | Type | Description |
|----------|------|-------------|
| `batchSize` | `integer` | The max number of response protos to put into each output JSON file on Google Cloud Storage. The ... |
| `gcsDestination` | `GoogleCloudVisionV1p2beta1GcsDestination` | The Google Cloud Storage location to write the output(s) to. |

### `GoogleCloudVisionV1p2beta1Page`

Detected page from OCR.

| Property | Type | Description |
|----------|------|-------------|
| `blocks` | `array<GoogleCloudVisionV1p2beta1Block>` | List of blocks of text, images etc on this page. |
| `confidence` | `number` | Confidence of the OCR results on the page. Range [0, 1]. |
| `height` | `integer` | Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels. |
| `property` | `GoogleCloudVisionV1p2beta1TextAnnotationTextProperty` | Additional information detected on the page. |
| `width` | `integer` | Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels. |

### `GoogleCloudVisionV1p2beta1Paragraph`

Structural unit of text representing a number of words in certain order.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `GoogleCloudVisionV1p2beta1BoundingPoly` | The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-... |
| `confidence` | `number` | Confidence of the OCR results for the paragraph. Range [0, 1]. |
| `property` | `GoogleCloudVisionV1p2beta1TextAnnotationTextProperty` | Additional information detected for the paragraph. |
| `words` | `array<GoogleCloudVisionV1p2beta1Word>` | List of all words in this paragraph. |

### `GoogleCloudVisionV1p2beta1Position`

A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |
| `z` | `number` | Z coordinate (or depth). |

### `GoogleCloudVisionV1p2beta1Product`

A Product contains ReferenceImages.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | User-provided metadata to be stored with this product. Must be at most 4096 characters long. |
| `displayName` | `string` | The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long. |
| `name` | `string` | The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODU... |
| `productCategory` | `string` | Immutable. The category for the product identified by the reference image. This should be one of ... |
| `productLabels` | `array<GoogleCloudVisionV1p2beta1ProductKeyValue>` | Key-value pairs that can be attached to a product. At query time, constraints can be specified ba... |

### `GoogleCloudVisionV1p2beta1ProductKeyValue`

A product label represented as a key-value pair.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes. |
| `value` | `string` | The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes. |

### `GoogleCloudVisionV1p2beta1ProductSearchResults`

Results for a product search request.

| Property | Type | Description |
|----------|------|-------------|
| `indexTime` | `string` | Timestamp of the index which provided these results. Products added to the product set and produc... |
| `productGroupedResults` | `array<GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult>` | List of results grouped by products detected in the query image. Each entry corresponds to one bo... |
| `results` | `array<GoogleCloudVisionV1p2beta1ProductSearchResultsResult>` | List of results, one for each product match. |

### `GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult`

Information about the products similar to a single product in a query image.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p2beta1BoundingPoly` | The bounding polygon around the product detected in the query image. |
| `objectAnnotations` | `array<GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation>` | List of generic predictions for the object in the bounding box. |
| `results` | `array<GoogleCloudVisionV1p2beta1ProductSearchResultsResult>` | List of results, one for each product match. |

### `GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation`

Prediction for what the object in the bounding box is.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |
| `mid` | `string` | Object ID that should align with EntityAnnotation mid. |
| `name` | `string` | Object name, expressed in its `language_code` language. |
| `score` | `number` | Score of the result. Range [0, 1]. |

### `GoogleCloudVisionV1p2beta1ProductSearchResultsResult`

Information about a product.

| Property | Type | Description |
|----------|------|-------------|
| `image` | `string` | The resource name of the image from the product that is the closest match to the query. |
| `product` | `GoogleCloudVisionV1p2beta1Product` | The Product. |
| `score` | `number` | A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence). |

### `GoogleCloudVisionV1p2beta1Property`

A `Property` consists of a user-supplied name/value pair.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the property. |
| `uint64Value` | `string` | Value of numeric properties. |
| `value` | `string` | Value of the property. |

### `GoogleCloudVisionV1p2beta1SafeSearchAnnotation`

Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).

| Property | Type | Description |
|----------|------|-------------|
| `adult` | `string` | Represents the adult content likelihood for the image. Adult content may contain elements such as... |
| `medical` | `string` | Likelihood that this is a medical image. |
| `racy` | `string` | Likelihood that the request image contains racy content. Racy content may include (but is not lim... |
| `spoof` | `string` | Spoof likelihood. The likelihood that an modification was made to the image's canonical version t... |
| `violence` | `string` | Likelihood that this image contains violent content. Violent content may include death, serious h... |

### `GoogleCloudVisionV1p2beta1Symbol`

A single symbol representation.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `GoogleCloudVisionV1p2beta1BoundingPoly` | The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-rig... |
| `confidence` | `number` | Confidence of the OCR results for the symbol. Range [0, 1]. |
| `property` | `GoogleCloudVisionV1p2beta1TextAnnotationTextProperty` | Additional information detected for the symbol. |
| `text` | `string` | The actual UTF-8 representation of the symbol. |

### `GoogleCloudVisionV1p2beta1TextAnnotation`

TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.

| Property | Type | Description |
|----------|------|-------------|
| `pages` | `array<GoogleCloudVisionV1p2beta1Page>` | List of pages detected by OCR. |
| `text` | `string` | UTF-8 text detected on the pages. |

### `GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak`

Detected start or end of a structural component.

| Property | Type | Description |
|----------|------|-------------|
| `isPrefix` | `boolean` | True if break prepends the element. |
| `type` | `string` | Detected break type. |

### `GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage`

Detected language for a structural component.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence of detected language. Range [0, 1]. |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |

### `GoogleCloudVisionV1p2beta1TextAnnotationTextProperty`

Additional information detected on the structural component.

| Property | Type | Description |
|----------|------|-------------|
| `detectedBreak` | `GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak` | Detected start or end of a text segment. |
| `detectedLanguages` | `array<GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage>` | A list of detected languages together with confidence. |

### `GoogleCloudVisionV1p2beta1Vertex`

A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `integer` | X coordinate. |
| `y` | `integer` | Y coordinate. |

### `GoogleCloudVisionV1p2beta1WebDetection`

Relevant information for the image from the Internet.

| Property | Type | Description |
|----------|------|-------------|
| `bestGuessLabels` | `array<GoogleCloudVisionV1p2beta1WebDetectionWebLabel>` | The service's best guess as to the topic of the request image. Inferred from similar images on th... |
| `fullMatchingImages` | `array<GoogleCloudVisionV1p2beta1WebDetectionWebImage>` | Fully matching images from the Internet. Can include resized copies of the query image. |
| `pagesWithMatchingImages` | `array<GoogleCloudVisionV1p2beta1WebDetectionWebPage>` | Web pages containing the matching images from the Internet. |
| `partialMatchingImages` | `array<GoogleCloudVisionV1p2beta1WebDetectionWebImage>` | Partial matching images from the Internet. Those images are similar enough to share some key-poin... |
| `visuallySimilarImages` | `array<GoogleCloudVisionV1p2beta1WebDetectionWebImage>` | The visually similar image results. |
| `webEntities` | `array<GoogleCloudVisionV1p2beta1WebDetectionWebEntity>` | Deduced entities from similar images on the Internet. |

### `GoogleCloudVisionV1p2beta1WebDetectionWebEntity`

Entity deduced from similar images on the Internet.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Canonical description of the entity, in English. |
| `entityId` | `string` | Opaque entity ID. |
| `score` | `number` | Overall relevancy score for the entity. Not normalized and not comparable across different image ... |

### `GoogleCloudVisionV1p2beta1WebDetectionWebImage`

Metadata for online images.

| Property | Type | Description |
|----------|------|-------------|
| `score` | `number` | (Deprecated) Overall relevancy score for the image. |
| `url` | `string` | The result image URL. |

### `GoogleCloudVisionV1p2beta1WebDetectionWebLabel`

Label to provide extra metadata for the web detection.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | Label for extra metadata. |
| `languageCode` | `string` | The BCP-47 language code for `label`, such as "en-US" or "sr-Latn". For more information, see htt... |

### `GoogleCloudVisionV1p2beta1WebDetectionWebPage`

Metadata for web pages.

| Property | Type | Description |
|----------|------|-------------|
| `fullMatchingImages` | `array<GoogleCloudVisionV1p2beta1WebDetectionWebImage>` | Fully matching images on the page. Can include resized copies of the query image. |
| `pageTitle` | `string` | Title for the web page, may contain HTML markups. |
| `partialMatchingImages` | `array<GoogleCloudVisionV1p2beta1WebDetectionWebImage>` | Partial matching images on the page. Those images are similar enough to share some key-point feat... |
| `score` | `number` | (Deprecated) Overall relevancy score for the web page. |
| `url` | `string` | The result web page URL. |

### `GoogleCloudVisionV1p2beta1Word`

A word representation.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `GoogleCloudVisionV1p2beta1BoundingPoly` | The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right... |
| `confidence` | `number` | Confidence of the OCR results for the word. Range [0, 1]. |
| `property` | `GoogleCloudVisionV1p2beta1TextAnnotationTextProperty` | Additional information detected for the word. |
| `symbols` | `array<GoogleCloudVisionV1p2beta1Symbol>` | List of symbols in the word. The order of the symbols follows the natural reading order. |

### `GoogleCloudVisionV1p3beta1AnnotateFileResponse`

Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | If set, represents the error message for the failed request. The `responses` field will not be se... |
| `inputConfig` | `GoogleCloudVisionV1p3beta1InputConfig` | Information about the file for which this response is generated. |
| `responses` | `array<GoogleCloudVisionV1p3beta1AnnotateImageResponse>` | Individual responses to images found within the file. This field will be empty if the `error` fie... |
| `totalPages` | `integer` | This field gives the total number of pages in the file. |

### `GoogleCloudVisionV1p3beta1AnnotateImageResponse`

Response to an image annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `GoogleCloudVisionV1p3beta1ImageAnnotationContext` | If present, contextual information is needed to understand where this image comes from. |
| `cropHintsAnnotation` | `GoogleCloudVisionV1p3beta1CropHintsAnnotation` | If present, crop hints have completed successfully. |
| `error` | `Status` | If set, represents the error message for the operation. Note that filled-in image annotations are... |
| `faceAnnotations` | `array<GoogleCloudVisionV1p3beta1FaceAnnotation>` | If present, face detection has completed successfully. |
| `fullTextAnnotation` | `GoogleCloudVisionV1p3beta1TextAnnotation` | If present, text (OCR) detection or document (OCR) text detection has completed successfully. Thi... |
| `imagePropertiesAnnotation` | `GoogleCloudVisionV1p3beta1ImageProperties` | If present, image properties were extracted successfully. |
| `labelAnnotations` | `array<GoogleCloudVisionV1p3beta1EntityAnnotation>` | If present, label detection has completed successfully. |
| `landmarkAnnotations` | `array<GoogleCloudVisionV1p3beta1EntityAnnotation>` | If present, landmark detection has completed successfully. |
| `localizedObjectAnnotations` | `array<GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation>` | If present, localized object detection has completed successfully. This will be sorted descending... |
| `logoAnnotations` | `array<GoogleCloudVisionV1p3beta1EntityAnnotation>` | If present, logo detection has completed successfully. |
| `productSearchResults` | `GoogleCloudVisionV1p3beta1ProductSearchResults` | If present, product search has completed successfully. |
| `safeSearchAnnotation` | `GoogleCloudVisionV1p3beta1SafeSearchAnnotation` | If present, safe-search annotation has completed successfully. |
| `textAnnotations` | `array<GoogleCloudVisionV1p3beta1EntityAnnotation>` | If present, text (OCR) detection has completed successfully. |
| `webDetection` | `GoogleCloudVisionV1p3beta1WebDetection` | If present, web detection has completed successfully. |

### `GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse`

The response for a single offline file annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `outputConfig` | `GoogleCloudVisionV1p3beta1OutputConfig` | The output location and metadata from AsyncAnnotateFileRequest. |

### `GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse`

Response to an async batch file annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse>` | The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest. |

### `GoogleCloudVisionV1p3beta1BatchOperationMetadata`

Metadata for the batch operations such as the current state. This is included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time when the batch request is finished and google.longrunning.Operation.done is set to true. |
| `state` | `string` | The current state of the batch operation. |
| `submitTime` | `string` | The time when the batch request was submitted to the server. |

### `GoogleCloudVisionV1p3beta1Block`

Logical element on the page.

| Property | Type | Description |
|----------|------|-------------|
| `blockType` | `string` | Detected block type (text, image etc) for this block. |
| `boundingBox` | `GoogleCloudVisionV1p3beta1BoundingPoly` | The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-righ... |
| `confidence` | `number` | Confidence of the OCR results on the block. Range [0, 1]. |
| `paragraphs` | `array<GoogleCloudVisionV1p3beta1Paragraph>` | List of paragraphs in this block (if this blocks is of type text). |
| `property` | `GoogleCloudVisionV1p3beta1TextAnnotationTextProperty` | Additional information detected for the block. |

### `GoogleCloudVisionV1p3beta1BoundingPoly`

A bounding polygon for the detected image annotation.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedVertices` | `array<GoogleCloudVisionV1p3beta1NormalizedVertex>` | The bounding polygon normalized vertices. |
| `vertices` | `array<GoogleCloudVisionV1p3beta1Vertex>` | The bounding polygon vertices. |

### `GoogleCloudVisionV1p3beta1ColorInfo`

Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `Color` | RGB components of the color. |
| `pixelFraction` | `number` | The fraction of pixels the color occupies in the image. Value in range [0, 1]. |
| `score` | `number` | Image-specific score for this color. Value in range [0, 1]. |

### `GoogleCloudVisionV1p3beta1CropHint`

Single crop hint that is used to generate a new crop when serving an image.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p3beta1BoundingPoly` | The bounding polygon for the crop region. The coordinates of the bounding box are in the original... |
| `confidence` | `number` | Confidence of this being a salient region. Range [0, 1]. |
| `importanceFraction` | `number` | Fraction of importance of this salient region with respect to the original image. |

### `GoogleCloudVisionV1p3beta1CropHintsAnnotation`

Set of crop hints that are used to generate new crops when serving images.

| Property | Type | Description |
|----------|------|-------------|
| `cropHints` | `array<GoogleCloudVisionV1p3beta1CropHint>` | Crop hint results. |

### `GoogleCloudVisionV1p3beta1DominantColorsAnnotation`

Set of dominant colors and their corresponding scores.

| Property | Type | Description |
|----------|------|-------------|
| `colors` | `array<GoogleCloudVisionV1p3beta1ColorInfo>` | RGB color values with their score and pixel fraction. |

### `GoogleCloudVisionV1p3beta1EntityAnnotation`

Set of detected entity features.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p3beta1BoundingPoly` | Image region to which this entity belongs. Not produced for `LABEL_DETECTION` features. |
| `confidence` | `number` | **Deprecated. Use `score` instead.** The accuracy of the entity detection in an image. For exampl... |
| `description` | `string` | Entity textual description, expressed in its `locale` language. |
| `locale` | `string` | The language code for the locale in which the entity textual `description` is expressed. |
| `locations` | `array<GoogleCloudVisionV1p3beta1LocationInfo>` | The location information for the detected entity. Multiple `LocationInfo` elements can be present... |
| `mid` | `string` | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://develo... |
| `properties` | `array<GoogleCloudVisionV1p3beta1Property>` | Some entities may have optional user-supplied `Property` (name/value) fields, such a score or str... |
| `score` | `number` | Overall score of the result. Range [0, 1]. |
| `topicality` | `number` | The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevanc... |

### `GoogleCloudVisionV1p3beta1FaceAnnotation`

A face annotation object contains the results of face detection.

| Property | Type | Description |
|----------|------|-------------|
| `angerLikelihood` | `string` | Anger likelihood. |
| `blurredLikelihood` | `string` | Blurred likelihood. |
| `boundingPoly` | `GoogleCloudVisionV1p3beta1BoundingPoly` | The bounding polygon around the face. The coordinates of the bounding box are in the original ima... |
| `detectionConfidence` | `number` | Detection confidence. Range [0, 1]. |
| `fdBoundingPoly` | `GoogleCloudVisionV1p3beta1BoundingPoly` | The `fd_bounding_poly` bounding polygon is tighter than the `boundingPoly`, and encloses only the... |
| `headwearLikelihood` | `string` | Headwear likelihood. |
| `joyLikelihood` | `string` | Joy likelihood. |
| `landmarkingConfidence` | `number` | Face landmarking confidence. Range [0, 1]. |
| `landmarks` | `array<GoogleCloudVisionV1p3beta1FaceAnnotationLandmark>` | Detected face landmarks. |
| `panAngle` | `number` | Yaw angle, which indicates the leftward/rightward angle that the face is pointing relative to the... |
| `rollAngle` | `number` | Roll angle, which indicates the amount of clockwise/anti-clockwise rotation of the face relative ... |
| `sorrowLikelihood` | `string` | Sorrow likelihood. |
| `surpriseLikelihood` | `string` | Surprise likelihood. |
| `tiltAngle` | `number` | Pitch angle, which indicates the upwards/downwards angle that the face is pointing relative to th... |
| `underExposedLikelihood` | `string` | Under-exposed likelihood. |

### `GoogleCloudVisionV1p3beta1FaceAnnotationLandmark`

A face-specific landmark (for example, a face feature). Landmark positions may fall outside the bounds of the image if the face is near one or more edges of the image. Therefore it is NOT guaranteed that `0 <= x < width` or `0 <= y < height`.

| Property | Type | Description |
|----------|------|-------------|
| `position` | `GoogleCloudVisionV1p3beta1Position` | Face landmark position. |
| `type` | `string` | Face landmark type. |

### `GoogleCloudVisionV1p3beta1GcsDestination`

The Google Cloud Storage location where the output will be written to.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format ... |

### `GoogleCloudVisionV1p3beta1GcsSource`

The Google Cloud Storage location where the input will be read from.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wil... |

### `GoogleCloudVisionV1p3beta1ImageAnnotationContext`

If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.

| Property | Type | Description |
|----------|------|-------------|
| `pageNumber` | `integer` | If the file was a PDF or TIFF, this field gives the page number within the file used to produce t... |
| `uri` | `string` | The URI of the file used to produce the image. |

### `GoogleCloudVisionV1p3beta1ImageProperties`

Stores image properties, such as dominant colors.

| Property | Type | Description |
|----------|------|-------------|
| `dominantColors` | `GoogleCloudVisionV1p3beta1DominantColorsAnnotation` | If present, dominant colors completed successfully. |

### `GoogleCloudVisionV1p3beta1ImportProductSetsResponse`

Response message for the `ImportProductSets` method. This message is returned by the google.longrunning.Operations.GetOperation method in the returned google.longrunning.Operation.response field.

| Property | Type | Description |
|----------|------|-------------|
| `referenceImages` | `array<GoogleCloudVisionV1p3beta1ReferenceImage>` | The list of reference_images that are imported successfully. |
| `statuses` | `array<Status>` | The rpc status for each ImportProductSet request, including both successes and errors. The number... |

### `GoogleCloudVisionV1p3beta1InputConfig`

The desired input location and metadata.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | File content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers us... |
| `gcsSource` | `GoogleCloudVisionV1p3beta1GcsSource` | The Google Cloud Storage location to read the input from. |
| `mimeType` | `string` | The type of the file. Currently only "application/pdf", "image/tiff" and "image/gif" are supporte... |

### `GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation`

Set of detected objects with bounding boxes.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p3beta1BoundingPoly` | Image region to which this object belongs. This must be populated. |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |
| `mid` | `string` | Object ID that should align with EntityAnnotation mid. |
| `name` | `string` | Object name, expressed in its `language_code` language. |
| `score` | `number` | Score of the result. Range [0, 1]. |

### `GoogleCloudVisionV1p3beta1LocationInfo`

Detected entity location information.

| Property | Type | Description |
|----------|------|-------------|
| `latLng` | `LatLng` | lat/long location coordinates. |

### `GoogleCloudVisionV1p3beta1NormalizedVertex`

A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |

### `GoogleCloudVisionV1p3beta1OperationMetadata`

Contains metadata for the BatchAnnotateImages operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time when the batch request was received. |
| `state` | `string` | Current state of the batch operation. |
| `updateTime` | `string` | The time when the operation result was last updated. |

### `GoogleCloudVisionV1p3beta1OutputConfig`

The desired output location and metadata.

| Property | Type | Description |
|----------|------|-------------|
| `batchSize` | `integer` | The max number of response protos to put into each output JSON file on Google Cloud Storage. The ... |
| `gcsDestination` | `GoogleCloudVisionV1p3beta1GcsDestination` | The Google Cloud Storage location to write the output(s) to. |

### `GoogleCloudVisionV1p3beta1Page`

Detected page from OCR.

| Property | Type | Description |
|----------|------|-------------|
| `blocks` | `array<GoogleCloudVisionV1p3beta1Block>` | List of blocks of text, images etc on this page. |
| `confidence` | `number` | Confidence of the OCR results on the page. Range [0, 1]. |
| `height` | `integer` | Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels. |
| `property` | `GoogleCloudVisionV1p3beta1TextAnnotationTextProperty` | Additional information detected on the page. |
| `width` | `integer` | Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels. |

### `GoogleCloudVisionV1p3beta1Paragraph`

Structural unit of text representing a number of words in certain order.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `GoogleCloudVisionV1p3beta1BoundingPoly` | The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-... |
| `confidence` | `number` | Confidence of the OCR results for the paragraph. Range [0, 1]. |
| `property` | `GoogleCloudVisionV1p3beta1TextAnnotationTextProperty` | Additional information detected for the paragraph. |
| `words` | `array<GoogleCloudVisionV1p3beta1Word>` | List of all words in this paragraph. |

### `GoogleCloudVisionV1p3beta1Position`

A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |
| `z` | `number` | Z coordinate (or depth). |

### `GoogleCloudVisionV1p3beta1Product`

A Product contains ReferenceImages.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | User-provided metadata to be stored with this product. Must be at most 4096 characters long. |
| `displayName` | `string` | The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long. |
| `name` | `string` | The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODU... |
| `productCategory` | `string` | Immutable. The category for the product identified by the reference image. This should be one of ... |
| `productLabels` | `array<GoogleCloudVisionV1p3beta1ProductKeyValue>` | Key-value pairs that can be attached to a product. At query time, constraints can be specified ba... |

### `GoogleCloudVisionV1p3beta1ProductKeyValue`

A product label represented as a key-value pair.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes. |
| `value` | `string` | The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes. |

### `GoogleCloudVisionV1p3beta1ProductSearchResults`

Results for a product search request.

| Property | Type | Description |
|----------|------|-------------|
| `indexTime` | `string` | Timestamp of the index which provided these results. Products added to the product set and produc... |
| `productGroupedResults` | `array<GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult>` | List of results grouped by products detected in the query image. Each entry corresponds to one bo... |
| `results` | `array<GoogleCloudVisionV1p3beta1ProductSearchResultsResult>` | List of results, one for each product match. |

### `GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult`

Information about the products similar to a single product in a query image.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p3beta1BoundingPoly` | The bounding polygon around the product detected in the query image. |
| `objectAnnotations` | `array<GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation>` | List of generic predictions for the object in the bounding box. |
| `results` | `array<GoogleCloudVisionV1p3beta1ProductSearchResultsResult>` | List of results, one for each product match. |

### `GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation`

Prediction for what the object in the bounding box is.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |
| `mid` | `string` | Object ID that should align with EntityAnnotation mid. |
| `name` | `string` | Object name, expressed in its `language_code` language. |
| `score` | `number` | Score of the result. Range [0, 1]. |

### `GoogleCloudVisionV1p3beta1ProductSearchResultsResult`

Information about a product.

| Property | Type | Description |
|----------|------|-------------|
| `image` | `string` | The resource name of the image from the product that is the closest match to the query. |
| `product` | `GoogleCloudVisionV1p3beta1Product` | The Product. |
| `score` | `number` | A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence). |

### `GoogleCloudVisionV1p3beta1Property`

A `Property` consists of a user-supplied name/value pair.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the property. |
| `uint64Value` | `string` | Value of numeric properties. |
| `value` | `string` | Value of the property. |

### `GoogleCloudVisionV1p3beta1ReferenceImage`

A `ReferenceImage` represents a product image and its associated metadata, such as bounding boxes.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPolys` | `array<GoogleCloudVisionV1p3beta1BoundingPoly>` | Optional. Bounding polygons around the areas of interest in the reference image. If this field is... |
| `name` | `string` | The resource name of the reference image. Format is: `projects/PROJECT_ID/locations/LOC_ID/produc... |
| `uri` | `string` | Required. The Google Cloud Storage URI of the reference image. The URI must start with `gs://`. |

### `GoogleCloudVisionV1p3beta1SafeSearchAnnotation`

Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).

| Property | Type | Description |
|----------|------|-------------|
| `adult` | `string` | Represents the adult content likelihood for the image. Adult content may contain elements such as... |
| `medical` | `string` | Likelihood that this is a medical image. |
| `racy` | `string` | Likelihood that the request image contains racy content. Racy content may include (but is not lim... |
| `spoof` | `string` | Spoof likelihood. The likelihood that an modification was made to the image's canonical version t... |
| `violence` | `string` | Likelihood that this image contains violent content. Violent content may include death, serious h... |

### `GoogleCloudVisionV1p3beta1Symbol`

A single symbol representation.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `GoogleCloudVisionV1p3beta1BoundingPoly` | The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-rig... |
| `confidence` | `number` | Confidence of the OCR results for the symbol. Range [0, 1]. |
| `property` | `GoogleCloudVisionV1p3beta1TextAnnotationTextProperty` | Additional information detected for the symbol. |
| `text` | `string` | The actual UTF-8 representation of the symbol. |

### `GoogleCloudVisionV1p3beta1TextAnnotation`

TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.

| Property | Type | Description |
|----------|------|-------------|
| `pages` | `array<GoogleCloudVisionV1p3beta1Page>` | List of pages detected by OCR. |
| `text` | `string` | UTF-8 text detected on the pages. |

### `GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak`

Detected start or end of a structural component.

| Property | Type | Description |
|----------|------|-------------|
| `isPrefix` | `boolean` | True if break prepends the element. |
| `type` | `string` | Detected break type. |

### `GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage`

Detected language for a structural component.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence of detected language. Range [0, 1]. |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |

### `GoogleCloudVisionV1p3beta1TextAnnotationTextProperty`

Additional information detected on the structural component.

| Property | Type | Description |
|----------|------|-------------|
| `detectedBreak` | `GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak` | Detected start or end of a text segment. |
| `detectedLanguages` | `array<GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage>` | A list of detected languages together with confidence. |

### `GoogleCloudVisionV1p3beta1Vertex`

A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `integer` | X coordinate. |
| `y` | `integer` | Y coordinate. |

### `GoogleCloudVisionV1p3beta1WebDetection`

Relevant information for the image from the Internet.

| Property | Type | Description |
|----------|------|-------------|
| `bestGuessLabels` | `array<GoogleCloudVisionV1p3beta1WebDetectionWebLabel>` | The service's best guess as to the topic of the request image. Inferred from similar images on th... |
| `fullMatchingImages` | `array<GoogleCloudVisionV1p3beta1WebDetectionWebImage>` | Fully matching images from the Internet. Can include resized copies of the query image. |
| `pagesWithMatchingImages` | `array<GoogleCloudVisionV1p3beta1WebDetectionWebPage>` | Web pages containing the matching images from the Internet. |
| `partialMatchingImages` | `array<GoogleCloudVisionV1p3beta1WebDetectionWebImage>` | Partial matching images from the Internet. Those images are similar enough to share some key-poin... |
| `visuallySimilarImages` | `array<GoogleCloudVisionV1p3beta1WebDetectionWebImage>` | The visually similar image results. |
| `webEntities` | `array<GoogleCloudVisionV1p3beta1WebDetectionWebEntity>` | Deduced entities from similar images on the Internet. |

### `GoogleCloudVisionV1p3beta1WebDetectionWebEntity`

Entity deduced from similar images on the Internet.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Canonical description of the entity, in English. |
| `entityId` | `string` | Opaque entity ID. |
| `score` | `number` | Overall relevancy score for the entity. Not normalized and not comparable across different image ... |

### `GoogleCloudVisionV1p3beta1WebDetectionWebImage`

Metadata for online images.

| Property | Type | Description |
|----------|------|-------------|
| `score` | `number` | (Deprecated) Overall relevancy score for the image. |
| `url` | `string` | The result image URL. |

### `GoogleCloudVisionV1p3beta1WebDetectionWebLabel`

Label to provide extra metadata for the web detection.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | Label for extra metadata. |
| `languageCode` | `string` | The BCP-47 language code for `label`, such as "en-US" or "sr-Latn". For more information, see htt... |

### `GoogleCloudVisionV1p3beta1WebDetectionWebPage`

Metadata for web pages.

| Property | Type | Description |
|----------|------|-------------|
| `fullMatchingImages` | `array<GoogleCloudVisionV1p3beta1WebDetectionWebImage>` | Fully matching images on the page. Can include resized copies of the query image. |
| `pageTitle` | `string` | Title for the web page, may contain HTML markups. |
| `partialMatchingImages` | `array<GoogleCloudVisionV1p3beta1WebDetectionWebImage>` | Partial matching images on the page. Those images are similar enough to share some key-point feat... |
| `score` | `number` | (Deprecated) Overall relevancy score for the web page. |
| `url` | `string` | The result web page URL. |

### `GoogleCloudVisionV1p3beta1Word`

A word representation.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `GoogleCloudVisionV1p3beta1BoundingPoly` | The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right... |
| `confidence` | `number` | Confidence of the OCR results for the word. Range [0, 1]. |
| `property` | `GoogleCloudVisionV1p3beta1TextAnnotationTextProperty` | Additional information detected for the word. |
| `symbols` | `array<GoogleCloudVisionV1p3beta1Symbol>` | List of symbols in the word. The order of the symbols follows the natural reading order. |

### `GoogleCloudVisionV1p4beta1AnnotateFileResponse`

Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | If set, represents the error message for the failed request. The `responses` field will not be se... |
| `inputConfig` | `GoogleCloudVisionV1p4beta1InputConfig` | Information about the file for which this response is generated. |
| `responses` | `array<GoogleCloudVisionV1p4beta1AnnotateImageResponse>` | Individual responses to images found within the file. This field will be empty if the `error` fie... |
| `totalPages` | `integer` | This field gives the total number of pages in the file. |

### `GoogleCloudVisionV1p4beta1AnnotateImageResponse`

Response to an image annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `GoogleCloudVisionV1p4beta1ImageAnnotationContext` | If present, contextual information is needed to understand where this image comes from. |
| `cropHintsAnnotation` | `GoogleCloudVisionV1p4beta1CropHintsAnnotation` | If present, crop hints have completed successfully. |
| `error` | `Status` | If set, represents the error message for the operation. Note that filled-in image annotations are... |
| `faceAnnotations` | `array<GoogleCloudVisionV1p4beta1FaceAnnotation>` | If present, face detection has completed successfully. |
| `fullTextAnnotation` | `GoogleCloudVisionV1p4beta1TextAnnotation` | If present, text (OCR) detection or document (OCR) text detection has completed successfully. Thi... |
| `imagePropertiesAnnotation` | `GoogleCloudVisionV1p4beta1ImageProperties` | If present, image properties were extracted successfully. |
| `labelAnnotations` | `array<GoogleCloudVisionV1p4beta1EntityAnnotation>` | If present, label detection has completed successfully. |
| `landmarkAnnotations` | `array<GoogleCloudVisionV1p4beta1EntityAnnotation>` | If present, landmark detection has completed successfully. |
| `localizedObjectAnnotations` | `array<GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation>` | If present, localized object detection has completed successfully. This will be sorted descending... |
| `logoAnnotations` | `array<GoogleCloudVisionV1p4beta1EntityAnnotation>` | If present, logo detection has completed successfully. |
| `productSearchResults` | `GoogleCloudVisionV1p4beta1ProductSearchResults` | If present, product search has completed successfully. |
| `safeSearchAnnotation` | `GoogleCloudVisionV1p4beta1SafeSearchAnnotation` | If present, safe-search annotation has completed successfully. |
| `textAnnotations` | `array<GoogleCloudVisionV1p4beta1EntityAnnotation>` | If present, text (OCR) detection has completed successfully. |
| `webDetection` | `GoogleCloudVisionV1p4beta1WebDetection` | If present, web detection has completed successfully. |

### `GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse`

The response for a single offline file annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `outputConfig` | `GoogleCloudVisionV1p4beta1OutputConfig` | The output location and metadata from AsyncAnnotateFileRequest. |

### `GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse`

Response to an async batch file annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse>` | The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest. |

### `GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse`

Response to an async batch image annotation request.

| Property | Type | Description |
|----------|------|-------------|
| `outputConfig` | `GoogleCloudVisionV1p4beta1OutputConfig` | The output location and metadata from AsyncBatchAnnotateImagesRequest. |

### `GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse`

A list of file annotation responses.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<GoogleCloudVisionV1p4beta1AnnotateFileResponse>` | The list of file annotation responses, each response corresponding to each AnnotateFileRequest in... |

### `GoogleCloudVisionV1p4beta1BatchOperationMetadata`

Metadata for the batch operations such as the current state. This is included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time when the batch request is finished and google.longrunning.Operation.done is set to true. |
| `state` | `string` | The current state of the batch operation. |
| `submitTime` | `string` | The time when the batch request was submitted to the server. |

### `GoogleCloudVisionV1p4beta1Block`

Logical element on the page.

| Property | Type | Description |
|----------|------|-------------|
| `blockType` | `string` | Detected block type (text, image etc) for this block. |
| `boundingBox` | `GoogleCloudVisionV1p4beta1BoundingPoly` | The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-righ... |
| `confidence` | `number` | Confidence of the OCR results on the block. Range [0, 1]. |
| `paragraphs` | `array<GoogleCloudVisionV1p4beta1Paragraph>` | List of paragraphs in this block (if this blocks is of type text). |
| `property` | `GoogleCloudVisionV1p4beta1TextAnnotationTextProperty` | Additional information detected for the block. |

### `GoogleCloudVisionV1p4beta1BoundingPoly`

A bounding polygon for the detected image annotation.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedVertices` | `array<GoogleCloudVisionV1p4beta1NormalizedVertex>` | The bounding polygon normalized vertices. |
| `vertices` | `array<GoogleCloudVisionV1p4beta1Vertex>` | The bounding polygon vertices. |

### `GoogleCloudVisionV1p4beta1Celebrity`

A Celebrity is a group of Faces with an identity.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The Celebrity's description. |
| `displayName` | `string` | The Celebrity's display name. |
| `name` | `string` | The resource name of the preloaded Celebrity. Has the format `builtin/{mid}`. |

### `GoogleCloudVisionV1p4beta1ColorInfo`

Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `Color` | RGB components of the color. |
| `pixelFraction` | `number` | The fraction of pixels the color occupies in the image. Value in range [0, 1]. |
| `score` | `number` | Image-specific score for this color. Value in range [0, 1]. |

### `GoogleCloudVisionV1p4beta1CropHint`

Single crop hint that is used to generate a new crop when serving an image.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p4beta1BoundingPoly` | The bounding polygon for the crop region. The coordinates of the bounding box are in the original... |
| `confidence` | `number` | Confidence of this being a salient region. Range [0, 1]. |
| `importanceFraction` | `number` | Fraction of importance of this salient region with respect to the original image. |

### `GoogleCloudVisionV1p4beta1CropHintsAnnotation`

Set of crop hints that are used to generate new crops when serving images.

| Property | Type | Description |
|----------|------|-------------|
| `cropHints` | `array<GoogleCloudVisionV1p4beta1CropHint>` | Crop hint results. |

### `GoogleCloudVisionV1p4beta1DominantColorsAnnotation`

Set of dominant colors and their corresponding scores.

| Property | Type | Description |
|----------|------|-------------|
| `colors` | `array<GoogleCloudVisionV1p4beta1ColorInfo>` | RGB color values with their score and pixel fraction. |

### `GoogleCloudVisionV1p4beta1EntityAnnotation`

Set of detected entity features.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p4beta1BoundingPoly` | Image region to which this entity belongs. Not produced for `LABEL_DETECTION` features. |
| `confidence` | `number` | **Deprecated. Use `score` instead.** The accuracy of the entity detection in an image. For exampl... |
| `description` | `string` | Entity textual description, expressed in its `locale` language. |
| `locale` | `string` | The language code for the locale in which the entity textual `description` is expressed. |
| `locations` | `array<GoogleCloudVisionV1p4beta1LocationInfo>` | The location information for the detected entity. Multiple `LocationInfo` elements can be present... |
| `mid` | `string` | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://develo... |
| `properties` | `array<GoogleCloudVisionV1p4beta1Property>` | Some entities may have optional user-supplied `Property` (name/value) fields, such a score or str... |
| `score` | `number` | Overall score of the result. Range [0, 1]. |
| `topicality` | `number` | The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevanc... |

### `GoogleCloudVisionV1p4beta1FaceAnnotation`

A face annotation object contains the results of face detection.

| Property | Type | Description |
|----------|------|-------------|
| `angerLikelihood` | `string` | Anger likelihood. |
| `blurredLikelihood` | `string` | Blurred likelihood. |
| `boundingPoly` | `GoogleCloudVisionV1p4beta1BoundingPoly` | The bounding polygon around the face. The coordinates of the bounding box are in the original ima... |
| `detectionConfidence` | `number` | Detection confidence. Range [0, 1]. |
| `fdBoundingPoly` | `GoogleCloudVisionV1p4beta1BoundingPoly` | The `fd_bounding_poly` bounding polygon is tighter than the `boundingPoly`, and encloses only the... |
| `headwearLikelihood` | `string` | Headwear likelihood. |
| `joyLikelihood` | `string` | Joy likelihood. |
| `landmarkingConfidence` | `number` | Face landmarking confidence. Range [0, 1]. |
| `landmarks` | `array<GoogleCloudVisionV1p4beta1FaceAnnotationLandmark>` | Detected face landmarks. |
| `panAngle` | `number` | Yaw angle, which indicates the leftward/rightward angle that the face is pointing relative to the... |
| `recognitionResult` | `array<GoogleCloudVisionV1p4beta1FaceRecognitionResult>` | Additional recognition information. Only computed if image_context.face_recognition_params is pro... |
| `rollAngle` | `number` | Roll angle, which indicates the amount of clockwise/anti-clockwise rotation of the face relative ... |
| `sorrowLikelihood` | `string` | Sorrow likelihood. |
| `surpriseLikelihood` | `string` | Surprise likelihood. |
| `tiltAngle` | `number` | Pitch angle, which indicates the upwards/downwards angle that the face is pointing relative to th... |
| `underExposedLikelihood` | `string` | Under-exposed likelihood. |

### `GoogleCloudVisionV1p4beta1FaceAnnotationLandmark`

A face-specific landmark (for example, a face feature). Landmark positions may fall outside the bounds of the image if the face is near one or more edges of the image. Therefore it is NOT guaranteed that `0 <= x < width` or `0 <= y < height`.

| Property | Type | Description |
|----------|------|-------------|
| `position` | `GoogleCloudVisionV1p4beta1Position` | Face landmark position. |
| `type` | `string` | Face landmark type. |

### `GoogleCloudVisionV1p4beta1FaceRecognitionResult`

Information about a face's identity.

| Property | Type | Description |
|----------|------|-------------|
| `celebrity` | `GoogleCloudVisionV1p4beta1Celebrity` | The Celebrity that this face was matched to. |
| `confidence` | `number` | Recognition confidence. Range [0, 1]. |

### `GoogleCloudVisionV1p4beta1GcsDestination`

The Google Cloud Storage location where the output will be written to.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format ... |

### `GoogleCloudVisionV1p4beta1GcsSource`

The Google Cloud Storage location where the input will be read from.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wil... |

### `GoogleCloudVisionV1p4beta1ImageAnnotationContext`

If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.

| Property | Type | Description |
|----------|------|-------------|
| `pageNumber` | `integer` | If the file was a PDF or TIFF, this field gives the page number within the file used to produce t... |
| `uri` | `string` | The URI of the file used to produce the image. |

### `GoogleCloudVisionV1p4beta1ImageProperties`

Stores image properties, such as dominant colors.

| Property | Type | Description |
|----------|------|-------------|
| `dominantColors` | `GoogleCloudVisionV1p4beta1DominantColorsAnnotation` | If present, dominant colors completed successfully. |

### `GoogleCloudVisionV1p4beta1ImportProductSetsResponse`

Response message for the `ImportProductSets` method. This message is returned by the google.longrunning.Operations.GetOperation method in the returned google.longrunning.Operation.response field.

| Property | Type | Description |
|----------|------|-------------|
| `referenceImages` | `array<GoogleCloudVisionV1p4beta1ReferenceImage>` | The list of reference_images that are imported successfully. |
| `statuses` | `array<Status>` | The rpc status for each ImportProductSet request, including both successes and errors. The number... |

### `GoogleCloudVisionV1p4beta1InputConfig`

The desired input location and metadata.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | File content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers us... |
| `gcsSource` | `GoogleCloudVisionV1p4beta1GcsSource` | The Google Cloud Storage location to read the input from. |
| `mimeType` | `string` | The type of the file. Currently only "application/pdf", "image/tiff" and "image/gif" are supporte... |

### `GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation`

Set of detected objects with bounding boxes.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p4beta1BoundingPoly` | Image region to which this object belongs. This must be populated. |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |
| `mid` | `string` | Object ID that should align with EntityAnnotation mid. |
| `name` | `string` | Object name, expressed in its `language_code` language. |
| `score` | `number` | Score of the result. Range [0, 1]. |

### `GoogleCloudVisionV1p4beta1LocationInfo`

Detected entity location information.

| Property | Type | Description |
|----------|------|-------------|
| `latLng` | `LatLng` | lat/long location coordinates. |

### `GoogleCloudVisionV1p4beta1NormalizedVertex`

A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |

### `GoogleCloudVisionV1p4beta1OperationMetadata`

Contains metadata for the BatchAnnotateImages operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time when the batch request was received. |
| `state` | `string` | Current state of the batch operation. |
| `updateTime` | `string` | The time when the operation result was last updated. |

### `GoogleCloudVisionV1p4beta1OutputConfig`

The desired output location and metadata.

| Property | Type | Description |
|----------|------|-------------|
| `batchSize` | `integer` | The max number of response protos to put into each output JSON file on Google Cloud Storage. The ... |
| `gcsDestination` | `GoogleCloudVisionV1p4beta1GcsDestination` | The Google Cloud Storage location to write the output(s) to. |

### `GoogleCloudVisionV1p4beta1Page`

Detected page from OCR.

| Property | Type | Description |
|----------|------|-------------|
| `blocks` | `array<GoogleCloudVisionV1p4beta1Block>` | List of blocks of text, images etc on this page. |
| `confidence` | `number` | Confidence of the OCR results on the page. Range [0, 1]. |
| `height` | `integer` | Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels. |
| `property` | `GoogleCloudVisionV1p4beta1TextAnnotationTextProperty` | Additional information detected on the page. |
| `width` | `integer` | Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels. |

### `GoogleCloudVisionV1p4beta1Paragraph`

Structural unit of text representing a number of words in certain order.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `GoogleCloudVisionV1p4beta1BoundingPoly` | The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-... |
| `confidence` | `number` | Confidence of the OCR results for the paragraph. Range [0, 1]. |
| `property` | `GoogleCloudVisionV1p4beta1TextAnnotationTextProperty` | Additional information detected for the paragraph. |
| `words` | `array<GoogleCloudVisionV1p4beta1Word>` | List of all words in this paragraph. |

### `GoogleCloudVisionV1p4beta1Position`

A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |
| `z` | `number` | Z coordinate (or depth). |

### `GoogleCloudVisionV1p4beta1Product`

A Product contains ReferenceImages.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | User-provided metadata to be stored with this product. Must be at most 4096 characters long. |
| `displayName` | `string` | The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long. |
| `name` | `string` | The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODU... |
| `productCategory` | `string` | Immutable. The category for the product identified by the reference image. This should be one of ... |
| `productLabels` | `array<GoogleCloudVisionV1p4beta1ProductKeyValue>` | Key-value pairs that can be attached to a product. At query time, constraints can be specified ba... |

### `GoogleCloudVisionV1p4beta1ProductKeyValue`

A product label represented as a key-value pair.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes. |
| `value` | `string` | The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes. |

### `GoogleCloudVisionV1p4beta1ProductSearchResults`

Results for a product search request.

| Property | Type | Description |
|----------|------|-------------|
| `indexTime` | `string` | Timestamp of the index which provided these results. Products added to the product set and produc... |
| `productGroupedResults` | `array<GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult>` | List of results grouped by products detected in the query image. Each entry corresponds to one bo... |
| `results` | `array<GoogleCloudVisionV1p4beta1ProductSearchResultsResult>` | List of results, one for each product match. |

### `GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult`

Information about the products similar to a single product in a query image.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudVisionV1p4beta1BoundingPoly` | The bounding polygon around the product detected in the query image. |
| `objectAnnotations` | `array<GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation>` | List of generic predictions for the object in the bounding box. |
| `results` | `array<GoogleCloudVisionV1p4beta1ProductSearchResultsResult>` | List of results, one for each product match. |

### `GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation`

Prediction for what the object in the bounding box is.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |
| `mid` | `string` | Object ID that should align with EntityAnnotation mid. |
| `name` | `string` | Object name, expressed in its `language_code` language. |
| `score` | `number` | Score of the result. Range [0, 1]. |

### `GoogleCloudVisionV1p4beta1ProductSearchResultsResult`

Information about a product.

| Property | Type | Description |
|----------|------|-------------|
| `image` | `string` | The resource name of the image from the product that is the closest match to the query. |
| `product` | `GoogleCloudVisionV1p4beta1Product` | The Product. |
| `score` | `number` | A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence). |

### `GoogleCloudVisionV1p4beta1Property`

A `Property` consists of a user-supplied name/value pair.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the property. |
| `uint64Value` | `string` | Value of numeric properties. |
| `value` | `string` | Value of the property. |

### `GoogleCloudVisionV1p4beta1ReferenceImage`

A `ReferenceImage` represents a product image and its associated metadata, such as bounding boxes.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPolys` | `array<GoogleCloudVisionV1p4beta1BoundingPoly>` | Optional. Bounding polygons around the areas of interest in the reference image. If this field is... |
| `name` | `string` | The resource name of the reference image. Format is: `projects/PROJECT_ID/locations/LOC_ID/produc... |
| `uri` | `string` | Required. The Google Cloud Storage URI of the reference image. The URI must start with `gs://`. |

### `GoogleCloudVisionV1p4beta1SafeSearchAnnotation`

Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).

| Property | Type | Description |
|----------|------|-------------|
| `adult` | `string` | Represents the adult content likelihood for the image. Adult content may contain elements such as... |
| `medical` | `string` | Likelihood that this is a medical image. |
| `racy` | `string` | Likelihood that the request image contains racy content. Racy content may include (but is not lim... |
| `spoof` | `string` | Spoof likelihood. The likelihood that an modification was made to the image's canonical version t... |
| `violence` | `string` | Likelihood that this image contains violent content. Violent content may include death, serious h... |

### `GoogleCloudVisionV1p4beta1Symbol`

A single symbol representation.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `GoogleCloudVisionV1p4beta1BoundingPoly` | The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-rig... |
| `confidence` | `number` | Confidence of the OCR results for the symbol. Range [0, 1]. |
| `property` | `GoogleCloudVisionV1p4beta1TextAnnotationTextProperty` | Additional information detected for the symbol. |
| `text` | `string` | The actual UTF-8 representation of the symbol. |

### `GoogleCloudVisionV1p4beta1TextAnnotation`

TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.

| Property | Type | Description |
|----------|------|-------------|
| `pages` | `array<GoogleCloudVisionV1p4beta1Page>` | List of pages detected by OCR. |
| `text` | `string` | UTF-8 text detected on the pages. |

### `GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak`

Detected start or end of a structural component.

| Property | Type | Description |
|----------|------|-------------|
| `isPrefix` | `boolean` | True if break prepends the element. |
| `type` | `string` | Detected break type. |

### `GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage`

Detected language for a structural component.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence of detected language. Range [0, 1]. |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |

### `GoogleCloudVisionV1p4beta1TextAnnotationTextProperty`

Additional information detected on the structural component.

| Property | Type | Description |
|----------|------|-------------|
| `detectedBreak` | `GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak` | Detected start or end of a text segment. |
| `detectedLanguages` | `array<GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage>` | A list of detected languages together with confidence. |

### `GoogleCloudVisionV1p4beta1Vertex`

A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `integer` | X coordinate. |
| `y` | `integer` | Y coordinate. |

### `GoogleCloudVisionV1p4beta1WebDetection`

Relevant information for the image from the Internet.

| Property | Type | Description |
|----------|------|-------------|
| `bestGuessLabels` | `array<GoogleCloudVisionV1p4beta1WebDetectionWebLabel>` | The service's best guess as to the topic of the request image. Inferred from similar images on th... |
| `fullMatchingImages` | `array<GoogleCloudVisionV1p4beta1WebDetectionWebImage>` | Fully matching images from the Internet. Can include resized copies of the query image. |
| `pagesWithMatchingImages` | `array<GoogleCloudVisionV1p4beta1WebDetectionWebPage>` | Web pages containing the matching images from the Internet. |
| `partialMatchingImages` | `array<GoogleCloudVisionV1p4beta1WebDetectionWebImage>` | Partial matching images from the Internet. Those images are similar enough to share some key-poin... |
| `visuallySimilarImages` | `array<GoogleCloudVisionV1p4beta1WebDetectionWebImage>` | The visually similar image results. |
| `webEntities` | `array<GoogleCloudVisionV1p4beta1WebDetectionWebEntity>` | Deduced entities from similar images on the Internet. |

### `GoogleCloudVisionV1p4beta1WebDetectionWebEntity`

Entity deduced from similar images on the Internet.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Canonical description of the entity, in English. |
| `entityId` | `string` | Opaque entity ID. |
| `score` | `number` | Overall relevancy score for the entity. Not normalized and not comparable across different image ... |

### `GoogleCloudVisionV1p4beta1WebDetectionWebImage`

Metadata for online images.

| Property | Type | Description |
|----------|------|-------------|
| `score` | `number` | (Deprecated) Overall relevancy score for the image. |
| `url` | `string` | The result image URL. |

### `GoogleCloudVisionV1p4beta1WebDetectionWebLabel`

Label to provide extra metadata for the web detection.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | Label for extra metadata. |
| `languageCode` | `string` | The BCP-47 language code for `label`, such as "en-US" or "sr-Latn". For more information, see htt... |

### `GoogleCloudVisionV1p4beta1WebDetectionWebPage`

Metadata for web pages.

| Property | Type | Description |
|----------|------|-------------|
| `fullMatchingImages` | `array<GoogleCloudVisionV1p4beta1WebDetectionWebImage>` | Fully matching images on the page. Can include resized copies of the query image. |
| `pageTitle` | `string` | Title for the web page, may contain HTML markups. |
| `partialMatchingImages` | `array<GoogleCloudVisionV1p4beta1WebDetectionWebImage>` | Partial matching images on the page. Those images are similar enough to share some key-point feat... |
| `score` | `number` | (Deprecated) Overall relevancy score for the web page. |
| `url` | `string` | The result web page URL. |

### `GoogleCloudVisionV1p4beta1Word`

A word representation.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `GoogleCloudVisionV1p4beta1BoundingPoly` | The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right... |
| `confidence` | `number` | Confidence of the OCR results for the word. Range [0, 1]. |
| `property` | `GoogleCloudVisionV1p4beta1TextAnnotationTextProperty` | Additional information detected for the word. |
| `symbols` | `array<GoogleCloudVisionV1p4beta1Symbol>` | List of symbols in the word. The order of the symbols follows the natural reading order. |

### `GroupedResult`

Information about the products similar to a single product in a query image.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `BoundingPoly` | The bounding polygon around the product detected in the query image. |
| `objectAnnotations` | `array<ObjectAnnotation>` | List of generic predictions for the object in the bounding box. |
| `results` | `array<Result>` | List of results, one for each product match. |

### `Image`

Client image to perform Google Cloud Vision API tasks over.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Image content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers u... |
| `source` | `ImageSource` | Google Cloud Storage image location, or publicly-accessible image URL. If both `content` and `sou... |

### `ImageAnnotationContext`

If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.

| Property | Type | Description |
|----------|------|-------------|
| `pageNumber` | `integer` | If the file was a PDF or TIFF, this field gives the page number within the file used to produce t... |
| `uri` | `string` | The URI of the file used to produce the image. |

### `ImageContext`

Image context and/or feature-specific parameters.

| Property | Type | Description |
|----------|------|-------------|
| `cropHintsParams` | `CropHintsParams` | Parameters for crop hints annotation request. |
| `languageHints` | `array<string>` | List of languages to use for TEXT_DETECTION. In most cases, an empty value yields the best result... |
| `latLongRect` | `LatLongRect` | Not used. |
| `productSearchParams` | `ProductSearchParams` | Parameters for product search. |
| `textDetectionParams` | `TextDetectionParams` | Parameters for text detection and document text detection. |
| `webDetectionParams` | `WebDetectionParams` | Parameters for web detection. |

### `ImageProperties`

Stores image properties, such as dominant colors.

| Property | Type | Description |
|----------|------|-------------|
| `dominantColors` | `DominantColorsAnnotation` | If present, dominant colors completed successfully. |

### `ImageSource`

External image source (Google Cloud Storage or web URL image location).

| Property | Type | Description |
|----------|------|-------------|
| `gcsImageUri` | `string` | **Use `image_uri` instead.** The Google Cloud Storage URI of the form `gs://bucket_name/object_na... |
| `imageUri` | `string` | The URI of the source image. Can be either: 1. A Google Cloud Storage URI of the form `gs://bucke... |

### `ImportProductSetsGcsSource`

The Google Cloud Storage location for a csv file which preserves a list of ImportProductSetRequests in each line.

| Property | Type | Description |
|----------|------|-------------|
| `csvFileUri` | `string` | The Google Cloud Storage URI of the input csv file. The URI must start with `gs://`. The format o... |

### `ImportProductSetsInputConfig`

The input content for the `ImportProductSets` method.

| Property | Type | Description |
|----------|------|-------------|
| `gcsSource` | `ImportProductSetsGcsSource` | The Google Cloud Storage location for a csv file which preserves a list of ImportProductSetReques... |

### `ImportProductSetsRequest`

Request message for the `ImportProductSets` method.

| Property | Type | Description |
|----------|------|-------------|
| `inputConfig` | `ImportProductSetsInputConfig` | Required. The input content for the list of requests. |

### `ImportProductSetsResponse`

Response message for the `ImportProductSets` method. This message is returned by the google.longrunning.Operations.GetOperation method in the returned google.longrunning.Operation.response field.

| Property | Type | Description |
|----------|------|-------------|
| `referenceImages` | `array<ReferenceImage>` | The list of reference_images that are imported successfully. |
| `statuses` | `array<Status>` | The rpc status for each ImportProductSet request, including both successes and errors. The number... |

### `InputConfig`

The desired input location and metadata.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | File content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers us... |
| `gcsSource` | `GcsSource` | The Google Cloud Storage location to read the input from. |
| `mimeType` | `string` | The type of the file. Currently only "application/pdf", "image/tiff" and "image/gif" are supporte... |

### `KeyValue`

A product label represented as a key-value pair.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes. |
| `value` | `string` | The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes. |

### `Landmark`

A face-specific landmark (for example, a face feature). Landmark positions may fall outside the bounds of the image if the face is near one or more edges of the image. Therefore it is NOT guaranteed that `0 <= x < width` or `0 <= y < height`.

| Property | Type | Description |
|----------|------|-------------|
| `position` | `Position` | Face landmark position. |
| `type` | `string` | Face landmark type. |

### `LatLng`

An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `longitude` | `number` | The longitude in degrees. It must be in the range [-180.0, +180.0]. |

### `LatLongRect`

Rectangle determined by min and max `LatLng` pairs.

| Property | Type | Description |
|----------|------|-------------|
| `maxLatLng` | `LatLng` | Max lat/long pair. |
| `minLatLng` | `LatLng` | Min lat/long pair. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListProductSetsResponse`

Response message for the `ListProductSets` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `productSets` | `array<ProductSet>` | List of ProductSets. |

### `ListProductsInProductSetResponse`

Response message for the `ListProductsInProductSet` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `products` | `array<Product>` | The list of Products. |

### `ListProductsResponse`

Response message for the `ListProducts` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `products` | `array<Product>` | List of products. |

### `ListReferenceImagesResponse`

Response message for the `ListReferenceImages` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next_page_token returned from a previous List request, if any. |
| `pageSize` | `integer` | The maximum number of items to return. Default 10, maximum 100. |
| `referenceImages` | `array<ReferenceImage>` | The list of reference images. |

### `LocalizedObjectAnnotation`

Set of detected objects with bounding boxes.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `BoundingPoly` | Image region to which this object belongs. This must be populated. |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |
| `mid` | `string` | Object ID that should align with EntityAnnotation mid. |
| `name` | `string` | Object name, expressed in its `language_code` language. |
| `score` | `number` | Score of the result. Range [0, 1]. |

### `LocationInfo`

Detected entity location information.

| Property | Type | Description |
|----------|------|-------------|
| `latLng` | `LatLng` | lat/long location coordinates. |

### `NormalizedVertex`

A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |

### `ObjectAnnotation`

Prediction for what the object in the bounding box is.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |
| `mid` | `string` | Object ID that should align with EntityAnnotation mid. |
| `name` | `string` | Object name, expressed in its `language_code` language. |
| `score` | `number` | Score of the result. Range [0, 1]. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OperationMetadata`

Contains metadata for the BatchAnnotateImages operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time when the batch request was received. |
| `state` | `string` | Current state of the batch operation. |
| `updateTime` | `string` | The time when the operation result was last updated. |

### `OutputConfig`

The desired output location and metadata.

| Property | Type | Description |
|----------|------|-------------|
| `batchSize` | `integer` | The max number of response protos to put into each output JSON file on Google Cloud Storage. The ... |
| `gcsDestination` | `GcsDestination` | The Google Cloud Storage location to write the output(s) to. |

### `Page`

Detected page from OCR.

| Property | Type | Description |
|----------|------|-------------|
| `blocks` | `array<Block>` | List of blocks of text, images etc on this page. |
| `confidence` | `number` | Confidence of the OCR results on the page. Range [0, 1]. |
| `height` | `integer` | Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels. |
| `property` | `TextProperty` | Additional information detected on the page. |
| `width` | `integer` | Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels. |

### `Paragraph`

Structural unit of text representing a number of words in certain order.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `BoundingPoly` | The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-... |
| `confidence` | `number` | Confidence of the OCR results for the paragraph. Range [0, 1]. |
| `property` | `TextProperty` | Additional information detected for the paragraph. |
| `words` | `array<Word>` | List of all words in this paragraph. |

### `Position`

A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |
| `z` | `number` | Z coordinate (or depth). |

### `Product`

A Product contains ReferenceImages.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | User-provided metadata to be stored with this product. Must be at most 4096 characters long. |
| `displayName` | `string` | The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long. |
| `name` | `string` | The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODU... |
| `productCategory` | `string` | Immutable. The category for the product identified by the reference image. This should be one of ... |
| `productLabels` | `array<KeyValue>` | Key-value pairs that can be attached to a product. At query time, constraints can be specified ba... |

### `ProductSearchParams`

Parameters for a product search request.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `BoundingPoly` | The bounding polygon around the area of interest in the image. If it is not specified, system dis... |
| `filter` | `string` | The filtering expression. This can be used to restrict search results based on Product labels. We... |
| `productCategories` | `array<string>` | The list of product categories to search in. Currently, we only consider the first category, and ... |
| `productSet` | `string` | The resource name of a ProductSet to be searched for similar images. Format is: `projects/PROJECT... |

### `ProductSearchResults`

Results for a product search request.

| Property | Type | Description |
|----------|------|-------------|
| `indexTime` | `string` | Timestamp of the index which provided these results. Products added to the product set and produc... |
| `productGroupedResults` | `array<GroupedResult>` | List of results grouped by products detected in the query image. Each entry corresponds to one bo... |
| `results` | `array<Result>` | List of results, one for each product match. |

### `ProductSet`

A ProductSet contains Products. A ProductSet can contain a maximum of 1 million reference images. If the limit is exceeded, periodic indexing will fail.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The user-provided name for this ProductSet. Must not be empty. Must be at most 4096 characters long. |
| `indexError` | `Status` | Output only. If there was an error with indexing the product set, the field is populated. This fi... |
| `indexTime` | `string` | Output only. The time at which this ProductSet was last indexed. Query results will reflect all u... |
| `name` | `string` | The resource name of the ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets... |

### `ProductSetPurgeConfig`

Config to control which ProductSet contains the Products to be deleted.

| Property | Type | Description |
|----------|------|-------------|
| `productSetId` | `string` | The ProductSet that contains the Products to delete. If a Product is a member of product_set_id i... |

### `Property`

A `Property` consists of a user-supplied name/value pair.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the property. |
| `uint64Value` | `string` | Value of numeric properties. |
| `value` | `string` | Value of the property. |

### `PurgeProductsRequest`

Request message for the `PurgeProducts` method.

| Property | Type | Description |
|----------|------|-------------|
| `deleteOrphanProducts` | `boolean` | If delete_orphan_products is true, all Products that are not in any ProductSet will be deleted. |
| `force` | `boolean` | The default value is false. Override this value to true to actually perform the purge. |
| `productSetPurgeConfig` | `ProductSetPurgeConfig` | Specify which ProductSet contains the Products to be deleted. |

### `ReferenceImage`

A `ReferenceImage` represents a product image and its associated metadata, such as bounding boxes.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPolys` | `array<BoundingPoly>` | Optional. Bounding polygons around the areas of interest in the reference image. If this field is... |
| `name` | `string` | The resource name of the reference image. Format is: `projects/PROJECT_ID/locations/LOC_ID/produc... |
| `uri` | `string` | Required. The Google Cloud Storage URI of the reference image. The URI must start with `gs://`. |

### `RemoveProductFromProductSetRequest`

Request message for the `RemoveProductFromProductSet` method.

| Property | Type | Description |
|----------|------|-------------|
| `product` | `string` | Required. The resource name for the Product to be removed from this ProductSet. Format is: `proje... |

### `Result`

Information about a product.

| Property | Type | Description |
|----------|------|-------------|
| `image` | `string` | The resource name of the image from the product that is the closest match to the query. |
| `product` | `Product` | The Product. |
| `score` | `number` | A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence). |

### `SafeSearchAnnotation`

Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).

| Property | Type | Description |
|----------|------|-------------|
| `adult` | `string` | Represents the adult content likelihood for the image. Adult content may contain elements such as... |
| `medical` | `string` | Likelihood that this is a medical image. |
| `racy` | `string` | Likelihood that the request image contains racy content. Racy content may include (but is not lim... |
| `spoof` | `string` | Spoof likelihood. The likelihood that an modification was made to the image's canonical version t... |
| `violence` | `string` | Likelihood that this image contains violent content. Violent content may include death, serious h... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Symbol`

A single symbol representation.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `BoundingPoly` | The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-rig... |
| `confidence` | `number` | Confidence of the OCR results for the symbol. Range [0, 1]. |
| `property` | `TextProperty` | Additional information detected for the symbol. |
| `text` | `string` | The actual UTF-8 representation of the symbol. |

### `TextAnnotation`

TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.

| Property | Type | Description |
|----------|------|-------------|
| `pages` | `array<Page>` | List of pages detected by OCR. |
| `text` | `string` | UTF-8 text detected on the pages. |

### `TextDetectionParams`

Parameters for text detections. This is used to control TEXT_DETECTION and DOCUMENT_TEXT_DETECTION features.

| Property | Type | Description |
|----------|------|-------------|
| `advancedOcrOptions` | `array<string>` | A list of advanced OCR options to further fine-tune OCR behavior. Current valid values are: - `le... |
| `enableTextDetectionConfidenceScore` | `boolean` | By default, Cloud Vision API only includes confidence score for DOCUMENT_TEXT_DETECTION result. S... |

### `TextProperty`

Additional information detected on the structural component.

| Property | Type | Description |
|----------|------|-------------|
| `detectedBreak` | `DetectedBreak` | Detected start or end of a text segment. |
| `detectedLanguages` | `array<DetectedLanguage>` | A list of detected languages together with confidence. |

### `Vertex`

A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `integer` | X coordinate. |
| `y` | `integer` | Y coordinate. |

### `WebDetection`

Relevant information for the image from the Internet.

| Property | Type | Description |
|----------|------|-------------|
| `bestGuessLabels` | `array<WebLabel>` | The service's best guess as to the topic of the request image. Inferred from similar images on th... |
| `fullMatchingImages` | `array<WebImage>` | Fully matching images from the Internet. Can include resized copies of the query image. |
| `pagesWithMatchingImages` | `array<WebPage>` | Web pages containing the matching images from the Internet. |
| `partialMatchingImages` | `array<WebImage>` | Partial matching images from the Internet. Those images are similar enough to share some key-poin... |
| `visuallySimilarImages` | `array<WebImage>` | The visually similar image results. |
| `webEntities` | `array<WebEntity>` | Deduced entities from similar images on the Internet. |

### `WebDetectionParams`

Parameters for web detection request.

| Property | Type | Description |
|----------|------|-------------|
| `includeGeoResults` | `boolean` | This field has no effect on results. |

### `WebEntity`

Entity deduced from similar images on the Internet.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Canonical description of the entity, in English. |
| `entityId` | `string` | Opaque entity ID. |
| `score` | `number` | Overall relevancy score for the entity. Not normalized and not comparable across different image ... |

### `WebImage`

Metadata for online images.

| Property | Type | Description |
|----------|------|-------------|
| `score` | `number` | (Deprecated) Overall relevancy score for the image. |
| `url` | `string` | The result image URL. |

### `WebLabel`

Label to provide extra metadata for the web detection.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | Label for extra metadata. |
| `languageCode` | `string` | The BCP-47 language code for `label`, such as "en-US" or "sr-Latn". For more information, see htt... |

### `WebPage`

Metadata for web pages.

| Property | Type | Description |
|----------|------|-------------|
| `fullMatchingImages` | `array<WebImage>` | Fully matching images on the page. Can include resized copies of the query image. |
| `pageTitle` | `string` | Title for the web page, may contain HTML markups. |
| `partialMatchingImages` | `array<WebImage>` | Partial matching images on the page. Those images are similar enough to share some key-point feat... |
| `score` | `number` | (Deprecated) Overall relevancy score for the web page. |
| `url` | `string` | The result web page URL. |

### `Word`

A word representation.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBox` | `BoundingPoly` | The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right... |
| `confidence` | `number` | Confidence of the OCR results for the word. Range [0, 1]. |
| `property` | `TextProperty` | Additional information detected for the word. |
| `symbols` | `array<Symbol>` | List of symbols in the word. The order of the symbols follows the natural reading order. |

