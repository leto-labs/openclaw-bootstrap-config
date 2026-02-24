# Firebase Management API - API Reference

**Version**: `v1beta1` | **Methods**: 37 | **Schemas**: 41

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `firebase.operations.get` | GET | `v1beta1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `firebase.projects.addGoogleAnalytics` | POST | `v1beta1/{+parent}:addGoogleAnalytics` | Links the specified FirebaseProject with an existing [Google Analytics account](http://www.google... |
| `firebase.projects.getAnalyticsDetails` | GET | `v1beta1/{+name}` | Gets the Google Analytics details currently associated with the specified FirebaseProject. If the... |
| `firebase.projects.removeAnalytics` | POST | `v1beta1/{+parent}:removeAnalytics` | Unlinks the specified FirebaseProject from its Google Analytics account. This call removes the as... |
| `firebase.projects.get` | GET | `v1beta1/{+name}` | Gets the specified FirebaseProject. |
| `firebase.projects.list` | GET | `v1beta1/projects` | Lists each FirebaseProject accessible to the caller. The elements are returned in no particular o... |
| `firebase.projects.addFirebase` | POST | `v1beta1/{+project}:addFirebase` | Adds Firebase resources and enables Firebase services in the specified existing [Google Cloud `Pr... |
| `firebase.projects.patch` | PATCH | `v1beta1/{+name}` | Updates the attributes of the specified FirebaseProject. All [query parameters](#query-parameters... |
| `firebase.projects.getAdminSdkConfig` | GET | `v1beta1/{+name}` | Gets the configuration artifact associated with the specified FirebaseProject, which can be used ... |
| `firebase.projects.searchApps` | GET | `v1beta1/{+parent}:searchApps` | Lists all available Apps for the specified FirebaseProject. This is a convenience method. Typical... |
| `firebase.projects.androidApps.get` | GET | `v1beta1/{+name}` | Gets the specified AndroidApp. |
| `firebase.projects.androidApps.list` | GET | `v1beta1/{+parent}/androidApps` | Lists each AndroidApp associated with the specified FirebaseProject. The elements are returned in... |
| `firebase.projects.androidApps.create` | POST | `v1beta1/{+parent}/androidApps` | Requests the creation of a new AndroidApp in the specified FirebaseProject. The result of this ca... |
| `firebase.projects.androidApps.patch` | PATCH | `v1beta1/{+name}` | Updates the attributes of the specified AndroidApp. |
| `firebase.projects.androidApps.remove` | POST | `v1beta1/{+name}:remove` | Removes the specified AndroidApp from the FirebaseProject. |
| `firebase.projects.androidApps.undelete` | POST | `v1beta1/{+name}:undelete` | Restores the specified AndroidApp to the FirebaseProject. |
| `firebase.projects.androidApps.getConfig` | GET | `v1beta1/{+name}` | Gets the configuration artifact associated with the specified AndroidApp. |
| `firebase.projects.androidApps.sha.list` | GET | `v1beta1/{+parent}/sha` | Lists the SHA-1 and SHA-256 certificates for the specified AndroidApp. |
| `firebase.projects.androidApps.sha.create` | POST | `v1beta1/{+parent}/sha` | Adds a ShaCertificate to the specified AndroidApp. |
| `firebase.projects.androidApps.sha.delete` | DELETE | `v1beta1/{+name}` | Removes a ShaCertificate from the specified AndroidApp. |
| `firebase.projects.iosApps.get` | GET | `v1beta1/{+name}` | Gets the specified IosApp. |
| `firebase.projects.iosApps.list` | GET | `v1beta1/{+parent}/iosApps` | Lists each IosApp associated with the specified FirebaseProject. The elements are returned in no ... |
| `firebase.projects.iosApps.create` | POST | `v1beta1/{+parent}/iosApps` | Requests the creation of a new IosApp in the specified FirebaseProject. The result of this call i... |
| `firebase.projects.iosApps.patch` | PATCH | `v1beta1/{+name}` | Updates the attributes of the specified IosApp. |
| `firebase.projects.iosApps.remove` | POST | `v1beta1/{+name}:remove` | Removes the specified IosApp from the FirebaseProject. |
| `firebase.projects.iosApps.undelete` | POST | `v1beta1/{+name}:undelete` | Restores the specified IosApp to the FirebaseProject. |
| `firebase.projects.iosApps.getConfig` | GET | `v1beta1/{+name}` | Gets the configuration artifact associated with the specified IosApp. |
| `firebase.projects.availableLocations.list` | GET | `v1beta1/{+parent}/availableLocations` | **DECOMMISSIONED.** **If called, this endpoint will return a 404 error.** _Instead, use the appli... |
| `firebase.projects.defaultLocation.finalize` | POST | `v1beta1/{+parent}/defaultLocation:finalize` | **DECOMMISSIONED.** **If called, this endpoint will return a 404 error.** _Instead, use the appli... |
| `firebase.projects.webApps.get` | GET | `v1beta1/{+name}` | Gets the specified WebApp. |
| `firebase.projects.webApps.list` | GET | `v1beta1/{+parent}/webApps` | Lists each WebApp associated with the specified FirebaseProject. The elements are returned in no ... |
| `firebase.projects.webApps.create` | POST | `v1beta1/{+parent}/webApps` | Requests the creation of a new WebApp in the specified FirebaseProject. The result of this call i... |
| `firebase.projects.webApps.patch` | PATCH | `v1beta1/{+name}` | Updates the attributes of the specified WebApp. |
| `firebase.projects.webApps.remove` | POST | `v1beta1/{+name}:remove` | Removes the specified WebApp from the FirebaseProject. |
| `firebase.projects.webApps.undelete` | POST | `v1beta1/{+name}:undelete` | Restores the specified WebApp to the FirebaseProject. |
| `firebase.projects.webApps.getConfig` | GET | `v1beta1/{+name}` | Gets the configuration artifact associated with the specified WebApp. |
| `firebase.availableProjects.list` | GET | `v1beta1/availableProjects` | Lists each [Google Cloud `Project`](https://cloud.google.com/resource-manager/reference/rest/v1/p... |

### `firebase.operations.get`

**GET** `v1beta1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await firebase.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.addGoogleAnalytics`

**POST** `v1beta1/{+parent}:addGoogleAnalytics`

Links the specified FirebaseProject with an existing [Google Analytics account](http://www.google.com/analytics/). Using this call, you can either: - Specify an `analyticsAccountId` to provision a new Google Analytics property within the specified account and associate the new property with the `FirebaseProject`. - Specify an existing `analyticsPropertyId` to associate the property with the `FirebaseProject`. Note that when you call `AddGoogleAnalytics`: 1. The first check determines if any existing data streams in the Google Analytics property correspond to any existing Firebase Apps in the `FirebaseProject` (based on the `packageName` or `bundleId` associated with the data stream). Then, as applicable, the data streams and apps are linked. Note that this auto-linking only applies to `AndroidApps` and `IosApps`. 2. If no corresponding data streams are found for the Firebase Apps, new data streams are provisioned in the Google Analytics property for each of the Firebase Apps. Note that a new data stream is always provisioned for a Web App even if it was previously associated with a data stream in the Analytics property. Learn more about the hierarchy and structure of Google Analytics accounts in the [Analytics documentation](https://support.google.com/analytics/answer/9303323). The result of this call is an [`Operation`](../../v1beta1/operations). Poll the `Operation` to track the provisioning process by calling GetOperation until [`done`](../../v1beta1/operations#Operation.FIELDS.done) is `true`. When `done` is `true`, the `Operation` has either succeeded or failed. If the `Operation` succeeded, its [`response`](../../v1beta1/operations#Operation.FIELDS.response) is set to an AnalyticsDetails; if the `Operation` failed, its [`error`](../../v1beta1/operations#Operation.FIELDS.error) is set to a google.rpc.Status. To call `AddGoogleAnalytics`, a project member must be an Owner for the existing `FirebaseProject` and have the [`Edit` permission](https://support.google.com/analytics/answer/2884495) for the Google Analytics account. If the `FirebaseProject` already has Google Analytics enabled, and you call `AddGoogleAnalytics` using an `analyticsPropertyId` that's different from the currently associated property, then the call will fail. Analytics may have already been enabled in the Firebase console or by specifying `timeZone` and `regionCode` in the call to [`AddFirebase`](../../v1beta1/projects/addFirebase).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the FirebaseProject to link to an existing Google Analytics account, in the format: projects/PRO... |

**Request body**: `AddGoogleAnalyticsRequest`

**Response**: `Operation`

```typescript
const res = await firebase.projects.addGoogleAnalytics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.getAnalyticsDetails`

**GET** `v1beta1/{+name}`

Gets the Google Analytics details currently associated with the specified FirebaseProject. If the `FirebaseProject` is not yet linked to Google Analytics, then the response to `GetAnalyticsDetails` is `NOT_FOUND`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the FirebaseProject, in the format: projects/ PROJECT_IDENTIFIER/analyticsDetails Refer to the `... |

**Response**: `AnalyticsDetails`

```typescript
const res = await firebase.projects.getAnalyticsDetails({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.removeAnalytics`

**POST** `v1beta1/{+parent}:removeAnalytics`

Unlinks the specified FirebaseProject from its Google Analytics account. This call removes the association of the specified `FirebaseProject` with its current Google Analytics property. However, this call does not delete the Google Analytics resources, such as the Google Analytics property or any data streams. These resources may be re-associated later to the `FirebaseProject` by calling [`AddGoogleAnalytics`](../../v1beta1/projects/addGoogleAnalytics) and specifying the same `analyticsPropertyId`. For Android Apps and iOS Apps, this call re-links data streams with their corresponding apps. However, for Web Apps, this call provisions a *new* data stream for each Web App. To call `RemoveAnalytics`, a project member must be an Owner for the `FirebaseProject`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the FirebaseProject to unlink from its Google Analytics account, in the format: projects/PROJECT... |

**Request body**: `RemoveAnalyticsRequest`

**Response**: `Empty`

```typescript
const res = await firebase.projects.removeAnalytics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.get`

**GET** `v1beta1/{+name}`

Gets the specified FirebaseProject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the FirebaseProject, in the format: projects/ PROJECT_IDENTIFIER Refer to the `FirebaseProject` ... |

**Response**: `FirebaseProject`

```typescript
const res = await firebase.projects.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.list`

**GET** `v1beta1/projects`

Lists each FirebaseProject accessible to the caller. The elements are returned in no particular order, but they will be a consistent view of the Projects when additional requests are made with a `pageToken`. This method is eventually consistent with Project mutations, which means newly provisioned Projects and recent modifications to existing Projects might not be reflected in the set of Projects. The list will include only ACTIVE Projects. Use GetFirebaseProject for consistent reads as well as for additional Project details.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of Projects to return in the response. The server may return fewer than this at its discretion. If... |
| `pageToken` | `string` | query | No | Token returned from a previous call to `ListFirebaseProjects` indicating where in the set of Projects to resume listing. |
| `showDeleted` | `boolean` | query | No | Optional. Controls whether Projects in the DELETED state should be returned in the response. If not specified, only `... |

**Response**: `ListFirebaseProjectsResponse`

```typescript
const res = await firebase.projects.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.addFirebase`

**POST** `v1beta1/{+project}:addFirebase`

Adds Firebase resources and enables Firebase services in the specified existing [Google Cloud `Project`](https://cloud.google.com/resource-manager/reference/rest/v1/projects). Since a FirebaseProject is actually also a Google Cloud `Project`, a `FirebaseProject` has the same underlying Google Cloud identifiers (`projectNumber` and `projectId`). This allows for easy interop with Google APIs. The result of this call is an [`Operation`](../../v1beta1/operations). Poll the `Operation` to track the provisioning process by calling GetOperation until [`done`](../../v1beta1/operations#Operation.FIELDS.done) is `true`. When `done` is `true`, the `Operation` has either succeeded or failed. If the `Operation` succeeded, its [`response`](../../v1beta1/operations#Operation.FIELDS.response) is set to a FirebaseProject; if the `Operation` failed, its [`error`](../../v1beta1/operations#Operation.FIELDS.error) is set to a google.rpc.Status. The `Operation` is automatically deleted after completion, so there is no need to call DeleteOperation. This method does not modify any billing account information on the underlying Google Cloud `Project`. To call `AddFirebase`, a project member or service account must have the following permissions (the IAM roles of Editor and Owner contain these permissions): `firebase.projects.update`, `resourcemanager.projects.get`, `serviceusage.services.enable`, and `serviceusage.services.get`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The resource name of the Google Cloud `Project` in which Firebase resources will be added and Firebase services enabl... |

**Request body**: `AddFirebaseRequest`

**Response**: `Operation`

```typescript
const res = await firebase.projects.addFirebase({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.patch`

**PATCH** `v1beta1/{+name}`

Updates the attributes of the specified FirebaseProject. All [query parameters](#query-parameters) are required.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the Project, in the format: projects/PROJECT_IDENTIFIER PROJECT_IDENTIFIER: the Project's [`Proj... |
| `updateMask` | `string` | query | No | Specifies which fields of the FirebaseProject to update. Note that the following fields are immutable: `name`, `proje... |

**Request body**: `FirebaseProject`

**Response**: `FirebaseProject`

```typescript
const res = await firebase.projects.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.getAdminSdkConfig`

**GET** `v1beta1/{+name}`

Gets the configuration artifact associated with the specified FirebaseProject, which can be used by servers to simplify initialization. Typically, this configuration is used with the Firebase Admin SDK [initializeApp](https://firebase.google.com/docs/admin/setup#initialize_the_sdk) command.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the FirebaseProject, in the format: projects/ PROJECT_IDENTIFIER/adminSdkConfig Refer to the `Fi... |

**Response**: `AdminSdkConfig`

```typescript
const res = await firebase.projects.getAdminSdkConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.searchApps`

**GET** `v1beta1/{+parent}:searchApps`

Lists all available Apps for the specified FirebaseProject. This is a convenience method. Typically, interaction with an App should be done using the platform-specific service, but some tool use-cases require a summary of all known Apps (such as for App selector interfaces).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent FirebaseProject for which to list Apps, in the format: projects/ PROJECT_IDENTIFIER Refer to the `Firebase... |
| `filter` | `string` | query | No | A query string compatible with Google's [AIP-160 standard](https://google.aip.dev/160). Use any of the following fiel... |
| `pageSize` | `integer` | query | No | The maximum number of Apps to return in the response. The server may return fewer than this value at its discretion. ... |
| `pageToken` | `string` | query | No | Token returned from a previous call to `SearchFirebaseApps` indicating where in the set of Apps to resume listing. |
| `showDeleted` | `boolean` | query | No | Controls whether Apps in the DELETED state should be returned. If not specified, only `ACTIVE` Apps will be returned. |

**Response**: `SearchFirebaseAppsResponse`

```typescript
const res = await firebase.projects.searchApps({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.androidApps.get`

**GET** `v1beta1/{+name}`

Gets the specified AndroidApp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the AndroidApp, in the format: projects/ PROJECT_IDENTIFIER/androidApps/APP_ID Since an APP_ID i... |

**Response**: `AndroidApp`

```typescript
const res = await firebase.androidApps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.androidApps.list`

**GET** `v1beta1/{+parent}/androidApps`

Lists each AndroidApp associated with the specified FirebaseProject. The elements are returned in no particular order, but will be a consistent view of the Apps when additional requests are made with a `pageToken`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the parent FirebaseProject for which to list each associated AndroidApp, in the format: projects... |
| `pageSize` | `integer` | query | No | The maximum number of Apps to return in the response. The server may return fewer than this at its discretion. If no ... |
| `pageToken` | `string` | query | No | Token returned from a previous call to `ListAndroidApps` indicating where in the set of Apps to resume listing. |
| `showDeleted` | `boolean` | query | No | Controls whether Apps in the DELETED state should be returned in the response. If not specified, only `ACTIVE` Apps w... |

**Response**: `ListAndroidAppsResponse`

```typescript
const res = await firebase.androidApps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.androidApps.create`

**POST** `v1beta1/{+parent}/androidApps`

Requests the creation of a new AndroidApp in the specified FirebaseProject. The result of this call is an `Operation` which can be used to track the provisioning process. The `Operation` is automatically deleted after completion, so there is no need to call `DeleteOperation`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the parent FirebaseProject in which to create an AndroidApp, in the format: projects/PROJECT_IDE... |

**Request body**: `AndroidApp`

**Response**: `Operation`

```typescript
const res = await firebase.androidApps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.androidApps.patch`

**PATCH** `v1beta1/{+name}`

Updates the attributes of the specified AndroidApp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the AndroidApp, in the format: projects/ PROJECT_IDENTIFIER/androidApps/APP_ID * PROJECT_IDENTIF... |
| `updateMask` | `string` | query | No | Specifies which fields of the AndroidApp to update. Note that the following fields are immutable: `name`, `app_id`, `... |

**Request body**: `AndroidApp`

**Response**: `AndroidApp`

```typescript
const res = await firebase.androidApps.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.androidApps.remove`

**POST** `v1beta1/{+name}:remove`

Removes the specified AndroidApp from the FirebaseProject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the AndroidApp, in the format: projects/ PROJECT_IDENTIFIER/androidApps/APP_ID Since a... |

**Request body**: `RemoveAndroidAppRequest`

**Response**: `Operation`

```typescript
const res = await firebase.androidApps.remove({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.androidApps.undelete`

**POST** `v1beta1/{+name}:undelete`

Restores the specified AndroidApp to the FirebaseProject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the AndroidApp, in the format: projects/ PROJECT_IDENTIFIER/androidApps/APP_ID Since a... |

**Request body**: `UndeleteAndroidAppRequest`

**Response**: `Operation`

```typescript
const res = await firebase.androidApps.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.androidApps.getConfig`

**GET** `v1beta1/{+name}`

Gets the configuration artifact associated with the specified AndroidApp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the AndroidApp configuration to download, in the format: projects/PROJECT_IDENTIFIER/androidApps... |

**Response**: `AndroidAppConfig`

```typescript
const res = await firebase.androidApps.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.androidApps.sha.list`

**GET** `v1beta1/{+parent}/sha`

Lists the SHA-1 and SHA-256 certificates for the specified AndroidApp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the parent AndroidApp for which to list each associated ShaCertificate, in the format: projects/... |

**Response**: `ListShaCertificatesResponse`

```typescript
const res = await firebase.sha.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.androidApps.sha.create`

**POST** `v1beta1/{+parent}/sha`

Adds a ShaCertificate to the specified AndroidApp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the parent AndroidApp to which to add a ShaCertificate, in the format: projects/PROJECT_IDENTIFI... |

**Request body**: `ShaCertificate`

**Response**: `ShaCertificate`

```typescript
const res = await firebase.sha.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.androidApps.sha.delete`

**DELETE** `v1beta1/{+name}`

Removes a ShaCertificate from the specified AndroidApp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the ShaCertificate to remove from the parent AndroidApp, in the format: projects/PROJECT_IDENTIF... |

**Response**: `Empty`

```typescript
const res = await firebase.sha.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.iosApps.get`

**GET** `v1beta1/{+name}`

Gets the specified IosApp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the IosApp, in the format: projects/PROJECT_IDENTIFIER /iosApps/APP_ID Since an APP_ID is a uniq... |

**Response**: `IosApp`

```typescript
const res = await firebase.iosApps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.iosApps.list`

**GET** `v1beta1/{+parent}/iosApps`

Lists each IosApp associated with the specified FirebaseProject. The elements are returned in no particular order, but will be a consistent view of the Apps when additional requests are made with a `pageToken`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the parent FirebaseProject for which to list each associated IosApp, in the format: projects/PRO... |
| `pageSize` | `integer` | query | No | The maximum number of Apps to return in the response. The server may return fewer than this at its discretion. If no ... |
| `pageToken` | `string` | query | No | Token returned from a previous call to `ListIosApps` indicating where in the set of Apps to resume listing. |
| `showDeleted` | `boolean` | query | No | Controls whether Apps in the DELETED state should be returned in the response. If not specified, only `ACTIVE` Apps w... |

**Response**: `ListIosAppsResponse`

```typescript
const res = await firebase.iosApps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.iosApps.create`

**POST** `v1beta1/{+parent}/iosApps`

Requests the creation of a new IosApp in the specified FirebaseProject. The result of this call is an `Operation` which can be used to track the provisioning process. The `Operation` is automatically deleted after completion, so there is no need to call `DeleteOperation`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the parent FirebaseProject in which to create an IosApp, in the format: projects/PROJECT_IDENTIF... |

**Request body**: `IosApp`

**Response**: `Operation`

```typescript
const res = await firebase.iosApps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.iosApps.patch`

**PATCH** `v1beta1/{+name}`

Updates the attributes of the specified IosApp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the IosApp, in the format: projects/PROJECT_IDENTIFIER /iosApps/APP_ID * PROJECT_IDENTIFIER: the... |
| `updateMask` | `string` | query | No | Specifies which fields of the IosApp to update. Note that the following fields are immutable: `name`, `app_id`, `proj... |

**Request body**: `IosApp`

**Response**: `IosApp`

```typescript
const res = await firebase.iosApps.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.iosApps.remove`

**POST** `v1beta1/{+name}:remove`

Removes the specified IosApp from the FirebaseProject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the IosApp, in the format: projects/ PROJECT_IDENTIFIER/iosApps/APP_ID Since an APP_ID... |

**Request body**: `RemoveIosAppRequest`

**Response**: `Operation`

```typescript
const res = await firebase.iosApps.remove({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.iosApps.undelete`

**POST** `v1beta1/{+name}:undelete`

Restores the specified IosApp to the FirebaseProject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the IosApp, in the format: projects/ PROJECT_IDENTIFIER/iosApps/APP_ID Since an APP_ID... |

**Request body**: `UndeleteIosAppRequest`

**Response**: `Operation`

```typescript
const res = await firebase.iosApps.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.iosApps.getConfig`

**GET** `v1beta1/{+name}`

Gets the configuration artifact associated with the specified IosApp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the App configuration to download, in the format: projects/PROJECT_IDENTIFIER/iosApps/APP_ID/con... |

**Response**: `IosAppConfig`

```typescript
const res = await firebase.iosApps.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.availableLocations.list`

**GET** `v1beta1/{+parent}/availableLocations`

**DECOMMISSIONED.** **If called, this endpoint will return a 404 error.** _Instead, use the applicable resource-specific REST API (or associated documentation, as needed) to determine valid locations for each resource used in your Project._ Lists the valid ["locations for default Google Cloud resources"](https://firebase.google.com/docs/projects/locations#default-cloud-location) for the specified Project (including a FirebaseProject). One of these locations can be selected as the Project's location for default Google Cloud resources, which is the geographical location where the Project's resources associated with Google App Engine (such as the default Cloud Firestore instance) will be provisioned by default. However, if the location for default Google Cloud resources has already been set for the Project, then this setting cannot be changed. This call checks for any possible [location restrictions](https://cloud.google.com/resource-manager/docs/organization-policy/defining-locations) for the specified Project and, thus, might return a subset of all possible locations. To list all locations (regardless of any restrictions), call the endpoint without specifying a unique project identifier (that is, `/v1beta1/{parent=projects/-}/listAvailableLocations`). To call `ListAvailableLocations` with a specified project, a member must be at minimum a Viewer of the Project. Calls without a specified project do not require any specific project permissions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The FirebaseProject for which to list [locations for default Google Cloud resources](https://firebase.google.com/docs... |
| `pageSize` | `integer` | query | No | The maximum number of locations to return in the response. The server may return fewer than this value at its discret... |
| `pageToken` | `string` | query | No | Token returned from a previous call to `ListAvailableLocations` indicating where in the list of locations to resume l... |

**Response**: `ListAvailableLocationsResponse`

```typescript
const res = await firebase.availableLocations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.defaultLocation.finalize`

**POST** `v1beta1/{+parent}/defaultLocation:finalize`

**DECOMMISSIONED.** **If called, this endpoint will return a 404 error.** _Instead, use the applicable resource-specific REST API to set the location for each resource used in your Project._ Sets the ["location for default Google Cloud resources"](https://firebase.google.com/docs/projects/locations#default-cloud-location) for the specified FirebaseProject. This method creates a Google App Engine application with a [default Cloud Storage bucket](https://cloud.google.com/appengine/docs/standard/python/googlecloudstorageclient/setting-up-cloud-storage#activating_a_cloud_storage_bucket), located in the specified [`locationId`](#body.request_body.FIELDS.location_id). This location must be one of the available [App Engine locations](https://cloud.google.com/about/locations#region). After the location for default Google Cloud resources is finalized, or if it was already set, it cannot be changed. The location for default Google Cloud resources for the specified `FirebaseProject` might already be set because either the underlying Google Cloud `Project` already has an App Engine application or `FinalizeDefaultLocation` was previously called with a specified `locationId`. The result of this call is an [`Operation`](../../v1beta1/operations), which can be used to track the provisioning process. The [`response`](../../v1beta1/operations#Operation.FIELDS.response) type of the `Operation` is google.protobuf.Empty. The `Operation` can be polled by its `name` using GetOperation until `done` is true. When `done` is true, the `Operation` has either succeeded or failed. If the `Operation` has succeeded, its [`response`](../../v1beta1/operations#Operation.FIELDS.response) will be set to a google.protobuf.Empty; if the `Operation` has failed, its `error` will be set to a google.rpc.Status. The `Operation` is automatically deleted after completion, so there is no need to call DeleteOperation. All fields listed in the [request body](#request-body) are required. To call `FinalizeDefaultLocation`, a member must be an Owner of the Project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the FirebaseProject for which the ["location for default Google Cloud resources"](https://fireba... |

**Request body**: `FinalizeDefaultLocationRequest`

**Response**: `Operation`

```typescript
const res = await firebase.defaultLocation.finalize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.webApps.get`

**GET** `v1beta1/{+name}`

Gets the specified WebApp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the WebApp, in the format: projects/PROJECT_IDENTIFIER /webApps/APP_ID Since an APP_ID is a uniq... |

**Response**: `WebApp`

```typescript
const res = await firebase.webApps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.webApps.list`

**GET** `v1beta1/{+parent}/webApps`

Lists each WebApp associated with the specified FirebaseProject. The elements are returned in no particular order, but will be a consistent view of the Apps when additional requests are made with a `pageToken`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the parent FirebaseProject for which to list each associated WebApp, in the format: projects/PRO... |
| `pageSize` | `integer` | query | No | The maximum number of Apps to return in the response. The server may return fewer than this value at its discretion. ... |
| `pageToken` | `string` | query | No | Token returned from a previous call to `ListWebApps` indicating where in the set of Apps to resume listing. |
| `showDeleted` | `boolean` | query | No | Controls whether Apps in the DELETED state should be returned in the response. If not specified, only `ACTIVE` Apps w... |

**Response**: `ListWebAppsResponse`

```typescript
const res = await firebase.webApps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.projects.webApps.create`

**POST** `v1beta1/{+parent}/webApps`

Requests the creation of a new WebApp in the specified FirebaseProject. The result of this call is an `Operation` which can be used to track the provisioning process. The `Operation` is automatically deleted after completion, so there is no need to call `DeleteOperation`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the parent FirebaseProject in which to create a WebApp, in the format: projects/PROJECT_IDENTIFI... |

**Request body**: `WebApp`

**Response**: `Operation`

```typescript
const res = await firebase.webApps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.webApps.patch`

**PATCH** `v1beta1/{+name}`

Updates the attributes of the specified WebApp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the WebApp, in the format: projects/PROJECT_IDENTIFIER /webApps/APP_ID * PROJECT_IDENTIFIER: the... |
| `updateMask` | `string` | query | No | Specifies which fields of the WebApp to update. Note that the following fields are immutable: `name`, `app_id`, and `... |

**Request body**: `WebApp`

**Response**: `WebApp`

```typescript
const res = await firebase.webApps.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.webApps.remove`

**POST** `v1beta1/{+name}:remove`

Removes the specified WebApp from the FirebaseProject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the WebApp, in the format: projects/ PROJECT_IDENTIFIER/webApps/APP_ID Since an APP_ID... |

**Request body**: `RemoveWebAppRequest`

**Response**: `Operation`

```typescript
const res = await firebase.webApps.remove({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.webApps.undelete`

**POST** `v1beta1/{+name}:undelete`

Restores the specified WebApp to the FirebaseProject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the WebApp, in the format: projects/ PROJECT_IDENTIFIER/webApps/APP_ID Since an APP_ID... |

**Request body**: `UndeleteWebAppRequest`

**Response**: `Operation`

```typescript
const res = await firebase.webApps.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebase.projects.webApps.getConfig`

**GET** `v1beta1/{+name}`

Gets the configuration artifact associated with the specified WebApp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the WebApp configuration to download, in the format: projects/PROJECT_IDENTIFIER/webApps/APP_ID/... |

**Response**: `WebAppConfig`

```typescript
const res = await firebase.webApps.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebase.availableProjects.list`

**GET** `v1beta1/availableProjects`

Lists each [Google Cloud `Project`](https://cloud.google.com/resource-manager/reference/rest/v1/projects) that can have Firebase resources added and Firebase services enabled. A Project will only be listed if: - The caller has sufficient [Google IAM](https://cloud.google.com/iam) permissions to call AddFirebase. - The Project is not already a FirebaseProject. - The Project is not in an Organization which has policies that prevent Firebase resources from being added.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of Projects to return in the response. The server may return fewer than this value at its discreti... |
| `pageToken` | `string` | query | No | Token returned from a previous call to `ListAvailableProjects` indicating where in the set of Projects to resume list... |

**Response**: `ListAvailableProjectsResponse`

```typescript
const res = await firebase.availableProjects.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

## Schemas

### `AddFirebaseRequest`

All fields are required.

| Property | Type | Description |
|----------|------|-------------|
| `locationId` | `string` | **DEPRECATED.** _Instead, use product-specific REST APIs to work with the location of each resour... |

### `AddGoogleAnalyticsRequest`

| Property | Type | Description |
|----------|------|-------------|
| `analyticsAccountId` | `string` | The ID for the existing [Google Analytics account](http://www.google.com/analytics/) that you wan... |
| `analyticsPropertyId` | `string` | The ID for the existing Google Analytics property that you want to associate with the `FirebasePr... |

### `AdminSdkConfig`

| Property | Type | Description |
|----------|------|-------------|
| `databaseURL` | `string` | **DEPRECATED.** _Instead, find the URL of the default Realtime Database instance using the [list ... |
| `locationId` | `string` | **DEPRECATED.** _Instead, use product-specific REST APIs to find the location of each resource in... |
| `projectId` | `string` | Immutable. A user-assigned unique identifier for the `FirebaseProject`. This identifier may appea... |
| `storageBucket` | `string` | **DEPRECATED.** _Instead, find the name of the default Cloud Storage for Firebase bucket using th... |

### `AnalyticsDetails`

| Property | Type | Description |
|----------|------|-------------|
| `analyticsProperty` | `AnalyticsProperty` | The Analytics Property object associated with the specified `FirebaseProject`. This object contai... |
| `streamMappings` | `array<StreamMapping>` | - For `AndroidApps` and `IosApps`: a map of `app` to `streamId` for each Firebase App in the spec... |

### `AnalyticsProperty`

Details of a Google Analytics property

| Property | Type | Description |
|----------|------|-------------|
| `analyticsAccountId` | `string` | Output only. The ID of the [Google Analytics account](https://www.google.com/analytics/) for the ... |
| `displayName` | `string` | The display name of the Google Analytics property associated with the specified `FirebaseProject`. |
| `id` | `string` | The globally unique, Google-assigned identifier of the Google Analytics property associated with ... |

### `AndroidApp`

Details of a Firebase App for Android.

| Property | Type | Description |
|----------|------|-------------|
| `apiKeyId` | `string` | The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with th... |
| `appId` | `string` | Output only. Immutable. The globally unique, Firebase-assigned identifier for the `AndroidApp`. T... |
| `displayName` | `string` | The user-assigned display name for the `AndroidApp`. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and it may be sent wi... |
| `expireTime` | `string` | Output only. If the App has been removed from the Project, this is the timestamp of when the App ... |
| `name` | `string` | The resource name of the AndroidApp, in the format: projects/ PROJECT_IDENTIFIER/androidApps/APP_... |
| `packageName` | `string` | Immutable. The canonical package name of the Android app as would appear in the Google Play Devel... |
| `projectId` | `string` | Output only. Immutable. A user-assigned unique identifier of the parent FirebaseProject for the `... |
| `sha1Hashes` | `array<string>` | The SHA1 certificate hashes for the AndroidApp. |
| `sha256Hashes` | `array<string>` | The SHA256 certificate hashes for the AndroidApp. |
| `state` | `string` | Output only. The lifecycle state of the App. |

### `AndroidAppConfig`

Configuration metadata of a single Firebase App for Android.

| Property | Type | Description |
|----------|------|-------------|
| `configFileContents` | `string` | The contents of the JSON configuration file. |
| `configFilename` | `string` | The filename that the configuration artifact for the `AndroidApp` is typically saved as. For exam... |

### `DefaultResources`

**DEPRECATED.** _Auto-provisioning of these resources is changing, so this object no longer reliably provides information about the resources within the Project. Instead, retrieve information about each resource directly from its resource-specific API._ The default auto-provisioned resources associated with the Project.

| Property | Type | Description |
|----------|------|-------------|
| `hostingSite` | `string` | Output only. **DEPRECATED.** _Instead, find the name of the default Firebase Hosting site using [... |
| `locationId` | `string` | Output only. **DEPRECATED.** _Instead, use product-specific REST APIs to find the location of eac... |
| `realtimeDatabaseInstance` | `string` | Output only. **DEPRECATED.** _Instead, find the name of the default Realtime Database instance us... |
| `storageBucket` | `string` | Output only. **DEPRECATED.** _Instead, find the name of the default Cloud Storage for Firebase bu... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `FinalizeDefaultLocationRequest`

| Property | Type | Description |
|----------|------|-------------|
| `locationId` | `string` | **DEPRECATED** The ID of the Project's ["location for default Google Cloud resources"](https://fi... |

### `FirebaseAppInfo`

A high-level summary of an App.

| Property | Type | Description |
|----------|------|-------------|
| `apiKeyId` | `string` | The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with th... |
| `appId` | `string` | Output only. Immutable. The globally unique, Firebase-assigned identifier for the `WebApp`. This ... |
| `displayName` | `string` | The user-assigned display name of the Firebase App. |
| `expireTime` | `string` | Output only. If the App has been removed from the Project, this is the timestamp of when the App ... |
| `name` | `string` | The resource name of the Firebase App, in the format: projects/PROJECT_ID /iosApps/APP_ID or proj... |
| `namespace` | `string` | Output only. Immutable. The platform-specific identifier of the App. *Note:* For most use cases, ... |
| `platform` | `string` | The platform of the Firebase App. |
| `state` | `string` | Output only. The lifecycle state of the App. |

### `FirebaseProject`

A `FirebaseProject` is the top-level Firebase entity. It is the container for Firebase Apps, Firebase Hosting sites, storage systems (Firebase Realtime Database, Cloud Firestore, Cloud Storage buckets), and other Firebase and Google Cloud resources. You create a `FirebaseProject` by calling AddFirebase and specifying an *existing* [Google Cloud `Project`](https://cloud.google.com/resource-manager/reference/rest/v1/projects). This adds Firebase resources to the existing Google Cloud `Project`. Since a FirebaseProject is actually also a Google Cloud `Project`, a `FirebaseProject` has the same underlying Google Cloud identifiers (`projectNumber` and `projectId`). This allows for easy interop with Google APIs.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | A set of user-defined annotations for the FirebaseProject. Learn more about annotations in Google... |
| `displayName` | `string` | The user-assigned display name of the Project. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and it may be sent wi... |
| `name` | `string` | The resource name of the Project, in the format: projects/PROJECT_IDENTIFIER PROJECT_IDENTIFIER: ... |
| `projectId` | `string` | Output only. Immutable. A user-assigned unique identifier for the Project. This identifier may ap... |
| `projectNumber` | `string` | Output only. Immutable. The globally unique, Google-assigned canonical identifier for the Project... |
| `resources` | `DefaultResources` | Output only. **DEPRECATED.** _Auto-provisioning of these resources is changing, so this object no... |
| `state` | `string` | Output only. The lifecycle state of the Project. |

### `IosApp`

Details of a Firebase App for iOS.

| Property | Type | Description |
|----------|------|-------------|
| `apiKeyId` | `string` | The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with th... |
| `appId` | `string` | Output only. Immutable. The globally unique, Firebase-assigned identifier for the `IosApp`. This ... |
| `appStoreId` | `string` | The automatically generated Apple ID assigned to the iOS app by Apple in the iOS App Store. |
| `bundleId` | `string` | Immutable. The canonical bundle ID of the iOS app as it would appear in the iOS AppStore. |
| `displayName` | `string` | The user-assigned display name for the `IosApp`. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and it may be sent wi... |
| `expireTime` | `string` | Output only. If the App has been removed from the Project, this is the timestamp of when the App ... |
| `name` | `string` | The resource name of the IosApp, in the format: projects/PROJECT_IDENTIFIER /iosApps/APP_ID * PRO... |
| `projectId` | `string` | Output only. Immutable. A user-assigned unique identifier of the parent FirebaseProject for the `... |
| `state` | `string` | Output only. The lifecycle state of the App. |
| `teamId` | `string` | The Apple Developer Team ID associated with the App in the App Store. |

### `IosAppConfig`

Configuration metadata of a single Firebase App for iOS.

| Property | Type | Description |
|----------|------|-------------|
| `configFileContents` | `string` | The content of the XML configuration file. |
| `configFilename` | `string` | The filename that the configuration artifact for the `IosApp` is typically saved as. For example:... |

### `ListAndroidAppsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `apps` | `array<AndroidApp>` | List of each `AndroidApp` associated with the specified `FirebaseProject`. |
| `nextPageToken` | `string` | If the result list is too large to fit in a single response, then a token is returned. If the str... |

### `ListAvailableLocationsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | One page of results from a call to `ListAvailableLocations`. |
| `nextPageToken` | `string` | If the result list is too large to fit in a single response, then a token is returned. If the str... |

### `ListAvailableProjectsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If the result list is too large to fit in a single response, then a token is returned. If the str... |
| `projectInfo` | `array<ProjectInfo>` | The list of Google Cloud `Projects` which can have Firebase resources added to them. |

### `ListFirebaseProjectsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If the result list is too large to fit in a single response, then a token is returned. If the str... |
| `results` | `array<FirebaseProject>` | One page of the list of Projects that are accessible to the caller. |

### `ListIosAppsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `apps` | `array<IosApp>` | List of each `IosApp` associated with the specified `FirebaseProject`. |
| `nextPageToken` | `string` | If the result list is too large to fit in a single response, then a token is returned. If the str... |

### `ListShaCertificatesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `certificates` | `array<ShaCertificate>` | The list of each `ShaCertificate` associated with the `AndroidApp`. |

### `ListWebAppsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `apps` | `array<WebApp>` | List of each `WebApp` associated with the specified `FirebaseProject`. |
| `nextPageToken` | `string` | If the result list is too large to fit in a single response, then a token is returned. If the str... |

### `Location`

**DEPRECATED.** _This Location is no longer used to determine Firebase resource locations. Instead, consult product documentation to determine valid locations for each resource used in your Project._ A ["location for default Google Cloud resources"](https://firebase.google.com/docs/projects/locations#default-cloud-location) that can be selected for a FirebaseProject. These are resources associated with Google App Engine.

| Property | Type | Description |
|----------|------|-------------|
| `features` | `array<string>` | Products and services that are available in the location for default Google Cloud resources. |
| `locationId` | `string` | The ID of the Project's location for default Google Cloud resources. It will be one of the availa... |
| `type` | `string` | Indicates whether the location for default Google Cloud resources is a [regional or multi-regiona... |

### `MessageSet`

This is proto2's version of MessageSet. DEPRECATED: DO NOT USE FOR NEW FIELDS. If you are using editions or proto2, please make your own extendable messages for your use case. If you are using proto3, please use `Any` instead. MessageSet was the implementation of extensions for proto1. When proto2 was introduced, extensions were implemented as a first-class feature. This schema for MessageSet was meant to be a "bridge" solution to migrate MessageSet-bearing messages from proto1 to proto2. This schema has been open-sourced only to facilitate the migration of Google products with MessageSet-bearing messages to open-source environments.

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

Describes the progress of an LRO. It is included in the `metadata` field of the `Operation`.

### `ProductMetadata`

Metadata about a long-running Product operation.

| Property | Type | Description |
|----------|------|-------------|
| `warningMessages` | `array<string>` | List of warnings related to the associated operation. |

### `ProjectInfo`

A reference to a Google Cloud `Project`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The user-assigned display name of the Google Cloud `Project`, for example: `My App`. |
| `locationId` | `string` | **DEPRECATED** _Instead, use product-specific REST APIs to work with the location of each resourc... |
| `project` | `string` | The resource name of the Google Cloud `Project` to which Firebase resources can be added, in the ... |

### `RemoveAnalyticsRequest`

| Property | Type | Description |
|----------|------|-------------|
| `analyticsPropertyId` | `string` | Optional. The ID of the Google Analytics property associated with the specified `FirebaseProject`... |

### `RemoveAndroidAppRequest`

| Property | Type | Description |
|----------|------|-------------|
| `allowMissing` | `boolean` | If set to true, and the App is not found, the request will succeed but no action will be taken on... |
| `etag` | `string` | Checksum provided in the AndroidApp resource. If provided, this checksum ensures that the client ... |
| `immediate` | `boolean` | Determines whether to _immediately_ delete the AndroidApp. If set to true, the App is immediately... |
| `validateOnly` | `boolean` | If set to true, the request is only validated. The App will _not_ be removed. |

### `RemoveIosAppRequest`

| Property | Type | Description |
|----------|------|-------------|
| `allowMissing` | `boolean` | If set to true, and the App is not found, the request will succeed but no action will be taken on... |
| `etag` | `string` | Checksum provided in the IosApp resource. If provided, this checksum ensures that the client has ... |
| `immediate` | `boolean` | Determines whether to _immediately_ delete the IosApp. If set to true, the App is immediately del... |
| `validateOnly` | `boolean` | If set to true, the request is only validated. The App will _not_ be removed. |

### `RemoveWebAppRequest`

| Property | Type | Description |
|----------|------|-------------|
| `allowMissing` | `boolean` | If set to true, and the App is not found, the request will succeed but no action will be taken on... |
| `etag` | `string` | Checksum provided in the WebApp resource. If provided, this checksum ensures that the client has ... |
| `immediate` | `boolean` | Determines whether to _immediately_ delete the WebApp. If set to true, the App is immediately del... |
| `validateOnly` | `boolean` | If set to true, the request is only validated. The App will _not_ be removed. |

### `SearchFirebaseAppsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `apps` | `array<FirebaseAppInfo>` | One page of results from a call to `SearchFirebaseApps`. |
| `nextPageToken` | `string` | If the result list is too large to fit in a single response, then a token is returned. This token... |

### `ShaCertificate`

A SHA-1 or SHA-256 certificate associated with the AndroidApp.

| Property | Type | Description |
|----------|------|-------------|
| `certType` | `string` | The type of SHA certificate encoded in the hash. |
| `name` | `string` | The resource name of the ShaCertificate for the AndroidApp, in the format: projects/PROJECT_IDENT... |
| `shaHash` | `string` | The certificate hash for the `AndroidApp`. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StatusProto`

Wire-format for a Status object

| Property | Type | Description |
|----------|------|-------------|
| `canonicalCode` | `integer` | copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional int32 canonical_code = 6; |
| `code` | `integer` | Numeric code drawn from the space specified below. Often, this is the canonical error space, and ... |
| `message` | `string` | Detail message copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional string m... |
| `messageSet` | `MessageSet` | message_set associates an arbitrary proto message with the status. copybara:strip_begin(b/3833636... |
| `space` | `string` | copybara:strip_begin(b/383363683) Space to which this status belongs copybara:strip_end_and_repla... |

### `StreamMapping`

A mapping of a Firebase App to a Google Analytics data stream

| Property | Type | Description |
|----------|------|-------------|
| `app` | `string` | The resource name of the Firebase App associated with the Google Analytics data stream, in the fo... |
| `measurementId` | `string` | Applicable for Firebase Web Apps only. The unique Google-assigned identifier of the Google Analyt... |
| `streamId` | `string` | The unique Google-assigned identifier of the Google Analytics data stream associated with the Fir... |

### `UndeleteAndroidAppRequest`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Checksum provided in the AndroidApp resource. If provided, this checksum ensures that the client ... |
| `validateOnly` | `boolean` | If set to true, the request is only validated. The App will _not_ be undeleted. |

### `UndeleteIosAppRequest`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Checksum provided in the IosApp resource. If provided, this checksum ensures that the client has ... |
| `validateOnly` | `boolean` | If set to true, the request is only validated. The App will _not_ be undeleted. |

### `UndeleteWebAppRequest`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Checksum provided in the WebApp resource. If provided, this checksum ensures that the client has ... |
| `validateOnly` | `boolean` | If set to true, the request is only validated. The App will _not_ be undeleted. |

### `WebApp`

Details of a Firebase App for the web.

| Property | Type | Description |
|----------|------|-------------|
| `apiKeyId` | `string` | The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with th... |
| `appId` | `string` | Output only. Immutable. The globally unique, Firebase-assigned identifier for the `WebApp`. This ... |
| `appUrls` | `array<string>` | The URLs where the `WebApp` is hosted. |
| `displayName` | `string` | The user-assigned display name for the `WebApp`. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and it may be sent wi... |
| `expireTime` | `string` | Output only. If the App has been removed from the Project, this is the timestamp of when the App ... |
| `name` | `string` | The resource name of the WebApp, in the format: projects/PROJECT_IDENTIFIER /webApps/APP_ID * PRO... |
| `projectId` | `string` | Output only. Immutable. A user-assigned unique identifier of the parent FirebaseProject for the `... |
| `state` | `string` | Output only. The lifecycle state of the App. |
| `webId` | `string` | Output only. Immutable. A unique, Firebase-assigned identifier for the `WebApp`. This identifier ... |

### `WebAppConfig`

Configuration metadata of a single Firebase App for the web.

| Property | Type | Description |
|----------|------|-------------|
| `apiKey` | `string` | The [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.key... |
| `appId` | `string` | Immutable. The globally unique, Firebase-assigned identifier for the `WebApp`. |
| `authDomain` | `string` | The domain Firebase Auth configures for OAuth redirects, in the format: PROJECT_ID.firebaseapp.com |
| `databaseURL` | `string` | **DEPRECATED.** _Instead, find the URL of the default Realtime Database instance using the [list ... |
| `locationId` | `string` | **DEPRECATED.** _Instead, use product-specific REST APIs to find the location of each resource in... |
| `measurementId` | `string` | The unique Google-assigned identifier of the Google Analytics web stream associated with the `Web... |
| `messagingSenderId` | `string` | The sender ID for use with Firebase Cloud Messaging. |
| `projectId` | `string` | Immutable. A user-assigned unique identifier for the `FirebaseProject`. |
| `projectNumber` | `string` | Output only. Immutable. The globally unique, Google-assigned canonical identifier for the Project... |
| `realtimeDatabaseUrl` | `string` | Optional. Duplicate field for the URL of the default Realtime Database instances (if the default ... |
| `storageBucket` | `string` | **DEPRECATED.** _Instead, find the name of the default Cloud Storage for Firebase bucket using th... |
| `version` | `string` | Version of the config specification. |

