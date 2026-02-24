# My Business Business Information API - API Reference

**Version**: `v1` | **Methods**: 15 | **Schemas**: 48

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `mybusinessbusinessinformation.attributes.list` | GET | `v1/attributes` | Returns the list of attributes that would be available for a location with the given primary cate... |
| `mybusinessbusinessinformation.locations.updateAttributes` | PATCH | `v1/{+name}` | Update attributes for a given location. |
| `mybusinessbusinessinformation.locations.getAttributes` | GET | `v1/{+name}` | Looks up all the attributes set for a given location. |
| `mybusinessbusinessinformation.locations.get` | GET | `v1/{+name}` | Returns the specified location. |
| `mybusinessbusinessinformation.locations.getGoogleUpdated` | GET | `v1/{+name}:getGoogleUpdated` | Gets the Google-updated version of the specified location. |
| `mybusinessbusinessinformation.locations.patch` | PATCH | `v1/{+name}` | Updates the specified location. |
| `mybusinessbusinessinformation.locations.delete` | DELETE | `v1/{+name}` | Deletes a location. If this location cannot be deleted using the API and it is marked so in the `... |
| `mybusinessbusinessinformation.locations.attributes.getGoogleUpdated` | GET | `v1/{+name}:getGoogleUpdated` | Gets the Google-updated version of the specified location. |
| `mybusinessbusinessinformation.categories.list` | GET | `v1/categories` | Returns a list of business categories. Search will match the category name but not the category I... |
| `mybusinessbusinessinformation.categories.batchGet` | GET | `v1/categories:batchGet` | Returns a list of business categories for the provided language and GConcept ids. |
| `mybusinessbusinessinformation.chains.get` | GET | `v1/{+name}` | Gets the specified chain. Returns `NOT_FOUND` if the chain does not exist. |
| `mybusinessbusinessinformation.chains.search` | GET | `v1/chains:search` | Searches the chain based on chain name. |
| `mybusinessbusinessinformation.googleLocations.search` | POST | `v1/googleLocations:search` | Search all of the possible locations that are a match to the specified request. |
| `mybusinessbusinessinformation.accounts.locations.list` | GET | `v1/{+parent}/locations` | Lists the locations for the specified account. |
| `mybusinessbusinessinformation.accounts.locations.create` | POST | `v1/{+parent}/locations` | Creates a new Location that will be owned by the logged in user. |

### `mybusinessbusinessinformation.attributes.list`

**GET** `v1/attributes`

Returns the list of attributes that would be available for a location with the given primary category and country.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `categoryName` | `string` | query | No | The primary category stable ID to find available attributes. Must be of the format categories/{category_id}. |
| `languageCode` | `string` | query | No | The BCP 47 code of language to get attribute display names in. If this language is not available, they will be provid... |
| `pageSize` | `integer` | query | No | How many attributes to include per page. Default is 200, minimum is 1. |
| `pageToken` | `string` | query | No | If specified, the next page of attribute metadata is retrieved. |
| `parent` | `string` | query | No | Resource name of the location to look up available attributes. If this field is set, category_name, region_code, lang... |
| `regionCode` | `string` | query | No | The ISO 3166-1 alpha-2 country code to find available attributes. |
| `showAll` | `boolean` | query | No | Metadata for all available attributes are returned when this field is set to true, disregarding parent and category_n... |

**Response**: `ListAttributeMetadataResponse`

```typescript
const res = await mybusinessbusinessinformation.attributes.list({
  // parameters
});
```

---

### `mybusinessbusinessinformation.locations.updateAttributes`

**PATCH** `v1/{+name}`

Update attributes for a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Google identifier for this location in the form of `locations/{location_id}/attributes`. |
| `attributeMask` | `string` | query | No | Required. Attribute name of attributes that you'd like to update. Represented by `attributes/{attribute}`. Updates: A... |

**Request body**: `Attributes`

**Response**: `Attributes`

```typescript
const res = await mybusinessbusinessinformation.locations.updateAttributes({
  // parameters
});
```

---

### `mybusinessbusinessinformation.locations.getAttributes`

**GET** `v1/{+name}`

Looks up all the attributes set for a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Google identifier for this location in the form of `locations/{location_id}/attributes`. |

**Response**: `Attributes`

```typescript
const res = await mybusinessbusinessinformation.locations.getAttributes({
  // parameters
});
```

---

### `mybusinessbusinessinformation.locations.get`

**GET** `v1/{+name}`

Returns the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the location to fetch. |
| `readMask` | `string` | query | No | Required. Read mask to specify what fields will be returned in the response. |

**Response**: `Location`

```typescript
const res = await mybusinessbusinessinformation.locations.get({
  // parameters
});
```

---

### `mybusinessbusinessinformation.locations.getGoogleUpdated`

**GET** `v1/{+name}:getGoogleUpdated`

Gets the Google-updated version of the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the location to fetch. |
| `readMask` | `string` | query | No | Required. Read mask to specify what fields will be returned in the response. |

**Response**: `GoogleUpdatedLocation`

```typescript
const res = await mybusinessbusinessinformation.locations.getGoogleUpdated({
  // parameters
});
```

---

### `mybusinessbusinessinformation.locations.patch`

**PATCH** `v1/{+name}`

Updates the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Google identifier for this location in the form: `locations/{location_id}`. |
| `updateMask` | `string` | query | No | Required. The specific fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. If true, the request is validated without actually updating the location. When this field is set, we will o... |

**Request body**: `Location`

**Response**: `Location`

```typescript
const res = await mybusinessbusinessinformation.locations.patch({
  // parameters
});
```

---

### `mybusinessbusinessinformation.locations.delete`

**DELETE** `v1/{+name}`

Deletes a location. If this location cannot be deleted using the API and it is marked so in the `google.mybusiness.businessinformation.v1.LocationState`, use the [Google Business Profile](https://business.google.com/manage/) website.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the location to delete. |

**Response**: `Empty`

```typescript
const res = await mybusinessbusinessinformation.locations.delete({
  // parameters
});
```

---

### `mybusinessbusinessinformation.locations.attributes.getGoogleUpdated`

**GET** `v1/{+name}:getGoogleUpdated`

Gets the Google-updated version of the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Google identifier for this location in the form of `locations/{location_id}/attributes`. |

**Response**: `Attributes`

```typescript
const res = await mybusinessbusinessinformation.attributes.getGoogleUpdated({
  // parameters
});
```

---

### `mybusinessbusinessinformation.categories.list`

**GET** `v1/categories`

Returns a list of business categories. Search will match the category name but not the category ID. Search only matches the front of a category name (that is, 'food' may return 'Food Court' but not 'Fast Food Restaurant').

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Optional. Filter string from user. The only field that supported is `displayName`. Eg: `filter=displayName=foo`. |
| `languageCode` | `string` | query | No | Required. The BCP 47 code of language. |
| `pageSize` | `integer` | query | No | Optional. How many categories to fetch per page. Default is 100, minimum is 1, and maximum page size is 100. |
| `pageToken` | `string` | query | No | Optional. If specified, the next page of categories will be fetched. |
| `regionCode` | `string` | query | No | Required. The ISO 3166-1 alpha-2 country code. |
| `view` | `string` | query | No | Required. Specifies which parts to the Category resource should be returned in the response. |

**Response**: `ListCategoriesResponse`

```typescript
const res = await mybusinessbusinessinformation.categories.list({
  // parameters
});
```

---

### `mybusinessbusinessinformation.categories.batchGet`

**GET** `v1/categories:batchGet`

Returns a list of business categories for the provided language and GConcept ids.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `languageCode` | `string` | query | No | Required. The BCP 47 code of language that the category names should be returned in. |
| `names` | `string` | query | No | Required. At least one name must be set. The GConcept ids the localized category names should be returned for. To ret... |
| `regionCode` | `string` | query | No | Optional. The ISO 3166-1 alpha-2 country code used to infer non-standard language. |
| `view` | `string` | query | No | Required. Specifies which parts to the Category resource should be returned in the response. |

**Response**: `BatchGetCategoriesResponse`

```typescript
const res = await mybusinessbusinessinformation.categories.batchGet({
  // parameters
});
```

---

### `mybusinessbusinessinformation.chains.get`

**GET** `v1/{+name}`

Gets the specified chain. Returns `NOT_FOUND` if the chain does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The chain's resource name, in the format `chains/{chain_place_id}`. |

**Response**: `Chain`

```typescript
const res = await mybusinessbusinessinformation.chains.get({
  // parameters
});
```

---

### `mybusinessbusinessinformation.chains.search`

**GET** `v1/chains:search`

Searches the chain based on chain name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `chainName` | `string` | query | No | Required. Search for a chain by its name. Exact/partial/fuzzy/related queries are supported. Examples: "walmart", "wa... |
| `pageSize` | `integer` | query | No | The maximum number of matched chains to return from this query. The default is 10. The maximum possible value is 500. |

**Response**: `SearchChainsResponse`

```typescript
const res = await mybusinessbusinessinformation.chains.search({
  // parameters
});
```

---

### `mybusinessbusinessinformation.googleLocations.search`

**POST** `v1/googleLocations:search`

Search all of the possible locations that are a match to the specified request.

**Request body**: `SearchGoogleLocationsRequest`

**Response**: `SearchGoogleLocationsResponse`

```typescript
const res = await mybusinessbusinessinformation.googleLocations.search({
  // parameters
});
```

---

### `mybusinessbusinessinformation.accounts.locations.list`

**GET** `v1/{+parent}/locations`

Lists the locations for the specified account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the account to fetch locations from. If the parent Account is of AccountType PERSONAL, only Loc... |
| `filter` | `string` | query | No | Optional. A filter constraining the locations to return. The response includes only entries that match the filter. If... |
| `orderBy` | `string` | query | No | Optional. Sorting order for the request. Multiple fields should be comma-separated, following SQL syntax. The default... |
| `pageSize` | `integer` | query | No | Optional. How many locations to fetch per page. Default value is 10 if not set. Minimum is 1, and maximum page size i... |
| `pageToken` | `string` | query | No | Optional. If specified, it fetches the next `page` of locations. The page token is returned by previous calls to `Lis... |
| `readMask` | `string` | query | No | Required. Read mask to specify what fields will be returned in the response. |

**Response**: `ListLocationsResponse`

```typescript
const res = await mybusinessbusinessinformation.locations.list({
  // parameters
});
```

---

### `mybusinessbusinessinformation.accounts.locations.create`

**POST** `v1/{+parent}/locations`

Creates a new Location that will be owned by the logged in user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the account in which to create this location. |
| `requestId` | `string` | query | No | Optional. A unique request ID for the server to detect duplicated requests. We recommend using UUIDs. Max length is 5... |
| `validateOnly` | `boolean` | query | No | Optional. If true, the request is validated without actually creating the location. |

**Request body**: `Location`

**Response**: `Location`

```typescript
const res = await mybusinessbusinessinformation.locations.create({
  // parameters
});
```

---

## Schemas

### `AdWordsLocationExtensions`

Additional information that is surfaced in AdWords.

| Property | Type | Description |
|----------|------|-------------|
| `adPhone` | `string` | Required. An alternate phone number to display on AdWords location extensions instead of the loca... |

### `Attribute`

A location attribute. Attributes provide additional information about a location. The attributes that can be set on a location may vary based on the properties of that location (for example, category). Available attributes are determined by Google and may be added and removed without API changes.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The resource name for this attribute. |
| `repeatedEnumValue` | `RepeatedEnumAttributeValue` | When the attribute value type is REPEATED_ENUM, this contains the attribute value, and the other ... |
| `uriValues` | `array<UriAttributeValue>` | When the attribute value type is URL, this field contains the value(s) for this attribute, and th... |
| `valueType` | `string` | Output only. The type of value that this attribute contains. This should be used to determine how... |
| `values` | `array<any>` | The values for this attribute. The type of the values supplied must match that expected for that ... |

### `AttributeMetadata`

Metadata for an attribute. Contains display information for the attribute, including a localized name and a heading for grouping related attributes together.

| Property | Type | Description |
|----------|------|-------------|
| `deprecated` | `boolean` | If true, the attribute is deprecated and should no longer be used. If deprecated, updating this a... |
| `displayName` | `string` | The localized display name for the attribute, if available; otherwise, the English display name. |
| `groupDisplayName` | `string` | The localized display name of the group that contains this attribute, if available; otherwise, th... |
| `parent` | `string` | The unique identifier for the attribute. |
| `repeatable` | `boolean` | If true, the attribute supports multiple values. If false, only a single value should be provided. |
| `valueMetadata` | `array<AttributeValueMetadata>` | For some types of attributes (for example, enums), a list of supported values and corresponding d... |
| `valueType` | `string` | The value type for the attribute. Values set and retrieved should be expected to be of this type. |

### `AttributeValueMetadata`

Metadata for supported attribute values.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name for this value, localized where available; otherwise, in English. The value disp... |
| `value` | `any` | The attribute value. |

### `Attributes`

A container for all the attributes for a given location.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<Attribute>` | A collection of attributes that need to be updated. |
| `name` | `string` | Required. Google identifier for this location in the form of `locations/{location_id}/attributes`. |

### `BatchGetCategoriesResponse`

Response message for BusinessCategories.BatchGetBusinessCategories.

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<Category>` | Categories that match the GConcept ids provided in the request. They will not come in the same or... |

### `BusinessHours`

Represents the time periods that this location is open for business. Holds a collection of TimePeriod instances.

| Property | Type | Description |
|----------|------|-------------|
| `periods` | `array<TimePeriod>` | Required. A collection of times that this location is open for business. Each period represents a... |

### `Categories`

A collection of categories that describes the business. During updates, both fields must be set. Clients are prohibited from individually updating the primary or additional categories using the update mask.

| Property | Type | Description |
|----------|------|-------------|
| `additionalCategories` | `array<Category>` | Optional. Additional categories to describe your business. Categories help your customers find ac... |
| `primaryCategory` | `Category` | Required. Category that best describes the core business this location engages in. |

### `Category`

A category describing what this business is (not what it does). For a list of valid category IDs, and the mappings to their human-readable names, see `categories.list`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The human-readable name of the category. This is set when reading the location. When... |
| `moreHoursTypes` | `array<MoreHoursType>` | Output only. More hours types that are available for this business category. |
| `name` | `string` | Required. A stable ID (provided by Google) for this category. The value must be specified when mo... |
| `serviceTypes` | `array<ServiceType>` | Output only. A list of all the service types that are available for this business category. |

### `Chain`

A chain is a brand that your business's locations can be affiliated with.

| Property | Type | Description |
|----------|------|-------------|
| `chainNames` | `array<ChainName>` | Names of the chain. |
| `locationCount` | `integer` | Number of locations that are part of this chain. |
| `name` | `string` | Required. The chain's resource name, in the format `chains/{chain_id}`. |
| `websites` | `array<ChainUri>` | Websites of the chain. |

### `ChainName`

Name to be used when displaying the chain.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name for this chain. |
| `languageCode` | `string` | The BCP 47 code of language of the name. |

### `ChainUri`

Url to be used when displaying the chain.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | The uri for this chain. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `FreeFormServiceItem`

Represents a free-form service offered by the merchant. These are services that are not exposed as part of our structure service data. The merchant manually enters the names for of such services via a geomerchant surface.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | Required. This field represents the category name (i.e. the category's stable ID). The `category`... |
| `label` | `Label` | Required. Language-tagged labels for the item. We recommend that item names be 140 characters or ... |

### `GoogleLocation`

Represents a Location that is present on Google. This can be a location that has been claimed by the user, someone else, or could be unclaimed.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `Location` | The sparsely populated Location information. This field can be re-used in CreateLocation if it is... |
| `name` | `string` | Resource name of this GoogleLocation, in the format `googleLocations/{googleLocationId}`. |
| `requestAdminRightsUri` | `string` | A URL that will redirect the user to the request admin rights UI. This field is only present if t... |

### `GoogleUpdatedLocation`

Represents a location that was modified by Google.

| Property | Type | Description |
|----------|------|-------------|
| `diffMask` | `string` | The fields that Google updated. |
| `location` | `Location` | The Google-updated version of this location. |
| `pendingMask` | `string` | The fields that have pending edits that haven't yet been pushed to Maps and Search. |

### `Label`

Label to be used when displaying the price list, section, or item.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the price list, section, or item. |
| `displayName` | `string` | Required. Display name for the price list, section, or item. |
| `languageCode` | `string` | Optional. The BCP-47 language code that these strings apply for. Only one set of labels may be se... |

### `LatLng`

An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `longitude` | `number` | The longitude in degrees. It must be in the range [-180.0, +180.0]. |

### `ListAttributeMetadataResponse`

Response for AttributesService.ListAttributeMetadata.

| Property | Type | Description |
|----------|------|-------------|
| `attributeMetadata` | `array<AttributeMetadata>` | A collection of attribute metadata for the available attributes. |
| `nextPageToken` | `string` | If the number of attributes exceeded the requested page size, this field will be populated with a... |

### `ListCategoriesResponse`

Response message for BusinessCategories.ListCategories.

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<Category>` | The matching categories based on the requested parameters. |
| `nextPageToken` | `string` | If the number of categories exceeded the requested page size, this field will be populated with a... |

### `ListLocationsResponse`

Response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | The locations. |
| `nextPageToken` | `string` | If the number of locations exceeded the requested page size, this field is populated with a token... |
| `totalSize` | `integer` | The approximate number of Locations in the list irrespective of pagination. This field will only ... |

### `Location`

A location. See the [help center article] (https://support.google.com/business/answer/3038177) for a detailed description of these fields, or the [category endpoint](/my-business/reference/rest/v4/categories) for a list of valid business categories.

| Property | Type | Description |
|----------|------|-------------|
| `adWordsLocationExtensions` | `AdWordsLocationExtensions` | Optional. Additional information that is surfaced in AdWords. |
| `categories` | `Categories` | Optional. The different categories that describe the business. |
| `labels` | `array<string>` | Optional. A collection of free-form strings to allow you to tag your business. These labels are N... |
| `languageCode` | `string` | Immutable. The language of the location. Set during creation and not updateable. |
| `latlng` | `LatLng` | Optional. User-provided latitude and longitude. When creating a location, this field is ignored i... |
| `metadata` | `Metadata` | Output only. Additional non-user-editable information. |
| `moreHours` | `array<MoreHours>` | Optional. More hours for a business's different departments or specific customers. |
| `name` | `string` | Google identifier for this location in the form: `locations/{location_id}`. |
| `openInfo` | `OpenInfo` | Optional. A flag that indicates whether the location is currently open for business. |
| `phoneNumbers` | `PhoneNumbers` | Optional. The different phone numbers that customers can use to get in touch with the business. |
| `profile` | `Profile` | Optional. Describes your business in your own voice and shares with users the unique story of you... |
| `regularHours` | `BusinessHours` | Optional. Operating hours for the business. |
| `relationshipData` | `RelationshipData` | Optional. All locations and chain related to this one. |
| `serviceArea` | `ServiceAreaBusiness` | Optional. Service area businesses provide their service at the customer's location. If this busin... |
| `serviceItems` | `array<ServiceItem>` | Optional. List of services supported by merchants. A service can be haircut, install water heater... |
| `specialHours` | `SpecialHours` | Optional. Special hours for the business. This typically includes holiday hours, and other times ... |
| `storeCode` | `string` | Optional. External identifier for this location, which must be unique within a given account. Thi... |
| `storefrontAddress` | `PostalAddress` | Optional. A precise, accurate address to describe your business location. PO boxes or mailboxes l... |
| `title` | `string` | Required. Location name should reflect your business's real-world name, as used consistently on y... |
| `websiteUri` | `string` | Optional. A URL for this business. If possible, use a URL that represents this individual busines... |

### `Metadata`

Additional non-user-editable information about the location.

| Property | Type | Description |
|----------|------|-------------|
| `canDelete` | `boolean` | Output only. Indicates whether the location can be deleted using the API. |
| `canHaveBusinessCalls` | `boolean` | Output only. Indicates if the listing is eligible for business calls. |
| `canHaveFoodMenus` | `boolean` | Output only. Indicates if the listing is eligible for food menu. |
| `canModifyServiceList` | `boolean` | Output only. Indicates if the listing can modify the service list. |
| `canOperateHealthData` | `boolean` | Output only. Indicates whether the location can operate on Health data. |
| `canOperateLocalPost` | `boolean` | Output only. Indicates if the listing can manage local posts. Deprecated: This field is no longer... |
| `canOperateLodgingData` | `boolean` | Output only. Indicates whether the location can operate on Lodging data. |
| `duplicateLocation` | `string` | Output only. The location resource that this location duplicates. |
| `hasGoogleUpdated` | `boolean` | Output only. Indicates whether the place ID associated with this location has updates that need t... |
| `hasPendingEdits` | `boolean` | Output only. Indicates whether any of this Location's properties are in the edit pending state. |
| `hasVoiceOfMerchant` | `boolean` | Output only. Indicates if the listing has Voice of Merchant. If this boolean is false, you should... |
| `isParticularlyPersonalPlace` | `boolean` | Output only. |
| `mapsUri` | `string` | Output only. A link to the location on Maps. |
| `newReviewUri` | `string` | Output only. A link to the page on Google Search where a customer can leave a review for the loca... |
| `placeId` | `string` | Output only. If this locationappears on Google Maps, this field is populated with the place ID fo... |

### `Money`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

### `MoreHours`

The time periods during which a location is open for certain types of business.

| Property | Type | Description |
|----------|------|-------------|
| `hoursTypeId` | `string` | Required. Type of hours. Clients should call {#link businessCategories:BatchGet} to get supported... |
| `periods` | `array<TimePeriod>` | Required. A collection of times that this location is open. Each period represents a range of hou... |

### `MoreHoursType`

More hours types that a business can offers, in addition to its regular hours.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The human-readable English display name for the hours type. |
| `hoursTypeId` | `string` | Output only. A stable ID provided by Google for this hours type. |
| `localizedDisplayName` | `string` | Output only. The human-readable localized display name for the hours type. |

### `OpenInfo`

Information related to the opening state of the business.

| Property | Type | Description |
|----------|------|-------------|
| `canReopen` | `boolean` | Output only. Indicates whether this business is eligible for re-open. |
| `openingDate` | `Date` | Optional. The date on which the location first opened. If the exact day is not known, month and y... |
| `status` | `string` | Required. Indicates whether or not the Location is currently open for business. All locations are... |

### `PhoneNumbers`

A collection of phone numbers for the business. During updates, both fields must be set. Clients may not update just the primary or additional phone numbers using the update mask. International phone format is preferred, such as "+1 415 555 0132", see more in (https://developers.google.com/style/phone-numbers#international-phone-numbers).

| Property | Type | Description |
|----------|------|-------------|
| `additionalPhones` | `array<string>` | Optional. Up to two phone numbers (mobile or landline, no fax) at which your business can be call... |
| `primaryPhone` | `string` | Required. A phone number that connects to your individual business location as directly as possib... |

### `PlaceInfo`

Defines an area that's represented by a place ID.

| Property | Type | Description |
|----------|------|-------------|
| `placeId` | `string` | Required. The ID of the place. Must correspond to a region. (https://developers.google.com/places... |
| `placeName` | `string` | Required. The localized name of the place. For example, `Scottsdale, AZ`. |

### `Places`

Defines the union of areas represented by a set of places.

| Property | Type | Description |
|----------|------|-------------|
| `placeInfos` | `array<PlaceInfo>` | The areas represented by place IDs. Limited to a maximum of 20 places. |

### `PostalAddress`

Represents a postal address, such as for postal delivery or payments addresses. With a postal address, a postal service can deliver items to a premise, P.O. box, or similar. A postal address is not intended to model geographical locations like roads, towns, or mountains. In typical usage, an address would be created by user input or from importing existing data, depending on the type of process. Advice on address input or editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput. - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, see: https://support.google.com/business/answer/6397478.

| Property | Type | Description |
|----------|------|-------------|
| `addressLines` | `array<string>` | Unstructured address lines describing the lower levels of an address. Because values in `address_... |
| `administrativeArea` | `string` | Optional. Highest administrative subdivision which is used for postal addresses of a country or r... |
| `languageCode` | `string` | Optional. BCP-47 language code of the contents of this address (if known). This is often the UI l... |
| `locality` | `string` | Optional. Generally refers to the city or town portion of the address. Examples: US city, IT comu... |
| `organization` | `string` | Optional. The name of the organization at the address. |
| `postalCode` | `string` | Optional. Postal code of the address. Not all countries use or require postal codes to be present... |
| `recipients` | `array<string>` | Optional. The recipient at the address. This field may, under certain circumstances, contain mult... |
| `regionCode` | `string` | Required. CLDR region code of the country/region of the address. This is never inferred and it is... |
| `revision` | `integer` | The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. ... |
| `sortingCode` | `string` | Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it ... |
| `sublocality` | `string` | Optional. Sublocality of the address. For example, this can be a neighborhood, borough, or district. |

### `Profile`

All information pertaining to the location's profile.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Required. Description of the location in your own voice, not editable by anyone else. |

### `RelationshipData`

Information of all parent and children locations related to this one.

| Property | Type | Description |
|----------|------|-------------|
| `childrenLocations` | `array<RelevantLocation>` | The list of children locations that this location has relations with. |
| `parentChain` | `string` | The resource name of the Chain that this location is member of. How to find Chain ID |
| `parentLocation` | `RelevantLocation` | The parent location that this location has relations with. |

### `RelevantLocation`

Information about another location that is related to current one. The relation can be any one of DEPARTMENT_OF or INDEPENDENT_ESTABLISHMENT_OF, and the location specified here can be on either side (parent/child) of the location.

| Property | Type | Description |
|----------|------|-------------|
| `placeId` | `string` | Required. Specify the location that is on the other side of the relation by its placeID. |
| `relationType` | `string` | Required. The type of the relationship. |

### `RepeatedEnumAttributeValue`

Values for an attribute with a `value_type` of REPEATED_ENUM. This consists of two lists of value IDs: those that are set (true) and those that are unset (false). Values absent are considered unknown. At least one value must be specified.

| Property | Type | Description |
|----------|------|-------------|
| `setValues` | `array<string>` | Enum values that are set. |
| `unsetValues` | `array<string>` | Enum values that are unset. |

### `SearchChainsResponse`

Response message for Locations.SearchChains.

| Property | Type | Description |
|----------|------|-------------|
| `chains` | `array<Chain>` | Chains that match the queried chain_display_name in SearchChainsRequest. If there are no matches,... |

### `SearchGoogleLocationsRequest`

Request message for GoogleLocations.SearchGoogleLocations.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `Location` | Location to search for. If provided, will find locations which match the provided location detail... |
| `pageSize` | `integer` | The number of matches to return. The default value is 3, with a maximum of 10. Note that latency ... |
| `query` | `string` | Text query to search for. The search results from a query string will be less accurate than if pr... |

### `SearchGoogleLocationsResponse`

Response message for GoogleLocations.SearchGoogleLocations.

| Property | Type | Description |
|----------|------|-------------|
| `googleLocations` | `array<GoogleLocation>` | A collection of GoogleLocations that are potential matches to the specified request, listed in or... |

### `ServiceAreaBusiness`

Service area businesses provide their service at the customer's location (for example, a locksmith or plumber).

| Property | Type | Description |
|----------|------|-------------|
| `businessType` | `string` | Required. Indicates the type of the service area business. |
| `places` | `Places` | The area that this business serves defined through a set of places. |
| `regionCode` | `string` | Immutable. CLDR region code of the country/region that this service area business is based in. Se... |

### `ServiceItem`

A message that describes a single service item. It is used to describe the type of service that the merchant provides. For example, haircut can be a service.

| Property | Type | Description |
|----------|------|-------------|
| `freeFormServiceItem` | `FreeFormServiceItem` | Optional. This field will be set case of free-form services data. |
| `price` | `Money` | Optional. Represents the monetary price of the service item. We recommend that currency_code and ... |
| `structuredServiceItem` | `StructuredServiceItem` | Optional. This field will be set case of structured services data. |

### `ServiceType`

A message describing a service type that the business offers.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The human-readable display name for the service type. |
| `serviceTypeId` | `string` | Output only. A stable ID (provided by Google) for this service type. |

### `SpecialHourPeriod`

Represents a single time period when a location's operational hours differ from its normal business hours. A special hour period must represent a range of less than 24 hours. The `open_time` and `start_date` must predate the `close_time` and `end_date`. The `close_time` and `end_date` can extend to 11:59 a.m. on the day after the specified `start_date`. For example, the following inputs are valid: start_date=2015-11-23, open_time=08:00, close_time=18:00 start_date=2015-11-23, end_date=2015-11-23, open_time=08:00, close_time=18:00 start_date=2015-11-23, end_date=2015-11-24, open_time=13:00, close_time=11:59 The following inputs are not valid: start_date=2015-11-23, open_time=13:00, close_time=11:59 start_date=2015-11-23, end_date=2015-11-24, open_time=13:00, close_time=12:00 start_date=2015-11-23, end_date=2015-11-25, open_time=08:00, close_time=18:00

| Property | Type | Description |
|----------|------|-------------|
| `closeTime` | `TimeOfDay` | Optional. Valid values are 00:00-24:00, where 24:00 represents midnight at the end of the specifi... |
| `closed` | `boolean` | Optional. If true, `end_date`, `open_time`, and `close_time` are ignored, and the date specified ... |
| `endDate` | `Date` | Optional. The calendar date this special hour period ends on. If `end_date` field is not set, def... |
| `openTime` | `TimeOfDay` | Optional. Valid values are 00:00-24:00 where 24:00 represents midnight at the end of the specifie... |
| `startDate` | `Date` | Required. The calendar date this special hour period starts on. |

### `SpecialHours`

Represents a set of time periods when a location's operational hours differ from its normal business hours.

| Property | Type | Description |
|----------|------|-------------|
| `specialHourPeriods` | `array<SpecialHourPeriod>` | Required. A list of exceptions to the business's regular hours. |

### `StructuredServiceItem`

Represents a structured service offered by the merchant. For eg: toilet_installation.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of structured service item. The character limit is 300. |
| `serviceTypeId` | `string` | Required. The `service_type_id` field is a Google provided unique ID that can be found in `Servic... |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `TimePeriod`

Represents a span of time that the business is open, starting on the specified open day/time and closing on the specified close day/time. The closing time must occur after the opening time, for example later in the same day, or on a subsequent day.

| Property | Type | Description |
|----------|------|-------------|
| `closeDay` | `string` | Required. Indicates the day of the week this period ends on. |
| `closeTime` | `TimeOfDay` | Required. Valid values are 00:00-24:00, where 24:00 represents midnight at the end of the specifi... |
| `openDay` | `string` | Required. Indicates the day of the week this period starts on. |
| `openTime` | `TimeOfDay` | Required. Valid values are 00:00-24:00, where 24:00 represents midnight at the end of the specifi... |

### `UriAttributeValue`

Values for an attribute with a `value_type` of URL.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Required. The proposed URI value for this attribute. |

