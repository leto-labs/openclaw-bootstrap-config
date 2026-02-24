# Parameter Manager API - API Reference

**Version**: `v1` | **Methods**: 13 | **Schemas**: 10

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `parametermanager.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `parametermanager.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. |
| `parametermanager.projects.locations.parameters.create` | POST | `v1/{+parent}/parameters` | Creates a new Parameter in a given project and location. |
| `parametermanager.projects.locations.parameters.list` | GET | `v1/{+parent}/parameters` | Lists Parameters in a given project and location. |
| `parametermanager.projects.locations.parameters.get` | GET | `v1/{+name}` | Gets details of a single Parameter. |
| `parametermanager.projects.locations.parameters.delete` | DELETE | `v1/{+name}` | Deletes a single Parameter. |
| `parametermanager.projects.locations.parameters.patch` | PATCH | `v1/{+name}` | Updates a single Parameter. |
| `parametermanager.projects.locations.parameters.versions.list` | GET | `v1/{+parent}/versions` | Lists ParameterVersions in a given project, location, and parameter. |
| `parametermanager.projects.locations.parameters.versions.create` | POST | `v1/{+parent}/versions` | Creates a new ParameterVersion in a given project, location, and parameter. |
| `parametermanager.projects.locations.parameters.versions.patch` | PATCH | `v1/{+name}` | Updates a single ParameterVersion. |
| `parametermanager.projects.locations.parameters.versions.delete` | DELETE | `v1/{+name}` | Deletes a single ParameterVersion. |
| `parametermanager.projects.locations.parameters.versions.render` | GET | `v1/{+name}:render` | Gets rendered version of a ParameterVersion. |
| `parametermanager.projects.locations.parameters.versions.get` | GET | `v1/{+name}` | Gets details of a single ParameterVersion. |

### `parametermanager.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await parametermanager.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parametermanager.projects.locations.list`

**GET** `v1/{+name}/locations`

Lists information about the supported locations for this service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like `"displayName=toky... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequen... |

**Response**: `ListLocationsResponse`

```typescript
const res = await parametermanager.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parametermanager.projects.locations.parameters.create`

**POST** `v1/{+parent}/parameters`

Creates a new Parameter in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent in the format `projects/*/locations/*`. |
| `parameterId` | `string` | query | No | Required. Id of the Parameter resource |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `Parameter`

**Response**: `Parameter`

```typescript
const res = await parametermanager.parameters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parametermanager.projects.locations.parameters.list`

**GET** `v1/{+parent}/parameters`

Lists Parameters in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListParametersRequest in the format `projects/*/locations/*`. |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListParameters` call. Provide this to retrieve the subsequent page.... |

**Response**: `ListParametersResponse`

```typescript
const res = await parametermanager.parameters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parametermanager.projects.locations.parameters.get`

**GET** `v1/{+name}`

Gets details of a single Parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource in the format `projects/*/locations/*/parameters/*`. |

**Response**: `Parameter`

```typescript
const res = await parametermanager.parameters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parametermanager.projects.locations.parameters.delete`

**DELETE** `v1/{+name}`

Deletes a single Parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource in the format `projects/*/locations/*/parameters/*`. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Empty`

```typescript
const res = await parametermanager.parameters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parametermanager.projects.locations.parameters.patch`

**PATCH** `v1/{+name}`

Updates a single Parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. [Output only] The resource name of the Parameter in the format `projects/*/locations/*/parameters/*`. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Parameter resource by the update. The fie... |

**Request body**: `Parameter`

**Response**: `Parameter`

```typescript
const res = await parametermanager.parameters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parametermanager.projects.locations.parameters.versions.list`

**GET** `v1/{+parent}/versions`

Lists ParameterVersions in a given project, location, and parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListParameterVersionsRequest in the format `projects/*/locations/*/parameters/*`. |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListParameterVersions` call. Provide this to retrieve the subsequen... |

**Response**: `ListParameterVersionsResponse`

```typescript
const res = await parametermanager.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parametermanager.projects.locations.parameters.versions.create`

**POST** `v1/{+parent}/versions`

Creates a new ParameterVersion in a given project, location, and parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent in the format `projects/*/locations/*/parameters/*`. |
| `parameterVersionId` | `string` | query | No | Required. Id of the ParameterVersion resource |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `ParameterVersion`

**Response**: `ParameterVersion`

```typescript
const res = await parametermanager.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parametermanager.projects.locations.parameters.versions.patch`

**PATCH** `v1/{+name}`

Updates a single ParameterVersion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. [Output only] The resource name of the ParameterVersion in the format `projects/*/locations/*/parameters/... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the ParameterVersion resource by the update. ... |

**Request body**: `ParameterVersion`

**Response**: `ParameterVersion`

```typescript
const res = await parametermanager.versions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parametermanager.projects.locations.parameters.versions.delete`

**DELETE** `v1/{+name}`

Deletes a single ParameterVersion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource in the format `projects/*/locations/*/parameters/*/versions/*`. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Empty`

```typescript
const res = await parametermanager.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parametermanager.projects.locations.parameters.versions.render`

**GET** `v1/{+name}:render`

Gets rendered version of a ParameterVersion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |

**Response**: `RenderParameterVersionResponse`

```typescript
const res = await parametermanager.versions.render({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parametermanager.projects.locations.parameters.versions.get`

**GET** `v1/{+name}`

Gets details of a single ParameterVersion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource in the format `projects/*/locations/*/parameters/*/versions/*`. |
| `view` | `string` | query | No | Optional. View of the ParameterVersion. In the default FULL view, all metadata & payload associated with the Paramete... |

**Response**: `ParameterVersion`

```typescript
const res = await parametermanager.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListParameterVersionsResponse`

Message for response to listing ParameterVersions

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `parameterVersions` | `array<ParameterVersion>` | The list of ParameterVersions |
| `unreachable` | `array<string>` | Unordered list. Locations that could not be reached. |

### `ListParametersResponse`

Message for response to listing Parameters

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `parameters` | `array<Parameter>` | The list of Parameters |
| `unreachable` | `array<string>` | Unordered list. Locations that could not be reached. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `Parameter`

Message describing Parameter resource

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. [Output only] Create time stamp |
| `format` | `string` | Optional. Specifies the format of a Parameter. |
| `kmsKey` | `string` | Optional. Customer managed encryption key (CMEK) to use for encrypting the Parameter Versions. If... |
| `labels` | `object` | Optional. Labels as key value pairs |
| `name` | `string` | Identifier. [Output only] The resource name of the Parameter in the format `projects/*/locations/... |
| `policyMember` | `ResourcePolicyMember` | Output only. [Output-only] policy member strings of a Google Cloud resource. |
| `updateTime` | `string` | Output only. [Output only] Update time stamp |

### `ParameterVersion`

Message describing ParameterVersion resource

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. [Output only] Create time stamp |
| `disabled` | `boolean` | Optional. Disabled boolean to determine if a ParameterVersion acts as a metadata only resource (p... |
| `kmsKeyVersion` | `string` | Optional. Output only. [Output only] The resource name of the KMS key version used to encrypt the... |
| `name` | `string` | Identifier. [Output only] The resource name of the ParameterVersion in the format `projects/*/loc... |
| `payload` | `ParameterVersionPayload` | Required. Immutable. Payload content of a ParameterVersion resource. This is only returned when t... |
| `updateTime` | `string` | Output only. [Output only] Update time stamp |

### `ParameterVersionPayload`

Message for storing a ParameterVersion resource's payload data

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | Required. bytes data for storing payload. |

### `RenderParameterVersionResponse`

Message describing RenderParameterVersionResponse resource

| Property | Type | Description |
|----------|------|-------------|
| `parameterVersion` | `string` | Output only. Resource identifier of a ParameterVersion in the format `projects/*/locations/*/para... |
| `payload` | `ParameterVersionPayload` | Payload content of a ParameterVersion resource. |
| `renderedPayload` | `string` | Output only. Server generated rendered version of the user provided payload data (ParameterVersio... |

### `ResourcePolicyMember`

Output-only policy member strings of a Google Cloud resource's built-in identity.

| Property | Type | Description |
|----------|------|-------------|
| `iamPolicyNamePrincipal` | `string` | Output only. IAM policy binding member referring to a Google Cloud resource by user-assigned name... |
| `iamPolicyUidPrincipal` | `string` | Output only. IAM policy binding member referring to a Google Cloud resource by system-assigned un... |

