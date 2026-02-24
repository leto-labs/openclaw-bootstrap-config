# Firebase Rules API - API Reference

**Version**: `v1` | **Methods**: 11 | **Schemas**: 24

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `firebaserules.projects.test` | POST | `v1/{+name}:test` | Test `Source` for syntactic and semantic correctness. Issues present, if any, will be returned to... |
| `firebaserules.projects.releases.getExecutable` | GET | `v1/{+name}:getExecutable` | Get the `Release` executable to use when enforcing rules. |
| `firebaserules.projects.releases.create` | POST | `v1/{+name}/releases` | Create a `Release`. Release names should reflect the developer's deployment practices. For exampl... |
| `firebaserules.projects.releases.patch` | PATCH | `v1/{+name}` | Update a `Release` via PATCH. Only updates to `ruleset_name` will be honored. `Release` rename is... |
| `firebaserules.projects.releases.list` | GET | `v1/{+name}/releases` | List the `Release` values for a project. This list may optionally be filtered by `Release` name, ... |
| `firebaserules.projects.releases.get` | GET | `v1/{+name}` | Get a `Release` by name. |
| `firebaserules.projects.releases.delete` | DELETE | `v1/{+name}` | Delete a `Release` by resource name. |
| `firebaserules.projects.rulesets.get` | GET | `v1/{+name}` | Get a `Ruleset` by name including the full `Source` contents. |
| `firebaserules.projects.rulesets.delete` | DELETE | `v1/{+name}` | Delete a `Ruleset` by resource name. If the `Ruleset` is referenced by a `Release` the operation ... |
| `firebaserules.projects.rulesets.create` | POST | `v1/{+name}/rulesets` | Create a `Ruleset` from `Source`. The `Ruleset` is given a unique generated name which is returne... |
| `firebaserules.projects.rulesets.list` | GET | `v1/{+name}/rulesets` | List `Ruleset` metadata only and optionally filter the results by `Ruleset` name. The full `Sourc... |

### `firebaserules.projects.test`

**POST** `v1/{+name}:test`

Test `Source` for syntactic and semantic correctness. Issues present, if any, will be returned to the caller with a description, severity, and source location. The test method may be executed with `Source` or a `Ruleset` name. Passing `Source` is useful for unit testing new rules. Passing a `Ruleset` name is useful for regression testing an existing rule. The following is an example of `Source` that permits users to upload images to a bucket bearing their user id and matching the correct metadata: _*Example*_ // Users are allowed to subscribe and unsubscribe to the blog. service firebase.storage { match /users/{userId}/images/{imageName} { allow write: if userId == request.auth.uid && (imageName.matches('*.png$') || imageName.matches('*.jpg$')) && resource.mimeType.matches('^image/') } }

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Tests may either provide `source` or a `Ruleset` resource name. For tests against `source`, the resource na... |

**Request body**: `TestRulesetRequest`

**Response**: `TestRulesetResponse`

```typescript
const res = await firebaserules.projects.test({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebaserules.projects.releases.getExecutable`

**GET** `v1/{+name}:getExecutable`

Get the `Release` executable to use when enforcing rules.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the `Release`. Format: `projects/{project_id}/releases/{release_id}` |
| `executableVersion` | `string` | query | No | Optional. The requested runtime executable version. Defaults to FIREBASE_RULES_EXECUTABLE_V1. |

**Response**: `GetReleaseExecutableResponse`

```typescript
const res = await firebaserules.releases.getExecutable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebaserules.projects.releases.create`

**POST** `v1/{+name}/releases`

Create a `Release`. Release names should reflect the developer's deployment practices. For example, the release name may include the environment name, application name, application version, or any other name meaningful to the developer. Once a `Release` refers to a `Ruleset`, the rules can be enforced by Firebase Rules-enabled services. More than one `Release` may be 'live' concurrently. Consider the following three `Release` names for `projects/foo` and the `Ruleset` to which they refer. Release Name -> Ruleset Name * projects/foo/releases/prod -> projects/foo/rulesets/uuid123 * projects/foo/releases/prod/beta -> projects/foo/rulesets/uuid123 * projects/foo/releases/prod/v23 -> projects/foo/rulesets/uuid456 The relationships reflect a `Ruleset` rollout in progress. The `prod` and `prod/beta` releases refer to the same `Ruleset`. However, `prod/v23` refers to a new `Ruleset`. The `Ruleset` reference for a `Release` may be updated using the UpdateRelease method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the project which owns this `Release`. Format: `projects/{project_id}` |

**Request body**: `Release`

**Response**: `Release`

```typescript
const res = await firebaserules.releases.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaserules.projects.releases.patch`

**PATCH** `v1/{+name}`

Update a `Release` via PATCH. Only updates to `ruleset_name` will be honored. `Release` rename is not supported. To create a `Release` use the CreateRelease method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the project which owns this `Release`. Format: `projects/{project_id}` |

**Request body**: `UpdateReleaseRequest`

**Response**: `Release`

```typescript
const res = await firebaserules.releases.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaserules.projects.releases.list`

**GET** `v1/{+name}/releases`

List the `Release` values for a project. This list may optionally be filtered by `Release` name, `Ruleset` name, `TestSuite` name, or any combination thereof.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the project. Format: `projects/{project_id}` |
| `filter` | `string` | query | No | Optional. `Release` filter. The list method supports filters with restrictions on the `Release.name`, and `Release.ru... |
| `pageSize` | `integer` | query | No | Optional. Page size to load. Maximum of 100. Defaults to 10. Note: `page_size` is just a hint and the service may cho... |
| `pageToken` | `string` | query | No | Optional. Next page token for the next batch of `Release` instances. |

**Response**: `ListReleasesResponse`

```typescript
const res = await firebaserules.releases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebaserules.projects.releases.get`

**GET** `v1/{+name}`

Get a `Release` by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the `Release`. Format: `projects/{project_id}/releases/{release_id}` |

**Response**: `Release`

```typescript
const res = await firebaserules.releases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebaserules.projects.releases.delete`

**DELETE** `v1/{+name}`

Delete a `Release` by resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the `Release` to delete. Format: `projects/{project_id}/releases/{release_id}` |

**Response**: `Empty`

```typescript
const res = await firebaserules.releases.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaserules.projects.rulesets.get`

**GET** `v1/{+name}`

Get a `Ruleset` by name including the full `Source` contents.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the ruleset to get. Format: `projects/{project_id}/rulesets/{ruleset_id}` |

**Response**: `Ruleset`

```typescript
const res = await firebaserules.rulesets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebaserules.projects.rulesets.delete`

**DELETE** `v1/{+name}`

Delete a `Ruleset` by resource name. If the `Ruleset` is referenced by a `Release` the operation will fail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the ruleset to delete. Format: `projects/{project_id}/rulesets/{ruleset_id}` |

**Response**: `Empty`

```typescript
const res = await firebaserules.rulesets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaserules.projects.rulesets.create`

**POST** `v1/{+name}/rulesets`

Create a `Ruleset` from `Source`. The `Ruleset` is given a unique generated name which is returned to the caller. `Source` containing syntactic or semantics errors will result in an error response indicating the first error encountered. For a detailed view of `Source` issues, use TestRuleset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for Project which owns this `Ruleset`. Format: `projects/{project_id}` |

**Request body**: `Ruleset`

**Response**: `Ruleset`

```typescript
const res = await firebaserules.rulesets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaserules.projects.rulesets.list`

**GET** `v1/{+name}/rulesets`

List `Ruleset` metadata only and optionally filter the results by `Ruleset` name. The full `Source` contents of a `Ruleset` may be retrieved with GetRuleset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the project. Format: `projects/{project_id}` |
| `filter` | `string` | query | No | Optional. `Ruleset` filter. The list method supports filters with restrictions on `Ruleset.name`. Filters on `Ruleset... |
| `pageSize` | `integer` | query | No | Optional. Page size to load. Maximum of 100. Defaults to 10. Note: `page_size` is just a hint and the service may cho... |
| `pageToken` | `string` | query | No | Optional. Next page token for loading the next batch of `Ruleset` instances. |

**Response**: `ListRulesetsResponse`

```typescript
const res = await firebaserules.rulesets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

## Schemas

### `Arg`

Arg matchers for the mock function.

| Property | Type | Description |
|----------|------|-------------|
| `anyValue` | `Empty` | Argument matches any value provided. |
| `exactValue` | `any` | Argument exactly matches value provided. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ExpressionReport`

Describes where in a file an expression is found and what it was evaluated to over the course of its use.

| Property | Type | Description |
|----------|------|-------------|
| `children` | `array<ExpressionReport>` | Subexpressions |
| `sourcePosition` | `SourcePosition` | Position of expression in original rules source. |
| `values` | `array<ValueCount>` | Values that this expression evaluated to when encountered. |

### `File`

`File` containing source content.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Required. Textual Content. |
| `fingerprint` | `string` | Fingerprint (e.g. github sha) associated with the `File`. |
| `name` | `string` | Required. File name. |

### `FunctionCall`

Represents a service-defined function call that was invoked during test execution.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<any>` | The arguments that were provided to the function. |
| `function` | `string` | Name of the function invoked. |

### `FunctionMock`

Mock function definition. Mocks must refer to a function declared by the target service. The type of the function args and result will be inferred at test time. If either the arg or result values are not compatible with function type declaration, the request will be considered invalid. More than one `FunctionMock` may be provided for a given function name so long as the `Arg` matchers are distinct. There may be only one function for a given overload where all `Arg` values are `Arg.any_value`.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<Arg>` | The list of `Arg` values to match. The order in which the arguments are provided is the order in ... |
| `function` | `string` | The name of the function. The function name must match one provided by a service declaration. |
| `result` | `Result` | The mock result of the function call. |

### `GetReleaseExecutableResponse`

The response for FirebaseRulesService.GetReleaseExecutable

| Property | Type | Description |
|----------|------|-------------|
| `executable` | `string` | Executable view of the `Ruleset` referenced by the `Release`. |
| `executableVersion` | `string` | The Rules runtime version of the executable. |
| `language` | `string` | `Language` used to generate the executable bytes. |
| `rulesetName` | `string` | `Ruleset` name associated with the `Release` executable. |
| `syncTime` | `string` | Optional, indicates the freshness of the result. The response is guaranteed to be the latest with... |
| `updateTime` | `string` | Timestamp for the most recent `Release.update_time`. |

### `Issue`

Issues include warnings, errors, and deprecation notices.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Short error description. |
| `severity` | `string` | The severity of the issue. |
| `sourcePosition` | `SourcePosition` | Position of the issue in the `Source`. |

### `ListReleasesResponse`

The response for FirebaseRulesService.ListReleases.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The pagination token to retrieve the next page of results. If the value is empty, no further resu... |
| `releases` | `array<Release>` | List of `Release` instances. |

### `ListRulesetsResponse`

The response for FirebaseRulesService.ListRulesets.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The pagination token to retrieve the next page of results. If the value is empty, no further resu... |
| `rulesets` | `array<Ruleset>` | List of `Ruleset` instances. |

### `Metadata`

Metadata for a Ruleset.

| Property | Type | Description |
|----------|------|-------------|
| `services` | `array<string>` | Services that this ruleset has declarations for (e.g., "cloud.firestore"). There may be 0+ of these. |

### `Release`

`Release` is a named reference to a `Ruleset`. Once a `Release` refers to a `Ruleset`, rules-enabled services will be able to enforce the `Ruleset`.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time the release was created. |
| `name` | `string` | Required. Format: `projects/{project_id}/releases/{release_id}` |
| `rulesetName` | `string` | Required. Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `... |
| `updateTime` | `string` | Output only. Time the release was updated. |

### `Result`

Possible result values from the function mock invocation.

| Property | Type | Description |
|----------|------|-------------|
| `undefined` | `Empty` | The result is undefined, meaning the result could not be computed. |
| `value` | `any` | The result is an actual value. The type of the value must match that of the type declared by the ... |

### `Ruleset`

`Ruleset` is an immutable copy of `Source` with a globally unique identifier and a creation time.

| Property | Type | Description |
|----------|------|-------------|
| `attachmentPoint` | `string` | Immutable. Intended resource to which this Ruleset should be released. May be left blank to signi... |
| `createTime` | `string` | Output only. Time the `Ruleset` was created. |
| `metadata` | `Metadata` | Output only. The metadata for this ruleset. |
| `name` | `string` | Output only. Name of the `Ruleset`. The ruleset_id is auto generated by the service. Format: `pro... |
| `source` | `Source` | Required. `Source` for the `Ruleset`. |

### `Source`

`Source` is one or more `File` messages comprising a logical set of rules.

| Property | Type | Description |
|----------|------|-------------|
| `files` | `array<File>` | Required. `File` set constituting the `Source` bundle. |

### `SourcePosition`

Position in the `Source` content including its line, column number, and an index of the `File` in the `Source` message. Used for debug purposes.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `integer` | First column on the source line associated with the source fragment. |
| `currentOffset` | `integer` | Start position relative to the beginning of the file. |
| `endOffset` | `integer` | End position relative to the beginning of the file. |
| `fileName` | `string` | Name of the `File`. |
| `line` | `integer` | Line number of the source fragment. 1-based. |

### `TestCase`

`TestCase` messages provide the request context and an expectation as to whether the given context will be allowed or denied. Test cases may specify the `request`, `resource`, and `function_mocks` to mock a function call to a service-provided function. The `request` object represents context present at request-time. The `resource` is the value of the target resource as it appears in persistent storage before the request is executed.

| Property | Type | Description |
|----------|------|-------------|
| `expectation` | `string` | Test expectation. |
| `expressionReportLevel` | `string` | Specifies what should be included in the response. |
| `functionMocks` | `array<FunctionMock>` | Optional function mocks for service-defined functions. If not set, any service defined function i... |
| `pathEncoding` | `string` | Specifies whether paths (such as request.path) are encoded and how. |
| `request` | `any` | Request context. The exact format of the request context is service-dependent. See the appropriat... |
| `resource` | `any` | Optional resource value as it appears in persistent storage before the request is fulfilled. The ... |

### `TestResult`

Test result message containing the state of the test as well as a description and source position for test failures.

| Property | Type | Description |
|----------|------|-------------|
| `debugMessages` | `array<string>` | Debug messages related to test execution issues encountered during evaluation. Debug messages may... |
| `errorPosition` | `SourcePosition` | Position in the `Source` or `Ruleset` where the principle runtime error occurs. Evaluation of an ... |
| `expressionReports` | `array<ExpressionReport>` | The mapping from expression in the ruleset AST to the values they were evaluated to. Partially-ne... |
| `functionCalls` | `array<FunctionCall>` | The set of function calls made to service-defined methods. Function calls are included in the ord... |
| `state` | `string` | State of the test. |
| `visitedExpressions` | `array<VisitedExpression>` | The set of visited permission expressions for a given test. This returns the positions and evalua... |

### `TestRulesetRequest`

The request for FirebaseRulesService.TestRuleset.

| Property | Type | Description |
|----------|------|-------------|
| `source` | `Source` | Optional. Optional `Source` to be checked for correctness. This field must not be set when the re... |
| `testSuite` | `TestSuite` | Required. The tests to execute against the `Source`. When `Source` is provided inline, the test c... |

### `TestRulesetResponse`

The response for FirebaseRulesService.TestRuleset.

| Property | Type | Description |
|----------|------|-------------|
| `issues` | `array<Issue>` | Syntactic and semantic `Source` issues of varying severity. Issues of `ERROR` severity will preve... |
| `testResults` | `array<TestResult>` | The set of test results given the test cases in the `TestSuite`. The results will appear in the s... |

### `TestSuite`

`TestSuite` is a collection of `TestCase` instances that validate the logical correctness of a `Ruleset`. The `TestSuite` may be referenced in-line within a `TestRuleset` invocation or as part of a `Release` object as a pre-release check.

| Property | Type | Description |
|----------|------|-------------|
| `testCases` | `array<TestCase>` | Collection of test cases associated with the `TestSuite`. |

### `UpdateReleaseRequest`

The request for FirebaseRulesService.UpdateRelease.

| Property | Type | Description |
|----------|------|-------------|
| `release` | `Release` | Required. `Release` to update. |
| `updateMask` | `string` | Optional. Specifies which fields to update. |

### `ValueCount`

Tuple for how many times an Expression was evaluated to a particular ExpressionValue.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | The amount of times that expression returned. |
| `value` | `any` | The return value of the expression |

### `VisitedExpression`

Store the position and access outcome for an expression visited in rules.

| Property | Type | Description |
|----------|------|-------------|
| `sourcePosition` | `SourcePosition` | Position in the `Source` or `Ruleset` where an expression was visited. |
| `value` | `any` | The evaluated value for the visited expression, e.g. true/false |

