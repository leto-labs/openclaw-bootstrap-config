# Access Approval API - API Reference

**Version**: `v1` | **Methods**: 27 | **Schemas**: 17

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `accessapproval.projects.getAccessApprovalSettings` | GET | `v1/{+name}` | Gets the Access Approval settings associated with a project, folder, or organization. |
| `accessapproval.projects.deleteAccessApprovalSettings` | DELETE | `v1/{+name}` | Deletes the settings associated with a project, folder, or organization. This will have the effec... |
| `accessapproval.projects.updateAccessApprovalSettings` | PATCH | `v1/{+name}` | Updates the settings associated with a project, folder, or organization. Settings to update are d... |
| `accessapproval.projects.getServiceAccount` | GET | `v1/{+name}` | Retrieves the service account that is used by Access Approval to access KMS keys for signing appr... |
| `accessapproval.projects.approvalRequests.dismiss` | POST | `v1/{+name}:dismiss` | Dismisses a request. Returns the updated ApprovalRequest. NOTE: When a request is dismissed, it i... |
| `accessapproval.projects.approvalRequests.invalidate` | POST | `v1/{+name}:invalidate` | Invalidates an existing ApprovalRequest. Returns the updated ApprovalRequest. NOTE: This action r... |
| `accessapproval.projects.approvalRequests.get` | GET | `v1/{+name}` | Gets an approval request. Returns NOT_FOUND if the request does not exist. |
| `accessapproval.projects.approvalRequests.approve` | POST | `v1/{+name}:approve` | Approves a request and returns the updated ApprovalRequest. Returns NOT_FOUND if the request does... |
| `accessapproval.projects.approvalRequests.list` | GET | `v1/{+parent}/approvalRequests` | Lists approval requests associated with a project, folder, or organization. Approval requests can... |
| `accessapproval.folders.updateAccessApprovalSettings` | PATCH | `v1/{+name}` | Updates the settings associated with a project, folder, or organization. Settings to update are d... |
| `accessapproval.folders.getServiceAccount` | GET | `v1/{+name}` | Retrieves the service account that is used by Access Approval to access KMS keys for signing appr... |
| `accessapproval.folders.deleteAccessApprovalSettings` | DELETE | `v1/{+name}` | Deletes the settings associated with a project, folder, or organization. This will have the effec... |
| `accessapproval.folders.getAccessApprovalSettings` | GET | `v1/{+name}` | Gets the Access Approval settings associated with a project, folder, or organization. |
| `accessapproval.folders.approvalRequests.invalidate` | POST | `v1/{+name}:invalidate` | Invalidates an existing ApprovalRequest. Returns the updated ApprovalRequest. NOTE: This action r... |
| `accessapproval.folders.approvalRequests.approve` | POST | `v1/{+name}:approve` | Approves a request and returns the updated ApprovalRequest. Returns NOT_FOUND if the request does... |
| `accessapproval.folders.approvalRequests.dismiss` | POST | `v1/{+name}:dismiss` | Dismisses a request. Returns the updated ApprovalRequest. NOTE: When a request is dismissed, it i... |
| `accessapproval.folders.approvalRequests.list` | GET | `v1/{+parent}/approvalRequests` | Lists approval requests associated with a project, folder, or organization. Approval requests can... |
| `accessapproval.folders.approvalRequests.get` | GET | `v1/{+name}` | Gets an approval request. Returns NOT_FOUND if the request does not exist. |
| `accessapproval.organizations.updateAccessApprovalSettings` | PATCH | `v1/{+name}` | Updates the settings associated with a project, folder, or organization. Settings to update are d... |
| `accessapproval.organizations.getServiceAccount` | GET | `v1/{+name}` | Retrieves the service account that is used by Access Approval to access KMS keys for signing appr... |
| `accessapproval.organizations.getAccessApprovalSettings` | GET | `v1/{+name}` | Gets the Access Approval settings associated with a project, folder, or organization. |
| `accessapproval.organizations.deleteAccessApprovalSettings` | DELETE | `v1/{+name}` | Deletes the settings associated with a project, folder, or organization. This will have the effec... |
| `accessapproval.organizations.approvalRequests.list` | GET | `v1/{+parent}/approvalRequests` | Lists approval requests associated with a project, folder, or organization. Approval requests can... |
| `accessapproval.organizations.approvalRequests.dismiss` | POST | `v1/{+name}:dismiss` | Dismisses a request. Returns the updated ApprovalRequest. NOTE: When a request is dismissed, it i... |
| `accessapproval.organizations.approvalRequests.approve` | POST | `v1/{+name}:approve` | Approves a request and returns the updated ApprovalRequest. Returns NOT_FOUND if the request does... |
| `accessapproval.organizations.approvalRequests.get` | GET | `v1/{+name}` | Gets an approval request. Returns NOT_FOUND if the request does not exist. |
| `accessapproval.organizations.approvalRequests.invalidate` | POST | `v1/{+name}:invalidate` | Invalidates an existing ApprovalRequest. Returns the updated ApprovalRequest. NOTE: This action r... |

### `accessapproval.projects.getAccessApprovalSettings`

**GET** `v1/{+name}`

Gets the Access Approval settings associated with a project, folder, or organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the AccessApprovalSettings to retrieve. Format: "{projects|folders|organizations}/{id}/accessApprovalSett... |

**Response**: `AccessApprovalSettings`

```typescript
const res = await accessapproval.projects.getAccessApprovalSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.projects.deleteAccessApprovalSettings`

**DELETE** `v1/{+name}`

Deletes the settings associated with a project, folder, or organization. This will have the effect of disabling Access Approval for the resource. Access Approval may remain active based on parent resource settings. To confirm the effective settings, call GetAccessApprovalSettings and verify effective setting is disabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the AccessApprovalSettings to delete. |

**Response**: `Empty`

```typescript
const res = await accessapproval.projects.deleteAccessApprovalSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.projects.updateAccessApprovalSettings`

**PATCH** `v1/{+name}`

Updates the settings associated with a project, folder, or organization. Settings to update are determined by the value of field_mask.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the settings. Format is one of: * "projects/{project}/accessApprovalSettings" * "folders/{folder... |
| `updateMask` | `string` | query | No | The update mask applies to the settings. Only the top level fields of AccessApprovalSettings (notification_emails & e... |

**Request body**: `AccessApprovalSettings`

**Response**: `AccessApprovalSettings`

```typescript
const res = await accessapproval.projects.updateAccessApprovalSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.projects.getServiceAccount`

**GET** `v1/{+name}`

Retrieves the service account that is used by Access Approval to access KMS keys for signing approved approval requests.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the AccessApprovalServiceAccount to retrieve. |

**Response**: `AccessApprovalServiceAccount`

```typescript
const res = await accessapproval.projects.getServiceAccount({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.projects.approvalRequests.dismiss`

**POST** `v1/{+name}:dismiss`

Dismisses a request. Returns the updated ApprovalRequest. NOTE: When a request is dismissed, it is considered ignored. Dismissing a request does not prevent access granted by other Access Approval requests. Returns NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if the request exists but is not in a pending state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the ApprovalRequest to dismiss. |

**Request body**: `DismissApprovalRequestMessage`

**Response**: `ApprovalRequest`

```typescript
const res = await accessapproval.approvalRequests.dismiss({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.projects.approvalRequests.invalidate`

**POST** `v1/{+name}:invalidate`

Invalidates an existing ApprovalRequest. Returns the updated ApprovalRequest. NOTE: This action revokes Google access based on this approval request. If the resource has other active approvals, access will remain granted. Returns FAILED_PRECONDITION if the request exists but is not in an approved state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the ApprovalRequest to invalidate. |

**Request body**: `InvalidateApprovalRequestMessage`

**Response**: `ApprovalRequest`

```typescript
const res = await accessapproval.approvalRequests.invalidate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.projects.approvalRequests.get`

**GET** `v1/{+name}`

Gets an approval request. Returns NOT_FOUND if the request does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the approval request to retrieve. Format: "{projects|folders|organizations}/{id}/approvalRequests/{approv... |

**Response**: `ApprovalRequest`

```typescript
const res = await accessapproval.approvalRequests.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.projects.approvalRequests.approve`

**POST** `v1/{+name}:approve`

Approves a request and returns the updated ApprovalRequest. Returns NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if the request exists but is not in a pending state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the approval request to approve. |

**Request body**: `ApproveApprovalRequestMessage`

**Response**: `ApprovalRequest`

```typescript
const res = await accessapproval.approvalRequests.approve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.projects.approvalRequests.list`

**GET** `v1/{+parent}/approvalRequests`

Lists approval requests associated with a project, folder, or organization. Approval requests can be filtered by state (pending, active, dismissed). The order is reverse chronological.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent resource. This may be "projects/{project}", "folders/{folder}", or "organizations/{organization}". |
| `filter` | `string` | query | No | A filter on the type of approval requests to retrieve. Must be one of the following values: * [not set]: Requests tha... |
| `pageSize` | `integer` | query | No | Requested page size. |
| `pageToken` | `string` | query | No | A token identifying the page of results to return. |

**Response**: `ListApprovalRequestsResponse`

```typescript
const res = await accessapproval.approvalRequests.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.folders.updateAccessApprovalSettings`

**PATCH** `v1/{+name}`

Updates the settings associated with a project, folder, or organization. Settings to update are determined by the value of field_mask.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the settings. Format is one of: * "projects/{project}/accessApprovalSettings" * "folders/{folder... |
| `updateMask` | `string` | query | No | The update mask applies to the settings. Only the top level fields of AccessApprovalSettings (notification_emails & e... |

**Request body**: `AccessApprovalSettings`

**Response**: `AccessApprovalSettings`

```typescript
const res = await accessapproval.folders.updateAccessApprovalSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.folders.getServiceAccount`

**GET** `v1/{+name}`

Retrieves the service account that is used by Access Approval to access KMS keys for signing approved approval requests.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the AccessApprovalServiceAccount to retrieve. |

**Response**: `AccessApprovalServiceAccount`

```typescript
const res = await accessapproval.folders.getServiceAccount({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.folders.deleteAccessApprovalSettings`

**DELETE** `v1/{+name}`

Deletes the settings associated with a project, folder, or organization. This will have the effect of disabling Access Approval for the resource. Access Approval may remain active based on parent resource settings. To confirm the effective settings, call GetAccessApprovalSettings and verify effective setting is disabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the AccessApprovalSettings to delete. |

**Response**: `Empty`

```typescript
const res = await accessapproval.folders.deleteAccessApprovalSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.folders.getAccessApprovalSettings`

**GET** `v1/{+name}`

Gets the Access Approval settings associated with a project, folder, or organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the AccessApprovalSettings to retrieve. Format: "{projects|folders|organizations}/{id}/accessApprovalSett... |

**Response**: `AccessApprovalSettings`

```typescript
const res = await accessapproval.folders.getAccessApprovalSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.folders.approvalRequests.invalidate`

**POST** `v1/{+name}:invalidate`

Invalidates an existing ApprovalRequest. Returns the updated ApprovalRequest. NOTE: This action revokes Google access based on this approval request. If the resource has other active approvals, access will remain granted. Returns FAILED_PRECONDITION if the request exists but is not in an approved state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the ApprovalRequest to invalidate. |

**Request body**: `InvalidateApprovalRequestMessage`

**Response**: `ApprovalRequest`

```typescript
const res = await accessapproval.approvalRequests.invalidate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.folders.approvalRequests.approve`

**POST** `v1/{+name}:approve`

Approves a request and returns the updated ApprovalRequest. Returns NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if the request exists but is not in a pending state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the approval request to approve. |

**Request body**: `ApproveApprovalRequestMessage`

**Response**: `ApprovalRequest`

```typescript
const res = await accessapproval.approvalRequests.approve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.folders.approvalRequests.dismiss`

**POST** `v1/{+name}:dismiss`

Dismisses a request. Returns the updated ApprovalRequest. NOTE: When a request is dismissed, it is considered ignored. Dismissing a request does not prevent access granted by other Access Approval requests. Returns NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if the request exists but is not in a pending state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the ApprovalRequest to dismiss. |

**Request body**: `DismissApprovalRequestMessage`

**Response**: `ApprovalRequest`

```typescript
const res = await accessapproval.approvalRequests.dismiss({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.folders.approvalRequests.list`

**GET** `v1/{+parent}/approvalRequests`

Lists approval requests associated with a project, folder, or organization. Approval requests can be filtered by state (pending, active, dismissed). The order is reverse chronological.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent resource. This may be "projects/{project}", "folders/{folder}", or "organizations/{organization}". |
| `filter` | `string` | query | No | A filter on the type of approval requests to retrieve. Must be one of the following values: * [not set]: Requests tha... |
| `pageSize` | `integer` | query | No | Requested page size. |
| `pageToken` | `string` | query | No | A token identifying the page of results to return. |

**Response**: `ListApprovalRequestsResponse`

```typescript
const res = await accessapproval.approvalRequests.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.folders.approvalRequests.get`

**GET** `v1/{+name}`

Gets an approval request. Returns NOT_FOUND if the request does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the approval request to retrieve. Format: "{projects|folders|organizations}/{id}/approvalRequests/{approv... |

**Response**: `ApprovalRequest`

```typescript
const res = await accessapproval.approvalRequests.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.organizations.updateAccessApprovalSettings`

**PATCH** `v1/{+name}`

Updates the settings associated with a project, folder, or organization. Settings to update are determined by the value of field_mask.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the settings. Format is one of: * "projects/{project}/accessApprovalSettings" * "folders/{folder... |
| `updateMask` | `string` | query | No | The update mask applies to the settings. Only the top level fields of AccessApprovalSettings (notification_emails & e... |

**Request body**: `AccessApprovalSettings`

**Response**: `AccessApprovalSettings`

```typescript
const res = await accessapproval.organizations.updateAccessApprovalSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.organizations.getServiceAccount`

**GET** `v1/{+name}`

Retrieves the service account that is used by Access Approval to access KMS keys for signing approved approval requests.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the AccessApprovalServiceAccount to retrieve. |

**Response**: `AccessApprovalServiceAccount`

```typescript
const res = await accessapproval.organizations.getServiceAccount({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.organizations.getAccessApprovalSettings`

**GET** `v1/{+name}`

Gets the Access Approval settings associated with a project, folder, or organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the AccessApprovalSettings to retrieve. Format: "{projects|folders|organizations}/{id}/accessApprovalSett... |

**Response**: `AccessApprovalSettings`

```typescript
const res = await accessapproval.organizations.getAccessApprovalSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.organizations.deleteAccessApprovalSettings`

**DELETE** `v1/{+name}`

Deletes the settings associated with a project, folder, or organization. This will have the effect of disabling Access Approval for the resource. Access Approval may remain active based on parent resource settings. To confirm the effective settings, call GetAccessApprovalSettings and verify effective setting is disabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the AccessApprovalSettings to delete. |

**Response**: `Empty`

```typescript
const res = await accessapproval.organizations.deleteAccessApprovalSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.organizations.approvalRequests.list`

**GET** `v1/{+parent}/approvalRequests`

Lists approval requests associated with a project, folder, or organization. Approval requests can be filtered by state (pending, active, dismissed). The order is reverse chronological.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent resource. This may be "projects/{project}", "folders/{folder}", or "organizations/{organization}". |
| `filter` | `string` | query | No | A filter on the type of approval requests to retrieve. Must be one of the following values: * [not set]: Requests tha... |
| `pageSize` | `integer` | query | No | Requested page size. |
| `pageToken` | `string` | query | No | A token identifying the page of results to return. |

**Response**: `ListApprovalRequestsResponse`

```typescript
const res = await accessapproval.approvalRequests.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.organizations.approvalRequests.dismiss`

**POST** `v1/{+name}:dismiss`

Dismisses a request. Returns the updated ApprovalRequest. NOTE: When a request is dismissed, it is considered ignored. Dismissing a request does not prevent access granted by other Access Approval requests. Returns NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if the request exists but is not in a pending state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the ApprovalRequest to dismiss. |

**Request body**: `DismissApprovalRequestMessage`

**Response**: `ApprovalRequest`

```typescript
const res = await accessapproval.approvalRequests.dismiss({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.organizations.approvalRequests.approve`

**POST** `v1/{+name}:approve`

Approves a request and returns the updated ApprovalRequest. Returns NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if the request exists but is not in a pending state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the approval request to approve. |

**Request body**: `ApproveApprovalRequestMessage`

**Response**: `ApprovalRequest`

```typescript
const res = await accessapproval.approvalRequests.approve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.organizations.approvalRequests.get`

**GET** `v1/{+name}`

Gets an approval request. Returns NOT_FOUND if the request does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the approval request to retrieve. Format: "{projects|folders|organizations}/{id}/approvalRequests/{approv... |

**Response**: `ApprovalRequest`

```typescript
const res = await accessapproval.approvalRequests.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accessapproval.organizations.approvalRequests.invalidate`

**POST** `v1/{+name}:invalidate`

Invalidates an existing ApprovalRequest. Returns the updated ApprovalRequest. NOTE: This action revokes Google access based on this approval request. If the resource has other active approvals, access will remain granted. Returns FAILED_PRECONDITION if the request exists but is not in an approved state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the ApprovalRequest to invalidate. |

**Request body**: `InvalidateApprovalRequestMessage`

**Response**: `ApprovalRequest`

```typescript
const res = await accessapproval.approvalRequests.invalidate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AccessApprovalServiceAccount`

Access Approval service account related to a project/folder/organization.

| Property | Type | Description |
|----------|------|-------------|
| `accountEmail` | `string` | Email address of the service account. |
| `name` | `string` | The resource name of the Access Approval service account. Format is one of: * "projects/{project}... |

### `AccessApprovalSettings`

Settings on a Project/Folder/Organization related to Access Approval.

| Property | Type | Description |
|----------|------|-------------|
| `activeKeyVersion` | `string` | The asymmetric crypto key version to use for signing approval requests. Empty active_key_version ... |
| `ancestorHasActiveKeyVersion` | `boolean` | Output only. This field is read only (not settable via UpdateAccessApprovalSettings method). If t... |
| `ancestorsEnrolledServices` | `array<EnrolledService>` | Output only. Field to differentiate ancestor enrolled services from locally enrolled services. |
| `approvalPolicy` | `CustomerApprovalApprovalPolicy` | Optional. Policy configuration for Access Approval that sets the operating mode. The available po... |
| `effectiveApprovalPolicy` | `CustomerApprovalApprovalPolicy` | Output only. Effective policy applied for Access Approval, inclusive of inheritance. |
| `enrolledAncestor` | `boolean` | Output only. This field is read only (not settable via UpdateAccessApprovalSettings method). If t... |
| `enrolledServices` | `array<EnrolledService>` | A list of Google Cloud Services for which the given resource has Access Approval enrolled. Access... |
| `invalidKeyVersion` | `boolean` | Output only. This field is read only (not settable via UpdateAccessApprovalSettings method). If t... |
| `name` | `string` | The resource name of the settings. Format is one of: * "projects/{project}/accessApprovalSettings... |
| `notificationEmails` | `array<string>` | A list of email addresses to which notifications relating to approval requests should be sent. No... |
| `notificationPubsubTopic` | `string` | Optional. A pubsub topic that notifications relating to access approval are published to. Notific... |
| `preferNoBroadApprovalRequests` | `boolean` | This field is used to set a preference for granularity of an access approval request. If true, Go... |
| `preferredRequestExpirationDays` | `integer` | Set the default access approval request expiration time. This value is able to be set directly by... |
| `requestScopeMaxWidthPreference` | `string` | Optional. A setting that indicates the maximum scope of an Access Approval request: either organi... |
| `requireCustomerVisibleJustification` | `boolean` | Optional. When enabled, Google will only be able to send approval requests for access reasons wit... |

### `AccessLocations`

Physical assigned office and physical location of the Google administrator performing the access.

| Property | Type | Description |
|----------|------|-------------|
| `principalOfficeCountry` | `string` | The "home office" location of the Google administrator. A two-letter country code (ISO 3166-1 alp... |
| `principalPhysicalLocationCountry` | `string` | Physical location of the Google administrator at the time of the access. A two-letter country cod... |

### `AccessReason`

| Property | Type | Description |
|----------|------|-------------|
| `detail` | `string` | More detail about certain reason types. See comments for each type above. |
| `type` | `string` | Type of access reason. |

### `ApprovalRequest`

A request for the customer to approve access to a resource.

| Property | Type | Description |
|----------|------|-------------|
| `approve` | `ApproveDecision` | Access was approved. |
| `dismiss` | `DismissDecision` | The request was dismissed. |
| `name` | `string` | The resource name of the request. Format is "{projects|folders|organizations}/{id}/approvalReques... |
| `requestTime` | `string` | The time at which approval was requested. |
| `requestedAugmentedInfo` | `AugmentedInfo` | This field contains the augmented information of the request. |
| `requestedDuration` | `string` | The requested access duration. |
| `requestedExpiration` | `string` | The original requested expiration for the approval. Calculated by adding the requested_duration t... |
| `requestedLocations` | `AccessLocations` | The locations for which approval is being requested. |
| `requestedReason` | `AccessReason` | The access reason for which approval is being requested. |
| `requestedResourceName` | `string` | The resource for which approval is being requested. The format of the resource name is defined at... |
| `requestedResourceProperties` | `ResourceProperties` | Properties related to the resource represented by requested_resource_name. |

### `ApproveApprovalRequestMessage`

Request to approve an ApprovalRequest.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | The expiration time of this approval. |

### `ApproveDecision`

A decision that has been made to approve access to a resource.

| Property | Type | Description |
|----------|------|-------------|
| `approveTime` | `string` | The time at which approval was granted. |
| `autoApproved` | `boolean` | True when the request has been auto-approved. |
| `expireTime` | `string` | The time at which the approval expires. |
| `invalidateTime` | `string` | If set, denotes the timestamp at which the approval is invalidated. |
| `policyApproved` | `boolean` | True when the request has been approved by the customer's defined policy. |
| `signatureInfo` | `SignatureInfo` | The signature for the ApprovalRequest and details on how it was signed. |

### `AugmentedInfo`

This field contains the augmented information of the request. Requires augmented administrative access to be enabled.

| Property | Type | Description |
|----------|------|-------------|
| `command` | `string` | For command-line tools, the full command-line exactly as entered by the actor without adding any ... |

### `CustomerApprovalApprovalPolicy`

Represents all the policies that can be set for Customer Approval.

| Property | Type | Description |
|----------|------|-------------|
| `justificationBasedApprovalPolicy` | `string` | Optional. Policy for approval based on the justification given. |

### `DismissApprovalRequestMessage`

Request to dismiss an approval request.

### `DismissDecision`

A decision that has been made to dismiss an approval request.

| Property | Type | Description |
|----------|------|-------------|
| `dismissTime` | `string` | The time at which the approval request was dismissed. |
| `implicit` | `boolean` | This field will be true if the ApprovalRequest was implicitly dismissed due to inaction by the ac... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnrolledService`

Represents the enrollment of a cloud resource into a specific service.

| Property | Type | Description |
|----------|------|-------------|
| `cloudProduct` | `string` | The product for which Access Approval will be enrolled. Allowed values are listed below (case-sen... |
| `enrollmentLevel` | `string` | The enrollment level of the service. |

### `InvalidateApprovalRequestMessage`

Request to invalidate an existing approval.

### `ListApprovalRequestsResponse`

Response to listing of ApprovalRequest objects.

| Property | Type | Description |
|----------|------|-------------|
| `approvalRequests` | `array<ApprovalRequest>` | Approval request details. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more. |

### `ResourceProperties`

The properties associated with the resource of the request.

| Property | Type | Description |
|----------|------|-------------|
| `excludesDescendants` | `boolean` | Whether an approval will exclude the descendants of the resource being requested. |

### `SignatureInfo`

Information about the digital signature of the resource.

| Property | Type | Description |
|----------|------|-------------|
| `customerKmsKeyVersion` | `string` | The resource name of the customer CryptoKeyVersion used for signing. |
| `googleKeyAlgorithm` | `string` | The hashing algorithm used for signature verification. It will only be present in the case of Goo... |
| `googlePublicKeyPem` | `string` | The public key for the Google default signing, encoded in PEM format. The signature was created u... |
| `serializedApprovalRequest` | `string` | The ApprovalRequest that is serialized without the SignatureInfo message field. This data is used... |
| `signature` | `string` | The digital signature. |

