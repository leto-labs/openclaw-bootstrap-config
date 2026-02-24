# Ad Exchange Buyer API II - API Reference

**Version**: `v2beta1` | **Methods**: 78 | **Schemas**: 108

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `adexchangebuyer2.accounts.creatives.create` | POST | `v2beta1/accounts/{accountId}/creatives` | Creates a creative. |
| `adexchangebuyer2.accounts.creatives.update` | PUT | `v2beta1/accounts/{accountId}/creatives/{creativeId}` | Updates a creative. |
| `adexchangebuyer2.accounts.creatives.get` | GET | `v2beta1/accounts/{accountId}/creatives/{creativeId}` | Gets a creative. |
| `adexchangebuyer2.accounts.creatives.list` | GET | `v2beta1/accounts/{accountId}/creatives` | Lists creatives. |
| `adexchangebuyer2.accounts.creatives.watch` | POST | `v2beta1/accounts/{accountId}/creatives/{creativeId}:watch` | Watches a creative. Will result in push notifications being sent to the topic when the creative c... |
| `adexchangebuyer2.accounts.creatives.stopWatching` | POST | `v2beta1/accounts/{accountId}/creatives/{creativeId}:stopWatching` | Stops watching a creative. Will stop push notifications being sent to the topics when the creativ... |
| `adexchangebuyer2.accounts.creatives.dealAssociations.add` | POST | `v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations:add` | Associate an existing deal with a creative. |
| `adexchangebuyer2.accounts.creatives.dealAssociations.remove` | POST | `v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations:remove` | Remove the association between a deal and a creative. |
| `adexchangebuyer2.accounts.creatives.dealAssociations.list` | GET | `v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations` | List all creative-deal associations. |
| `adexchangebuyer2.accounts.clients.get` | GET | `v2beta1/accounts/{accountId}/clients/{clientAccountId}` | Gets a client buyer with a given client account ID. |
| `adexchangebuyer2.accounts.clients.list` | GET | `v2beta1/accounts/{accountId}/clients` | Lists all the clients for the current sponsor buyer. |
| `adexchangebuyer2.accounts.clients.create` | POST | `v2beta1/accounts/{accountId}/clients` | Creates a new client buyer. |
| `adexchangebuyer2.accounts.clients.update` | PUT | `v2beta1/accounts/{accountId}/clients/{clientAccountId}` | Updates an existing client buyer. |
| `adexchangebuyer2.accounts.clients.users.list` | GET | `v2beta1/accounts/{accountId}/clients/{clientAccountId}/users` | Lists all the known client users for a specified sponsor buyer account ID. |
| `adexchangebuyer2.accounts.clients.users.update` | PUT | `v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}` | Updates an existing client user. Only the user status can be changed on update. |
| `adexchangebuyer2.accounts.clients.users.get` | GET | `v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}` | Retrieves an existing client user. |
| `adexchangebuyer2.accounts.clients.invitations.create` | POST | `v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations` | Creates and sends out an email invitation to access an Ad Exchange client buyer account. |
| `adexchangebuyer2.accounts.clients.invitations.get` | GET | `v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations/{invitationId}` | Retrieves an existing client user invitation. |
| `adexchangebuyer2.accounts.clients.invitations.list` | GET | `v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations` | Lists all the client users invitations for a client with a given account ID. |
| `adexchangebuyer2.accounts.proposals.get` | GET | `v2beta1/accounts/{accountId}/proposals/{proposalId}` | Gets a proposal given its ID. The proposal is returned at its head revision. |
| `adexchangebuyer2.accounts.proposals.create` | POST | `v2beta1/accounts/{accountId}/proposals` | Create the given proposal. Each created proposal and any deals it contains are assigned a unique ... |
| `adexchangebuyer2.accounts.proposals.update` | PUT | `v2beta1/accounts/{accountId}/proposals/{proposalId}` | Update the given proposal at the client known revision number. If the server revision has advance... |
| `adexchangebuyer2.accounts.proposals.list` | GET | `v2beta1/accounts/{accountId}/proposals` | List proposals. A filter expression (PQL query) may be specified to filter the results. To retrie... |
| `adexchangebuyer2.accounts.proposals.addNote` | POST | `v2beta1/accounts/{accountId}/proposals/{proposalId}:addNote` | Create a new note and attach it to the proposal. The note is assigned a unique ID by the server. ... |
| `adexchangebuyer2.accounts.proposals.cancelNegotiation` | POST | `v2beta1/accounts/{accountId}/proposals/{proposalId}:cancelNegotiation` | Cancel an ongoing negotiation on a proposal. This does not cancel or end serving for the deals if... |
| `adexchangebuyer2.accounts.proposals.accept` | POST | `v2beta1/accounts/{accountId}/proposals/{proposalId}:accept` | Mark the proposal as accepted at the given revision number. If the number does not match the serv... |
| `adexchangebuyer2.accounts.proposals.completeSetup` | POST | `v2beta1/accounts/{accountId}/proposals/{proposalId}:completeSetup` | You can opt-in to manually update proposals to indicate that setup is complete. By default, propo... |
| `adexchangebuyer2.accounts.proposals.pause` | POST | `v2beta1/accounts/{accountId}/proposals/{proposalId}:pause` | Update the given proposal to pause serving. This method will set the `DealServingMetadata.DealPau... |
| `adexchangebuyer2.accounts.proposals.resume` | POST | `v2beta1/accounts/{accountId}/proposals/{proposalId}:resume` | Update the given proposal to resume serving. This method will set the `DealServingMetadata.DealPa... |
| `adexchangebuyer2.accounts.finalizedProposals.list` | GET | `v2beta1/accounts/{accountId}/finalizedProposals` | List finalized proposals, regardless if a proposal is being renegotiated. A filter expression (PQ... |
| `adexchangebuyer2.accounts.finalizedProposals.pause` | POST | `v2beta1/accounts/{accountId}/finalizedProposals/{proposalId}:pause` | Update given deals to pause serving. This method will set the `DealServingMetadata.DealPauseStatu... |
| `adexchangebuyer2.accounts.finalizedProposals.resume` | POST | `v2beta1/accounts/{accountId}/finalizedProposals/{proposalId}:resume` | Update given deals to resume serving. This method will set the `DealServingMetadata.DealPauseStat... |
| `adexchangebuyer2.accounts.products.get` | GET | `v2beta1/accounts/{accountId}/products/{productId}` | Gets the requested product by ID. |
| `adexchangebuyer2.accounts.products.list` | GET | `v2beta1/accounts/{accountId}/products` | List all products visible to the buyer (optionally filtered by the specified PQL query). |
| `adexchangebuyer2.accounts.publisherProfiles.get` | GET | `v2beta1/accounts/{accountId}/publisherProfiles/{publisherProfileId}` | Gets the requested publisher profile by id. |
| `adexchangebuyer2.accounts.publisherProfiles.list` | GET | `v2beta1/accounts/{accountId}/publisherProfiles` | List all publisher profiles visible to the buyer |
| `adexchangebuyer2.bidders.accounts.filterSets.create` | POST | `v2beta1/{+ownerName}/filterSets` | Creates the specified filter set for the account with the given account ID. |
| `adexchangebuyer2.bidders.accounts.filterSets.get` | GET | `v2beta1/{+name}` | Retrieves the requested filter set for the account with the given account ID. |
| `adexchangebuyer2.bidders.accounts.filterSets.list` | GET | `v2beta1/{+ownerName}/filterSets` | Lists all filter sets for the account with the given account ID. |
| `adexchangebuyer2.bidders.accounts.filterSets.delete` | DELETE | `v2beta1/{+name}` | Deletes the requested filter set from the account with the given account ID. |
| `adexchangebuyer2.bidders.accounts.filterSets.impressionMetrics.list` | GET | `v2beta1/{+filterSetName}/impressionMetrics` | Lists all metrics that are measured in terms of number of impressions. |
| `adexchangebuyer2.bidders.accounts.filterSets.bidMetrics.list` | GET | `v2beta1/{+filterSetName}/bidMetrics` | Lists all metrics that are measured in terms of number of bids. |
| `adexchangebuyer2.bidders.accounts.filterSets.filteredBidRequests.list` | GET | `v2beta1/{+filterSetName}/filteredBidRequests` | List all reasons that caused a bid request not to be sent for an impression, with the number of b... |
| `adexchangebuyer2.bidders.accounts.filterSets.bidResponseErrors.list` | GET | `v2beta1/{+filterSetName}/bidResponseErrors` | List all errors that occurred in bid responses, with the number of bid responses affected for eac... |
| `adexchangebuyer2.bidders.accounts.filterSets.bidResponsesWithoutBids.list` | GET | `v2beta1/{+filterSetName}/bidResponsesWithoutBids` | List all reasons for which bid responses were considered to have no applicable bids, with the num... |
| `adexchangebuyer2.bidders.accounts.filterSets.filteredBids.list` | GET | `v2beta1/{+filterSetName}/filteredBids` | List all reasons for which bids were filtered, with the number of bids filtered for each reason. |
| `adexchangebuyer2.bidders.accounts.filterSets.filteredBids.details.list` | GET | `v2beta1/{+filterSetName}/filteredBids/{creativeStatusId}/details` | List all details associated with a specific reason for which bids were filtered, with the number ... |
| `adexchangebuyer2.bidders.accounts.filterSets.filteredBids.creatives.list` | GET | `v2beta1/{+filterSetName}/filteredBids/{creativeStatusId}/creatives` | List all creatives associated with a specific reason for which bids were filtered, with the numbe... |
| `adexchangebuyer2.bidders.accounts.filterSets.losingBids.list` | GET | `v2beta1/{+filterSetName}/losingBids` | List all reasons for which bids lost in the auction, with the number of bids that lost for each r... |
| `adexchangebuyer2.bidders.accounts.filterSets.nonBillableWinningBids.list` | GET | `v2beta1/{+filterSetName}/nonBillableWinningBids` | List all reasons for which winning bids were not billable, with the number of bids not billed for... |
| `adexchangebuyer2.bidders.filterSets.create` | POST | `v2beta1/{+ownerName}/filterSets` | Creates the specified filter set for the account with the given account ID. |
| `adexchangebuyer2.bidders.filterSets.get` | GET | `v2beta1/{+name}` | Retrieves the requested filter set for the account with the given account ID. |
| `adexchangebuyer2.bidders.filterSets.list` | GET | `v2beta1/{+ownerName}/filterSets` | Lists all filter sets for the account with the given account ID. |
| `adexchangebuyer2.bidders.filterSets.delete` | DELETE | `v2beta1/{+name}` | Deletes the requested filter set from the account with the given account ID. |
| `adexchangebuyer2.bidders.filterSets.impressionMetrics.list` | GET | `v2beta1/{+filterSetName}/impressionMetrics` | Lists all metrics that are measured in terms of number of impressions. |
| `adexchangebuyer2.bidders.filterSets.bidMetrics.list` | GET | `v2beta1/{+filterSetName}/bidMetrics` | Lists all metrics that are measured in terms of number of bids. |
| `adexchangebuyer2.bidders.filterSets.filteredBidRequests.list` | GET | `v2beta1/{+filterSetName}/filteredBidRequests` | List all reasons that caused a bid request not to be sent for an impression, with the number of b... |
| `adexchangebuyer2.bidders.filterSets.bidResponseErrors.list` | GET | `v2beta1/{+filterSetName}/bidResponseErrors` | List all errors that occurred in bid responses, with the number of bid responses affected for eac... |
| `adexchangebuyer2.bidders.filterSets.bidResponsesWithoutBids.list` | GET | `v2beta1/{+filterSetName}/bidResponsesWithoutBids` | List all reasons for which bid responses were considered to have no applicable bids, with the num... |
| `adexchangebuyer2.bidders.filterSets.filteredBids.list` | GET | `v2beta1/{+filterSetName}/filteredBids` | List all reasons for which bids were filtered, with the number of bids filtered for each reason. |
| `adexchangebuyer2.bidders.filterSets.filteredBids.details.list` | GET | `v2beta1/{+filterSetName}/filteredBids/{creativeStatusId}/details` | List all details associated with a specific reason for which bids were filtered, with the number ... |
| `adexchangebuyer2.bidders.filterSets.filteredBids.creatives.list` | GET | `v2beta1/{+filterSetName}/filteredBids/{creativeStatusId}/creatives` | List all creatives associated with a specific reason for which bids were filtered, with the numbe... |
| `adexchangebuyer2.bidders.filterSets.losingBids.list` | GET | `v2beta1/{+filterSetName}/losingBids` | List all reasons for which bids lost in the auction, with the number of bids that lost for each r... |
| `adexchangebuyer2.bidders.filterSets.nonBillableWinningBids.list` | GET | `v2beta1/{+filterSetName}/nonBillableWinningBids` | List all reasons for which winning bids were not billable, with the number of bids not billed for... |
| `adexchangebuyer2.buyers.filterSets.create` | POST | `v2beta1/{+ownerName}/filterSets` | Creates the specified filter set for the account with the given account ID. |
| `adexchangebuyer2.buyers.filterSets.get` | GET | `v2beta1/{+name}` | Retrieves the requested filter set for the account with the given account ID. |
| `adexchangebuyer2.buyers.filterSets.list` | GET | `v2beta1/{+ownerName}/filterSets` | Lists all filter sets for the account with the given account ID. |
| `adexchangebuyer2.buyers.filterSets.delete` | DELETE | `v2beta1/{+name}` | Deletes the requested filter set from the account with the given account ID. |
| `adexchangebuyer2.buyers.filterSets.impressionMetrics.list` | GET | `v2beta1/{+filterSetName}/impressionMetrics` | Lists all metrics that are measured in terms of number of impressions. |
| `adexchangebuyer2.buyers.filterSets.bidMetrics.list` | GET | `v2beta1/{+filterSetName}/bidMetrics` | Lists all metrics that are measured in terms of number of bids. |
| `adexchangebuyer2.buyers.filterSets.filteredBidRequests.list` | GET | `v2beta1/{+filterSetName}/filteredBidRequests` | List all reasons that caused a bid request not to be sent for an impression, with the number of b... |
| `adexchangebuyer2.buyers.filterSets.bidResponseErrors.list` | GET | `v2beta1/{+filterSetName}/bidResponseErrors` | List all errors that occurred in bid responses, with the number of bid responses affected for eac... |
| `adexchangebuyer2.buyers.filterSets.bidResponsesWithoutBids.list` | GET | `v2beta1/{+filterSetName}/bidResponsesWithoutBids` | List all reasons for which bid responses were considered to have no applicable bids, with the num... |
| `adexchangebuyer2.buyers.filterSets.filteredBids.list` | GET | `v2beta1/{+filterSetName}/filteredBids` | List all reasons for which bids were filtered, with the number of bids filtered for each reason. |
| `adexchangebuyer2.buyers.filterSets.filteredBids.details.list` | GET | `v2beta1/{+filterSetName}/filteredBids/{creativeStatusId}/details` | List all details associated with a specific reason for which bids were filtered, with the number ... |
| `adexchangebuyer2.buyers.filterSets.filteredBids.creatives.list` | GET | `v2beta1/{+filterSetName}/filteredBids/{creativeStatusId}/creatives` | List all creatives associated with a specific reason for which bids were filtered, with the numbe... |
| `adexchangebuyer2.buyers.filterSets.losingBids.list` | GET | `v2beta1/{+filterSetName}/losingBids` | List all reasons for which bids lost in the auction, with the number of bids that lost for each r... |
| `adexchangebuyer2.buyers.filterSets.nonBillableWinningBids.list` | GET | `v2beta1/{+filterSetName}/nonBillableWinningBids` | List all reasons for which winning bids were not billable, with the number of bids not billed for... |

### `adexchangebuyer2.accounts.creatives.create`

**POST** `v2beta1/accounts/{accountId}/creatives`

Creates a creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account that this creative belongs to. Can be used to filter the response of the creatives.list method. |
| `duplicateIdMode` | `string` | query | No | Indicates if multiple creatives can share an ID or not. Default is NO_DUPLICATES (one ID per creative). |

**Request body**: `Creative`

**Response**: `Creative`

```typescript
const res = await adexchangebuyer2.creatives.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.creatives.update`

**PUT** `v2beta1/accounts/{accountId}/creatives/{creativeId}`

Updates a creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account that this creative belongs to. Can be used to filter the response of the creatives.list method. |
| `creativeId` | `string` | path | Yes | The buyer-defined creative ID of this creative. Can be used to filter the response of the creatives.list method. |

**Request body**: `Creative`

**Response**: `Creative`

```typescript
const res = await adexchangebuyer2.creatives.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.creatives.get`

**GET** `v2beta1/accounts/{accountId}/creatives/{creativeId}`

Gets a creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account the creative belongs to. |
| `creativeId` | `string` | path | Yes | The ID of the creative to retrieve. |

**Response**: `Creative`

```typescript
const res = await adexchangebuyer2.creatives.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.creatives.list`

**GET** `v2beta1/accounts/{accountId}/creatives`

Lists creatives.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account to list the creatives from. Specify "-" to list all creatives the current user has access to. |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer creatives than requested (due to timeout constraint) even if more ar... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListCreativesResponse... |
| `query` | `string` | query | No | An optional query string to filter creatives. If no filter is specified, all active creatives will be returned. Suppo... |

**Response**: `ListCreativesResponse`

```typescript
const res = await adexchangebuyer2.creatives.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.creatives.watch`

**POST** `v2beta1/accounts/{accountId}/creatives/{creativeId}:watch`

Watches a creative. Will result in push notifications being sent to the topic when the creative changes status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account of the creative to watch. |
| `creativeId` | `string` | path | Yes | The creative ID to watch for status changes. Specify "-" to watch all creatives under the above account. If both crea... |

**Request body**: `WatchCreativeRequest`

**Response**: `Empty`

```typescript
const res = await adexchangebuyer2.creatives.watch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.creatives.stopWatching`

**POST** `v2beta1/accounts/{accountId}/creatives/{creativeId}:stopWatching`

Stops watching a creative. Will stop push notifications being sent to the topics when the creative changes status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account of the creative to stop notifications for. |
| `creativeId` | `string` | path | Yes | The creative ID of the creative to stop notifications for. Specify "-" to specify stopping account level notifications. |

**Request body**: `StopWatchingCreativeRequest`

**Response**: `Empty`

```typescript
const res = await adexchangebuyer2.creatives.stopWatching({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.creatives.dealAssociations.add`

**POST** `v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations:add`

Associate an existing deal with a creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account the creative belongs to. |
| `creativeId` | `string` | path | Yes | The ID of the creative associated with the deal. |

**Request body**: `AddDealAssociationRequest`

**Response**: `Empty`

```typescript
const res = await adexchangebuyer2.dealAssociations.add({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.creatives.dealAssociations.remove`

**POST** `v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations:remove`

Remove the association between a deal and a creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account the creative belongs to. |
| `creativeId` | `string` | path | Yes | The ID of the creative associated with the deal. |

**Request body**: `RemoveDealAssociationRequest`

**Response**: `Empty`

```typescript
const res = await adexchangebuyer2.dealAssociations.remove({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.creatives.dealAssociations.list`

**GET** `v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations`

List all creative-deal associations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account to list the associations from. Specify "-" to list all creatives the current user has access to. |
| `creativeId` | `string` | path | Yes | The creative ID to list the associations from. Specify "-" to list all creatives under the above account. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer associations than requested. If unspecified, server will pick an appropr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListDealAssociationsR... |
| `query` | `string` | query | No | An optional query string to filter deal associations. If no filter is specified, all associations will be returned. S... |

**Response**: `ListDealAssociationsResponse`

```typescript
const res = await adexchangebuyer2.dealAssociations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.clients.get`

**GET** `v2beta1/accounts/{accountId}/clients/{clientAccountId}`

Gets a client buyer with a given client account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Numerical account ID of the client's sponsor buyer. (required) |
| `clientAccountId` | `string` | path | Yes | Numerical account ID of the client buyer to retrieve. (required) |

**Response**: `Client`

```typescript
const res = await adexchangebuyer2.clients.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.clients.list`

**GET** `v2beta1/accounts/{accountId}/clients`

Lists all the clients for the current sponsor buyer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Unique numerical account ID of the sponsor buyer to list the clients for. |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer clients than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListClientsResponse.n... |
| `partnerClientId` | `string` | query | No | Optional unique identifier (from the standpoint of an Ad Exchange sponsor buyer partner) of the client to return. If ... |

**Response**: `ListClientsResponse`

```typescript
const res = await adexchangebuyer2.clients.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.clients.create`

**POST** `v2beta1/accounts/{accountId}/clients`

Creates a new client buyer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Unique numerical account ID for the buyer of which the client buyer is a customer; the sponsor buyer to create a clie... |

**Request body**: `Client`

**Response**: `Client`

```typescript
const res = await adexchangebuyer2.clients.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.clients.update`

**PUT** `v2beta1/accounts/{accountId}/clients/{clientAccountId}`

Updates an existing client buyer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Unique numerical account ID for the buyer of which the client buyer is a customer; the sponsor buyer to update a clie... |
| `clientAccountId` | `string` | path | Yes | Unique numerical account ID of the client to update. (required) |

**Request body**: `Client`

**Response**: `Client`

```typescript
const res = await adexchangebuyer2.clients.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.clients.users.list`

**GET** `v2beta1/accounts/{accountId}/clients/{clientAccountId}/users`

Lists all the known client users for a specified sponsor buyer account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Numerical account ID of the sponsor buyer of the client to list users for. (required) |
| `clientAccountId` | `string` | path | Yes | The account ID of the client buyer to list users for. (required) You must specify either a string representation of a... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer clients than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListClientUsersRespon... |

**Response**: `ListClientUsersResponse`

```typescript
const res = await adexchangebuyer2.users.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.clients.users.update`

**PUT** `v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}`

Updates an existing client user. Only the user status can be changed on update.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Numerical account ID of the client's sponsor buyer. (required) |
| `clientAccountId` | `string` | path | Yes | Numerical account ID of the client buyer that the user to be retrieved is associated with. (required) |
| `userId` | `string` | path | Yes | Numerical identifier of the user to retrieve. (required) |

**Request body**: `ClientUser`

**Response**: `ClientUser`

```typescript
const res = await adexchangebuyer2.users.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.clients.users.get`

**GET** `v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}`

Retrieves an existing client user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Numerical account ID of the client's sponsor buyer. (required) |
| `clientAccountId` | `string` | path | Yes | Numerical account ID of the client buyer that the user to be retrieved is associated with. (required) |
| `userId` | `string` | path | Yes | Numerical identifier of the user to retrieve. (required) |

**Response**: `ClientUser`

```typescript
const res = await adexchangebuyer2.users.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.clients.invitations.create`

**POST** `v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations`

Creates and sends out an email invitation to access an Ad Exchange client buyer account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Numerical account ID of the client's sponsor buyer. (required) |
| `clientAccountId` | `string` | path | Yes | Numerical account ID of the client buyer that the user should be associated with. (required) |

**Request body**: `ClientUserInvitation`

**Response**: `ClientUserInvitation`

```typescript
const res = await adexchangebuyer2.invitations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.clients.invitations.get`

**GET** `v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations/{invitationId}`

Retrieves an existing client user invitation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Numerical account ID of the client's sponsor buyer. (required) |
| `clientAccountId` | `string` | path | Yes | Numerical account ID of the client buyer that the user invitation to be retrieved is associated with. (required) |
| `invitationId` | `string` | path | Yes | Numerical identifier of the user invitation to retrieve. (required) |

**Response**: `ClientUserInvitation`

```typescript
const res = await adexchangebuyer2.invitations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.clients.invitations.list`

**GET** `v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations`

Lists all the client users invitations for a client with a given account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Numerical account ID of the client's sponsor buyer. (required) |
| `clientAccountId` | `string` | path | Yes | Numerical account ID of the client buyer to list invitations for. (required) You must either specify a string represe... |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer clients than requested. If unspecified, server will pick an appropriate ... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListClientUserInvitat... |

**Response**: `ListClientUserInvitationsResponse`

```typescript
const res = await adexchangebuyer2.invitations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.proposals.get`

**GET** `v2beta1/accounts/{accountId}/proposals/{proposalId}`

Gets a proposal given its ID. The proposal is returned at its head revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `proposalId` | `string` | path | Yes | The unique ID of the proposal |

**Response**: `Proposal`

```typescript
const res = await adexchangebuyer2.proposals.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.proposals.create`

**POST** `v2beta1/accounts/{accountId}/proposals`

Create the given proposal. Each created proposal and any deals it contains are assigned a unique ID by the server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |

**Request body**: `Proposal`

**Response**: `Proposal`

```typescript
const res = await adexchangebuyer2.proposals.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.proposals.update`

**PUT** `v2beta1/accounts/{accountId}/proposals/{proposalId}`

Update the given proposal at the client known revision number. If the server revision has advanced since the passed-in `proposal.proposal_revision`, an `ABORTED` error message will be returned. Only the buyer-modifiable fields of the proposal will be updated. Note that the deals in the proposal will be updated to match the passed-in copy. If a passed-in deal does not have a `deal_id`, the server will assign a new unique ID and create the deal. If passed-in deal has a `deal_id`, it will be updated to match the passed-in copy. Any existing deals not present in the passed-in proposal will be deleted. It is an error to pass in a deal with a `deal_id` not present at head.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `proposalId` | `string` | path | Yes | The unique ID of the proposal. |

**Request body**: `Proposal`

**Response**: `Proposal`

```typescript
const res = await adexchangebuyer2.proposals.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.proposals.list`

**GET** `v2beta1/accounts/{accountId}/proposals`

List proposals. A filter expression (PQL query) may be specified to filter the results. To retrieve all finalized proposals, regardless if a proposal is being renegotiated, see the FinalizedProposals resource. Note that Bidder/ChildSeat relationships differ from the usual behavior. A Bidder account can only see its child seats' proposals by specifying the ChildSeat's accountId in the request path.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `filter` | `string` | query | No | An optional PQL filter query used to query for proposals. Nested repeated fields, such as proposal.deals.targetingCri... |
| `filterSyntax` | `string` | query | No | Syntax the filter is written in. Current implementation defaults to PQL but in the future it will be LIST_FILTER. |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | The page token as returned from ListProposalsResponse. |

**Response**: `ListProposalsResponse`

```typescript
const res = await adexchangebuyer2.proposals.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.proposals.addNote`

**POST** `v2beta1/accounts/{accountId}/proposals/{proposalId}:addNote`

Create a new note and attach it to the proposal. The note is assigned a unique ID by the server. The proposal revision number will not increase when associated with a new note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `proposalId` | `string` | path | Yes | The ID of the proposal to attach the note to. |

**Request body**: `AddNoteRequest`

**Response**: `Note`

```typescript
const res = await adexchangebuyer2.proposals.addNote({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.proposals.cancelNegotiation`

**POST** `v2beta1/accounts/{accountId}/proposals/{proposalId}:cancelNegotiation`

Cancel an ongoing negotiation on a proposal. This does not cancel or end serving for the deals if the proposal has been finalized, but only cancels a negotiation unilaterally.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `proposalId` | `string` | path | Yes | The ID of the proposal to cancel negotiation for. |

**Request body**: `CancelNegotiationRequest`

**Response**: `Proposal`

```typescript
const res = await adexchangebuyer2.proposals.cancelNegotiation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.proposals.accept`

**POST** `v2beta1/accounts/{accountId}/proposals/{proposalId}:accept`

Mark the proposal as accepted at the given revision number. If the number does not match the server's revision number an `ABORTED` error message will be returned. This call updates the proposal_state from `PROPOSED` to `BUYER_ACCEPTED`, or from `SELLER_ACCEPTED` to `FINALIZED`. Upon calling this endpoint, the buyer implicitly agrees to the terms and conditions optionally set within the proposal by the publisher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `proposalId` | `string` | path | Yes | The ID of the proposal to accept. |

**Request body**: `AcceptProposalRequest`

**Response**: `Proposal`

```typescript
const res = await adexchangebuyer2.proposals.accept({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.proposals.completeSetup`

**POST** `v2beta1/accounts/{accountId}/proposals/{proposalId}:completeSetup`

You can opt-in to manually update proposals to indicate that setup is complete. By default, proposal setup is automatically completed after their deals are finalized. Contact your Technical Account Manager to opt in. Buyers can call this method when the proposal has been finalized, and all the required creatives have been uploaded using the Creatives API. This call updates the `is_setup_completed` field on the deals in the proposal, and notifies the seller. The server then advances the revision number of the most recent proposal. To mark an individual deal as ready to serve, call `buyers.finalizedDeals.setReadyToServe` in the Marketplace API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `proposalId` | `string` | path | Yes | The ID of the proposal to mark as setup completed. |

**Request body**: `CompleteSetupRequest`

**Response**: `Proposal`

```typescript
const res = await adexchangebuyer2.proposals.completeSetup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.proposals.pause`

**POST** `v2beta1/accounts/{accountId}/proposals/{proposalId}:pause`

Update the given proposal to pause serving. This method will set the `DealServingMetadata.DealPauseStatus.has_buyer_paused` bit to true for all deals in the proposal. It is a no-op to pause an already-paused proposal. It is an error to call PauseProposal for a proposal that is not finalized or renegotiating.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `proposalId` | `string` | path | Yes | The ID of the proposal to pause. |

**Request body**: `PauseProposalRequest`

**Response**: `Proposal`

```typescript
const res = await adexchangebuyer2.proposals.pause({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.proposals.resume`

**POST** `v2beta1/accounts/{accountId}/proposals/{proposalId}:resume`

Update the given proposal to resume serving. This method will set the `DealServingMetadata.DealPauseStatus.has_buyer_paused` bit to false for all deals in the proposal. Note that if the `has_seller_paused` bit is also set, serving will not resume until the seller also resumes. It is a no-op to resume an already-running proposal. It is an error to call ResumeProposal for a proposal that is not finalized or renegotiating.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `proposalId` | `string` | path | Yes | The ID of the proposal to resume. |

**Request body**: `ResumeProposalRequest`

**Response**: `Proposal`

```typescript
const res = await adexchangebuyer2.proposals.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.finalizedProposals.list`

**GET** `v2beta1/accounts/{accountId}/finalizedProposals`

List finalized proposals, regardless if a proposal is being renegotiated. A filter expression (PQL query) may be specified to filter the results. The notes will not be returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `filter` | `string` | query | No | An optional PQL filter query used to query for proposals. Nested repeated fields, such as proposal.deals.targetingCri... |
| `filterSyntax` | `string` | query | No | Syntax the filter is written in. Current implementation defaults to PQL but in the future it will be LIST_FILTER. |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | The page token as returned from ListProposalsResponse. |

**Response**: `ListProposalsResponse`

```typescript
const res = await adexchangebuyer2.finalizedProposals.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.finalizedProposals.pause`

**POST** `v2beta1/accounts/{accountId}/finalizedProposals/{proposalId}:pause`

Update given deals to pause serving. This method will set the `DealServingMetadata.DealPauseStatus.has_buyer_paused` bit to true for all listed deals in the request. Currently, this method only applies to PG and PD deals. For PA deals, call accounts.proposals.pause endpoint. It is a no-op to pause already-paused deals. It is an error to call PauseProposalDeals for deals which are not part of the proposal of proposal_id or which are not finalized or renegotiating.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `proposalId` | `string` | path | Yes | The proposal_id of the proposal containing the deals. |

**Request body**: `PauseProposalDealsRequest`

**Response**: `Proposal`

```typescript
const res = await adexchangebuyer2.finalizedProposals.pause({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.finalizedProposals.resume`

**POST** `v2beta1/accounts/{accountId}/finalizedProposals/{proposalId}:resume`

Update given deals to resume serving. This method will set the `DealServingMetadata.DealPauseStatus.has_buyer_paused` bit to false for all listed deals in the request. Currently, this method only applies to PG and PD deals. For PA deals, call accounts.proposals.resume endpoint. It is a no-op to resume running deals or deals paused by the other party. It is an error to call ResumeProposalDeals for deals which are not part of the proposal of proposal_id or which are not finalized or renegotiating.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `proposalId` | `string` | path | Yes | The proposal_id of the proposal containing the deals. |

**Request body**: `ResumeProposalDealsRequest`

**Response**: `Proposal`

```typescript
const res = await adexchangebuyer2.finalizedProposals.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.products.get`

**GET** `v2beta1/accounts/{accountId}/products/{productId}`

Gets the requested product by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `productId` | `string` | path | Yes | The ID for the product to get the head revision for. |

**Response**: `Product`

```typescript
const res = await adexchangebuyer2.products.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.products.list`

**GET** `v2beta1/accounts/{accountId}/products`

List all products visible to the buyer (optionally filtered by the specified PQL query).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `filter` | `string` | query | No | An optional PQL query used to query for products. See https://developers.google.com/ad-manager/docs/pqlreference for ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | The page token as returned from ListProductsResponse. |

**Response**: `ListProductsResponse`

```typescript
const res = await adexchangebuyer2.products.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.publisherProfiles.get`

**GET** `v2beta1/accounts/{accountId}/publisherProfiles/{publisherProfileId}`

Gets the requested publisher profile by id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `publisherProfileId` | `string` | path | Yes | The id for the publisher profile to get. |

**Response**: `PublisherProfile`

```typescript
const res = await adexchangebuyer2.publisherProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.accounts.publisherProfiles.list`

**GET** `v2beta1/accounts/{accountId}/publisherProfiles`

List all publisher profiles visible to the buyer

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the buyer. |
| `pageSize` | `integer` | query | No | Specify the number of results to include per page. |
| `pageToken` | `string` | query | No | The page token as return from ListPublisherProfilesResponse. |

**Response**: `ListPublisherProfilesResponse`

```typescript
const res = await adexchangebuyer2.publisherProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.create`

**POST** `v2beta1/{+ownerName}/filterSets`

Creates the specified filter set for the account with the given account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `ownerName` | `string` | path | Yes | Name of the owner (bidder or account) of the filter set to be created. For example: - For a bidder-level filter set f... |
| `isTransient` | `boolean` | query | No | Whether the filter set is transient, or should be persisted indefinitely. By default, filter sets are not transient. ... |

**Request body**: `FilterSet`

**Response**: `FilterSet`

```typescript
const res = await adexchangebuyer2.filterSets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.get`

**GET** `v2beta1/{+name}`

Retrieves the requested filter set for the account with the given account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Full name of the resource being requested. For example: - For a bidder-level filter set for bidder 123: `bidders/123/... |

**Response**: `FilterSet`

```typescript
const res = await adexchangebuyer2.filterSets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.list`

**GET** `v2beta1/{+ownerName}/filterSets`

Lists all filter sets for the account with the given account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `ownerName` | `string` | path | Yes | Name of the owner (bidder or account) of the filter sets to be listed. For example: - For a bidder-level filter set f... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListFilterSetsRespons... |

**Response**: `ListFilterSetsResponse`

```typescript
const res = await adexchangebuyer2.filterSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.delete`

**DELETE** `v2beta1/{+name}`

Deletes the requested filter set from the account with the given account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Full name of the resource to delete. For example: - For a bidder-level filter set for bidder 123: `bidders/123/filter... |

**Response**: `Empty`

```typescript
const res = await adexchangebuyer2.filterSets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.impressionMetrics.list`

**GET** `v2beta1/{+filterSetName}/impressionMetrics`

Lists all metrics that are measured in terms of number of impressions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListImpressionMetrics... |

**Response**: `ListImpressionMetricsResponse`

```typescript
const res = await adexchangebuyer2.impressionMetrics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.bidMetrics.list`

**GET** `v2beta1/{+filterSetName}/bidMetrics`

Lists all metrics that are measured in terms of number of bids.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListBidMetricsRespons... |

**Response**: `ListBidMetricsResponse`

```typescript
const res = await adexchangebuyer2.bidMetrics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.filteredBidRequests.list`

**GET** `v2beta1/{+filterSetName}/filteredBidRequests`

List all reasons that caused a bid request not to be sent for an impression, with the number of bid requests not sent for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListFilteredBidReques... |

**Response**: `ListFilteredBidRequestsResponse`

```typescript
const res = await adexchangebuyer2.filteredBidRequests.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.bidResponseErrors.list`

**GET** `v2beta1/{+filterSetName}/bidResponseErrors`

List all errors that occurred in bid responses, with the number of bid responses affected for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListBidResponseErrors... |

**Response**: `ListBidResponseErrorsResponse`

```typescript
const res = await adexchangebuyer2.bidResponseErrors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.bidResponsesWithoutBids.list`

**GET** `v2beta1/{+filterSetName}/bidResponsesWithoutBids`

List all reasons for which bid responses were considered to have no applicable bids, with the number of bid responses affected for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListBidResponsesWitho... |

**Response**: `ListBidResponsesWithoutBidsResponse`

```typescript
const res = await adexchangebuyer2.bidResponsesWithoutBids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.filteredBids.list`

**GET** `v2beta1/{+filterSetName}/filteredBids`

List all reasons for which bids were filtered, with the number of bids filtered for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListFilteredBidsRespo... |

**Response**: `ListFilteredBidsResponse`

```typescript
const res = await adexchangebuyer2.filteredBids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.filteredBids.details.list`

**GET** `v2beta1/{+filterSetName}/filteredBids/{creativeStatusId}/details`

List all details associated with a specific reason for which bids were filtered, with the number of bids filtered for each detail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `creativeStatusId` | `integer` | path | Yes | The ID of the creative status for which to retrieve a breakdown by detail. See [creative-status-codes](https://develo... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListCreativeStatusBre... |

**Response**: `ListCreativeStatusBreakdownByDetailResponse`

```typescript
const res = await adexchangebuyer2.details.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.filteredBids.creatives.list`

**GET** `v2beta1/{+filterSetName}/filteredBids/{creativeStatusId}/creatives`

List all creatives associated with a specific reason for which bids were filtered, with the number of bids filtered for each creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `creativeStatusId` | `integer` | path | Yes | The ID of the creative status for which to retrieve a breakdown by creative. See [creative-status-codes](https://deve... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListCreativeStatusBre... |

**Response**: `ListCreativeStatusBreakdownByCreativeResponse`

```typescript
const res = await adexchangebuyer2.creatives.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.losingBids.list`

**GET** `v2beta1/{+filterSetName}/losingBids`

List all reasons for which bids lost in the auction, with the number of bids that lost for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListLosingBidsRespons... |

**Response**: `ListLosingBidsResponse`

```typescript
const res = await adexchangebuyer2.losingBids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.accounts.filterSets.nonBillableWinningBids.list`

**GET** `v2beta1/{+filterSetName}/nonBillableWinningBids`

List all reasons for which winning bids were not billable, with the number of bids not billed for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListNonBillableWinnin... |

**Response**: `ListNonBillableWinningBidsResponse`

```typescript
const res = await adexchangebuyer2.nonBillableWinningBids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.create`

**POST** `v2beta1/{+ownerName}/filterSets`

Creates the specified filter set for the account with the given account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `ownerName` | `string` | path | Yes | Name of the owner (bidder or account) of the filter set to be created. For example: - For a bidder-level filter set f... |
| `isTransient` | `boolean` | query | No | Whether the filter set is transient, or should be persisted indefinitely. By default, filter sets are not transient. ... |

**Request body**: `FilterSet`

**Response**: `FilterSet`

```typescript
const res = await adexchangebuyer2.filterSets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.get`

**GET** `v2beta1/{+name}`

Retrieves the requested filter set for the account with the given account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Full name of the resource being requested. For example: - For a bidder-level filter set for bidder 123: `bidders/123/... |

**Response**: `FilterSet`

```typescript
const res = await adexchangebuyer2.filterSets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.list`

**GET** `v2beta1/{+ownerName}/filterSets`

Lists all filter sets for the account with the given account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `ownerName` | `string` | path | Yes | Name of the owner (bidder or account) of the filter sets to be listed. For example: - For a bidder-level filter set f... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListFilterSetsRespons... |

**Response**: `ListFilterSetsResponse`

```typescript
const res = await adexchangebuyer2.filterSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.delete`

**DELETE** `v2beta1/{+name}`

Deletes the requested filter set from the account with the given account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Full name of the resource to delete. For example: - For a bidder-level filter set for bidder 123: `bidders/123/filter... |

**Response**: `Empty`

```typescript
const res = await adexchangebuyer2.filterSets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.impressionMetrics.list`

**GET** `v2beta1/{+filterSetName}/impressionMetrics`

Lists all metrics that are measured in terms of number of impressions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListImpressionMetrics... |

**Response**: `ListImpressionMetricsResponse`

```typescript
const res = await adexchangebuyer2.impressionMetrics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.bidMetrics.list`

**GET** `v2beta1/{+filterSetName}/bidMetrics`

Lists all metrics that are measured in terms of number of bids.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListBidMetricsRespons... |

**Response**: `ListBidMetricsResponse`

```typescript
const res = await adexchangebuyer2.bidMetrics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.filteredBidRequests.list`

**GET** `v2beta1/{+filterSetName}/filteredBidRequests`

List all reasons that caused a bid request not to be sent for an impression, with the number of bid requests not sent for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListFilteredBidReques... |

**Response**: `ListFilteredBidRequestsResponse`

```typescript
const res = await adexchangebuyer2.filteredBidRequests.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.bidResponseErrors.list`

**GET** `v2beta1/{+filterSetName}/bidResponseErrors`

List all errors that occurred in bid responses, with the number of bid responses affected for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListBidResponseErrors... |

**Response**: `ListBidResponseErrorsResponse`

```typescript
const res = await adexchangebuyer2.bidResponseErrors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.bidResponsesWithoutBids.list`

**GET** `v2beta1/{+filterSetName}/bidResponsesWithoutBids`

List all reasons for which bid responses were considered to have no applicable bids, with the number of bid responses affected for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListBidResponsesWitho... |

**Response**: `ListBidResponsesWithoutBidsResponse`

```typescript
const res = await adexchangebuyer2.bidResponsesWithoutBids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.filteredBids.list`

**GET** `v2beta1/{+filterSetName}/filteredBids`

List all reasons for which bids were filtered, with the number of bids filtered for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListFilteredBidsRespo... |

**Response**: `ListFilteredBidsResponse`

```typescript
const res = await adexchangebuyer2.filteredBids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.filteredBids.details.list`

**GET** `v2beta1/{+filterSetName}/filteredBids/{creativeStatusId}/details`

List all details associated with a specific reason for which bids were filtered, with the number of bids filtered for each detail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `creativeStatusId` | `integer` | path | Yes | The ID of the creative status for which to retrieve a breakdown by detail. See [creative-status-codes](https://develo... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListCreativeStatusBre... |

**Response**: `ListCreativeStatusBreakdownByDetailResponse`

```typescript
const res = await adexchangebuyer2.details.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.filteredBids.creatives.list`

**GET** `v2beta1/{+filterSetName}/filteredBids/{creativeStatusId}/creatives`

List all creatives associated with a specific reason for which bids were filtered, with the number of bids filtered for each creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `creativeStatusId` | `integer` | path | Yes | The ID of the creative status for which to retrieve a breakdown by creative. See [creative-status-codes](https://deve... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListCreativeStatusBre... |

**Response**: `ListCreativeStatusBreakdownByCreativeResponse`

```typescript
const res = await adexchangebuyer2.creatives.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.losingBids.list`

**GET** `v2beta1/{+filterSetName}/losingBids`

List all reasons for which bids lost in the auction, with the number of bids that lost for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListLosingBidsRespons... |

**Response**: `ListLosingBidsResponse`

```typescript
const res = await adexchangebuyer2.losingBids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.bidders.filterSets.nonBillableWinningBids.list`

**GET** `v2beta1/{+filterSetName}/nonBillableWinningBids`

List all reasons for which winning bids were not billable, with the number of bids not billed for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListNonBillableWinnin... |

**Response**: `ListNonBillableWinningBidsResponse`

```typescript
const res = await adexchangebuyer2.nonBillableWinningBids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.create`

**POST** `v2beta1/{+ownerName}/filterSets`

Creates the specified filter set for the account with the given account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `ownerName` | `string` | path | Yes | Name of the owner (bidder or account) of the filter set to be created. For example: - For a bidder-level filter set f... |
| `isTransient` | `boolean` | query | No | Whether the filter set is transient, or should be persisted indefinitely. By default, filter sets are not transient. ... |

**Request body**: `FilterSet`

**Response**: `FilterSet`

```typescript
const res = await adexchangebuyer2.filterSets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.get`

**GET** `v2beta1/{+name}`

Retrieves the requested filter set for the account with the given account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Full name of the resource being requested. For example: - For a bidder-level filter set for bidder 123: `bidders/123/... |

**Response**: `FilterSet`

```typescript
const res = await adexchangebuyer2.filterSets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.list`

**GET** `v2beta1/{+ownerName}/filterSets`

Lists all filter sets for the account with the given account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `ownerName` | `string` | path | Yes | Name of the owner (bidder or account) of the filter sets to be listed. For example: - For a bidder-level filter set f... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListFilterSetsRespons... |

**Response**: `ListFilterSetsResponse`

```typescript
const res = await adexchangebuyer2.filterSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.delete`

**DELETE** `v2beta1/{+name}`

Deletes the requested filter set from the account with the given account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Full name of the resource to delete. For example: - For a bidder-level filter set for bidder 123: `bidders/123/filter... |

**Response**: `Empty`

```typescript
const res = await adexchangebuyer2.filterSets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.impressionMetrics.list`

**GET** `v2beta1/{+filterSetName}/impressionMetrics`

Lists all metrics that are measured in terms of number of impressions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListImpressionMetrics... |

**Response**: `ListImpressionMetricsResponse`

```typescript
const res = await adexchangebuyer2.impressionMetrics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.bidMetrics.list`

**GET** `v2beta1/{+filterSetName}/bidMetrics`

Lists all metrics that are measured in terms of number of bids.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListBidMetricsRespons... |

**Response**: `ListBidMetricsResponse`

```typescript
const res = await adexchangebuyer2.bidMetrics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.filteredBidRequests.list`

**GET** `v2beta1/{+filterSetName}/filteredBidRequests`

List all reasons that caused a bid request not to be sent for an impression, with the number of bid requests not sent for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListFilteredBidReques... |

**Response**: `ListFilteredBidRequestsResponse`

```typescript
const res = await adexchangebuyer2.filteredBidRequests.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.bidResponseErrors.list`

**GET** `v2beta1/{+filterSetName}/bidResponseErrors`

List all errors that occurred in bid responses, with the number of bid responses affected for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListBidResponseErrors... |

**Response**: `ListBidResponseErrorsResponse`

```typescript
const res = await adexchangebuyer2.bidResponseErrors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.bidResponsesWithoutBids.list`

**GET** `v2beta1/{+filterSetName}/bidResponsesWithoutBids`

List all reasons for which bid responses were considered to have no applicable bids, with the number of bid responses affected for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListBidResponsesWitho... |

**Response**: `ListBidResponsesWithoutBidsResponse`

```typescript
const res = await adexchangebuyer2.bidResponsesWithoutBids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.filteredBids.list`

**GET** `v2beta1/{+filterSetName}/filteredBids`

List all reasons for which bids were filtered, with the number of bids filtered for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListFilteredBidsRespo... |

**Response**: `ListFilteredBidsResponse`

```typescript
const res = await adexchangebuyer2.filteredBids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.filteredBids.details.list`

**GET** `v2beta1/{+filterSetName}/filteredBids/{creativeStatusId}/details`

List all details associated with a specific reason for which bids were filtered, with the number of bids filtered for each detail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `creativeStatusId` | `integer` | path | Yes | The ID of the creative status for which to retrieve a breakdown by detail. See [creative-status-codes](https://develo... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListCreativeStatusBre... |

**Response**: `ListCreativeStatusBreakdownByDetailResponse`

```typescript
const res = await adexchangebuyer2.details.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.filteredBids.creatives.list`

**GET** `v2beta1/{+filterSetName}/filteredBids/{creativeStatusId}/creatives`

List all creatives associated with a specific reason for which bids were filtered, with the number of bids filtered for each creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `creativeStatusId` | `integer` | path | Yes | The ID of the creative status for which to retrieve a breakdown by creative. See [creative-status-codes](https://deve... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListCreativeStatusBre... |

**Response**: `ListCreativeStatusBreakdownByCreativeResponse`

```typescript
const res = await adexchangebuyer2.creatives.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.losingBids.list`

**GET** `v2beta1/{+filterSetName}/losingBids`

List all reasons for which bids lost in the auction, with the number of bids that lost for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListLosingBidsRespons... |

**Response**: `ListLosingBidsResponse`

```typescript
const res = await adexchangebuyer2.losingBids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

### `adexchangebuyer2.buyers.filterSets.nonBillableWinningBids.list`

**GET** `v2beta1/{+filterSetName}/nonBillableWinningBids`

List all reasons for which winning bids were not billable, with the number of bids not billed for each reason.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filterSetName` | `string` | path | Yes | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set ... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListNonBillableWinnin... |

**Response**: `ListNonBillableWinningBidsResponse`

```typescript
const res = await adexchangebuyer2.nonBillableWinningBids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adexchange.buyer`

---

## Schemas

### `AbsoluteDateRange`

An absolute date range, specified by its start date and end date. The supported range of dates begins 30 days before today and ends today. Validity checked upon filter set creation. If a filter set with an absolute date range is run at a later date more than 30 days after start_date, it will fail.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `Date` | The end date of the range (inclusive). Must be within the 30 days leading up to current date, and... |
| `startDate` | `Date` | The start date of the range (inclusive). Must be within the 30 days leading up to current date, a... |

### `AcceptProposalRequest`

Request to accept a proposal.

| Property | Type | Description |
|----------|------|-------------|
| `proposalRevision` | `string` | The last known client revision number of the proposal. |

### `AdSize`

Represents size of a single ad slot, or a creative.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `string` | The height of the ad slot in pixels. This field will be present only when size type is `PIXEL`. |
| `sizeType` | `string` | The size type of the ad slot. |
| `width` | `string` | The width of the ad slot in pixels. This field will be present only when size type is `PIXEL`. |

### `AdTechnologyProviders`

Detected ad technology provider information.

| Property | Type | Description |
|----------|------|-------------|
| `detectedProviderIds` | `array<string>` | The detected ad technology provider IDs for this creative. See https://storage.googleapis.com/adx... |
| `hasUnidentifiedProvider` | `boolean` | Whether the creative contains an unidentified ad technology provider. If true for a given creativ... |

### `AddDealAssociationRequest`

A request for associating a deal and a creative.

| Property | Type | Description |
|----------|------|-------------|
| `association` | `CreativeDealAssociation` | The association between a creative and a deal that should be added. |

### `AddNoteRequest`

Request message for adding a note to a given proposal.

| Property | Type | Description |
|----------|------|-------------|
| `note` | `Note` | Details of the note to add. |

### `AppContext`

Output only. The app type the restriction applies to for mobile device.

| Property | Type | Description |
|----------|------|-------------|
| `appTypes` | `array<string>` | The app types this restriction applies to. |

### `AuctionContext`

Output only. The auction type the restriction applies to.

| Property | Type | Description |
|----------|------|-------------|
| `auctionTypes` | `array<string>` | The auction types this restriction applies to. |

### `BidMetricsRow`

The set of metrics that are measured in numbers of bids, representing how many bids with the specified dimension values were considered eligible at each stage of the bidding funnel;

| Property | Type | Description |
|----------|------|-------------|
| `bids` | `MetricValue` | The number of bids that Ad Exchange received from the buyer. |
| `bidsInAuction` | `MetricValue` | The number of bids that were permitted to compete in the auction. |
| `billedImpressions` | `MetricValue` | The number of bids for which the buyer was billed. Also called valid impressions as invalid impre... |
| `impressionsWon` | `MetricValue` | The number of bids that won the auction. |
| `measurableImpressions` | `MetricValue` | The number of bids for which the corresponding impression was measurable for viewability (as defi... |
| `reachedQueries` | `MetricValue` | The number of bids that won the auction and also won the mediation waterfall (if any). |
| `rowDimensions` | `RowDimensions` | The values of all dimensions associated with metric values in this row. |
| `viewableImpressions` | `MetricValue` | The number of bids for which the corresponding impression was viewable (as defined by Active View). |

### `BidResponseWithoutBidsStatusRow`

The number of impressions with the specified dimension values that were considered to have no applicable bids, as described by the specified status.

| Property | Type | Description |
|----------|------|-------------|
| `impressionCount` | `MetricValue` | The number of impressions for which there was a bid response with the specified status. |
| `rowDimensions` | `RowDimensions` | The values of all dimensions associated with metric values in this row. |
| `status` | `string` | The status specifying why the bid responses were considered to have no applicable bids. |

### `Buyer`

Represents a buyer of inventory. Each buyer is identified by a unique Authorized Buyers account ID.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Authorized Buyers account ID of the buyer. |

### `CalloutStatusRow`

The number of impressions with the specified dimension values where the corresponding bid request or bid response was not successful, as described by the specified callout status.

| Property | Type | Description |
|----------|------|-------------|
| `calloutStatusId` | `integer` | The ID of the callout status. See [callout-status-codes](https://developers.google.com/authorized... |
| `impressionCount` | `MetricValue` | The number of impressions for which there was a bid request or bid response with the specified ca... |
| `rowDimensions` | `RowDimensions` | The values of all dimensions associated with metric values in this row. |

### `CancelNegotiationRequest`

Request to cancel an ongoing negotiation.

### `Client`

A client resource represents a client buyer—an agency, a brand, or an advertiser customer of the sponsor buyer. Users associated with the client buyer have restricted access to the Marketplace and certain other sections of the Authorized Buyers UI based on the role granted to the client buyer. All fields are required unless otherwise specified.

| Property | Type | Description |
|----------|------|-------------|
| `clientAccountId` | `string` | The globally-unique numerical ID of the client. The value of this field is ignored in create and ... |
| `clientName` | `string` | Name used to represent this client to publishers. You may have multiple clients that map to the s... |
| `entityId` | `string` | Numerical identifier of the client entity. The entity can be an advertiser, a brand, or an agency... |
| `entityName` | `string` | The name of the entity. This field is automatically fetched based on the type and ID. The value o... |
| `entityType` | `string` | An optional field for specifying the type of the client entity: `ADVERTISER`, `BRAND`, or `AGENCY`. |
| `partnerClientId` | `string` | Optional arbitrary unique identifier of this client buyer from the standpoint of its Ad Exchange ... |
| `role` | `string` | The role which is assigned to the client buyer. Each role implies a set of permissions granted to... |
| `status` | `string` | The status of the client buyer. |
| `visibleToSeller` | `boolean` | Whether the client buyer will be visible to sellers. |

### `ClientUser`

A client user is created under a client buyer and has restricted access to the Marketplace and certain other sections of the Authorized Buyers UI based on the role granted to the associated client buyer. The only way a new client user can be created is through accepting an email invitation (see the accounts.clients.invitations.create method). All fields are required unless otherwise specified.

| Property | Type | Description |
|----------|------|-------------|
| `clientAccountId` | `string` | Numerical account ID of the client buyer with which the user is associated; the buyer must be a c... |
| `email` | `string` | User's email address. The value of this field is ignored in an update operation. |
| `status` | `string` | The status of the client user. |
| `userId` | `string` | The unique numerical ID of the client user that has accepted an invitation. The value of this fie... |

### `ClientUserInvitation`

An invitation for a new client user to get access to the Authorized Buyers UI. All fields are required unless otherwise specified.

| Property | Type | Description |
|----------|------|-------------|
| `clientAccountId` | `string` | Numerical account ID of the client buyer that the invited user is associated with. The value of t... |
| `email` | `string` | The email address to which the invitation is sent. Email addresses should be unique among all cli... |
| `invitationId` | `string` | The unique numerical ID of the invitation that is sent to the user. The value of this field is ig... |

### `CompleteSetupRequest`

Request message for indicating that the proposal's setup step is complete.

### `ContactInformation`

Contains information on how a buyer or seller can be reached.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Email address for the contact. |
| `name` | `string` | The name of the contact. |

### `Correction`

Output only. Shows any corrections that were applied to this creative.

| Property | Type | Description |
|----------|------|-------------|
| `contexts` | `array<ServingContext>` | The contexts for the correction. |
| `details` | `array<string>` | Additional details about what was corrected. |
| `type` | `string` | The type of correction that was applied to the creative. |

### `Creative`

A creative and its classification data.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The account that this creative belongs to. Can be used to filter the response of the creatives.li... |
| `adChoicesDestinationUrl` | `string` | The link to AdChoices destination page. |
| `adTechnologyProviders` | `AdTechnologyProviders` | Output only. The detected ad technology providers. |
| `advertiserName` | `string` | The name of the company being advertised in the creative. |
| `agencyId` | `string` | The agency ID for this creative. |
| `apiUpdateTime` | `string` | Output only. The last update timestamp of the creative through the API. |
| `attributes` | `array<string>` | All attributes for the ads that may be shown from this creative. Can be used to filter the respon... |
| `clickThroughUrls` | `array<string>` | The set of destination URLs for the creative. |
| `corrections` | `array<Correction>` | Output only. Shows any corrections that were applied to this creative. |
| `creativeId` | `string` | The buyer-defined creative ID of this creative. Can be used to filter the response of the creativ... |
| `dealsStatus` | `string` | Output only. The top-level deals status of this creative. If disapproved, an entry for 'auctionTy... |
| `declaredClickThroughUrls` | `array<string>` | The set of declared destination URLs for the creative. |
| `detectedAdvertiserIds` | `array<string>` | Output only. Detected advertiser IDs, if any. |
| `detectedDomains` | `array<string>` | Output only. The detected domains for this creative. |
| `detectedLanguages` | `array<string>` | Output only. The detected languages for this creative. The order is arbitrary. The codes are 2 or... |
| `detectedProductCategories` | `array<integer>` | Output only. Detected product categories, if any. See the ad-product-categories.txt file in the t... |
| `detectedSensitiveCategories` | `array<integer>` | Output only. Detected sensitive categories, if any. See the ad-sensitive-categories.txt file in t... |
| `html` | `HtmlContent` | An HTML creative. |
| `impressionTrackingUrls` | `array<string>` | The set of URLs to be called to record an impression. |
| `native` | `NativeContent` | A native creative. |
| `openAuctionStatus` | `string` | Output only. The top-level open auction status of this creative. If disapproved, an entry for 'au... |
| `restrictedCategories` | `array<string>` | All restricted categories for the ads that may be shown from this creative. |
| `servingRestrictions` | `array<ServingRestriction>` | Output only. The granular status of this ad in specific contexts. A context here relates to where... |
| `vendorIds` | `array<integer>` | All vendor IDs for the ads that may be shown from this creative. See https://storage.googleapis.c... |
| `version` | `integer` | Output only. The version of this creative. |
| `video` | `VideoContent` | A video creative. |

### `CreativeDealAssociation`

The association between a creative and a deal.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The account the creative belongs to. |
| `creativeId` | `string` | The ID of the creative associated with the deal. |
| `dealsId` | `string` | The externalDealId for the deal associated with the creative. |

### `CreativeRestrictions`

Represents creative restrictions associated to Programmatic Guaranteed/ Preferred Deal in Ad Manager. This doesn't apply to Private Auction and AdX Preferred Deals.

| Property | Type | Description |
|----------|------|-------------|
| `creativeFormat` | `string` | The format of the environment that the creatives will be displayed in. |
| `creativeSpecifications` | `array<CreativeSpecification>` |  |
| `skippableAdType` | `string` | Skippable video ads allow viewers to skip ads after 5 seconds. |

### `CreativeSize`

Specifies the size of the creative.

| Property | Type | Description |
|----------|------|-------------|
| `allowedFormats` | `array<string>` | What formats are allowed by the publisher. If this repeated field is empty then all formats are a... |
| `companionSizes` | `array<Size>` | For video creatives specifies the sizes of companion ads (if present). Companion sizes may be fil... |
| `creativeSizeType` | `string` | The creative size type. |
| `nativeTemplate` | `string` | Output only. The native template for this creative. It will have a value only if creative_size_ty... |
| `size` | `Size` | For regular or video creative size type, specifies the size of the creative |
| `skippableAdType` | `string` | The type of skippable ad for this creative. It will have a value only if creative_size_type = Cre... |

### `CreativeSpecification`

Represents information for a creative that is associated with a Programmatic Guaranteed/Preferred Deal in Ad Manager.

| Property | Type | Description |
|----------|------|-------------|
| `creativeCompanionSizes` | `array<AdSize>` | Companion sizes may be filled in only when this is a video creative. |
| `creativeSize` | `AdSize` | The size of the creative. |

### `CreativeStatusRow`

The number of bids with the specified dimension values that did not win the auction (either were filtered pre-auction or lost the auction), as described by the specified creative status.

| Property | Type | Description |
|----------|------|-------------|
| `bidCount` | `MetricValue` | The number of bids with the specified status. |
| `creativeStatusId` | `integer` | The ID of the creative status. See [creative-status-codes](https://developers.google.com/authoriz... |
| `rowDimensions` | `RowDimensions` | The values of all dimensions associated with metric values in this row. |

### `CriteriaTargeting`

Generic targeting used for targeting dimensions that contains a list of included and excluded numeric IDs.

| Property | Type | Description |
|----------|------|-------------|
| `excludedCriteriaIds` | `array<string>` | A list of numeric IDs to be excluded. |
| `targetedCriteriaIds` | `array<string>` | A list of numeric IDs to be included. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DayPart`

Daypart targeting message that specifies if the ad can be shown only during certain parts of a day/week.

| Property | Type | Description |
|----------|------|-------------|
| `dayOfWeek` | `string` | The day of the week to target. If unspecified, applicable to all days. |
| `endTime` | `TimeOfDay` | The ending time of the day for the ad to show (minute level granularity). The end time is exclusi... |
| `startTime` | `TimeOfDay` | The starting time of day for the ad to show (minute level granularity). The start time is inclusi... |

### `DayPartTargeting`

Specifies the day part targeting criteria.

| Property | Type | Description |
|----------|------|-------------|
| `dayParts` | `array<DayPart>` | A list of day part targeting criterion. |
| `timeZoneType` | `string` | The timezone to use for interpreting the day part targeting. |

### `Deal`

A deal represents a segment of inventory for displaying ads on. A proposal can contain multiple deals. A deal contains the terms and targeting information that is used for serving.

| Property | Type | Description |
|----------|------|-------------|
| `availableEndTime` | `string` | Proposed flight end time of the deal. This will generally be stored in a granularity of a second.... |
| `availableStartTime` | `string` | Optional. Proposed flight start time of the deal. This will generally be stored in the granularit... |
| `buyerPrivateData` | `PrivateData` | Buyer private data (hidden from seller). |
| `createProductId` | `string` | The product ID from which this deal was created. Note: This field may be set only when creating t... |
| `createProductRevision` | `string` | Optional. Revision number of the product that the deal was created from. If present on create, an... |
| `createTime` | `string` | Output only. The time of the deal creation. |
| `creativePreApprovalPolicy` | `string` | Output only. Specifies the creative pre-approval policy. |
| `creativeRestrictions` | `CreativeRestrictions` | Output only. Restricitions about the creatives associated with the deal (for example, size) This ... |
| `creativeSafeFrameCompatibility` | `string` | Output only. Specifies whether the creative is safeFrame compatible. |
| `dealId` | `string` | Output only. A unique deal ID for the deal (server-assigned). |
| `dealServingMetadata` | `DealServingMetadata` | Output only. Metadata about the serving status of this deal. |
| `dealTerms` | `DealTerms` | The negotiable terms of the deal. |
| `deliveryControl` | `DeliveryControl` | The set of fields around delivery control that are interesting for a buyer to see but are non-neg... |
| `description` | `string` | Description for the deal terms. |
| `displayName` | `string` | The name of the deal. |
| `externalDealId` | `string` | Output only. The external deal ID assigned to this deal once the deal is finalized. This is the d... |
| `isSetupComplete` | `boolean` | Output only. True, if the buyside inventory setup is complete for this deal. |
| `programmaticCreativeSource` | `string` | Output only. Specifies the creative source for programmatic deals. PUBLISHER means creative is pr... |
| `proposalId` | `string` | Output only. ID of the proposal that this deal is part of. |
| `sellerContacts` | `array<ContactInformation>` | Output only. Seller contact information for the deal. |
| `syndicationProduct` | `string` | The syndication product associated with the deal. Note: This field may be set only when creating ... |
| `targeting` | `MarketplaceTargeting` | Output only. Specifies the subset of inventory targeted by the deal. |
| `targetingCriterion` | `array<TargetingCriteria>` | The shared targeting visible to buyers and sellers. Each shared targeting entity is AND'd together. |
| `updateTime` | `string` | Output only. The time when the deal was last updated. |
| `webPropertyCode` | `string` | The web property code for the seller copied over from the product. |

### `DealPauseStatus`

Tracks which parties (if any) have paused a deal. The deal is considered paused if either hasBuyerPaused or hasSellPaused is true.

| Property | Type | Description |
|----------|------|-------------|
| `buyerPauseReason` | `string` | The buyer's reason for pausing, if the buyer paused the deal. |
| `firstPausedBy` | `string` | The role of the person who first paused this deal. |
| `hasBuyerPaused` | `boolean` | True, if the buyer has paused the deal unilaterally. |
| `hasSellerPaused` | `boolean` | True, if the seller has paused the deal unilaterally. |
| `sellerPauseReason` | `string` | The seller's reason for pausing, if the seller paused the deal. |

### `DealServingMetadata`

Message captures metadata about the serving status of a deal.

| Property | Type | Description |
|----------|------|-------------|
| `dealPauseStatus` | `DealPauseStatus` | Output only. Tracks which parties (if any) have paused a deal. |

### `DealTerms`

The deal terms specify the details of a Product/deal. They specify things like price per buyer, the type of pricing model (for example, fixed price, auction) and expected impressions from the publisher.

| Property | Type | Description |
|----------|------|-------------|
| `brandingType` | `string` | Visibility of the URL in bid requests. (default: BRANDED) |
| `description` | `string` | Publisher provided description for the terms. |
| `estimatedGrossSpend` | `Price` | Non-binding estimate of the estimated gross spend for this deal. Can be set by buyer or seller. |
| `estimatedImpressionsPerDay` | `string` | Non-binding estimate of the impressions served per day. Can be set by buyer or seller. |
| `guaranteedFixedPriceTerms` | `GuaranteedFixedPriceTerms` | The terms for guaranteed fixed price deals. |
| `nonGuaranteedAuctionTerms` | `NonGuaranteedAuctionTerms` | The terms for non-guaranteed auction deals. |
| `nonGuaranteedFixedPriceTerms` | `NonGuaranteedFixedPriceTerms` | The terms for non-guaranteed fixed price deals. |
| `sellerTimeZone` | `string` | The time zone name. For deals with Cost Per Day billing, defines the time zone used to mark the b... |

### `DeliveryControl`

Message contains details about how the deals will be paced.

| Property | Type | Description |
|----------|------|-------------|
| `creativeBlockingLevel` | `string` | Output only. Specified the creative blocking levels to be applied. |
| `deliveryRateType` | `string` | Output only. Specifies how the impression delivery will be paced. |
| `frequencyCaps` | `array<FrequencyCap>` | Output only. Specifies any frequency caps. |

### `Disapproval`

Output only. The reason and details for a disapproval.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `array<string>` | Additional details about the reason for disapproval. |
| `reason` | `string` | The categorized reason for disapproval. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `FilterSet`

A set of filters that is applied to a request for data. Within a filter set, an AND operation is performed across the filters represented by each field. An OR operation is performed across the filters represented by the multiple values of a repeated field, for example, "format=VIDEO AND deal_id=12 AND (seller_network_id=34 OR seller_network_id=56)".

| Property | Type | Description |
|----------|------|-------------|
| `absoluteDateRange` | `AbsoluteDateRange` | An absolute date range, defined by a start date and an end date. Interpreted relative to Pacific ... |
| `breakdownDimensions` | `array<string>` | The set of dimensions along which to break down the response; may be empty. If multiple dimension... |
| `creativeId` | `string` | The ID of the creative on which to filter; optional. This field may be set only for a filter set ... |
| `dealId` | `string` | The ID of the deal on which to filter; optional. This field may be set only for a filter set that... |
| `environment` | `string` | The environment on which to filter; optional. |
| `format` | `string` | Creative format bidded on or allowed to bid on, can be empty. |
| `formats` | `array<string>` | Creative formats bidded on or allowed to bid on, can be empty. Although this field is a list, it ... |
| `name` | `string` | A user-defined name of the filter set. Filter set names must be unique globally and match one of ... |
| `platforms` | `array<string>` | The list of platforms on which to filter; may be empty. The filters represented by multiple platf... |
| `publisherIdentifiers` | `array<string>` | For Open Bidding partners only. The list of publisher identifiers on which to filter; may be empt... |
| `realtimeTimeRange` | `RealtimeTimeRange` | An open-ended realtime time range, defined by the aggregation start timestamp. |
| `relativeDateRange` | `RelativeDateRange` | A relative date range, defined by an offset from today and a duration. Interpreted relative to Pa... |
| `sellerNetworkIds` | `array<integer>` | For Authorized Buyers only. The list of IDs of the seller (publisher) networks on which to filter... |
| `timeSeriesGranularity` | `string` | The granularity of time intervals if a time series breakdown is preferred; optional. |

### `FilteredBidCreativeRow`

The number of filtered bids with the specified dimension values that have the specified creative.

| Property | Type | Description |
|----------|------|-------------|
| `bidCount` | `MetricValue` | The number of bids with the specified creative. |
| `creativeId` | `string` | The ID of the creative. |
| `rowDimensions` | `RowDimensions` | The values of all dimensions associated with metric values in this row. |

### `FilteredBidDetailRow`

The number of filtered bids with the specified dimension values, among those filtered due to the requested filtering reason (for example, creative status), that have the specified detail.

| Property | Type | Description |
|----------|------|-------------|
| `bidCount` | `MetricValue` | The number of bids with the specified detail. |
| `detail` | `string` | The ID of the detail, can be numeric or text. The associated value can be looked up in the dictio... |
| `detailId` | `integer` | Note: this field will be deprecated, use "detail" field instead. When "detail" field represents a... |
| `rowDimensions` | `RowDimensions` | The values of all dimensions associated with metric values in this row. |

### `FirstPartyMobileApplicationTargeting`

Represents a list of targeted and excluded mobile application IDs that publishers own. Mobile application IDs are from App Store and Google Play Store. Android App ID, for example, com.google.android.apps.maps, can be found in Google Play Store URL. iOS App ID (which is a number) can be found at the end of iTunes store URL. First party mobile applications is either included or excluded.

| Property | Type | Description |
|----------|------|-------------|
| `excludedAppIds` | `array<string>` | A list of application IDs to be excluded. |
| `targetedAppIds` | `array<string>` | A list of application IDs to be included. |

### `FrequencyCap`

Frequency cap.

| Property | Type | Description |
|----------|------|-------------|
| `maxImpressions` | `integer` | The maximum number of impressions that can be served to a user within the specified time period. |
| `numTimeUnits` | `integer` | The amount of time, in the units specified by time_unit_type. Defines the amount of time over whi... |
| `timeUnitType` | `string` | The time unit. Along with num_time_units defines the amount of time over which impressions per us... |

### `GuaranteedFixedPriceTerms`

Terms for Programmatic Guaranteed Deals.

| Property | Type | Description |
|----------|------|-------------|
| `fixedPrices` | `array<PricePerBuyer>` | Fixed price for the specified buyer. |
| `guaranteedImpressions` | `string` | Guaranteed impressions as a percentage. This is the percentage of guaranteed looks that the buyer... |
| `guaranteedLooks` | `string` | Count of guaranteed looks. Required for deal, optional for product. For CPD deals, buyer changes ... |
| `impressionCap` | `string` | The lifetime impression cap for CPM sponsorship deals. The deal will stop serving when the cap is... |
| `minimumDailyLooks` | `string` | Daily minimum looks for CPD deal types. For CPD deals, buyer should negotiate on this field inste... |
| `percentShareOfVoice` | `string` | For sponsorship deals, this is the percentage of the seller's eligible impressions that the deal ... |
| `reservationType` | `string` | The reservation type for a Programmatic Guaranteed deal. This indicates whether the number of imp... |

### `HtmlContent`

HTML content for a creative.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | The height of the HTML snippet in pixels. |
| `snippet` | `string` | The HTML snippet that displays the ad when inserted in the web page. |
| `width` | `integer` | The width of the HTML snippet in pixels. |

### `Image`

An image resource. You may provide a larger image than was requested, so long as the aspect ratio is preserved.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | Image height in pixels. |
| `url` | `string` | The URL of the image. |
| `width` | `integer` | Image width in pixels. |

### `ImpressionMetricsRow`

The set of metrics that are measured in numbers of impressions, representing how many impressions with the specified dimension values were considered eligible at each stage of the bidding funnel.

| Property | Type | Description |
|----------|------|-------------|
| `availableImpressions` | `MetricValue` | The number of impressions available to the buyer on Ad Exchange. In some cases this value may be ... |
| `bidRequests` | `MetricValue` | The number of impressions for which Ad Exchange sent the buyer a bid request. |
| `inventoryMatches` | `MetricValue` | The number of impressions that match the buyer's inventory pretargeting. |
| `responsesWithBids` | `MetricValue` | The number of impressions for which Ad Exchange received a response from the buyer that contained... |
| `rowDimensions` | `RowDimensions` | The values of all dimensions associated with metric values in this row. |
| `successfulResponses` | `MetricValue` | The number of impressions for which the buyer successfully sent a response to Ad Exchange. |

### `InventorySizeTargeting`

Represents the size of an ad unit that can be targeted on an ad request. It only applies to Private Auction, AdX Preferred Deals and Auction Packages. This targeting does not apply to Programmatic Guaranteed and Preferred Deals in Ad Manager.

| Property | Type | Description |
|----------|------|-------------|
| `excludedInventorySizes` | `array<AdSize>` | A list of inventory sizes to be excluded. |
| `targetedInventorySizes` | `array<AdSize>` | A list of inventory sizes to be included. |

### `ListBidMetricsResponse`

Response message for listing the metrics that are measured in number of bids.

| Property | Type | Description |
|----------|------|-------------|
| `bidMetricsRows` | `array<BidMetricsRow>` | List of rows, each containing a set of bid metrics. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListBidMetricsRequest.pageTo... |

### `ListBidResponseErrorsResponse`

Response message for listing all reasons that bid responses resulted in an error.

| Property | Type | Description |
|----------|------|-------------|
| `calloutStatusRows` | `array<CalloutStatusRow>` | List of rows, with counts of bid responses aggregated by callout status. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListBidResponseErrorsRequest... |

### `ListBidResponsesWithoutBidsResponse`

Response message for listing all reasons that bid responses were considered to have no applicable bids.

| Property | Type | Description |
|----------|------|-------------|
| `bidResponseWithoutBidsStatusRows` | `array<BidResponseWithoutBidsStatusRow>` | List of rows, with counts of bid responses without bids aggregated by status. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListBidResponsesWithoutBidsR... |

### `ListClientUserInvitationsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `invitations` | `array<ClientUserInvitation>` | The returned list of client users. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListClientUserInvitationsReq... |

### `ListClientUsersResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListClientUsersRequest.pageT... |
| `users` | `array<ClientUser>` | The returned list of client users. |

### `ListClientsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `clients` | `array<Client>` | The returned list of clients. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListClientsRequest.pageToken... |

### `ListCreativeStatusBreakdownByCreativeResponse`

Response message for listing all creatives associated with a given filtered bid reason.

| Property | Type | Description |
|----------|------|-------------|
| `filteredBidCreativeRows` | `array<FilteredBidCreativeRow>` | List of rows, with counts of bids with a given creative status aggregated by creative. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListCreativeStatusBreakdownB... |

### `ListCreativeStatusBreakdownByDetailResponse`

Response message for listing all details associated with a given filtered bid reason.

| Property | Type | Description |
|----------|------|-------------|
| `detailType` | `string` | The type of detail that the detail IDs represent. |
| `filteredBidDetailRows` | `array<FilteredBidDetailRow>` | List of rows, with counts of bids with a given creative status aggregated by detail. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListCreativeStatusBreakdownB... |

### `ListCreativesResponse`

A response for listing creatives.

| Property | Type | Description |
|----------|------|-------------|
| `creatives` | `array<Creative>` | The list of creatives. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListCreativesRequest.page_to... |

### `ListDealAssociationsResponse`

A response for listing creative and deal associations

| Property | Type | Description |
|----------|------|-------------|
| `associations` | `array<CreativeDealAssociation>` | The list of associations. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListDealAssociationsRequest.... |

### `ListFilterSetsResponse`

Response message for listing filter sets.

| Property | Type | Description |
|----------|------|-------------|
| `filterSets` | `array<FilterSet>` | The filter sets belonging to the buyer. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListFilterSetsRequest.pageTo... |

### `ListFilteredBidRequestsResponse`

Response message for listing all reasons that bid requests were filtered and not sent to the buyer.

| Property | Type | Description |
|----------|------|-------------|
| `calloutStatusRows` | `array<CalloutStatusRow>` | List of rows, with counts of filtered bid requests aggregated by callout status. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListFilteredBidRequestsReque... |

### `ListFilteredBidsResponse`

Response message for listing all reasons that bids were filtered from the auction.

| Property | Type | Description |
|----------|------|-------------|
| `creativeStatusRows` | `array<CreativeStatusRow>` | List of rows, with counts of filtered bids aggregated by filtering reason (for example, creative ... |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListFilteredBidsRequest.page... |

### `ListImpressionMetricsResponse`

Response message for listing the metrics that are measured in number of impressions.

| Property | Type | Description |
|----------|------|-------------|
| `impressionMetricsRows` | `array<ImpressionMetricsRow>` | List of rows, each containing a set of impression metrics. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListImpressionMetricsRequest... |

### `ListLosingBidsResponse`

Response message for listing all reasons that bids lost in the auction.

| Property | Type | Description |
|----------|------|-------------|
| `creativeStatusRows` | `array<CreativeStatusRow>` | List of rows, with counts of losing bids aggregated by loss reason (for example, creative status). |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListLosingBidsRequest.pageTo... |

### `ListNonBillableWinningBidsResponse`

Response message for listing all reasons for which a buyer was not billed for a winning bid.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListNonBillableWinningBidsRe... |
| `nonBillableWinningBidStatusRows` | `array<NonBillableWinningBidStatusRow>` | List of rows, with counts of bids not billed aggregated by reason. |

### `ListProductsResponse`

Response message for listing products visible to the buyer.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | List pagination support. |
| `products` | `array<Product>` | The list of matching products at their head revision number. |

### `ListProposalsResponse`

Response message for listing proposals.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |
| `proposals` | `array<Proposal>` | The list of proposals. |

### `ListPublisherProfilesResponse`

Response message for profiles visible to the buyer.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | List pagination support |
| `publisherProfiles` | `array<PublisherProfile>` | The list of matching publisher profiles. |

### `LocationContext`

Output only. The Geo criteria the restriction applies to.

| Property | Type | Description |
|----------|------|-------------|
| `geoCriteriaIds` | `array<integer>` | IDs representing the geo location for this context. Refer to the [geo-table.csv](https://storage.... |

### `MarketplaceTargeting`

Targeting represents different criteria that can be used by advertisers to target ad inventory. For example, they can choose to target ad requests only if the user is in the US. Multiple types of targeting are always applied as a logical AND, unless noted otherwise.

| Property | Type | Description |
|----------|------|-------------|
| `geoTargeting` | `CriteriaTargeting` | Geo criteria IDs to be included/excluded. |
| `inventorySizeTargeting` | `InventorySizeTargeting` | Inventory sizes to be included/excluded. |
| `placementTargeting` | `PlacementTargeting` | Placement targeting information, for example, URL, mobile applications. |
| `technologyTargeting` | `TechnologyTargeting` | Technology targeting information, for example, operating system, device category. |
| `videoTargeting` | `VideoTargeting` | Video targeting information. |

### `MetricValue`

A metric value, with an expected value and a variance; represents a count that may be either exact or estimated (for example, when sampled).

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | The expected value of the metric. |
| `variance` | `string` | The variance (for example, square of the standard deviation) of the metric value. If value is exa... |

### `MobileApplicationTargeting`

Mobile application targeting settings.

| Property | Type | Description |
|----------|------|-------------|
| `firstPartyTargeting` | `FirstPartyMobileApplicationTargeting` | Publisher owned apps to be targeted or excluded by the publisher to display the ads in. |

### `Money`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

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
| `storeUrl` | `string` | The URL to the app store to purchase/download the promoted app. |
| `videoUrl` | `string` | The URL to fetch a native video ad. |

### `NonBillableWinningBidStatusRow`

The number of winning bids with the specified dimension values for which the buyer was not billed, as described by the specified status.

| Property | Type | Description |
|----------|------|-------------|
| `bidCount` | `MetricValue` | The number of bids with the specified status. |
| `rowDimensions` | `RowDimensions` | The values of all dimensions associated with metric values in this row. |
| `status` | `string` | The status specifying why the winning bids were not billed. |

### `NonGuaranteedAuctionTerms`

Terms for Private Auctions. Note that Private Auctions can be created only by the seller, but they can be returned in a get or list request.

| Property | Type | Description |
|----------|------|-------------|
| `autoOptimizePrivateAuction` | `boolean` | True if open auction buyers are allowed to compete with invited buyers in this private auction. |
| `reservePricesPerBuyer` | `array<PricePerBuyer>` | Reserve price for the specified buyer. |

### `NonGuaranteedFixedPriceTerms`

Terms for Preferred Deals.

| Property | Type | Description |
|----------|------|-------------|
| `fixedPrices` | `array<PricePerBuyer>` | Fixed price for the specified buyer. |

### `Note`

A proposal may be associated to several notes.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp for when this note was created. |
| `creatorRole` | `string` | Output only. The role of the person (buyer/seller) creating the note. |
| `note` | `string` | The actual note to attach. (max-length: 1024 unicode code units) Note: This field may be set only... |
| `noteId` | `string` | Output only. The unique ID for the note. |
| `proposalRevision` | `string` | Output only. The revision number of the proposal when the note is created. |

### `OperatingSystemTargeting`

Represents targeting information for operating systems.

| Property | Type | Description |
|----------|------|-------------|
| `operatingSystemCriteria` | `CriteriaTargeting` | IDs of operating systems to be included/excluded. |
| `operatingSystemVersionCriteria` | `CriteriaTargeting` | IDs of operating system versions to be included/excluded. |

### `PauseProposalDealsRequest`

Request message to pause serving for finalized deals.

| Property | Type | Description |
|----------|------|-------------|
| `externalDealIds` | `array<string>` | The external_deal_id's of the deals to be paused. If empty, all the deals in the proposal will be... |
| `reason` | `string` | The reason why the deals are being paused. This human readable message will be displayed in the s... |

### `PauseProposalRequest`

Request message to pause serving for an already-finalized proposal.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | The reason why the proposal is being paused. This human readable message will be displayed in the... |

### `PlacementTargeting`

Represents targeting about where the ads can appear, for example, certain sites or mobile applications. Different placement targeting types will be logically OR'ed.

| Property | Type | Description |
|----------|------|-------------|
| `mobileApplicationTargeting` | `MobileApplicationTargeting` | Mobile application targeting information in a deal. This doesn't apply to Auction Packages. |
| `urlTargeting` | `UrlTargeting` | URLs to be included/excluded. |

### `PlatformContext`

Output only. The type of platform the restriction applies to.

| Property | Type | Description |
|----------|------|-------------|
| `platforms` | `array<string>` | The platforms this restriction applies to. |

### `Price`

Represents a price and a pricing type for a product / deal.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `Money` | The actual price with currency specified. |
| `pricingType` | `string` | The pricing type for the deal/product. (default: CPM) |

### `PricePerBuyer`

Used to specify pricing rules for buyers/advertisers. Each PricePerBuyer in a product can become 0 or 1 deals. To check if there is a PricePerBuyer for a particular buyer or buyer/advertiser pair, we look for the most specific matching rule - we first look for a rule matching the buyer and advertiser, next a rule with the buyer but an empty advertiser list, and otherwise look for a matching rule where no buyer is set.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserIds` | `array<string>` | The list of advertisers for this price when associated with this buyer. If empty, all advertisers... |
| `buyer` | `Buyer` | The buyer who will pay this price. If unset, all buyers can pay this price (if the advertisers ma... |
| `price` | `Price` | The specified price. |

### `PrivateData`

Buyers are allowed to store certain types of private data in a proposal/deal.

| Property | Type | Description |
|----------|------|-------------|
| `referenceId` | `string` | A buyer or seller specified reference ID. This can be queried in the list operations (max-length:... |

### `Product`

A product is a segment of inventory that a seller wants to sell. It is associated with certain terms and targeting information which helps the buyer know more about the inventory.

| Property | Type | Description |
|----------|------|-------------|
| `availableEndTime` | `string` | The proposed end time for the deal. The field will be truncated to the order of seconds during se... |
| `availableStartTime` | `string` | Inventory availability dates. The start time will be truncated to seconds during serving. Thus, a... |
| `createTime` | `string` | Creation time. |
| `creatorContacts` | `array<ContactInformation>` | Optional contact information for the creator of this product. |
| `displayName` | `string` | The display name for this product as set by the seller. |
| `hasCreatorSignedOff` | `boolean` | If the creator has already signed off on the product, then the buyer can finalize the deal by acc... |
| `productId` | `string` | The unique ID for the product. |
| `productRevision` | `string` | The revision number of the product (auto-assigned by Marketplace). |
| `publisherProfileId` | `string` | An ID which can be used by the Publisher Profile API to get more information about the seller tha... |
| `seller` | `Seller` | Information about the seller that created this product. |
| `syndicationProduct` | `string` | The syndication product associated with the deal. |
| `targetingCriterion` | `array<TargetingCriteria>` | Targeting that is shared between the buyer and the seller. Each targeting criterion has a specifi... |
| `terms` | `DealTerms` | The negotiable terms of the deal. |
| `updateTime` | `string` | Time of last update. |
| `webPropertyCode` | `string` | The web-property code for the seller. This needs to be copied as is when adding a new deal to a p... |

### `Proposal`

Represents a proposal in the Marketplace. A proposal is the unit of negotiation between a seller and a buyer and contains deals which are served. Note: You can't update, create, or otherwise modify Private Auction deals through the API. Fields are updatable unless noted otherwise.

| Property | Type | Description |
|----------|------|-------------|
| `billedBuyer` | `Buyer` | Output only. Reference to the buyer that will get billed for this proposal. |
| `buyer` | `Buyer` | Reference to the buyer on the proposal. Note: This field may be set only when creating the resour... |
| `buyerContacts` | `array<ContactInformation>` | Contact information for the buyer. |
| `buyerPrivateData` | `PrivateData` | Private data for buyer. (hidden from seller). |
| `deals` | `array<Deal>` | The deals associated with this proposal. For Private Auction proposals (whose deals have NonGuara... |
| `displayName` | `string` | The name for the proposal. |
| `isRenegotiating` | `boolean` | Output only. True if the proposal is being renegotiated. |
| `isSetupComplete` | `boolean` | Output only. True, if the buyside inventory setup is complete for this proposal. |
| `lastUpdaterOrCommentorRole` | `string` | Output only. The role of the last user that either updated the proposal or left a comment. |
| `notes` | `array<Note>` | Output only. The notes associated with this proposal. |
| `originatorRole` | `string` | Output only. Indicates whether the buyer/seller created the proposal. |
| `privateAuctionId` | `string` | Output only. Private auction ID if this proposal is a private auction proposal. |
| `proposalId` | `string` | Output only. The unique ID of the proposal. |
| `proposalRevision` | `string` | Output only. The revision number for the proposal. Each update to the proposal or the deal causes... |
| `proposalState` | `string` | Output only. The current state of the proposal. |
| `seller` | `Seller` | Reference to the seller on the proposal. Note: This field may be set only when creating the resou... |
| `sellerContacts` | `array<ContactInformation>` | Output only. Contact information for the seller. |
| `termsAndConditions` | `string` | Output only. The terms and conditions set by the publisher for this proposal. |
| `updateTime` | `string` | Output only. The time when the proposal was last revised. |

### `PublisherProfile`

Represents a publisher profile (https://support.google.com/admanager/answer/6035806) in Marketplace. All fields are read only. All string fields are free-form text entered by the publisher unless noted otherwise.

| Property | Type | Description |
|----------|------|-------------|
| `audienceDescription` | `string` | Description on the publisher's audience. |
| `buyerPitchStatement` | `string` | Statement explaining what's unique about publisher's business, and why buyers should partner with... |
| `directDealsContact` | `string` | Contact information for direct reservation deals. This is free text entered by the publisher and ... |
| `displayName` | `string` | Name of the publisher profile. |
| `domains` | `array<string>` | The list of domains represented in this publisher profile. Empty if this is a parent profile. The... |
| `googlePlusUrl` | `string` | URL to publisher's Google+ page. |
| `isParent` | `boolean` | Indicates if this profile is the parent profile of the seller. A parent profile represents all th... |
| `logoUrl` | `string` | A Google public URL to the logo for this publisher profile. The logo is stored as a PNG, JPG, or ... |
| `mediaKitUrl` | `string` | URL to additional marketing and sales materials. |
| `mobileApps` | `array<PublisherProfileMobileApplication>` | The list of apps represented in this publisher profile. Empty if this is a parent profile. |
| `overview` | `string` | Overview of the publisher. |
| `programmaticDealsContact` | `string` | Contact information for programmatic deals. This is free text entered by the publisher and may in... |
| `publisherProfileId` | `string` | Unique ID for publisher profile. |
| `rateCardInfoUrl` | `string` | URL to a publisher rate card. |
| `samplePageUrl` | `string` | URL to a sample content page. |
| `seller` | `Seller` | Seller of the publisher profile. |
| `topHeadlines` | `array<string>` | Up to three key metrics and rankings. Max 100 characters each. For example "#1 Mobile News Site f... |

### `PublisherProfileMobileApplication`

A mobile application that contains a external app ID, name, and app store.

| Property | Type | Description |
|----------|------|-------------|
| `appStore` | `string` | The app store the app belongs to. |
| `externalAppId` | `string` | The external ID for the app from its app store. |
| `name` | `string` | The name of the app. |

### `RealtimeTimeRange`

An open-ended realtime time range specified by the start timestamp. For filter sets that specify a realtime time range RTB metrics continue to be aggregated throughout the lifetime of the filter set.

| Property | Type | Description |
|----------|------|-------------|
| `startTimestamp` | `string` | The start timestamp of the real-time RTB metrics aggregation. |

### `RelativeDateRange`

A relative date range, specified by an offset and a duration. The supported range of dates begins 30 days before today and ends today, for example, the limits for these values are: offset_days >= 0 duration_days >= 1 offset_days + duration_days <= 30

| Property | Type | Description |
|----------|------|-------------|
| `durationDays` | `integer` | The number of days in the requested date range, for example, for a range spanning today: 1. For a... |
| `offsetDays` | `integer` | The end date of the filter set, specified as the number of days before today, for example, for a ... |

### `RemoveDealAssociationRequest`

A request for removing the association between a deal and a creative.

| Property | Type | Description |
|----------|------|-------------|
| `association` | `CreativeDealAssociation` | The association between a creative and a deal that should be removed. |

### `ResumeProposalDealsRequest`

Request message to resume (unpause) serving for already-finalized deals.

| Property | Type | Description |
|----------|------|-------------|
| `externalDealIds` | `array<string>` | The external_deal_id's of the deals to resume. If empty, all the deals in the proposal will be re... |

### `ResumeProposalRequest`

Request message to resume (unpause) serving for an already-finalized proposal.

### `RowDimensions`

A response may include multiple rows, breaking down along various dimensions. Encapsulates the values of all dimensions for a given row.

| Property | Type | Description |
|----------|------|-------------|
| `publisherIdentifier` | `string` | The publisher identifier for this row, if a breakdown by [BreakdownDimension.PUBLISHER_IDENTIFIER... |
| `timeInterval` | `TimeInterval` | The time interval that this row represents. |

### `SecurityContext`

Output only. A security context.

| Property | Type | Description |
|----------|------|-------------|
| `securities` | `array<string>` | The security types in this context. |

### `Seller`

Represents a seller of inventory. Each seller is identified by a unique Ad Manager account ID.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The unique ID for the seller. The seller fills in this field. The seller account ID is then avail... |
| `subAccountId` | `string` | Output only. Ad manager network code for the seller. |

### `ServingContext`

The serving context for this restriction.

| Property | Type | Description |
|----------|------|-------------|
| `all` | `string` | Matches all contexts. |
| `appType` | `AppContext` | Matches impressions for a particular app type. |
| `auctionType` | `AuctionContext` | Matches impressions for a particular auction type. |
| `location` | `LocationContext` | Matches impressions coming from users *or* publishers in a specific location. |
| `platform` | `PlatformContext` | Matches impressions coming from a particular platform. |
| `securityType` | `SecurityContext` | Matches impressions for a particular security type. |

### `ServingRestriction`

Output only. A representation of the status of an ad in a specific context. A context here relates to where something ultimately serves (for example, a user or publisher geo, a platform, an HTTPS versus HTTP request, or the type of auction).

| Property | Type | Description |
|----------|------|-------------|
| `contexts` | `array<ServingContext>` | The contexts for the restriction. |
| `disapproval` | `Disapproval` | Disapproval bound to this restriction. Only present if status=DISAPPROVED. Can be used to filter ... |
| `disapprovalReasons` | `array<Disapproval>` | Any disapprovals bound to this restriction. Only present if status=DISAPPROVED. Can be used to fi... |
| `status` | `string` | The status of the creative in this context (for example, it has been explicitly disapproved or is... |

### `Size`

Message depicting the size of the creative. The units of width and height depend on the type of the targeting.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | The height of the creative. |
| `width` | `integer` | The width of the creative |

### `StopWatchingCreativeRequest`

A request for stopping notifications for changes to creative Status.

### `TargetingCriteria`

Advertisers can target different attributes of an ad slot. For example, they can choose to show ads only if the user is in the U.S. Such targeting criteria can be specified as part of Shared Targeting.

| Property | Type | Description |
|----------|------|-------------|
| `exclusions` | `array<TargetingValue>` | The list of values to exclude from targeting. Each value is AND'd together. |
| `inclusions` | `array<TargetingValue>` | The list of value to include as part of the targeting. Each value is OR'd together. |
| `key` | `string` | The key representing the shared targeting criterion. Targeting criteria defined by Google ad serv... |

### `TargetingValue`

A polymorphic targeting value used as part of Shared Targeting.

| Property | Type | Description |
|----------|------|-------------|
| `creativeSizeValue` | `CreativeSize` | The creative size value to include/exclude. Filled in when key = GOOG_CREATIVE_SIZE |
| `dayPartTargetingValue` | `DayPartTargeting` | The daypart targeting to include / exclude. Filled in when the key is GOOG_DAYPART_TARGETING. The... |
| `longValue` | `string` | The long value to include/exclude. |
| `stringValue` | `string` | The string value to include/exclude. |

### `TechnologyTargeting`

Represents targeting about various types of technology.

| Property | Type | Description |
|----------|------|-------------|
| `deviceCapabilityTargeting` | `CriteriaTargeting` | IDs of device capabilities to be included/excluded. |
| `deviceCategoryTargeting` | `CriteriaTargeting` | IDs of device categories to be included/excluded. |
| `operatingSystemTargeting` | `OperatingSystemTargeting` | Operating system related targeting information. |

### `TimeInterval`

An interval of time, with an absolute start and end.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The timestamp marking the end of the range (exclusive) for which data is included. |
| `startTime` | `string` | The timestamp marking the start of the range (inclusive) for which data is included. |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `UrlTargeting`

Represents a list of targeted and excluded URLs (for example, google.com). For Private Auction and AdX Preferred Deals, URLs are either included or excluded. For Programmatic Guaranteed and Preferred Deals, this doesn't apply.

| Property | Type | Description |
|----------|------|-------------|
| `excludedUrls` | `array<string>` | A list of URLs to be excluded. |
| `targetedUrls` | `array<string>` | A list of URLs to be included. |

### `VideoContent`

Video content for a creative.

| Property | Type | Description |
|----------|------|-------------|
| `videoUrl` | `string` | The URL to fetch a video ad. |
| `videoVastXml` | `string` | The contents of a VAST document for a video ad. This document should conform to the VAST 2.0 or 3... |

### `VideoTargeting`

Represents targeting information about video.

| Property | Type | Description |
|----------|------|-------------|
| `excludedPositionTypes` | `array<string>` | A list of video positions to be excluded. Position types can either be included or excluded (XOR). |
| `targetedPositionTypes` | `array<string>` | A list of video positions to be included. When the included list is present, the excluded list mu... |

### `WatchCreativeRequest`

A request for watching changes to creative Status.

| Property | Type | Description |
|----------|------|-------------|
| `topic` | `string` | The Pub/Sub topic to publish notifications to. This topic must already exist and must give permis... |

