# People API - API Reference

**Version**: `v1` | **Methods**: 24 | **Schemas**: 72

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `people.people.createContact` | POST | `v1/people:createContact` | Create a new contact and return the person resource for that contact. The request returns a 400 e... |
| `people.people.deleteContact` | DELETE | `v1/{+resourceName}:deleteContact` | Delete a contact person. Any non-contact data will not be deleted. Mutate requests for the same u... |
| `people.people.deleteContactPhoto` | DELETE | `v1/{+resourceName}:deleteContactPhoto` | Delete a contact's photo. Mutate requests for the same user should be done sequentially to avoid ... |
| `people.people.updateContact` | PATCH | `v1/{+resourceName}:updateContact` | Update contact data for an existing contact person. Any non-contact data will not be modified. An... |
| `people.people.updateContactPhoto` | PATCH | `v1/{+resourceName}:updateContactPhoto` | Update a contact's photo. Mutate requests for the same user should be sent sequentially to avoid ... |
| `people.people.searchContacts` | GET | `v1/people:searchContacts` | Provides a list of contacts in the authenticated user's grouped contacts that matches the search ... |
| `people.people.batchDeleteContacts` | POST | `v1/people:batchDeleteContacts` | Delete a batch of contacts. Any non-contact data will not be deleted. Mutate requests for the sam... |
| `people.people.batchCreateContacts` | POST | `v1/people:batchCreateContacts` | Create a batch of new contacts and return the PersonResponses for the newly Mutate requests for t... |
| `people.people.batchUpdateContacts` | POST | `v1/people:batchUpdateContacts` | Update a batch of contacts and return a map of resource names to PersonResponses for the updated ... |
| `people.people.get` | GET | `v1/{+resourceName}` | Provides information about a person by specifying a resource name. Use `people/me` to indicate th... |
| `people.people.getBatchGet` | GET | `v1/people:batchGet` | Provides information about a list of specific people by specifying a list of requested resource n... |
| `people.people.listDirectoryPeople` | GET | `v1/people:listDirectoryPeople` | Provides a list of domain profiles and domain contacts in the authenticated user's domain directo... |
| `people.people.searchDirectoryPeople` | GET | `v1/people:searchDirectoryPeople` | Provides a list of domain profiles and domain contacts in the authenticated user's domain directo... |
| `people.people.connections.list` | GET | `v1/{+resourceName}/connections` | Provides a list of the authenticated user's contacts. Sync tokens expire 7 days after the full sy... |
| `people.otherContacts.list` | GET | `v1/otherContacts` | List all "Other contacts", that is contacts that are not in a contact group. "Other contacts" are... |
| `people.otherContacts.copyOtherContactToMyContactsGroup` | POST | `v1/{+resourceName}:copyOtherContactToMyContactsGroup` | Copies an "Other contact" to a new contact in the user's "myContacts" group Mutate requests for t... |
| `people.otherContacts.search` | GET | `v1/otherContacts:search` | Provides a list of contacts in the authenticated user's other contacts that matches the search qu... |
| `people.contactGroups.batchGet` | GET | `v1/contactGroups:batchGet` | Get a list of contact groups owned by the authenticated user by specifying a list of contact grou... |
| `people.contactGroups.create` | POST | `v1/contactGroups` | Create a new contact group owned by the authenticated user. Created contact group names must be u... |
| `people.contactGroups.delete` | DELETE | `v1/{+resourceName}` | Delete an existing contact group owned by the authenticated user by specifying a contact group re... |
| `people.contactGroups.get` | GET | `v1/{+resourceName}` | Get a specific contact group owned by the authenticated user by specifying a contact group resour... |
| `people.contactGroups.list` | GET | `v1/contactGroups` | List all contact groups owned by the authenticated user. Members of the contact groups are not po... |
| `people.contactGroups.update` | PUT | `v1/{+resourceName}` | Update the name of an existing contact group owned by the authenticated user. Updated contact gro... |
| `people.contactGroups.members.modify` | POST | `v1/{+resourceName}/members:modify` | Modify the members of a contact group owned by the authenticated user. The only system contact gr... |

### `people.people.createContact`

**POST** `v1/people:createContact`

Create a new contact and return the person resource for that contact. The request returns a 400 error if more than one field is specified on a field that is a singleton for contact sources: * biographies * birthdays * genders * names Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `personFields` | `string` | query | No | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by sepa... |
| `sources` | `string` | query | No | Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if... |

**Request body**: `Person`

**Response**: `Person`

```typescript
const res = await people.people.createContact({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`

---

### `people.people.deleteContact`

**DELETE** `v1/{+resourceName}:deleteContact`

Delete a contact person. Any non-contact data will not be deleted. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Required. The resource name of the contact to delete. |

**Response**: `Empty`

```typescript
const res = await people.people.deleteContact({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`

---

### `people.people.deleteContactPhoto`

**DELETE** `v1/{+resourceName}:deleteContactPhoto`

Delete a contact's photo. Mutate requests for the same user should be done sequentially to avoid // lock contention.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Required. The resource name of the contact whose photo will be deleted. |
| `personFields` | `string` | query | No | Optional. A field mask to restrict which fields on the person are returned. Multiple fields can be specified by separ... |
| `sources` | `string` | query | No | Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if... |

**Response**: `DeleteContactPhotoResponse`

```typescript
const res = await people.people.deleteContactPhoto({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`

---

### `people.people.updateContact`

**PATCH** `v1/{+resourceName}:updateContact`

Update contact data for an existing contact person. Any non-contact data will not be modified. Any non-contact data in the person to update will be ignored. All fields specified in the `update_mask` will be replaced. The server returns a 400 error if `person.metadata.sources` is not specified for the contact to be updated or if there is no contact source. The server returns a 400 error with reason `"failedPrecondition"` if `person.metadata.sources.etag` is different than the contact's etag, which indicates the contact has changed since its data was read. Clients should get the latest person and merge their updates into the latest person. If making sequential updates to the same person, the etag from the `updateContact` response should be used to avoid failures. The server returns a 400 error if `memberships` are being updated and there are no contact group memberships specified on the person. The server returns a 400 error if more than one field is specified on a field that is a singleton for contact sources: * biographies * birthdays * genders * names Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | The resource name for the person, assigned by the server. An ASCII string in the form of `people/{person_id}`. |
| `personFields` | `string` | query | No | Optional. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by sepa... |
| `sources` | `string` | query | No | Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if... |
| `updatePersonFields` | `string` | query | No | Required. A field mask to restrict which fields on the person are updated. Multiple fields can be specified by separa... |

**Request body**: `Person`

**Response**: `Person`

```typescript
const res = await people.people.updateContact({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`

---

### `people.people.updateContactPhoto`

**PATCH** `v1/{+resourceName}:updateContactPhoto`

Update a contact's photo. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Required. Person resource name |

**Request body**: `UpdateContactPhotoRequest`

**Response**: `UpdateContactPhotoResponse`

```typescript
const res = await people.people.updateContactPhoto({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`

---

### `people.people.searchContacts`

**GET** `v1/people:searchContacts`

Provides a list of contacts in the authenticated user's grouped contacts that matches the search query. The query matches on a contact's `names`, `nickNames`, `emailAddresses`, `phoneNumbers`, and `organizations` fields that are from the CONTACT source. **IMPORTANT**: Before searching, clients should send a warmup request with an empty query to update the cache. See https://developers.google.com/people/v1/contacts#search_the_users_contacts

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The number of results to return. Defaults to 10 if field is not set, or set to 0. Values greater than 30 wi... |
| `query` | `string` | query | No | Required. The plain-text query for the request. The query is used to match prefix phrases of the fields on a person. ... |
| `readMask` | `string` | query | No | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by sepa... |
| `sources` | `string` | query | No | Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT if not set. |

**Response**: `SearchResponse`

```typescript
const res = await people.people.searchContacts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`
- `https://www.googleapis.com/auth/contacts.readonly`

---

### `people.people.batchDeleteContacts`

**POST** `v1/people:batchDeleteContacts`

Delete a batch of contacts. Any non-contact data will not be deleted. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.

**Request body**: `BatchDeleteContactsRequest`

**Response**: `Empty`

```typescript
const res = await people.people.batchDeleteContacts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`

---

### `people.people.batchCreateContacts`

**POST** `v1/people:batchCreateContacts`

Create a batch of new contacts and return the PersonResponses for the newly Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.

**Request body**: `BatchCreateContactsRequest`

**Response**: `BatchCreateContactsResponse`

```typescript
const res = await people.people.batchCreateContacts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`

---

### `people.people.batchUpdateContacts`

**POST** `v1/people:batchUpdateContacts`

Update a batch of contacts and return a map of resource names to PersonResponses for the updated contacts. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.

**Request body**: `BatchUpdateContactsRequest`

**Response**: `BatchUpdateContactsResponse`

```typescript
const res = await people.people.batchUpdateContacts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`

---

### `people.people.get`

**GET** `v1/{+resourceName}`

Provides information about a person by specifying a resource name. Use `people/me` to indicate the authenticated user. The request returns a 400 error if 'personFields' is not specified.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Required. The resource name of the person to provide information about. - To get information about the authenticated ... |
| `personFields` | `string` | query | No | Required. A field mask to restrict which fields on the person are returned. Multiple fields can be specified by separ... |
| `requestMask.includeField` | `string` | query | No | Required. Comma-separated list of person fields to be included in the response. Each path should start with `person.`... |
| `sources` | `string` | query | No | Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_PROFILE and READ_SOURCE_TYPE_CONTACT if... |

**Response**: `Person`

```typescript
const res = await people.people.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`
- `https://www.googleapis.com/auth/contacts.other.readonly`
- `https://www.googleapis.com/auth/contacts.readonly`
- `https://www.googleapis.com/auth/directory.readonly`
- `https://www.googleapis.com/auth/user.addresses.read`
- `https://www.googleapis.com/auth/user.birthday.read`
- `https://www.googleapis.com/auth/user.emails.read`
- `https://www.googleapis.com/auth/user.gender.read`
- `https://www.googleapis.com/auth/user.organization.read`
- `https://www.googleapis.com/auth/user.phonenumbers.read`
- `https://www.googleapis.com/auth/userinfo.email`
- `https://www.googleapis.com/auth/userinfo.profile`

---

### `people.people.getBatchGet`

**GET** `v1/people:batchGet`

Provides information about a list of specific people by specifying a list of requested resource names. Use `people/me` to indicate the authenticated user. The request returns a 400 error if 'personFields' is not specified.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `personFields` | `string` | query | No | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by sepa... |
| `requestMask.includeField` | `string` | query | No | Required. Comma-separated list of person fields to be included in the response. Each path should start with `person.`... |
| `resourceNames` | `string` | query | No | Required. The resource names of the people to provide information about. It's repeatable. The URL query parameter sho... |
| `sources` | `string` | query | No | Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if... |

**Response**: `GetPeopleResponse`

```typescript
const res = await people.people.getBatchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`
- `https://www.googleapis.com/auth/contacts.other.readonly`
- `https://www.googleapis.com/auth/contacts.readonly`
- `https://www.googleapis.com/auth/directory.readonly`
- `https://www.googleapis.com/auth/user.addresses.read`
- `https://www.googleapis.com/auth/user.birthday.read`
- `https://www.googleapis.com/auth/user.emails.read`
- `https://www.googleapis.com/auth/user.gender.read`
- `https://www.googleapis.com/auth/user.organization.read`
- `https://www.googleapis.com/auth/user.phonenumbers.read`
- `https://www.googleapis.com/auth/userinfo.email`
- `https://www.googleapis.com/auth/userinfo.profile`

---

### `people.people.listDirectoryPeople`

**GET** `v1/people:listDirectoryPeople`

Provides a list of domain profiles and domain contacts in the authenticated user's domain directory. When the `sync_token` is specified, resources deleted since the last sync will be returned as a person with `PersonMetadata.deleted` set to true. When the `page_token` or `sync_token` is specified, all other request parameters must match the first call. Writes may have a propagation delay of several minutes for sync requests. Incremental syncs are not intended for read-after-write use cases. See example usage at [List the directory people that have changed](/people/v1/directory#list_the_directory_people_that_have_changed).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `mergeSources` | `string` | query | No | Optional. Additional data to merge into the directory sources if they are connected through verified join keys such a... |
| `pageSize` | `integer` | query | No | Optional. The number of people to include in the response. Valid values are between 1 and 1000, inclusive. Defaults t... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous response `next_page_token`. Provide this to retrieve the subsequent ... |
| `readMask` | `string` | query | No | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by sepa... |
| `requestSyncToken` | `boolean` | query | No | Optional. Whether the response should return `next_sync_token`. It can be used to get incremental changes since the l... |
| `sources` | `string` | query | No | Required. Directory sources to return. |
| `syncToken` | `string` | query | No | Optional. A sync token, received from a previous response `next_sync_token` Provide this to retrieve only the resourc... |

**Response**: `ListDirectoryPeopleResponse`

```typescript
const res = await people.people.listDirectoryPeople({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/directory.readonly`

---

### `people.people.searchDirectoryPeople`

**GET** `v1/people:searchDirectoryPeople`

Provides a list of domain profiles and domain contacts in the authenticated user's domain directory that match the search query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `mergeSources` | `string` | query | No | Optional. Additional data to merge into the directory sources if they are connected through verified join keys such a... |
| `pageSize` | `integer` | query | No | Optional. The number of people to include in the response. Valid values are between 1 and 500, inclusive. Defaults to... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous response `next_page_token`. Provide this to retrieve the subsequent ... |
| `query` | `string` | query | No | Required. Prefix query that matches fields in the person. Does NOT use the read_mask for determining what fields to m... |
| `readMask` | `string` | query | No | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by sepa... |
| `sources` | `string` | query | No | Required. Directory sources to return. |

**Response**: `SearchDirectoryPeopleResponse`

```typescript
const res = await people.people.searchDirectoryPeople({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/directory.readonly`

---

### `people.people.connections.list`

**GET** `v1/{+resourceName}/connections`

Provides a list of the authenticated user's contacts. Sync tokens expire 7 days after the full sync. A request with an expired sync token will get an error with an [google.rpc.ErrorInfo](https://cloud.google.com/apis/design/errors#error_info) with reason "EXPIRED_SYNC_TOKEN". In the case of such an error clients should make a full sync request without a `sync_token`. The first page of a full sync request has an additional quota. If the quota is exceeded, a 429 error will be returned. This quota is fixed and can not be increased. When the `sync_token` is specified, resources deleted since the last sync will be returned as a person with `PersonMetadata.deleted` set to true. When the `page_token` or `sync_token` is specified, all other request parameters must match the first call. Writes may have a propagation delay of several minutes for sync requests. Incremental syncs are not intended for read-after-write use cases. See example usage at [List the user's contacts that have changed](/people/v1/contacts#list_the_users_contacts_that_have_changed).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Required. The resource name to return connections for. Only `people/me` is valid. |
| `pageSize` | `integer` | query | No | Optional. The number of connections to include in the response. Valid values are between 1 and 1000, inclusive. Defau... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous response `next_page_token`. Provide this to retrieve the subsequent ... |
| `personFields` | `string` | query | No | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by sepa... |
| `requestMask.includeField` | `string` | query | No | Required. Comma-separated list of person fields to be included in the response. Each path should start with `person.`... |
| `requestSyncToken` | `boolean` | query | No | Optional. Whether the response should return `next_sync_token` on the last page of results. It can be used to get inc... |
| `sortOrder` | `string` | query | No | Optional. The order in which the connections should be sorted. Defaults to `LAST_MODIFIED_ASCENDING`. |
| `sources` | `string` | query | No | Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if... |
| `syncToken` | `string` | query | No | Optional. A sync token, received from a previous response `next_sync_token` Provide this to retrieve only the resourc... |

**Response**: `ListConnectionsResponse`

```typescript
const res = await people.connections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`
- `https://www.googleapis.com/auth/contacts.readonly`

---

### `people.otherContacts.list`

**GET** `v1/otherContacts`

List all "Other contacts", that is contacts that are not in a contact group. "Other contacts" are typically auto created contacts from interactions. Sync tokens expire 7 days after the full sync. A request with an expired sync token will get an error with an [google.rpc.ErrorInfo](https://cloud.google.com/apis/design/errors#error_info) with reason "EXPIRED_SYNC_TOKEN". In the case of such an error clients should make a full sync request without a `sync_token`. The first page of a full sync request has an additional quota. If the quota is exceeded, a 429 error will be returned. This quota is fixed and can not be increased. When the `sync_token` is specified, resources deleted since the last sync will be returned as a person with `PersonMetadata.deleted` set to true. When the `page_token` or `sync_token` is specified, all other request parameters must match the first call. Writes may have a propagation delay of several minutes for sync requests. Incremental syncs are not intended for read-after-write use cases. See example usage at [List the user's other contacts that have changed](/people/v1/other-contacts#list_the_users_other_contacts_that_have_changed).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The number of "Other contacts" to include in the response. Valid values are between 1 and 1000, inclusive. ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous response `next_page_token`. Provide this to retrieve the subsequent ... |
| `readMask` | `string` | query | No | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by sepa... |
| `requestSyncToken` | `boolean` | query | No | Optional. Whether the response should return `next_sync_token` on the last page of results. It can be used to get inc... |
| `sources` | `string` | query | No | Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT if not set. Possible values for... |
| `syncToken` | `string` | query | No | Optional. A sync token, received from a previous response `next_sync_token` Provide this to retrieve only the resourc... |

**Response**: `ListOtherContactsResponse`

```typescript
const res = await people.otherContacts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts.other.readonly`

---

### `people.otherContacts.copyOtherContactToMyContactsGroup`

**POST** `v1/{+resourceName}:copyOtherContactToMyContactsGroup`

Copies an "Other contact" to a new contact in the user's "myContacts" group Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Required. The resource name of the "Other contact" to copy. |

**Request body**: `CopyOtherContactToMyContactsGroupRequest`

**Response**: `Person`

```typescript
const res = await people.otherContacts.copyOtherContactToMyContactsGroup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`
- `https://www.googleapis.com/auth/contacts.other.readonly`

---

### `people.otherContacts.search`

**GET** `v1/otherContacts:search`

Provides a list of contacts in the authenticated user's other contacts that matches the search query. The query matches on a contact's `names`, `emailAddresses`, and `phoneNumbers` fields that are from the OTHER_CONTACT source. **IMPORTANT**: Before searching, clients should send a warmup request with an empty query to update the cache. See https://developers.google.com/people/v1/other-contacts#search_the_users_other_contacts

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The number of results to return. Defaults to 10 if field is not set, or set to 0. Values greater than 30 wi... |
| `query` | `string` | query | No | Required. The plain-text query for the request. The query is used to match prefix phrases of the fields on a person. ... |
| `readMask` | `string` | query | No | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by sepa... |

**Response**: `SearchResponse`

```typescript
const res = await people.otherContacts.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts.other.readonly`

---

### `people.contactGroups.batchGet`

**GET** `v1/contactGroups:batchGet`

Get a list of contact groups owned by the authenticated user by specifying a list of contact group resource names.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `groupFields` | `string` | query | No | Optional. A field mask to restrict which fields on the group are returned. Defaults to `metadata`, `groupType`, `memb... |
| `maxMembers` | `integer` | query | No | Optional. Specifies the maximum number of members to return for each group. Defaults to 0 if not set, which will retu... |
| `resourceNames` | `string` | query | No | Required. The resource names of the contact groups to get. There is a maximum of 200 resource names. |

**Response**: `BatchGetContactGroupsResponse`

```typescript
const res = await people.contactGroups.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`
- `https://www.googleapis.com/auth/contacts.readonly`

---

### `people.contactGroups.create`

**POST** `v1/contactGroups`

Create a new contact group owned by the authenticated user. Created contact group names must be unique to the users contact groups. Attempting to create a group with a duplicate name will return a HTTP 409 error. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.

**Request body**: `CreateContactGroupRequest`

**Response**: `ContactGroup`

```typescript
const res = await people.contactGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`

---

### `people.contactGroups.delete`

**DELETE** `v1/{+resourceName}`

Delete an existing contact group owned by the authenticated user by specifying a contact group resource name. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Required. The resource name of the contact group to delete. |
| `deleteContacts` | `boolean` | query | No | Optional. Set to true to also delete the contacts in the specified group. |

**Response**: `Empty`

```typescript
const res = await people.contactGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`

---

### `people.contactGroups.get`

**GET** `v1/{+resourceName}`

Get a specific contact group owned by the authenticated user by specifying a contact group resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Required. The resource name of the contact group to get. |
| `groupFields` | `string` | query | No | Optional. A field mask to restrict which fields on the group are returned. Defaults to `metadata`, `groupType`, `memb... |
| `maxMembers` | `integer` | query | No | Optional. Specifies the maximum number of members to return. Defaults to 0 if not set, which will return zero members. |

**Response**: `ContactGroup`

```typescript
const res = await people.contactGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`
- `https://www.googleapis.com/auth/contacts.readonly`

---

### `people.contactGroups.list`

**GET** `v1/contactGroups`

List all contact groups owned by the authenticated user. Members of the contact groups are not populated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `groupFields` | `string` | query | No | Optional. A field mask to restrict which fields on the group are returned. Defaults to `metadata`, `groupType`, `memb... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of resources to return. Valid values are between 1 and 1000, inclusive. Defaults to 30 i... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous call to [ListContactGroups](/people/api/rest/v1/contactg... |
| `syncToken` | `string` | query | No | Optional. A sync token, returned by a previous call to `contactgroups.list`. Only resources changed since the sync to... |

**Response**: `ListContactGroupsResponse`

```typescript
const res = await people.contactGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`
- `https://www.googleapis.com/auth/contacts.readonly`

---

### `people.contactGroups.update`

**PUT** `v1/{+resourceName}`

Update the name of an existing contact group owned by the authenticated user. Updated contact group names must be unique to the users contact groups. Attempting to create a group with a duplicate name will return a HTTP 409 error. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | The resource name for the contact group, assigned by the server. An ASCII string, in the form of `contactGroups/{cont... |

**Request body**: `UpdateContactGroupRequest`

**Response**: `ContactGroup`

```typescript
const res = await people.contactGroups.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`

---

### `people.contactGroups.members.modify`

**POST** `v1/{+resourceName}/members:modify`

Modify the members of a contact group owned by the authenticated user. The only system contact groups that can have members added are `contactGroups/myContacts` and `contactGroups/starred`. Other system contact groups are deprecated and can only have contacts removed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Required. The resource name of the contact group to modify. |

**Request body**: `ModifyContactGroupMembersRequest`

**Response**: `ModifyContactGroupMembersResponse`

```typescript
const res = await people.members.modify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/contacts`

---

## Schemas

### `Address`

A person's physical address. May be a P.O. box or street address. All fields are optional.

| Property | Type | Description |
|----------|------|-------------|
| `city` | `string` | The city of the address. |
| `country` | `string` | The country of the address. |
| `countryCode` | `string` | The [ISO 3166-1 alpha-2](http://www.iso.org/iso/country_codes.htm) country code of the address. |
| `extendedAddress` | `string` | The extended address of the address; for example, the apartment number. |
| `formattedType` | `string` | Output only. The type of the address translated and formatted in the viewer's account locale or t... |
| `formattedValue` | `string` | The unstructured value of the address. If this is not set by the user it will be automatically co... |
| `metadata` | `FieldMetadata` | Metadata about the address. |
| `poBox` | `string` | The P.O. box of the address. |
| `postalCode` | `string` | The postal code of the address. |
| `region` | `string` | The region of the address; for example, the state or province. |
| `streetAddress` | `string` | The street address. |
| `type` | `string` | The type of the address. The type can be custom or one of these predefined values: * `home` * `wo... |

### `AgeRangeType`

A person's age range.

| Property | Type | Description |
|----------|------|-------------|
| `ageRange` | `string` | The age range. |
| `metadata` | `FieldMetadata` | Metadata about the age range. |

### `BatchCreateContactsRequest`

A request to create a batch of contacts.

| Property | Type | Description |
|----------|------|-------------|
| `contacts` | `array<ContactToCreate>` | Required. The contact to create. Allows up to 200 contacts in a single request. |
| `readMask` | `string` | Required. A field mask to restrict which fields on each person are returned in the response. Mult... |
| `sources` | `array<string>` | Optional. A mask of what source types to return in the post mutate read. Defaults to READ_SOURCE_... |

### `BatchCreateContactsResponse`

If not successful, returns BatchCreateContactsErrorDetails which contains a list of errors for each invalid contact. The response to a request to create a batch of contacts.

| Property | Type | Description |
|----------|------|-------------|
| `createdPeople` | `array<PersonResponse>` | The contacts that were created, unless the request `read_mask` is empty. |

### `BatchDeleteContactsRequest`

A request to delete a batch of existing contacts.

| Property | Type | Description |
|----------|------|-------------|
| `resourceNames` | `array<string>` | Required. The resource names of the contact to delete. It's repeatable. Allows up to 500 resource... |

### `BatchGetContactGroupsResponse`

The response to a batch get contact groups request.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<ContactGroupResponse>` | The list of responses for each requested contact group resource. |

### `BatchUpdateContactsRequest`

A request to update a batch of contacts.

| Property | Type | Description |
|----------|------|-------------|
| `contacts` | `object` | Required. A map of resource names to the person data to be updated. Allows up to 200 contacts in ... |
| `readMask` | `string` | Required. A field mask to restrict which fields on each person are returned. Multiple fields can ... |
| `sources` | `array<string>` | Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SO... |
| `updateMask` | `string` | Required. A field mask to restrict which fields on the person are updated. Multiple fields can be... |

### `BatchUpdateContactsResponse`

If not successful, returns BatchUpdateContactsErrorDetails, a list of errors corresponding to each contact. The response to a request to update a batch of contacts.

| Property | Type | Description |
|----------|------|-------------|
| `updateResult` | `object` | A map of resource names to the contacts that were updated, unless the request `read_mask` is empty. |

### `Biography`

A person's short biography.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The content type of the biography. |
| `metadata` | `FieldMetadata` | Metadata about the biography. |
| `value` | `string` | The short biography. |

### `Birthday`

A person's birthday. At least one of the `date` and `text` fields are specified. The `date` and `text` fields typically represent the same date, but are not guaranteed to. Clients should always set the `date` field when mutating birthdays.

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | The structured date of the birthday. |
| `metadata` | `FieldMetadata` | Metadata about the birthday. |
| `text` | `string` | Prefer to use the `date` field if set. A free-form string representing the user's birthday. This ... |

### `BraggingRights`

**DEPRECATED**: No data will be returned A person's bragging rights.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `FieldMetadata` | Metadata about the bragging rights. |
| `value` | `string` | The bragging rights; for example, `climbed mount everest`. |

### `CalendarUrl`

A person's calendar URL.

| Property | Type | Description |
|----------|------|-------------|
| `formattedType` | `string` | Output only. The type of the calendar URL translated and formatted in the viewer's account locale... |
| `metadata` | `FieldMetadata` | Metadata about the calendar URL. |
| `type` | `string` | The type of the calendar URL. The type can be custom or one of these predefined values: * `home` ... |
| `url` | `string` | The calendar URL. |

### `ClientData`

Arbitrary client data that is populated by clients. Duplicate keys and values are allowed.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The client specified key of the client data. |
| `metadata` | `FieldMetadata` | Metadata about the client data. |
| `value` | `string` | The client specified value of the client data. |

### `ContactGroup`

A contact group.

| Property | Type | Description |
|----------|------|-------------|
| `clientData` | `array<GroupClientData>` | The group's client data. |
| `etag` | `string` | The [HTTP entity tag](https://en.wikipedia.org/wiki/HTTP_ETag) of the resource. Used for web cach... |
| `formattedName` | `string` | Output only. The name translated and formatted in the viewer's account locale or the `Accept-Lang... |
| `groupType` | `string` | Output only. The contact group type. |
| `memberCount` | `integer` | Output only. The total number of contacts in the group irrespective of max members in specified i... |
| `memberResourceNames` | `array<string>` | Output only. The list of contact person resource names that are members of the contact group. The... |
| `metadata` | `ContactGroupMetadata` | Output only. Metadata about the contact group. |
| `name` | `string` | The contact group name set by the group owner or a system provided name for system groups. For [`... |
| `resourceName` | `string` | The resource name for the contact group, assigned by the server. An ASCII string, in the form of ... |

### `ContactGroupMembership`

A Google contact group membership.

| Property | Type | Description |
|----------|------|-------------|
| `contactGroupId` | `string` | Output only. The contact group ID for the contact group membership. |
| `contactGroupResourceName` | `string` | The resource name for the contact group, assigned by the server. An ASCII string, in the form of ... |

### `ContactGroupMetadata`

The metadata about a contact group.

| Property | Type | Description |
|----------|------|-------------|
| `deleted` | `boolean` | Output only. True if the contact group resource has been deleted. Populated only for [`ListContac... |
| `updateTime` | `string` | Output only. The time the group was last updated. |

### `ContactGroupResponse`

The response for a specific contact group.

| Property | Type | Description |
|----------|------|-------------|
| `contactGroup` | `ContactGroup` | The contact group. |
| `requestedResourceName` | `string` | The original requested resource name. |
| `status` | `Status` | The status of the response. |

### `ContactToCreate`

A wrapper that contains the person data to populate a newly created source.

| Property | Type | Description |
|----------|------|-------------|
| `contactPerson` | `Person` | Required. The person data to populate a newly created source. |

### `CopyOtherContactToMyContactsGroupRequest`

A request to copy an "Other contact" to my contacts group.

| Property | Type | Description |
|----------|------|-------------|
| `copyMask` | `string` | Required. A field mask to restrict which fields are copied into the new contact. Valid values are... |
| `readMask` | `string` | Optional. A field mask to restrict which fields on the person are returned. Multiple fields can b... |
| `sources` | `array<string>` | Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SO... |

### `CoverPhoto`

A person's cover photo. A large image shown on the person's profile page that represents who they are or what they care about.

| Property | Type | Description |
|----------|------|-------------|
| `default` | `boolean` | True if the cover photo is the default cover photo; false if the cover photo is a user-provided c... |
| `metadata` | `FieldMetadata` | Metadata about the cover photo. |
| `url` | `string` | The URL of the cover photo. |

### `CreateContactGroupRequest`

A request to create a new contact group.

| Property | Type | Description |
|----------|------|-------------|
| `contactGroup` | `ContactGroup` | Required. The contact group to create. |
| `readGroupFields` | `string` | Optional. A field mask to restrict which fields on the group are returned. Defaults to `metadata`... |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DeleteContactPhotoResponse`

The response for deleting a contact's photo.

| Property | Type | Description |
|----------|------|-------------|
| `person` | `Person` | The updated person, if person_fields is set in the DeleteContactPhotoRequest; otherwise this will... |

### `DomainMembership`

A Google Workspace Domain membership.

| Property | Type | Description |
|----------|------|-------------|
| `inViewerDomain` | `boolean` | True if the person is in the viewer's Google Workspace domain. |

### `EmailAddress`

A person's email address.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the email. |
| `formattedType` | `string` | Output only. The type of the email address translated and formatted in the viewer's account local... |
| `metadata` | `FieldMetadata` | Metadata about the email address. |
| `type` | `string` | The type of the email address. The type can be custom or one of these predefined values: * `home`... |
| `value` | `string` | The email address. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Event`

An event related to the person.

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | The date of the event. |
| `formattedType` | `string` | Output only. The type of the event translated and formatted in the viewer's account locale or the... |
| `metadata` | `FieldMetadata` | Metadata about the event. |
| `type` | `string` | The type of the event. The type can be custom or one of these predefined values: * `anniversary` ... |

### `ExternalId`

An identifier from an external entity related to the person.

| Property | Type | Description |
|----------|------|-------------|
| `formattedType` | `string` | Output only. The type of the event translated and formatted in the viewer's account locale or the... |
| `metadata` | `FieldMetadata` | Metadata about the external ID. |
| `type` | `string` | The type of the external ID. The type can be custom or one of these predefined values: * `account... |
| `value` | `string` | The value of the external ID. |

### `FieldMetadata`

Metadata about a field.

| Property | Type | Description |
|----------|------|-------------|
| `primary` | `boolean` | Output only. True if the field is the primary field for all sources in the person. Each person wi... |
| `source` | `Source` | The source of the field. |
| `sourcePrimary` | `boolean` | True if the field is the primary field for the source. Each source must have at most one field wi... |
| `verified` | `boolean` | Output only. True if the field is verified; false if the field is unverified. A verified field is... |

### `FileAs`

The name that should be used to sort the person in a list.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `FieldMetadata` | Metadata about the file-as. |
| `value` | `string` | The file-as value |

### `Gender`

A person's gender.

| Property | Type | Description |
|----------|------|-------------|
| `addressMeAs` | `string` | Free form text field for pronouns that should be used to address the person. Common values are: *... |
| `formattedValue` | `string` | Output only. The value of the gender translated and formatted in the viewer's account locale or t... |
| `metadata` | `FieldMetadata` | Metadata about the gender. |
| `value` | `string` | The gender for the person. The gender can be custom or one of these predefined values: * `male` *... |

### `GetPeopleResponse`

The response to a get request for a list of people by resource name.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<PersonResponse>` | The response for each requested resource name. |

### `GroupClientData`

Arbitrary client data that is populated by clients. Duplicate keys and values are allowed.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The client specified key of the client data. |
| `value` | `string` | The client specified value of the client data. |

### `ImClient`

A person's instant messaging client.

| Property | Type | Description |
|----------|------|-------------|
| `formattedProtocol` | `string` | Output only. The protocol of the IM client formatted in the viewer's account locale or the `Accep... |
| `formattedType` | `string` | Output only. The type of the IM client translated and formatted in the viewer's account locale or... |
| `metadata` | `FieldMetadata` | Metadata about the IM client. |
| `protocol` | `string` | The protocol of the IM client. The protocol can be custom or one of these predefined values: * `a... |
| `type` | `string` | The type of the IM client. The type can be custom or one of these predefined values: * `home` * `... |
| `username` | `string` | The user name used in the IM client. |

### `Interest`

One of the person's interests.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `FieldMetadata` | Metadata about the interest. |
| `value` | `string` | The interest; for example, `stargazing`. |

### `ListConnectionsResponse`

The response to a request for the authenticated user's connections.

| Property | Type | Description |
|----------|------|-------------|
| `connections` | `array<Person>` | The list of people that the requestor is connected to. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `nextSyncToken` | `string` | A token, which can be sent as `sync_token` to retrieve changes since the last request. Request mu... |
| `totalItems` | `integer` | The total number of items in the list without pagination. |
| `totalPeople` | `integer` | **DEPRECATED** (Please use totalItems) The total number of people in the list without pagination. |

### `ListContactGroupsResponse`

The response to a list contact groups request.

| Property | Type | Description |
|----------|------|-------------|
| `contactGroups` | `array<ContactGroup>` | The list of contact groups. Members of the contact groups are not populated. |
| `nextPageToken` | `string` | The token that can be used to retrieve the next page of results. |
| `nextSyncToken` | `string` | The token that can be used to retrieve changes since the last request. |
| `totalItems` | `integer` | The total number of items in the list without pagination. |

### `ListDirectoryPeopleResponse`

The response to a request for the authenticated user's domain directory.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `nextSyncToken` | `string` | A token, which can be sent as `sync_token` to retrieve changes since the last request. Request mu... |
| `people` | `array<Person>` | The list of people in the domain directory. |

### `ListOtherContactsResponse`

The response to a request for the authenticated user's "Other contacts".

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `nextSyncToken` | `string` | A token, which can be sent as `sync_token` to retrieve changes since the last request. Request mu... |
| `otherContacts` | `array<Person>` | The list of "Other contacts" returned as Person resources. "Other contacts" support a limited sub... |
| `totalSize` | `integer` | The total number of other contacts in the list without pagination. |

### `Locale`

A person's locale preference.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `FieldMetadata` | Metadata about the locale. |
| `value` | `string` | The well-formed [IETF BCP 47](https://tools.ietf.org/html/bcp47) language tag representing the lo... |

### `Location`

A person's location.

| Property | Type | Description |
|----------|------|-------------|
| `buildingId` | `string` | The building identifier. |
| `current` | `boolean` | Whether the location is the current location. |
| `deskCode` | `string` | The individual desk location. |
| `floor` | `string` | The floor name or number. |
| `floorSection` | `string` | The floor section in `floor_name`. |
| `metadata` | `FieldMetadata` | Metadata about the location. |
| `type` | `string` | The type of the location. The type can be custom or one of these predefined values: * `desk` * `g... |
| `value` | `string` | The free-form value of the location. |

### `Membership`

A person's membership in a group. Only contact group memberships can be modified.

| Property | Type | Description |
|----------|------|-------------|
| `contactGroupMembership` | `ContactGroupMembership` | The contact group membership. |
| `domainMembership` | `DomainMembership` | Output only. The domain membership. |
| `metadata` | `FieldMetadata` | Metadata about the membership. |

### `MiscKeyword`

A person's miscellaneous keyword.

| Property | Type | Description |
|----------|------|-------------|
| `formattedType` | `string` | Output only. The type of the miscellaneous keyword translated and formatted in the viewer's accou... |
| `metadata` | `FieldMetadata` | Metadata about the miscellaneous keyword. |
| `type` | `string` | The miscellaneous keyword type. |
| `value` | `string` | The value of the miscellaneous keyword. |

### `ModifyContactGroupMembersRequest`

A request to modify an existing contact group's members. Contacts can be removed from any group but they can only be added to a user group or "myContacts" or "starred" system groups.

| Property | Type | Description |
|----------|------|-------------|
| `resourceNamesToAdd` | `array<string>` | Optional. The resource names of the contact people to add in the form of `people/{person_id}`. Th... |
| `resourceNamesToRemove` | `array<string>` | Optional. The resource names of the contact people to remove in the form of `people/{person_id}`.... |

### `ModifyContactGroupMembersResponse`

The response to a modify contact group members request.

| Property | Type | Description |
|----------|------|-------------|
| `canNotRemoveLastContactGroupResourceNames` | `array<string>` | The contact people resource names that cannot be removed from their last contact group. |
| `notFoundResourceNames` | `array<string>` | The contact people resource names that were not found. |

### `Name`

A person's name. If the name is a mononym, the family name is empty.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name formatted according to the locale specified by the viewer's account... |
| `displayNameLastFirst` | `string` | Output only. The display name with the last name first formatted according to the locale specifie... |
| `familyName` | `string` | The family name. |
| `givenName` | `string` | The given name. |
| `honorificPrefix` | `string` | The honorific prefixes, such as `Mrs.` or `Dr.` |
| `honorificSuffix` | `string` | The honorific suffixes, such as `Jr.` |
| `metadata` | `FieldMetadata` | Metadata about the name. |
| `middleName` | `string` | The middle name(s). |
| `phoneticFamilyName` | `string` | The family name spelled as it sounds. |
| `phoneticFullName` | `string` | The full name spelled as it sounds. |
| `phoneticGivenName` | `string` | The given name spelled as it sounds. |
| `phoneticHonorificPrefix` | `string` | The honorific prefixes spelled as they sound. |
| `phoneticHonorificSuffix` | `string` | The honorific suffixes spelled as they sound. |
| `phoneticMiddleName` | `string` | The middle name(s) spelled as they sound. |
| `unstructuredName` | `string` | The free form name value. |

### `Nickname`

A person's nickname.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `FieldMetadata` | Metadata about the nickname. |
| `type` | `string` | The type of the nickname. |
| `value` | `string` | The nickname. |

### `Occupation`

A person's occupation.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `FieldMetadata` | Metadata about the occupation. |
| `value` | `string` | The occupation; for example, `carpenter`. |

### `Organization`

A person's past or current organization. Overlapping date ranges are permitted.

| Property | Type | Description |
|----------|------|-------------|
| `costCenter` | `string` | The person's cost center at the organization. |
| `current` | `boolean` | True if the organization is the person's current organization; false if the organization is a pas... |
| `department` | `string` | The person's department at the organization. |
| `domain` | `string` | The domain name associated with the organization; for example, `google.com`. |
| `endDate` | `Date` | The end date when the person left the organization. |
| `formattedType` | `string` | Output only. The type of the organization translated and formatted in the viewer's account locale... |
| `fullTimeEquivalentMillipercent` | `integer` | The person's full-time equivalent millipercent within the organization (100000 = 100%). |
| `jobDescription` | `string` | The person's job description at the organization. |
| `location` | `string` | The location of the organization office the person works at. |
| `metadata` | `FieldMetadata` | Metadata about the organization. |
| `name` | `string` | The name of the organization. |
| `phoneticName` | `string` | The phonetic name of the organization. |
| `startDate` | `Date` | The start date when the person joined the organization. |
| `symbol` | `string` | The symbol associated with the organization; for example, a stock ticker symbol, abbreviation, or... |
| `title` | `string` | The person's job title at the organization. |
| `type` | `string` | The type of the organization. The type can be custom or one of these predefined values: * `work` ... |

### `Person`

Information about a person merged from various data sources such as the authenticated user's contacts and profile data. Most fields can have multiple items. The items in a field have no guaranteed order, but each non-empty field is guaranteed to have exactly one field with `metadata.primary` set to true.

| Property | Type | Description |
|----------|------|-------------|
| `addresses` | `array<Address>` | The person's street addresses. |
| `ageRange` | `string` | Output only. **DEPRECATED** (Please use `person.ageRanges` instead) The person's age range. |
| `ageRanges` | `array<AgeRangeType>` | Output only. The person's age ranges. |
| `biographies` | `array<Biography>` | The person's biographies. This field is a singleton for contact sources. |
| `birthdays` | `array<Birthday>` | The person's birthdays. This field is a singleton for contact sources. |
| `braggingRights` | `array<BraggingRights>` | **DEPRECATED**: No data will be returned The person's bragging rights. |
| `calendarUrls` | `array<CalendarUrl>` | The person's calendar URLs. |
| `clientData` | `array<ClientData>` | The person's client data. |
| `coverPhotos` | `array<CoverPhoto>` | Output only. The person's cover photos. |
| `emailAddresses` | `array<EmailAddress>` | The person's email addresses. For `people.connections.list` and `otherContacts.list` the number o... |
| `etag` | `string` | The [HTTP entity tag](https://en.wikipedia.org/wiki/HTTP_ETag) of the resource. Used for web cach... |
| `events` | `array<Event>` | The person's events. |
| `externalIds` | `array<ExternalId>` | The person's external IDs. |
| `fileAses` | `array<FileAs>` | The person's file-ases. |
| `genders` | `array<Gender>` | The person's genders. This field is a singleton for contact sources. |
| `imClients` | `array<ImClient>` | The person's instant messaging clients. |
| `interests` | `array<Interest>` | The person's interests. |
| `locales` | `array<Locale>` | The person's locale preferences. |
| `locations` | `array<Location>` | The person's locations. |
| `memberships` | `array<Membership>` | The person's group memberships. |
| `metadata` | `PersonMetadata` | Output only. Metadata about the person. |
| `miscKeywords` | `array<MiscKeyword>` | The person's miscellaneous keywords. |
| `names` | `array<Name>` | The person's names. This field is a singleton for contact sources. |
| `nicknames` | `array<Nickname>` | The person's nicknames. |
| `occupations` | `array<Occupation>` | The person's occupations. |
| `organizations` | `array<Organization>` | The person's past or current organizations. |
| `phoneNumbers` | `array<PhoneNumber>` | The person's phone numbers. For `people.connections.list` and `otherContacts.list` the number of ... |
| `photos` | `array<Photo>` | Output only. The person's photos. |
| `relations` | `array<Relation>` | The person's relations. |
| `relationshipInterests` | `array<RelationshipInterest>` | Output only. **DEPRECATED**: No data will be returned The person's relationship interests. |
| `relationshipStatuses` | `array<RelationshipStatus>` | Output only. **DEPRECATED**: No data will be returned The person's relationship statuses. |
| `residences` | `array<Residence>` | **DEPRECATED**: (Please use `person.locations` instead) The person's residences. |
| `resourceName` | `string` | The resource name for the person, assigned by the server. An ASCII string in the form of `people/... |
| `sipAddresses` | `array<SipAddress>` | The person's SIP addresses. |
| `skills` | `array<Skill>` | The person's skills. |
| `taglines` | `array<Tagline>` | Output only. **DEPRECATED**: No data will be returned The person's taglines. |
| `urls` | `array<Url>` | The person's associated URLs. |
| `userDefined` | `array<UserDefined>` | The person's user defined data. |

### `PersonMetadata`

The metadata about a person.

| Property | Type | Description |
|----------|------|-------------|
| `deleted` | `boolean` | Output only. True if the person resource has been deleted. Populated only for `people.connections... |
| `linkedPeopleResourceNames` | `array<string>` | Output only. Resource names of people linked to this resource. |
| `objectType` | `string` | Output only. **DEPRECATED** (Please use `person.metadata.sources.profileMetadata.objectType` inst... |
| `previousResourceNames` | `array<string>` | Output only. Any former resource names this person has had. Populated only for `people.connection... |
| `sources` | `array<Source>` | The sources of data for the person. |

### `PersonResponse`

The response for a single person

| Property | Type | Description |
|----------|------|-------------|
| `httpStatusCode` | `integer` | **DEPRECATED** (Please use status instead) [HTTP 1.1 status code] (http://www.w3.org/Protocols/rf... |
| `person` | `Person` | The person. |
| `requestedResourceName` | `string` | The original requested resource name. May be different than the resource name on the returned per... |
| `status` | `Status` | The status of the response. |

### `PhoneNumber`

A person's phone number.

| Property | Type | Description |
|----------|------|-------------|
| `canonicalForm` | `string` | Output only. The canonicalized [ITU-T E.164](https://law.resource.org/pub/us/cfr/ibr/004/itu-t.E.... |
| `formattedType` | `string` | Output only. The type of the phone number translated and formatted in the viewer's account locale... |
| `metadata` | `FieldMetadata` | Metadata about the phone number. |
| `type` | `string` | The type of the phone number. The type can be custom or one of these predefined values: * `home` ... |
| `value` | `string` | The phone number. |

### `Photo`

A person's photo. A picture shown next to the person's name to help others recognize the person.

| Property | Type | Description |
|----------|------|-------------|
| `default` | `boolean` | True if the photo is a default photo; false if the photo is a user-provided photo. |
| `metadata` | `FieldMetadata` | Metadata about the photo. |
| `url` | `string` | The URL of the photo. You can change the desired size by appending a query parameter `sz={size}` ... |

### `ProfileMetadata`

The metadata about a profile.

| Property | Type | Description |
|----------|------|-------------|
| `objectType` | `string` | Output only. The profile object type. |
| `userTypes` | `array<string>` | Output only. The user types. |

### `Relation`

A person's relation to another person.

| Property | Type | Description |
|----------|------|-------------|
| `formattedType` | `string` | Output only. The type of the relation translated and formatted in the viewer's account locale or ... |
| `metadata` | `FieldMetadata` | Metadata about the relation. |
| `person` | `string` | The name of the other person this relation refers to. |
| `type` | `string` | The person's relation to the other person. The type can be custom or one of these predefined valu... |

### `RelationshipInterest`

**DEPRECATED**: No data will be returned A person's relationship interest .

| Property | Type | Description |
|----------|------|-------------|
| `formattedValue` | `string` | Output only. The value of the relationship interest translated and formatted in the viewer's acco... |
| `metadata` | `FieldMetadata` | Metadata about the relationship interest. |
| `value` | `string` | The kind of relationship the person is looking for. The value can be custom or one of these prede... |

### `RelationshipStatus`

**DEPRECATED**: No data will be returned A person's relationship status.

| Property | Type | Description |
|----------|------|-------------|
| `formattedValue` | `string` | Output only. The value of the relationship status translated and formatted in the viewer's accoun... |
| `metadata` | `FieldMetadata` | Metadata about the relationship status. |
| `value` | `string` | The relationship status. The value can be custom or one of these predefined values: * `single` * ... |

### `Residence`

**DEPRECATED**: Please use `person.locations` instead. A person's past or current residence.

| Property | Type | Description |
|----------|------|-------------|
| `current` | `boolean` | True if the residence is the person's current residence; false if the residence is a past residence. |
| `metadata` | `FieldMetadata` | Metadata about the residence. |
| `value` | `string` | The address of the residence. |

### `SearchDirectoryPeopleResponse`

The response to a request for people in the authenticated user's domain directory that match the specified query.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `people` | `array<Person>` | The list of people in the domain directory that match the query. |
| `totalSize` | `integer` | The total number of items in the list without pagination. |

### `SearchResponse`

The response to a search request for the authenticated user, given a query.

| Property | Type | Description |
|----------|------|-------------|
| `results` | `array<SearchResult>` | The results of the request. |

### `SearchResult`

A result of a search query.

| Property | Type | Description |
|----------|------|-------------|
| `person` | `Person` | The matched Person. |

### `SipAddress`

A person's SIP address. Session Initial Protocol addresses are used for VoIP communications to make voice or video calls over the internet.

| Property | Type | Description |
|----------|------|-------------|
| `formattedType` | `string` | Output only. The type of the SIP address translated and formatted in the viewer's account locale ... |
| `metadata` | `FieldMetadata` | Metadata about the SIP address. |
| `type` | `string` | The type of the SIP address. The type can be custom or or one of these predefined values: * `home... |
| `value` | `string` | The SIP address in the [RFC 3261 19.1](https://tools.ietf.org/html/rfc3261#section-19.1) SIP URI ... |

### `Skill`

A skill that the person has.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `FieldMetadata` | Metadata about the skill. |
| `value` | `string` | The skill; for example, `underwater basket weaving`. |

### `Source`

The source of a field.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | **Only populated in `person.metadata.sources`.** The [HTTP entity tag](https://en.wikipedia.org/w... |
| `id` | `string` | The unique identifier within the source type generated by the server. |
| `profileMetadata` | `ProfileMetadata` | Output only. **Only populated in `person.metadata.sources`.** Metadata about a source of type PRO... |
| `type` | `string` | The source type. |
| `updateTime` | `string` | Output only. **Only populated in `person.metadata.sources`.** Last update timestamp of this source. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Tagline`

**DEPRECATED**: No data will be returned A brief one-line description of the person.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `FieldMetadata` | Metadata about the tagline. |
| `value` | `string` | The tagline. |

### `UpdateContactGroupRequest`

A request to update an existing user contact group. All updated fields will be replaced.

| Property | Type | Description |
|----------|------|-------------|
| `contactGroup` | `ContactGroup` | Required. The contact group to update. |
| `readGroupFields` | `string` | Optional. A field mask to restrict which fields on the group are returned. Defaults to `metadata`... |
| `updateGroupFields` | `string` | Optional. A field mask to restrict which fields on the group are updated. Multiple fields can be ... |

### `UpdateContactPhotoRequest`

A request to update an existing contact's photo. All requests must have a valid photo format: JPEG or PNG.

| Property | Type | Description |
|----------|------|-------------|
| `personFields` | `string` | Optional. A field mask to restrict which fields on the person are returned. Multiple fields can b... |
| `photoBytes` | `string` | Required. Raw photo bytes |
| `sources` | `array<string>` | Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SO... |

### `UpdateContactPhotoResponse`

The response for updating a contact's photo.

| Property | Type | Description |
|----------|------|-------------|
| `person` | `Person` | The updated person, if person_fields is set in the UpdateContactPhotoRequest; otherwise this will... |

### `Url`

A person's associated URLs.

| Property | Type | Description |
|----------|------|-------------|
| `formattedType` | `string` | Output only. The type of the URL translated and formatted in the viewer's account locale or the `... |
| `metadata` | `FieldMetadata` | Metadata about the URL. |
| `type` | `string` | The type of the URL. The type can be custom or one of these predefined values: * `home` * `work` ... |
| `value` | `string` | The URL. |

### `UserDefined`

Arbitrary user data that is populated by the end users.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The end user specified key of the user defined data. |
| `metadata` | `FieldMetadata` | Metadata about the user defined data. |
| `value` | `string` | The end user specified value of the user defined data. |

