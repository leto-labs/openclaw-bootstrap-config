# Cloud Profiler API - API Reference

**Version**: `v2` | **Methods**: 4 | **Schemas**: 4

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudprofiler.projects.profiles.list` | GET | `v2/{+parent}/profiles` | Lists profiles which have been collected so far and for which the caller has permission to view. |
| `cloudprofiler.projects.profiles.create` | POST | `v2/{+parent}/profiles` | CreateProfile creates a new profile resource in the online mode. _Direct use of this API is disco... |
| `cloudprofiler.projects.profiles.patch` | PATCH | `v2/{+name}` | UpdateProfile updates the profile bytes and labels on the profile resource created in the online ... |
| `cloudprofiler.projects.profiles.createOffline` | POST | `v2/{+parent}/profiles:createOffline` | CreateOfflineProfile creates a new profile resource in the offline mode. The client provides the ... |

### `cloudprofiler.projects.profiles.list`

**GET** `v2/{+parent}/profiles`

Lists profiles which have been collected so far and for which the caller has permission to view.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of profiles. Format: projects/{user_project_id} |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. Default page_size is 1000. Max limit is 1000. |
| `pageToken` | `string` | query | No | Optional. The token to continue pagination and get profiles from a particular page. When paginating, all other parame... |

**Response**: `ListProfilesResponse`

```typescript
const res = await cloudprofiler.profiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.write`

---

### `cloudprofiler.projects.profiles.create`

**POST** `v2/{+parent}/profiles`

CreateProfile creates a new profile resource in the online mode. _Direct use of this API is discouraged, please use a [supported profiler agent](https://cloud.google.com/profiler/docs/about-profiler#profiling_agent) instead for profile collection._ The server ensures that the new profiles are created at a constant rate per deployment, so the creation request may hang for some time until the next profile session is available. The request may fail with ABORTED error if the creation is not available within ~1m, the response will indicate the duration of the backoff the client should take before attempting creating a profile again. The backoff duration is returned in google.rpc.RetryInfo extension on the response status. To a gRPC client, the extension will be return as a binary-serialized proto in the trailing metadata item named "google.rpc.retryinfo-bin".

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent project to create the profile in. |

**Request body**: `CreateProfileRequest`

**Response**: `Profile`

```typescript
const res = await cloudprofiler.profiles.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.write`

---

### `cloudprofiler.projects.profiles.patch`

**PATCH** `v2/{+name}`

UpdateProfile updates the profile bytes and labels on the profile resource created in the online mode. Updating the bytes for profiles created in the offline mode is currently not supported: the profile content must be provided at the time of the profile creation. _Direct use of this API is discouraged, please use a [supported profiler agent](https://cloud.google.com/profiler/docs/about-profiler#profiling_agent) instead for profile collection._

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Opaque, server-assigned, unique ID for this profile. |
| `updateMask` | `string` | query | No | Field mask used to specify the fields to be overwritten. Currently only profile_bytes and labels fields are supported... |

**Request body**: `Profile`

**Response**: `Profile`

```typescript
const res = await cloudprofiler.profiles.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.write`

---

### `cloudprofiler.projects.profiles.createOffline`

**POST** `v2/{+parent}/profiles:createOffline`

CreateOfflineProfile creates a new profile resource in the offline mode. The client provides the profile to create along with the profile bytes, the server records it. _Direct use of this API is discouraged, please use a [supported profiler agent](https://cloud.google.com/profiler/docs/about-profiler#profiling_agent) instead for profile collection._

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent project to create the profile in. |

**Request body**: `Profile`

**Response**: `Profile`

```typescript
const res = await cloudprofiler.profiles.createOffline({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.write`

---

## Schemas

### `CreateProfileRequest`

CreateProfileRequest describes a profile resource online creation request. The deployment field must be populated. The profile_type specifies the list of profile types supported by the agent. The creation call will hang until a profile of one of these types needs to be collected.

| Property | Type | Description |
|----------|------|-------------|
| `deployment` | `Deployment` | Deployment details. |
| `profileType` | `array<string>` | One or more profile types that the agent is capable of providing. |

### `Deployment`

Deployment contains the deployment identification information.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Labels identify the deployment within the user universe and same target. Validation regex for lab... |
| `projectId` | `string` | Project ID is the ID of a cloud project. Validation regex: `^a-z{4,61}[a-z0-9]$`. |
| `target` | `string` | Target is the service name used to group related deployments: * Service name for App Engine Flex ... |

### `ListProfilesResponse`

ListProfileResponse contains the list of collected profiles for deployments in projects which the user has permissions to view.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to receive the next page of results. This field maybe empty if there are no more profiles t... |
| `profiles` | `array<Profile>` | List of profiles fetched. |
| `skippedProfiles` | `integer` | Number of profiles that were skipped in the current page since they were not able to be fetched s... |

### `Profile`

Profile resource.

| Property | Type | Description |
|----------|------|-------------|
| `deployment` | `Deployment` | Deployment this profile corresponds to. |
| `duration` | `string` | Duration of the profiling session. Input (for the offline mode) or output (for the online mode). ... |
| `labels` | `object` | Input only. Labels associated to this specific profile. These labels will get merged with the dep... |
| `name` | `string` | Output only. Opaque, server-assigned, unique ID for this profile. |
| `profileBytes` | `string` | Input only. Profile bytes, as a gzip compressed serialized proto, the format is https://github.co... |
| `profileType` | `string` | Type of profile. For offline mode, this must be specified when creating the profile. For online m... |
| `startTime` | `string` | Output only. Start time for the profile. This output is only present in response from the ListPro... |

