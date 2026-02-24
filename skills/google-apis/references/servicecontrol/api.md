# Service Control API - API Reference

**Version**: `v2` | **Methods**: 2 | **Schemas**: 34

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `servicecontrol.services.check` | POST | `v2/services/{serviceName}:check` | This method provides admission control for services that are integrated with [Service Infrastruct... |
| `servicecontrol.services.report` | POST | `v2/services/{serviceName}:report` | This method provides telemetry reporting for services that are integrated with [Service Infrastru... |

### `servicecontrol.services.check`

**POST** `v2/services/{serviceName}:check`

This method provides admission control for services that are integrated with [Service Infrastructure](https://cloud.google.com/service-infrastructure). It checks whether an operation should be allowed based on the service configuration and relevant policies. It must be called before the operation is executed. For more information, see [Admission Control](https://cloud.google.com/service-infrastructure/docs/admission-control). NOTE: The admission control has an expected policy propagation delay of 60s. The caller **must** not depend on the most recent policy changes. NOTE: The admission control has a hard limit of 1 referenced resources per call. If an operation refers to more than 1 resources, the caller must call the Check method multiple times. This method requires the `servicemanagement.services.check` permission on the specified service. For more information, see [Service Control API Access Control](https://cloud.google.com/service-infrastructure/docs/service-control/access-control).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `serviceName` | `string` | path | Yes | The service name as specified in its service configuration. For example, `"pubsub.googleapis.com"`. See [google.api.S... |

**Request body**: `CheckRequest`

**Response**: `CheckResponse`

```typescript
const res = await servicecontrol.services.check({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/servicecontrol`

---

### `servicecontrol.services.report`

**POST** `v2/services/{serviceName}:report`

This method provides telemetry reporting for services that are integrated with [Service Infrastructure](https://cloud.google.com/service-infrastructure). It reports a list of operations that have occurred on a service. It must be called after the operations have been executed. For more information, see [Telemetry Reporting](https://cloud.google.com/service-infrastructure/docs/telemetry-reporting). NOTE: The telemetry reporting has a hard limit of 100 operations and 1MB per Report call. This method requires the `servicemanagement.services.report` permission on the specified service. For more information, see [Service Control API Access Control](https://cloud.google.com/service-infrastructure/docs/service-control/access-control).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `serviceName` | `string` | path | Yes | The service name as specified in its service configuration. For example, `"pubsub.googleapis.com"`. See [google.api.S... |

**Request body**: `ReportRequest`

**Response**: `ReportResponse`

```typescript
const res = await servicecontrol.services.report({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/servicecontrol`

---

## Schemas

### `Api`

This message defines attributes associated with API operations, such as a network API request. The terminology is based on the conventions used by Google APIs, Istio, and OpenAPI.

| Property | Type | Description |
|----------|------|-------------|
| `operation` | `string` | The API operation name. For gRPC requests, it is the fully qualified API method name, such as "go... |
| `protocol` | `string` | The API protocol used for sending the request, such as "http", "https", "grpc", or "internal". |
| `service` | `string` | The API service name. It is a logical identifier for a networked API, such as "pubsub.googleapis.... |
| `version` | `string` | The API version associated with the API operation above, such as "v1" or "v1alpha1". |

### `AttributeContext`

This message defines the standard attribute vocabulary for Google APIs. An attribute is a piece of metadata that describes an activity on a network service. For example, the size of an HTTP request, or the status code of an HTTP response. Each attribute has a type and a name, which is logically defined as a proto message field in `AttributeContext`. The field type becomes the attribute type, and the field path becomes the attribute name. For example, the attribute `source.ip` maps to field `AttributeContext.source.ip`. This message definition is guaranteed not to have any wire breaking change. So you can use it directly for passing attributes across different systems. NOTE: Different system may generate different subset of attributes. Please verify the system specification before relying on an attribute generated a system.

| Property | Type | Description |
|----------|------|-------------|
| `api` | `Api` | Represents an API operation that is involved to a network activity. |
| `destination` | `Peer` | The destination of a network activity, such as accepting a TCP connection. In a multi hop network... |
| `extensions` | `array<object>` | Supports extensions for advanced use cases, such as logs and metrics. |
| `origin` | `Peer` | The origin of a network activity. In a multi hop network activity, the origin represents the send... |
| `request` | `Request` | Represents a network request, such as an HTTP request. |
| `resource` | `Resource` | Represents a target resource that is involved with a network activity. If multiple resources are ... |
| `response` | `Response` | Represents a network response, such as an HTTP response. |
| `source` | `Peer` | The source of a network activity, such as starting a TCP connection. In a multi hop network activ... |

### `AuditLog`

Common audit log format for Google Cloud Platform API operations.

| Property | Type | Description |
|----------|------|-------------|
| `authenticationInfo` | `AuthenticationInfo` | Authentication information. |
| `authorizationInfo` | `array<AuthorizationInfo>` | Authorization information. If there are multiple resources or permissions involved, then there is... |
| `metadata` | `object` | Other service-specific data about the request, response, and other information associated with th... |
| `methodName` | `string` | The name of the service method or operation. For API calls, this should be the name of the API me... |
| `numResponseItems` | `string` | The number of items returned from a List or Query API method, if applicable. |
| `policyViolationInfo` | `PolicyViolationInfo` | Indicates the policy violations for this request. If the request is denied by the policy, violati... |
| `request` | `object` | The operation request. This may not include all request parameters, such as those that are too la... |
| `requestMetadata` | `RequestMetadata` | Metadata about the operation. |
| `resourceLocation` | `ResourceLocation` | The resource location information. |
| `resourceName` | `string` | The resource or collection that is the target of the operation. The name is a scheme-less URI, no... |
| `resourceOriginalState` | `object` | The resource's original state before mutation. Present only for operations which have successfull... |
| `response` | `object` | The operation response. This may not include all response elements, such as those that are too la... |
| `serviceData` | `object` | Deprecated. Use the `metadata` field instead. Other service-specific data about the request, resp... |
| `serviceName` | `string` | The name of the API service performing the operation. For example, `"compute.googleapis.com"`. |
| `status` | `Status` | The status of the overall operation. |

### `Auth`

This message defines request authentication attributes. Terminology is based on the JSON Web Token (JWT) standard, but the terms also correlate to concepts in other standards.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevels` | `array<string>` | A list of access level resource names that allow resources to be accessed by authenticated reques... |
| `audiences` | `array<string>` | The intended audience(s) for this authentication information. Reflects the audience (`aud`) claim... |
| `claims` | `object` | Structured claims presented with the credential. JWTs include `{key: value}` pairs for standard a... |
| `oauth` | `Oauth` | Attributes of the OAuth token associated with the request. |
| `presenter` | `string` | The authorized presenter of the credential. Reflects the optional Authorized Presenter (`azp`) cl... |
| `principal` | `string` | The authenticated principal. Reflects the issuer (`iss`) and subject (`sub`) claims within a JWT.... |

### `AuthenticationInfo`

Authentication information for the operation.

| Property | Type | Description |
|----------|------|-------------|
| `authoritySelector` | `string` | The authority selector specified by the requestor, if any. It is not guaranteed that the principa... |
| `loggableShortLivedCredential` | `object` | Converted from "identity_cloudgaia.AuditLoggableShortLivedCredential" proto. This message will be... |
| `oauthInfo` | `OAuthInfo` | OAuth authentication information such as the OAuth client ID. |
| `principalEmail` | `string` | The email address of the authenticated user (or service account on behalf of third party principa... |
| `principalSubject` | `string` | String representation of identity of requesting party. Populated for both first and third party i... |
| `serviceAccountDelegationInfo` | `array<ServiceAccountDelegationInfo>` | Identity delegation history of an authenticated service account that makes the request. It contai... |
| `serviceAccountKeyName` | `string` | The name of the service account key used to create or exchange credentials for authenticating the... |
| `serviceDelegationHistory` | `ServiceDelegationHistory` | Records the history of delegated resource access across Google services. |
| `thirdPartyPrincipal` | `object` | The third party identification (if any) of the authenticated user making the request. When the JS... |

### `AuthorizationInfo`

Authorization information for the operation.

| Property | Type | Description |
|----------|------|-------------|
| `granted` | `boolean` | Whether or not authorization for `resource` and `permission` was granted. |
| `permission` | `string` | The required IAM permission. |
| `permissionType` | `string` | The type of the permission that was checked. For data access audit logs this corresponds with the... |
| `resource` | `string` | The resource being accessed, as a REST-style or cloud resource string. For example: bigquery.goog... |
| `resourceAttributes` | `Resource` | Resource attributes used in IAM condition evaluation. This field contains resource attributes lik... |

### `CheckRequest`

Request message for the Check method.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `AttributeContext` | Describes attributes about the operation being executed by the service. |
| `flags` | `string` | Optional. Contains a comma-separated list of flags. |
| `resources` | `array<ResourceInfo>` | Describes the resources and the policies applied to each resource. |
| `serviceConfigId` | `string` | Specifies the version of the service configuration that should be used to process the request. Mu... |

### `CheckResponse`

Response message for the Check method.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicMetadata` | `object` | Optional response metadata that will be emitted as dynamic metadata to be consumed by the caller ... |
| `headers` | `object` | Returns a set of request contexts generated from the `CheckRequest`. |
| `status` | `Status` | Operation is allowed when this field is not set. Any non-'OK' status indicates a denial; google.r... |

### `FirstPartyPrincipal`

First party identity principal.

| Property | Type | Description |
|----------|------|-------------|
| `principalEmail` | `string` | The email address of a Google account. . |
| `serviceMetadata` | `object` | Metadata about the service that uses the service account. . |

### `OAuthInfo`

OAuth related information about the request.

| Property | Type | Description |
|----------|------|-------------|
| `oauthClientId` | `string` | The OAuth client ID of the 1P or 3P application acting on behalf of the user. |

### `Oauth`

This message defines attributes associated with OAuth credentials.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | The optional OAuth client ID. This is the unique public identifier issued by an authorization ser... |

### `OrgPolicyViolationInfo`

Represents OrgPolicy Violation information.

| Property | Type | Description |
|----------|------|-------------|
| `payload` | `object` | Optional. Deprecated. Resource payload that is currently in scope and is subjected to orgpolicy c... |
| `resourceTags` | `object` | Optional. Deprecated. Tags referenced on the resource at the time of evaluation. |
| `resourceType` | `string` | Optional. Resource type that the orgpolicy is checked against. Example: compute.googleapis.com/In... |
| `violationInfo` | `array<ViolationInfo>` | Optional. Policy violations |

### `Peer`

This message defines attributes for a node that handles a network request. The node can be either a service or an application that sends, forwards, or receives the request. Service peers should fill in `principal` and `labels` as appropriate.

| Property | Type | Description |
|----------|------|-------------|
| `ip` | `string` | The IP address of the peer. |
| `labels` | `object` | The labels associated with the peer. |
| `port` | `string` | The network port of the peer. |
| `principal` | `string` | The identity of this peer. Similar to `Request.auth.principal`, but relative to the peer instead ... |
| `regionCode` | `string` | The CLDR country/region code associated with the above IP address. If the IP address is private, ... |

### `PolicyViolationInfo`

Information related to policy violations for this request.

| Property | Type | Description |
|----------|------|-------------|
| `orgPolicyViolationInfo` | `OrgPolicyViolationInfo` | Indicates the orgpolicy violations for this resource. |

### `ReportRequest`

Request message for the Report method.

| Property | Type | Description |
|----------|------|-------------|
| `operations` | `array<AttributeContext>` | Describes the list of operations to be reported. Each operation is represented as an AttributeCon... |
| `serviceConfigId` | `string` | Specifies the version of the service configuration that should be used to process the request. Mu... |

### `ReportResponse`

Response message for the Report method.

| Property | Type | Description |
|----------|------|-------------|
| `extensions` | `object` | The extension field to store serialized OTel responses. e.g. ExportLogsServiceResponse, ExportMet... |

### `Request`

This message defines attributes for an HTTP request. If the actual request is not an HTTP request, the runtime system should try to map the actual request to an equivalent HTTP request.

| Property | Type | Description |
|----------|------|-------------|
| `auth` | `Auth` | The request authentication. May be absent for unauthenticated requests. Derived from the HTTP req... |
| `headers` | `object` | The HTTP request headers. If multiple headers share the same key, they must be merged according t... |
| `host` | `string` | The HTTP request `Host` header value. |
| `id` | `string` | The unique ID for a request, which can be propagated to downstream systems. The ID should have lo... |
| `method` | `string` | The HTTP request method, such as `GET`, `POST`. |
| `origin` | `string` | The values from Origin header from the HTTP request, such as "https://console.cloud.google.com". ... |
| `path` | `string` | The HTTP URL path, excluding the query parameters. |
| `protocol` | `string` | The network protocol used with the request, such as "http/1.1", "spdy/3", "h2", "h2c", "webrtc", ... |
| `query` | `string` | The HTTP URL query in the format of `name1=value1&name2=value2`, as it appears in the first line ... |
| `reason` | `string` | A special parameter for request reason. It is used by security systems to associate auditing info... |
| `scheme` | `string` | The HTTP URL scheme, such as `http` and `https`. |
| `size` | `string` | The HTTP request size in bytes. If unknown, it must be -1. |
| `time` | `string` | The timestamp when the `destination` service receives the last byte of the request. |

### `RequestMetadata`

Metadata about the request.

| Property | Type | Description |
|----------|------|-------------|
| `callerIp` | `string` | The IP address of the caller. For a caller from the internet, this will be the public IPv4 or IPv... |
| `callerNetwork` | `string` | The network of the caller. Set only if the network host project is part of the same GCP organizat... |
| `callerSuppliedUserAgent` | `string` | The user agent of the caller. This information is not authenticated and should be treated accordi... |
| `destinationAttributes` | `Peer` | The destination of a network activity, such as accepting a TCP connection. In a multi hop network... |
| `requestAttributes` | `Request` | Request attributes used in IAM condition evaluation. This field contains request attributes like ... |

### `Resource`

This message defines core attributes for a resource. A resource is an addressable (named) entity provided by the destination service. For example, a file stored on a network storage service.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Annotations is an unstructured key-value map stored with a resource that may be set by external t... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. This may be either the time creation wa... |
| `deleteTime` | `string` | Output only. The timestamp when the resource was deleted. If the resource is not deleted, this mu... |
| `displayName` | `string` | Mutable. The display name set by clients. Must be <= 63 characters. |
| `etag` | `string` | Output only. An opaque value that uniquely identifies a version or generation of a resource. It c... |
| `labels` | `object` | The labels or tags on the resource, such as AWS resource tags and Kubernetes resource labels. |
| `location` | `string` | Immutable. The location of the resource. The location encoding is specific to the service provide... |
| `name` | `string` | The stable identifier (name) of a resource on the `service`. A resource can be logically identifi... |
| `service` | `string` | The name of the service that this resource belongs to, such as `pubsub.googleapis.com`. The servi... |
| `type` | `string` | The type of the resource. The syntax is platform-specific because different platforms define thei... |
| `uid` | `string` | The unique identifier of the resource. UID is unique in the time and space for this resource with... |
| `updateTime` | `string` | Output only. The timestamp when the resource was last updated. Any change to the resource made by... |

### `ResourceInfo`

Describes a resource referenced in the request.

| Property | Type | Description |
|----------|------|-------------|
| `container` | `string` | Optional. The identifier of the container of this resource. For Google Cloud APIs, the resource c... |
| `location` | `string` | Optional. The location of the resource, it must be a valid zone, region or multiregion, for examp... |
| `name` | `string` | The name of the resource referenced in the request. |
| `permission` | `string` | The resource permission needed for this request. The format must be "{service}/{plural}.{verb}". |
| `type` | `string` | The resource type in the format of "{service}/{kind}". |

### `ResourceLocation`

Location information about a resource.

| Property | Type | Description |
|----------|------|-------------|
| `currentLocations` | `array<string>` | The locations of a resource after the execution of the operation. Requests to create or delete a ... |
| `originalLocations` | `array<string>` | The locations of a resource prior to the execution of the operation. Requests that mutate the res... |

### `Response`

This message defines attributes for a typical network response. It generally models semantics of an HTTP response.

| Property | Type | Description |
|----------|------|-------------|
| `backendLatency` | `string` | The amount of time it takes the backend service to fully respond to a request. Measured from when... |
| `code` | `string` | The HTTP response status code, such as `200` and `404`. |
| `headers` | `object` | The HTTP response headers. If multiple headers share the same key, they must be merged according ... |
| `size` | `string` | The HTTP response size in bytes. If unknown, it must be -1. |
| `time` | `string` | The timestamp when the `destination` service sends the last byte of the response. |

### `ServiceAccountDelegationInfo`

Identity delegation history of an authenticated service account.

| Property | Type | Description |
|----------|------|-------------|
| `firstPartyPrincipal` | `FirstPartyPrincipal` | First party (Google) identity as the real authority. |
| `principalSubject` | `string` | A string representing the principal_subject associated with the identity. For most identities, th... |
| `thirdPartyPrincipal` | `ThirdPartyPrincipal` | Third party identity as the real authority. |

### `ServiceDelegationHistory`

The history of delegation across multiple services as the result of the original user's action. Such as "service A uses its own account to do something for user B". This differs from ServiceAccountDelegationInfo, which only tracks the history of direct token exchanges (impersonation).

| Property | Type | Description |
|----------|------|-------------|
| `originalPrincipal` | `string` | The original end user who initiated the request to GCP. |
| `serviceMetadata` | `array<ServiceMetadata>` | Data identifying the service specific jobs or units of work that were involved in a chain of serv... |

### `ServiceMetadata`

Metadata describing the service and additional service specific information used to identify the job or unit of work at hand.

| Property | Type | Description |
|----------|------|-------------|
| `jobMetadata` | `object` | Additional metadata provided by service teams to describe service specific job information that w... |
| `principalSubject` | `string` | A string representing the principal_subject associated with the identity. For most identities, th... |
| `serviceDomain` | `string` | The service's fully qualified domain name, e.g. "dataproc.googleapis.com". |

### `SpanContext`

The context of a span. This is attached to an Exemplar in Distribution values during aggregation. It contains the name of a span with format: projects/[PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/spans/[SPAN_ID]

| Property | Type | Description |
|----------|------|-------------|
| `spanName` | `string` | The resource name of the span. The format is: projects/[PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/s... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `ThirdPartyPrincipal`

Third party identity principal.

| Property | Type | Description |
|----------|------|-------------|
| `thirdPartyClaims` | `object` | Metadata about third party identity. |

### `V2HttpRequest`

A common proto for logging HTTP requests. Only contains semantics defined by the HTTP specification. Product-specific logging information MUST be defined in a separate message.

| Property | Type | Description |
|----------|------|-------------|
| `cacheFillBytes` | `string` | The number of HTTP response bytes inserted into cache. Set only when a cache fill was attempted. |
| `cacheHit` | `boolean` | Whether or not an entity was served from cache (with or without validation). |
| `cacheLookup` | `boolean` | Whether or not a cache lookup was attempted. |
| `cacheValidatedWithOriginServer` | `boolean` | Whether or not the response was validated with the origin server before being served from cache. ... |
| `latency` | `string` | The request processing latency on the server, from the time the request was received until the re... |
| `protocol` | `string` | Protocol used for the request. Examples: "HTTP/1.1", "HTTP/2", "websocket" |
| `referer` | `string` | The referer URL of the request, as defined in [HTTP/1.1 Header Field Definitions](https://www.w3.... |
| `remoteIp` | `string` | The IP address (IPv4 or IPv6) of the client that issued the HTTP request. Examples: `"192.168.1.1... |
| `requestMethod` | `string` | The request method. Examples: `"GET"`, `"HEAD"`, `"PUT"`, `"POST"`. |
| `requestSize` | `string` | The size of the HTTP request message in bytes, including the request headers and the request body. |
| `requestUrl` | `string` | The scheme (http, https), the host name, the path, and the query portion of the URL that was requ... |
| `responseSize` | `string` | The size of the HTTP response message sent back to the client, in bytes, including the response h... |
| `serverIp` | `string` | The IP address (IPv4 or IPv6) of the origin server that the request was sent to. |
| `status` | `integer` | The response code indicating the status of the response. Examples: 200, 404. |
| `userAgent` | `string` | The user agent sent by the client. Example: `"Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Q312... |

### `V2LogEntry`

An individual log entry.

| Property | Type | Description |
|----------|------|-------------|
| `httpRequest` | `V2HttpRequest` | Optional. Information about the HTTP request associated with this log entry, if applicable. |
| `insertId` | `string` | A unique ID for the log entry used for deduplication. If omitted, the implementation will generat... |
| `labels` | `object` | A set of user-defined (key, value) data that provides additional information about the log entry. |
| `monitoredResourceLabels` | `object` | A set of user-defined (key, value) data that provides additional information about the moniotored... |
| `name` | `string` | Required. The log to which this log entry belongs. Examples: `"syslog"`, `"book_log"`. |
| `operation` | `V2LogEntryOperation` | Optional. Information about an operation associated with the log entry, if applicable. |
| `protoPayload` | `object` | The log entry payload, represented as a protocol buffer that is expressed as a JSON object. The o... |
| `severity` | `string` | The severity of the log entry. The default value is `LogSeverity.DEFAULT`. |
| `sourceLocation` | `V2LogEntrySourceLocation` | Optional. Source code location information associated with the log entry, if any. |
| `structPayload` | `object` | The log entry payload, represented as a structure that is expressed as a JSON object. |
| `textPayload` | `string` | The log entry payload, represented as a Unicode string (UTF-8). |
| `timestamp` | `string` | The time the event described by the log entry occurred. If omitted, defaults to operation start t... |
| `trace` | `string` | Optional. Resource name of the trace associated with the log entry, if any. If this field contain... |

### `V2LogEntryOperation`

Additional information about a potentially long-running operation with which a log entry is associated.

| Property | Type | Description |
|----------|------|-------------|
| `first` | `boolean` | Optional. Set this to True if this is the first log entry in the operation. |
| `id` | `string` | Optional. An arbitrary operation identifier. Log entries with the same identifier are assumed to ... |
| `last` | `boolean` | Optional. Set this to True if this is the last log entry in the operation. |
| `producer` | `string` | Optional. An arbitrary producer identifier. The combination of `id` and `producer` must be global... |

### `V2LogEntrySourceLocation`

Additional information about the source code location that produced the log entry.

| Property | Type | Description |
|----------|------|-------------|
| `file` | `string` | Optional. Source file name. Depending on the runtime environment, this might be a simple name or ... |
| `function` | `string` | Optional. Human-readable name of the function or method being invoked, with optional context such... |
| `line` | `string` | Optional. Line within the source file. 1-based; 0 indicates no line number available. |

### `V2ResourceEvent`

Report v2 extension proto for passing the resource metadata associated with a resource create/update/delete/undelete event from ESF to Chemist. ResourceEvent proto should be serialized into the ReportRequest.operations.extensions.

| Property | Type | Description |
|----------|------|-------------|
| `contextId` | `string` | The ESF unique context id of the api request, from which this resource event originated. This fie... |
| `destinations` | `string` | The destinations field determines which backend services should handle the event. This should be ... |
| `parent` | `Resource` | The parent resource for the resource. |
| `path` | `string` | The api path the resource event was created in. This should match the source of the `payload` fie... |
| `payload` | `object` | The payload contains metadata associated with the resource event. A ResourceEventPayloadStatus is... |
| `resource` | `Resource` | The resource associated with the event. |
| `type` | `string` | The resource event type determines how the backend service should process the event. |

### `ViolationInfo`

Provides information about the Policy violation info for this request.

| Property | Type | Description |
|----------|------|-------------|
| `checkedValue` | `string` | Optional. Value that is being checked for the policy. This could be in encrypted form (if pii sen... |
| `constraint` | `string` | Optional. Constraint name |
| `constraintViolationInfo` | `object` | Optional. Provides extra information for the specific violated constraint. See the constraint's d... |
| `errorMessage` | `string` | Optional. Error message that policy is indicating. |
| `policyType` | `string` | Optional. Indicates the type of the policy. |

