# Cloud Trace API - API Reference

**Version**: `v2` | **Methods**: 2 | **Schemas**: 17

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudtrace.projects.traces.batchWrite` | POST | `v2/{+name}/traces:batchWrite` | Batch writes new spans to new or existing traces. You cannot update existing spans. If a span ID ... |
| `cloudtrace.projects.traces.spans.createSpan` | POST | `v2/{+name}` | Creates a new span. If a span ID already exists, an additional copy of the span will be stored. |

### `cloudtrace.projects.traces.batchWrite`

**POST** `v2/{+name}/traces:batchWrite`

Batch writes new spans to new or existing traces. You cannot update existing spans. If a span ID already exists, an additional copy of the span will be stored.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the project where the spans belong. The format is `projects/[PROJECT_ID]`. |

**Request body**: `BatchWriteSpansRequest`

**Response**: `Empty`

```typescript
const res = await cloudtrace.traces.batchWrite({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/trace.append`

---

### `cloudtrace.projects.traces.spans.createSpan`

**POST** `v2/{+name}`

Creates a new span. If a span ID already exists, an additional copy of the span will be stored.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the span in the following format: * `projects/[PROJECT_ID]/traces/[TRACE_ID]/spans/[SP... |

**Request body**: `Span`

**Response**: `Span`

```typescript
const res = await cloudtrace.spans.createSpan({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/trace.append`

---

## Schemas

### `Annotation`

Text annotation with a set of attributes.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `Attributes` | A set of attributes on the annotation. You can have up to 4 attributes per Annotation. |
| `description` | `TruncatableString` | A user-supplied message describing the event. The maximum length for the description is 256 bytes. |

### `AttributeValue`

The allowed types for `[VALUE]` in a `[KEY]:[VALUE]` attribute.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | A Boolean value represented by `true` or `false`. |
| `intValue` | `string` | A 64-bit signed integer. |
| `stringValue` | `TruncatableString` | A string up to 256 bytes long. |

### `Attributes`

A set of attributes as key-value pairs.

| Property | Type | Description |
|----------|------|-------------|
| `attributeMap` | `object` | A set of attributes. Each attribute's key can be up to 128 bytes long. The value can be a string ... |
| `droppedAttributesCount` | `integer` | The number of attributes that were discarded. Attributes can be discarded because their keys are ... |

### `BatchWriteSpansRequest`

The request message for the `BatchWriteSpans` method.

| Property | Type | Description |
|----------|------|-------------|
| `spans` | `array<Span>` | Required. A list of new spans. The span names must not match existing spans, otherwise the result... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Link`

A pointer from the current span to another span in the same trace or in a different trace. For example, this can be used in batching operations, where a single batch handler processes multiple requests from different traces or when the handler receives a request from a different project.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `Attributes` | A set of attributes on the link. Up to 32 attributes can be specified per link. |
| `spanId` | `string` | The `[SPAN_ID]` for a span within a trace. |
| `traceId` | `string` | The `[TRACE_ID]` for a trace within a project. |
| `type` | `string` | The relationship of the current span relative to the linked span. |

### `Links`

A collection of links, which are references from this span to a span in the same or different trace.

| Property | Type | Description |
|----------|------|-------------|
| `droppedLinksCount` | `integer` | The number of dropped links after the maximum size was enforced. If this value is 0, then no link... |
| `link` | `array<Link>` | A collection of links. |

### `MessageEvent`

An event describing a message sent/received between Spans.

| Property | Type | Description |
|----------|------|-------------|
| `compressedSizeBytes` | `string` | The number of compressed bytes sent or received. If missing, the compressed size is assumed to be... |
| `id` | `string` | An identifier for the MessageEvent's message that can be used to match `SENT` and `RECEIVED` Mess... |
| `type` | `string` | Type of MessageEvent. Indicates whether the message was sent or received. |
| `uncompressedSizeBytes` | `string` | The number of uncompressed bytes sent or received. |

### `Module`

Binary module.

| Property | Type | Description |
|----------|------|-------------|
| `buildId` | `TruncatableString` | A unique identifier for the module, usually a hash of its contents (up to 128 bytes). |
| `module` | `TruncatableString` | For example: main binary, kernel modules, and dynamic libraries such as libc.so, sharedlib.so (up... |

### `Span`

A span represents a single operation within a trace. Spans can be nested to form a trace tree. Often, a trace contains a root span that describes the end-to-end latency, and one or more subspans for its sub-operations. A trace can also contain multiple root spans, or none at all. Spans do not need to be contiguous. There might be gaps or overlaps between spans in a trace.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `Attributes` | A set of attributes on the span. You can have up to 32 attributes per span. |
| `childSpanCount` | `integer` | Optional. The number of child spans that were generated while this span was active. If set, allow... |
| `displayName` | `TruncatableString` | Required. A description of the span's operation (up to 128 bytes). Cloud Trace displays the descr... |
| `endTime` | `string` | Required. The end time of the span. On the client side, this is the time kept by the local machin... |
| `links` | `Links` | Links associated with the span. You can have up to 128 links per Span. |
| `name` | `string` | Required. The resource name of the span in the following format: * `projects/[PROJECT_ID]/traces/... |
| `parentSpanId` | `string` | The `[SPAN_ID]` of this span's parent span. If this is a root span, then this field must be empty. |
| `sameProcessAsParentSpan` | `boolean` | Optional. Set this parameter to indicate whether this span is in the same process as its parent. ... |
| `spanId` | `string` | Required. The `[SPAN_ID]` portion of the span's resource name. |
| `spanKind` | `string` | Optional. Distinguishes between spans generated in a particular context. For example, two spans w... |
| `stackTrace` | `StackTrace` | Stack trace captured at the start of the span. |
| `startTime` | `string` | Required. The start time of the span. On the client side, this is the time kept by the local mach... |
| `status` | `Status` | Optional. The final status for this span. |
| `timeEvents` | `TimeEvents` | A set of time events. You can have up to 32 annotations and 128 message events per span. |

### `StackFrame`

Represents a single stack frame in a stack trace.

| Property | Type | Description |
|----------|------|-------------|
| `columnNumber` | `string` | The column number where the function call appears, if available. This is important in JavaScript ... |
| `fileName` | `TruncatableString` | The name of the source file where the function call appears (up to 256 bytes). |
| `functionName` | `TruncatableString` | The fully-qualified name that uniquely identifies the function or method that is active in this f... |
| `lineNumber` | `string` | The line number in `file_name` where the function call appears. |
| `loadModule` | `Module` | The binary module from where the code was loaded. |
| `originalFunctionName` | `TruncatableString` | An un-mangled function name, if `function_name` is mangled. To get information about name manglin... |
| `sourceVersion` | `TruncatableString` | The version of the deployed source code (up to 128 bytes). |

### `StackFrames`

A collection of stack frames, which can be truncated.

| Property | Type | Description |
|----------|------|-------------|
| `droppedFramesCount` | `integer` | The number of stack frames that were dropped because there were too many stack frames. If this va... |
| `frame` | `array<StackFrame>` | Stack frames in this call stack. |

### `StackTrace`

A call stack appearing in a trace.

| Property | Type | Description |
|----------|------|-------------|
| `stackFrames` | `StackFrames` | Stack frames in this stack trace. A maximum of 128 frames are allowed. |
| `stackTraceHashId` | `string` | The hash ID is used to conserve network bandwidth for duplicate stack traces within a single trac... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TimeEvent`

A time-stamped annotation or message event in the Span.

| Property | Type | Description |
|----------|------|-------------|
| `annotation` | `Annotation` | Text annotation with a set of attributes. |
| `messageEvent` | `MessageEvent` | An event describing a message sent/received between Spans. |
| `time` | `string` | The timestamp indicating the time the event occurred. |

### `TimeEvents`

A collection of `TimeEvent`s. A `TimeEvent` is a time-stamped annotation on the span, consisting of either user-supplied key:value pairs, or details of a message sent/received between Spans.

| Property | Type | Description |
|----------|------|-------------|
| `droppedAnnotationsCount` | `integer` | The number of dropped annotations in all the included time events. If the value is 0, then no ann... |
| `droppedMessageEventsCount` | `integer` | The number of dropped message events in all the included time events. If the value is 0, then no ... |
| `timeEvent` | `array<TimeEvent>` | A collection of `TimeEvent`s. |

### `TruncatableString`

Represents a string that might be shortened to a specified length.

| Property | Type | Description |
|----------|------|-------------|
| `truncatedByteCount` | `integer` | The number of bytes removed from the original string. If this value is 0, then the string was not... |
| `value` | `string` | The shortened string. For example, if the original string is 500 bytes long and the limit of the ... |

