# Real-time Bidding API - API Reference

**Version**: `v1` | **Methods**: 38 | **Schemas**: 59

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `realtimebidding.bidders.get` | GET | `v1/{+name}` | Gets a bidder account by its name. |
| `realtimebidding.bidders.list` | GET | `v1/bidders` | Lists all the bidder accounts that belong to the caller. |
| `realtimebidding.bidders.endpoints.get` | GET | `v1/{+name}` | Gets a bidder endpoint by its name. |
| `realtimebidding.bidders.endpoints.list` | GET | `v1/{+parent}/endpoints` | Lists all the bidder's endpoints. |
| `realtimebidding.bidders.endpoints.patch` | PATCH | `v1/{+name}` | Updates a bidder's endpoint. |
| `realtimebidding.bidders.creatives.list` | GET | `v1/{+parent}/creatives` | Lists creatives as they are at the time of the initial request. This call may take multiple hours... |
| `realtimebidding.bidders.creatives.watch` | POST | `v1/{+parent}/creatives:watch` | Watches all creatives pertaining to a bidder. It is sufficient to invoke this endpoint once per b... |
| `realtimebidding.bidders.pretargetingConfigs.list` | GET | `v1/{+parent}/pretargetingConfigs` | Lists all pretargeting configurations for a single bidder. |
| `realtimebidding.bidders.pretargetingConfigs.get` | GET | `v1/{+name}` | Gets a pretargeting configuration. |
| `realtimebidding.bidders.pretargetingConfigs.create` | POST | `v1/{+parent}/pretargetingConfigs` | Creates a pretargeting configuration. A pretargeting configuration's state (PretargetingConfig.st... |
| `realtimebidding.bidders.pretargetingConfigs.patch` | PATCH | `v1/{+name}` | Updates a pretargeting configuration. |
| `realtimebidding.bidders.pretargetingConfigs.delete` | DELETE | `v1/{+name}` | Deletes a pretargeting configuration. |
| `realtimebidding.bidders.pretargetingConfigs.activate` | POST | `v1/{+name}:activate` | Activates a pretargeting configuration. |
| `realtimebidding.bidders.pretargetingConfigs.suspend` | POST | `v1/{+name}:suspend` | Suspends a pretargeting configuration. |
| `realtimebidding.bidders.pretargetingConfigs.addTargetedSites` | POST | `v1/{+pretargetingConfig}:addTargetedSites` | Adds targeted sites to the pretargeting configuration. |
| `realtimebidding.bidders.pretargetingConfigs.removeTargetedSites` | POST | `v1/{+pretargetingConfig}:removeTargetedSites` | Removes targeted sites from the pretargeting configuration. |
| `realtimebidding.bidders.pretargetingConfigs.addTargetedApps` | POST | `v1/{+pretargetingConfig}:addTargetedApps` | Adds targeted apps to the pretargeting configuration. |
| `realtimebidding.bidders.pretargetingConfigs.removeTargetedApps` | POST | `v1/{+pretargetingConfig}:removeTargetedApps` | Removes targeted apps from the pretargeting configuration. |
| `realtimebidding.bidders.pretargetingConfigs.addTargetedPublishers` | POST | `v1/{+pretargetingConfig}:addTargetedPublishers` | Adds targeted publishers to the pretargeting config. |
| `realtimebidding.bidders.pretargetingConfigs.removeTargetedPublishers` | POST | `v1/{+pretargetingConfig}:removeTargetedPublishers` | Removes targeted publishers from the pretargeting config. |
| `realtimebidding.bidders.publisherConnections.list` | GET | `v1/{+parent}/publisherConnections` | Lists publisher connections for a given bidder. |
| `realtimebidding.bidders.publisherConnections.get` | GET | `v1/{+name}` | Gets a publisher connection. |
| `realtimebidding.bidders.publisherConnections.batchApprove` | POST | `v1/{+parent}/publisherConnections:batchApprove` | Batch approves multiple publisher connections. |
| `realtimebidding.bidders.publisherConnections.batchReject` | POST | `v1/{+parent}/publisherConnections:batchReject` | Batch rejects multiple publisher connections. |
| `realtimebidding.buyers.get` | GET | `v1/{+name}` | Gets a buyer account by its name. |
| `realtimebidding.buyers.list` | GET | `v1/buyers` | Lists all buyer account information the calling buyer user or service account is permissioned to ... |
| `realtimebidding.buyers.getRemarketingTag` | GET | `v1/{+name}:getRemarketingTag` | This has been sunset as of October 2023, and will return an error response if called. For more in... |
| `realtimebidding.buyers.creatives.list` | GET | `v1/{+parent}/creatives` | Lists creatives as they are at the time of the initial request. This call may take multiple hours... |
| `realtimebidding.buyers.creatives.get` | GET | `v1/{+name}` | Gets a creative. |
| `realtimebidding.buyers.creatives.create` | POST | `v1/{+parent}/creatives` | Creates a creative. |
| `realtimebidding.buyers.creatives.patch` | PATCH | `v1/{+name}` | Updates a creative. |
| `realtimebidding.buyers.userLists.get` | GET | `v1/{+name}` | Gets a user list by its name. |
| `realtimebidding.buyers.userLists.list` | GET | `v1/{+parent}/userLists` | Lists the user lists visible to the current user. |
| `realtimebidding.buyers.userLists.create` | POST | `v1/{+parent}/userLists` | Creates a new user list. |
| `realtimebidding.buyers.userLists.update` | PUT | `v1/{+name}` | Updates the given user list. Only user lists with URLRestrictions can be updated. |
| `realtimebidding.buyers.userLists.open` | POST | `v1/{+name}:open` | Changes the status of a user list to OPEN. This allows new users to be added to the user list. |
| `realtimebidding.buyers.userLists.close` | POST | `v1/{+name}:close` | Changes the status of a user list to CLOSED. This prevents new users from being added to the user... |
| `realtimebidding.buyers.userLists.getRemarketingTag` | GET | `v1/{+name}:getRemarketingTag` | This has been sunset as of October 2023, and will return an error response if called. For more in... |

### `realtimebidding.bidders.get`

**GET** `v1/{+name}`

Gets a bidder account by its name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the bidder to get. Format: `bidders/{bidderAccountId}` |

**Response**: `Bidder`

```typescript
const res = await realtimebidding.bidders.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.list`

**GET** `v1/bidders`

Lists all the bidder accounts that belong to the caller.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of bidders to return. If unspecified, at most 100 bidders will be returned. The maximum value is 5... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. This value is received from a previous `ListBidders` ... |

**Response**: `ListBiddersResponse`

```typescript
const res = await realtimebidding.bidders.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.endpoints.get`

**GET** `v1/{+name}`

Gets a bidder endpoint by its name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the bidder endpoint to get. Format: `bidders/{bidderAccountId}/endpoints/{endpointId}` |

**Response**: `Endpoint`

```typescript
const res = await realtimebidding.endpoints.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.endpoints.list`

**GET** `v1/{+parent}/endpoints`

Lists all the bidder's endpoints.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the bidder whose endpoints will be listed. Format: `bidders/{bidderAccountId}` |
| `pageSize` | `integer` | query | No | The maximum number of endpoints to return. If unspecified, at most 100 endpoints will be returned. The maximum value ... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. This value is received from a previous `ListEndpoints... |

**Response**: `ListEndpointsResponse`

```typescript
const res = await realtimebidding.endpoints.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.endpoints.patch`

**PATCH** `v1/{+name}`

Updates a bidder's endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Name of the endpoint resource that must follow the pattern `bidders/{bidderAccountId}/endpoints/{endpoin... |
| `updateMask` | `string` | query | No | Field mask to use for partial in-place updates. |

**Request body**: `Endpoint`

**Response**: `Endpoint`

```typescript
const res = await realtimebidding.endpoints.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.creatives.list`

**GET** `v1/{+parent}/creatives`

Lists creatives as they are at the time of the initial request. This call may take multiple hours to complete. For large, paginated requests, this method returns a snapshot of creatives at the time of request for the first page. `lastStatusUpdate` and `creativeServingDecision` may be outdated for creatives on sequential pages. We recommend [Google Cloud Pub/Sub](//cloud.google.com/pubsub/docs/overview) to view the latest status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent buyer that owns the creatives. The pattern for this resource is either `buyers/{buyerAcc... |
| `filter` | `string` | query | No | Query string to filter creatives. If no filter is specified, all active creatives will be returned. Example: 'account... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer creatives than requested (due to timeout constraint) even if more ar... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListCreativesResponse... |
| `view` | `string` | query | No | Controls the amount of information included in the response. By default only creativeServingDecision is included. To ... |

**Response**: `ListCreativesResponse`

```typescript
const res = await realtimebidding.creatives.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.creatives.watch`

**POST** `v1/{+parent}/creatives:watch`

Watches all creatives pertaining to a bidder. It is sufficient to invoke this endpoint once per bidder. A Pub/Sub topic will be created and notifications will be pushed to the topic when any of the bidder's creatives change status. All of the bidder's service accounts will have access to read from the topic. Subsequent invocations of this method will return the existing Pub/Sub configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. To watch all creatives pertaining to the bidder and all its child seat accounts, the bidder must follow the... |

**Request body**: `WatchCreativesRequest`

**Response**: `WatchCreativesResponse`

```typescript
const res = await realtimebidding.creatives.watch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.pretargetingConfigs.list`

**GET** `v1/{+parent}/pretargetingConfigs`

Lists all pretargeting configurations for a single bidder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the bidder whose pretargeting configurations will be listed. Format: bidders/{bidderAccountId} |
| `pageSize` | `integer` | query | No | The maximum number of pretargeting configurations to return. If unspecified, at most 10 pretargeting configurations w... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. This value is received from a previous `ListPretarget... |

**Response**: `ListPretargetingConfigsResponse`

```typescript
const res = await realtimebidding.pretargetingConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.pretargetingConfigs.get`

**GET** `v1/{+name}`

Gets a pretargeting configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the pretargeting configuration to get. Format: bidders/{bidderAccountId}/pretargetingConfigs/{confi... |

**Response**: `PretargetingConfig`

```typescript
const res = await realtimebidding.pretargetingConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.pretargetingConfigs.create`

**POST** `v1/{+parent}/pretargetingConfigs`

Creates a pretargeting configuration. A pretargeting configuration's state (PretargetingConfig.state) is active upon creation, and it will start to affect traffic shortly after. A bidder may create a maximum of 10 pretargeting configurations. Attempts to exceed this maximum results in a 400 bad request error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the bidder to create the pretargeting configuration for. Format: bidders/{bidderAccountId} |

**Request body**: `PretargetingConfig`

**Response**: `PretargetingConfig`

```typescript
const res = await realtimebidding.pretargetingConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.pretargetingConfigs.patch`

**PATCH** `v1/{+name}`

Updates a pretargeting configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Name of the pretargeting configuration that must follow the pattern `bidders/{bidder_account_id}/pretarg... |
| `updateMask` | `string` | query | No | Field mask to use for partial in-place updates. |

**Request body**: `PretargetingConfig`

**Response**: `PretargetingConfig`

```typescript
const res = await realtimebidding.pretargetingConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.pretargetingConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a pretargeting configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the pretargeting configuration to delete. Format: bidders/{bidderAccountId}/pretargetingConfig/... |

**Response**: `Empty`

```typescript
const res = await realtimebidding.pretargetingConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.pretargetingConfigs.activate`

**POST** `v1/{+name}:activate`

Activates a pretargeting configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId} |

**Request body**: `ActivatePretargetingConfigRequest`

**Response**: `PretargetingConfig`

```typescript
const res = await realtimebidding.pretargetingConfigs.activate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.pretargetingConfigs.suspend`

**POST** `v1/{+name}:suspend`

Suspends a pretargeting configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId} |

**Request body**: `SuspendPretargetingConfigRequest`

**Response**: `PretargetingConfig`

```typescript
const res = await realtimebidding.pretargetingConfigs.suspend({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.pretargetingConfigs.addTargetedSites`

**POST** `v1/{+pretargetingConfig}:addTargetedSites`

Adds targeted sites to the pretargeting configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pretargetingConfig` | `string` | path | Yes | Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId} |

**Request body**: `AddTargetedSitesRequest`

**Response**: `PretargetingConfig`

```typescript
const res = await realtimebidding.pretargetingConfigs.addTargetedSites({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.pretargetingConfigs.removeTargetedSites`

**POST** `v1/{+pretargetingConfig}:removeTargetedSites`

Removes targeted sites from the pretargeting configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pretargetingConfig` | `string` | path | Yes | Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId} |

**Request body**: `RemoveTargetedSitesRequest`

**Response**: `PretargetingConfig`

```typescript
const res = await realtimebidding.pretargetingConfigs.removeTargetedSites({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.pretargetingConfigs.addTargetedApps`

**POST** `v1/{+pretargetingConfig}:addTargetedApps`

Adds targeted apps to the pretargeting configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pretargetingConfig` | `string` | path | Yes | Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId} |

**Request body**: `AddTargetedAppsRequest`

**Response**: `PretargetingConfig`

```typescript
const res = await realtimebidding.pretargetingConfigs.addTargetedApps({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.pretargetingConfigs.removeTargetedApps`

**POST** `v1/{+pretargetingConfig}:removeTargetedApps`

Removes targeted apps from the pretargeting configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pretargetingConfig` | `string` | path | Yes | Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId} |

**Request body**: `RemoveTargetedAppsRequest`

**Response**: `PretargetingConfig`

```typescript
const res = await realtimebidding.pretargetingConfigs.removeTargetedApps({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.pretargetingConfigs.addTargetedPublishers`

**POST** `v1/{+pretargetingConfig}:addTargetedPublishers`

Adds targeted publishers to the pretargeting config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pretargetingConfig` | `string` | path | Yes | Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId} |

**Request body**: `AddTargetedPublishersRequest`

**Response**: `PretargetingConfig`

```typescript
const res = await realtimebidding.pretargetingConfigs.addTargetedPublishers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.pretargetingConfigs.removeTargetedPublishers`

**POST** `v1/{+pretargetingConfig}:removeTargetedPublishers`

Removes targeted publishers from the pretargeting config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pretargetingConfig` | `string` | path | Yes | Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId} |

**Request body**: `RemoveTargetedPublishersRequest`

**Response**: `PretargetingConfig`

```typescript
const res = await realtimebidding.pretargetingConfigs.removeTargetedPublishers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.publisherConnections.list`

**GET** `v1/{+parent}/publisherConnections`

Lists publisher connections for a given bidder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the bidder for which publishers have initiated connections. The pattern for this resource is `bidde... |
| `filter` | `string` | query | No | Query string to filter publisher connections. Connections can be filtered by `displayName`, `publisherPlatform`, and ... |
| `orderBy` | `string` | query | No | Order specification by which results should be sorted. If no sort order is specified, the results will be returned in... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested (due to timeout constraint) even if more are ... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListPublisherConnecti... |

**Response**: `ListPublisherConnectionsResponse`

```typescript
const res = await realtimebidding.publisherConnections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.publisherConnections.get`

**GET** `v1/{+name}`

Gets a publisher connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the publisher whose connection information is to be retrieved. In the pattern `bidders/{bidder}/pub... |

**Response**: `PublisherConnection`

```typescript
const res = await realtimebidding.publisherConnections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.publisherConnections.batchApprove`

**POST** `v1/{+parent}/publisherConnections:batchApprove`

Batch approves multiple publisher connections.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The bidder for whom publisher connections will be approved. Format: `bidders/{bidder}` where `{bidder}` is ... |

**Request body**: `BatchApprovePublisherConnectionsRequest`

**Response**: `BatchApprovePublisherConnectionsResponse`

```typescript
const res = await realtimebidding.publisherConnections.batchApprove({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.bidders.publisherConnections.batchReject`

**POST** `v1/{+parent}/publisherConnections:batchReject`

Batch rejects multiple publisher connections.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The bidder for whom publisher connections will be rejected. Format: `bidders/{bidder}` where `{bidder}` is ... |

**Request body**: `BatchRejectPublisherConnectionsRequest`

**Response**: `BatchRejectPublisherConnectionsResponse`

```typescript
const res = await realtimebidding.publisherConnections.batchReject({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.get`

**GET** `v1/{+name}`

Gets a buyer account by its name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the buyer to get. Format: `buyers/{buyerId}` |

**Response**: `Buyer`

```typescript
const res = await realtimebidding.buyers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.list`

**GET** `v1/buyers`

Lists all buyer account information the calling buyer user or service account is permissioned to manage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of buyers to return. If unspecified, at most 100 buyers will be returned. The maximum value is 500... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. This value is received from a previous `ListBuyers` c... |

**Response**: `ListBuyersResponse`

```typescript
const res = await realtimebidding.buyers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.getRemarketingTag`

**GET** `v1/{+name}:getRemarketingTag`

This has been sunset as of October 2023, and will return an error response if called. For more information, see the release notes: https://developers.google.com/authorized-buyers/apis/relnotes#real-time-bidding-api Gets remarketing tag for a buyer. A remarketing tag is a piece of JavaScript code that can be placed on a web page. When a user visits a page containing a remarketing tag, Google adds the user to a user list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. To fetch the remarketing tag for an account, the name must follow the pattern `buyers/{accountId}`, where `... |

**Response**: `GetRemarketingTagResponse`

```typescript
const res = await realtimebidding.buyers.getRemarketingTag({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.creatives.list`

**GET** `v1/{+parent}/creatives`

Lists creatives as they are at the time of the initial request. This call may take multiple hours to complete. For large, paginated requests, this method returns a snapshot of creatives at the time of request for the first page. `lastStatusUpdate` and `creativeServingDecision` may be outdated for creatives on sequential pages. We recommend [Google Cloud Pub/Sub](//cloud.google.com/pubsub/docs/overview) to view the latest status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent buyer that owns the creatives. The pattern for this resource is either `buyers/{buyerAcc... |
| `filter` | `string` | query | No | Query string to filter creatives. If no filter is specified, all active creatives will be returned. Example: 'account... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer creatives than requested (due to timeout constraint) even if more ar... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListCreativesResponse... |
| `view` | `string` | query | No | Controls the amount of information included in the response. By default only creativeServingDecision is included. To ... |

**Response**: `ListCreativesResponse`

```typescript
const res = await realtimebidding.creatives.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.creatives.get`

**GET** `v1/{+name}`

Gets a creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the creative to retrieve. See creative.name. |
| `view` | `string` | query | No | Controls the amount of information included in the response. By default only creativeServingDecision is included. To ... |

**Response**: `Creative`

```typescript
const res = await realtimebidding.creatives.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.creatives.create`

**POST** `v1/{+parent}/creatives`

Creates a creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent buyer that the new creative belongs to that must follow the pattern `buyers/{buyerAc... |

**Request body**: `Creative`

**Response**: `Creative`

```typescript
const res = await realtimebidding.creatives.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.creatives.patch`

**PATCH** `v1/{+name}`

Updates a creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Name of the creative. Follows the pattern `buyers/{buyer}/creatives/{creative}`, where `{buyer}` represe... |
| `updateMask` | `string` | query | No | Field mask to use for partial in-place updates. |

**Request body**: `Creative`

**Response**: `Creative`

```typescript
const res = await realtimebidding.creatives.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.userLists.get`

**GET** `v1/{+name}`

Gets a user list by its name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the user list to be retrieved. See UserList.name. |

**Response**: `UserList`

```typescript
const res = await realtimebidding.userLists.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.userLists.list`

**GET** `v1/{+parent}/userLists`

Lists the user lists visible to the current user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent buyer for the user lists to be returned that must follow the pattern `buyers/{buyerA... |
| `pageSize` | `integer` | query | No | The number of results to return per page. |
| `pageToken` | `string` | query | No | Continuation page token as received from a previous response. |

**Response**: `ListUserListsResponse`

```typescript
const res = await realtimebidding.userLists.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.userLists.create`

**POST** `v1/{+parent}/userLists`

Creates a new user list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent buyer of the user list to be retrieved, which must follow the pattern `buyers/{buyer... |

**Request body**: `UserList`

**Response**: `UserList`

```typescript
const res = await realtimebidding.userLists.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.userLists.update`

**PUT** `v1/{+name}`

Updates the given user list. Only user lists with URLRestrictions can be updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Name of the user list that must follow the pattern `buyers/{buyer}/userLists/{user_list}`, where `{buyer... |

**Request body**: `UserList`

**Response**: `UserList`

```typescript
const res = await realtimebidding.userLists.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.userLists.open`

**POST** `v1/{+name}:open`

Changes the status of a user list to OPEN. This allows new users to be added to the user list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the user list to open. See UserList.name |

**Request body**: `OpenUserListRequest`

**Response**: `UserList`

```typescript
const res = await realtimebidding.userLists.open({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.userLists.close`

**POST** `v1/{+name}:close`

Changes the status of a user list to CLOSED. This prevents new users from being added to the user list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the user list to close. See UserList.name |

**Request body**: `CloseUserListRequest`

**Response**: `UserList`

```typescript
const res = await realtimebidding.userLists.close({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

### `realtimebidding.buyers.userLists.getRemarketingTag`

**GET** `v1/{+name}:getRemarketingTag`

This has been sunset as of October 2023, and will return an error response if called. For more information, see the release notes: https://developers.google.com/authorized-buyers/apis/relnotes#real-time-bidding-api Gets remarketing tag for a buyer. A remarketing tag is a piece of JavaScript code that can be placed on a web page. When a user visits a page containing a remarketing tag, Google adds the user to a user list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. To fetch the remarketing tag for an account, the name must follow the pattern `buyers/{accountId}`, where `... |

**Response**: `GetRemarketingTagResponse`

```typescript
const res = await realtimebidding.userLists.getRemarketingTag({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/realtime-bidding`

---

## Schemas

### `ActivatePretargetingConfigRequest`

A request to activate a pretargeting configuration. Sets the configuration's state to ACTIVE.

### `AdTechnologyProviders`

The list of detected Ad Technology Providers for this creative. Bids placed for inventory that will serve to EEA or UK users are expected to comply with GDPR requirements. You must ensure that the creatives used in such bids should contain only user consented ad technology providers as indicated in the bid request. Google reserves the right to filter non-compliant bids. User consented ad technology providers can be found in the [Google Protocol](https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto) with the `BidRequest.adslot.consented_providers_settings` field, and can be found as an [OpenRTB extension](https://developers.google.com/authorized-buyers/rtb/downloads/openrtb-adx-proto) with the `BidRequest.user.ext.consented_providers_settings` and `BidRequest.user.ext.consent` fields. See https://support.google.com/authorizedbuyers/answer/9789378 for additional information about the Google TCF v2 integration.

| Property | Type | Description |
|----------|------|-------------|
| `detectedGvlIds` | `array<string>` | The detected IAB Global Vendor List (GVL) IDs for this creative. See the IAB Global Vendor List a... |
| `detectedProviderIds` | `array<string>` | The detected [Google Ad Tech Providers (ATP)](https://support.google.com/admanager/answer/9012903... |
| `unidentifiedProviderDomains` | `array<string>` | Domains of detected unidentified ad technology providers (if any). You must ensure that the creat... |

### `AddTargetedAppsRequest`

A request to start targeting the provided app IDs in a specific pretargeting configuration. The pretargeting configuration itself specifies how these apps are targeted. in PretargetingConfig.appTargeting.mobileAppTargeting.

| Property | Type | Description |
|----------|------|-------------|
| `appIds` | `array<string>` | A list of app IDs to target in the pretargeting configuration. These values will be added to the ... |
| `targetingMode` | `string` | Required. The targeting mode that should be applied to the list of app IDs. If there are existing... |

### `AddTargetedPublishersRequest`

A request to start targeting the provided publishers in a specific pretargeting configuration. The pretargeting configuration itself specifies how these publishers are targeted in PretargetingConfig.publisherTargeting.

| Property | Type | Description |
|----------|------|-------------|
| `publisherIds` | `array<string>` | A list of publisher IDs to target in the pretargeting configuration. These values will be added t... |
| `targetingMode` | `string` | Required. The targeting mode that should be applied to the list of publisher IDs. If are existing... |

### `AddTargetedSitesRequest`

A request to start targeting the provided sites in a specific pretargeting configuration. The pretargeting configuration itself specifies how these sites are targeted in PretargetingConfig.webTargeting.

| Property | Type | Description |
|----------|------|-------------|
| `sites` | `array<string>` | A list of site URLs to target in the pretargeting configuration. These values will be added to th... |
| `targetingMode` | `string` | Required. The targeting mode that should be applied to the list of site URLs. If there are existi... |

### `AdvertiserAndBrand`

Detected advertiser and brand information.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | See https://storage.googleapis.com/adx-rtb-dictionaries/advertisers.txt for the list of possible ... |
| `advertiserName` | `string` | Advertiser name. Can be used to filter the response of the creatives.list method. |
| `brandId` | `string` | Detected brand ID or zero if no brand has been detected. See https://storage.googleapis.com/adx-r... |
| `brandName` | `string` | Brand name. Can be used to filter the response of the creatives.list method. |

### `AppTargeting`

A subset of app inventory to target. Bid requests that match criteria in at least one of the specified dimensions will be sent.

| Property | Type | Description |
|----------|------|-------------|
| `mobileAppCategoryTargeting` | `NumericTargetingDimension` | Lists of included and excluded mobile app categories as defined in https://developers.google.com/... |
| `mobileAppTargeting` | `StringTargetingDimension` | Targeted app IDs. App IDs can refer to those found in an app store or ones that are not published... |

### `BatchApprovePublisherConnectionsRequest`

A request to approve a batch of publisher connections.

| Property | Type | Description |
|----------|------|-------------|
| `names` | `array<string>` | Required. The names of the publishers with which connections will be approved. In the pattern `bi... |

### `BatchApprovePublisherConnectionsResponse`

A response for the request to approve a batch of publisher connections.

| Property | Type | Description |
|----------|------|-------------|
| `publisherConnections` | `array<PublisherConnection>` | The publisher connections that have been approved. |

### `BatchRejectPublisherConnectionsRequest`

A request to reject a batch of publisher connections.

| Property | Type | Description |
|----------|------|-------------|
| `names` | `array<string>` | Required. The names of the publishers with whom connection will be rejected. In the pattern `bidd... |

### `BatchRejectPublisherConnectionsResponse`

A response for the request to reject a batch of publisher connections.

| Property | Type | Description |
|----------|------|-------------|
| `publisherConnections` | `array<PublisherConnection>` | The publisher connections that have been rejected. |

### `Bidder`

Bidder settings.

| Property | Type | Description |
|----------|------|-------------|
| `bypassNonguaranteedDealsPretargeting` | `boolean` | Output only. An option to bypass pretargeting for private auctions and preferred deals. When true... |
| `cookieMatchingNetworkId` | `string` | Output only. The buyer's network ID used for cookie matching. This ID corresponds to the `google_... |
| `cookieMatchingUrl` | `string` | Output only. The base URL used in cookie match requests. Refer to https://developers.google.com/a... |
| `dealsBillingId` | `string` | Output only. The billing ID for the deals pretargeting config. This billing ID is sent on the bid... |
| `name` | `string` | Output only. Name of the bidder resource that must follow the pattern `bidders/{bidderAccountId}`... |

### `Buyer`

RTB Buyer account information.

| Property | Type | Description |
|----------|------|-------------|
| `activeCreativeCount` | `string` | Output only. The number of creatives that this buyer submitted through the API or bid with in the... |
| `bidder` | `string` | Output only. The name of the bidder resource that is responsible for receiving bidding traffic fo... |
| `billingIds` | `array<string>` | Output only. A list of billing IDs associated with this account. These IDs appear on: 1. A bid re... |
| `displayName` | `string` | Output only. The diplay name associated with this buyer account, as visible to sellers. |
| `maximumActiveCreativeCount` | `string` | Output only. The maximum number of active creatives that this buyer can have. |
| `name` | `string` | Output only. Name of the buyer resource that must follow the pattern `buyers/{buyerAccountId}`, w... |

### `CloseUserListRequest`

A request to close a specified user list.

### `Creative`

A creative and its classification data.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Output only. ID of the buyer account that this creative is owned by. Can be used to filter the re... |
| `adChoicesDestinationUrl` | `string` | The link to AdChoices destination page. This is only supported for native ads. |
| `advertiserName` | `string` | The name of the company being advertised in the creative. Can be used to filter the response of t... |
| `agencyId` | `string` | The agency ID for this creative. |
| `apiUpdateTime` | `string` | Output only. The last update timestamp of the creative through the API. |
| `creativeFormat` | `string` | Output only. The format of this creative. Can be used to filter the response of the creatives.lis... |
| `creativeId` | `string` | Buyer-specific creative ID that references this creative in bid responses. This field is Ignored ... |
| `creativeServingDecision` | `CreativeServingDecision` | Output only. Top level status and detected attributes of a creative (for example domain, language... |
| `dealIds` | `array<string>` | Output only. IDs of all of the deals with which this creative has been used in bidding. Can be us... |
| `declaredAttributes` | `array<string>` | All declared attributes for the ads that may be shown from this creative. Can be used to filter t... |
| `declaredClickThroughUrls` | `array<string>` | The set of declared destination URLs for the creative. Can be used to filter the response of the ... |
| `declaredRestrictedCategories` | `array<string>` | All declared restricted categories for the ads that may be shown from this creative. Can be used ... |
| `declaredVendorIds` | `array<integer>` | IDs for the declared ad technology vendors that may be used by this creative. See https://storage... |
| `html` | `HtmlContent` | An HTML creative. |
| `impressionTrackingUrls` | `array<string>` | The set of URLs to be called to record an impression. |
| `name` | `string` | Output only. Name of the creative. Follows the pattern `buyers/{buyer}/creatives/{creative}`, whe... |
| `native` | `NativeContent` | A native creative. |
| `renderUrl` | `string` | Experimental field that can be used during the [FLEDGE Origin Trial](/authorized-buyers/rtb/fledg... |
| `restrictedCategories` | `array<string>` | All restricted categories for the ads that may be shown from this creative. |
| `version` | `integer` | Output only. The version of the creative. Version for a new creative is 1 and it increments durin... |
| `video` | `VideoContent` | A video creative. |

### `CreativeDimensions`

The dimensions of a creative. This applies to only HTML and Native creatives.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `string` | The height of the creative in pixels. |
| `width` | `string` | The width of the creative in pixels. |

### `CreativeServingDecision`

Top level status and detected attributes of a creative.

| Property | Type | Description |
|----------|------|-------------|
| `adTechnologyProviders` | `AdTechnologyProviders` | The detected ad technology providers. |
| `chinaPolicyCompliance` | `PolicyCompliance` | The policy compliance of this creative in China. When approved or disapproved, this applies to bo... |
| `dealsPolicyCompliance` | `PolicyCompliance` | Policy compliance of this creative when bidding on Programmatic Guaranteed and Preferred Deals (o... |
| `detectedAdvertisers` | `array<AdvertiserAndBrand>` | Detected advertisers and brands. |
| `detectedAttributes` | `array<string>` | Publisher-excludable attributes that were detected for this creative. Can be used to filter the r... |
| `detectedCategories` | `array<string>` | Output only. IDs of the detected categories. The taxonomy in which the categories are expressed i... |
| `detectedCategoriesTaxonomy` | `string` | Output only. The taxonomy in which the detected_categories field is expressed. |
| `detectedClickThroughUrls` | `array<string>` | The set of detected destination URLs for the creative. Can be used to filter the response of the ... |
| `detectedDomains` | `array<string>` | The detected domains for this creative. |
| `detectedLanguages` | `array<string>` | The detected languages for this creative. The order is arbitrary. The codes are 2 or 5 characters... |
| `detectedProductCategories` | `array<integer>` | Detected product categories, if any. See the ad-product-categories.txt file in the technical docu... |
| `detectedSensitiveCategories` | `array<integer>` | Detected sensitive categories, if any. Can be used to filter the response of the creatives.list m... |
| `detectedVendorIds` | `array<integer>` | IDs of the ad technology vendors that were detected to be used by this creative. See https://stor... |
| `lastStatusUpdate` | `string` | The last time the creative status was updated. Can be used to filter the response of the creative... |
| `networkPolicyCompliance` | `PolicyCompliance` | Policy compliance of this creative when bidding in open auction, private auction, or auction pack... |
| `platformPolicyCompliance` | `PolicyCompliance` | Policy compliance of this creative when bidding in Open Bidding (outside of Russia and China). Fo... |
| `russiaPolicyCompliance` | `PolicyCompliance` | The policy compliance of this creative in Russia. When approved or disapproved, this applies to b... |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DestinationNotCrawlableEvidence`

Evidence that the creative's destination URL was not crawlable by Google.

| Property | Type | Description |
|----------|------|-------------|
| `crawlTime` | `string` | Approximate time of the crawl. |
| `crawledUrl` | `string` | Destination URL that was attempted to be crawled. |
| `reason` | `string` | Reason of destination not crawlable. |

### `DestinationNotWorkingEvidence`

Evidence of the creative's destination URL not functioning properly or having been incorrectly set up.

| Property | Type | Description |
|----------|------|-------------|
| `dnsError` | `string` | DNS lookup errors. |
| `expandedUrl` | `string` | The full non-working URL. |
| `httpError` | `integer` | HTTP error code (for example, 404 or 5xx) |
| `invalidPage` | `string` | Page was crawled successfully, but was detected as either a page with no content or an error page. |
| `lastCheckTime` | `string` | Approximate time when the ad destination was last checked. |
| `platform` | `string` | Platform of the non-working URL. |
| `redirectionError` | `string` | HTTP redirect chain error. |
| `urlRejected` | `string` | Rejected because of malformed URLs or invalid requests. |

### `DestinationUrlEvidence`

The full landing page URL of the destination.

| Property | Type | Description |
|----------|------|-------------|
| `destinationUrl` | `string` | The full landing page URL of the destination. |

### `DomainCallEvidence`

Number of HTTP calls made by a creative, broken down by domain.

| Property | Type | Description |
|----------|------|-------------|
| `topHttpCallDomains` | `array<DomainCalls>` | Breakdown of the most frequent domains called through HTTP by the creative. |
| `totalHttpCallCount` | `integer` | The total number of HTTP calls made by the creative, including but not limited to the number of c... |

### `DomainCalls`

The number of HTTP calls made to the given domain.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | The domain name. |
| `httpCallCount` | `integer` | Number of HTTP calls made to the domain. |

### `DownloadSizeEvidence`

Total download size and URL-level download size breakdown for resources in a creative.

| Property | Type | Description |
|----------|------|-------------|
| `topUrlDownloadSizeBreakdowns` | `array<UrlDownloadSize>` | Download size broken down by URLs with the top download size. |
| `totalDownloadSizeKb` | `integer` | Total download size (in kilobytes) for all the resources in the creative. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Endpoint`

Bidder endpoint that receives bid requests.

| Property | Type | Description |
|----------|------|-------------|
| `bidProtocol` | `string` | The protocol that the bidder endpoint is using. |
| `maximumQps` | `string` | The maximum number of queries per second allowed to be sent to this server. |
| `name` | `string` | Output only. Name of the endpoint resource that must follow the pattern `bidders/{bidderAccountId... |
| `tradingLocation` | `string` | The trading location that bid requests should be sent from. See https://developers.google.com/aut... |
| `url` | `string` | Output only. The URL that bid requests should be sent to. |

### `GetRemarketingTagResponse`

This has been sunset as of October 2023, and will return an error response if called. For more information, see the release notes: https://developers.google.com/authorized-buyers/apis/relnotes#real-time-bidding-api Response for a request to get remarketing tag.

| Property | Type | Description |
|----------|------|-------------|
| `snippet` | `string` | An HTML tag that can be placed on the advertiser's page to add users to a user list. For more inf... |

### `HtmlContent`

HTML content for a creative.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | The height of the HTML snippet in pixels. Can be used to filter the response of the creatives.lis... |
| `snippet` | `string` | The HTML snippet that displays the ad when inserted in the web page. |
| `width` | `integer` | The width of the HTML snippet in pixels. Can be used to filter the response of the creatives.list... |

### `HttpCallEvidence`

HTTP calls made by a creative that resulted in policy violations.

| Property | Type | Description |
|----------|------|-------------|
| `urls` | `array<string>` | URLs of HTTP calls made by the creative. |

### `HttpCookieEvidence`

Evidence for HTTP cookie-related policy violations.

| Property | Type | Description |
|----------|------|-------------|
| `cookieNames` | `array<string>` | Names of cookies that violate Google policies. For TOO_MANY_COOKIES policy, this will be the cook... |
| `maxCookieCount` | `integer` | The largest number of cookies set by a creative. If this field is set, cookie_names above will be... |

### `Image`

An image resource. You may provide a larger image than was requested, so long as the aspect ratio is preserved.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | Image height in pixels. |
| `url` | `string` | The URL of the image. |
| `width` | `integer` | Image width in pixels. |

### `ListBiddersResponse`

A response containing bidders.

| Property | Type | Description |
|----------|------|-------------|
| `bidders` | `array<Bidder>` | List of bidders. |
| `nextPageToken` | `string` | A token which can be passed to a subsequent call to the `ListBidders` method to retrieve the next... |

### `ListBuyersResponse`

A response containing buyer account information.

| Property | Type | Description |
|----------|------|-------------|
| `buyers` | `array<Buyer>` | List of buyers. |
| `nextPageToken` | `string` | A token which can be passed to a subsequent call to the `ListBuyers` method to retrieve the next ... |

### `ListCreativesResponse`

A response for listing creatives.

| Property | Type | Description |
|----------|------|-------------|
| `creatives` | `array<Creative>` | The list of creatives. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListCreativesRequest.pageTok... |

### `ListEndpointsResponse`

A response containing bidder endpoints.

| Property | Type | Description |
|----------|------|-------------|
| `endpoints` | `array<Endpoint>` | List of bidder endpoints. |
| `nextPageToken` | `string` | A token which can be passed to a subsequent call to the `ListEndpoints` method to retrieve the ne... |

### `ListPretargetingConfigsResponse`

A response containing pretargeting configurations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token which can be passed to a subsequent call to the `ListPretargetingConfigs` method to retri... |
| `pretargetingConfigs` | `array<PretargetingConfig>` | List of pretargeting configurations. |

### `ListPublisherConnectionsResponse`

A response to a request for listing publisher connections.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListPublisherConnectionsRequ... |
| `publisherConnections` | `array<PublisherConnection>` | The list of publisher connections. |

### `ListUserListsResponse`

The list user list response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The continuation page token to send back to the server in a subsequent request. Due to a currentl... |
| `userLists` | `array<UserList>` | List of user lists from the search. |

### `MediaFile`

Information about each media file in the VAST.

| Property | Type | Description |
|----------|------|-------------|
| `bitrate` | `string` | Bitrate of the video file, in Kbps. Can be used to filter the response of the creatives.list method. |
| `mimeType` | `string` | The MIME type of this media file. Can be used to filter the response of the creatives.list method. |

### `NativeContent`

Native content for a creative.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserName` | `string` | The name of the advertiser or sponsor, to be displayed in the ad creative. |
| `appIcon` | `Image` | The app icon, for app download ads. |
| `body` | `string` | A long description of the ad. |
| `callToAction` | `string` | A label for the button that the user is supposed to click. |
| `clickLinkUrl` | `string` | The URL that the browser/SDK will load when the user clicks the ad. |
| `clickTrackingUrl` | `string` | The URL to use for click tracking. |
| `headline` | `string` | A short title for the ad. |
| `image` | `Image` | A large image. |
| `logo` | `Image` | A smaller image, for the advertiser's logo. |
| `priceDisplayText` | `string` | The price of the promoted app including currency info. |
| `starRating` | `number` | The app rating in the app store. Must be in the range [0-5]. |
| `videoUrl` | `string` | The URL to fetch a native video ad. |
| `videoVastXml` | `string` | The contents of a VAST document for a native video ad. |

### `NumericTargetingDimension`

Generic targeting used for targeting dimensions that contain a list of included and excluded numeric IDs used in app, user list, geo, and vertical id targeting.

| Property | Type | Description |
|----------|------|-------------|
| `excludedIds` | `array<string>` | The IDs excluded in a configuration. |
| `includedIds` | `array<string>` | The IDs included in a configuration. |

### `OpenUserListRequest`

A request to open a specified user list.

### `PolicyCompliance`

Policy compliance of the creative for a transaction type or a region.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `string` | Serving status for the given transaction type (for example, open auction, deals) or region (for e... |
| `topics` | `array<PolicyTopicEntry>` | Topics related to the policy compliance for this transaction type (for example, open auction, dea... |

### `PolicyTopicEntry`

Each policy topic entry will represent a violation of a policy topic for a creative, with the policy topic information and optional evidence for the policy violation.

| Property | Type | Description |
|----------|------|-------------|
| `evidences` | `array<PolicyTopicEvidence>` | Pieces of evidence associated with this policy topic entry. |
| `helpCenterUrl` | `string` | URL of the help center article describing this policy topic. |
| `missingCertificate` | `boolean` | Whether or not the policy topic is missing a certificate. Some policy topics require a certificat... |
| `policyTopic` | `string` | Policy topic this entry refers to. For example, "ALCOHOL", "TRADEMARKS_IN_AD_TEXT", or "DESTINATI... |

### `PolicyTopicEvidence`

Evidence associated with a policy topic entry.

| Property | Type | Description |
|----------|------|-------------|
| `destinationNotCrawlable` | `DestinationNotCrawlableEvidence` | The creative's destination URL was not crawlable by Google. |
| `destinationNotWorking` | `DestinationNotWorkingEvidence` | The creative's destination URL did not function properly or was incorrectly set up. |
| `destinationUrl` | `DestinationUrlEvidence` | URL of the actual landing page. |
| `domainCall` | `DomainCallEvidence` | Number of HTTP calls made by the creative, broken down by domain. |
| `downloadSize` | `DownloadSizeEvidence` | Total download size and URL-level download size breakdown for resources in a creative. |
| `httpCall` | `HttpCallEvidence` | HTTP calls made by the creative that resulted in policy violations. |
| `httpCookie` | `HttpCookieEvidence` | Evidence for HTTP cookie-related policy violations. |

### `PretargetingConfig`

Pretargeting configuration: a set of targeting dimensions applied at the pretargeting stage of the RTB funnel. These control which inventory a bidder will receive bid requests for.

| Property | Type | Description |
|----------|------|-------------|
| `allowedUserTargetingModes` | `array<string>` | Targeting modes included by this configuration. A bid request must allow all the specified target... |
| `appTargeting` | `AppTargeting` | Targeting on a subset of app inventory. If APP is listed in targeted_environments, the specified ... |
| `billingId` | `string` | Output only. The identifier that corresponds to this pretargeting configuration that helps buyers... |
| `displayName` | `string` | The diplay name associated with this configuration. This name must be unique among all the pretar... |
| `excludedContentLabelIds` | `array<string>` | The sensitive content category label IDs excluded in this configuration. Bid requests for invento... |
| `geoTargeting` | `NumericTargetingDimension` | The geos included or excluded in this configuration defined in https://storage.googleapis.com/adx... |
| `includedCreativeDimensions` | `array<CreativeDimensions>` | Creative dimensions included by this configuration. Only bid requests eligible for at least one o... |
| `includedEnvironments` | `array<string>` | Environments that are being included. Bid requests will not be sent for a given environment if it... |
| `includedFormats` | `array<string>` | Creative formats included by this configuration. Only bid requests eligible for at least one of t... |
| `includedLanguages` | `array<string>` | The languages included in this configuration, represented by their language code. See https://dev... |
| `includedMobileOperatingSystemIds` | `array<string>` | The mobile operating systems included in this configuration as defined in https://storage.googlea... |
| `includedPlatforms` | `array<string>` | The platforms included by this configration. Bid requests for devices with the specified platform... |
| `includedUserIdTypes` | `array<string>` | User identifier types included in this configuration. At least one of the user identifier types s... |
| `interstitialTargeting` | `string` | The interstitial targeting specified for this configuration. The unset value will allow bid reque... |
| `invalidGeoIds` | `array<string>` | Output only. Existing included or excluded geos that are invalid. Previously targeted geos may be... |
| `maximumQps` | `string` | The maximum QPS threshold for this configuration. The bidder should receive no more than this num... |
| `minimumViewabilityDecile` | `integer` | The targeted minimum viewability decile, ranging in values [0, 10]. A value of 5 means that the c... |
| `name` | `string` | Output only. Name of the pretargeting configuration that must follow the pattern `bidders/{bidder... |
| `publisherTargeting` | `StringTargetingDimension` | Targeting on a subset of publisher inventory. Publishers can either be targeted positively (bid r... |
| `state` | `string` | Output only. The state of this pretargeting configuration. |
| `userListTargeting` | `NumericTargetingDimension` | The remarketing lists included or excluded in this configuration as defined in UserList. |
| `verticalTargeting` | `NumericTargetingDimension` | The verticals included or excluded in this configuration as defined in https://developers.google.... |
| `webTargeting` | `StringTargetingDimension` | Targeting on a subset of site inventory. If WEB is listed in included_environments, the specified... |

### `PublisherConnection`

An Open Bidding exchange's connection to a publisher. This is initiated by the publisher for the bidder to review. If approved by the bidder, this means that the bidder agrees to receive bid requests from the publisher.

| Property | Type | Description |
|----------|------|-------------|
| `biddingState` | `string` | Whether the publisher has been approved by the bidder. |
| `createTime` | `string` | Output only. The time at which the publisher initiated a connection with the bidder (irrespective... |
| `displayName` | `string` | Output only. Publisher display name. |
| `name` | `string` | Output only. Name of the publisher connection. This follows the pattern `bidders/{bidder}/publish... |
| `publisherPlatform` | `string` | Output only. Whether the publisher is an Ad Manager or AdMob publisher. |

### `RemoveTargetedAppsRequest`

A request to stop targeting the provided apps in a specific pretargeting configuration. The pretargeting configuration itself specifies how these apps are targeted. in PretargetingConfig.appTargeting.mobileAppTargeting.

| Property | Type | Description |
|----------|------|-------------|
| `appIds` | `array<string>` | A list of app IDs to stop targeting in the pretargeting configuration. These values will be remov... |

### `RemoveTargetedPublishersRequest`

A request to stop targeting publishers in a specific configuration. The pretargeting configuration itself specifies how these publishers are targeted in PretargetingConfig.publisherTargeting.

| Property | Type | Description |
|----------|------|-------------|
| `publisherIds` | `array<string>` | A list of publisher IDs to stop targeting in the pretargeting configuration. These values will be... |

### `RemoveTargetedSitesRequest`

A request to stop targeting sites in a specific pretargeting configuration. The pretargeting configuration itself specifies how these sites are targeted in PretargetingConfig.webTargeting.

| Property | Type | Description |
|----------|------|-------------|
| `sites` | `array<string>` | A list of site URLs to stop targeting in the pretargeting configuration. These values will be rem... |

### `StringTargetingDimension`

Generic targeting with string values used in app, website and publisher targeting.

| Property | Type | Description |
|----------|------|-------------|
| `targetingMode` | `string` | How the items in this list should be targeted. |
| `values` | `array<string>` | The values specified. |

### `SuspendPretargetingConfigRequest`

A request to suspend a pretargeting configuration. Sets the configuration's state to SUSPENDED.

### `UrlDownloadSize`

The URL-level breakdown for the download size.

| Property | Type | Description |
|----------|------|-------------|
| `downloadSizeKb` | `integer` | Download size of the URL in kilobytes. |
| `normalizedUrl` | `string` | The normalized URL with query parameters and fragment removed. |

### `UrlRestriction`

Deprecated. This will be removed in October 2023. For more information, see the release notes: https://developers.google.com/authorized-buyers/apis/relnotes#real-time-bidding-api Represents the URL restriction (for the URL captured by the pixel callback) for a user list.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `Date` | End date (if specified) of the URL restriction. End date should be later than the start date for ... |
| `restrictionType` | `string` | The restriction type for the specified URL. |
| `startDate` | `Date` | Start date (if specified) of the URL restriction. |
| `url` | `string` | Required. The URL to use for applying the restriction on the user list. |

### `UserList`

Represents an Authorized Buyers user list. Authorized Buyers can create/update/list user lists. Once a user list is created in the system, Authorized Buyers can add users to the user list using the bulk uploader API. Alternatively, users can be added by hosting a tag on the advertiser's page.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description for the user list. |
| `displayName` | `string` | Required. Display name of the user list. This must be unique across all user lists for a given ac... |
| `membershipDurationDays` | `string` | Required. The number of days a user's cookie stays on the user list. The field must be between 0 ... |
| `name` | `string` | Output only. Name of the user list that must follow the pattern `buyers/{buyer}/userLists/{user_l... |
| `status` | `string` | Output only. The status of the user list. A new user list starts out as open. |
| `urlRestriction` | `UrlRestriction` | Required. Deprecated. This will be removed in October 2023. For more information, see the release... |

### `VideoContent`

Video content for a creative.

| Property | Type | Description |
|----------|------|-------------|
| `videoMetadata` | `VideoMetadata` | Output only. Video metadata. |
| `videoUrl` | `string` | The URL to fetch a video ad. The URL should return an XML response that conforms to the VAST 2.0,... |
| `videoVastXml` | `string` | The contents of a VAST document for a video ad. This document should conform to the VAST 2.0, 3.0... |

### `VideoMetadata`

Video metadata for a creative.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | The duration of the ad. Can be used to filter the response of the creatives.list method. |
| `isValidVast` | `boolean` | Is this a valid VAST ad? Can be used to filter the response of the creatives.list method. |
| `isVpaid` | `boolean` | Is this a VPAID ad? Can be used to filter the response of the creatives.list method. |
| `mediaFiles` | `array<MediaFile>` | The list of all media files declared in the VAST. If there are multiple VASTs in a wrapper chain,... |
| `skipOffset` | `string` | The minimum duration that the user has to watch before being able to skip this ad. If the field i... |
| `vastVersion` | `string` | The maximum VAST version across all wrapped VAST documents. Can be used to filter the response of... |

### `WatchCreativesRequest`

A request to receive push notifications when any of the creatives belonging to the bidder changes status.

### `WatchCreativesResponse`

A response for the request to receive push notification when a bidder's creatives change status.

| Property | Type | Description |
|----------|------|-------------|
| `subscription` | `string` | The Pub/Sub subscription that can be used to pull creative status notifications. This would be of... |
| `topic` | `string` | The Pub/Sub topic that will be used to publish creative serving status notifications. This would ... |

