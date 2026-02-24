# Essential Contacts API - API Reference

**Version**: `v1` | **Methods**: 21 | **Schemas**: 5

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `essentialcontacts.projects.contacts.create` | POST | `v1/{+parent}/contacts` | Adds a new contact for a resource. |
| `essentialcontacts.projects.contacts.patch` | PATCH | `v1/{+name}` | Updates a contact. Note: A contact's email address cannot be changed. |
| `essentialcontacts.projects.contacts.list` | GET | `v1/{+parent}/contacts` | Lists the contacts that have been set on a resource. |
| `essentialcontacts.projects.contacts.get` | GET | `v1/{+name}` | Gets a single contact. |
| `essentialcontacts.projects.contacts.delete` | DELETE | `v1/{+name}` | Deletes a contact. |
| `essentialcontacts.projects.contacts.compute` | GET | `v1/{+parent}/contacts:compute` | Lists all contacts for the resource that are subscribed to the specified notification categories,... |
| `essentialcontacts.projects.contacts.sendTestMessage` | POST | `v1/{+resource}/contacts:sendTestMessage` | Allows a contact admin to send a test message to contact to verify that it has been configured co... |
| `essentialcontacts.folders.contacts.create` | POST | `v1/{+parent}/contacts` | Adds a new contact for a resource. |
| `essentialcontacts.folders.contacts.patch` | PATCH | `v1/{+name}` | Updates a contact. Note: A contact's email address cannot be changed. |
| `essentialcontacts.folders.contacts.list` | GET | `v1/{+parent}/contacts` | Lists the contacts that have been set on a resource. |
| `essentialcontacts.folders.contacts.get` | GET | `v1/{+name}` | Gets a single contact. |
| `essentialcontacts.folders.contacts.delete` | DELETE | `v1/{+name}` | Deletes a contact. |
| `essentialcontacts.folders.contacts.compute` | GET | `v1/{+parent}/contacts:compute` | Lists all contacts for the resource that are subscribed to the specified notification categories,... |
| `essentialcontacts.folders.contacts.sendTestMessage` | POST | `v1/{+resource}/contacts:sendTestMessage` | Allows a contact admin to send a test message to contact to verify that it has been configured co... |
| `essentialcontacts.organizations.contacts.create` | POST | `v1/{+parent}/contacts` | Adds a new contact for a resource. |
| `essentialcontacts.organizations.contacts.patch` | PATCH | `v1/{+name}` | Updates a contact. Note: A contact's email address cannot be changed. |
| `essentialcontacts.organizations.contacts.list` | GET | `v1/{+parent}/contacts` | Lists the contacts that have been set on a resource. |
| `essentialcontacts.organizations.contacts.get` | GET | `v1/{+name}` | Gets a single contact. |
| `essentialcontacts.organizations.contacts.delete` | DELETE | `v1/{+name}` | Deletes a contact. |
| `essentialcontacts.organizations.contacts.compute` | GET | `v1/{+parent}/contacts:compute` | Lists all contacts for the resource that are subscribed to the specified notification categories,... |
| `essentialcontacts.organizations.contacts.sendTestMessage` | POST | `v1/{+resource}/contacts:sendTestMessage` | Allows a contact admin to send a test message to contact to verify that it has been configured co... |

### `essentialcontacts.projects.contacts.create`

**POST** `v1/{+parent}/contacts`

Adds a new contact for a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or proj... |

**Request body**: `GoogleCloudEssentialcontactsV1Contact`

**Response**: `GoogleCloudEssentialcontactsV1Contact`

```typescript
const res = await essentialcontacts.contacts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.projects.contacts.patch`

**PATCH** `v1/{+name}`

Updates a contact. Note: A contact's email address cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id} |
| `updateMask` | `string` | query | No | Optional. The update mask applied to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `GoogleCloudEssentialcontactsV1Contact`

**Response**: `GoogleCloudEssentialcontactsV1Contact`

```typescript
const res = await essentialcontacts.contacts.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.projects.contacts.list`

**GET** `v1/{+parent}/contacts`

Lists the contacts that have been set on a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudEssentialcontactsV1ListContactsResponse`

```typescript
const res = await essentialcontacts.contacts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.projects.contacts.get`

**GET** `v1/{+name}`

Gets a single contact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the contact to retrieve. Format: organizations/{organization_id}/contacts/{contact_id}, folders... |

**Response**: `GoogleCloudEssentialcontactsV1Contact`

```typescript
const res = await essentialcontacts.contacts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.projects.contacts.delete`

**DELETE** `v1/{+name}`

Deletes a contact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the contact to delete. Format: organizations/{organization_id}/contacts/{contact_id}, folders/{... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await essentialcontacts.contacts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.projects.contacts.compute`

**GET** `v1/{+parent}/contacts:compute`

Lists all contacts for the resource that are subscribed to the specified notification categories, including contacts inherited from any parent resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the resource to compute contacts for. Format: organizations/{organization_id}, folders/{folder_... |
| `notificationCategories` | `string` | query | No | The categories of notifications to compute contacts for. If ALL is included in this list, contacts subscribed to any ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudEssentialcontactsV1ComputeContactsResponse`

```typescript
const res = await essentialcontacts.contacts.compute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.projects.contacts.sendTestMessage`

**POST** `v1/{+resource}/contacts:sendTestMessage`

Allows a contact admin to send a test message to contact to verify that it has been configured correctly.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | Required. The name of the resource to send the test message for. All contacts must either be set directly on this res... |

**Request body**: `GoogleCloudEssentialcontactsV1SendTestMessageRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await essentialcontacts.contacts.sendTestMessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.folders.contacts.create`

**POST** `v1/{+parent}/contacts`

Adds a new contact for a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or proj... |

**Request body**: `GoogleCloudEssentialcontactsV1Contact`

**Response**: `GoogleCloudEssentialcontactsV1Contact`

```typescript
const res = await essentialcontacts.contacts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.folders.contacts.patch`

**PATCH** `v1/{+name}`

Updates a contact. Note: A contact's email address cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id} |
| `updateMask` | `string` | query | No | Optional. The update mask applied to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `GoogleCloudEssentialcontactsV1Contact`

**Response**: `GoogleCloudEssentialcontactsV1Contact`

```typescript
const res = await essentialcontacts.contacts.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.folders.contacts.list`

**GET** `v1/{+parent}/contacts`

Lists the contacts that have been set on a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudEssentialcontactsV1ListContactsResponse`

```typescript
const res = await essentialcontacts.contacts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.folders.contacts.get`

**GET** `v1/{+name}`

Gets a single contact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the contact to retrieve. Format: organizations/{organization_id}/contacts/{contact_id}, folders... |

**Response**: `GoogleCloudEssentialcontactsV1Contact`

```typescript
const res = await essentialcontacts.contacts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.folders.contacts.delete`

**DELETE** `v1/{+name}`

Deletes a contact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the contact to delete. Format: organizations/{organization_id}/contacts/{contact_id}, folders/{... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await essentialcontacts.contacts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.folders.contacts.compute`

**GET** `v1/{+parent}/contacts:compute`

Lists all contacts for the resource that are subscribed to the specified notification categories, including contacts inherited from any parent resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the resource to compute contacts for. Format: organizations/{organization_id}, folders/{folder_... |
| `notificationCategories` | `string` | query | No | The categories of notifications to compute contacts for. If ALL is included in this list, contacts subscribed to any ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudEssentialcontactsV1ComputeContactsResponse`

```typescript
const res = await essentialcontacts.contacts.compute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.folders.contacts.sendTestMessage`

**POST** `v1/{+resource}/contacts:sendTestMessage`

Allows a contact admin to send a test message to contact to verify that it has been configured correctly.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | Required. The name of the resource to send the test message for. All contacts must either be set directly on this res... |

**Request body**: `GoogleCloudEssentialcontactsV1SendTestMessageRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await essentialcontacts.contacts.sendTestMessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.organizations.contacts.create`

**POST** `v1/{+parent}/contacts`

Adds a new contact for a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or proj... |

**Request body**: `GoogleCloudEssentialcontactsV1Contact`

**Response**: `GoogleCloudEssentialcontactsV1Contact`

```typescript
const res = await essentialcontacts.contacts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.organizations.contacts.patch`

**PATCH** `v1/{+name}`

Updates a contact. Note: A contact's email address cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id} |
| `updateMask` | `string` | query | No | Optional. The update mask applied to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `GoogleCloudEssentialcontactsV1Contact`

**Response**: `GoogleCloudEssentialcontactsV1Contact`

```typescript
const res = await essentialcontacts.contacts.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.organizations.contacts.list`

**GET** `v1/{+parent}/contacts`

Lists the contacts that have been set on a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudEssentialcontactsV1ListContactsResponse`

```typescript
const res = await essentialcontacts.contacts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.organizations.contacts.get`

**GET** `v1/{+name}`

Gets a single contact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the contact to retrieve. Format: organizations/{organization_id}/contacts/{contact_id}, folders... |

**Response**: `GoogleCloudEssentialcontactsV1Contact`

```typescript
const res = await essentialcontacts.contacts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.organizations.contacts.delete`

**DELETE** `v1/{+name}`

Deletes a contact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the contact to delete. Format: organizations/{organization_id}/contacts/{contact_id}, folders/{... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await essentialcontacts.contacts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.organizations.contacts.compute`

**GET** `v1/{+parent}/contacts:compute`

Lists all contacts for the resource that are subscribed to the specified notification categories, including contacts inherited from any parent resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the resource to compute contacts for. Format: organizations/{organization_id}, folders/{folder_... |
| `notificationCategories` | `string` | query | No | The categories of notifications to compute contacts for. If ALL is included in this list, contacts subscribed to any ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudEssentialcontactsV1ComputeContactsResponse`

```typescript
const res = await essentialcontacts.contacts.compute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `essentialcontacts.organizations.contacts.sendTestMessage`

**POST** `v1/{+resource}/contacts:sendTestMessage`

Allows a contact admin to send a test message to contact to verify that it has been configured correctly.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | Required. The name of the resource to send the test message for. All contacts must either be set directly on this res... |

**Request body**: `GoogleCloudEssentialcontactsV1SendTestMessageRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await essentialcontacts.contacts.sendTestMessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudEssentialcontactsV1ComputeContactsResponse`

Response message for the ComputeContacts method.

| Property | Type | Description |
|----------|------|-------------|
| `contacts` | `array<GoogleCloudEssentialcontactsV1Contact>` | All contacts for the resource that are subscribed to the specified notification categories, inclu... |
| `nextPageToken` | `string` | If there are more results than those appearing in this response, then `next_page_token` is includ... |

### `GoogleCloudEssentialcontactsV1Contact`

A contact that will receive notifications from Google Cloud.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Required. The email address to send notifications to. The email address does not need to be a Goo... |
| `languageTag` | `string` | Required. The preferred language for notifications, as a ISO 639-1 language code. See [Supported ... |
| `name` | `string` | Output only. The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{cont... |
| `notificationCategorySubscriptions` | `array<string>` | Required. The categories of notifications that the contact will receive communications for. |
| `validateTime` | `string` | Output only. The last time the validation_state was updated, either manually or automatically. A ... |
| `validationState` | `string` | Output only. The validity of the contact. A contact is considered valid if it is the correct reci... |

### `GoogleCloudEssentialcontactsV1ListContactsResponse`

Response message for the ListContacts method.

| Property | Type | Description |
|----------|------|-------------|
| `contacts` | `array<GoogleCloudEssentialcontactsV1Contact>` | The contacts for the specified resource. |
| `nextPageToken` | `string` | If there are more results than those appearing in this response, then `next_page_token` is includ... |

### `GoogleCloudEssentialcontactsV1SendTestMessageRequest`

Request message for the SendTestMessage method.

| Property | Type | Description |
|----------|------|-------------|
| `contacts` | `array<string>` | Required. The list of names of the contacts to send a test message to. Format: organizations/{org... |
| `notificationCategory` | `string` | Required. The notification category to send the test message for. All contacts must be subscribed... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

