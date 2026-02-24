# Firebase Hosting API - API Reference

**Version**: `v1` | **Methods**: 5 | **Schemas**: 12

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `firebasehosting.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `firebasehosting.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `firebasehosting.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `firebasehosting.projects.sites.customDomains.operations.delete` | DELETE | `v1/{+name}` | DeleteOperation is a part of the google.longrunning.Operations interface, but is not implemented ... |
| `firebasehosting.projects.sites.customDomains.operations.cancel` | POST | `v1/{+name}:cancel` | CancelOperation is a part of the google.longrunning.Operations interface, but is not implemented ... |

### `firebasehosting.operations.list`

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
const res = await firebasehosting.operations.list({
  // parameters
});
```

---

### `firebasehosting.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await firebasehosting.operations.delete({
  // parameters
});
```

---

### `firebasehosting.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await firebasehosting.operations.cancel({
  // parameters
});
```

---

### `firebasehosting.projects.sites.customDomains.operations.delete`

**DELETE** `v1/{+name}`

DeleteOperation is a part of the google.longrunning.Operations interface, but is not implemented for CustomDomain resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await firebasehosting.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebasehosting.projects.sites.customDomains.operations.cancel`

**POST** `v1/{+name}:cancel`

CancelOperation is a part of the google.longrunning.Operations interface, but is not implemented for CustomDomain resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await firebasehosting.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

## Schemas

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CertVerification`

A set of ACME challenges you can use to allow Hosting to create an SSL certificate for your domain name before directing traffic to Hosting servers. Use either the DNS or HTTP challenge; it's not necessary to provide both.

| Property | Type | Description |
|----------|------|-------------|
| `dns` | `DnsUpdates` | Output only. A `TXT` record to add to your DNS records that confirms your intent to let Hosting c... |
| `http` | `HttpUpdate` | Output only. A file to add to your existing, non-Hosting hosting service that confirms your inten... |

### `CustomDomainMetadata`

Metadata associated with a`CustomDomain` operation.

| Property | Type | Description |
|----------|------|-------------|
| `certState` | `string` | The `CertState` of the domain name's SSL certificate. |
| `hostState` | `string` | The `HostState` of the domain name this `CustomDomain` refers to. |
| `issues` | `array<Status>` | A list of issues that are currently preventing Hosting from completing the operation. These are g... |
| `liveMigrationSteps` | `array<LiveMigrationStep>` | A set of DNS record updates and ACME challenges that allow you to transition domain names to Fire... |
| `ownershipState` | `string` | The `OwnershipState` of the domain name this `CustomDomain` refers to. |
| `quickSetupUpdates` | `DnsUpdates` | A set of DNS record updates that allow Hosting to serve secure content on your domain name. The r... |

### `DnsRecord`

DNS records are resource records that define how systems and services should behave when handling requests for a domain name. For example, when you add `A` records to your domain name's DNS records, you're informing other systems (such as your users' web browsers) to contact those IPv4 addresses to retrieve resources relevant to your domain name (such as your Hosting site files).

| Property | Type | Description |
|----------|------|-------------|
| `domainName` | `string` | Output only. The domain name the record pertains to, e.g. `foo.bar.com.`. |
| `rdata` | `string` | Output only. The data of the record. The meaning of the value depends on record type: - A and AAA... |
| `requiredAction` | `string` | Output only. An enum that indicates the a required action for this record. |
| `type` | `string` | Output only. The record's type, which determines what data the record contains. |

### `DnsRecordSet`

A set of DNS records relevant to the setup and maintenance of a custom domain in Firebase Hosting.

| Property | Type | Description |
|----------|------|-------------|
| `checkError` | `Status` | Output only. An error Hosting services encountered when querying your domain name's DNS records. ... |
| `domainName` | `string` | Output only. The domain name the record set pertains to. |
| `records` | `array<DnsRecord>` | Output only. Records on the domain. |

### `DnsUpdates`

A set of DNS record updates that you should make to allow Hosting to serve secure content in response to requests against your domain name. These updates present the current state of your domain name's DNS records when Hosting last queried them, and the desired set of records that Hosting needs to see before your custom domain can be fully active.

| Property | Type | Description |
|----------|------|-------------|
| `checkTime` | `string` | The last time Hosting checked your custom domain's DNS records. |
| `desired` | `array<DnsRecordSet>` | The set of DNS records Hosting needs to serve secure content on the domain. |
| `discovered` | `array<DnsRecordSet>` | The set of DNS records Hosting discovered when inspecting a domain. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `HttpUpdate`

A file you can add to your existing, non-Hosting hosting service that confirms your intent to allow Hosting's Certificate Authorities to create an SSL certificate for your domain.

| Property | Type | Description |
|----------|------|-------------|
| `checkError` | `Status` | Output only. An error encountered during the last contents check. If null, the check completed su... |
| `desired` | `string` | Output only. A text string to serve at the path. |
| `discovered` | `string` | Output only. Whether Hosting was able to find the required file contents on the specified path du... |
| `lastCheckTime` | `string` | Output only. The last time Hosting systems checked for the file contents. |
| `path` | `string` | Output only. The path to the file. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `LiveMigrationStep`

A set of updates including ACME challenges and DNS records that allow Hosting to create an SSL certificate and establish project ownership for your domain name before you direct traffic to Hosting servers. Use these updates to facilitate zero downtime migrations to Hosting from other services. After you've made the recommended updates, check your custom domain's `ownershipState` and `certState`. To avoid downtime, they should be `OWNERSHIP_ACTIVE` and `CERT_ACTIVE`, respectively, before you update your `A` and `AAAA` records.

| Property | Type | Description |
|----------|------|-------------|
| `certVerification` | `CertVerification` | Output only. A pair of ACME challenges that Hosting's Certificate Authority (CA) can use to creat... |
| `dnsUpdates` | `DnsUpdates` | Output only. DNS updates to facilitate your domain's zero-downtime migration to Hosting. |
| `issues` | `array<Status>` | Output only. Issues that prevent the current step from completing. |
| `state` | `string` | Output only. The state of the live migration step, indicates whether you should work to complete ... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

