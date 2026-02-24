# Authorized Buyers Marketplace API - API Reference

**Version**: `v1` | **Methods**: 40 | **Schemas**: 65

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `authorizedbuyersmarketplace.buyers.auctionPackages.get` | GET | `v1/{+name}` | Gets an auction package given its name. |
| `authorizedbuyersmarketplace.buyers.auctionPackages.list` | GET | `v1/{+parent}/auctionPackages` | List the auction packages. Buyers can use the URL path "/v1/buyers/{accountId}/auctionPackages" t... |
| `authorizedbuyersmarketplace.buyers.auctionPackages.subscribe` | POST | `v1/{+name}:subscribe` | Subscribe to the auction package for the specified buyer. Once subscribed, the bidder will receiv... |
| `authorizedbuyersmarketplace.buyers.auctionPackages.unsubscribe` | POST | `v1/{+name}:unsubscribe` | Unsubscribe from the auction package for the specified buyer. Once unsubscribed, the bidder will ... |
| `authorizedbuyersmarketplace.buyers.auctionPackages.subscribeClients` | POST | `v1/{+auctionPackage}:subscribeClients` | Subscribe the specified clients of the buyer to the auction package. If a client in the list does... |
| `authorizedbuyersmarketplace.buyers.auctionPackages.unsubscribeClients` | POST | `v1/{+auctionPackage}:unsubscribeClients` | Unsubscribe from the auction package for the specified clients of the buyer. Unsubscribing a clie... |
| `authorizedbuyersmarketplace.buyers.clients.get` | GET | `v1/{+name}` | Gets a client with a given resource name. |
| `authorizedbuyersmarketplace.buyers.clients.list` | GET | `v1/{+parent}/clients` | Lists all the clients for the current buyer. |
| `authorizedbuyersmarketplace.buyers.clients.create` | POST | `v1/{+parent}/clients` | Creates a new client. |
| `authorizedbuyersmarketplace.buyers.clients.patch` | PATCH | `v1/{+name}` | Updates an existing client. |
| `authorizedbuyersmarketplace.buyers.clients.activate` | POST | `v1/{+name}:activate` | Activates an existing client. The state of the client will be updated to "ACTIVE". This method ha... |
| `authorizedbuyersmarketplace.buyers.clients.deactivate` | POST | `v1/{+name}:deactivate` | Deactivates an existing client. The state of the client will be updated to "INACTIVE". This metho... |
| `authorizedbuyersmarketplace.buyers.clients.users.get` | GET | `v1/{+name}` | Retrieves an existing client user. |
| `authorizedbuyersmarketplace.buyers.clients.users.list` | GET | `v1/{+parent}/users` | Lists all client users for a specified client. |
| `authorizedbuyersmarketplace.buyers.clients.users.create` | POST | `v1/{+parent}/users` | Creates a new client user in "INVITED" state. An email invitation will be sent to the new user, o... |
| `authorizedbuyersmarketplace.buyers.clients.users.delete` | DELETE | `v1/{+name}` | Deletes an existing client user. The client user will lose access to the Authorized Buyers UI. No... |
| `authorizedbuyersmarketplace.buyers.clients.users.activate` | POST | `v1/{+name}:activate` | Activates an existing client user. The state of the client user will be updated from "INACTIVE" t... |
| `authorizedbuyersmarketplace.buyers.clients.users.deactivate` | POST | `v1/{+name}:deactivate` | Deactivates an existing client user. The state of the client user will be updated from "ACTIVE" t... |
| `authorizedbuyersmarketplace.buyers.finalizedDeals.get` | GET | `v1/{+name}` | Gets a finalized deal given its name. |
| `authorizedbuyersmarketplace.buyers.finalizedDeals.list` | GET | `v1/{+parent}/finalizedDeals` | Lists finalized deals. Use the URL path "/v1/buyers/{accountId}/finalizedDeals" to list finalized... |
| `authorizedbuyersmarketplace.buyers.finalizedDeals.pause` | POST | `v1/{+name}:pause` | Pauses serving of the given finalized deal. This call only pauses the serving status, and does no... |
| `authorizedbuyersmarketplace.buyers.finalizedDeals.resume` | POST | `v1/{+name}:resume` | Resumes serving of the given finalized deal. Calling this method for an running deal has no effec... |
| `authorizedbuyersmarketplace.buyers.finalizedDeals.addCreative` | POST | `v1/{+deal}:addCreative` | Add creative to be used in the bidding process for a finalized deal. For programmatic guaranteed ... |
| `authorizedbuyersmarketplace.buyers.finalizedDeals.setReadyToServe` | POST | `v1/{+deal}:setReadyToServe` | Sets the given finalized deal as ready to serve. By default, deals are set as ready to serve as s... |
| `authorizedbuyersmarketplace.buyers.proposals.get` | GET | `v1/{+name}` | Gets a proposal using its resource name. The proposal is returned at the latest revision. |
| `authorizedbuyersmarketplace.buyers.proposals.patch` | PATCH | `v1/{+name}` | Updates the proposal at the given revision number. If the revision number in the request is behin... |
| `authorizedbuyersmarketplace.buyers.proposals.list` | GET | `v1/{+parent}/proposals` | Lists proposals. A filter expression using [Cloud API list filtering syntax](https://developers.g... |
| `authorizedbuyersmarketplace.buyers.proposals.cancelNegotiation` | POST | `v1/{+proposal}:cancelNegotiation` | Cancels an ongoing negotiation on a proposal. This does not cancel or end serving for the deals i... |
| `authorizedbuyersmarketplace.buyers.proposals.accept` | POST | `v1/{+name}:accept` | Accepts the proposal at the given revision number. If the revision number in the request is behin... |
| `authorizedbuyersmarketplace.buyers.proposals.addNote` | POST | `v1/{+proposal}:addNote` | Creates a note for this proposal and sends to the seller. This method is not supported for propos... |
| `authorizedbuyersmarketplace.buyers.proposals.sendRfp` | POST | `v1/{+buyer}/proposals:sendRfp` | Sends a request for proposal (RFP) to a publisher to initiate the negotiation regarding certain i... |
| `authorizedbuyersmarketplace.buyers.proposals.deals.get` | GET | `v1/{+name}` | Gets a deal given its name. The deal is returned at its head revision. |
| `authorizedbuyersmarketplace.buyers.proposals.deals.patch` | PATCH | `v1/{+name}` | Updates the given deal at the buyer known revision number. If the server revision has advanced si... |
| `authorizedbuyersmarketplace.buyers.proposals.deals.batchUpdate` | POST | `v1/{+parent}/deals:batchUpdate` | Batch updates multiple deals in the same proposal. |
| `authorizedbuyersmarketplace.buyers.proposals.deals.list` | GET | `v1/{+parent}/deals` | Lists all deals in a proposal. To retrieve only the finalized revision deals regardless if a deal... |
| `authorizedbuyersmarketplace.buyers.publisherProfiles.get` | GET | `v1/{+name}` | Gets the requested publisher profile by name. |
| `authorizedbuyersmarketplace.buyers.publisherProfiles.list` | GET | `v1/{+parent}/publisherProfiles` | Lists publisher profiles. The returned publisher profiles aren't in any defined order. The order ... |
| `authorizedbuyersmarketplace.bidders.auctionPackages.list` | GET | `v1/{+parent}/auctionPackages` | List the auction packages. Buyers can use the URL path "/v1/buyers/{accountId}/auctionPackages" t... |
| `authorizedbuyersmarketplace.bidders.finalizedDeals.list` | GET | `v1/{+parent}/finalizedDeals` | Lists finalized deals. Use the URL path "/v1/buyers/{accountId}/finalizedDeals" to list finalized... |
| `authorizedbuyersmarketplace.bidders.finalizedDeals.setReadyToServe` | POST | `v1/{+deal}:setReadyToServe` | Sets the given finalized deal as ready to serve. By default, deals are set as ready to serve as s... |

### `authorizedbuyersmarketplace.buyers.auctionPackages.get`

**GET** `v1/{+name}`

Gets an auction package given its name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of auction package to get. Format: `buyers/{accountId}/auctionPackages/{auctionPackageId}` |

**Response**: `AuctionPackage`

```typescript
const res = await authorizedbuyersmarketplace.auctionPackages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.auctionPackages.list`

**GET** `v1/{+parent}/auctionPackages`

List the auction packages. Buyers can use the URL path "/v1/buyers/{accountId}/auctionPackages" to list auction packages for the current buyer and its clients. Bidders can use the URL path "/v1/bidders/{accountId}/auctionPackages" to list auction packages for the bidder, its media planners, its buyers, and all their clients.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent buyer that can access the auction package. Format: `buyers/{accountId}`. When used with ... |
| `filter` | `string` | query | No | Optional. Optional query string using the [Cloud API list filtering syntax](/authorized-buyers/apis/guides/list-filte... |
| `orderBy` | `string` | query | No | Optional. An optional query string to sort auction packages using the [Cloud API sorting syntax](https://cloud.google... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. Max allowed page size is 500. |
| `pageToken` | `string` | query | No | The page token as returned. ListAuctionPackagesResponse.nextPageToken |

**Response**: `ListAuctionPackagesResponse`

```typescript
const res = await authorizedbuyersmarketplace.auctionPackages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.auctionPackages.subscribe`

**POST** `v1/{+name}:subscribe`

Subscribe to the auction package for the specified buyer. Once subscribed, the bidder will receive a call out for inventory matching the auction package targeting criteria with the auction package deal ID and the specified buyer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the auction package. Format: `buyers/{accountId}/auctionPackages/{auctionPackageId}` |

**Request body**: `SubscribeAuctionPackageRequest`

**Response**: `AuctionPackage`

```typescript
const res = await authorizedbuyersmarketplace.auctionPackages.subscribe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.auctionPackages.unsubscribe`

**POST** `v1/{+name}:unsubscribe`

Unsubscribe from the auction package for the specified buyer. Once unsubscribed, the bidder will no longer receive a call out for the auction package deal ID and the specified buyer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the auction package. Format: `buyers/{accountId}/auctionPackages/{auctionPackageId}` |

**Request body**: `UnsubscribeAuctionPackageRequest`

**Response**: `AuctionPackage`

```typescript
const res = await authorizedbuyersmarketplace.auctionPackages.unsubscribe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.auctionPackages.subscribeClients`

**POST** `v1/{+auctionPackage}:subscribeClients`

Subscribe the specified clients of the buyer to the auction package. If a client in the list does not belong to the buyer, an error response will be returned, and all of the following clients in the list will not be subscribed. Subscribing an already subscribed client will have no effect.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `auctionPackage` | `string` | path | Yes | Required. Name of the auction package. Format: `buyers/{accountId}/auctionPackages/{auctionPackageId}` |

**Request body**: `SubscribeClientsRequest`

**Response**: `AuctionPackage`

```typescript
const res = await authorizedbuyersmarketplace.auctionPackages.subscribeClients({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.auctionPackages.unsubscribeClients`

**POST** `v1/{+auctionPackage}:unsubscribeClients`

Unsubscribe from the auction package for the specified clients of the buyer. Unsubscribing a client that is not subscribed will have no effect.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `auctionPackage` | `string` | path | Yes | Required. Name of the auction package. Format: `buyers/{accountId}/auctionPackages/{auctionPackageId}` |

**Request body**: `UnsubscribeClientsRequest`

**Response**: `AuctionPackage`

```typescript
const res = await authorizedbuyersmarketplace.auctionPackages.unsubscribeClients({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.clients.get`

**GET** `v1/{+name}`

Gets a client with a given resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `buyers/{accountId}/clients/{clientAccountId}` |

**Response**: `Client`

```typescript
const res = await authorizedbuyersmarketplace.clients.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.clients.list`

**GET** `v1/{+parent}/clients`

Lists all the clients for the current buyer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the buyer. Format: `buyers/{accountId}` |
| `filter` | `string` | query | No | Query string using the [Filtering Syntax](https://developers.google.com/authorized-buyers/apis/guides/list-filters) S... |
| `pageSize` | `integer` | query | No | Requested page size. If left blank, a default page size of 500 will be applied. |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListClientsResponse.n... |

**Response**: `ListClientsResponse`

```typescript
const res = await authorizedbuyersmarketplace.clients.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.clients.create`

**POST** `v1/{+parent}/clients`

Creates a new client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the buyer. Format: `buyers/{accountId}` |

**Request body**: `Client`

**Response**: `Client`

```typescript
const res = await authorizedbuyersmarketplace.clients.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.clients.patch`

**PATCH** `v1/{+name}`

Updates an existing client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the client. Format: `buyers/{accountId}/clients/{clientAccountId}` |
| `updateMask` | `string` | query | No | List of fields to be updated. If empty or unspecified, the service will update all fields populated in the update req... |

**Request body**: `Client`

**Response**: `Client`

```typescript
const res = await authorizedbuyersmarketplace.clients.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.clients.activate`

**POST** `v1/{+name}:activate`

Activates an existing client. The state of the client will be updated to "ACTIVE". This method has no effect if the client is already in "ACTIVE" state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}` |

**Request body**: `ActivateClientRequest`

**Response**: `Client`

```typescript
const res = await authorizedbuyersmarketplace.clients.activate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.clients.deactivate`

**POST** `v1/{+name}:deactivate`

Deactivates an existing client. The state of the client will be updated to "INACTIVE". This method has no effect if the client is already in "INACTIVE" state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}` |

**Request body**: `DeactivateClientRequest`

**Response**: `Client`

```typescript
const res = await authorizedbuyersmarketplace.clients.deactivate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.clients.users.get`

**GET** `v1/{+name}`

Retrieves an existing client user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}/clientUsers/{userId}` |

**Response**: `ClientUser`

```typescript
const res = await authorizedbuyersmarketplace.users.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.clients.users.list`

**GET** `v1/{+parent}/users`

Lists all client users for a specified client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the client. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}` |
| `pageSize` | `integer` | query | No | Requested page size. If left blank, a default page size of 500 will be applied. |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListClientUsersRespon... |

**Response**: `ListClientUsersResponse`

```typescript
const res = await authorizedbuyersmarketplace.users.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.clients.users.create`

**POST** `v1/{+parent}/users`

Creates a new client user in "INVITED" state. An email invitation will be sent to the new user, once accepted the user will become active.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the client. Format: `buyers/{accountId}/clients/{clientAccountId}` |

**Request body**: `ClientUser`

**Response**: `ClientUser`

```typescript
const res = await authorizedbuyersmarketplace.users.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.clients.users.delete`

**DELETE** `v1/{+name}`

Deletes an existing client user. The client user will lose access to the Authorized Buyers UI. Note that if a client user is deleted, the user's access to the UI can't be restored unless a new client user is created and activated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}/clientUsers/{userId}` |

**Response**: `Empty`

```typescript
const res = await authorizedbuyersmarketplace.users.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.clients.users.activate`

**POST** `v1/{+name}:activate`

Activates an existing client user. The state of the client user will be updated from "INACTIVE" to "ACTIVE". This method has no effect if the client user is already in "ACTIVE" state. An error will be returned if the client user to activate is still in "INVITED" state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}/clientUsers/{userId}` |

**Request body**: `ActivateClientUserRequest`

**Response**: `ClientUser`

```typescript
const res = await authorizedbuyersmarketplace.users.activate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.clients.users.deactivate`

**POST** `v1/{+name}:deactivate`

Deactivates an existing client user. The state of the client user will be updated from "ACTIVE" to "INACTIVE". This method has no effect if the client user is already in "INACTIVE" state. An error will be returned if the client user to deactivate is still in "INVITED" state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}/clientUsers/{userId}` |

**Request body**: `DeactivateClientUserRequest`

**Response**: `ClientUser`

```typescript
const res = await authorizedbuyersmarketplace.users.deactivate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.finalizedDeals.get`

**GET** `v1/{+name}`

Gets a finalized deal given its name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `buyers/{accountId}/finalizedDeals/{dealId}` |

**Response**: `FinalizedDeal`

```typescript
const res = await authorizedbuyersmarketplace.finalizedDeals.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.finalizedDeals.list`

**GET** `v1/{+parent}/finalizedDeals`

Lists finalized deals. Use the URL path "/v1/buyers/{accountId}/finalizedDeals" to list finalized deals for the current buyer and its clients. Bidders can use the URL path "/v1/bidders/{accountId}/finalizedDeals" to list finalized deals for the bidder, its buyers and all their clients.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The buyer to list the finalized deals for, in the format: `buyers/{accountId}`. When used to list finalized... |
| `filter` | `string` | query | No | Optional query string using the [Cloud API list filtering syntax](https://developers.google.com/authorized-buyers/api... |
| `orderBy` | `string` | query | No | An optional query string to sort finalized deals using the [Cloud API sorting syntax](https://cloud.google.com/apis/d... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If requested more than 500, the server will ... |
| `pageToken` | `string` | query | No | The page token as returned from ListFinalizedDealsResponse. |

**Response**: `ListFinalizedDealsResponse`

```typescript
const res = await authorizedbuyersmarketplace.finalizedDeals.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.finalizedDeals.pause`

**POST** `v1/{+name}:pause`

Pauses serving of the given finalized deal. This call only pauses the serving status, and does not affect other fields of the finalized deal. Calling this method for an already paused deal has no effect. This method only applies to programmatic guaranteed deals and preferred deals.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `buyers/{accountId}/finalizedDeals/{dealId}` |

**Request body**: `PauseFinalizedDealRequest`

**Response**: `FinalizedDeal`

```typescript
const res = await authorizedbuyersmarketplace.finalizedDeals.pause({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.finalizedDeals.resume`

**POST** `v1/{+name}:resume`

Resumes serving of the given finalized deal. Calling this method for an running deal has no effect. If a deal is initially paused by the seller, calling this method will not resume serving of the deal until the seller also resumes the deal. This method only applies to programmatic guaranteed deals and preferred deals.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `buyers/{accountId}/finalizedDeals/{dealId}` |

**Request body**: `ResumeFinalizedDealRequest`

**Response**: `FinalizedDeal`

```typescript
const res = await authorizedbuyersmarketplace.finalizedDeals.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.finalizedDeals.addCreative`

**POST** `v1/{+deal}:addCreative`

Add creative to be used in the bidding process for a finalized deal. For programmatic guaranteed deals, it's recommended that you associate at least one approved creative with the deal before calling SetReadyToServe, to help reduce the number of bid responses filtered because they don't contain approved creatives. Creatives successfully added to a deal can be found in the Realtime-bidding Creatives API creative.deal_ids. This method only applies to programmatic guaranteed deals. Maximum number of 1000 creatives can be added to a finalized deal.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `deal` | `string` | path | Yes | Required. Name of the finalized deal in the format of: `buyers/{accountId}/finalizedDeals/{dealId}` |

**Request body**: `AddCreativeRequest`

**Response**: `FinalizedDeal`

```typescript
const res = await authorizedbuyersmarketplace.finalizedDeals.addCreative({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.finalizedDeals.setReadyToServe`

**POST** `v1/{+deal}:setReadyToServe`

Sets the given finalized deal as ready to serve. By default, deals are set as ready to serve as soon as they're finalized. If you want to opt out of the default behavior, and manually indicate that deals are ready to serve, ask your Technical Account Manager to add you to the allowlist. If you choose to use this method, finalized deals belonging to the bidder and its child seats don't start serving until after you call `setReadyToServe`, and after the deals become active. For example, you can use this method to delay receiving bid requests until your creative is ready. In addition, bidders can use the URL path "/v1/bidders/{accountId}/finalizedDeals/{dealId}" to set ready to serve for the finalized deals belong to itself, its child seats and all their clients. This method only applies to programmatic guaranteed deals.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `deal` | `string` | path | Yes | Required. Format: `buyers/{accountId}/finalizedDeals/{dealId}` or `bidders/{accountId}/finalizedDeals/{dealId}` |

**Request body**: `SetReadyToServeRequest`

**Response**: `FinalizedDeal`

```typescript
const res = await authorizedbuyersmarketplace.finalizedDeals.setReadyToServe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.proposals.get`

**GET** `v1/{+name}`

Gets a proposal using its resource name. The proposal is returned at the latest revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the proposal. Format: `buyers/{accountId}/proposals/{proposalId}` |

**Response**: `Proposal`

```typescript
const res = await authorizedbuyersmarketplace.proposals.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.proposals.patch`

**PATCH** `v1/{+name}`

Updates the proposal at the given revision number. If the revision number in the request is behind the latest one kept in the server, an error message will be returned. See FieldMask for how to use FieldMask. Only fields specified in the UpdateProposalRequest.update_mask will be updated; Fields noted as 'Immutable' or 'Output only' yet specified in the UpdateProposalRequest.update_mask will be ignored and left unchanged. Updating a private auction proposal is only allowed for buyer private data, all other fields are immutable.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The name of the proposal serving as a unique identifier. Format: buyers/{accountId}/proposals/{proposalId} |
| `updateMask` | `string` | query | No | List of fields to be updated. If empty or unspecified, the service will update all fields populated in the update req... |

**Request body**: `Proposal`

**Response**: `Proposal`

```typescript
const res = await authorizedbuyersmarketplace.proposals.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.proposals.list`

**GET** `v1/{+parent}/proposals`

Lists proposals. A filter expression using [Cloud API list filtering syntax](https://developers.google.com/authorized-buyers/apis/guides/list-filters) may be specified to filter the results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent that owns the collection of proposals Format: `buyers/{accountId}` |
| `filter` | `string` | query | No | Optional query string using the [Cloud API list filtering syntax](https://developers.google.com/authorized-buyers/api... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will put a size o... |
| `pageToken` | `string` | query | No | The page token as returned from ListProposalsResponse. |

**Response**: `ListProposalsResponse`

```typescript
const res = await authorizedbuyersmarketplace.proposals.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.proposals.cancelNegotiation`

**POST** `v1/{+proposal}:cancelNegotiation`

Cancels an ongoing negotiation on a proposal. This does not cancel or end serving for the deals if the proposal has been finalized. If the proposal has not been finalized before, calling this method will set the Proposal.state to `TERMINATED` and increment the Proposal.proposal_revision. If the proposal has been finalized before and is under renegotiation now, calling this method will reset the Proposal.state to `FINALIZED` and increment the Proposal.proposal_revision. This method does not support private auction proposals whose Proposal.deal_type is 'PRIVATE_AUCTION'.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `proposal` | `string` | path | Yes | Name of the proposal. Format: `buyers/{accountId}/proposals/{proposalId}` |

**Request body**: `CancelNegotiationRequest`

**Response**: `Proposal`

```typescript
const res = await authorizedbuyersmarketplace.proposals.cancelNegotiation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.proposals.accept`

**POST** `v1/{+name}:accept`

Accepts the proposal at the given revision number. If the revision number in the request is behind the latest from the server, an error message will be returned. This call updates the Proposal.state from `BUYER_ACCEPTANCE_REQUESTED` to `FINALIZED`; it has no side effect if the Proposal.state is already `FINALIZED` and throws exception if the Proposal.state is not either `BUYER_ACCEPTANCE_REQUESTED` or `FINALIZED`. Accepting a proposal means the buyer understands and accepts the Proposal.terms_and_conditions proposed by the seller.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the proposal. Format: `buyers/{accountId}/proposals/{proposalId}` |

**Request body**: `AcceptProposalRequest`

**Response**: `Proposal`

```typescript
const res = await authorizedbuyersmarketplace.proposals.accept({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.proposals.addNote`

**POST** `v1/{+proposal}:addNote`

Creates a note for this proposal and sends to the seller. This method is not supported for proposals with DealType set to 'PRIVATE_AUCTION'.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `proposal` | `string` | path | Yes | Name of the proposal. Format: `buyers/{accountId}/proposals/{proposalId}` |

**Request body**: `AddNoteRequest`

**Response**: `Proposal`

```typescript
const res = await authorizedbuyersmarketplace.proposals.addNote({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.proposals.sendRfp`

**POST** `v1/{+buyer}/proposals:sendRfp`

Sends a request for proposal (RFP) to a publisher to initiate the negotiation regarding certain inventory. In the RFP, buyers can specify the deal type, deal terms, start and end dates, targeting, and a message to the publisher. Once the RFP is sent, a proposal in `SELLER_REVIEW_REQUESTED` state will be created and returned in the response. The publisher may review your request and respond with detailed deals in the proposal.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `buyer` | `string` | path | Yes | Required. The current buyer who is sending the RFP in the format: `buyers/{accountId}`. |

**Request body**: `SendRfpRequest`

**Response**: `Proposal`

```typescript
const res = await authorizedbuyersmarketplace.proposals.sendRfp({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.proposals.deals.get`

**GET** `v1/{+name}`

Gets a deal given its name. The deal is returned at its head revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: buyers/{accountId}/proposals/{proposalId}/deals/{dealId} |

**Response**: `Deal`

```typescript
const res = await authorizedbuyersmarketplace.deals.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.proposals.deals.patch`

**PATCH** `v1/{+name}`

Updates the given deal at the buyer known revision number. If the server revision has advanced since the passed-in proposal.proposal_revision an ABORTED error message will be returned. The revision number is incremented by the server whenever the proposal or its constituent deals are updated. Note: The revision number is kept at a proposal level. The buyer of the API is expected to keep track of the revision number after the last update operation and send it in as part of the next update request. This way, if there are further changes on the server (for example, seller making new updates), then the server can detect conflicts and reject the proposed changes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The unique identifier of the deal. Auto-generated by the server when a deal is created. Format: buyers/{ac... |
| `updateMask` | `string` | query | No | List of fields to be updated. If empty or unspecified, the service will update all fields populated in the update req... |

**Request body**: `Deal`

**Response**: `Deal`

```typescript
const res = await authorizedbuyersmarketplace.deals.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.proposals.deals.batchUpdate`

**POST** `v1/{+parent}/deals:batchUpdate`

Batch updates multiple deals in the same proposal.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the proposal containing the deals to batch update. Format: buyers/{accountId}/proposals/{propos... |

**Request body**: `BatchUpdateDealsRequest`

**Response**: `BatchUpdateDealsResponse`

```typescript
const res = await authorizedbuyersmarketplace.deals.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.proposals.deals.list`

**GET** `v1/{+parent}/deals`

Lists all deals in a proposal. To retrieve only the finalized revision deals regardless if a deal is being renegotiated, see the FinalizedDeals resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the proposal containing the deals to retrieve. Format: buyers/{accountId}/proposals/{proposalId} |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If requested more than 500, the server will ... |
| `pageToken` | `string` | query | No | The page token as returned from ListDealsResponse. |

**Response**: `ListDealsResponse`

```typescript
const res = await authorizedbuyersmarketplace.deals.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.publisherProfiles.get`

**GET** `v1/{+name}`

Gets the requested publisher profile by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the publisher profile. Format: `buyers/{buyerId}/publisherProfiles/{publisherProfileId}` |

**Response**: `PublisherProfile`

```typescript
const res = await authorizedbuyersmarketplace.publisherProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.buyers.publisherProfiles.list`

**GET** `v1/{+parent}/publisherProfiles`

Lists publisher profiles. The returned publisher profiles aren't in any defined order. The order of the results might change. A new publisher profile can appear in any place in the list of returned results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent that owns the collection of publisher profiles Format: `buyers/{buyerId}` |
| `filter` | `string` | query | No | Optional query string using the [Cloud API list filtering] (https://developers.google.com/authorized-buyers/apis/guid... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If requested more than 500, the server will ... |
| `pageToken` | `string` | query | No | The page token as returned from a previous ListPublisherProfilesResponse. |

**Response**: `ListPublisherProfilesResponse`

```typescript
const res = await authorizedbuyersmarketplace.publisherProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.bidders.auctionPackages.list`

**GET** `v1/{+parent}/auctionPackages`

List the auction packages. Buyers can use the URL path "/v1/buyers/{accountId}/auctionPackages" to list auction packages for the current buyer and its clients. Bidders can use the URL path "/v1/bidders/{accountId}/auctionPackages" to list auction packages for the bidder, its media planners, its buyers, and all their clients.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent buyer that can access the auction package. Format: `buyers/{accountId}`. When used with ... |
| `filter` | `string` | query | No | Optional. Optional query string using the [Cloud API list filtering syntax](/authorized-buyers/apis/guides/list-filte... |
| `orderBy` | `string` | query | No | Optional. An optional query string to sort auction packages using the [Cloud API sorting syntax](https://cloud.google... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. Max allowed page size is 500. |
| `pageToken` | `string` | query | No | The page token as returned. ListAuctionPackagesResponse.nextPageToken |

**Response**: `ListAuctionPackagesResponse`

```typescript
const res = await authorizedbuyersmarketplace.auctionPackages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.bidders.finalizedDeals.list`

**GET** `v1/{+parent}/finalizedDeals`

Lists finalized deals. Use the URL path "/v1/buyers/{accountId}/finalizedDeals" to list finalized deals for the current buyer and its clients. Bidders can use the URL path "/v1/bidders/{accountId}/finalizedDeals" to list finalized deals for the bidder, its buyers and all their clients.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The buyer to list the finalized deals for, in the format: `buyers/{accountId}`. When used to list finalized... |
| `filter` | `string` | query | No | Optional query string using the [Cloud API list filtering syntax](https://developers.google.com/authorized-buyers/api... |
| `orderBy` | `string` | query | No | An optional query string to sort finalized deals using the [Cloud API sorting syntax](https://cloud.google.com/apis/d... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If requested more than 500, the server will ... |
| `pageToken` | `string` | query | No | The page token as returned from ListFinalizedDealsResponse. |

**Response**: `ListFinalizedDealsResponse`

```typescript
const res = await authorizedbuyersmarketplace.finalizedDeals.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

### `authorizedbuyersmarketplace.bidders.finalizedDeals.setReadyToServe`

**POST** `v1/{+deal}:setReadyToServe`

Sets the given finalized deal as ready to serve. By default, deals are set as ready to serve as soon as they're finalized. If you want to opt out of the default behavior, and manually indicate that deals are ready to serve, ask your Technical Account Manager to add you to the allowlist. If you choose to use this method, finalized deals belonging to the bidder and its child seats don't start serving until after you call `setReadyToServe`, and after the deals become active. For example, you can use this method to delay receiving bid requests until your creative is ready. In addition, bidders can use the URL path "/v1/bidders/{accountId}/finalizedDeals/{dealId}" to set ready to serve for the finalized deals belong to itself, its child seats and all their clients. This method only applies to programmatic guaranteed deals.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `deal` | `string` | path | Yes | Required. Format: `buyers/{accountId}/finalizedDeals/{dealId}` or `bidders/{accountId}/finalizedDeals/{dealId}` |

**Request body**: `SetReadyToServeRequest`

**Response**: `FinalizedDeal`

```typescript
const res = await authorizedbuyersmarketplace.finalizedDeals.setReadyToServe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/authorized-buyers-marketplace`

---

## Schemas

### `AcceptProposalRequest`

Request to accept a proposal. Accepting a proposal implies acceptance of the publisher terms_and_conditions, if any.

| Property | Type | Description |
|----------|------|-------------|
| `proposalRevision` | `string` | The last known client revision number of the proposal. |

### `ActivateClientRequest`

Request message for activating a client.

### `ActivateClientUserRequest`

Request message for activating a client user.

### `AdSize`

Represents size of a single ad slot, or a creative.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `string` | The height of the ad slot in pixels. This field will be present only when size type is `PIXEL`. |
| `type` | `string` | The type of the ad slot size. |
| `width` | `string` | The width of the ad slot in pixels. This field will be present only when size type is `PIXEL`. |

### `AddCreativeRequest`

Request message for adding creative to be used in the bidding process for the finalized deal.

| Property | Type | Description |
|----------|------|-------------|
| `creative` | `string` | Name of the creative to add to the finalized deal, in the format `buyers/{buyerAccountId}/creativ... |

### `AddNoteRequest`

Request to add a note.

| Property | Type | Description |
|----------|------|-------------|
| `note` | `Note` | The note to add. |

### `AuctionPackage`

Defines a segment of inventory that buyer wants to buy. It's created by buyer and could be shared with multiple buyers.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time the auction package was created. |
| `creator` | `string` | Output only. The buyer that created this auction package. Format: `buyers/{buyerAccountId}` |
| `dealOwnerSeatId` | `string` | Output only. If set, this field contains the DSP specific seat id set by the media planner accoun... |
| `description` | `string` | Output only. A description of the auction package. |
| `displayName` | `string` | The display_name assigned to the auction package. |
| `eligibleSeatIds` | `array<string>` | Output only. If set, this field identifies a seat that the media planner selected as the owner of... |
| `floorPriceCpm` | `Money` | Output only. The minimum price a buyer has to bid to compete in this auction package. If this is ... |
| `name` | `string` | Immutable. The unique identifier for the auction package. Format: `buyers/{accountId}/auctionPack... |
| `subscribedBuyers` | `array<string>` | Output only. The list of buyers that are subscribed to the AuctionPackage. This field is only pop... |
| `subscribedClients` | `array<string>` | Output only. When calling as a buyer, the list of clients of the current buyer that are subscribe... |
| `subscribedMediaPlanners` | `array<MediaPlanner>` | Output only. The list of media planners that are subscribed to the AuctionPackage. This field is ... |
| `updateTime` | `string` | Output only. Time the auction package was last updated. This value is only increased when this au... |

### `BatchUpdateDealsRequest`

Request message for batch updating deals.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<UpdateDealRequest>` | Required. List of request messages to update deals. |

### `BatchUpdateDealsResponse`

Response message for batch updating deals.

| Property | Type | Description |
|----------|------|-------------|
| `deals` | `array<Deal>` | Deals updated. |

### `CancelNegotiationRequest`

Request to cancel an ongoing negotiation.

### `Client`

A client represents an agency, a brand, or an advertiser customer of the buyer. Based on the client's role, its client users will have varying levels of restricted access to the Marketplace and certain other sections of the Authorized Buyers UI.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Required. Display name shown to publishers. Must be unique for clients without partnerClientId sp... |
| `name` | `string` | Output only. The resource name of the client. Format: `buyers/{accountId}/clients/{clientAccountId}` |
| `partnerClientId` | `string` | Arbitrary unique identifier provided by the buyer. This field can be used to associate a client w... |
| `role` | `string` | Required. The role assigned to the client. Each role implies a set of permissions granted to the ... |
| `sellerVisible` | `boolean` | Whether the client will be visible to sellers. |
| `state` | `string` | Output only. The state of the client. |

### `ClientUser`

A user of a client who has restricted access to the Marketplace and certain other sections of the Authorized Buyers UI based on the role granted to the associated client.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Required. The client user's email address that has to be unique across all users for the same cli... |
| `name` | `string` | Output only. The resource name of the client user. Format: `buyers/{accountId}/clients/{clientAcc... |
| `state` | `string` | Output only. The state of the client user. |

### `Contact`

Contains information on how a buyer or seller can be reached.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display_name of the contact. |
| `email` | `string` | Email address for the contact. |

### `CreativeRequirements`

Message captures data about the creatives in the deal.

| Property | Type | Description |
|----------|------|-------------|
| `creativeFormat` | `string` | Output only. The format of the creative, only applicable for programmatic guaranteed and preferre... |
| `creativePreApprovalPolicy` | `string` | Output only. Specifies the creative pre-approval policy. |
| `creativeSafeFrameCompatibility` | `string` | Output only. Specifies whether the creative is safeFrame compatible. |
| `maxAdDurationMs` | `string` | Output only. The max duration of the video creative in milliseconds. only applicable for deals wi... |
| `programmaticCreativeSource` | `string` | Output only. Specifies the creative source for programmatic deals. PUBLISHER means creative is pr... |
| `skippableAdType` | `string` | Output only. Skippable video ads allow viewers to skip ads after 5 seconds. Only applicable for d... |

### `CriteriaTargeting`

Generic targeting used for targeting dimensions that contains a list of included and excluded numeric IDs. This cannot be filtered using list filter syntax.

| Property | Type | Description |
|----------|------|-------------|
| `excludedCriteriaIds` | `array<string>` | A list of numeric IDs to be excluded. |
| `targetedCriteriaIds` | `array<string>` | A list of numeric IDs to be included. |

### `DayPart`

Defines targeting for a period of time on a specific week day.

| Property | Type | Description |
|----------|------|-------------|
| `dayOfWeek` | `string` | Day of week for the period. |
| `endTime` | `TimeOfDay` | Hours in 24 hour time between 0 and 24, inclusive. Note: 24 is logically equivalent to 0, but is ... |
| `startTime` | `TimeOfDay` | Hours in 24 hour time between 0 and 24, inclusive. Note: 24 is logically equivalent to 0, but is ... |

### `DayPartTargeting`

Represents Daypart targeting.

| Property | Type | Description |
|----------|------|-------------|
| `dayParts` | `array<DayPart>` | The targeted weekdays and times |
| `timeZoneType` | `string` | The time zone type of the day parts |

### `DeactivateClientRequest`

Request message for disabling a client.

### `DeactivateClientUserRequest`

Request message for deactivating a client user.

### `Deal`

A deal represents a segment of inventory for displaying ads that contains the terms and targeting information that is used for serving as well as the deal stats and status. Note: A proposal may contain multiple deals.

| Property | Type | Description |
|----------|------|-------------|
| `billedBuyer` | `string` | Output only. When the client field is populated, this field refers to the buyer who creates and m... |
| `buyer` | `string` | Output only. Refers to a buyer in Real-time Bidding API's Buyer resource. Format: `buyers/{buyerA... |
| `buyerPermissionType` | `string` | Output only. The buyer permission type of the deal. |
| `client` | `string` | Output only. Refers to a Client. Format: `buyers/{buyerAccountId}/clients/{clientAccountid}` |
| `createTime` | `string` | Output only. The time of the deal creation. |
| `creativeRequirements` | `CreativeRequirements` | Output only. Metadata about the creatives of this deal. |
| `dealType` | `string` | Output only. Type of deal. |
| `deliveryControl` | `DeliveryControl` | Output only. Specifies the pacing set by the publisher. |
| `description` | `string` | Output only. Free text description for the deal terms. |
| `displayName` | `string` | Output only. The name of the deal. Maximum length of 255 unicode characters is allowed. Control c... |
| `eligibleSeatIds` | `array<string>` | Output only. If set, this field contains the list of DSP specific seat ids set by media planners ... |
| `estimatedGrossSpend` | `Money` | Specified by buyers in request for proposal (RFP) to notify publisher the total estimated spend f... |
| `flightEndTime` | `string` | Proposed flight end time of the deal. This will generally be stored in a granularity of a second.... |
| `flightStartTime` | `string` | Proposed flight start time of the deal. This will generally be stored in the granularity of one s... |
| `mediaPlanner` | `MediaPlanner` | Output only. Refers to a buyer in Real-time Bidding API's Buyer resource. This field represents a... |
| `name` | `string` | Immutable. The unique identifier of the deal. Auto-generated by the server when a deal is created... |
| `preferredDealTerms` | `PreferredDealTerms` | The terms for preferred deals. |
| `privateAuctionTerms` | `PrivateAuctionTerms` | The terms for private auction deals. |
| `programmaticGuaranteedTerms` | `ProgrammaticGuaranteedTerms` | The terms for programmatic guaranteed deals. |
| `proposalRevision` | `string` | Output only. The revision number for the proposal and is the same value as proposal.proposal_revi... |
| `publisherProfile` | `string` | Immutable. Reference to the seller on the deal. Format: `buyers/{buyerAccountId}/publisherProfile... |
| `sellerTimeZone` | `TimeZone` | Output only. Time zone of the seller used to mark the boundaries of a day for daypart targeting a... |
| `targeting` | `MarketplaceTargeting` | Specifies the subset of inventory targeted by the deal. Can be updated by the buyer before the de... |
| `updateTime` | `string` | Output only. The time when the deal was last updated. |

### `DealPausingInfo`

Information related to deal pausing.

| Property | Type | Description |
|----------|------|-------------|
| `pauseReason` | `string` | The reason for the pausing of the deal; empty for active deals. |
| `pauseRole` | `string` | The party that first paused the deal; unspecified for active deals. |
| `pausingConsented` | `boolean` | Whether pausing is consented between buyer and seller for the deal. |

### `DeliveryControl`

Message contains details about how the deal will be paced.

| Property | Type | Description |
|----------|------|-------------|
| `companionDeliveryType` | `string` | Output only. Specifies roadblocking in a main companion lineitem. |
| `creativeRotationType` | `string` | Output only. Specifies strategy to use for selecting a creative when multiple creatives of the sa... |
| `deliveryRateType` | `string` | Output only. Specifies how the impression delivery will be paced. |
| `frequencyCap` | `array<FrequencyCap>` | Output only. Specifies any frequency caps. Cannot be filtered within ListDealsRequest. |
| `roadblockingType` | `string` | Output only. Specifies the roadblocking type in display creatives. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `FinalizedDeal`

A finalized deal is a snapshot of the deal when both buyer and seller accept the deal. The buyer or seller can update the deal after it's been finalized and renegotiate on the deal targeting, terms and other fields, while at the same time the finalized snapshot of the deal can still be retrieved using this API. The finalized deal contains a copy of the deal as it existed when most recently finalized, as well as fields related to deal serving such as pause/resume status, RTB metrics, and more.

| Property | Type | Description |
|----------|------|-------------|
| `deal` | `Deal` | A copy of the Deal made upon finalization. During renegotiation, this will reflect the last final... |
| `dealPausingInfo` | `DealPausingInfo` | Information related to deal pausing for the deal. |
| `dealServingStatus` | `string` | Serving status of the deal. |
| `name` | `string` | The resource name of the finalized deal. Format: `buyers/{accountId}/finalizedDeals/{finalizedDea... |
| `readyToServe` | `boolean` | Whether the Programmatic Guaranteed deal is ready for serving. |
| `rtbMetrics` | `RtbMetrics` | Real-time bidding metrics for this deal. |

### `FirstPartyMobileApplicationTargeting`

Represents a list of targeted and excluded mobile application IDs that publishers own. Android App ID, for example, com.google.android.apps.maps, can be found in Google Play Store URL. iOS App ID (which is a number) can be found at the end of iTunes store URL. First party mobile applications is either included or excluded.

| Property | Type | Description |
|----------|------|-------------|
| `excludedAppIds` | `array<string>` | A list of application IDs to be excluded. |
| `targetedAppIds` | `array<string>` | A list of application IDs to be included. |

### `FrequencyCap`

Message contains details about publisher-set frequency caps of the delivery.

| Property | Type | Description |
|----------|------|-------------|
| `maxImpressions` | `integer` | The maximum number of impressions that can be served to a user within the specified time period. |
| `timeUnitType` | `string` | The time unit. Along with num_time_units defines the amount of time over which impressions per us... |
| `timeUnitsCount` | `integer` | The amount of time, in the units specified by time_unit_type. Defines the amount of time over whi... |

### `InventorySizeTargeting`

Represents the size of an ad unit that can be targeted on a bid request.

| Property | Type | Description |
|----------|------|-------------|
| `excludedInventorySizes` | `array<AdSize>` | A list of inventory sizes to be excluded. |
| `targetedInventorySizes` | `array<AdSize>` | A list of inventory sizes to be included. |

### `InventoryTypeTargeting`

Targeting of the inventory types a bid request can originate from.

| Property | Type | Description |
|----------|------|-------------|
| `inventoryTypes` | `array<string>` | The list of targeted inventory types for the bid request. |

### `ListAuctionPackagesResponse`

Response message for listing auction packages.

| Property | Type | Description |
|----------|------|-------------|
| `auctionPackages` | `array<AuctionPackage>` | The list of auction packages. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. Pass this value in the ListAuctionPacka... |

### `ListClientUsersResponse`

Response message for the list method.

| Property | Type | Description |
|----------|------|-------------|
| `clientUsers` | `array<ClientUser>` | The returned list of client users. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListClientUsersRequest.pageT... |

### `ListClientsResponse`

Response message for the list method.

| Property | Type | Description |
|----------|------|-------------|
| `clients` | `array<Client>` | The returned list of clients. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListClientsRequest.pageToken... |

### `ListDealsResponse`

Response message for listing deals in a proposal.

| Property | Type | Description |
|----------|------|-------------|
| `deals` | `array<Deal>` | The list of deals. |
| `nextPageToken` | `string` | Token to fetch the next page of results. |

### `ListFinalizedDealsResponse`

Response message for listing finalized deals.

| Property | Type | Description |
|----------|------|-------------|
| `finalizedDeals` | `array<FinalizedDeal>` | The list of finalized deals. |
| `nextPageToken` | `string` | Token to fetch the next page of results. |

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
| `nextPageToken` | `string` | Token to fetch the next page of results. |
| `publisherProfiles` | `array<PublisherProfile>` | The list of matching publisher profiles. |

### `MarketplaceTargeting`

Targeting represents different criteria that can be used to target deals or auction packages. For example, they can choose to target inventory only if the user is in the US. Multiple types of targeting are always applied as a logical AND, unless noted otherwise.

| Property | Type | Description |
|----------|------|-------------|
| `daypartTargeting` | `DayPartTargeting` | Daypart targeting information. |
| `excludedSensitiveCategoryIds` | `array<string>` | Output only. The sensitive content category label IDs excluded. Refer to this file https://storag... |
| `geoTargeting` | `CriteriaTargeting` | Output only. Geo criteria IDs to be included/excluded. |
| `inventorySizeTargeting` | `InventorySizeTargeting` | Output only. Inventory sizes to be included/excluded. |
| `inventoryTypeTargeting` | `InventoryTypeTargeting` | Output only. Inventory type targeting information. |
| `placementTargeting` | `PlacementTargeting` | Output only. Placement targeting information, for example, URL, mobile applications. |
| `technologyTargeting` | `TechnologyTargeting` | Output only. Technology targeting information, for example, operating system, device category. |
| `userListTargeting` | `CriteriaTargeting` | Buyer user list targeting information. User lists can be uploaded using https://developers.google... |
| `verticalTargeting` | `CriteriaTargeting` | Output only. The verticals included or excluded as defined in https://developers.google.com/autho... |
| `videoTargeting` | `VideoTargeting` | Output only. Video targeting information. |

### `MediaPlanner`

Represents a media planner account.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Output only. Account ID of the media planner. |
| `ancestorNames` | `array<string>` | Output only. The ancestor names of the media planner. Format: `mediaPlanners/{mediaPlannerAccount... |
| `displayName` | `string` | Output only. The display name of the media planner. Can be used to filter the response of the med... |
| `name` | `string` | Identifier. The unique resource name of the media planner. Format: `mediaPlanners/{mediaPlannerAc... |

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

### `Note`

A text note attached to the proposal to facilitate the communication between buyers and sellers.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. When this note was created. |
| `creatorRole` | `string` | Output only. The role who created the note. |
| `note` | `string` | The text of the note. Maximum length is 1024 characters. |

### `OperatingSystemTargeting`

Represents targeting information for operating systems.

| Property | Type | Description |
|----------|------|-------------|
| `operatingSystemCriteria` | `CriteriaTargeting` | IDs of operating systems to be included/excluded. |
| `operatingSystemVersionCriteria` | `CriteriaTargeting` | IDs of operating system versions to be included/excluded. |

### `PauseFinalizedDealRequest`

Request message for pausing a finalized deal.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | The reason to pause the finalized deal, will be displayed to the seller. Maximum length is 1000 c... |

### `PlacementTargeting`

Represents targeting about where the ads can appear, for example, certain sites or mobile applications. Different placement targeting types will be logically OR'ed.

| Property | Type | Description |
|----------|------|-------------|
| `mobileApplicationTargeting` | `MobileApplicationTargeting` | Mobile application targeting information in a deal. This doesn't apply to Auction Packages. |
| `uriTargeting` | `UriTargeting` | URLs to be included/excluded. |

### `PreferredDealTerms`

Pricing terms for Preferred Deals.

| Property | Type | Description |
|----------|------|-------------|
| `fixedPrice` | `Price` | Fixed price for the deal. |

### `Price`

Represents a price and a pricing type for a deal.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `Money` | The actual price with currency specified. |
| `type` | `string` | The pricing type for the deal. |

### `PrivateAuctionTerms`

Pricing terms for Private Auctions.

| Property | Type | Description |
|----------|------|-------------|
| `floorPrice` | `Price` | The minimum price buyer has to bid to compete in the private auction. |
| `openAuctionAllowed` | `boolean` | Output only. True if open auction buyers are allowed to compete with invited buyers in this priva... |

### `PrivateData`

Buyers are allowed to store certain types of private data in a proposal.

| Property | Type | Description |
|----------|------|-------------|
| `referenceId` | `string` | A buyer specified reference ID. This can be queried in the list operations (max-length: 1024 unic... |

### `ProgrammaticGuaranteedTerms`

Pricing terms for Programmatic Guaranteed Deals.

| Property | Type | Description |
|----------|------|-------------|
| `fixedPrice` | `Price` | Fixed price for the deal. |
| `guaranteedLooks` | `string` | Count of guaranteed looks. For CPD deals, buyer changes to guaranteed_looks will be ignored. |
| `impressionCap` | `string` | The lifetime impression cap for CPM Sponsorship deals. Deal will stop serving when cap is reached. |
| `minimumDailyLooks` | `string` | Daily minimum looks for CPD deal types. For CPD deals, buyer should negotiate on this field inste... |
| `percentShareOfVoice` | `string` | For sponsorship deals, this is the percentage of the seller's eligible impressions that the deal ... |
| `reservationType` | `string` | The reservation type for a Programmatic Guaranteed deal. This indicates whether the number of imp... |

### `Proposal`

Represents a proposal in the Marketplace. A proposal is the unit of negotiation between a seller and a buyer.

| Property | Type | Description |
|----------|------|-------------|
| `billedBuyer` | `string` | Output only. When the client field is populated, this field refers to the buyer who creates and m... |
| `buyer` | `string` | Output only. Refers to a buyer in The Realtime-bidding API. Format: `buyers/{buyerAccountId}` |
| `buyerContacts` | `array<Contact>` | Contact information for the buyer. |
| `buyerPrivateData` | `PrivateData` | Buyer private data (hidden from seller). |
| `client` | `string` | Output only. Refers to a Client. Format: `buyers/{buyerAccountId}/clients/{clientAccountid}` |
| `dealType` | `string` | Output only. Type of deal the proposal contains. |
| `displayName` | `string` | Output only. The descriptive name for the proposal. Maximum length of 255 unicode characters is a... |
| `isRenegotiating` | `boolean` | Output only. True if the proposal was previously finalized and is now being renegotiated. |
| `lastUpdaterOrCommentorRole` | `string` | Output only. The role of the last user that either updated the proposal or left a comment. |
| `name` | `string` | Immutable. The name of the proposal serving as a unique identifier. Format: buyers/{accountId}/pr... |
| `notes` | `array<Note>` | A list of notes from the buyer and the seller attached to this proposal. |
| `originatorRole` | `string` | Output only. Indicates whether the buyer/seller created the proposal. |
| `pausingConsented` | `boolean` | Whether pausing is allowed for the proposal. This is a negotiable term between buyers and publish... |
| `proposalRevision` | `string` | Output only. The revision number for the proposal. Each update to the proposal or deal causes the... |
| `publisherProfile` | `string` | Immutable. Reference to the seller on the proposal. Format: `buyers/{buyerAccountId}/publisherPro... |
| `sellerContacts` | `array<Contact>` | Output only. Contact information for the seller. |
| `state` | `string` | Output only. Indicates the state of the proposal. |
| `termsAndConditions` | `string` | Output only. The terms and conditions associated with this proposal. Accepting a proposal implies... |
| `updateTime` | `string` | Output only. The time when the proposal was last revised. |

### `PublisherProfile`

The values in the publisher profile are supplied by the publisher. All fields are not filterable unless stated otherwise.

| Property | Type | Description |
|----------|------|-------------|
| `audienceDescription` | `string` | Description on the publisher's audience. |
| `directDealsContact` | `string` | Contact information for direct reservation deals. This is free text entered by the publisher and ... |
| `displayName` | `string` | Display name of the publisher profile. Can be used to filter the response of the publisherProfile... |
| `domains` | `array<string>` | The list of domains represented in this publisher profile. Empty if this is a parent profile. The... |
| `isParent` | `boolean` | Indicates if this profile is the parent profile of the seller. A parent profile represents all th... |
| `logoUrl` | `string` | A Google public URL to the logo for this publisher profile. The logo is stored as a PNG, JPG, or ... |
| `mediaKitUrl` | `string` | URL to additional marketing and sales materials. |
| `mobileApps` | `array<PublisherProfileMobileApplication>` | The list of apps represented in this publisher profile. Empty if this is a parent profile. |
| `name` | `string` | Name of the publisher profile. Format: `buyers/{buyer}/publisherProfiles/{publisher_profile}` |
| `overview` | `string` | Overview of the publisher. |
| `pitchStatement` | `string` | Statement explaining what's unique about publisher's business, and why buyers should partner with... |
| `programmaticDealsContact` | `string` | Contact information for programmatic deals. This is free text entered by the publisher and may in... |
| `publisherCode` | `string` | A unique identifying code for the seller. This value is the same for all of the seller's parent a... |
| `samplePageUrl` | `string` | URL to a sample content page. |
| `topHeadlines` | `array<string>` | Up to three key metrics and rankings. For example, "#1 Mobile News Site for 20 Straight Months". |

### `PublisherProfileMobileApplication`

A mobile application that contains a external app ID, name, and app store.

| Property | Type | Description |
|----------|------|-------------|
| `appStore` | `string` | The app store the app belongs to. Can be used to filter the response of the publisherProfiles.lis... |
| `externalAppId` | `string` | The external ID for the app from its app store. Can be used to filter the response of the publish... |
| `name` | `string` | The name of the app. |

### `ResumeFinalizedDealRequest`

Request message for resuming a finalized deal.

### `RtbMetrics`

Real-time bidding metrics. For what each metric means refer to [Report metrics](https://support.google.com/adxbuyer/answer/6115195#report-metrics)

| Property | Type | Description |
|----------|------|-------------|
| `adImpressions7Days` | `string` | Ad impressions in last 7 days. |
| `bidRate7Days` | `number` | Bid rate in last 7 days, calculated by (bids / bid requests). |
| `bidRequests7Days` | `string` | Bid requests in last 7 days. |
| `bids7Days` | `string` | Bids in last 7 days. |
| `filteredBidRate7Days` | `number` | Filtered bid rate in last 7 days, calculated by (filtered bids / bids). |
| `mustBidRateCurrentMonth` | `number` | Must bid rate for current month. |

### `SendRfpRequest`

Request to send an RFP. All fields in this request are proposed to publisher and subject to changes by publisher during later negotiation.

| Property | Type | Description |
|----------|------|-------------|
| `buyerContacts` | `array<Contact>` | Contact information for the buyer. |
| `client` | `string` | If the current buyer is sending the RFP on behalf of its client, use this field to specify the na... |
| `displayName` | `string` | Required. The display name of the proposal being created by this RFP. |
| `estimatedGrossSpend` | `Money` | Specified by buyers in request for proposal (RFP) to notify publisher the total estimated spend f... |
| `flightEndTime` | `string` | Required. Proposed flight end time of the RFP. A timestamp in RFC3339 UTC "Zulu" format. Note tha... |
| `flightStartTime` | `string` | Required. Proposed flight start time of the RFP. A timestamp in RFC3339 UTC "Zulu" format. Note t... |
| `geoTargeting` | `CriteriaTargeting` | Geo criteria IDs to be targeted. Refer to Geo tables. |
| `inventorySizeTargeting` | `InventorySizeTargeting` | Inventory sizes to be targeted. Only PIXEL inventory size type is supported. |
| `note` | `string` | A message that is sent to the publisher. Maximum length is 1024 characters. |
| `preferredDealTerms` | `PreferredDealTerms` | The terms for preferred deals. |
| `programmaticGuaranteedTerms` | `ProgrammaticGuaranteedTerms` | The terms for programmatic guaranteed deals. |
| `publisherProfile` | `string` | Required. The profile of the publisher who will receive this RFP in the format: `buyers/{accountI... |

### `SetReadyToServeRequest`

Request message for setting ready to serve for a finalized deal.

### `SubscribeAuctionPackageRequest`

Request message for SubscribeAuctionPackage.

### `SubscribeClientsRequest`

Request message for SubscribeAuctionPackageClients.

| Property | Type | Description |
|----------|------|-------------|
| `clients` | `array<string>` | Optional. A list of client buyers to subscribe to the auction package, with client buyer in the f... |

### `TechnologyTargeting`

Represents targeting about various types of technology.

| Property | Type | Description |
|----------|------|-------------|
| `deviceCapabilityTargeting` | `CriteriaTargeting` | IDs of device capabilities to be included/excluded. |
| `deviceCategoryTargeting` | `CriteriaTargeting` | IDs of device categories to be included/excluded. |
| `operatingSystemTargeting` | `OperatingSystemTargeting` | Operating system related targeting information. |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `TimeZone`

Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | IANA Time Zone Database time zone. For example "America/New_York". |
| `version` | `string` | Optional. IANA Time Zone Database version number. For example "2019a". |

### `UnsubscribeAuctionPackageRequest`

Request message for UnsubscribeAuctionPackage.

### `UnsubscribeClientsRequest`

Request message for UnsubscribeAuctionPackage.

| Property | Type | Description |
|----------|------|-------------|
| `clients` | `array<string>` | Optional. A list of client buyers to unsubscribe from the auction package, with client buyer in t... |

### `UpdateDealRequest`

Request message for updating the deal at the given revision number.

| Property | Type | Description |
|----------|------|-------------|
| `deal` | `Deal` | Required. The deal to update. The deal's `name` field is used to identify the deal to be updated.... |
| `updateMask` | `string` | List of fields to be updated. If empty or unspecified, the service will update all fields populat... |

### `UriTargeting`

Represents a list of targeted and excluded URLs (for example, google.com). For Private Auction Deals, URLs are either included or excluded. For Programmatic Guaranteed and Preferred Deals, this doesn't apply.

| Property | Type | Description |
|----------|------|-------------|
| `excludedUris` | `array<string>` | A list of URLs to be excluded. |
| `targetedUris` | `array<string>` | A list of URLs to be included. |

### `VideoTargeting`

Represents targeting information about video.

| Property | Type | Description |
|----------|------|-------------|
| `excludedPositionTypes` | `array<string>` | A list of video positions to be excluded. When this field is populated, the targeted_position_typ... |
| `targetedPositionTypes` | `array<string>` | A list of video positions to be included. When this field is populated, the excluded_position_typ... |

