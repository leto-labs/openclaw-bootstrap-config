# Google Wallet API - API Reference

**Version**: `v1` | **Methods**: 98 | **Schemas**: 152

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `walletobjects.issuer.get` | GET | `walletobjects/v1/issuer/{resourceId}` | Returns the issuer with the given issuer ID. |
| `walletobjects.issuer.insert` | POST | `walletobjects/v1/issuer` | Inserts an issuer with the given ID and properties. |
| `walletobjects.issuer.list` | GET | `walletobjects/v1/issuer` | Returns a list of all issuers shared to the caller. |
| `walletobjects.issuer.patch` | PATCH | `walletobjects/v1/issuer/{resourceId}` | Updates the issuer referenced by the given issuer ID. This method supports patch semantics. |
| `walletobjects.issuer.update` | PUT | `walletobjects/v1/issuer/{resourceId}` | Updates the issuer referenced by the given issuer ID. |
| `walletobjects.eventticketclass.addmessage` | POST | `walletobjects/v1/eventTicketClass/{resourceId}/addMessage` | Adds a message to the event ticket class referenced by the given class ID. |
| `walletobjects.eventticketclass.get` | GET | `walletobjects/v1/eventTicketClass/{resourceId}` | Returns the event ticket class with the given class ID. |
| `walletobjects.eventticketclass.insert` | POST | `walletobjects/v1/eventTicketClass` | Inserts an event ticket class with the given ID and properties. |
| `walletobjects.eventticketclass.list` | GET | `walletobjects/v1/eventTicketClass` | Returns a list of all event ticket classes for a given issuer ID. |
| `walletobjects.eventticketclass.patch` | PATCH | `walletobjects/v1/eventTicketClass/{resourceId}` | Updates the event ticket class referenced by the given class ID. This method supports patch seman... |
| `walletobjects.eventticketclass.update` | PUT | `walletobjects/v1/eventTicketClass/{resourceId}` | Updates the event ticket class referenced by the given class ID. |
| `walletobjects.eventticketobject.addmessage` | POST | `walletobjects/v1/eventTicketObject/{resourceId}/addMessage` | Adds a message to the event ticket object referenced by the given object ID. |
| `walletobjects.eventticketobject.get` | GET | `walletobjects/v1/eventTicketObject/{resourceId}` | Returns the event ticket object with the given object ID. |
| `walletobjects.eventticketobject.insert` | POST | `walletobjects/v1/eventTicketObject` | Inserts an event ticket object with the given ID and properties. |
| `walletobjects.eventticketobject.list` | GET | `walletobjects/v1/eventTicketObject` | Returns a list of all event ticket objects for a given issuer ID. |
| `walletobjects.eventticketobject.modifylinkedofferobjects` | POST | `walletobjects/v1/eventTicketObject/{resourceId}/modifyLinkedOfferObjects` | Deprecated: Use Auto Linked Passes instead. Modifies linked offer objects for the event ticket ob... |
| `walletobjects.eventticketobject.patch` | PATCH | `walletobjects/v1/eventTicketObject/{resourceId}` | Updates the event ticket object referenced by the given object ID. This method supports patch sem... |
| `walletobjects.eventticketobject.update` | PUT | `walletobjects/v1/eventTicketObject/{resourceId}` | Updates the event ticket object referenced by the given object ID. |
| `walletobjects.flightclass.addmessage` | POST | `walletobjects/v1/flightClass/{resourceId}/addMessage` | Adds a message to the flight class referenced by the given class ID. |
| `walletobjects.flightclass.get` | GET | `walletobjects/v1/flightClass/{resourceId}` | Returns the flight class with the given class ID. |
| `walletobjects.flightclass.insert` | POST | `walletobjects/v1/flightClass` | Inserts an flight class with the given ID and properties. |
| `walletobjects.flightclass.list` | GET | `walletobjects/v1/flightClass` | Returns a list of all flight classes for a given issuer ID. |
| `walletobjects.flightclass.patch` | PATCH | `walletobjects/v1/flightClass/{resourceId}` | Updates the flight class referenced by the given class ID. This method supports patch semantics. |
| `walletobjects.flightclass.update` | PUT | `walletobjects/v1/flightClass/{resourceId}` | Updates the flight class referenced by the given class ID. |
| `walletobjects.flightobject.addmessage` | POST | `walletobjects/v1/flightObject/{resourceId}/addMessage` | Adds a message to the flight object referenced by the given object ID. |
| `walletobjects.flightobject.get` | GET | `walletobjects/v1/flightObject/{resourceId}` | Returns the flight object with the given object ID. |
| `walletobjects.flightobject.insert` | POST | `walletobjects/v1/flightObject` | Inserts an flight object with the given ID and properties. |
| `walletobjects.flightobject.list` | GET | `walletobjects/v1/flightObject` | Returns a list of all flight objects for a given issuer ID. |
| `walletobjects.flightobject.patch` | PATCH | `walletobjects/v1/flightObject/{resourceId}` | Updates the flight object referenced by the given object ID. This method supports patch semantics. |
| `walletobjects.flightobject.update` | PUT | `walletobjects/v1/flightObject/{resourceId}` | Updates the flight object referenced by the given object ID. |
| `walletobjects.genericclass.addmessage` | POST | `walletobjects/v1/genericClass/{resourceId}/addMessage` | Adds a message to the generic class referenced by the given class ID. |
| `walletobjects.genericclass.get` | GET | `walletobjects/v1/genericClass/{resourceId}` | Returns the generic class with the given class ID. |
| `walletobjects.genericclass.insert` | POST | `walletobjects/v1/genericClass` | Inserts a generic class with the given ID and properties. |
| `walletobjects.genericclass.list` | GET | `walletobjects/v1/genericClass` | Returns a list of all generic classes for a given issuer ID. |
| `walletobjects.genericclass.patch` | PATCH | `walletobjects/v1/genericClass/{resourceId}` | Updates the generic class referenced by the given class ID. This method supports patch semantics. |
| `walletobjects.genericclass.update` | PUT | `walletobjects/v1/genericClass/{resourceId}` | Updates the Generic class referenced by the given class ID. |
| `walletobjects.genericobject.addmessage` | POST | `walletobjects/v1/genericObject/{resourceId}/addMessage` | Adds a message to the generic object referenced by the given object ID. |
| `walletobjects.genericobject.get` | GET | `walletobjects/v1/genericObject/{resourceId}` | Returns the generic object with the given object ID. |
| `walletobjects.genericobject.insert` | POST | `walletobjects/v1/genericObject` | Inserts a generic object with the given ID and properties. |
| `walletobjects.genericobject.list` | GET | `walletobjects/v1/genericObject` | Returns a list of all generic objects for a given issuer ID. |
| `walletobjects.genericobject.patch` | PATCH | `walletobjects/v1/genericObject/{resourceId}` | Updates the generic object referenced by the given object ID. This method supports patch semantics. |
| `walletobjects.genericobject.update` | PUT | `walletobjects/v1/genericObject/{resourceId}` | Updates the generic object referenced by the given object ID. |
| `walletobjects.giftcardclass.addmessage` | POST | `walletobjects/v1/giftCardClass/{resourceId}/addMessage` | Adds a message to the gift card class referenced by the given class ID. |
| `walletobjects.giftcardclass.get` | GET | `walletobjects/v1/giftCardClass/{resourceId}` | Returns the gift card class with the given class ID. |
| `walletobjects.giftcardclass.insert` | POST | `walletobjects/v1/giftCardClass` | Inserts an gift card class with the given ID and properties. |
| `walletobjects.giftcardclass.list` | GET | `walletobjects/v1/giftCardClass` | Returns a list of all gift card classes for a given issuer ID. |
| `walletobjects.giftcardclass.patch` | PATCH | `walletobjects/v1/giftCardClass/{resourceId}` | Updates the gift card class referenced by the given class ID. This method supports patch semantics. |
| `walletobjects.giftcardclass.update` | PUT | `walletobjects/v1/giftCardClass/{resourceId}` | Updates the gift card class referenced by the given class ID. |
| `walletobjects.giftcardobject.addmessage` | POST | `walletobjects/v1/giftCardObject/{resourceId}/addMessage` | Adds a message to the gift card object referenced by the given object ID. |
| `walletobjects.giftcardobject.get` | GET | `walletobjects/v1/giftCardObject/{resourceId}` | Returns the gift card object with the given object ID. |
| `walletobjects.giftcardobject.insert` | POST | `walletobjects/v1/giftCardObject` | Inserts an gift card object with the given ID and properties. |
| `walletobjects.giftcardobject.list` | GET | `walletobjects/v1/giftCardObject` | Returns a list of all gift card objects for a given issuer ID. |
| `walletobjects.giftcardobject.patch` | PATCH | `walletobjects/v1/giftCardObject/{resourceId}` | Updates the gift card object referenced by the given object ID. This method supports patch semant... |
| `walletobjects.giftcardobject.update` | PUT | `walletobjects/v1/giftCardObject/{resourceId}` | Updates the gift card object referenced by the given object ID. |
| `walletobjects.jwt.insert` | POST | `walletobjects/v1/jwt` | Inserts the resources in the JWT. |
| `walletobjects.loyaltyclass.addmessage` | POST | `walletobjects/v1/loyaltyClass/{resourceId}/addMessage` | Adds a message to the loyalty class referenced by the given class ID. |
| `walletobjects.loyaltyclass.get` | GET | `walletobjects/v1/loyaltyClass/{resourceId}` | Returns the loyalty class with the given class ID. |
| `walletobjects.loyaltyclass.insert` | POST | `walletobjects/v1/loyaltyClass` | Inserts an loyalty class with the given ID and properties. |
| `walletobjects.loyaltyclass.list` | GET | `walletobjects/v1/loyaltyClass` | Returns a list of all loyalty classes for a given issuer ID. |
| `walletobjects.loyaltyclass.patch` | PATCH | `walletobjects/v1/loyaltyClass/{resourceId}` | Updates the loyalty class referenced by the given class ID. This method supports patch semantics. |
| `walletobjects.loyaltyclass.update` | PUT | `walletobjects/v1/loyaltyClass/{resourceId}` | Updates the loyalty class referenced by the given class ID. |
| `walletobjects.loyaltyobject.addmessage` | POST | `walletobjects/v1/loyaltyObject/{resourceId}/addMessage` | Adds a message to the loyalty object referenced by the given object ID. |
| `walletobjects.loyaltyobject.get` | GET | `walletobjects/v1/loyaltyObject/{resourceId}` | Returns the loyalty object with the given object ID. |
| `walletobjects.loyaltyobject.insert` | POST | `walletobjects/v1/loyaltyObject` | Inserts an loyalty object with the given ID and properties. |
| `walletobjects.loyaltyobject.list` | GET | `walletobjects/v1/loyaltyObject` | Returns a list of all loyalty objects for a given issuer ID. |
| `walletobjects.loyaltyobject.modifylinkedofferobjects` | POST | `walletobjects/v1/loyaltyObject/{resourceId}/modifyLinkedOfferObjects` | Deprecated: Use Auto Linked Passes instead. Modifies linked offer objects for the loyalty object ... |
| `walletobjects.loyaltyobject.patch` | PATCH | `walletobjects/v1/loyaltyObject/{resourceId}` | Updates the loyalty object referenced by the given object ID. This method supports patch semantics. |
| `walletobjects.loyaltyobject.update` | PUT | `walletobjects/v1/loyaltyObject/{resourceId}` | Updates the loyalty object referenced by the given object ID. |
| `walletobjects.offerclass.addmessage` | POST | `walletobjects/v1/offerClass/{resourceId}/addMessage` | Adds a message to the offer class referenced by the given class ID. |
| `walletobjects.offerclass.get` | GET | `walletobjects/v1/offerClass/{resourceId}` | Returns the offer class with the given class ID. |
| `walletobjects.offerclass.insert` | POST | `walletobjects/v1/offerClass` | Inserts an offer class with the given ID and properties. |
| `walletobjects.offerclass.list` | GET | `walletobjects/v1/offerClass` | Returns a list of all offer classes for a given issuer ID. |
| `walletobjects.offerclass.patch` | PATCH | `walletobjects/v1/offerClass/{resourceId}` | Updates the offer class referenced by the given class ID. This method supports patch semantics. |
| `walletobjects.offerclass.update` | PUT | `walletobjects/v1/offerClass/{resourceId}` | Updates the offer class referenced by the given class ID. |
| `walletobjects.offerobject.addmessage` | POST | `walletobjects/v1/offerObject/{resourceId}/addMessage` | Adds a message to the offer object referenced by the given object ID. |
| `walletobjects.offerobject.get` | GET | `walletobjects/v1/offerObject/{resourceId}` | Returns the offer object with the given object ID. |
| `walletobjects.offerobject.insert` | POST | `walletobjects/v1/offerObject` | Inserts an offer object with the given ID and properties. |
| `walletobjects.offerobject.list` | GET | `walletobjects/v1/offerObject` | Returns a list of all offer objects for a given issuer ID. |
| `walletobjects.offerobject.patch` | PATCH | `walletobjects/v1/offerObject/{resourceId}` | Updates the offer object referenced by the given object ID. This method supports patch semantics. |
| `walletobjects.offerobject.update` | PUT | `walletobjects/v1/offerObject/{resourceId}` | Updates the offer object referenced by the given object ID. |
| `walletobjects.permissions.get` | GET | `walletobjects/v1/permissions/{resourceId}` | Returns the permissions for the given issuer id. |
| `walletobjects.permissions.update` | PUT | `walletobjects/v1/permissions/{resourceId}` | Updates the permissions for the given issuer. |
| `walletobjects.media.upload` | POST | `walletobjects/v1/transitObject/{resourceId}/uploadRotatingBarcodeValues` | Uploads rotating barcode values for the transit object referenced by the given object ID. Note th... |
| `walletobjects.media.download` | GET | `walletobjects/v1/transitObject/{resourceId}/downloadRotatingBarcodeValues` | Downloads rotating barcode values for the transit object referenced by the given object ID. |
| `walletobjects.walletobjects.v1.privateContent.setPassUpdateNotice` | POST | `walletobjects/v1/privateContent/setPassUpdateNotice` | Provide Google with information about awaiting private pass update. This will allow Google to pro... |
| `walletobjects.smarttap.insert` | POST | `walletobjects/v1/smartTap` | Inserts the smart tap. |
| `walletobjects.transitclass.addmessage` | POST | `walletobjects/v1/transitClass/{resourceId}/addMessage` | Adds a message to the transit class referenced by the given class ID. |
| `walletobjects.transitclass.get` | GET | `walletobjects/v1/transitClass/{resourceId}` | Returns the transit class with the given class ID. |
| `walletobjects.transitclass.insert` | POST | `walletobjects/v1/transitClass` | Inserts a transit class with the given ID and properties. |
| `walletobjects.transitclass.list` | GET | `walletobjects/v1/transitClass` | Returns a list of all transit classes for a given issuer ID. |
| `walletobjects.transitclass.patch` | PATCH | `walletobjects/v1/transitClass/{resourceId}` | Updates the transit class referenced by the given class ID. This method supports patch semantics. |
| `walletobjects.transitclass.update` | PUT | `walletobjects/v1/transitClass/{resourceId}` | Updates the transit class referenced by the given class ID. |
| `walletobjects.transitobject.addmessage` | POST | `walletobjects/v1/transitObject/{resourceId}/addMessage` | Adds a message to the transit object referenced by the given object ID. |
| `walletobjects.transitobject.get` | GET | `walletobjects/v1/transitObject/{resourceId}` | Returns the transit object with the given object ID. |
| `walletobjects.transitobject.insert` | POST | `walletobjects/v1/transitObject` | Inserts an transit object with the given ID and properties. |
| `walletobjects.transitobject.list` | GET | `walletobjects/v1/transitObject` | Returns a list of all transit objects for a given issuer ID. |
| `walletobjects.transitobject.patch` | PATCH | `walletobjects/v1/transitObject/{resourceId}` | Updates the transit object referenced by the given object ID. This method supports patch semantics. |
| `walletobjects.transitobject.update` | PUT | `walletobjects/v1/transitObject/{resourceId}` | Updates the transit object referenced by the given object ID. |

### `walletobjects.issuer.get`

**GET** `walletobjects/v1/issuer/{resourceId}`

Returns the issuer with the given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an issuer. |

**Response**: `Issuer`

```typescript
const res = await walletobjects.issuer.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.issuer.insert`

**POST** `walletobjects/v1/issuer`

Inserts an issuer with the given ID and properties.

**Request body**: `Issuer`

**Response**: `Issuer`

```typescript
const res = await walletobjects.issuer.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.issuer.list`

**GET** `walletobjects/v1/issuer`

Returns a list of all issuers shared to the caller.

**Response**: `IssuerListResponse`

```typescript
const res = await walletobjects.issuer.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.issuer.patch`

**PATCH** `walletobjects/v1/issuer/{resourceId}`

Updates the issuer referenced by the given issuer ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an issuer. |

**Request body**: `Issuer`

**Response**: `Issuer`

```typescript
const res = await walletobjects.issuer.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.issuer.update`

**PUT** `walletobjects/v1/issuer/{resourceId}`

Updates the issuer referenced by the given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an issuer. |

**Request body**: `Issuer`

**Response**: `Issuer`

```typescript
const res = await walletobjects.issuer.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.eventticketclass.addmessage`

**POST** `walletobjects/v1/eventTicketClass/{resourceId}/addMessage`

Adds a message to the event ticket class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `AddMessageRequest`

**Response**: `EventTicketClassAddMessageResponse`

```typescript
const res = await walletobjects.eventticketclass.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.eventticketclass.get`

**GET** `walletobjects/v1/eventTicketClass/{resourceId}`

Returns the event ticket class with the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Response**: `EventTicketClass`

```typescript
const res = await walletobjects.eventticketclass.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.eventticketclass.insert`

**POST** `walletobjects/v1/eventTicketClass`

Inserts an event ticket class with the given ID and properties.

**Request body**: `EventTicketClass`

**Response**: `EventTicketClass`

```typescript
const res = await walletobjects.eventticketclass.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.eventticketclass.list`

**GET** `walletobjects/v1/eventTicketClass`

Returns a list of all event ticket classes for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `issuerId` | `string` | query | No | The ID of the issuer authorized to list classes. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` classes are available in... |

**Response**: `EventTicketClassListResponse`

```typescript
const res = await walletobjects.eventticketclass.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.eventticketclass.patch`

**PATCH** `walletobjects/v1/eventTicketClass/{resourceId}`

Updates the event ticket class referenced by the given class ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `EventTicketClass`

**Response**: `EventTicketClass`

```typescript
const res = await walletobjects.eventticketclass.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.eventticketclass.update`

**PUT** `walletobjects/v1/eventTicketClass/{resourceId}`

Updates the event ticket class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `EventTicketClass`

**Response**: `EventTicketClass`

```typescript
const res = await walletobjects.eventticketclass.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.eventticketobject.addmessage`

**POST** `walletobjects/v1/eventTicketObject/{resourceId}/addMessage`

Adds a message to the event ticket object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `AddMessageRequest`

**Response**: `EventTicketObjectAddMessageResponse`

```typescript
const res = await walletobjects.eventticketobject.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.eventticketobject.get`

**GET** `walletobjects/v1/eventTicketObject/{resourceId}`

Returns the event ticket object with the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Response**: `EventTicketObject`

```typescript
const res = await walletobjects.eventticketobject.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.eventticketobject.insert`

**POST** `walletobjects/v1/eventTicketObject`

Inserts an event ticket object with the given ID and properties.

**Request body**: `EventTicketObject`

**Response**: `EventTicketObject`

```typescript
const res = await walletobjects.eventticketobject.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.eventticketobject.list`

**GET** `walletobjects/v1/eventTicketObject`

Returns a list of all event ticket objects for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `classId` | `string` | query | No | The ID of the class whose objects will be listed. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` objects are available in... |

**Response**: `EventTicketObjectListResponse`

```typescript
const res = await walletobjects.eventticketobject.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.eventticketobject.modifylinkedofferobjects`

**POST** `walletobjects/v1/eventTicketObject/{resourceId}/modifyLinkedOfferObjects`

Deprecated: Use Auto Linked Passes instead. Modifies linked offer objects for the event ticket object with the given ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `ModifyLinkedOfferObjectsRequest`

**Response**: `EventTicketObject`

```typescript
const res = await walletobjects.eventticketobject.modifylinkedofferobjects({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.eventticketobject.patch`

**PATCH** `walletobjects/v1/eventTicketObject/{resourceId}`

Updates the event ticket object referenced by the given object ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `EventTicketObject`

**Response**: `EventTicketObject`

```typescript
const res = await walletobjects.eventticketobject.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.eventticketobject.update`

**PUT** `walletobjects/v1/eventTicketObject/{resourceId}`

Updates the event ticket object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `EventTicketObject`

**Response**: `EventTicketObject`

```typescript
const res = await walletobjects.eventticketobject.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.flightclass.addmessage`

**POST** `walletobjects/v1/flightClass/{resourceId}/addMessage`

Adds a message to the flight class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `AddMessageRequest`

**Response**: `FlightClassAddMessageResponse`

```typescript
const res = await walletobjects.flightclass.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.flightclass.get`

**GET** `walletobjects/v1/flightClass/{resourceId}`

Returns the flight class with the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Response**: `FlightClass`

```typescript
const res = await walletobjects.flightclass.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.flightclass.insert`

**POST** `walletobjects/v1/flightClass`

Inserts an flight class with the given ID and properties.

**Request body**: `FlightClass`

**Response**: `FlightClass`

```typescript
const res = await walletobjects.flightclass.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.flightclass.list`

**GET** `walletobjects/v1/flightClass`

Returns a list of all flight classes for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `issuerId` | `string` | query | No | The ID of the issuer authorized to list classes. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` classes are available in... |

**Response**: `FlightClassListResponse`

```typescript
const res = await walletobjects.flightclass.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.flightclass.patch`

**PATCH** `walletobjects/v1/flightClass/{resourceId}`

Updates the flight class referenced by the given class ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `FlightClass`

**Response**: `FlightClass`

```typescript
const res = await walletobjects.flightclass.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.flightclass.update`

**PUT** `walletobjects/v1/flightClass/{resourceId}`

Updates the flight class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `FlightClass`

**Response**: `FlightClass`

```typescript
const res = await walletobjects.flightclass.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.flightobject.addmessage`

**POST** `walletobjects/v1/flightObject/{resourceId}/addMessage`

Adds a message to the flight object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `AddMessageRequest`

**Response**: `FlightObjectAddMessageResponse`

```typescript
const res = await walletobjects.flightobject.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.flightobject.get`

**GET** `walletobjects/v1/flightObject/{resourceId}`

Returns the flight object with the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Response**: `FlightObject`

```typescript
const res = await walletobjects.flightobject.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.flightobject.insert`

**POST** `walletobjects/v1/flightObject`

Inserts an flight object with the given ID and properties.

**Request body**: `FlightObject`

**Response**: `FlightObject`

```typescript
const res = await walletobjects.flightobject.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.flightobject.list`

**GET** `walletobjects/v1/flightObject`

Returns a list of all flight objects for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `classId` | `string` | query | No | The ID of the class whose objects will be listed. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` objects are available in... |

**Response**: `FlightObjectListResponse`

```typescript
const res = await walletobjects.flightobject.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.flightobject.patch`

**PATCH** `walletobjects/v1/flightObject/{resourceId}`

Updates the flight object referenced by the given object ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `FlightObject`

**Response**: `FlightObject`

```typescript
const res = await walletobjects.flightobject.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.flightobject.update`

**PUT** `walletobjects/v1/flightObject/{resourceId}`

Updates the flight object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `FlightObject`

**Response**: `FlightObject`

```typescript
const res = await walletobjects.flightobject.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.genericclass.addmessage`

**POST** `walletobjects/v1/genericClass/{resourceId}/addMessage`

Adds a message to the generic class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `AddMessageRequest`

**Response**: `GenericClassAddMessageResponse`

```typescript
const res = await walletobjects.genericclass.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.genericclass.get`

**GET** `walletobjects/v1/genericClass/{resourceId}`

Returns the generic class with the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value needs to foll... |

**Response**: `GenericClass`

```typescript
const res = await walletobjects.genericclass.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.genericclass.insert`

**POST** `walletobjects/v1/genericClass`

Inserts a generic class with the given ID and properties.

**Request body**: `GenericClass`

**Response**: `GenericClass`

```typescript
const res = await walletobjects.genericclass.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.genericclass.list`

**GET** `walletobjects/v1/genericClass`

Returns a list of all generic classes for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `issuerId` | `string` | query | No | The ID of the issuer authorized to list classes. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` classes are available in... |

**Response**: `GenericClassListResponse`

```typescript
const res = await walletobjects.genericclass.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.genericclass.patch`

**PATCH** `walletobjects/v1/genericClass/{resourceId}`

Updates the generic class referenced by the given class ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value needs to foll... |

**Request body**: `GenericClass`

**Response**: `GenericClass`

```typescript
const res = await walletobjects.genericclass.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.genericclass.update`

**PUT** `walletobjects/v1/genericClass/{resourceId}`

Updates the Generic class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value needs to foll... |

**Request body**: `GenericClass`

**Response**: `GenericClass`

```typescript
const res = await walletobjects.genericclass.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.genericobject.addmessage`

**POST** `walletobjects/v1/genericObject/{resourceId}/addMessage`

Adds a message to the generic object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all classes from an issuer. This value should foll... |

**Request body**: `AddMessageRequest`

**Response**: `GenericObjectAddMessageResponse`

```typescript
const res = await walletobjects.genericobject.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.genericobject.get`

**GET** `walletobjects/v1/genericObject/{resourceId}`

Returns the generic object with the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value needs to fo... |

**Response**: `GenericObject`

```typescript
const res = await walletobjects.genericobject.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.genericobject.insert`

**POST** `walletobjects/v1/genericObject`

Inserts a generic object with the given ID and properties.

**Request body**: `GenericObject`

**Response**: `GenericObject`

```typescript
const res = await walletobjects.genericobject.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.genericobject.list`

**GET** `walletobjects/v1/genericObject`

Returns a list of all generic objects for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `classId` | `string` | query | No | The ID of the class whose objects will be listed. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` objects are available in... |

**Response**: `GenericObjectListResponse`

```typescript
const res = await walletobjects.genericobject.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.genericobject.patch`

**PATCH** `walletobjects/v1/genericObject/{resourceId}`

Updates the generic object referenced by the given object ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value needs to fo... |

**Request body**: `GenericObject`

**Response**: `GenericObject`

```typescript
const res = await walletobjects.genericobject.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.genericobject.update`

**PUT** `walletobjects/v1/genericObject/{resourceId}`

Updates the generic object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value needs to fo... |

**Request body**: `GenericObject`

**Response**: `GenericObject`

```typescript
const res = await walletobjects.genericobject.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.giftcardclass.addmessage`

**POST** `walletobjects/v1/giftCardClass/{resourceId}/addMessage`

Adds a message to the gift card class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `AddMessageRequest`

**Response**: `GiftCardClassAddMessageResponse`

```typescript
const res = await walletobjects.giftcardclass.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.giftcardclass.get`

**GET** `walletobjects/v1/giftCardClass/{resourceId}`

Returns the gift card class with the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Response**: `GiftCardClass`

```typescript
const res = await walletobjects.giftcardclass.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.giftcardclass.insert`

**POST** `walletobjects/v1/giftCardClass`

Inserts an gift card class with the given ID and properties.

**Request body**: `GiftCardClass`

**Response**: `GiftCardClass`

```typescript
const res = await walletobjects.giftcardclass.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.giftcardclass.list`

**GET** `walletobjects/v1/giftCardClass`

Returns a list of all gift card classes for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `issuerId` | `string` | query | No | The ID of the issuer authorized to list classes. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` classes are available in... |

**Response**: `GiftCardClassListResponse`

```typescript
const res = await walletobjects.giftcardclass.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.giftcardclass.patch`

**PATCH** `walletobjects/v1/giftCardClass/{resourceId}`

Updates the gift card class referenced by the given class ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `GiftCardClass`

**Response**: `GiftCardClass`

```typescript
const res = await walletobjects.giftcardclass.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.giftcardclass.update`

**PUT** `walletobjects/v1/giftCardClass/{resourceId}`

Updates the gift card class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `GiftCardClass`

**Response**: `GiftCardClass`

```typescript
const res = await walletobjects.giftcardclass.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.giftcardobject.addmessage`

**POST** `walletobjects/v1/giftCardObject/{resourceId}/addMessage`

Adds a message to the gift card object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `AddMessageRequest`

**Response**: `GiftCardObjectAddMessageResponse`

```typescript
const res = await walletobjects.giftcardobject.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.giftcardobject.get`

**GET** `walletobjects/v1/giftCardObject/{resourceId}`

Returns the gift card object with the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Response**: `GiftCardObject`

```typescript
const res = await walletobjects.giftcardobject.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.giftcardobject.insert`

**POST** `walletobjects/v1/giftCardObject`

Inserts an gift card object with the given ID and properties.

**Request body**: `GiftCardObject`

**Response**: `GiftCardObject`

```typescript
const res = await walletobjects.giftcardobject.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.giftcardobject.list`

**GET** `walletobjects/v1/giftCardObject`

Returns a list of all gift card objects for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `classId` | `string` | query | No | The ID of the class whose objects will be listed. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` objects are available in... |

**Response**: `GiftCardObjectListResponse`

```typescript
const res = await walletobjects.giftcardobject.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.giftcardobject.patch`

**PATCH** `walletobjects/v1/giftCardObject/{resourceId}`

Updates the gift card object referenced by the given object ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `GiftCardObject`

**Response**: `GiftCardObject`

```typescript
const res = await walletobjects.giftcardobject.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.giftcardobject.update`

**PUT** `walletobjects/v1/giftCardObject/{resourceId}`

Updates the gift card object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `GiftCardObject`

**Response**: `GiftCardObject`

```typescript
const res = await walletobjects.giftcardobject.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.jwt.insert`

**POST** `walletobjects/v1/jwt`

Inserts the resources in the JWT.

**Request body**: `JwtResource`

**Response**: `JwtInsertResponse`

```typescript
const res = await walletobjects.jwt.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.loyaltyclass.addmessage`

**POST** `walletobjects/v1/loyaltyClass/{resourceId}/addMessage`

Adds a message to the loyalty class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `AddMessageRequest`

**Response**: `LoyaltyClassAddMessageResponse`

```typescript
const res = await walletobjects.loyaltyclass.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.loyaltyclass.get`

**GET** `walletobjects/v1/loyaltyClass/{resourceId}`

Returns the loyalty class with the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Response**: `LoyaltyClass`

```typescript
const res = await walletobjects.loyaltyclass.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.loyaltyclass.insert`

**POST** `walletobjects/v1/loyaltyClass`

Inserts an loyalty class with the given ID and properties.

**Request body**: `LoyaltyClass`

**Response**: `LoyaltyClass`

```typescript
const res = await walletobjects.loyaltyclass.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.loyaltyclass.list`

**GET** `walletobjects/v1/loyaltyClass`

Returns a list of all loyalty classes for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `issuerId` | `string` | query | No | The ID of the issuer authorized to list classes. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` classes are available in... |

**Response**: `LoyaltyClassListResponse`

```typescript
const res = await walletobjects.loyaltyclass.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.loyaltyclass.patch`

**PATCH** `walletobjects/v1/loyaltyClass/{resourceId}`

Updates the loyalty class referenced by the given class ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `LoyaltyClass`

**Response**: `LoyaltyClass`

```typescript
const res = await walletobjects.loyaltyclass.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.loyaltyclass.update`

**PUT** `walletobjects/v1/loyaltyClass/{resourceId}`

Updates the loyalty class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `LoyaltyClass`

**Response**: `LoyaltyClass`

```typescript
const res = await walletobjects.loyaltyclass.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.loyaltyobject.addmessage`

**POST** `walletobjects/v1/loyaltyObject/{resourceId}/addMessage`

Adds a message to the loyalty object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `AddMessageRequest`

**Response**: `LoyaltyObjectAddMessageResponse`

```typescript
const res = await walletobjects.loyaltyobject.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.loyaltyobject.get`

**GET** `walletobjects/v1/loyaltyObject/{resourceId}`

Returns the loyalty object with the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Response**: `LoyaltyObject`

```typescript
const res = await walletobjects.loyaltyobject.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.loyaltyobject.insert`

**POST** `walletobjects/v1/loyaltyObject`

Inserts an loyalty object with the given ID and properties.

**Request body**: `LoyaltyObject`

**Response**: `LoyaltyObject`

```typescript
const res = await walletobjects.loyaltyobject.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.loyaltyobject.list`

**GET** `walletobjects/v1/loyaltyObject`

Returns a list of all loyalty objects for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `classId` | `string` | query | No | The ID of the class whose objects will be listed. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` objects are available in... |

**Response**: `LoyaltyObjectListResponse`

```typescript
const res = await walletobjects.loyaltyobject.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.loyaltyobject.modifylinkedofferobjects`

**POST** `walletobjects/v1/loyaltyObject/{resourceId}/modifyLinkedOfferObjects`

Deprecated: Use Auto Linked Passes instead. Modifies linked offer objects for the loyalty object with the given ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `ModifyLinkedOfferObjectsRequest`

**Response**: `LoyaltyObject`

```typescript
const res = await walletobjects.loyaltyobject.modifylinkedofferobjects({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.loyaltyobject.patch`

**PATCH** `walletobjects/v1/loyaltyObject/{resourceId}`

Updates the loyalty object referenced by the given object ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `LoyaltyObject`

**Response**: `LoyaltyObject`

```typescript
const res = await walletobjects.loyaltyobject.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.loyaltyobject.update`

**PUT** `walletobjects/v1/loyaltyObject/{resourceId}`

Updates the loyalty object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `LoyaltyObject`

**Response**: `LoyaltyObject`

```typescript
const res = await walletobjects.loyaltyobject.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.offerclass.addmessage`

**POST** `walletobjects/v1/offerClass/{resourceId}/addMessage`

Adds a message to the offer class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `AddMessageRequest`

**Response**: `OfferClassAddMessageResponse`

```typescript
const res = await walletobjects.offerclass.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.offerclass.get`

**GET** `walletobjects/v1/offerClass/{resourceId}`

Returns the offer class with the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Response**: `OfferClass`

```typescript
const res = await walletobjects.offerclass.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.offerclass.insert`

**POST** `walletobjects/v1/offerClass`

Inserts an offer class with the given ID and properties.

**Request body**: `OfferClass`

**Response**: `OfferClass`

```typescript
const res = await walletobjects.offerclass.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.offerclass.list`

**GET** `walletobjects/v1/offerClass`

Returns a list of all offer classes for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `issuerId` | `string` | query | No | The ID of the issuer authorized to list classes. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` classes are available in... |

**Response**: `OfferClassListResponse`

```typescript
const res = await walletobjects.offerclass.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.offerclass.patch`

**PATCH** `walletobjects/v1/offerClass/{resourceId}`

Updates the offer class referenced by the given class ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `OfferClass`

**Response**: `OfferClass`

```typescript
const res = await walletobjects.offerclass.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.offerclass.update`

**PUT** `walletobjects/v1/offerClass/{resourceId}`

Updates the offer class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `OfferClass`

**Response**: `OfferClass`

```typescript
const res = await walletobjects.offerclass.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.offerobject.addmessage`

**POST** `walletobjects/v1/offerObject/{resourceId}/addMessage`

Adds a message to the offer object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `AddMessageRequest`

**Response**: `OfferObjectAddMessageResponse`

```typescript
const res = await walletobjects.offerobject.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.offerobject.get`

**GET** `walletobjects/v1/offerObject/{resourceId}`

Returns the offer object with the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Response**: `OfferObject`

```typescript
const res = await walletobjects.offerobject.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.offerobject.insert`

**POST** `walletobjects/v1/offerObject`

Inserts an offer object with the given ID and properties.

**Request body**: `OfferObject`

**Response**: `OfferObject`

```typescript
const res = await walletobjects.offerobject.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.offerobject.list`

**GET** `walletobjects/v1/offerObject`

Returns a list of all offer objects for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `classId` | `string` | query | No | The ID of the class whose objects will be listed. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` objects are available in... |

**Response**: `OfferObjectListResponse`

```typescript
const res = await walletobjects.offerobject.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.offerobject.patch`

**PATCH** `walletobjects/v1/offerObject/{resourceId}`

Updates the offer object referenced by the given object ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `OfferObject`

**Response**: `OfferObject`

```typescript
const res = await walletobjects.offerobject.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.offerobject.update`

**PUT** `walletobjects/v1/offerObject/{resourceId}`

Updates the offer object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `OfferObject`

**Response**: `OfferObject`

```typescript
const res = await walletobjects.offerobject.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.permissions.get`

**GET** `walletobjects/v1/permissions/{resourceId}`

Returns the permissions for the given issuer id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an issuer. This ID must be unique across all issuers. |

**Response**: `Permissions`

```typescript
const res = await walletobjects.permissions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.permissions.update`

**PUT** `walletobjects/v1/permissions/{resourceId}`

Updates the permissions for the given issuer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an issuer. This ID must be unique across all issuers. |

**Request body**: `Permissions`

**Response**: `Permissions`

```typescript
const res = await walletobjects.permissions.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.media.upload`

**POST** `walletobjects/v1/transitObject/{resourceId}/uploadRotatingBarcodeValues`

Uploads rotating barcode values for the transit object referenced by the given object ID. Note the max upload size is specified in google3/production/config/cdd/apps-upload/customers/payments-consumer-passes/config.gcl and enforced by Scotty.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `TransitObjectUploadRotatingBarcodeValuesRequest`

**Response**: `TransitObjectUploadRotatingBarcodeValuesResponse`

```typescript
const res = await walletobjects.media.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.media.download`

**GET** `walletobjects/v1/transitObject/{resourceId}/downloadRotatingBarcodeValues`

Downloads rotating barcode values for the transit object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Response**: `Media`

```typescript
const res = await walletobjects.media.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.walletobjects.v1.privateContent.setPassUpdateNotice`

**POST** `walletobjects/v1/privateContent/setPassUpdateNotice`

Provide Google with information about awaiting private pass update. This will allow Google to provide the update notification to the device that currently holds this pass.

**Request body**: `SetPassUpdateNoticeRequest`

**Response**: `SetPassUpdateNoticeResponse`

```typescript
const res = await walletobjects.privateContent.setPassUpdateNotice({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.smarttap.insert`

**POST** `walletobjects/v1/smartTap`

Inserts the smart tap.

**Request body**: `SmartTap`

**Response**: `SmartTap`

```typescript
const res = await walletobjects.smarttap.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.transitclass.addmessage`

**POST** `walletobjects/v1/transitClass/{resourceId}/addMessage`

Adds a message to the transit class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `AddMessageRequest`

**Response**: `TransitClassAddMessageResponse`

```typescript
const res = await walletobjects.transitclass.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.transitclass.get`

**GET** `walletobjects/v1/transitClass/{resourceId}`

Returns the transit class with the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Response**: `TransitClass`

```typescript
const res = await walletobjects.transitclass.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.transitclass.insert`

**POST** `walletobjects/v1/transitClass`

Inserts a transit class with the given ID and properties.

**Request body**: `TransitClass`

**Response**: `TransitClass`

```typescript
const res = await walletobjects.transitclass.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.transitclass.list`

**GET** `walletobjects/v1/transitClass`

Returns a list of all transit classes for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `issuerId` | `string` | query | No | The ID of the issuer authorized to list classes. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` classes are available in... |

**Response**: `TransitClassListResponse`

```typescript
const res = await walletobjects.transitclass.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.transitclass.patch`

**PATCH** `walletobjects/v1/transitClass/{resourceId}`

Updates the transit class referenced by the given class ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `TransitClass`

**Response**: `TransitClass`

```typescript
const res = await walletobjects.transitclass.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.transitclass.update`

**PUT** `walletobjects/v1/transitClass/{resourceId}`

Updates the transit class referenced by the given class ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow... |

**Request body**: `TransitClass`

**Response**: `TransitClass`

```typescript
const res = await walletobjects.transitclass.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.transitobject.addmessage`

**POST** `walletobjects/v1/transitObject/{resourceId}/addMessage`

Adds a message to the transit object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `AddMessageRequest`

**Response**: `TransitObjectAddMessageResponse`

```typescript
const res = await walletobjects.transitobject.addmessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.transitobject.get`

**GET** `walletobjects/v1/transitObject/{resourceId}`

Returns the transit object with the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Response**: `TransitObject`

```typescript
const res = await walletobjects.transitobject.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.transitobject.insert`

**POST** `walletobjects/v1/transitObject`

Inserts an transit object with the given ID and properties.

**Request body**: `TransitObject`

**Response**: `TransitObject`

```typescript
const res = await walletobjects.transitobject.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.transitobject.list`

**GET** `walletobjects/v1/transitObject`

Returns a list of all transit objects for a given issuer ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `classId` | `string` | query | No | The ID of the class whose objects will be listed. |
| `maxResults` | `integer` | query | No | Identifies the max number of results returned by a list. All results are returned if `maxResults` isn't defined. |
| `token` | `string` | query | No | Used to get the next set of results if `maxResults` is specified, but more than `maxResults` objects are available in... |

**Response**: `TransitObjectListResponse`

```typescript
const res = await walletobjects.transitobject.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.transitobject.patch`

**PATCH** `walletobjects/v1/transitObject/{resourceId}`

Updates the transit object referenced by the given object ID. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `TransitObject`

**Response**: `TransitObject`

```typescript
const res = await walletobjects.transitobject.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

### `walletobjects.transitobject.update`

**PUT** `walletobjects/v1/transitObject/{resourceId}`

Updates the transit object referenced by the given object ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceId` | `string` | path | Yes | The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should foll... |

**Request body**: `TransitObject`

**Response**: `TransitObject`

```typescript
const res = await walletobjects.transitobject.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/wallet_object.issuer`

---

## Schemas

### `ActivationOptions`

ActivationOptions for the class

| Property | Type | Description |
|----------|------|-------------|
| `activationUrl` | `string` | HTTPS URL that supports REST semantics. Would be used for requesting activation from partners for... |
| `allowReactivation` | `boolean` | Flag to allow users to make activation call from different device. This allows client to render t... |

### `ActivationStatus`

The activation status of the object. This field includes activation status if valuable supports activation.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` |  |

### `AddMessageRequest`

Resource used when the AddMessage endpoints are called.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `Message` |  |

### `AirportInfo`

| Property | Type | Description |
|----------|------|-------------|
| `airportIataCode` | `string` | Three character IATA airport code. This is a required field for `origin` and `destination`. Eg: "... |
| `airportNameOverride` | `LocalizedString` | Optional field that overrides the airport city name defined by IATA. By default, Google takes the... |
| `gate` | `string` | A name of the gate. Eg: "B59" or "59" |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#airportInfo"`. |
| `terminal` | `string` | Terminal name. Eg: "INTL" or "I" |

### `AppLinkData`

| Property | Type | Description |
|----------|------|-------------|
| `androidAppLinkInfo` | `AppLinkDataAppLinkInfo` | Optional information about the partner app link. |
| `displayText` | `LocalizedString` | Optional display text for the app link button. Character limit is 30. |
| `iosAppLinkInfo` | `AppLinkDataAppLinkInfo` | Deprecated. Links to open iOS apps are not supported. |
| `webAppLinkInfo` | `AppLinkDataAppLinkInfo` | Optional information about the partner web link. |

### `AppLinkDataAppLinkInfo`

| Property | Type | Description |
|----------|------|-------------|
| `appLogoImage` | `Image` | Deprecated. Image isn't supported in the app link module. |
| `appTarget` | `AppLinkDataAppLinkInfoAppTarget` | Target to follow when opening the app link on clients. It will be used by partners to open their ... |
| `description` | `LocalizedString` | Deprecated. Description isn't supported in the app link module. |
| `title` | `LocalizedString` | Deprecated. Title isn't supported in the app link module. |

### `AppLinkDataAppLinkInfoAppTarget`

| Property | Type | Description |
|----------|------|-------------|
| `packageName` | `string` | Package name for AppTarget. For example: com.google.android.gm |
| `targetUri` | `Uri` | URI for AppTarget. The description on the URI must be set. Prefer setting package field instead, ... |

### `AuthenticationKey`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `integer` | Available only to Smart Tap enabled partners. Contact support for additional guidance. |
| `publicKeyPem` | `string` | Available only to Smart Tap enabled partners. Contact support for additional guidance. |

### `Barcode`

| Property | Type | Description |
|----------|------|-------------|
| `alternateText` | `string` | An optional text that will override the default text that shows under the barcode. This field is ... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#barcode"`. |
| `renderEncoding` | `string` | The render encoding for the barcode. When specified, barcode is rendered in the given encoding. O... |
| `showCodeText` | `LocalizedString` | Optional text that will be shown when the barcode is hidden behind a click action. This happens i... |
| `type` | `string` | The type of barcode. |
| `value` | `string` | The value encoded in the barcode. |

### `BarcodeSectionDetail`

| Property | Type | Description |
|----------|------|-------------|
| `fieldSelector` | `FieldSelector` | A reference to an existing text-based or image field to display. |

### `Blobstore2Info`

Information to read/write to blobstore2.

| Property | Type | Description |
|----------|------|-------------|
| `blobGeneration` | `string` | The blob generation id. |
| `blobId` | `string` | The blob id, e.g., /blobstore/prod/playground/scotty |
| `downloadExternalReadToken` | `string` | A serialized External Read Token passed from Bigstore -> Scotty for a GCS download. This field mu... |
| `downloadReadHandle` | `string` | Read handle passed from Bigstore -> Scotty for a GCS download. This is a signed, serialized blobs... |
| `readToken` | `string` | The blob read token. Needed to read blobs that have not been replicated. Might not be available u... |
| `uploadFragmentListCreationInfo` | `string` | A serialized Object Fragment List Creation Info passed from Bigstore -> Scotty for a GCS upload. ... |
| `uploadMetadataContainer` | `string` | Metadata passed from Blobstore -> Scotty for a new GCS upload. This is a signed, serialized blobs... |

### `BoardingAndSeatingInfo`

| Property | Type | Description |
|----------|------|-------------|
| `boardingDoor` | `string` | Set this field only if this flight boards through more than one door or bridge and you want to ex... |
| `boardingGroup` | `string` | The value of boarding group (or zone) this passenger shall board with. eg: "B" The label for this... |
| `boardingPosition` | `string` | The value of boarding position. eg: "76" |
| `boardingPrivilegeImage` | `Image` | A small image shown above the boarding barcode. Airlines can use it to communicate any special bo... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#boardingAndSeat... |
| `seatAssignment` | `LocalizedString` | The passenger's seat assignment. To be used when there is no specific identifier to use in `seatN... |
| `seatClass` | `string` | The value of the seat class. eg: "Economy" or "Economy Plus" |
| `seatNumber` | `string` | The value of passenger seat. If there is no specific identifier, use `seatAssignment` instead. eg... |
| `sequenceNumber` | `string` | The sequence number on the boarding pass. This usually matches the sequence in which the passenge... |

### `BoardingAndSeatingPolicy`

| Property | Type | Description |
|----------|------|-------------|
| `boardingPolicy` | `string` | Indicates the policy the airline uses for boarding. If unset, Google will default to `zoneBased`. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#boardingAndSeat... |
| `seatClassPolicy` | `string` | Seating policy which dictates how we display the seat class. If unset, Google will default to `ca... |

### `CallbackOptions`

| Property | Type | Description |
|----------|------|-------------|
| `updateRequestUrl` | `string` | URL for the merchant endpoint that would be called to request updates. The URL should be hosted o... |
| `url` | `string` | The HTTPS url configured by the merchant. The URL should be hosted on HTTPS and robots.txt should... |

### `CardBarcodeSectionDetails`

| Property | Type | Description |
|----------|------|-------------|
| `firstBottomDetail` | `BarcodeSectionDetail` | Optional information to display below the barcode. |
| `firstTopDetail` | `BarcodeSectionDetail` | Optional information to display above the barcode. If `secondTopDetail` is defined, this will be ... |
| `secondTopDetail` | `BarcodeSectionDetail` | Optional second piece of information to display above the barcode. If `firstTopDetail` is defined... |

### `CardRowOneItem`

| Property | Type | Description |
|----------|------|-------------|
| `item` | `TemplateItem` | The item to be displayed in the row. This item will be automatically centered. |

### `CardRowTemplateInfo`

| Property | Type | Description |
|----------|------|-------------|
| `oneItem` | `CardRowOneItem` | Template for a row containing one item. Exactly one of "one_item", "two_items", "three_items" mus... |
| `threeItems` | `CardRowThreeItems` | Template for a row containing three items. Exactly one of "one_item", "two_items", "three_items" ... |
| `twoItems` | `CardRowTwoItems` | Template for a row containing two items. Exactly one of "one_item", "two_items", "three_items" mu... |

### `CardRowThreeItems`

| Property | Type | Description |
|----------|------|-------------|
| `endItem` | `TemplateItem` | The item to be displayed at the end of the row. This item will be aligned to the right. |
| `middleItem` | `TemplateItem` | The item to be displayed in the middle of the row. This item will be centered between the start a... |
| `startItem` | `TemplateItem` | The item to be displayed at the start of the row. This item will be aligned to the left. |

### `CardRowTwoItems`

| Property | Type | Description |
|----------|------|-------------|
| `endItem` | `TemplateItem` | The item to be displayed at the end of the row. This item will be aligned to the right. |
| `startItem` | `TemplateItem` | The item to be displayed at the start of the row. This item will be aligned to the left. |

### `CardTemplateOverride`

| Property | Type | Description |
|----------|------|-------------|
| `cardRowTemplateInfos` | `array<CardRowTemplateInfo>` | Template information for rows in the card view. At most three rows are allowed to be specified. |

### `ClassTemplateInfo`

| Property | Type | Description |
|----------|------|-------------|
| `cardBarcodeSectionDetails` | `CardBarcodeSectionDetails` | Specifies extra information to be displayed above and below the barcode. |
| `cardTemplateOverride` | `CardTemplateOverride` | Override for the card view. |
| `detailsTemplateOverride` | `DetailsTemplateOverride` | Override for the details view (beneath the card view). |
| `listTemplateOverride` | `ListTemplateOverride` | Override for the passes list view. |

### `CompositeMedia`

A sequence of media data references representing composite data. Introduced to support Bigstore composite objects. For details, visit http://go/bigstore-composites.

| Property | Type | Description |
|----------|------|-------------|
| `blobRef` | `string` | Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should be the byte representa... |
| `blobstore2Info` | `Blobstore2Info` | Blobstore v2 info, set if reference_type is BLOBSTORE_REF and it refers to a v2 blob. |
| `cosmoBinaryReference` | `string` | A binary data reference for a media download. Serves as a technology-agnostic binary reference in... |
| `crc32cHash` | `integer` | crc32.c hash for the payload. |
| `inline` | `string` | Media data, set if reference_type is INLINE |
| `length` | `string` | Size of the data, in bytes |
| `md5Hash` | `string` | MD5 hash for the payload. |
| `objectId` | `ObjectId` | Reference to a TI Blob, set if reference_type is BIGSTORE_REF. |
| `path` | `string` | Path to the data, set if reference_type is PATH |
| `referenceType` | `string` | Describes what the field reference contains. |
| `sha1Hash` | `string` | SHA-1 hash for the payload. |

### `ContentTypeInfo`

Detailed Content-Type information from Scotty. The Content-Type of the media will typically be filled in by the header or Scotty's best_guess, but this extended information provides the backend with more information so that it can make a better decision if needed. This is only used on media upload requests from Scotty.

| Property | Type | Description |
|----------|------|-------------|
| `bestGuess` | `string` | Scotty's best guess of what the content type of the file is. |
| `fromBytes` | `string` | The content type of the file derived by looking at specific bytes (i.e. "magic bytes") of the act... |
| `fromFileName` | `string` | The content type of the file derived from the file extension of the original file name used by th... |
| `fromHeader` | `string` | The content type of the file as specified in the request headers, multipart headers, or RUPIO sta... |
| `fromUrlPath` | `string` | The content type of the file derived from the file extension of the URL path. The URL path is ass... |

### `DateTime`

| Property | Type | Description |
|----------|------|-------------|
| `date` | `string` | An ISO 8601 extended format date/time. Offset may or may not be required (refer to the parent fie... |

### `DetailsItemInfo`

| Property | Type | Description |
|----------|------|-------------|
| `item` | `TemplateItem` | The item to be displayed in the details list. |

### `DetailsTemplateOverride`

| Property | Type | Description |
|----------|------|-------------|
| `detailsItemInfos` | `array<DetailsItemInfo>` | Information for the "nth" item displayed in the details list. |

### `DeviceContext`

Device context associated with the object.

| Property | Type | Description |
|----------|------|-------------|
| `deviceToken` | `string` | If set, redemption information will only be returned to the given device upon activation of the o... |

### `DiffChecksumsResponse`

Backend response for a Diff get checksums response. For details on the Scotty Diff protocol, visit http://go/scotty-diff-protocol.

| Property | Type | Description |
|----------|------|-------------|
| `checksumsLocation` | `CompositeMedia` | Exactly one of these fields must be populated. If checksums_location is filled, the server will r... |
| `chunkSizeBytes` | `string` | The chunk size of checksums. Must be a multiple of 256KB. |
| `objectLocation` | `CompositeMedia` | If set, calculate the checksums based on the contents and return them to the caller. |
| `objectSizeBytes` | `string` | The total size of the server object. |
| `objectVersion` | `string` | The object version of the object the checksums are being returned for. |

### `DiffDownloadResponse`

Backend response for a Diff download response. For details on the Scotty Diff protocol, visit http://go/scotty-diff-protocol.

| Property | Type | Description |
|----------|------|-------------|
| `objectLocation` | `CompositeMedia` | The original object location. |

### `DiffUploadRequest`

A Diff upload request. For details on the Scotty Diff protocol, visit http://go/scotty-diff-protocol.

| Property | Type | Description |
|----------|------|-------------|
| `checksumsInfo` | `CompositeMedia` | The location of the checksums for the new object. Agents must clone the object located here, as t... |
| `objectInfo` | `CompositeMedia` | The location of the new object. Agents must clone the object located here, as the upload server w... |
| `objectVersion` | `string` | The object version of the object that is the base version the incoming diff script will be applie... |

### `DiffUploadResponse`

Backend response for a Diff upload request. For details on the Scotty Diff protocol, visit http://go/scotty-diff-protocol.

| Property | Type | Description |
|----------|------|-------------|
| `objectVersion` | `string` | The object version of the object at the server. Must be included in the end notification response... |
| `originalObject` | `CompositeMedia` | The location of the original file for a diff upload request. Must be filled in if responding to a... |

### `DiffVersionResponse`

Backend response for a Diff get version response. For details on the Scotty Diff protocol, visit http://go/scotty-diff-protocol.

| Property | Type | Description |
|----------|------|-------------|
| `objectSizeBytes` | `string` | The total size of the server object. |
| `objectVersion` | `string` | The version of the object stored at the server. |

### `DiscoverableProgram`

Information about how a class may be discovered and instantiated from within the Google Wallet app. This is done by searching for a loyalty or gift card program and scanning or manually entering.

| Property | Type | Description |
|----------|------|-------------|
| `merchantSigninInfo` | `DiscoverableProgramMerchantSigninInfo` | Information about the ability to signin and add a valuable for this program through a merchant si... |
| `merchantSignupInfo` | `DiscoverableProgramMerchantSignupInfo` | Information about the ability to signup and add a valuable for this program through a merchant si... |
| `state` | `string` | Visibility state of the discoverable program. |

### `DiscoverableProgramMerchantSigninInfo`

Information about the merchant hosted signin flow for a program.

| Property | Type | Description |
|----------|------|-------------|
| `signinWebsite` | `Uri` | The URL to direct the user to for the merchant's signin site. |

### `DiscoverableProgramMerchantSignupInfo`

Information about the merchant hosted signup flow for a program.

| Property | Type | Description |
|----------|------|-------------|
| `signupSharedDatas` | `array<string>` | User data that is sent in a POST request to the signup website URL. This information is encoded a... |
| `signupWebsite` | `Uri` | The URL to direct the user to for the merchant's signup site. |

### `DownloadParameters`

Parameters specific to media downloads.

| Property | Type | Description |
|----------|------|-------------|
| `allowGzipCompression` | `boolean` | A boolean to be returned in the response to Scotty. Allows/disallows gzip encoding of the payload... |
| `ignoreRange` | `boolean` | Determining whether or not Apiary should skip the inclusion of any Content-Range header on its re... |

### `EventDateTime`

| Property | Type | Description |
|----------|------|-------------|
| `customDoorsOpenLabel` | `LocalizedString` | A custom label to use for the doors open value (`doorsOpen`) on the card detail view. This should... |
| `doorsOpen` | `string` | The date/time when the doors open at the venue. This is an ISO 8601 extended format date/time, wi... |
| `doorsOpenLabel` | `string` | The label to use for the doors open value (`doorsOpen`) on the card detail view. Each available o... |
| `end` | `string` | The date/time when the event ends. If the event spans multiple days, it should be the end date/ti... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#eventDateTime"`. |
| `start` | `string` | The date/time when the event starts. If the event spans multiple days, it should be the start dat... |

### `EventReservationInfo`

| Property | Type | Description |
|----------|------|-------------|
| `confirmationCode` | `string` | The confirmation code of the event reservation. This may also take the form of an "order number",... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#eventReservatio... |

### `EventSeat`

| Property | Type | Description |
|----------|------|-------------|
| `gate` | `LocalizedString` | The gate the ticket holder should enter to get to their seat, such as "A" or "West". This field i... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#eventSeat"`. |
| `row` | `LocalizedString` | The row of the seat, such as "1", E", "BB", or "A5". This field is localizable so you may transla... |
| `seat` | `LocalizedString` | The seat number, such as "1", "2", "3", or any other seat identifier. This field is localizable s... |
| `section` | `LocalizedString` | The section of the seat, such as "121". This field is localizable so you may translate words or u... |

### `EventTicketClass`

| Property | Type | Description |
|----------|------|-------------|
| `allowMultipleUsersPerObject` | `boolean` | Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead. |
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `callbackOptions` | `CallbackOptions` | Callback options to be used to call the issuer back for every save/delete of an object for this c... |
| `classTemplateInfo` | `ClassTemplateInfo` | Template information about how the class should be displayed. If unset, Google will fallback to a... |
| `confirmationCodeLabel` | `string` | The label to use for the confirmation code value (`eventTicketObject.reservationInfo.confirmation... |
| `countryCode` | `string` | Country code used to display the card's country (when the user is not in that country), as well a... |
| `customConfirmationCodeLabel` | `LocalizedString` | A custom label to use for the confirmation code value (`eventTicketObject.reservationInfo.confirm... |
| `customGateLabel` | `LocalizedString` | A custom label to use for the gate value (`eventTicketObject.seatInfo.gate`) on the card detail v... |
| `customRowLabel` | `LocalizedString` | A custom label to use for the row value (`eventTicketObject.seatInfo.row`) on the card detail vie... |
| `customSeatLabel` | `LocalizedString` | A custom label to use for the seat value (`eventTicketObject.seatInfo.seat`) on the card detail v... |
| `customSectionLabel` | `LocalizedString` | A custom label to use for the section value (`eventTicketObject.seatInfo.section`) on the card de... |
| `dateTime` | `EventDateTime` | The date & time information of the event. |
| `enableSmartTap` | `boolean` | Identifies whether this class supports Smart Tap. The `redemptionIssuers` and object level `smart... |
| `eventId` | `string` | The ID of the event. This ID should be unique for every event in an account. It is used to group ... |
| `eventName` | `LocalizedString` | Required. The name of the event, such as "LA Dodgers at SF Giants". |
| `finePrint` | `LocalizedString` | The fine print, terms, or conditions of the ticket. |
| `gateLabel` | `string` | The label to use for the gate value (`eventTicketObject.seatInfo.gate`) on the card detail view. ... |
| `heroImage` | `Image` | Optional banner image displayed on the front of the card. If none is present, nothing will be dis... |
| `hexBackgroundColor` | `string` | The background color for the card. If not set the dominant color of the hero image is used, and i... |
| `homepageUri` | `Uri` | The URI of your application's home page. Populating the URI in this field results in the exact sa... |
| `id` | `string` | Required. The unique identifier for a class. This ID must be unique across all classes from an is... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. The maximum number of these fields displayed is 1 from object level and 1 for ... |
| `infoModuleData` | `InfoModuleData` | Deprecated. Use textModulesData instead. |
| `issuerName` | `string` | Required. The issuer name. Recommended maximum length is 20 characters to ensure full string is d... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#eventTicketClas... |
| `linksModuleData` | `LinksModuleData` | Links module data. If links module data is also defined on the object, both will be displayed. |
| `localizedIssuerName` | `LocalizedString` | Translated strings for the issuer_name. Recommended maximum length is 20 characters to ensure ful... |
| `locations` | `array<LatLongPoint>` | Note: This field is currently not supported to trigger geo notifications. |
| `logo` | `Image` | The logo image of the ticket. This image is displayed in the card detail view of the app. |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the class. Any additional MerchantLocations adde... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `multipleDevicesAndHoldersAllowedStatus` | `string` | Identifies whether multiple users and devices will save the same object referencing this class. |
| `notifyPreference` | `string` | Whether or not field updates to this class should trigger notifications. When set to NOTIFY, we w... |
| `redemptionIssuers` | `array<string>` | Identifies which redemption issuers can redeem the pass over Smart Tap. Redemption issuers are id... |
| `review` | `Review` | The review comments set by the platform when a class is marked `approved` or `rejected`. |
| `reviewStatus` | `string` | Required. The status of the class. This field can be set to `draft` or `underReview` using the in... |
| `rowLabel` | `string` | The label to use for the row value (`eventTicketObject.seatInfo.row`) on the card detail view. Ea... |
| `seatLabel` | `string` | The label to use for the seat value (`eventTicketObject.seatInfo.seat`) on the card detail view. ... |
| `sectionLabel` | `string` | The label to use for the section value (`eventTicketObject.seatInfo.section`) on the card detail ... |
| `securityAnimation` | `SecurityAnimation` | Optional information about the security animation. If this is set a security animation will be re... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If text module data is also defined on the class, both will be displayed. The m... |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the class. For a pass only fifteen will b... |
| `venue` | `EventVenue` | Event venue details. |
| `version` | `string` | Deprecated |
| `viewUnlockRequirement` | `string` | View Unlock Requirement options for the event ticket. |
| `wideLogo` | `Image` | The wide logo of the ticket. When provided, this will be used in place of the logo in the top lef... |
| `wordMark` | `Image` | Deprecated. |

### `EventTicketClassAddMessageResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `EventTicketClass` | The updated EventTicketClass resource. |

### `EventTicketClassListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<EventTicketClass>` | Resources corresponding to the list request. |

### `EventTicketObject`

| Property | Type | Description |
|----------|------|-------------|
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `barcode` | `Barcode` | The barcode type and value. |
| `classId` | `string` | Required. The class associated with this object. The class must be of the same type as this objec... |
| `classReference` | `EventTicketClass` | A copy of the inherited fields of the parent class. These fields are retrieved during a GET. |
| `disableExpirationNotification` | `boolean` | Indicates if notifications should explicitly be suppressed. If this field is set to true, regardl... |
| `faceValue` | `Money` | The face value of the ticket, matching what would be printed on a physical version of the ticket. |
| `groupingInfo` | `GroupingInfo` | Information that controls how passes are grouped together. |
| `hasLinkedDevice` | `boolean` | Whether this object is currently linked to a single device. This field is set by the platform whe... |
| `hasUsers` | `boolean` | Indicates if the object has users. This field is set by the platform. |
| `heroImage` | `Image` | Optional banner image displayed on the front of the card. If none is present, hero image of the c... |
| `hexBackgroundColor` | `string` | The background color for the card. If not set the dominant color of the hero image is used, and i... |
| `id` | `string` | Required. The unique identifier for an object. This ID must be unique across all objects from an ... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. The maximum number of these fields displayed is 1 from object level and 1 for ... |
| `infoModuleData` | `InfoModuleData` | Deprecated. Use textModulesData instead. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#eventTicketObje... |
| `linkedObjectIds` | `array<string>` | linked_object_ids are a list of other objects such as event ticket, loyalty, offer, generic, gift... |
| `linkedOfferIds` | `array<string>` | A list of offer objects linked to this event ticket. The offer objects must already exist. Offer ... |
| `linksModuleData` | `LinksModuleData` | Links module data. If links module data is also defined on the class, both will be displayed. |
| `locations` | `array<LatLongPoint>` | Note: This field is currently not supported to trigger geo notifications. |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the object. Any additional MerchantLocations add... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `notifyPreference` | `string` | Whether or not field updates to this object should trigger notifications. When set to NOTIFY, we ... |
| `passConstraints` | `PassConstraints` | Pass constraints for the object. Includes limiting NFC and screenshot behaviors. |
| `reservationInfo` | `EventReservationInfo` | Reservation details for this ticket. This is expected to be shared amongst all tickets that were ... |
| `rotatingBarcode` | `RotatingBarcode` | The rotating barcode type and value. |
| `saveRestrictions` | `SaveRestrictions` | Restrictions on the object that needs to be verified before the user tries to save the pass. Note... |
| `seatInfo` | `EventSeat` | Seating details for this ticket. |
| `smartTapRedemptionValue` | `string` | The value that will be transmitted to a Smart Tap certified terminal over NFC for this object. Th... |
| `state` | `string` | Required. The state of the object. This field is used to determine how an object is displayed in ... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If text module data is also defined on the class, both will be displayed. The m... |
| `ticketHolderName` | `string` | Name of the ticket holder, if the ticket is assigned to a person. E.g. "John Doe" or "Jane Doe". |
| `ticketNumber` | `string` | The number of the ticket. This can be a unique identifier across all tickets in an issuer's syste... |
| `ticketType` | `LocalizedString` | The type of the ticket, such as "Adult" or "Child", or "VIP" or "Standard". |
| `validTimeInterval` | `TimeInterval` | The time period this object will be `active` and object can be used. An object's state will be ch... |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the object. For a pass only fifteen will ... |
| `version` | `string` | Deprecated |

### `EventTicketObjectAddMessageResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `EventTicketObject` | The updated EventTicketObject resource. |

### `EventTicketObjectListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<EventTicketObject>` | Resources corresponding to the list request. |

### `EventVenue`

| Property | Type | Description |
|----------|------|-------------|
| `address` | `LocalizedString` | The address of the venue, such as "24 Willie Mays Plaza\nSan Francisco, CA 94107". Address lines ... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#eventVenue"`. |
| `name` | `LocalizedString` | The name of the venue, such as "AT&T Park". This is required. |

### `ExpiryNotification`

Indicates that the issuer would like Google Wallet to send expiry notifications 2 days prior to the card expiration.

| Property | Type | Description |
|----------|------|-------------|
| `enableNotification` | `boolean` | Indicates if the object needs to have expiry notification enabled. |

### `FieldReference`

Reference definition to use with field overrides.

| Property | Type | Description |
|----------|------|-------------|
| `dateFormat` | `string` | Only valid if the `fieldPath` references a date field. Chooses how the date field will be formatt... |
| `fieldPath` | `string` | Path to the field being referenced, prefixed with "object" or "class" and separated with dots. Fo... |

### `FieldSelector`

Custom field selector to use with field overrides.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<FieldReference>` | If more than one reference is supplied, then the first one that references a non-empty field will... |

### `FirstRowOption`

| Property | Type | Description |
|----------|------|-------------|
| `fieldOption` | `FieldSelector` | A reference to the field to be displayed in the first row. |
| `transitOption` | `string` |  |

### `FlightCarrier`

| Property | Type | Description |
|----------|------|-------------|
| `airlineAllianceLogo` | `Image` | A logo for the airline alliance, displayed below the QR code that the passenger scans to board. |
| `airlineLogo` | `Image` | A logo for the airline described by carrierIataCode and localizedAirlineName. This logo will be r... |
| `airlineName` | `LocalizedString` | A localized name of the airline specified by carrierIataCode. If unset, `issuer_name` or `localiz... |
| `carrierIataCode` | `string` | Two character IATA airline code of the marketing carrier (as opposed to operating carrier). Exact... |
| `carrierIcaoCode` | `string` | Three character ICAO airline code of the marketing carrier (as opposed to operating carrier). Exa... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#flightCarrier"`. |
| `wideAirlineLogo` | `Image` | The wide logo of the airline. When provided, this will be used in place of the airline logo in th... |

### `FlightClass`

| Property | Type | Description |
|----------|------|-------------|
| `allowMultipleUsersPerObject` | `boolean` | Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead. |
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `boardingAndSeatingPolicy` | `BoardingAndSeatingPolicy` | Policies for boarding and seating. These will inform which labels will be shown to users. |
| `callbackOptions` | `CallbackOptions` | Callback options to be used to call the issuer back for every save/delete of an object for this c... |
| `classTemplateInfo` | `ClassTemplateInfo` | Template information about how the class should be displayed. If unset, Google will fallback to a... |
| `countryCode` | `string` | Country code used to display the card's country (when the user is not in that country), as well a... |
| `destination` | `AirportInfo` | Required. Destination airport. |
| `enableSmartTap` | `boolean` | Identifies whether this class supports Smart Tap. The `redemptionIssuers` and object level `smart... |
| `flightHeader` | `FlightHeader` | Required. Information about the flight carrier and number. |
| `flightStatus` | `string` | Status of this flight. If unset, Google will compute status based on data from other sources, suc... |
| `heroImage` | `Image` | Optional banner image displayed on the front of the card. If none is present, nothing will be dis... |
| `hexBackgroundColor` | `string` | The background color for the card. If not set the dominant color of the hero image is used, and i... |
| `homepageUri` | `Uri` | The URI of your application's home page. Populating the URI in this field results in the exact sa... |
| `id` | `string` | Required. The unique identifier for a class. This ID must be unique across all classes from an is... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. The maximum number of these fields displayed is 1 from object level and 1 for ... |
| `infoModuleData` | `InfoModuleData` | Deprecated. Use textModulesData instead. |
| `issuerName` | `string` | Required. The issuer name. Recommended maximum length is 20 characters to ensure full string is d... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#flightClass"`. |
| `languageOverride` | `string` | If this field is present, boarding passes served to a user's device will always be in this langua... |
| `linksModuleData` | `LinksModuleData` | Links module data. If links module data is also defined on the object, both will be displayed. |
| `localBoardingDateTime` | `string` | The boarding time as it would be printed on the boarding pass. This is an ISO 8601 extended forma... |
| `localEstimatedOrActualArrivalDateTime` | `string` | The estimated time the aircraft plans to reach the destination gate (not the runway) or the actua... |
| `localEstimatedOrActualDepartureDateTime` | `string` | The estimated time the aircraft plans to pull from the gate or the actual time the aircraft alrea... |
| `localGateClosingDateTime` | `string` | The gate closing time as it would be printed on the boarding pass. Do not set this field if you d... |
| `localScheduledArrivalDateTime` | `string` | The scheduled time the aircraft plans to reach the destination gate (not the runway). Note: This ... |
| `localScheduledDepartureDateTime` | `string` | Required. The scheduled date and time when the aircraft is expected to depart the gate (not the r... |
| `localizedIssuerName` | `LocalizedString` | Translated strings for the issuer_name. Recommended maximum length is 20 characters to ensure ful... |
| `locations` | `array<LatLongPoint>` | Note: This field is currently not supported to trigger geo notifications. |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the class. Any additional MerchantLocations adde... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `multipleDevicesAndHoldersAllowedStatus` | `string` | Identifies whether multiple users and devices will save the same object referencing this class. |
| `notifyPreference` | `string` | Whether or not field updates to this class should trigger notifications. When set to NOTIFY, we w... |
| `origin` | `AirportInfo` | Required. Origin airport. |
| `redemptionIssuers` | `array<string>` | Identifies which redemption issuers can redeem the pass over Smart Tap. Redemption issuers are id... |
| `review` | `Review` | The review comments set by the platform when a class is marked `approved` or `rejected`. |
| `reviewStatus` | `string` | Required. The status of the class. This field can be set to `draft` or `underReview` using the in... |
| `securityAnimation` | `SecurityAnimation` | Optional information about the security animation. If this is set a security animation will be re... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If text module data is also defined on the class, both will be displayed. The m... |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the class. For a pass only fifteen will b... |
| `version` | `string` | Deprecated |
| `viewUnlockRequirement` | `string` | View Unlock Requirement options for the boarding pass. |
| `wordMark` | `Image` | Deprecated. |

### `FlightClassAddMessageResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `FlightClass` | The updated FlightClass resource. |

### `FlightClassListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<FlightClass>` | Resources corresponding to the list request. |

### `FlightHeader`

| Property | Type | Description |
|----------|------|-------------|
| `carrier` | `FlightCarrier` | Information about airline carrier. This is a required property of `flightHeader`. |
| `flightNumber` | `string` | The flight number without IATA carrier code. This field should contain only digits. This is a req... |
| `flightNumberDisplayOverride` | `string` | Override value to use for flight number. The default value used for display purposes is carrier +... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#flightHeader"`. |
| `operatingCarrier` | `FlightCarrier` | Information about operating airline carrier. |
| `operatingFlightNumber` | `string` | The flight number used by the operating carrier without IATA carrier code. This field should cont... |

### `FlightObject`

| Property | Type | Description |
|----------|------|-------------|
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `barcode` | `Barcode` | The barcode type and value. |
| `boardingAndSeatingInfo` | `BoardingAndSeatingInfo` | Passenger specific information about boarding and seating. |
| `classId` | `string` | Required. The class associated with this object. The class must be of the same type as this objec... |
| `classReference` | `FlightClass` | A copy of the inherited fields of the parent class. These fields are retrieved during a GET. |
| `disableExpirationNotification` | `boolean` | Indicates if notifications should explicitly be suppressed. If this field is set to true, regardl... |
| `groupingInfo` | `GroupingInfo` | Information that controls how passes are grouped together. |
| `hasLinkedDevice` | `boolean` | Whether this object is currently linked to a single device. This field is set by the platform whe... |
| `hasUsers` | `boolean` | Indicates if the object has users. This field is set by the platform. |
| `heroImage` | `Image` | Optional banner image displayed on the front of the card. If none is present, hero image of the c... |
| `hexBackgroundColor` | `string` | The background color for the card. If not set the dominant color of the hero image is used, and i... |
| `id` | `string` | Required. The unique identifier for an object. This ID must be unique across all objects from an ... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. The maximum number of these fields displayed is 1 from object level and 1 for ... |
| `infoModuleData` | `InfoModuleData` | Deprecated. Use textModulesData instead. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#flightObject"`. |
| `linkedObjectIds` | `array<string>` | linked_object_ids are a list of other objects such as event ticket, loyalty, offer, generic, gift... |
| `linksModuleData` | `LinksModuleData` | Links module data. If links module data is also defined on the class, both will be displayed. |
| `locations` | `array<LatLongPoint>` | Note: This field is currently not supported to trigger geo notifications. |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the object. Any additional MerchantLocations add... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `notifyPreference` | `string` | Whether or not field updates to this object should trigger notifications. When set to NOTIFY, we ... |
| `passConstraints` | `PassConstraints` | Pass constraints for the object. Includes limiting NFC and screenshot behaviors. |
| `passengerName` | `string` | Required. Passenger name as it would appear on the boarding pass. eg: "Dave M Gahan" or "Gahan/Da... |
| `reservationInfo` | `ReservationInfo` | Required. Information about flight reservation. |
| `rotatingBarcode` | `RotatingBarcode` | The rotating barcode type and value. |
| `saveRestrictions` | `SaveRestrictions` | Restrictions on the object that needs to be verified before the user tries to save the pass. Note... |
| `securityProgramLogo` | `Image` | An image for the security program that applies to the passenger. |
| `smartTapRedemptionValue` | `string` | The value that will be transmitted to a Smart Tap certified terminal over NFC for this object. Th... |
| `state` | `string` | Required. The state of the object. This field is used to determine how an object is displayed in ... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If text module data is also defined on the class, both will be displayed. The m... |
| `validTimeInterval` | `TimeInterval` | The time period this object will be `active` and object can be used. An object's state will be ch... |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the object. For a pass only fifteen will ... |
| `version` | `string` | Deprecated |

### `FlightObjectAddMessageResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `FlightObject` | The updated FlightObject resource. |

### `FlightObjectListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<FlightObject>` | Resources corresponding to the list request. |

### `FrequentFlyerInfo`

| Property | Type | Description |
|----------|------|-------------|
| `frequentFlyerNumber` | `string` | Frequent flyer number. Required for each nested object of kind `walletobjects#frequentFlyerInfo`. |
| `frequentFlyerProgramName` | `LocalizedString` | Frequent flyer program name. eg: "Lufthansa Miles & More" |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#frequentFlyerIn... |

### `GenericClass`

Generic Class

| Property | Type | Description |
|----------|------|-------------|
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `callbackOptions` | `CallbackOptions` | Callback options to be used to call the issuer back for every save/delete of an object for this c... |
| `classTemplateInfo` | `ClassTemplateInfo` | Template information about how the class should be displayed. If unset, Google will fallback to a... |
| `enableSmartTap` | `boolean` | Available only to Smart Tap enabled partners. Contact support for additional guidance. |
| `id` | `string` | Required. The unique identifier for the class. This ID must be unique across all from an issuer. ... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. If `imageModulesData` is also defined on the object, both will be displayed. O... |
| `linksModuleData` | `LinksModuleData` | Links module data. If `linksModuleData` is also defined on the object, both will be displayed. Th... |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the class. Any additional MerchantLocations adde... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `multipleDevicesAndHoldersAllowedStatus` | `string` | Identifies whether multiple users and devices will save the same object referencing this class. |
| `redemptionIssuers` | `array<string>` | Identifies which redemption issuers can redeem the pass over Smart Tap. Redemption issuers are id... |
| `securityAnimation` | `SecurityAnimation` | Optional information about the security animation. If this is set a security animation will be re... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If `textModulesData` is also defined on the object, both will be displayed. The... |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the class. For a pass only fifteen will b... |
| `viewUnlockRequirement` | `string` | View Unlock Requirement options for the generic pass. |

### `GenericClassAddMessageResponse`

Response to adding a new issuer message to the class. This contains the entire updated GenericClass.

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `GenericClass` | The updated EventTicketClass resource. |

### `GenericClassListResponse`

List response which contains the list of all generic classes for a given issuer ID.

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<GenericClass>` | Resources corresponding to the list request. |

### `GenericObject`

Generic Object

| Property | Type | Description |
|----------|------|-------------|
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `barcode` | `Barcode` | The barcode type and value. If pass does not have a barcode, we can allow the issuer to set Barco... |
| `cardTitle` | `LocalizedString` | Required. The header of the pass. This is usually the Business name such as "XXX Gym", "AAA Insur... |
| `classId` | `string` | Required. The class associated with this object. The class must be of the same type as this objec... |
| `genericType` | `string` | Specify which `GenericType` the card belongs to. |
| `groupingInfo` | `GroupingInfo` | Information that controls how passes are grouped together. |
| `hasUsers` | `boolean` | Indicates if the object has users. This field is set by the platform. |
| `header` | `LocalizedString` | Required. The title of the pass, such as "50% off coupon" or "Library card" or "Voucher". This fi... |
| `heroImage` | `Image` | Banner image displayed on the front of the card if present. The image will be displayed at 100% w... |
| `hexBackgroundColor` | `string` | The background color for the card. If not set, the dominant color of the hero image is used, and ... |
| `id` | `string` | Required. The unique identifier for an object. This ID must be unique across all objects from an ... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. Only one of the image from class and one from object level will be rendered wh... |
| `linkedObjectIds` | `array<string>` | linked_object_ids are a list of other objects such as event ticket, loyalty, offer, generic, gift... |
| `linksModuleData` | `LinksModuleData` | Links module data. If `linksModuleData` is also defined on the class, both will be displayed. The... |
| `logo` | `Image` | The logo image of the pass. This image is displayed in the card detail view in upper left, and al... |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the object. Any additional MerchantLocations add... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `notifications` | `Notifications` | The notification settings that are enabled for this object. |
| `passConstraints` | `PassConstraints` | Pass constraints for the object. Includes limiting NFC and screenshot behaviors. |
| `rotatingBarcode` | `RotatingBarcode` | The rotating barcode settings/details. |
| `saveRestrictions` | `SaveRestrictions` | Restrictions on the object that needs to be verified before the user tries to save the pass. Note... |
| `smartTapRedemptionValue` | `string` | The value that will be transmitted to a Smart Tap certified terminal over NFC for this object. Th... |
| `state` | `string` | The state of the object. This field is used to determine how an object is displayed in the app. F... |
| `subheader` | `LocalizedString` | The title label of the pass, such as location where this pass can be used. Appears right above th... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If `textModulesData` is also defined on the class, both will be displayed. The ... |
| `validTimeInterval` | `TimeInterval` | The time period this object will be considered valid or usable. When the time period is passed, t... |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the object. For a pass only fifteen will ... |
| `wideLogo` | `Image` | The wide logo of the pass. When provided, this will be used in place of the logo in the top left ... |

### `GenericObjectAddMessageResponse`

Response to adding a new issuer message to the object. This contains the entire updated GenericObject.

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `GenericObject` | The updated GenericObject resource. |

### `GenericObjectListResponse`

List response which contains the list of all generic objects for a given issuer ID.

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<GenericObject>` | Resources corresponding to the list request. |

### `GiftCardClass`

| Property | Type | Description |
|----------|------|-------------|
| `allowBarcodeRedemption` | `boolean` | Determines whether the merchant supports gift card redemption using barcode. If true, app display... |
| `allowMultipleUsersPerObject` | `boolean` | Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead. |
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `callbackOptions` | `CallbackOptions` | Callback options to be used to call the issuer back for every save/delete of an object for this c... |
| `cardNumberLabel` | `string` | The label to display for the card number, such as "Card Number". |
| `classTemplateInfo` | `ClassTemplateInfo` | Template information about how the class should be displayed. If unset, Google will fallback to a... |
| `countryCode` | `string` | Country code used to display the card's country (when the user is not in that country), as well a... |
| `enableSmartTap` | `boolean` | Identifies whether this class supports Smart Tap. The `redemptionIssuers` and object level `smart... |
| `eventNumberLabel` | `string` | The label to display for event number, such as "Target Event #". |
| `heroImage` | `Image` | Optional banner image displayed on the front of the card. If none is present, nothing will be dis... |
| `hexBackgroundColor` | `string` | The background color for the card. If not set the dominant color of the hero image is used, and i... |
| `homepageUri` | `Uri` | The URI of your application's home page. Populating the URI in this field results in the exact sa... |
| `id` | `string` | Required. The unique identifier for a class. This ID must be unique across all classes from an is... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. The maximum number of these fields displayed is 1 from object level and 1 for ... |
| `infoModuleData` | `InfoModuleData` | Deprecated. Use textModulesData instead. |
| `issuerName` | `string` | Required. The issuer name. Recommended maximum length is 20 characters to ensure full string is d... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#giftCardClass"`. |
| `linksModuleData` | `LinksModuleData` | Links module data. If links module data is also defined on the object, both will be displayed. |
| `localizedCardNumberLabel` | `LocalizedString` | Translated strings for the card_number_label. |
| `localizedEventNumberLabel` | `LocalizedString` | Translated strings for the event_number_label. |
| `localizedIssuerName` | `LocalizedString` | Translated strings for the issuer_name. Recommended maximum length is 20 characters to ensure ful... |
| `localizedMerchantName` | `LocalizedString` | Translated strings for the merchant_name. The app may display an ellipsis after the first 20 char... |
| `localizedPinLabel` | `LocalizedString` | Translated strings for the pin_label. |
| `locations` | `array<LatLongPoint>` | Note: This field is currently not supported to trigger geo notifications. |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the class. Any additional MerchantLocations adde... |
| `merchantName` | `string` | Merchant name, such as "Adam's Apparel". The app may display an ellipsis after the first 20 chara... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `multipleDevicesAndHoldersAllowedStatus` | `string` | Identifies whether multiple users and devices will save the same object referencing this class. |
| `notifyPreference` | `string` | Whether or not field updates to this class should trigger notifications. When set to NOTIFY, we w... |
| `pinLabel` | `string` | The label to display for the PIN, such as "4-digit PIN". |
| `programLogo` | `Image` | The logo of the gift card program or company. This logo is displayed in both the details and list... |
| `redemptionIssuers` | `array<string>` | Identifies which redemption issuers can redeem the pass over Smart Tap. Redemption issuers are id... |
| `review` | `Review` | The review comments set by the platform when a class is marked `approved` or `rejected`. |
| `reviewStatus` | `string` | Required. The status of the class. This field can be set to `draft` or `underReview` using the in... |
| `securityAnimation` | `SecurityAnimation` | Optional information about the security animation. If this is set a security animation will be re... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If text module data is also defined on the class, both will be displayed. The m... |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the class. For a pass only fifteen will b... |
| `version` | `string` | Deprecated |
| `viewUnlockRequirement` | `string` | View Unlock Requirement options for the gift card. |
| `wideProgramLogo` | `Image` | The wide logo of the gift card program or company. When provided, this will be used in place of t... |
| `wordMark` | `Image` | Deprecated. |

### `GiftCardClassAddMessageResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `GiftCardClass` | The updated GiftCardClass resource. |

### `GiftCardClassListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<GiftCardClass>` | Resources corresponding to the list request. |

### `GiftCardObject`

| Property | Type | Description |
|----------|------|-------------|
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `balance` | `Money` | The card's monetary balance. |
| `balanceUpdateTime` | `DateTime` | The date and time when the balance was last updated. Offset is required. If balance is updated an... |
| `barcode` | `Barcode` | The barcode type and value. |
| `cardNumber` | `string` | Required. The card's number. |
| `classId` | `string` | Required. The class associated with this object. The class must be of the same type as this objec... |
| `classReference` | `GiftCardClass` | A copy of the inherited fields of the parent class. These fields are retrieved during a GET. |
| `disableExpirationNotification` | `boolean` | Indicates if notifications should explicitly be suppressed. If this field is set to true, regardl... |
| `eventNumber` | `string` | The card's event number, an optional field used by some gift cards. |
| `groupingInfo` | `GroupingInfo` | Information that controls how passes are grouped together. |
| `hasLinkedDevice` | `boolean` | Whether this object is currently linked to a single device. This field is set by the platform whe... |
| `hasUsers` | `boolean` | Indicates if the object has users. This field is set by the platform. |
| `heroImage` | `Image` | Optional banner image displayed on the front of the card. If none is present, hero image of the c... |
| `id` | `string` | Required. The unique identifier for an object. This ID must be unique across all objects from an ... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. The maximum number of these fields displayed is 1 from object level and 1 for ... |
| `infoModuleData` | `InfoModuleData` | Deprecated. Use textModulesData instead. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#giftCardObject"`. |
| `linkedObjectIds` | `array<string>` | linked_object_ids are a list of other objects such as event ticket, loyalty, offer, generic, gift... |
| `linksModuleData` | `LinksModuleData` | Links module data. If links module data is also defined on the class, both will be displayed. |
| `locations` | `array<LatLongPoint>` | Note: This field is currently not supported to trigger geo notifications. |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the object. Any additional MerchantLocations add... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `notifyPreference` | `string` | Whether or not field updates to this object should trigger notifications. When set to NOTIFY, we ... |
| `passConstraints` | `PassConstraints` | Pass constraints for the object. Includes limiting NFC and screenshot behaviors. |
| `pin` | `string` | The card's PIN. |
| `rotatingBarcode` | `RotatingBarcode` | The rotating barcode type and value. |
| `saveRestrictions` | `SaveRestrictions` | Restrictions on the object that needs to be verified before the user tries to save the pass. Note... |
| `smartTapRedemptionValue` | `string` | The value that will be transmitted to a Smart Tap certified terminal over NFC for this object. Th... |
| `state` | `string` | Required. The state of the object. This field is used to determine how an object is displayed in ... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If text module data is also defined on the class, both will be displayed. The m... |
| `validTimeInterval` | `TimeInterval` | The time period this object will be `active` and object can be used. An object's state will be ch... |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the object. For a pass only fifteen will ... |
| `version` | `string` | Deprecated |

### `GiftCardObjectAddMessageResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `GiftCardObject` | The updated GiftCardObject resource. |

### `GiftCardObjectListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<GiftCardObject>` | Resources corresponding to the list request. |

### `GroupingInfo`

| Property | Type | Description |
|----------|------|-------------|
| `groupingId` | `string` | Optional grouping ID for grouping the passes with the same ID visually together. Grouping with di... |
| `sortIndex` | `integer` | Optional index for sorting the passes when they are grouped with other passes. Passes with lower ... |

### `Image`

Wrapping type for Google hosted images.

| Property | Type | Description |
|----------|------|-------------|
| `contentDescription` | `LocalizedString` | Description of the image used for accessibility. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#image"`. |
| `privateImageId` | `string` | An ID for an already uploaded private image. Either this or source_uri should be set. Requests se... |
| `sourceUri` | `ImageUri` | A URI for the image. Either this or private_image_id should be set. Requests setting both or neit... |

### `ImageModuleData`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The ID associated with an image module. This field is here to enable ease of management of image ... |
| `mainImage` | `Image` | A 100% width image. |

### `ImageUri`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Additional information about the image, which is unused and retained only for backward compatibil... |
| `localizedDescription` | `LocalizedString` | Translated strings for the description, which are unused and retained only for backward compatibi... |
| `uri` | `string` | The location of the image. URIs must have a scheme. |

### `InfoModuleData`

| Property | Type | Description |
|----------|------|-------------|
| `labelValueRows` | `array<LabelValueRow>` | A list of collections of labels and values. These will be displayed one after the other in a sing... |
| `showLastUpdateTime` | `boolean` |  |

### `Issuer`

| Property | Type | Description |
|----------|------|-------------|
| `callbackOptions` | `CallbackOptions` | Allows the issuer to provide their callback settings. |
| `contactInfo` | `IssuerContactInfo` | Issuer contact information. |
| `homepageUrl` | `string` | URL for the issuer's home page. |
| `issuerId` | `string` | The unique identifier for an issuer account. This is automatically generated when the issuer is i... |
| `name` | `string` | The account name of the issuer. |
| `smartTapMerchantData` | `SmartTapMerchantData` | Available only to Smart Tap enabled partners. Contact support for additional guidance. |

### `IssuerContactInfo`

| Property | Type | Description |
|----------|------|-------------|
| `alertsEmails` | `array<string>` | Email addresses which will receive alerts. |
| `email` | `string` | The primary contact email address. |
| `name` | `string` | The primary contact name. |
| `phone` | `string` | The primary contact phone number. |

### `IssuerListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resources` | `array<Issuer>` | Resources corresponding to the list request. |

### `IssuerToUserInfo`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `signUpInfo` | `SignUpInfo` |  |
| `url` | `string` | Currently not used, consider deprecating. |
| `value` | `string` | JSON web token for action S2AP. |

### `JwtInsertResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resources` | `Resources` | Data that corresponds to the ids of the provided classes and objects in the JWT. resources will o... |
| `saveUri` | `string` | A URI that, when opened, will allow the end user to save the object(s) identified in the JWT to t... |

### `JwtResource`

A JWT representation of a pass.

| Property | Type | Description |
|----------|------|-------------|
| `jwt` | `string` | Required. A string representing a JWT of the format described at https://developers.google.com/wa... |

### `LabelValue`

A pair of text strings to be displayed in the details view. Note we no longer display LabelValue/LabelValueRow as a table, instead a list of items.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | The label for a specific row and column. Recommended maximum is 15 characters for a two-column la... |
| `localizedLabel` | `LocalizedString` | Translated strings for the label. Recommended maximum is 15 characters for a two-column layout an... |
| `localizedValue` | `LocalizedString` | Translated strings for the value. Recommended maximum is 15 characters for a two-column layout an... |
| `value` | `string` | The value for a specific row and column. Recommended maximum is 15 characters for a two-column la... |

### `LabelValueRow`

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<LabelValue>` | A list of labels and values. These will be displayed in a singular column, one after the other, n... |

### `LatLongPoint`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#latLongPoint"`. |
| `latitude` | `number` | The latitude specified as any value in the range of -90.0 through +90.0, both inclusive. Values o... |
| `longitude` | `number` | The longitude specified in the range -180.0 through +180.0, both inclusive. Values outside these ... |

### `LinksModuleData`

| Property | Type | Description |
|----------|------|-------------|
| `uris` | `array<Uri>` | The list of URIs. |

### `ListTemplateOverride`

| Property | Type | Description |
|----------|------|-------------|
| `firstRowOption` | `FirstRowOption` | Specifies from a predefined set of options or from a reference to the field what will be displaye... |
| `secondRowOption` | `FieldSelector` | A reference to the field to be displayed in the second row. This option is only displayed if ther... |
| `thirdRowOption` | `FieldSelector` | An unused/deprecated field. Setting it will have no effect on what the user sees. |

### `LocalizedString`

| Property | Type | Description |
|----------|------|-------------|
| `defaultValue` | `TranslatedString` | Contains the string to be displayed if no appropriate translation is available. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#localizedString"`. |
| `translatedValues` | `array<TranslatedString>` | Contains the translations for the string. |

### `LoyaltyClass`

| Property | Type | Description |
|----------|------|-------------|
| `accountIdLabel` | `string` | The account ID label, such as "Member ID." Recommended maximum length is 15 characters to ensure ... |
| `accountNameLabel` | `string` | The account name label, such as "Member Name." Recommended maximum length is 15 characters to ens... |
| `allowMultipleUsersPerObject` | `boolean` | Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead. |
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `callbackOptions` | `CallbackOptions` | Callback options to be used to call the issuer back for every save/delete of an object for this c... |
| `classTemplateInfo` | `ClassTemplateInfo` | Template information about how the class should be displayed. If unset, Google will fallback to a... |
| `countryCode` | `string` | Country code used to display the card's country (when the user is not in that country), as well a... |
| `discoverableProgram` | `DiscoverableProgram` | Information about how the class may be discovered and instantiated from within the Google Pay app. |
| `enableSmartTap` | `boolean` | Identifies whether this class supports Smart Tap. The `redemptionIssuers` and one of object level... |
| `heroImage` | `Image` | Optional banner image displayed on the front of the card. If none is present, nothing will be dis... |
| `hexBackgroundColor` | `string` | The background color for the card. If not set the dominant color of the hero image is used, and i... |
| `homepageUri` | `Uri` | The URI of your application's home page. Populating the URI in this field results in the exact sa... |
| `id` | `string` | Required. The unique identifier for a class. This ID must be unique across all classes from an is... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. The maximum number of these fields displayed is 1 from object level and 1 for ... |
| `infoModuleData` | `InfoModuleData` | Deprecated. Use textModulesData instead. |
| `issuerName` | `string` | Required. The issuer name. Recommended maximum length is 20 characters to ensure full string is d... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#loyaltyClass"`. |
| `linksModuleData` | `LinksModuleData` | Links module data. If links module data is also defined on the object, both will be displayed. |
| `localizedAccountIdLabel` | `LocalizedString` | Translated strings for the account_id_label. Recommended maximum length is 15 characters to ensur... |
| `localizedAccountNameLabel` | `LocalizedString` | Translated strings for the account_name_label. Recommended maximum length is 15 characters to ens... |
| `localizedIssuerName` | `LocalizedString` | Translated strings for the issuer_name. Recommended maximum length is 20 characters to ensure ful... |
| `localizedProgramName` | `LocalizedString` | Translated strings for the program_name. The app may display an ellipsis after the first 20 chara... |
| `localizedRewardsTier` | `LocalizedString` | Translated strings for the rewards_tier. Recommended maximum length is 7 characters to ensure ful... |
| `localizedRewardsTierLabel` | `LocalizedString` | Translated strings for the rewards_tier_label. Recommended maximum length is 9 characters to ensu... |
| `localizedSecondaryRewardsTier` | `LocalizedString` | Translated strings for the secondary_rewards_tier. |
| `localizedSecondaryRewardsTierLabel` | `LocalizedString` | Translated strings for the secondary_rewards_tier_label. |
| `locations` | `array<LatLongPoint>` | Note: This field is currently not supported to trigger geo notifications. |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the class. Any additional MerchantLocations adde... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `multipleDevicesAndHoldersAllowedStatus` | `string` | Identifies whether multiple users and devices will save the same object referencing this class. |
| `notifyPreference` | `string` | Whether or not field updates to this class should trigger notifications. When set to NOTIFY, we w... |
| `programLogo` | `Image` | Required. The logo of the loyalty program or company. This logo is displayed in both the details ... |
| `programName` | `string` | Required. The program name, such as "Adam's Apparel". The app may display an ellipsis after the f... |
| `redemptionIssuers` | `array<string>` | Identifies which redemption issuers can redeem the pass over Smart Tap. Redemption issuers are id... |
| `review` | `Review` | The review comments set by the platform when a class is marked `approved` or `rejected`. |
| `reviewStatus` | `string` | Required. The status of the class. This field can be set to `draft` or `underReview` using the in... |
| `rewardsTier` | `string` | The rewards tier, such as "Gold" or "Platinum." Recommended maximum length is 7 characters to ens... |
| `rewardsTierLabel` | `string` | The rewards tier label, such as "Rewards Tier." Recommended maximum length is 9 characters to ens... |
| `secondaryRewardsTier` | `string` | The secondary rewards tier, such as "Gold" or "Platinum." |
| `secondaryRewardsTierLabel` | `string` | The secondary rewards tier label, such as "Rewards Tier." |
| `securityAnimation` | `SecurityAnimation` | Optional information about the security animation. If this is set a security animation will be re... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If text module data is also defined on the class, both will be displayed. The m... |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the class. For a pass only fifteen will b... |
| `version` | `string` | Deprecated |
| `viewUnlockRequirement` | `string` | View Unlock Requirement options for the loyalty card. |
| `wideProgramLogo` | `Image` | The wide logo of the loyalty program or company. When provided, this will be used in place of the... |
| `wordMark` | `Image` | Deprecated. |

### `LoyaltyClassAddMessageResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `LoyaltyClass` | The updated LoyaltyClass resource. |

### `LoyaltyClassListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<LoyaltyClass>` | Resources corresponding to the list request. |

### `LoyaltyObject`

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The loyalty account identifier. Recommended maximum length is 20 characters. |
| `accountName` | `string` | The loyalty account holder name, such as "John Smith." Recommended maximum length is 20 character... |
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `barcode` | `Barcode` | The barcode type and value. |
| `classId` | `string` | Required. The class associated with this object. The class must be of the same type as this objec... |
| `classReference` | `LoyaltyClass` | A copy of the inherited fields of the parent class. These fields are retrieved during a GET. |
| `disableExpirationNotification` | `boolean` | Indicates if notifications should explicitly be suppressed. If this field is set to true, regardl... |
| `groupingInfo` | `GroupingInfo` | Information that controls how passes are grouped together. |
| `hasLinkedDevice` | `boolean` | Whether this object is currently linked to a single device. This field is set by the platform whe... |
| `hasUsers` | `boolean` | Indicates if the object has users. This field is set by the platform. |
| `heroImage` | `Image` | Optional banner image displayed on the front of the card. If none is present, hero image of the c... |
| `id` | `string` | Required. The unique identifier for an object. This ID must be unique across all objects from an ... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. The maximum number of these fields displayed is 1 from object level and 1 for ... |
| `infoModuleData` | `InfoModuleData` | Deprecated. Use textModulesData instead. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#loyaltyObject"`. |
| `linkedObjectIds` | `array<string>` | linked_object_ids are a list of other objects such as event ticket, loyalty, offer, generic, gift... |
| `linkedOfferIds` | `array<string>` | A list of offer objects linked to this loyalty card. The offer objects must already exist. Offer ... |
| `linksModuleData` | `LinksModuleData` | Links module data. If links module data is also defined on the class, both will be displayed. |
| `locations` | `array<LatLongPoint>` | Note: This field is currently not supported to trigger geo notifications. |
| `loyaltyPoints` | `LoyaltyPoints` | The loyalty reward points label, balance, and type. |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the object. Any additional MerchantLocations add... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `notifyPreference` | `string` | Whether or not field updates to this object should trigger notifications. When set to NOTIFY, we ... |
| `passConstraints` | `PassConstraints` | Pass constraints for the object. Includes limiting NFC and screenshot behaviors. |
| `rotatingBarcode` | `RotatingBarcode` | The rotating barcode type and value. |
| `saveRestrictions` | `SaveRestrictions` | Restrictions on the object that needs to be verified before the user tries to save the pass. Note... |
| `secondaryLoyaltyPoints` | `LoyaltyPoints` | The secondary loyalty reward points label, balance, and type. Shown in addition to the primary lo... |
| `smartTapRedemptionValue` | `string` | The value that will be transmitted to a Smart Tap certified terminal over NFC for this object. Th... |
| `state` | `string` | Required. The state of the object. This field is used to determine how an object is displayed in ... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If text module data is also defined on the class, both will be displayed. The m... |
| `validTimeInterval` | `TimeInterval` | The time period this object will be `active` and object can be used. An object's state will be ch... |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the object. For a pass only fifteen will ... |
| `version` | `string` | Deprecated |

### `LoyaltyObjectAddMessageResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `LoyaltyObject` | The updated LoyaltyObject resource. |

### `LoyaltyObjectListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<LoyaltyObject>` | Resources corresponding to the list request. |

### `LoyaltyPoints`

| Property | Type | Description |
|----------|------|-------------|
| `balance` | `LoyaltyPointsBalance` | The account holder's loyalty point balance, such as "500" or "$10.00". Recommended maximum length... |
| `label` | `string` | The loyalty points label, such as "Points". Recommended maximum length is 9 characters. |
| `localizedLabel` | `LocalizedString` | Translated strings for the label. Recommended maximum length is 9 characters. |

### `LoyaltyPointsBalance`

| Property | Type | Description |
|----------|------|-------------|
| `double` | `number` | The double form of a balance. Only one of these subtypes (string, int, double, money) should be p... |
| `int` | `integer` | The integer form of a balance. Only one of these subtypes (string, int, double, money) should be ... |
| `money` | `Money` | The money form of a balance. Only one of these subtypes (string, int, double, money) should be po... |
| `string` | `string` | The string form of a balance. Only one of these subtypes (string, int, double, money) should be p... |

### `Media`

A reference to data stored on the filesystem, on GFS or in blobstore.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | Deprecated, use one of explicit hash type fields instead. Algorithm used for calculating the hash... |
| `bigstoreObjectRef` | `string` | Use object_id instead. |
| `blobRef` | `string` | Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should be the byte representa... |
| `blobstore2Info` | `Blobstore2Info` | Blobstore v2 info, set if reference_type is BLOBSTORE_REF and it refers to a v2 blob. |
| `compositeMedia` | `array<CompositeMedia>` | A composite media composed of one or more media objects, set if reference_type is COMPOSITE_MEDIA... |
| `contentType` | `string` | MIME type of the data |
| `contentTypeInfo` | `ContentTypeInfo` | Extended content type information provided for Scotty uploads. |
| `cosmoBinaryReference` | `string` | A binary data reference for a media download. Serves as a technology-agnostic binary reference in... |
| `crc32cHash` | `integer` | For Scotty Uploads: Scotty-provided hashes for uploads For Scotty Downloads: (WARNING: DO NOT USE... |
| `diffChecksumsResponse` | `DiffChecksumsResponse` | Set if reference_type is DIFF_CHECKSUMS_RESPONSE. |
| `diffDownloadResponse` | `DiffDownloadResponse` | Set if reference_type is DIFF_DOWNLOAD_RESPONSE. |
| `diffUploadRequest` | `DiffUploadRequest` | Set if reference_type is DIFF_UPLOAD_REQUEST. |
| `diffUploadResponse` | `DiffUploadResponse` | Set if reference_type is DIFF_UPLOAD_RESPONSE. |
| `diffVersionResponse` | `DiffVersionResponse` | Set if reference_type is DIFF_VERSION_RESPONSE. |
| `downloadParameters` | `DownloadParameters` | Parameters for a media download. |
| `filename` | `string` | Original file name |
| `hash` | `string` | Deprecated, use one of explicit hash type fields instead. These two hash related fields will only... |
| `hashVerified` | `boolean` | For Scotty uploads only. If a user sends a hash code and the backend has requested that Scotty ve... |
| `inline` | `string` | Media data, set if reference_type is INLINE |
| `isPotentialRetry` | `boolean` | |is_potential_retry| is set false only when Scotty is certain that it has not sent the request be... |
| `length` | `string` | Size of the data, in bytes |
| `md5Hash` | `string` | Scotty-provided MD5 hash for an upload. |
| `mediaId` | `string` | Media id to forward to the operation GetMedia. Can be set if reference_type is GET_MEDIA. |
| `objectId` | `ObjectId` | Reference to a TI Blob, set if reference_type is BIGSTORE_REF. |
| `path` | `string` | Path to the data, set if reference_type is PATH |
| `referenceType` | `string` | Describes what the field reference contains. |
| `sha1Hash` | `string` | Scotty-provided SHA1 hash for an upload. |
| `sha256Hash` | `string` | Scotty-provided SHA256 hash for an upload. |
| `timestamp` | `string` | Time at which the media data was last updated, in milliseconds since UNIX epoch |
| `token` | `string` | A unique fingerprint/version id for the media data |

### `MediaRequestInfo`

Extra information added to operations that support Scotty media requests.

| Property | Type | Description |
|----------|------|-------------|
| `currentBytes` | `string` | The number of current bytes uploaded or downloaded. |
| `customData` | `string` | Data to be copied to backend requests. Custom data is returned to Scotty in the agent_state field... |
| `diffObjectVersion` | `string` | Set if the http request info is diff encoded. The value of this field is the version number of th... |
| `finalStatus` | `integer` | The existence of the final_status field indicates that this is the last call to the agent for thi... |
| `notificationType` | `string` | The type of notification received from Scotty. |
| `physicalHeaders` | `string` | The physical headers provided by RequestReceivedParameters in Scotty request. type is uploader_se... |
| `requestId` | `string` | The Scotty request ID. |
| `requestReceivedParamsServingInfo` | `string` | The partition of the Scotty server handling this request. type is uploader_service.RequestReceive... |
| `totalBytes` | `string` | The total size of the file. |
| `totalBytesIsEstimated` | `boolean` | Whether the total bytes field contains an estimated data. |

### `MerchantLocation`

Locations of interest for this class or object. Currently, this location is used for geofenced notifications. When a user is within a set radius of this lat/long, and dwells there, Google will trigger a notification. When a user exits this radius, the notification will be hidden.

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` | The latitude specified as any value in the range of -90.0 through +90.0, both inclusive. Values o... |
| `longitude` | `number` | The longitude specified in the range -180.0 through +180.0, both inclusive. Values outside these ... |

### `Message`

A message that will be displayed with a Valuable

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | The message body. |
| `displayInterval` | `TimeInterval` | The period of time that the message will be displayed to users. You can define both a `startTime`... |
| `header` | `string` | The message header. |
| `id` | `string` | The ID associated with a message. This field is here to enable ease of management of messages. No... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#walletObjectMes... |
| `localizedBody` | `LocalizedString` | Translated strings for the message body. |
| `localizedHeader` | `LocalizedString` | Translated strings for the message header. |
| `messageType` | `string` | The message type. |

### `ModifyLinkedOfferObjects`

| Property | Type | Description |
|----------|------|-------------|
| `addLinkedOfferObjectIds` | `array<string>` | The linked offer object ids to add to the object. |
| `removeLinkedOfferObjectIds` | `array<string>` | The linked offer object ids to remove from the object. |

### `ModifyLinkedOfferObjectsRequest`

| Property | Type | Description |
|----------|------|-------------|
| `linkedOfferObjectIds` | `ModifyLinkedOfferObjects` | The linked offer object ids to add or remove from the object. |

### `ModuleViewConstraints`

Constraints that all must be met for the module to be shown.

| Property | Type | Description |
|----------|------|-------------|
| `displayInterval` | `TimeInterval` | The period of time that the module will be displayed to users. Can define both a `startTime` and ... |

### `Money`

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The currency code, such as "USD" or "EUR." |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#money"`. |
| `micros` | `string` | The unit of money amount in micros. For example, $1 USD would be represented as 1000000 micros. |

### `Notifications`

Indicates if the object needs to have notification enabled. We support only one of ExpiryNotification/UpcomingNotification. `expiryNotification` takes precedence over `upcomingNotification`. In other words if `expiryNotification` is set, we ignore the `upcomingNotification` field.

| Property | Type | Description |
|----------|------|-------------|
| `expiryNotification` | `ExpiryNotification` | A notification would be triggered at a specific time before the card expires. |
| `upcomingNotification` | `UpcomingNotification` | A notification would be triggered at a specific time before the card becomes usable. |

### `ObjectId`

This is a copy of the tech.blob.ObjectId proto, which could not be used directly here due to transitive closure issues with JavaScript support; see http://b/8801763.

| Property | Type | Description |
|----------|------|-------------|
| `bucketName` | `string` | The name of the bucket to which this object belongs. |
| `generation` | `string` | Generation of the object. Generations are monotonically increasing across writes, allowing them t... |
| `objectName` | `string` | The name of the object. |

### `OfferClass`

| Property | Type | Description |
|----------|------|-------------|
| `allowMultipleUsersPerObject` | `boolean` | Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead. |
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `callbackOptions` | `CallbackOptions` | Callback options to be used to call the issuer back for every save/delete of an object for this c... |
| `classTemplateInfo` | `ClassTemplateInfo` | Template information about how the class should be displayed. If unset, Google will fallback to a... |
| `countryCode` | `string` | Country code used to display the card's country (when the user is not in that country), as well a... |
| `details` | `string` | The details of the offer. |
| `enableSmartTap` | `boolean` | Identifies whether this class supports Smart Tap. The `redemptionIssuers` and object level `smart... |
| `finePrint` | `string` | The fine print or terms of the offer, such as "20% off any t-shirt at Adam's Apparel." |
| `helpUri` | `Uri` | The help link for the offer, such as `http://myownpersonaldomain.com/help` |
| `heroImage` | `Image` | Optional banner image displayed on the front of the card. If none is present, nothing will be dis... |
| `hexBackgroundColor` | `string` | The background color for the card. If not set the dominant color of the hero image is used, and i... |
| `homepageUri` | `Uri` | The URI of your application's home page. Populating the URI in this field results in the exact sa... |
| `id` | `string` | Required. The unique identifier for a class. This ID must be unique across all classes from an is... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. The maximum number of these fields displayed is 1 from object level and 1 for ... |
| `infoModuleData` | `InfoModuleData` | Deprecated. Use textModulesData instead. |
| `issuerName` | `string` | Required. The issuer name. Recommended maximum length is 20 characters to ensure full string is d... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#offerClass"`. |
| `linksModuleData` | `LinksModuleData` | Links module data. If links module data is also defined on the object, both will be displayed. |
| `localizedDetails` | `LocalizedString` | Translated strings for the details. |
| `localizedFinePrint` | `LocalizedString` | Translated strings for the fine_print. |
| `localizedIssuerName` | `LocalizedString` | Translated strings for the issuer_name. Recommended maximum length is 20 characters to ensure ful... |
| `localizedProvider` | `LocalizedString` | Translated strings for the provider. Recommended maximum length is 12 characters to ensure full s... |
| `localizedShortTitle` | `LocalizedString` | Translated strings for the short title. Recommended maximum length is 20 characters. |
| `localizedTitle` | `LocalizedString` | Translated strings for the title. Recommended maximum length is 60 characters to ensure full stri... |
| `locations` | `array<LatLongPoint>` | Note: This field is currently not supported to trigger geo notifications. |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the class. Any additional MerchantLocations adde... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `multipleDevicesAndHoldersAllowedStatus` | `string` | Identifies whether multiple users and devices will save the same object referencing this class. |
| `notifyPreference` | `string` | Whether or not field updates to this class should trigger notifications. When set to NOTIFY, we w... |
| `provider` | `string` | Required. The offer provider (either the aggregator name or merchant name). Recommended maximum l... |
| `redemptionChannel` | `string` | Required. The redemption channels applicable to this offer. |
| `redemptionIssuers` | `array<string>` | Identifies which redemption issuers can redeem the pass over Smart Tap. Redemption issuers are id... |
| `review` | `Review` | The review comments set by the platform when a class is marked `approved` or `rejected`. |
| `reviewStatus` | `string` | Required. The status of the class. This field can be set to `draft` or The status of the class. T... |
| `securityAnimation` | `SecurityAnimation` | Optional information about the security animation. If this is set a security animation will be re... |
| `shortTitle` | `string` | A shortened version of the title of the offer, such as "20% off," shown to users as a quick refer... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If text module data is also defined on the class, both will be displayed. The m... |
| `title` | `string` | Required. The title of the offer, such as "20% off any t-shirt." Recommended maximum length is 60... |
| `titleImage` | `Image` | The title image of the offer. This image is displayed in both the details and list views of the app. |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the class. For a pass only fifteen will b... |
| `version` | `string` | Deprecated |
| `viewUnlockRequirement` | `string` | View Unlock Requirement options for the offer. |
| `wideTitleImage` | `Image` | The wide title image of the offer. When provided, this will be used in place of the title image i... |
| `wordMark` | `Image` | Deprecated. |

### `OfferClassAddMessageResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `OfferClass` | The updated OfferClass resource. |

### `OfferClassListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<OfferClass>` | Resources corresponding to the list request. |

### `OfferObject`

| Property | Type | Description |
|----------|------|-------------|
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `barcode` | `Barcode` | The barcode type and value. |
| `classId` | `string` | Required. The class associated with this object. The class must be of the same type as this objec... |
| `classReference` | `OfferClass` | A copy of the inherited fields of the parent class. These fields are retrieved during a GET. |
| `disableExpirationNotification` | `boolean` | Indicates if notifications should explicitly be suppressed. If this field is set to true, regardl... |
| `groupingInfo` | `GroupingInfo` | Information that controls how passes are grouped together. |
| `hasLinkedDevice` | `boolean` | Whether this object is currently linked to a single device. This field is set by the platform whe... |
| `hasUsers` | `boolean` | Indicates if the object has users. This field is set by the platform. |
| `heroImage` | `Image` | Optional banner image displayed on the front of the card. If none is present, hero image of the c... |
| `id` | `string` | Required. The unique identifier for an object. This ID must be unique across all objects from an ... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. The maximum number of these fields displayed is 1 from object level and 1 for ... |
| `infoModuleData` | `InfoModuleData` | Deprecated. Use textModulesData instead. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#offerObject"`. |
| `linkedObjectIds` | `array<string>` | linked_object_ids are a list of other objects such as event ticket, loyalty, offer, generic, gift... |
| `linksModuleData` | `LinksModuleData` | Links module data. If links module data is also defined on the class, both will be displayed. |
| `locations` | `array<LatLongPoint>` | Note: This field is currently not supported to trigger geo notifications. |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the object. Any additional MerchantLocations add... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `notifyPreference` | `string` | Whether or not field updates to this object should trigger notifications. When set to NOTIFY, we ... |
| `passConstraints` | `PassConstraints` | Pass constraints for the object. Includes limiting NFC and screenshot behaviors. |
| `rotatingBarcode` | `RotatingBarcode` | The rotating barcode type and value. |
| `saveRestrictions` | `SaveRestrictions` | Restrictions on the object that needs to be verified before the user tries to save the pass. Note... |
| `smartTapRedemptionValue` | `string` | The value that will be transmitted to a Smart Tap certified terminal over NFC for this object. Th... |
| `state` | `string` | Required. The state of the object. This field is used to determine how an object is displayed in ... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If text module data is also defined on the class, both will be displayed. The m... |
| `validTimeInterval` | `TimeInterval` | The time period this object will be `active` and object can be used. An object's state will be ch... |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the object. For a pass only fifteen will ... |
| `version` | `string` | Deprecated |

### `OfferObjectAddMessageResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `OfferObject` | The updated OfferObject resource. |

### `OfferObjectListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<OfferObject>` | Resources corresponding to the list request. |

### `Pagination`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#pagination"`. |
| `nextPageToken` | `string` | Page token to send to fetch the next page. |
| `resultsPerPage` | `integer` | Number of results returned in this page. |

### `PassConstraints`

Container for any constraints that may be placed on passes.

| Property | Type | Description |
|----------|------|-------------|
| `nfcConstraint` | `array<string>` | The NFC constraints for the pass. |
| `screenshotEligibility` | `string` | The screenshot eligibility for the pass. |

### `Permission`

| Property | Type | Description |
|----------|------|-------------|
| `emailAddress` | `string` | The email address of the user, group, or service account to which this permission refers to. |
| `role` | `string` | The role granted by this permission. |

### `Permissions`

| Property | Type | Description |
|----------|------|-------------|
| `issuerId` | `string` | ID of the issuer the list of permissions refer to. |
| `permissions` | `array<Permission>` | The complete list of permissions for the issuer account. |

### `PurchaseDetails`

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | ID of the account used to purchase the ticket. |
| `confirmationCode` | `string` | The confirmation code for the purchase. This may be the same for multiple different tickets and i... |
| `purchaseDateTime` | `string` | The purchase date/time of the ticket. This is an ISO 8601 extended format date/time, with or with... |
| `purchaseReceiptNumber` | `string` | Receipt number/identifier for tracking the ticket purchase via the body that sold the ticket. |
| `ticketCost` | `TicketCost` | The cost of the ticket. |

### `ReservationInfo`

| Property | Type | Description |
|----------|------|-------------|
| `confirmationCode` | `string` | Confirmation code needed to check into this flight. This is the number that the passenger would e... |
| `eticketNumber` | `string` | E-ticket number. |
| `frequentFlyerInfo` | `FrequentFlyerInfo` | Frequent flyer membership information. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#reservationInfo"`. |

### `Resources`

| Property | Type | Description |
|----------|------|-------------|
| `eventTicketClasses` | `array<EventTicketClass>` | A list of event ticket classes. |
| `eventTicketObjects` | `array<EventTicketObject>` | A list of event ticket objects. |
| `flightClasses` | `array<FlightClass>` | A list of flight classes. |
| `flightObjects` | `array<FlightObject>` | A list of flight objects. |
| `genericClasses` | `array<GenericClass>` | A list of generic classes. |
| `genericObjects` | `array<GenericObject>` | A list of generic objects. |
| `giftCardClasses` | `array<GiftCardClass>` | A list of gift card classes. |
| `giftCardObjects` | `array<GiftCardObject>` | A list of gift card objects. |
| `loyaltyClasses` | `array<LoyaltyClass>` | A list of loyalty classes. |
| `loyaltyObjects` | `array<LoyaltyObject>` | A list of loyalty objects. |
| `offerClasses` | `array<OfferClass>` | A list of offer classes. |
| `offerObjects` | `array<OfferObject>` | A list of offer objects. |
| `transitClasses` | `array<TransitClass>` | A list of transit classes. |
| `transitObjects` | `array<TransitObject>` | A list of transit objects. |

### `Review`

| Property | Type | Description |
|----------|------|-------------|
| `comments` | `string` |  |

### `RotatingBarcode`

| Property | Type | Description |
|----------|------|-------------|
| `alternateText` | `string` | An optional text that will override the default text that shows under the barcode. This field is ... |
| `initialRotatingBarcodeValues` | `RotatingBarcodeValues` | Input only. NOTE: This feature is only available for the transit vertical. Optional set of initia... |
| `renderEncoding` | `string` | The render encoding for the barcode. When specified, barcode is rendered in the given encoding. O... |
| `showCodeText` | `LocalizedString` | Optional text that will be shown when the barcode is hidden behind a click action. This happens i... |
| `totpDetails` | `RotatingBarcodeTotpDetails` | Details used to evaluate the {totp_value_n} substitutions. |
| `type` | `string` | The type of this barcode. |
| `valuePattern` | `string` | String encoded barcode value. This string supports the following substitutions: * {totp_value_n}:... |

### `RotatingBarcodeTotpDetails`

Configuration for the time-based OTP substitutions. See https://tools.ietf.org/html/rfc6238

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | The TOTP algorithm used to generate the OTP. |
| `parameters` | `array<RotatingBarcodeTotpDetailsTotpParameters>` | The TOTP parameters for each of the {totp_value_*} substitutions. The TotpParameters at index n i... |
| `periodMillis` | `string` | The time interval used for the TOTP value generation, in milliseconds. |

### `RotatingBarcodeTotpDetailsTotpParameters`

Configuration for the key and value length. See https://www.rfc-editor.org/rfc/rfc4226#section-5.3

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The secret key used for the TOTP value generation, encoded as a Base16 string. |
| `valueLength` | `integer` | The length of the TOTP value in decimal digits. |

### `RotatingBarcodeValues`

A payload containing many barcode values and start date/time.

| Property | Type | Description |
|----------|------|-------------|
| `periodMillis` | `string` | Required. The amount of time each barcode is valid for. |
| `startDateTime` | `string` | Required. The date/time the first barcode is valid from. Barcodes will be rotated through using p... |
| `values` | `array<string>` | Required. The values to encode in the barcode. At least one value is required. |

### `SaveRestrictions`

Defines restrictions on the object that will be verified during save. Note: this is an advanced feature, please contact Google for implementation support.

| Property | Type | Description |
|----------|------|-------------|
| `restrictToEmailSha256` | `string` | Restrict the save of the referencing object to the given email address only. This is the hex outp... |

### `SecurityAnimation`

| Property | Type | Description |
|----------|------|-------------|
| `animationType` | `string` | Type of animation. |

### `SetPassUpdateNoticeRequest`

Request to send a private pass update notice information to Google, so that devices can then fetch the notice prompting the user to update a pass.

| Property | Type | Description |
|----------|------|-------------|
| `externalPassId` | `string` | Required. A fully qualified identifier of the pass that the issuer wants to notify the pass holde... |
| `updateUri` | `string` | Required. The issuer endpoint URI the pass holder needs to follow in order to receive an updated ... |
| `updatedPassJwtSignature` | `string` | Required. The JWT signature of the updated pass that the issuer wants to notify Google about. Onl... |

### `SetPassUpdateNoticeResponse`

A response to a request to notify Google of an awaiting update to a private pass.

### `SignUpInfo`

| Property | Type | Description |
|----------|------|-------------|
| `classId` | `string` | ID of the class the user can sign up for. |

### `SmartTap`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The unique identifier for a smart tap. This value should follow the format issuer ID.identifier w... |
| `infos` | `array<IssuerToUserInfo>` | Communication from merchant to user. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#smartTap"`. |
| `merchantId` | `string` | Smart Tap merchant ID of who engaged in the Smart Tap interaction. |

### `SmartTapMerchantData`

| Property | Type | Description |
|----------|------|-------------|
| `authenticationKeys` | `array<AuthenticationKey>` | Available only to Smart Tap enabled partners. Contact support for additional guidance. |
| `smartTapMerchantId` | `string` | Available only to Smart Tap enabled partners. Contact support for additional guidance. |

### `TemplateItem`

| Property | Type | Description |
|----------|------|-------------|
| `firstValue` | `FieldSelector` | A reference to a field to display. If both `firstValue` and `secondValue` are populated, they wil... |
| `predefinedItem` | `string` | A predefined item to display. Only one of `firstValue` or `predefinedItem` may be set. |
| `secondValue` | `FieldSelector` | A reference to a field to display. This may only be populated if the `firstValue` field is popula... |

### `TextModuleData`

Data for Text module. All fields are optional. Header will be displayed if available, different types of bodies will be concatenated if they are defined.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | The body of the Text Module, which is defined as an uninterrupted string. Recommended maximum len... |
| `header` | `string` | The header of the Text Module. Recommended maximum length is 35 characters to ensure full string ... |
| `id` | `string` | The ID associated with a text module. This field is here to enable ease of management of text mod... |
| `localizedBody` | `LocalizedString` | Translated strings for the body. Recommended maximum length is 500 characters to ensure full stri... |
| `localizedHeader` | `LocalizedString` | Translated strings for the header. Recommended maximum length is 35 characters to ensure full str... |

### `TicketCost`

| Property | Type | Description |
|----------|------|-------------|
| `discountMessage` | `LocalizedString` | A message describing any kind of discount that was applied. |
| `faceValue` | `Money` | The face value of the ticket. |
| `purchasePrice` | `Money` | The actual purchase price of the ticket, after tax and/or discounts. |

### `TicketLeg`

| Property | Type | Description |
|----------|------|-------------|
| `arrivalDateTime` | `string` | The date/time of arrival. This is an ISO 8601 extended format date/time, with or without an offse... |
| `carriage` | `string` | The train or ship name/number that the passsenger needs to board. |
| `departureDateTime` | `string` | The date/time of departure. This is required if there is no validity time interval set on the tra... |
| `destinationName` | `LocalizedString` | The destination name. |
| `destinationStationCode` | `string` | The destination station code. |
| `fareName` | `LocalizedString` | Short description/name of the fare for this leg of travel. Eg "Anytime Single Use". |
| `originName` | `LocalizedString` | The name of the origin station. This is required if `desinationName` is present or if `originStat... |
| `originStationCode` | `string` | The origin station code. This is required if `destinationStationCode` is present or if `originNam... |
| `platform` | `string` | The platform or gate where the passenger can board the carriage. |
| `ticketSeat` | `TicketSeat` | The reserved seat for the passenger(s). If more than one seat is to be specified then use the `ti... |
| `ticketSeats` | `array<TicketSeat>` | The reserved seat for the passenger(s). If only one seat is to be specified then use the `ticketS... |
| `transitOperatorName` | `LocalizedString` | The name of the transit operator that is operating this leg of a trip. |
| `transitTerminusName` | `LocalizedString` | Terminus station or destination of the train/bus/etc. |
| `zone` | `string` | The zone of boarding within the platform. |

### `TicketRestrictions`

| Property | Type | Description |
|----------|------|-------------|
| `otherRestrictions` | `LocalizedString` | Extra restrictions that don't fall under the "route" or "time" categories. |
| `routeRestrictions` | `LocalizedString` | Restrictions about routes that may be taken. For example, this may be the string "Reserved CrossC... |
| `routeRestrictionsDetails` | `LocalizedString` | More details about the above `routeRestrictions`. |
| `timeRestrictions` | `LocalizedString` | Restrictions about times this ticket may be used. |

### `TicketSeat`

| Property | Type | Description |
|----------|------|-------------|
| `coach` | `string` | The identifier of the train car or coach in which the ticketed seat is located. Eg. "10" |
| `customFareClass` | `LocalizedString` | A custome fare class to be used if no `fareClass` applies. Both `fareClass` and `customFareClass`... |
| `fareClass` | `string` | The fare class of the ticketed seat. |
| `seat` | `string` | The identifier of where the ticketed seat is located. Eg. "42". If there is no specific identifie... |
| `seatAssignment` | `LocalizedString` | The passenger's seat assignment. Eg. "no specific seat". To be used when there is no specific ide... |

### `TimeInterval`

| Property | Type | Description |
|----------|------|-------------|
| `end` | `DateTime` | End time of the interval. Offset is not required. If an offset is provided and `start` time is se... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#timeInterval"`. |
| `start` | `DateTime` | Start time of the interval. Offset is not required. If an offset is provided and `end` time is se... |

### `TransitClass`

| Property | Type | Description |
|----------|------|-------------|
| `activationOptions` | `ActivationOptions` | Activation options for an activatable ticket. |
| `allowMultipleUsersPerObject` | `boolean` | Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead. |
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `callbackOptions` | `CallbackOptions` | Callback options to be used to call the issuer back for every save/delete of an object for this c... |
| `classTemplateInfo` | `ClassTemplateInfo` | Template information about how the class should be displayed. If unset, Google will fallback to a... |
| `countryCode` | `string` | Country code used to display the card's country (when the user is not in that country), as well a... |
| `customCarriageLabel` | `LocalizedString` | A custom label to use for the carriage value (`transitObject.ticketLeg.carriage`). |
| `customCoachLabel` | `LocalizedString` | A custom label to use for the coach value (`transitObject.ticketLeg.ticketSeat.coach`). |
| `customConcessionCategoryLabel` | `LocalizedString` | A custom label to use for the transit concession category value (`transitObject.concessionCategor... |
| `customConfirmationCodeLabel` | `LocalizedString` | A custom label to use for the confirmation code value (`transitObject.purchaseDetails.confirmatio... |
| `customDiscountMessageLabel` | `LocalizedString` | A custom label to use for the transit discount message value (`transitObject.purchaseDetails.tick... |
| `customFareClassLabel` | `LocalizedString` | A custom label to use for the fare class value (`transitObject.ticketLeg.ticketSeat.fareClass`). |
| `customFareNameLabel` | `LocalizedString` | A custom label to use for the transit fare name value (`transitObject.ticketLeg.fareName`). |
| `customOtherRestrictionsLabel` | `LocalizedString` | A custom label to use for the other restrictions value (`transitObject.ticketRestrictions.otherRe... |
| `customPlatformLabel` | `LocalizedString` | A custom label to use for the boarding platform value (`transitObject.ticketLeg.platform`). |
| `customPurchaseFaceValueLabel` | `LocalizedString` | A custom label to use for the purchase face value (`transitObject.purchaseDetails.ticketCost.face... |
| `customPurchasePriceLabel` | `LocalizedString` | A custom label to use for the purchase price value (`transitObject.purchaseDetails.ticketCost.pur... |
| `customPurchaseReceiptNumberLabel` | `LocalizedString` | A custom label to use for the purchase receipt number value (`transitObject.purchaseDetails.purch... |
| `customRouteRestrictionsDetailsLabel` | `LocalizedString` | A custom label to use for the route restrictions details value (`transitObject.ticketRestrictions... |
| `customRouteRestrictionsLabel` | `LocalizedString` | A custom label to use for the route restrictions value (`transitObject.ticketRestrictions.routeRe... |
| `customSeatLabel` | `LocalizedString` | A custom label to use for the seat location value (`transitObject.ticketLeg.ticketSeat.seat`). |
| `customTicketNumberLabel` | `LocalizedString` | A custom label to use for the ticket number value (`transitObject.ticketNumber`). |
| `customTimeRestrictionsLabel` | `LocalizedString` | A custom label to use for the time restrictions details value (`transitObject.ticketRestrictions.... |
| `customTransitTerminusNameLabel` | `LocalizedString` | A custom label to use for the transit terminus name value (`transitObject.ticketLeg.transitTermin... |
| `customZoneLabel` | `LocalizedString` | A custom label to use for the boarding zone value (`transitObject.ticketLeg.zone`). |
| `enableSingleLegItinerary` | `boolean` | Controls the display of the single-leg itinerary for this class. By default, an itinerary will on... |
| `enableSmartTap` | `boolean` | Identifies whether this class supports Smart Tap. The `redemptionIssuers` and object level `smart... |
| `heroImage` | `Image` | Optional banner image displayed on the front of the card. If none is present, nothing will be dis... |
| `hexBackgroundColor` | `string` | The background color for the card. If not set the dominant color of the hero image is used, and i... |
| `homepageUri` | `Uri` | The URI of your application's home page. Populating the URI in this field results in the exact sa... |
| `id` | `string` | Required. The unique identifier for a class. This ID must be unique across all classes from an is... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. The maximum number of these fields displayed is 1 from object level and 1 for ... |
| `infoModuleData` | `InfoModuleData` | Deprecated. Use textModulesData instead. |
| `issuerName` | `string` | Required. The issuer name. Recommended maximum length is 20 characters to ensure full string is d... |
| `languageOverride` | `string` | If this field is present, transit tickets served to a user's device will always be in this langua... |
| `linksModuleData` | `LinksModuleData` | Links module data. If links module data is also defined on the object, both will be displayed. |
| `localizedIssuerName` | `LocalizedString` | Translated strings for the issuer_name. Recommended maximum length is 20 characters to ensure ful... |
| `locations` | `array<LatLongPoint>` | Note: This field is currently not supported to trigger geo notifications. |
| `logo` | `Image` | Required. The logo image of the ticket. This image is displayed in the card detail view of the app. |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the class. Any additional MerchantLocations adde... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `multipleDevicesAndHoldersAllowedStatus` | `string` | Identifies whether multiple users and devices will save the same object referencing this class. |
| `notifyPreference` | `string` | Whether or not field updates to this class should trigger notifications. When set to NOTIFY, we w... |
| `redemptionIssuers` | `array<string>` | Identifies which redemption issuers can redeem the pass over Smart Tap. Redemption issuers are id... |
| `review` | `Review` | The review comments set by the platform when a class is marked `approved` or `rejected`. |
| `reviewStatus` | `string` | Required. The status of the class. This field can be set to `draft` or `underReview` using the in... |
| `securityAnimation` | `SecurityAnimation` | Optional information about the security animation. If this is set a security animation will be re... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If text module data is also defined on the class, both will be displayed. The m... |
| `transitOperatorName` | `LocalizedString` | The name of the transit operator. |
| `transitType` | `string` | Required. The type of transit this class represents, such as "bus". |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the class. For a pass only fifteen will b... |
| `version` | `string` | Deprecated |
| `viewUnlockRequirement` | `string` | View Unlock Requirement options for the transit ticket. |
| `watermark` | `Image` | Watermark image to display on the user's device. |
| `wideLogo` | `Image` | The wide logo of the ticket. When provided, this will be used in place of the logo in the top lef... |
| `wordMark` | `Image` | Deprecated. |

### `TransitClassAddMessageResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `TransitClass` | The updated TransitClass resource. |

### `TransitClassListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<TransitClass>` | Resources corresponding to the list request. |

### `TransitObject`

| Property | Type | Description |
|----------|------|-------------|
| `activationStatus` | `ActivationStatus` | The activation status for the object. Required if the class has `activationOptions` set. |
| `appLinkData` | `AppLinkData` | Optional app or website link that will be displayed as a button on the front of the pass. If AppL... |
| `barcode` | `Barcode` | The barcode type and value. |
| `classId` | `string` | Required. The class associated with this object. The class must be of the same type as this objec... |
| `classReference` | `TransitClass` | A copy of the inherited fields of the parent class. These fields are retrieved during a GET. |
| `concessionCategory` | `string` | The concession category for the ticket. |
| `customConcessionCategory` | `LocalizedString` | A custom concession category to use when `concessionCategory` does not provide the right option. ... |
| `customTicketStatus` | `LocalizedString` | A custom status to use for the ticket status value when `ticketStatus` does not provide the right... |
| `deviceContext` | `DeviceContext` | Device context associated with the object. |
| `disableExpirationNotification` | `boolean` | Indicates if notifications should explicitly be suppressed. If this field is set to true, regardl... |
| `groupingInfo` | `GroupingInfo` | Information that controls how passes are grouped together. |
| `hasLinkedDevice` | `boolean` | Whether this object is currently linked to a single device. This field is set by the platform whe... |
| `hasUsers` | `boolean` | Indicates if the object has users. This field is set by the platform. |
| `heroImage` | `Image` | Optional banner image displayed on the front of the card. If none is present, hero image of the c... |
| `hexBackgroundColor` | `string` | The background color for the card. If not set the dominant color of the hero image is used, and i... |
| `id` | `string` | Required. The unique identifier for an object. This ID must be unique across all objects from an ... |
| `imageModulesData` | `array<ImageModuleData>` | Image module data. The maximum number of these fields displayed is 1 from object level and 1 for ... |
| `infoModuleData` | `InfoModuleData` | Deprecated. Use textModulesData instead. |
| `linkedObjectIds` | `array<string>` | linked_object_ids are a list of other objects such as event ticket, loyalty, offer, generic, gift... |
| `linksModuleData` | `LinksModuleData` | Links module data. If links module data is also defined on the class, both will be displayed. |
| `locations` | `array<LatLongPoint>` | Note: This field is currently not supported to trigger geo notifications. |
| `merchantLocations` | `array<MerchantLocation>` | Merchant locations. There is a maximum of ten on the object. Any additional MerchantLocations add... |
| `messages` | `array<Message>` | An array of messages displayed in the app. All users of this object will receive its associated m... |
| `notifyPreference` | `string` | Whether or not field updates to this object should trigger notifications. When set to NOTIFY, we ... |
| `passConstraints` | `PassConstraints` | Pass constraints for the object. Includes limiting NFC and screenshot behaviors. |
| `passengerNames` | `string` | The name(s) of the passengers the ticket is assigned to. The above `passengerType` field is meant... |
| `passengerType` | `string` | The number of passengers. |
| `purchaseDetails` | `PurchaseDetails` | Purchase details for this ticket. |
| `rotatingBarcode` | `RotatingBarcode` | The rotating barcode type and value. |
| `saveRestrictions` | `SaveRestrictions` | Restrictions on the object that needs to be verified before the user tries to save the pass. Note... |
| `smartTapRedemptionValue` | `string` | The value that will be transmitted to a Smart Tap certified terminal over NFC for this object. Th... |
| `state` | `string` | Required. The state of the object. This field is used to determine how an object is displayed in ... |
| `textModulesData` | `array<TextModuleData>` | Text module data. If text module data is also defined on the class, both will be displayed. The m... |
| `ticketLeg` | `TicketLeg` | A single ticket leg contains departure and arrival information along with boarding and seating in... |
| `ticketLegs` | `array<TicketLeg>` | Each ticket may contain one or more legs. Each leg contains departure and arrival information alo... |
| `ticketNumber` | `string` | The number of the ticket. This is a unique identifier for the ticket in the transit operator's sy... |
| `ticketRestrictions` | `TicketRestrictions` | Information about what kind of restrictions there are on using this ticket. For example, which da... |
| `ticketStatus` | `string` | The status of the ticket. For states which affect display, use the `state` field instead. |
| `tripId` | `string` | This id is used to group tickets together if the user has saved multiple tickets for the same trip. |
| `tripType` | `string` | Required. The type of trip this transit object represents. Used to determine the pass title and/o... |
| `validTimeInterval` | `TimeInterval` | The time period this object will be `active` and object can be used. An object's state will be ch... |
| `valueAddedModuleData` | `array<ValueAddedModuleData>` | Optional value added module data. Maximum of fifteen on the object. For a pass only fifteen will ... |
| `version` | `string` | Deprecated |

### `TransitObjectAddMessageResponse`

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `TransitObject` | The updated TransitObject resource. |

### `TransitObjectListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `pagination` | `Pagination` | Pagination of the response. |
| `resources` | `array<TransitObject>` | Resources corresponding to the list request. |

### `TransitObjectUploadRotatingBarcodeValuesRequest`

Request to upload rotating barcode values.

| Property | Type | Description |
|----------|------|-------------|
| `blob` | `Media` | A reference to the rotating barcode values payload that was uploaded. |
| `mediaRequestInfo` | `MediaRequestInfo` | Extra information about the uploaded media. |

### `TransitObjectUploadRotatingBarcodeValuesResponse`

Response for uploading rotating barcode values.

### `TranslatedString`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#translatedStrin... |
| `language` | `string` | Represents the BCP 47 language tag. Example values are "en-US", "en-GB", "de", or "de-AT". |
| `value` | `string` | The UTF-8 encoded translated string. |

### `UpcomingNotification`

Indicates that the issuer would like Google Wallet to send an upcoming card validity notification 1 day before card becomes valid/usable.

| Property | Type | Description |
|----------|------|-------------|
| `enableNotification` | `boolean` | Indicates if the object needs to have upcoming notification enabled. |

### `UploadPrivateImageRequest`

Request to upload a private image to use in a pass.

### `UploadPrivateImageResponse`

Response for uploading the private image.

| Property | Type | Description |
|----------|------|-------------|
| `privateImageId` | `string` | Unique ID of the uploaded image to be referenced later in Image.private_image_id. |

### `Uri`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The URI's title appearing in the app as text. Recommended maximum is 20 characters to ensure full... |
| `id` | `string` | The ID associated with a uri. This field is here to enable ease of management of uris. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"walletobjects#uri"`. |
| `localizedDescription` | `LocalizedString` | Translated strings for the description. Recommended maximum is 20 characters to ensure full strin... |
| `uri` | `string` | The location of a web page, image, or other resource. URIs in the `LinksModuleData` module can ha... |

### `ValueAddedModuleData`

Data for Value Added module. Required fields are header and uri.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `LocalizedString` | Body to be displayed on the module. Character limit is 50 and longer strings will be truncated. |
| `header` | `LocalizedString` | Header to be displayed on the module. Character limit is 60 and longer strings will be truncated. |
| `image` | `Image` | Image to be displayed on the module. Recommended image ratio is 1:1. Images will be resized to fi... |
| `sortIndex` | `integer` | The index for sorting the modules. Modules with a lower sort index are shown before modules with ... |
| `uri` | `string` | URI that the module leads to on click. This can be a web link or a deep link as mentioned in http... |
| `viewConstraints` | `ModuleViewConstraints` | Constraints that all must be met for the module to be shown. |

