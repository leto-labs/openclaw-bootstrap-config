# Digital Asset Links API - API Reference

**Version**: `v1` | **Methods**: 3 | **Schemas**: 10

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `digitalassetlinks.assetlinks.check` | GET | `v1/assetlinks:check` | Determines whether the specified (directional) relationship exists between the specified source a... |
| `digitalassetlinks.assetlinks.bulkCheck` | POST | `v1/assetlinks:bulkCheck` | Send a bundle of statement checks in a single RPC to minimize latency and service load. Statement... |
| `digitalassetlinks.statements.list` | GET | `v1/statements:list` | Retrieves a list of all statements from a given source that match the specified target and statem... |

### `digitalassetlinks.assetlinks.check`

**GET** `v1/assetlinks:check`

Determines whether the specified (directional) relationship exists between the specified source and target assets. The relation describes the intent of the link between the two assets as claimed by the source asset. An example for such relationships is the delegation of privileges or permissions. This command is most often used by infrastructure systems to check preconditions for an action. For example, a client may want to know if it is OK to send a web URL to a particular mobile app instead. The client can check for the relevant asset link from the website to the mobile app to decide if the operation should be allowed. A note about security: if you specify a secure asset as the source, such as an HTTPS website or an Android app, the API will ensure that any statements used to generate the response have been made in a secure way by the owner of that asset. Conversely, if the source asset is an insecure HTTP website (that is, the URL starts with `http://` instead of `https://`), the API cannot verify its statements securely, and it is not possible to ensure that the website's statements have not been altered by a third party. For more information, see the [Digital Asset Links technical design specification](https://github.com/google/digitalassetlinks/blob/master/well-known/details.md).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `relation` | `string` | query | No | Query string for the relation. We identify relations with strings of the format `/`, where `` must be one of a set of... |
| `returnRelationExtensions` | `boolean` | query | No | Whether to return relation_extensions payloads specified in the source Digital Asset Links statements linking the req... |
| `source.androidApp.certificate.sha256Fingerprint` | `string` | query | No | The uppercase SHA-265 fingerprint of the certificate. From the PEM certificate, it can be acquired like this: $ keyto... |
| `source.androidApp.packageName` | `string` | query | No | Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the pac... |
| `source.web.site` | `string` | query | No | Web assets are identified by a URL that contains only the scheme, hostname and port parts. The format is http[s]://[:... |
| `target.androidApp.certificate.sha256Fingerprint` | `string` | query | No | The uppercase SHA-265 fingerprint of the certificate. From the PEM certificate, it can be acquired like this: $ keyto... |
| `target.androidApp.packageName` | `string` | query | No | Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the pac... |
| `target.web.site` | `string` | query | No | Web assets are identified by a URL that contains only the scheme, hostname and port parts. The format is http[s]://[:... |

**Response**: `CheckResponse`

```typescript
const res = await digitalassetlinks.assetlinks.check({
  // parameters
});
```

---

### `digitalassetlinks.assetlinks.bulkCheck`

**POST** `v1/assetlinks:bulkCheck`

Send a bundle of statement checks in a single RPC to minimize latency and service load. Statements need not be all for the same source and/or target. We recommend using this method when you need to check more than one statement in a short period of time.

**Request body**: `BulkCheckRequest`

**Response**: `BulkCheckResponse`

```typescript
const res = await digitalassetlinks.assetlinks.bulkCheck({
  // parameters
});
```

---

### `digitalassetlinks.statements.list`

**GET** `v1/statements:list`

Retrieves a list of all statements from a given source that match the specified target and statement string. The API guarantees that all statements with secure source assets, such as HTTPS websites or Android apps, have been made in a secure way by the owner of those assets, as described in the [Digital Asset Links technical design specification](https://github.com/google/digitalassetlinks/blob/master/well-known/details.md). Specifically, you should consider that for insecure websites (that is, where the URL starts with `http://` instead of `https://`), this guarantee cannot be made. The `List` command is most useful in cases where the API client wants to know all the ways in which two assets are related, or enumerate all the relationships from a particular source asset. Example: a feature that helps users navigate to related items. When a mobile app is running on a device, the feature would make it easy to navigate to the corresponding web site or Google+ profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `relation` | `string` | query | No | Use only associations that match the specified relation. See the [`Statement`](#Statement) message for a detailed def... |
| `returnRelationExtensions` | `boolean` | query | No | Whether to return any relation_extensions payloads specified in the source digital asset links statements. If this is... |
| `source.androidApp.certificate.sha256Fingerprint` | `string` | query | No | The uppercase SHA-265 fingerprint of the certificate. From the PEM certificate, it can be acquired like this: $ keyto... |
| `source.androidApp.packageName` | `string` | query | No | Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the pac... |
| `source.web.site` | `string` | query | No | Web assets are identified by a URL that contains only the scheme, hostname and port parts. The format is http[s]://[:... |

**Response**: `ListResponse`

```typescript
const res = await digitalassetlinks.statements.list({
  // parameters
});
```

---

## Schemas

### `AndroidAppAsset`

Describes an android app asset.

| Property | Type | Description |
|----------|------|-------------|
| `certificate` | `CertificateInfo` | Because there is no global enforcement of package name uniqueness, we also require a signing cert... |
| `packageName` | `string` | Android App assets are naturally identified by their Java package name. For example, the Google M... |

### `Asset`

Uniquely identifies an asset. A digital asset is an identifiable and addressable online entity that typically provides some service or content. Examples of assets are websites, Android apps, Twitter feeds, and Plus Pages.

| Property | Type | Description |
|----------|------|-------------|
| `androidApp` | `AndroidAppAsset` | Set if this is an Android App asset. |
| `web` | `WebAsset` | Set if this is a web asset. |

### `BulkCheckRequest`

Message used to check for the existence of multiple digital asset links within a single RPC.

| Property | Type | Description |
|----------|------|-------------|
| `defaultRelation` | `string` | If specified, will be used in any given template statement that doesn’t specify a relation. |
| `defaultSource` | `Asset` | If specified, will be used in any given template statement that doesn’t specify a source. |
| `defaultTarget` | `Asset` | If specified, will be used in any given template statement that doesn’t specify a target. |
| `returnRelationExtensions` | `boolean` | Same configuration as in CheckRequest; all statement checks will use the same configuration. |
| `statements` | `array<StatementTemplate>` | List of statements to check. For each statement, you can omit a field if the corresponding defaul... |

### `BulkCheckResponse`

Response for BulkCheck call. Results are sent in a list in the same order in which they were sent. Individual check errors are described in the appropriate check_results entry. If the entire call fails, the response will include a bulk_error_code field describing the error.

| Property | Type | Description |
|----------|------|-------------|
| `bulkErrorCode` | `string` | Error code for the entire request. Present only if the entire request failed. Individual check er... |
| `checkResults` | `array<CheckResponse>` | List of results for each check request. Results are returned in the same order in which they were... |

### `CertificateInfo`

Describes an X509 certificate.

| Property | Type | Description |
|----------|------|-------------|
| `sha256Fingerprint` | `string` | The uppercase SHA-265 fingerprint of the certificate. From the PEM certificate, it can be acquire... |

### `CheckResponse`

Response message for the CheckAssetLinks call.

| Property | Type | Description |
|----------|------|-------------|
| `debugString` | `string` | Human-readable message containing information intended to help end users understand, reproduce an... |
| `errorCode` | `array<string>` | Error codes that describe the result of the Check operation. NOTE: Error codes may be populated e... |
| `linked` | `boolean` | Set to true if the assets specified in the request are linked by the relation specified in the re... |
| `maxAge` | `string` | From serving time, how much longer the response should be considered valid barring further update... |
| `relationExtensions` | `array<object>` | Statements may specify relation level extensions/payloads to express more details when declaring ... |

### `ListResponse`

Response message for the List call.

| Property | Type | Description |
|----------|------|-------------|
| `debugString` | `string` | Human-readable message containing information intended to help end users understand, reproduce an... |
| `errorCode` | `array<string>` | Error codes that describe the result of the List operation. |
| `maxAge` | `string` | From serving time, how much longer the response should be considered valid barring further update... |
| `statements` | `array<Statement>` | A list of all the matching statements that have been found. |

### `Statement`

Describes a reliable statement that has been made about the relationship between a source asset and a target asset. Statements are always made by the source asset, either directly or by delegating to a statement list that is stored elsewhere. For more detailed definitions of statements and assets, please refer to our [API documentation landing page](/digital-asset-links/v1/getting-started).

| Property | Type | Description |
|----------|------|-------------|
| `relation` | `string` | The relation identifies the use of the statement as intended by the source asset's owner (that is... |
| `relationExtensions` | `object` | Statements may specify relation level extensions/payloads to express more details when declaring ... |
| `source` | `Asset` | Every statement has a source asset. REQUIRED |
| `target` | `Asset` | Every statement has a target asset. REQUIRED |

### `StatementTemplate`

A single statement to check in a bulk call using BulkCheck. See CheckRequest for details about each field.

| Property | Type | Description |
|----------|------|-------------|
| `relation` | `string` | The relationship being asserted between the source and target. If omitted, you must specify a Bul... |
| `source` | `Asset` | The source asset that is asserting the statement. If omitted, you must specify a BulkCheckRequest... |
| `target` | `Asset` | The target that the source is declaring the relationship with. If omitted, you must specify a Bul... |

### `WebAsset`

Describes a web asset.

| Property | Type | Description |
|----------|------|-------------|
| `site` | `string` | Web assets are identified by a URL that contains only the scheme, hostname and port parts. The fo... |

