# Address Validation API - API Reference

**Version**: `v1` | **Methods**: 2 | **Schemas**: 18

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `addressvalidation.validateAddress` | POST | `v1:validateAddress` | Validates an address. |
| `addressvalidation.provideValidationFeedback` | POST | `v1:provideValidationFeedback` | Feedback about the outcome of the sequence of validation attempts. This should be the last call m... |

### `addressvalidation.validateAddress`

**POST** `v1:validateAddress`

Validates an address.

**Request body**: `GoogleMapsAddressvalidationV1ValidateAddressRequest`

**Response**: `GoogleMapsAddressvalidationV1ValidateAddressResponse`

```typescript
const res = await addressvalidation.validateAddress({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/maps-platform.addressvalidation`

---

### `addressvalidation.provideValidationFeedback`

**POST** `v1:provideValidationFeedback`

Feedback about the outcome of the sequence of validation attempts. This should be the last call made after a sequence of validation calls for the same address, and should be called once the transaction is concluded. This should only be sent once for the sequence of `ValidateAddress` requests needed to validate an address fully.

**Request body**: `GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest`

**Response**: `GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse`

```typescript
const res = await addressvalidation.provideValidationFeedback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/maps-platform.addressvalidation`

---

## Schemas

### `GoogleGeoTypeViewport`

A latitude-longitude viewport, represented as two diagonally opposite `low` and `high` points. A viewport is considered a closed region, i.e. it includes its boundary. The latitude bounds must range between -90 to 90 degrees inclusive, and the longitude bounds must range between -180 to 180 degrees inclusive. Various cases include: - If `low` = `high`, the viewport consists of that single point. - If `low.longitude` > `high.longitude`, the longitude range is inverted (the viewport crosses the 180 degree longitude line). - If `low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the viewport includes all longitudes. - If `low.longitude` = 180 degrees and `high.longitude` = -180 degrees, the longitude range is empty. - If `low.latitude` > `high.latitude`, the latitude range is empty. Both `low` and `high` must be populated, and the represented box cannot be empty (as specified by the definitions above). An empty viewport will result in an error. For example, this viewport fully encloses New York City: { "low": { "latitude": 40.477398, "longitude": -74.259087 }, "high": { "latitude": 40.91618, "longitude": -73.70018 } }

| Property | Type | Description |
|----------|------|-------------|
| `high` | `GoogleTypeLatLng` | Required. The high point of the viewport. |
| `low` | `GoogleTypeLatLng` | Required. The low point of the viewport. |

### `GoogleMapsAddressvalidationV1Address`

Details of the post-processed address. Post-processing includes correcting misspelled parts of the address, replacing incorrect parts, and inferring missing parts.

| Property | Type | Description |
|----------|------|-------------|
| `addressComponents` | `array<GoogleMapsAddressvalidationV1AddressComponent>` | Unordered list. The individual address components of the formatted and corrected address, along w... |
| `formattedAddress` | `string` | The post-processed address, formatted as a single-line address following the address formatting r... |
| `missingComponentTypes` | `array<string>` | The types of components that were expected to be present in a correctly formatted mailing address... |
| `postalAddress` | `GoogleTypePostalAddress` | The post-processed address represented as a postal address. |
| `unconfirmedComponentTypes` | `array<string>` | The types of the components that are present in the `address_components` but could not be confirm... |
| `unresolvedTokens` | `array<string>` | Any tokens in the input that could not be resolved. This might be an input that was not recognize... |

### `GoogleMapsAddressvalidationV1AddressComponent`

Represents an address component, such as a street, city, or state.

| Property | Type | Description |
|----------|------|-------------|
| `componentName` | `GoogleMapsAddressvalidationV1ComponentName` | The name for this component. |
| `componentType` | `string` | The type of the address component. See [Table 2: Additional types returned by the Places service]... |
| `confirmationLevel` | `string` | Indicates the level of certainty that we have that the component is correct. |
| `inferred` | `boolean` | Indicates that the component was not part of the input, but we inferred it for the address locati... |
| `replaced` | `boolean` | Indicates the name of the component was replaced with a completely different one, for example a w... |
| `spellCorrected` | `boolean` | Indicates a correction to a misspelling in the component name. The API does not always flag chang... |
| `unexpected` | `boolean` | Indicates an address component that is not expected to be present in a postal address for the giv... |

### `GoogleMapsAddressvalidationV1AddressMetadata`

The metadata for the post-processed address. `metadata` is not guaranteed to be fully populated for every address sent to the Address Validation API.

| Property | Type | Description |
|----------|------|-------------|
| `business` | `boolean` | Indicates that this is the address of a business. If unset, indicates that the value is unknown. |
| `poBox` | `boolean` | Indicates that the address of a PO box. If unset, indicates that the value is unknown. |
| `residential` | `boolean` | Indicates that this is the address of a residence. If unset, indicates that the value is unknown. |

### `GoogleMapsAddressvalidationV1ComponentName`

A wrapper for the name of the component.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The BCP-47 language code. This will not be present if the component name is not associated with a... |
| `text` | `string` | The name text. For example, "5th Avenue" for a street name or "1253" for a street number. |

### `GoogleMapsAddressvalidationV1Geocode`

Contains information about the place the input was geocoded to.

| Property | Type | Description |
|----------|------|-------------|
| `bounds` | `GoogleGeoTypeViewport` | The bounds of the geocoded place. |
| `featureSizeMeters` | `number` | The size of the geocoded place, in meters. This is another measure of the coarseness of the geoco... |
| `location` | `GoogleTypeLatLng` | The geocoded location of the input. Using place IDs is preferred over using addresses, latitude/l... |
| `placeId` | `string` | The PlaceID of the place this input geocodes to. For more information about Place IDs see [here](... |
| `placeTypes` | `array<string>` | The type(s) of place that the input geocoded to. For example, `['locality', 'political']`. The fu... |
| `plusCode` | `GoogleMapsAddressvalidationV1PlusCode` | The plus code corresponding to the `location`. |

### `GoogleMapsAddressvalidationV1LanguageOptions`

Preview: This feature is in Preview (pre-GA). Pre-GA products and features might have limited support, and changes to pre-GA products and features might not be compatible with other pre-GA versions. Pre-GA Offerings are covered by the [Google Maps Platform Service Specific Terms](https://cloud.google.com/maps-platform/terms/maps-service-terms). For more information, see the [launch stage descriptions](https://developers.google.com/maps/launch-stages). Enables the Address Validation API to include additional information in the response.

| Property | Type | Description |
|----------|------|-------------|
| `returnEnglishLatinAddress` | `boolean` | Preview: Return a [google.maps.addressvalidation.v1.Address] in English. See [google.maps.address... |

### `GoogleMapsAddressvalidationV1PlusCode`

Plus code (http://plus.codes) is a location reference with two formats: global code defining a 14mx14m (1/8000th of a degree) or smaller rectangle, and compound code, replacing the prefix with a reference location.

| Property | Type | Description |
|----------|------|-------------|
| `compoundCode` | `string` | Place's compound code, such as "33GV+HQ, Ramberg, Norway", containing the suffix of the global co... |
| `globalCode` | `string` | Place's global (full) code, such as "9FWM33GV+HQ", representing an 1/8000 by 1/8000 degree area (... |

### `GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest`

The request for sending validation feedback.

| Property | Type | Description |
|----------|------|-------------|
| `conclusion` | `string` | Required. The outcome of the sequence of validation attempts. If this field is set to `VALIDATION... |
| `responseId` | `string` | Required. The ID of the response that this feedback is for. This should be the response_id from t... |

### `GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse`

The response for validation feedback. The response is empty if the feedback is sent successfully.

### `GoogleMapsAddressvalidationV1UspsAddress`

USPS representation of a US address.

| Property | Type | Description |
|----------|------|-------------|
| `city` | `string` | City name. |
| `cityStateZipAddressLine` | `string` | City + state + postal code. |
| `firm` | `string` | Firm name. |
| `firstAddressLine` | `string` | First address line. |
| `secondAddressLine` | `string` | Second address line. |
| `state` | `string` | 2 letter state code. |
| `urbanization` | `string` | Puerto Rican urbanization name. |
| `zipCode` | `string` | Postal code e.g. 10009. |
| `zipCodeExtension` | `string` | 4-digit postal code extension e.g. 5023. |

### `GoogleMapsAddressvalidationV1UspsData`

The USPS data for the address. `uspsData` is not guaranteed to be fully populated for every US or PR address sent to the Address Validation API. It's recommended to integrate the backup address fields in the response if you utilize uspsData as the primary part of the response.

| Property | Type | Description |
|----------|------|-------------|
| `abbreviatedCity` | `string` | Abbreviated city. |
| `addressRecordType` | `string` | Type of the address record that matches the input address. * `F`: FIRM. This is a match to a Firm... |
| `carrierRoute` | `string` | The carrier route code. A four character code consisting of a one letter prefix and a three digit... |
| `carrierRouteIndicator` | `string` | Carrier route rate sort indicator. |
| `cassProcessed` | `boolean` | Indicator that the request has been CASS processed. |
| `county` | `string` | County name. |
| `defaultAddress` | `boolean` | Indicator that a default address was found, but more specific addresses exists. |
| `deliveryPointCheckDigit` | `string` | The delivery point check digit. This number is added to the end of the delivery_point_barcode for... |
| `deliveryPointCode` | `string` | 2 digit delivery point code |
| `dpvCmra` | `string` | Indicates if the address is a CMRA (Commercial Mail Receiving Agency)--a private business receivi... |
| `dpvConfirmation` | `string` | The possible values for DPV confirmation. Returns a single character or returns no value. * `N`: ... |
| `dpvDoorNotAccessible` | `string` | Flag indicates addresses where USPS cannot knock on a door to deliver mail. Returns a single char... |
| `dpvDrop` | `string` | Flag indicates mail is delivered to a single receptable at a site. Returns a single character. * ... |
| `dpvEnhancedDeliveryCode` | `string` | Indicates that more than one DPV return code is valid for the address. Returns a single character... |
| `dpvFootnote` | `string` | The footnotes from delivery point validation. Multiple footnotes may be strung together in the sa... |
| `dpvNoSecureLocation` | `string` | Flag indicates door is accessible, but package will not be left due to security concerns. Returns... |
| `dpvNoStat` | `string` | Is this a no stat address or an active address? No stat addresses are ones which are not continuo... |
| `dpvNoStatReasonCode` | `integer` | Indicates the NoStat type. Returns a reason code as int. * `1`: IDA (Internal Drop Address) – Add... |
| `dpvNonDeliveryDays` | `string` | Flag indicates mail delivery is not performed every day of the week. Returns a single character. ... |
| `dpvNonDeliveryDaysValues` | `integer` | Integer identifying non-delivery days. It can be interrogated using bit flags: 0x40 – Sunday is a... |
| `dpvPbsa` | `string` | Indicates the address was matched to PBSA record. Returns a single character. * `Y`: The address ... |
| `dpvThrowback` | `string` | Indicates that mail is not delivered to the street address. Returns a single character. * `Y`: Th... |
| `dpvVacant` | `string` | Is this place vacant? Returns a single character. * `Y`: The address is vacant * `N`: The address... |
| `elotFlag` | `string` | eLOT Ascending/Descending Flag (A/D). |
| `elotNumber` | `string` | Enhanced Line of Travel (eLOT) number. |
| `errorMessage` | `string` | Error message for USPS data retrieval. This is populated when USPS processing is suspended becaus... |
| `ewsNoMatch` | `boolean` | The delivery address is matchable, but the EWS file indicates that an exact match will be availab... |
| `fipsCountyCode` | `string` | FIPS county code. |
| `lacsLinkIndicator` | `string` | LACSLink indicator. |
| `lacsLinkReturnCode` | `string` | LACSLink return code. |
| `pmbDesignator` | `string` | PMB (Private Mail Box) unit designator. |
| `pmbNumber` | `string` | PMB (Private Mail Box) number; |
| `poBoxOnlyPostalCode` | `boolean` | PO Box only postal code. |
| `postOfficeCity` | `string` | Main post office city. |
| `postOfficeState` | `string` | Main post office state. |
| `standardizedAddress` | `GoogleMapsAddressvalidationV1UspsAddress` | USPS standardized address. |
| `suitelinkFootnote` | `string` | Footnotes from matching a street or highrise record to suite information. If business name match ... |

### `GoogleMapsAddressvalidationV1ValidateAddressRequest`

The request for validating an address.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `GoogleTypePostalAddress` | Required. The address being validated. Unformatted addresses should be submitted via `address_lin... |
| `enableUspsCass` | `boolean` | Enables USPS CASS compatible mode. This affects _only_ the [google.maps.addressvalidation.v1.Vali... |
| `languageOptions` | `GoogleMapsAddressvalidationV1LanguageOptions` | Optional. Preview: This feature is in Preview (pre-GA). Pre-GA products and features might have l... |
| `previousResponseId` | `string` | This field must be empty for the first address validation request. If more requests are necessary... |
| `sessionToken` | `string` | Optional. A string which identifies an Autocomplete session for billing purposes. Must be a URL a... |

### `GoogleMapsAddressvalidationV1ValidateAddressResponse`

The response to an address validation request.

| Property | Type | Description |
|----------|------|-------------|
| `responseId` | `string` | The UUID that identifies this response. If the address needs to be re-validated, this UUID *must*... |
| `result` | `GoogleMapsAddressvalidationV1ValidationResult` | The result of the address validation. |

### `GoogleMapsAddressvalidationV1ValidationResult`

The result of validating an address.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `GoogleMapsAddressvalidationV1Address` | Information about the address itself as opposed to the geocode. |
| `englishLatinAddress` | `GoogleMapsAddressvalidationV1Address` | Preview: This feature is in Preview (pre-GA). Pre-GA products and features might have limited sup... |
| `geocode` | `GoogleMapsAddressvalidationV1Geocode` | Information about the location and place that the address geocoded to. |
| `metadata` | `GoogleMapsAddressvalidationV1AddressMetadata` | Other information relevant to deliverability. `metadata` is not guaranteed to be fully populated ... |
| `uspsData` | `GoogleMapsAddressvalidationV1UspsData` | Extra deliverability flags provided by USPS. Only provided in region `US` and `PR`. |
| `verdict` | `GoogleMapsAddressvalidationV1Verdict` | Overall verdict flags |

### `GoogleMapsAddressvalidationV1Verdict`

High level overview of the address validation result and geocode.

| Property | Type | Description |
|----------|------|-------------|
| `addressComplete` | `boolean` | The post-processed address is considered complete if there are no unresolved tokens, no unexpecte... |
| `geocodeGranularity` | `string` | Information about the granularity of the `geocode`. This can be understood as the semantic meanin... |
| `hasInferredComponents` | `boolean` | At least one address component was inferred (added) that wasn't in the input, see [google.maps.ad... |
| `hasReplacedComponents` | `boolean` | At least one address component was replaced, see [google.maps.addressvalidation.v1.Address.addres... |
| `hasSpellCorrectedComponents` | `boolean` | At least one address component was spell-corrected, see [google.maps.addressvalidation.v1.Address... |
| `hasUnconfirmedComponents` | `boolean` | At least one address component cannot be categorized or validated, see [google.maps.addressvalida... |
| `inputGranularity` | `string` | The granularity of the **input** address. This is the result of parsing the input address and doe... |
| `possibleNextAction` | `string` | Preview: This feature is in Preview (pre-GA). Pre-GA products and features might have limited sup... |
| `validationGranularity` | `string` | The level of granularity for the post-processed address that the API can fully validate. For exam... |

### `GoogleTypeLatLng`

An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `longitude` | `number` | The longitude in degrees. It must be in the range [-180.0, +180.0]. |

### `GoogleTypePostalAddress`

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

