# Google Vault API - API Reference

**Version**: `v1` | **Methods**: 33 | **Schemas**: 70

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `vault.matters.addPermissions` | POST | `v1/matters/{matterId}:addPermissions` | Adds an account as a matter collaborator. |
| `vault.matters.reopen` | POST | `v1/matters/{matterId}:reopen` | Reopens the specified matter. Returns the matter with updated state. |
| `vault.matters.list` | GET | `v1/matters` | Lists matters the requestor has access to. |
| `vault.matters.create` | POST | `v1/matters` | Creates a matter with the given name and description. The initial state is open, and the owner is... |
| `vault.matters.get` | GET | `v1/matters/{matterId}` | Gets the specified matter. |
| `vault.matters.removePermissions` | POST | `v1/matters/{matterId}:removePermissions` | Removes an account as a matter collaborator. |
| `vault.matters.update` | PUT | `v1/matters/{matterId}` | Updates the specified matter. This updates only the name and description of the matter, identifie... |
| `vault.matters.count` | POST | `v1/matters/{matterId}:count` | Counts the accounts processed by the specified query. |
| `vault.matters.close` | POST | `v1/matters/{matterId}:close` | Closes the specified matter. Returns the matter with updated state. |
| `vault.matters.undelete` | POST | `v1/matters/{matterId}:undelete` | Undeletes the specified matter. Returns the matter with updated state. |
| `vault.matters.delete` | DELETE | `v1/matters/{matterId}` | Deletes the specified matter. Returns the matter with updated state. |
| `vault.matters.holds.create` | POST | `v1/matters/{matterId}/holds` | Creates a hold in the specified matter. |
| `vault.matters.holds.list` | GET | `v1/matters/{matterId}/holds` | Lists the holds in a matter. |
| `vault.matters.holds.addHeldAccounts` | POST | `v1/matters/{matterId}/holds/{holdId}:addHeldAccounts` | Adds accounts to a hold. Returns a list of accounts that have been successfully added. Accounts c... |
| `vault.matters.holds.update` | PUT | `v1/matters/{matterId}/holds/{holdId}` | Updates the scope (organizational unit or accounts) and query parameters of a hold. You cannot ad... |
| `vault.matters.holds.removeHeldAccounts` | POST | `v1/matters/{matterId}/holds/{holdId}:removeHeldAccounts` | Removes the specified accounts from a hold. Returns a list of statuses in the same order as the r... |
| `vault.matters.holds.get` | GET | `v1/matters/{matterId}/holds/{holdId}` | Gets the specified hold. |
| `vault.matters.holds.delete` | DELETE | `v1/matters/{matterId}/holds/{holdId}` | Removes the specified hold and releases the accounts or organizational unit covered by the hold. ... |
| `vault.matters.holds.accounts.delete` | DELETE | `v1/matters/{matterId}/holds/{holdId}/accounts/{accountId}` | Removes an account from a hold. |
| `vault.matters.holds.accounts.list` | GET | `v1/matters/{matterId}/holds/{holdId}/accounts` | Lists the accounts covered by a hold. This can list only individually-specified accounts covered ... |
| `vault.matters.holds.accounts.create` | POST | `v1/matters/{matterId}/holds/{holdId}/accounts` | Adds an account to a hold. Accounts can be added only to a hold that does not have an organizatio... |
| `vault.matters.savedQueries.list` | GET | `v1/matters/{matterId}/savedQueries` | Lists the saved queries in a matter. |
| `vault.matters.savedQueries.get` | GET | `v1/matters/{matterId}/savedQueries/{savedQueryId}` | Retrieves the specified saved query. |
| `vault.matters.savedQueries.create` | POST | `v1/matters/{matterId}/savedQueries` | Creates a saved query. |
| `vault.matters.savedQueries.delete` | DELETE | `v1/matters/{matterId}/savedQueries/{savedQueryId}` | Deletes the specified saved query. |
| `vault.matters.exports.list` | GET | `v1/matters/{matterId}/exports` | Lists details about the exports in the specified matter. |
| `vault.matters.exports.delete` | DELETE | `v1/matters/{matterId}/exports/{exportId}` | Deletes an export. |
| `vault.matters.exports.create` | POST | `v1/matters/{matterId}/exports` | Creates an export. |
| `vault.matters.exports.get` | GET | `v1/matters/{matterId}/exports/{exportId}` | Gets an export. |
| `vault.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `vault.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `vault.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `vault.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |

### `vault.matters.addPermissions`

**POST** `v1/matters/{matterId}:addPermissions`

Adds an account as a matter collaborator.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |

**Request body**: `AddMatterPermissionsRequest`

**Response**: `MatterPermission`

```typescript
const res = await vault.matters.addPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.reopen`

**POST** `v1/matters/{matterId}:reopen`

Reopens the specified matter. Returns the matter with updated state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |

**Request body**: `ReopenMatterRequest`

**Response**: `ReopenMatterResponse`

```typescript
const res = await vault.matters.reopen({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.list`

**GET** `v1/matters`

Lists matters the requestor has access to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The number of matters to return in the response. Default and maximum are 100. |
| `pageToken` | `string` | query | No | The pagination token as returned in the response. |
| `state` | `string` | query | No | If set, lists only matters with the specified state. The default lists matters of all states. |
| `view` | `string` | query | No | Specifies how much information about the matter to return in response. |

**Response**: `ListMattersResponse`

```typescript
const res = await vault.matters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`
- `https://www.googleapis.com/auth/ediscovery.readonly`

---

### `vault.matters.create`

**POST** `v1/matters`

Creates a matter with the given name and description. The initial state is open, and the owner is the method caller. Returns the created matter with default view.

**Request body**: `Matter`

**Response**: `Matter`

```typescript
const res = await vault.matters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.get`

**GET** `v1/matters/{matterId}`

Gets the specified matter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |
| `view` | `string` | query | No | Specifies how much information about the matter to return in the response. |

**Response**: `Matter`

```typescript
const res = await vault.matters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`
- `https://www.googleapis.com/auth/ediscovery.readonly`

---

### `vault.matters.removePermissions`

**POST** `v1/matters/{matterId}:removePermissions`

Removes an account as a matter collaborator.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |

**Request body**: `RemoveMatterPermissionsRequest`

**Response**: `Empty`

```typescript
const res = await vault.matters.removePermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.update`

**PUT** `v1/matters/{matterId}`

Updates the specified matter. This updates only the name and description of the matter, identified by matter ID. Changes to any other fields are ignored. Returns the default view of the matter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |

**Request body**: `Matter`

**Response**: `Matter`

```typescript
const res = await vault.matters.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.count`

**POST** `v1/matters/{matterId}:count`

Counts the accounts processed by the specified query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |

**Request body**: `CountArtifactsRequest`

**Response**: `Operation`

```typescript
const res = await vault.matters.count({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.close`

**POST** `v1/matters/{matterId}:close`

Closes the specified matter. Returns the matter with updated state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |

**Request body**: `CloseMatterRequest`

**Response**: `CloseMatterResponse`

```typescript
const res = await vault.matters.close({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.undelete`

**POST** `v1/matters/{matterId}:undelete`

Undeletes the specified matter. Returns the matter with updated state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |

**Request body**: `UndeleteMatterRequest`

**Response**: `Matter`

```typescript
const res = await vault.matters.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.delete`

**DELETE** `v1/matters/{matterId}`

Deletes the specified matter. Returns the matter with updated state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID |

**Response**: `Matter`

```typescript
const res = await vault.matters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.holds.create`

**POST** `v1/matters/{matterId}/holds`

Creates a hold in the specified matter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |

**Request body**: `Hold`

**Response**: `Hold`

```typescript
const res = await vault.holds.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.holds.list`

**GET** `v1/matters/{matterId}/holds`

Lists the holds in a matter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |
| `pageSize` | `integer` | query | No | The number of holds to return in the response, between 0 and 100 inclusive. Leaving this empty, or as 0, is the same ... |
| `pageToken` | `string` | query | No | The pagination token as returned in the response. An empty token means start from the beginning. |
| `view` | `string` | query | No | The amount of detail to return for a hold. |

**Response**: `ListHoldsResponse`

```typescript
const res = await vault.holds.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`
- `https://www.googleapis.com/auth/ediscovery.readonly`

---

### `vault.matters.holds.addHeldAccounts`

**POST** `v1/matters/{matterId}/holds/{holdId}:addHeldAccounts`

Adds accounts to a hold. Returns a list of accounts that have been successfully added. Accounts can be added only to an existing account-based hold.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |
| `holdId` | `string` | path | Yes | The hold ID. |

**Request body**: `AddHeldAccountsRequest`

**Response**: `AddHeldAccountsResponse`

```typescript
const res = await vault.holds.addHeldAccounts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.holds.update`

**PUT** `v1/matters/{matterId}/holds/{holdId}`

Updates the scope (organizational unit or accounts) and query parameters of a hold. You cannot add accounts to a hold that covers an organizational unit, nor can you add organizational units to a hold that covers individual accounts. If you try, the unsupported values are ignored.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |
| `holdId` | `string` | path | Yes | The ID of the hold. |

**Request body**: `Hold`

**Response**: `Hold`

```typescript
const res = await vault.holds.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.holds.removeHeldAccounts`

**POST** `v1/matters/{matterId}/holds/{holdId}:removeHeldAccounts`

Removes the specified accounts from a hold. Returns a list of statuses in the same order as the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |
| `holdId` | `string` | path | Yes | The hold ID. |

**Request body**: `RemoveHeldAccountsRequest`

**Response**: `RemoveHeldAccountsResponse`

```typescript
const res = await vault.holds.removeHeldAccounts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.holds.get`

**GET** `v1/matters/{matterId}/holds/{holdId}`

Gets the specified hold.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |
| `holdId` | `string` | path | Yes | The hold ID. |
| `view` | `string` | query | No | The amount of detail to return for a hold. |

**Response**: `Hold`

```typescript
const res = await vault.holds.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`
- `https://www.googleapis.com/auth/ediscovery.readonly`

---

### `vault.matters.holds.delete`

**DELETE** `v1/matters/{matterId}/holds/{holdId}`

Removes the specified hold and releases the accounts or organizational unit covered by the hold. If the data is not preserved by another hold or retention rule, it might be purged.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |
| `holdId` | `string` | path | Yes | The hold ID. |

**Response**: `Empty`

```typescript
const res = await vault.holds.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.holds.accounts.delete`

**DELETE** `v1/matters/{matterId}/holds/{holdId}/accounts/{accountId}`

Removes an account from a hold.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |
| `holdId` | `string` | path | Yes | The hold ID. |
| `accountId` | `string` | path | Yes | The ID of the account to remove from the hold. |

**Response**: `Empty`

```typescript
const res = await vault.accounts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.holds.accounts.list`

**GET** `v1/matters/{matterId}/holds/{holdId}/accounts`

Lists the accounts covered by a hold. This can list only individually-specified accounts covered by the hold. If the hold covers an organizational unit, use the [Admin SDK](https://developers.google.com/admin-sdk/). to list the members of the organizational unit on hold.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |
| `holdId` | `string` | path | Yes | The hold ID. |

**Response**: `ListHeldAccountsResponse`

```typescript
const res = await vault.accounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`
- `https://www.googleapis.com/auth/ediscovery.readonly`

---

### `vault.matters.holds.accounts.create`

**POST** `v1/matters/{matterId}/holds/{holdId}/accounts`

Adds an account to a hold. Accounts can be added only to a hold that does not have an organizational unit set. If you try to add an account to an organizational unit-based hold, an error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |
| `holdId` | `string` | path | Yes | The hold ID. |

**Request body**: `HeldAccount`

**Response**: `HeldAccount`

```typescript
const res = await vault.accounts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.savedQueries.list`

**GET** `v1/matters/{matterId}/savedQueries`

Lists the saved queries in a matter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The ID of the matter to get the saved queries for. |
| `pageSize` | `integer` | query | No | The maximum number of saved queries to return. |
| `pageToken` | `string` | query | No | The pagination token as returned in the previous response. An empty token means start from the beginning. |

**Response**: `ListSavedQueriesResponse`

```typescript
const res = await vault.savedQueries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`
- `https://www.googleapis.com/auth/ediscovery.readonly`

---

### `vault.matters.savedQueries.get`

**GET** `v1/matters/{matterId}/savedQueries/{savedQueryId}`

Retrieves the specified saved query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The ID of the matter to get the saved query from. |
| `savedQueryId` | `string` | path | Yes | ID of the saved query to retrieve. |

**Response**: `SavedQuery`

```typescript
const res = await vault.savedQueries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`
- `https://www.googleapis.com/auth/ediscovery.readonly`

---

### `vault.matters.savedQueries.create`

**POST** `v1/matters/{matterId}/savedQueries`

Creates a saved query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The ID of the matter to create the saved query in. |

**Request body**: `SavedQuery`

**Response**: `SavedQuery`

```typescript
const res = await vault.savedQueries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.savedQueries.delete`

**DELETE** `v1/matters/{matterId}/savedQueries/{savedQueryId}`

Deletes the specified saved query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The ID of the matter to delete the saved query from. |
| `savedQueryId` | `string` | path | Yes | ID of the saved query to delete. |

**Response**: `Empty`

```typescript
const res = await vault.savedQueries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.exports.list`

**GET** `v1/matters/{matterId}/exports`

Lists details about the exports in the specified matter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |
| `pageSize` | `integer` | query | No | The number of exports to return in the response. |
| `pageToken` | `string` | query | No | The pagination token as returned in the response. |

**Response**: `ListExportsResponse`

```typescript
const res = await vault.exports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`
- `https://www.googleapis.com/auth/ediscovery.readonly`

---

### `vault.matters.exports.delete`

**DELETE** `v1/matters/{matterId}/exports/{exportId}`

Deletes an export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |
| `exportId` | `string` | path | Yes | The export ID. |

**Response**: `Empty`

```typescript
const res = await vault.exports.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.exports.create`

**POST** `v1/matters/{matterId}/exports`

Creates an export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |

**Request body**: `Export`

**Response**: `Export`

```typescript
const res = await vault.exports.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.matters.exports.get`

**GET** `v1/matters/{matterId}/exports/{exportId}`

Gets an export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `matterId` | `string` | path | Yes | The matter ID. |
| `exportId` | `string` | path | Yes | The export ID. |

**Response**: `Export`

```typescript
const res = await vault.exports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`
- `https://www.googleapis.com/auth/ediscovery.readonly`

---

### `vault.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await vault.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

### `vault.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await vault.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`
- `https://www.googleapis.com/auth/ediscovery.readonly`

---

### `vault.operations.list`

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
const res = await vault.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`
- `https://www.googleapis.com/auth/ediscovery.readonly`

---

### `vault.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await vault.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ediscovery`

---

## Schemas

### `AccountCount`

The results count for each account.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `UserInfo` | Account owner. |
| `count` | `string` | The number of results (messages or files) found for this account. |

### `AccountCountError`

An error that occurred when querying a specific account

| Property | Type | Description |
|----------|------|-------------|
| `account` | `UserInfo` | Account owner. |
| `errorType` | `string` | Account query error. |

### `AccountInfo`

The accounts to search

| Property | Type | Description |
|----------|------|-------------|
| `emails` | `array<string>` | A set of accounts to search. |

### `AddHeldAccountResult`

The status of each account creation, and the **HeldAccount**, if successful.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `HeldAccount` | Returned when the account was successfully created. |
| `status` | `Status` | Reports the request status. If it failed, returns an error message. |

### `AddHeldAccountsRequest`

Add a list of accounts to a hold.

| Property | Type | Description |
|----------|------|-------------|
| `accountIds` | `array<string>` | A comma-separated list of the account IDs of the accounts to add to the hold. Specify either **em... |
| `emails` | `array<string>` | A comma-separated list of the emails of the accounts to add to the hold. Specify either **emails*... |

### `AddHeldAccountsResponse`

Response for batch create held accounts.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<AddHeldAccountResult>` | The list of responses, in the same order as the batch request. |

### `AddMatterPermissionsRequest`

Add an account with the permission specified. The role cannot be owner. If an account already has a role in the matter, the existing role is overwritten.

| Property | Type | Description |
|----------|------|-------------|
| `ccMe` | `boolean` | Only relevant if **sendEmails** is **true**. To CC the requestor in the email message, set to **t... |
| `matterPermission` | `MatterPermission` | The account and its role to add. |
| `sendEmails` | `boolean` | To send a notification email to the added account, set to **true**. To not send a notification em... |

### `CalendarExportOptions`

The options for Calendar exports.

| Property | Type | Description |
|----------|------|-------------|
| `exportFormat` | `string` | The file format for exported text messages. |

### `CalendarOptions`

Additional options for Calendar search

| Property | Type | Description |
|----------|------|-------------|
| `locationQuery` | `array<string>` | Matches only those events whose location contains all of the words in the given set. If the strin... |
| `minusWords` | `array<string>` | Matches only those events that do not contain any of the words in the given set in title, descrip... |
| `peopleQuery` | `array<string>` | Matches only those events whose attendees contain all of the words in the given set. Entries in t... |
| `responseStatuses` | `array<string>` | Matches only events for which the custodian gave one of these responses. If the set is empty or c... |
| `versionDate` | `string` | Search the current version of the Calendar event, but export the contents of the last version sav... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CloseMatterRequest`

Close a matter by ID.

### `CloseMatterResponse`

Response to a CloseMatterRequest.

| Property | Type | Description |
|----------|------|-------------|
| `matter` | `Matter` | The updated matter, with state **CLOSED**. |

### `CloudStorageFile`

The export file in Cloud Storage

| Property | Type | Description |
|----------|------|-------------|
| `bucketName` | `string` | The name of the Cloud Storage bucket for the export file. You can use this value in the Cloud Sto... |
| `md5Hash` | `string` | The md5 hash of the file. |
| `objectName` | `string` | The name of the Cloud Storage object for the export file. You can use this value in the Cloud Sto... |
| `size` | `string` | The export file size. |

### `CloudStorageSink`

Export sink for Cloud Storage files.

| Property | Type | Description |
|----------|------|-------------|
| `files` | `array<CloudStorageFile>` | Output only. The exported files in Cloud Storage. |

### `CorpusQuery`

Service-specific options for holds.

| Property | Type | Description |
|----------|------|-------------|
| `calendarQuery` | `HeldCalendarQuery` | Service-specific options for Calendar holds. If set, **CorpusType** must be **CALENDAR**. |
| `driveQuery` | `HeldDriveQuery` | Service-specific options for Drive holds. If set, **CorpusType** must be **DRIVE**. |
| `groupsQuery` | `HeldGroupsQuery` | Service-specific options for Groups holds. If set, **CorpusType** must be **GROUPS**. |
| `hangoutsChatQuery` | `HeldHangoutsChatQuery` | Service-specific options for Chat holds. If set, **CorpusType** must be **HANGOUTS_CHAT**. |
| `mailQuery` | `HeldMailQuery` | Service-specific options for Gmail holds. If set, **CorpusType** must be **MAIL**. |
| `voiceQuery` | `HeldVoiceQuery` | Service-specific options for Voice holds. If set, **CorpusType** must be **VOICE**. |

### `CountArtifactsMetadata`

Long running operation metadata for CountArtifacts.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End time of count operation. Available when operation is done. |
| `matterId` | `string` | The matter ID of the associated matter. |
| `query` | `Query` | The search query from the request. |
| `startTime` | `string` | Creation time of count operation. |

### `CountArtifactsRequest`

Count artifacts request.

| Property | Type | Description |
|----------|------|-------------|
| `query` | `Query` | The search query. |
| `view` | `string` | Sets the granularity of the count results. |

### `CountArtifactsResponse`

Definition of the response for method CountArtifacts.

| Property | Type | Description |
|----------|------|-------------|
| `groupsCountResult` | `GroupsCountResult` | Count metrics for Groups. |
| `mailCountResult` | `MailCountResult` | Count metrics for Gmail and classic Hangouts. |
| `totalCount` | `string` | Total count of messages. |

### `DriveDocumentIds`

Specify Drive documents by document ID.

| Property | Type | Description |
|----------|------|-------------|
| `ids` | `array<string>` | Required. A list of Drive document IDs. |

### `DriveDocumentInfo`

The Drive documents to search.

| Property | Type | Description |
|----------|------|-------------|
| `documentIds` | `DriveDocumentIds` | Specify Drive documents by document ID. |

### `DriveExportOptions`

Options for Drive exports.

| Property | Type | Description |
|----------|------|-------------|
| `includeAccessInfo` | `boolean` | To include access level information for users with [indirect access](https://support.google.com/v... |

### `DriveOptions`

Additional options for Drive search.

| Property | Type | Description |
|----------|------|-------------|
| `clientSideEncryptedOption` | `string` | Set whether the results include only content encrypted with [Google Workspace Client-side encrypt... |
| `includeSharedDrives` | `boolean` | Set to **true** to include shared drives. |
| `includeTeamDrives` | `boolean` | Set to true to include Team Drive. |
| `sharedDrivesOption` | `string` | Optional. Options to include or exclude documents in shared drives. We recommend using this field... |
| `versionDate` | `string` | Search the current version of the Drive file, but export the contents of the last version saved b... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Export`

An export. To work with Vault resources, the account must have the [required Vault privileges](https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege.

| Property | Type | Description |
|----------|------|-------------|
| `cloudStorageSink` | `CloudStorageSink` | Output only. The sink for export files in Cloud Storage. |
| `createTime` | `string` | Output only. The time when the export was created. |
| `exportOptions` | `ExportOptions` | Additional export options. |
| `id` | `string` | Output only. The generated export ID. |
| `matterId` | `string` | Output only. The matter ID. |
| `name` | `string` | The export name. Don't use special characters (~!$'(),;@:/?) in the name, they can prevent you fr... |
| `parentExportId` | `string` | Output only. Identifies the parent export that spawned this child export. This is only set on chi... |
| `query` | `Query` | The query parameters used to create the export. |
| `requester` | `UserInfo` | Output only. The requester of the export. |
| `stats` | `ExportStats` | Output only. Details about the export progress and size. |
| `status` | `string` | Output only. The status of the export. |

### `ExportOptions`

Additional options for exports

| Property | Type | Description |
|----------|------|-------------|
| `calendarOptions` | `CalendarExportOptions` | Option available for Calendar export. |
| `driveOptions` | `DriveExportOptions` | Options for Drive exports. |
| `geminiOptions` | `GeminiExportOptions` | Option available for Gemini export. |
| `groupsOptions` | `GroupsExportOptions` | Options for Groups exports. |
| `hangoutsChatOptions` | `HangoutsChatExportOptions` | Options for Chat exports. |
| `mailOptions` | `MailExportOptions` | Options for Gmail exports. |
| `region` | `string` | The requested data region for the export. |
| `voiceOptions` | `VoiceExportOptions` | Options for Voice exports. |

### `ExportStats`

Progress information for an export.

| Property | Type | Description |
|----------|------|-------------|
| `exportedArtifactCount` | `string` | The number of messages or files already processed for export. |
| `sizeInBytes` | `string` | The size of export in bytes. |
| `totalArtifactCount` | `string` | The number of messages or files to be exported. |

### `GeminiExportOptions`

The options for Gemini exports.

| Property | Type | Description |
|----------|------|-------------|
| `exportFormat` | `string` | The file format for exported messages. |

### `GeminiOptions`

Additional options for Gemini search

### `GroupsCountResult`

Groups specific count metrics.

| Property | Type | Description |
|----------|------|-------------|
| `accountCountErrors` | `array<AccountCountError>` | Error occurred when querying these accounts. |
| `accountCounts` | `array<AccountCount>` | Subtotal count per matching account that have more than zero messages. |
| `matchingAccountsCount` | `string` | Total number of accounts that can be queried and have more than zero messages. |
| `nonQueryableAccounts` | `array<string>` | When **DataScope** is **HELD_DATA**, these accounts in the request are not queried because they a... |
| `queriedAccountsCount` | `string` | Total number of accounts involved in this count operation. |

### `GroupsExportOptions`

Options for Groups exports.

| Property | Type | Description |
|----------|------|-------------|
| `exportFormat` | `string` | The file format for exported messages. |

### `HangoutsChatExportOptions`

Options for Chat exports.

| Property | Type | Description |
|----------|------|-------------|
| `exportFormat` | `string` | The file format for exported messages. |

### `HangoutsChatInfo`

The Chat spaces to search

| Property | Type | Description |
|----------|------|-------------|
| `roomId` | `array<string>` | A list of Chat spaces IDs, as provided by the [Chat API](https://developers.google.com/workspace/... |

### `HangoutsChatOptions`

Additional options for Google Chat search

| Property | Type | Description |
|----------|------|-------------|
| `includeRooms` | `boolean` | For searches by account or organizational unit, set to **true** to include rooms. |

### `HeldAccount`

An account covered by a hold. This structure is immutable. It can be an individual account or a Google Group, depending on the service. To work with Vault resources, the account must have the [required Vault privileges] (https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The account ID, as provided by the [Admin SDK](https://developers.google.com/admin-sdk/). |
| `email` | `string` | The primary email address of the account. If used as an input, this takes precedence over **accou... |
| `firstName` | `string` | Output only. The first name of the account holder. |
| `holdTime` | `string` | Output only. When the account was put on hold. |
| `lastName` | `string` | Output only. The last name of the account holder. |

### `HeldCalendarQuery`

Options for Calendar holds.

### `HeldDriveQuery`

Options for Drive holds.

| Property | Type | Description |
|----------|------|-------------|
| `includeSharedDriveFiles` | `boolean` | To include files in shared drives in the hold, set to **true**. |
| `includeTeamDriveFiles` | `boolean` | To include files in Team Drives in the hold, set to **true**. |

### `HeldGroupsQuery`

Query options for group holds.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The end time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date. |
| `startTime` | `string` | The start time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date. |
| `terms` | `string` | The [search operators](https://support.google.com/vault/answer/2474474) used to refine the messag... |

### `HeldHangoutsChatQuery`

Options for Chat holds.

| Property | Type | Description |
|----------|------|-------------|
| `includeRooms` | `boolean` | To include messages in Chat spaces the user was a member of, set to **true**. |

### `HeldMailQuery`

Query options for Gmail holds.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The end time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date. |
| `startTime` | `string` | The start time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date. |
| `terms` | `string` | The [search operators](https://support.google.com/vault/answer/2474474) used to refine the messag... |

### `HeldOrgUnit`

The organizational unit covered by a hold. This structure is immutable.

| Property | Type | Description |
|----------|------|-------------|
| `holdTime` | `string` | When the organizational unit was put on hold. This property is immutable. |
| `orgUnitId` | `string` | The organizational unit's immutable ID as provided by the [Admin SDK](https://developers.google.c... |

### `HeldVoiceQuery`

Options for Voice holds.

| Property | Type | Description |
|----------|------|-------------|
| `coveredData` | `array<string>` | A list of data types covered by the hold. Should be non-empty. Order does not matter and duplicat... |

### `Hold`

A hold. A hold prevents the specified Google Workspace service from purging data for specific accounts or all members of an organizational unit. To work with Vault resources, the account must have the [required Vault privileges] (https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege.

| Property | Type | Description |
|----------|------|-------------|
| `accounts` | `array<HeldAccount>` | If set, the hold applies to the specified accounts and **orgUnit** must be empty. |
| `corpus` | `string` | The service to be searched. |
| `holdId` | `string` | The unique immutable ID of the hold. Assigned during creation. |
| `name` | `string` | The name of the hold. |
| `orgUnit` | `HeldOrgUnit` | If set, the hold applies to all members of the organizational unit and **accounts** must be empty... |
| `query` | `CorpusQuery` | Service-specific options. If set, **CorpusQuery** must match **CorpusType**. |
| `updateTime` | `string` | The last time this hold was modified. |

### `ListExportsResponse`

The exports for a matter.

| Property | Type | Description |
|----------|------|-------------|
| `exports` | `array<Export>` | The list of exports. |
| `nextPageToken` | `string` | Page token to retrieve the next page of results in the list. |

### `ListHeldAccountsResponse`

Returns a list of the accounts covered by a hold.

| Property | Type | Description |
|----------|------|-------------|
| `accounts` | `array<HeldAccount>` | The held accounts on a hold. |

### `ListHoldsResponse`

The holds for a matter.

| Property | Type | Description |
|----------|------|-------------|
| `holds` | `array<Hold>` | The list of holds. |
| `nextPageToken` | `string` | Page token to retrieve the next page of results in the list. If this is empty, then there are no ... |

### `ListMattersResponse`

Provides the list of matters.

| Property | Type | Description |
|----------|------|-------------|
| `matters` | `array<Matter>` | List of matters. |
| `nextPageToken` | `string` | Page token to retrieve the next page of results in the list. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListSavedQueriesResponse`

Definition of the response for method ListSaveQuery.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Page token to retrieve the next page of results in the list. If this is empty, then there are no ... |
| `savedQueries` | `array<SavedQuery>` | List of saved queries. |

### `MailCountResult`

Gmail and classic Hangouts-specific count metrics.

| Property | Type | Description |
|----------|------|-------------|
| `accountCountErrors` | `array<AccountCountError>` | Errors occurred when querying these accounts. |
| `accountCounts` | `array<AccountCount>` | Subtotal count per matching account that have more than zero messages. |
| `matchingAccountsCount` | `string` | Total number of accounts that can be queried and have more than zero messages. |
| `nonQueryableAccounts` | `array<string>` | When **DataScope** is **HELD_DATA** and when account emails are passed in explicitly, the list of... |
| `queriedAccountsCount` | `string` | Total number of accounts involved in this count operation. |

### `MailExportOptions`

Options for Gmail exports.

| Property | Type | Description |
|----------|------|-------------|
| `exportFormat` | `string` | The file format for exported messages. |
| `exportLinkedDriveFiles` | `boolean` | Optional. To enable exporting linked Drive files, set to **true**. |
| `showConfidentialModeContent` | `boolean` | To export confidential mode content, set to **true**. |
| `useNewExport` | `boolean` | To use the new export system, set to **true**. |

### `MailOptions`

Additional options for Gmail search

| Property | Type | Description |
|----------|------|-------------|
| `clientSideEncryptedOption` | `string` | Specifies whether the results should include encrypted content, unencrypted content, or both. Def... |
| `excludeDrafts` | `boolean` | Set to **true** to exclude drafts. |

### `Matter`

Represents a matter. To work with Vault resources, the account must have the [required Vault privileges] (https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | An optional description for the matter. |
| `matterId` | `string` | The matter ID, which is generated by the server. Leave blank when creating a matter. |
| `matterPermissions` | `array<MatterPermission>` | Lists the users and their permission for the matter. Currently there is no programmer defined lim... |
| `matterRegion` | `string` | Optional. The requested data region for the matter. |
| `name` | `string` | The name of the matter. |
| `state` | `string` | The state of the matter. |

### `MatterPermission`

Users can be matter owners or collaborators. Each matter has only one owner. All others users who can access the matter are collaborators. When an account is purged, its corresponding MatterPermission resources cease to exist.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The account ID, as provided by the [Admin SDK](https://developers.google.com/admin-sdk/). |
| `role` | `string` | The user's role for the matter. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OrgUnitInfo`

The organizational unit to search

| Property | Type | Description |
|----------|------|-------------|
| `orgUnitId` | `string` | The name of the organizational unit to search, as provided by the [Admin SDK Directory API](https... |

### `Query`

The query definition used for search and export.

| Property | Type | Description |
|----------|------|-------------|
| `accountInfo` | `AccountInfo` | Required when **SearchMethod** is **ACCOUNT**. |
| `calendarOptions` | `CalendarOptions` | Set Calendar search-specific options. |
| `corpus` | `string` | The Google Workspace service to search. |
| `dataScope` | `string` | The data source to search. |
| `driveDocumentInfo` | `DriveDocumentInfo` | Required when **SearchMethod** is **DRIVE_DOCUMENT**. |
| `driveOptions` | `DriveOptions` | Set Drive search-specific options. |
| `endTime` | `string` | The end time for the search query. Specify in GMT. The value is rounded to 12 AM on the specified... |
| `geminiOptions` | `GeminiOptions` | Set Gemini search-specific options. |
| `hangoutsChatInfo` | `HangoutsChatInfo` | Required when **SearchMethod** is **ROOM**. (read-only) |
| `hangoutsChatOptions` | `HangoutsChatOptions` | Set Chat search-specific options. (read-only) |
| `mailOptions` | `MailOptions` | Set Gmail search-specific options. |
| `method` | `string` | The entity to search. This field replaces **searchMethod** to support shared drives. When **searc... |
| `orgUnitInfo` | `OrgUnitInfo` | Required when **SearchMethod** is **ORG_UNIT**. |
| `searchMethod` | `string` | The search method to use. |
| `sharedDriveInfo` | `SharedDriveInfo` | Required when **SearchMethod** is **SHARED_DRIVE**. |
| `sitesUrlInfo` | `SitesUrlInfo` | Required when **SearchMethod** is **SITES_URL**. |
| `startTime` | `string` | The start time for the search query. Specify in GMT. The value is rounded to 12 AM on the specifi... |
| `teamDriveInfo` | `TeamDriveInfo` | Required when **SearchMethod** is **TEAM_DRIVE**. |
| `terms` | `string` | Service-specific [search operators](https://support.google.com/vault/answer/2474474) to filter se... |
| `timeZone` | `string` | The time zone name. It should be an IANA TZ name, such as "America/Los_Angeles". For a list of ti... |
| `voiceOptions` | `VoiceOptions` | Set Voice search-specific options. |

### `RemoveHeldAccountsRequest`

Remove a list of accounts from a hold.

| Property | Type | Description |
|----------|------|-------------|
| `accountIds` | `array<string>` | The account IDs of the accounts to remove from the hold. |

### `RemoveHeldAccountsResponse`

Response for batch delete held accounts.

| Property | Type | Description |
|----------|------|-------------|
| `statuses` | `array<Status>` | A list of statuses for the deleted accounts. Results have the same order as the request. |

### `RemoveMatterPermissionsRequest`

Remove an account as a matter collaborator.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The account ID. |

### `ReopenMatterRequest`

Reopen a matter by ID.

### `ReopenMatterResponse`

Response to a ReopenMatterRequest.

| Property | Type | Description |
|----------|------|-------------|
| `matter` | `Matter` | The updated matter, with state **OPEN**. |

### `SavedQuery`

The definition of a saved query. To work with Vault resources, the account must have the [required Vault privileges](https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The server-generated timestamp when the saved query was created. |
| `displayName` | `string` | The name of the saved query. |
| `matterId` | `string` | Output only. The matter ID of the matter the saved query is saved in. The server does not use thi... |
| `query` | `Query` | The search parameters of the saved query. |
| `savedQueryId` | `string` | A unique identifier for the saved query. |

### `SharedDriveInfo`

The shared drives to search

| Property | Type | Description |
|----------|------|-------------|
| `sharedDriveIds` | `array<string>` | A list of shared drive IDs, as provided by the [Drive API](https://developers.google.com/drive). |

### `SitesUrlInfo`

The published site URLs of new Google Sites to search

| Property | Type | Description |
|----------|------|-------------|
| `urls` | `array<string>` | A list of published site URLs. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TeamDriveInfo`

Team Drives to search

| Property | Type | Description |
|----------|------|-------------|
| `teamDriveIds` | `array<string>` | List of Team Drive IDs, as provided by the [Drive API](https://developers.google.com/drive). |

### `UndeleteMatterRequest`

Undelete a matter by ID.

### `UserInfo`

User's information.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The displayed name of the user. |
| `email` | `string` | The email address of the user. |

### `VoiceExportOptions`

The options for Voice exports.

| Property | Type | Description |
|----------|------|-------------|
| `exportFormat` | `string` | The file format for exported text messages. |

### `VoiceOptions`

Additional options for Voice search

| Property | Type | Description |
|----------|------|-------------|
| `coveredData` | `array<string>` | Datatypes to search |

