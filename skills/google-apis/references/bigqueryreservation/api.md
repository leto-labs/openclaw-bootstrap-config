# BigQuery Reservation API - API Reference

**Version**: `v1` | **Methods**: 32 | **Schemas**: 30

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `bigqueryreservation.projects.locations.searchAssignments` | GET | `v1/{+parent}:searchAssignments` | Deprecated: Looks up assignments for a specified resource for a particular region. If the request... |
| `bigqueryreservation.projects.locations.searchAllAssignments` | GET | `v1/{+parent}:searchAllAssignments` | Looks up assignments for a specified resource for a particular region. If the request is about a ... |
| `bigqueryreservation.projects.locations.updateBiReservation` | PATCH | `v1/{+name}` | Updates a BI reservation. Only fields specified in the `field_mask` are updated. A singleton BI r... |
| `bigqueryreservation.projects.locations.getBiReservation` | GET | `v1/{+name}` | Retrieves a BI reservation. |
| `bigqueryreservation.projects.locations.capacityCommitments.split` | POST | `v1/{+name}:split` | Splits capacity commitment to two commitments of the same plan and `commitment_end_time`. A commo... |
| `bigqueryreservation.projects.locations.capacityCommitments.delete` | DELETE | `v1/{+name}` | Deletes a capacity commitment. Attempting to delete capacity commitment before its commitment_end... |
| `bigqueryreservation.projects.locations.capacityCommitments.merge` | POST | `v1/{+parent}/capacityCommitments:merge` | Merges capacity commitments of the same plan into a single commitment. The resulting capacity com... |
| `bigqueryreservation.projects.locations.capacityCommitments.list` | GET | `v1/{+parent}/capacityCommitments` | Lists all the capacity commitments for the admin project. |
| `bigqueryreservation.projects.locations.capacityCommitments.patch` | PATCH | `v1/{+name}` | Updates an existing capacity commitment. Only `plan` and `renewal_plan` fields can be updated. Pl... |
| `bigqueryreservation.projects.locations.capacityCommitments.get` | GET | `v1/{+name}` | Returns information about the capacity commitment. |
| `bigqueryreservation.projects.locations.capacityCommitments.create` | POST | `v1/{+parent}/capacityCommitments` | Creates a new capacity commitment resource. |
| `bigqueryreservation.projects.locations.reservations.delete` | DELETE | `v1/{+name}` | Deletes a reservation. Returns `google.rpc.Code.FAILED_PRECONDITION` when reservation has assignm... |
| `bigqueryreservation.projects.locations.reservations.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets an access control policy for a resource. Replaces any existing policy. Supported resources a... |
| `bigqueryreservation.projects.locations.reservations.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Gets your permissions on a resource. Returns an empty set of permissions if the resource doesn't ... |
| `bigqueryreservation.projects.locations.reservations.list` | GET | `v1/{+parent}/reservations` | Lists all the reservations for the project in the specified location. |
| `bigqueryreservation.projects.locations.reservations.failoverReservation` | POST | `v1/{+name}:failoverReservation` | Fail over a reservation to the secondary location. The operation should be done in the current se... |
| `bigqueryreservation.projects.locations.reservations.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource d... |
| `bigqueryreservation.projects.locations.reservations.get` | GET | `v1/{+name}` | Returns information about the reservation. |
| `bigqueryreservation.projects.locations.reservations.create` | POST | `v1/{+parent}/reservations` | Creates a new reservation resource. |
| `bigqueryreservation.projects.locations.reservations.patch` | PATCH | `v1/{+name}` | Updates an existing reservation resource. |
| `bigqueryreservation.projects.locations.reservations.assignments.list` | GET | `v1/{+parent}/assignments` | Lists assignments. Only explicitly created assignments will be returned. Example: * Organization ... |
| `bigqueryreservation.projects.locations.reservations.assignments.delete` | DELETE | `v1/{+name}` | Deletes a assignment. No expansion will happen. Example: * Organization `organizationA` contains ... |
| `bigqueryreservation.projects.locations.reservations.assignments.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource d... |
| `bigqueryreservation.projects.locations.reservations.assignments.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Gets your permissions on a resource. Returns an empty set of permissions if the resource doesn't ... |
| `bigqueryreservation.projects.locations.reservations.assignments.create` | POST | `v1/{+parent}/assignments` | Creates an assignment object which allows the given project to submit jobs of a certain type usin... |
| `bigqueryreservation.projects.locations.reservations.assignments.move` | POST | `v1/{+name}:move` | Moves an assignment under a new reservation. This differs from removing an existing assignment an... |
| `bigqueryreservation.projects.locations.reservations.assignments.patch` | PATCH | `v1/{+name}` | Updates an existing assignment. Only the `priority` field can be updated. |
| `bigqueryreservation.projects.locations.reservations.assignments.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets an access control policy for a resource. Replaces any existing policy. Supported resources a... |
| `bigqueryreservation.projects.locations.reservationGroups.create` | POST | `v1/{+parent}/reservationGroups` | Creates a new reservation group. |
| `bigqueryreservation.projects.locations.reservationGroups.delete` | DELETE | `v1/{+name}` | Deletes a reservation. Returns `google.rpc.Code.FAILED_PRECONDITION` when reservation has assignm... |
| `bigqueryreservation.projects.locations.reservationGroups.list` | GET | `v1/{+parent}/reservationGroups` | Lists all the reservation groups for the project in the specified location. |
| `bigqueryreservation.projects.locations.reservationGroups.get` | GET | `v1/{+name}` | Returns information about the reservation group. |

### `bigqueryreservation.projects.locations.searchAssignments`

**GET** `v1/{+parent}:searchAssignments`

Deprecated: Looks up assignments for a specified resource for a particular region. If the request is about a project: 1. Assignments created on the project will be returned if they exist. 2. Otherwise assignments created on the closest ancestor will be returned. 3. Assignments for different JobTypes will all be returned. The same logic applies if the request is about a folder. If the request is about an organization, then assignments created on the organization will be returned (organization doesn't have ancestors). Comparing to ListAssignments, there are some behavior differences: 1. permission on the assignee will be verified in this API. 2. Hierarchy lookup (project->folder->organization) happens in this API. 3. Parent here is `projects/*/locations/*`, instead of `projects/*/locations/*reservations/*`. **Note** "-" cannot be used for projects nor locations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the admin project(containing project and location), e.g.: `projects/myproject/location... |
| `pageSize` | `integer` | query | No | The maximum number of items to return per page. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |
| `query` | `string` | query | No | Please specify resource name as assignee in the query. Examples: * `assignee=projects/myproject` * `assignee=folders/... |

**Response**: `SearchAssignmentsResponse`

```typescript
const res = await bigqueryreservation.locations.searchAssignments({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.searchAllAssignments`

**GET** `v1/{+parent}:searchAllAssignments`

Looks up assignments for a specified resource for a particular region. If the request is about a project: 1. Assignments created on the project will be returned if they exist. 2. Otherwise assignments created on the closest ancestor will be returned. 3. Assignments for different JobTypes will all be returned. The same logic applies if the request is about a folder. If the request is about an organization, then assignments created on the organization will be returned (organization doesn't have ancestors). Comparing to ListAssignments, there are some behavior differences: 1. permission on the assignee will be verified in this API. 2. Hierarchy lookup (project->folder->organization) happens in this API. 3. Parent here is `projects/*/locations/*`, instead of `projects/*/locations/*reservations/*`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name with location (project name could be the wildcard '-'), e.g.: `projects/-/locations/US`. |
| `pageSize` | `integer` | query | No | The maximum number of items to return per page. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |
| `query` | `string` | query | No | Please specify resource name as assignee in the query. Examples: * `assignee=projects/myproject` * `assignee=folders/... |

**Response**: `SearchAllAssignmentsResponse`

```typescript
const res = await bigqueryreservation.locations.searchAllAssignments({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.updateBiReservation`

**PATCH** `v1/{+name}`

Updates a BI reservation. Only fields specified in the `field_mask` are updated. A singleton BI reservation always exists with default size 0. In order to reserve BI capacity it needs to be updated to an amount greater than 0. In order to release BI capacity reservation size must be set to 0.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the singleton BI reservation. Reservation names have the form `projects/{project_id}... |
| `updateMask` | `string` | query | No | A list of fields to be updated in this request. |

**Request body**: `BiReservation`

**Response**: `BiReservation`

```typescript
const res = await bigqueryreservation.locations.updateBiReservation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.getBiReservation`

**GET** `v1/{+name}`

Retrieves a BI reservation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the requested reservation, for example: `projects/{project_id}/locations/{location_id}/biReservation` |

**Response**: `BiReservation`

```typescript
const res = await bigqueryreservation.locations.getBiReservation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.capacityCommitments.split`

**POST** `v1/{+name}:split`

Splits capacity commitment to two commitments of the same plan and `commitment_end_time`. A common use case is to enable downgrading commitments. For example, in order to downgrade from 10000 slots to 8000, you might split a 10000 capacity commitment into commitments of 2000 and 8000. Then, you delete the first one after the commitment end time passes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name e.g.,: `projects/myproject/locations/US/capacityCommitments/123` |

**Request body**: `SplitCapacityCommitmentRequest`

**Response**: `SplitCapacityCommitmentResponse`

```typescript
const res = await bigqueryreservation.capacityCommitments.split({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.capacityCommitments.delete`

**DELETE** `v1/{+name}`

Deletes a capacity commitment. Attempting to delete capacity commitment before its commitment_end_time will fail with the error code `google.rpc.Code.FAILED_PRECONDITION`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the capacity commitment to delete. E.g., `projects/myproject/locations/US/capacityCommitme... |
| `force` | `boolean` | query | No | Can be used to force delete commitments even if assignments exist. Deleting commitments with assignments may cause qu... |

**Response**: `Empty`

```typescript
const res = await bigqueryreservation.capacityCommitments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.capacityCommitments.merge`

**POST** `v1/{+parent}/capacityCommitments:merge`

Merges capacity commitments of the same plan into a single commitment. The resulting capacity commitment has the greater commitment_end_time out of the to-be-merged capacity commitments. Attempting to merge capacity commitments of different plan will fail with the error code `google.rpc.Code.FAILED_PRECONDITION`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent resource that identifies admin project and location e.g., `projects/myproject/locations/us` |

**Request body**: `MergeCapacityCommitmentsRequest`

**Response**: `CapacityCommitment`

```typescript
const res = await bigqueryreservation.capacityCommitments.merge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.capacityCommitments.list`

**GET** `v1/{+parent}/capacityCommitments`

Lists all the capacity commitments for the admin project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the parent reservation. E.g., `projects/myproject/locations/US` |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListCapacityCommitmentsResponse`

```typescript
const res = await bigqueryreservation.capacityCommitments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.capacityCommitments.patch`

**PATCH** `v1/{+name}`

Updates an existing capacity commitment. Only `plan` and `renewal_plan` fields can be updated. Plan can only be changed to a plan of a longer commitment period. Attempting to change to a plan with shorter commitment period will fail with the error code `google.rpc.Code.FAILED_PRECONDITION`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the capacity commitment, e.g., `projects/myproject/locations/US/capacityCommitments... |
| `updateMask` | `string` | query | No | Standard field mask for the set of fields to be updated. |

**Request body**: `CapacityCommitment`

**Response**: `CapacityCommitment`

```typescript
const res = await bigqueryreservation.capacityCommitments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.capacityCommitments.get`

**GET** `v1/{+name}`

Returns information about the capacity commitment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the capacity commitment to retrieve. E.g., `projects/myproject/locations/US/capacityCommit... |

**Response**: `CapacityCommitment`

```typescript
const res = await bigqueryreservation.capacityCommitments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.capacityCommitments.create`

**POST** `v1/{+parent}/capacityCommitments`

Creates a new capacity commitment resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the parent reservation. E.g., `projects/myproject/locations/US` |
| `capacityCommitmentId` | `string` | query | No | The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is empty.... |
| `enforceSingleAdminProjectPerOrg` | `boolean` | query | No | If true, fail the request if another project in the organization has a capacity commitment. |

**Request body**: `CapacityCommitment`

**Response**: `CapacityCommitment`

```typescript
const res = await bigqueryreservation.capacityCommitments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.delete`

**DELETE** `v1/{+name}`

Deletes a reservation. Returns `google.rpc.Code.FAILED_PRECONDITION` when reservation has assignments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the reservation to retrieve. E.g., `projects/myproject/locations/US/reservations/team1-prod` |

**Response**: `Empty`

```typescript
const res = await bigqueryreservation.reservations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets an access control policy for a resource. Replaces any existing policy. Supported resources are: - Reservations To call this method, you must have the following Google IAM permissions: - `bigqueryreservation.reservations.setIamPolicy` to set policies on reservations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigqueryreservation.reservations.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Gets your permissions on a resource. Returns an empty set of permissions if the resource doesn't exist. Supported resources are: - Reservations No Google IAM permissions are required to call this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigqueryreservation.reservations.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.list`

**GET** `v1/{+parent}/reservations`

Lists all the reservations for the project in the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name containing project and location, e.g.: `projects/myproject/locations/US` |
| `pageSize` | `integer` | query | No | The maximum number of items to return per page. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListReservationsResponse`

```typescript
const res = await bigqueryreservation.reservations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.failoverReservation`

**POST** `v1/{+name}:failoverReservation`

Fail over a reservation to the secondary location. The operation should be done in the current secondary location, which will be promoted to the new primary location for the reservation. Attempting to failover a reservation in the current primary location will fail with the error code `google.rpc.Code.FAILED_PRECONDITION`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the reservation to failover. E.g., `projects/myproject/locations/US/reservations/team1-prod` |

**Request body**: `FailoverReservationRequest`

**Response**: `Reservation`

```typescript
const res = await bigqueryreservation.reservations.failoverReservation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource doesn't exist or you don't have the permission to view it. * An empty policy if the resource exists but doesn't have a set policy. Supported resources are: - Reservations - ReservationAssignments To call this method, you must have the following Google IAM permissions: - `bigqueryreservation.reservations.getIamPolicy` to get policies on reservations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await bigqueryreservation.reservations.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.get`

**GET** `v1/{+name}`

Returns information about the reservation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the reservation to retrieve. E.g., `projects/myproject/locations/US/reservations/team1-prod` |

**Response**: `Reservation`

```typescript
const res = await bigqueryreservation.reservations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.create`

**POST** `v1/{+parent}/reservations`

Creates a new reservation resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project, location. E.g., `projects/myproject/locations/US` |
| `reservationId` | `string` | query | No | The reservation ID. It must only contain lower case alphanumeric characters or dashes. It must start with a letter an... |

**Request body**: `Reservation`

**Response**: `Reservation`

```typescript
const res = await bigqueryreservation.reservations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.patch`

**PATCH** `v1/{+name}`

Updates an existing reservation resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. The reserva... |
| `updateMask` | `string` | query | No | Standard field mask for the set of fields to be updated. |

**Request body**: `Reservation`

**Response**: `Reservation`

```typescript
const res = await bigqueryreservation.reservations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.assignments.list`

**GET** `v1/{+parent}/assignments`

Lists assignments. Only explicitly created assignments will be returned. Example: * Organization `organizationA` contains two projects, `project1` and `project2`. * Reservation `res1` exists and was created previously. * CreateAssignment was used previously to define the following associations between entities and reservations: `` and `` In this example, ListAssignments will just return the above two assignments for reservation `res1`, and no expansion/merge will happen. The wildcard "-" can be used for reservations in the request. In that case all assignments belongs to the specified project and location will be listed. **Note** "-" cannot be used for projects nor locations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name e.g.: `projects/myproject/locations/US/reservations/team1-prod` Or: `projects/mypr... |
| `pageSize` | `integer` | query | No | The maximum number of items to return per page. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListAssignmentsResponse`

```typescript
const res = await bigqueryreservation.assignments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.assignments.delete`

**DELETE** `v1/{+name}`

Deletes a assignment. No expansion will happen. Example: * Organization `organizationA` contains two projects, `project1` and `project2`. * Reservation `res1` exists and was created previously. * CreateAssignment was used previously to define the following associations between entities and reservations: `` and `` In this example, deletion of the `` assignment won't affect the other assignment ``. After said deletion, queries from `project1` will still use `res1` while queries from `project2` will switch to use on-demand mode.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource, e.g. `projects/myproject/locations/US/reservations/team1-prod/assignments/123` |

**Response**: `Empty`

```typescript
const res = await bigqueryreservation.assignments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.assignments.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource doesn't exist or you don't have the permission to view it. * An empty policy if the resource exists but doesn't have a set policy. Supported resources are: - Reservations - ReservationAssignments To call this method, you must have the following Google IAM permissions: - `bigqueryreservation.reservations.getIamPolicy` to get policies on reservations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await bigqueryreservation.assignments.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.assignments.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Gets your permissions on a resource. Returns an empty set of permissions if the resource doesn't exist. Supported resources are: - Reservations No Google IAM permissions are required to call this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigqueryreservation.assignments.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.assignments.create`

**POST** `v1/{+parent}/assignments`

Creates an assignment object which allows the given project to submit jobs of a certain type using slots from the specified reservation. Currently a resource (project, folder, organization) can only have one assignment per each (job_type, location) combination, and that reservation will be used for all jobs of the matching type. Different assignments can be created on different levels of the projects, folders or organization hierarchy. During query execution, the assignment is looked up at the project, folder and organization levels in that order. The first assignment found is applied to the query. When creating assignments, it does not matter if other assignments exist at higher levels. Example: * The organization `organizationA` contains two projects, `project1` and `project2`. * Assignments for all three entities (`organizationA`, `project1`, and `project2`) could all be created and mapped to the same or different reservations. "None" assignments represent an absence of the assignment. Projects assigned to None use on-demand pricing. To create a "None" assignment, use "none" as a reservation_id in the parent. Example parent: `projects/myproject/locations/US/reservations/none`. Returns `google.rpc.Code.PERMISSION_DENIED` if user does not have 'bigquery.admin' permissions on the project using the reservation and the project that owns this reservation. Returns `google.rpc.Code.INVALID_ARGUMENT` when location of the assignment does not match location of the reservation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name of the assignment E.g. `projects/myproject/locations/US/reservations/team1-prod` |
| `assignmentId` | `string` | query | No | The optional assignment ID. Assignment name will be generated automatically if this field is empty. This field must o... |

**Request body**: `Assignment`

**Response**: `Assignment`

```typescript
const res = await bigqueryreservation.assignments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.assignments.move`

**POST** `v1/{+name}:move`

Moves an assignment under a new reservation. This differs from removing an existing assignment and recreating a new one by providing a transactional change that ensures an assignee always has an associated reservation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the assignment, e.g. `projects/myproject/locations/US/reservations/team1-prod/assignme... |

**Request body**: `MoveAssignmentRequest`

**Response**: `Assignment`

```typescript
const res = await bigqueryreservation.assignments.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.assignments.patch`

**PATCH** `v1/{+name}`

Updates an existing assignment. Only the `priority` field can be updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Name of the resource. E.g.: `projects/myproject/locations/US/reservations/team1-prod/assignments/123`. T... |
| `updateMask` | `string` | query | No | Standard field mask for the set of fields to be updated. |

**Request body**: `Assignment`

**Response**: `Assignment`

```typescript
const res = await bigqueryreservation.assignments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservations.assignments.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets an access control policy for a resource. Replaces any existing policy. Supported resources are: - Reservations To call this method, you must have the following Google IAM permissions: - `bigqueryreservation.reservations.setIamPolicy` to set policies on reservations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigqueryreservation.assignments.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservationGroups.create`

**POST** `v1/{+parent}/reservationGroups`

Creates a new reservation group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project, location. E.g., `projects/myproject/locations/US` |
| `reservationGroupId` | `string` | query | No | Required. The reservation group ID. It must only contain lower case alphanumeric characters or dashes. It must start ... |

**Request body**: `ReservationGroup`

**Response**: `ReservationGroup`

```typescript
const res = await bigqueryreservation.reservationGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservationGroups.delete`

**DELETE** `v1/{+name}`

Deletes a reservation. Returns `google.rpc.Code.FAILED_PRECONDITION` when reservation has assignments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the reservation group to retrieve. E.g., `projects/myproject/locations/US/reservationGroup... |

**Response**: `Empty`

```typescript
const res = await bigqueryreservation.reservationGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservationGroups.list`

**GET** `v1/{+parent}/reservationGroups`

Lists all the reservation groups for the project in the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name containing project and location, e.g.: `projects/myproject/locations/US` |
| `pageSize` | `integer` | query | No | The maximum number of items to return per page. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListReservationGroupsResponse`

```typescript
const res = await bigqueryreservation.reservationGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryreservation.projects.locations.reservationGroups.get`

**GET** `v1/{+name}`

Returns information about the reservation group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the reservation group to retrieve. E.g., `projects/myproject/locations/US/reservationGroup... |

**Response**: `ReservationGroup`

```typescript
const res = await bigqueryreservation.reservationGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Assignment`

An assignment allows a project to submit jobs of a certain type using slots from the specified reservation.

| Property | Type | Description |
|----------|------|-------------|
| `assignee` | `string` | Optional. The resource which will use the reservation. E.g. `projects/myproject`, `folders/123`, ... |
| `enableGeminiInBigquery` | `boolean` | Optional. Deprecated: "Gemini in BigQuery" is now available by default for all BigQuery editions ... |
| `jobType` | `string` | Optional. Which type of jobs will use the reservation. |
| `name` | `string` | Output only. Name of the resource. E.g.: `projects/myproject/locations/US/reservations/team1-prod... |
| `schedulingPolicy` | `SchedulingPolicy` | Optional. The scheduling policy to use for jobs and queries of this assignee when running under t... |
| `state` | `string` | Output only. State of the assignment. |

### `AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `Autoscale`

Auto scaling settings.

| Property | Type | Description |
|----------|------|-------------|
| `currentSlots` | `string` | Output only. The slot capacity added to this reservation when autoscale happens. Will be between ... |
| `maxSlots` | `string` | Optional. Number of slots to be scaled when needed. |

### `BiReservation`

Represents a BI Reservation.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The resource name of the singleton BI reservation. Reservation names have the form `p... |
| `preferredTables` | `array<TableReference>` | Optional. Preferred tables to use BI capacity for. |
| `size` | `string` | Optional. Size of a reservation, in bytes. |
| `updateTime` | `string` | Output only. The last update timestamp of a reservation. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CapacityCommitment`

Capacity commitment is a way to purchase compute capacity for BigQuery jobs (in the form of slots) with some committed period of usage. Annual commitments renew by default. Commitments can be removed after their commitment end time passes. In order to remove annual commitment, its plan needs to be changed to monthly or flex first. A capacity commitment resource exists as a child resource of the admin project.

| Property | Type | Description |
|----------|------|-------------|
| `commitmentEndTime` | `string` | Output only. The end of the current commitment period. It is applicable only for ACTIVE capacity ... |
| `commitmentStartTime` | `string` | Output only. The start of the current commitment period. It is applicable only for ACTIVE capacit... |
| `edition` | `string` | Optional. Edition of the capacity commitment. |
| `failureStatus` | `Status` | Output only. For FAILED commitment plan, provides the reason of failure. |
| `isFlatRate` | `boolean` | Output only. If true, the commitment is a flat-rate commitment, otherwise, it's an edition commit... |
| `multiRegionAuxiliary` | `boolean` | Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If s... |
| `name` | `string` | Output only. The resource name of the capacity commitment, e.g., `projects/myproject/locations/US... |
| `plan` | `string` | Optional. Capacity commitment commitment plan. |
| `renewalPlan` | `string` | Optional. The plan this capacity commitment is converted to after commitment_end_time passes. Onc... |
| `slotCount` | `string` | Optional. Number of slots in this commitment. |
| `state` | `string` | Output only. State of the commitment. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `FailoverReservationRequest`

The request for ReservationService.FailoverReservation.

| Property | Type | Description |
|----------|------|-------------|
| `failoverMode` | `string` | Optional. A parameter that determines how writes that are pending replication are handled after a... |

### `ListAssignmentsResponse`

The response for ReservationService.ListAssignments.

| Property | Type | Description |
|----------|------|-------------|
| `assignments` | `array<Assignment>` | List of assignments visible to the user. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListCapacityCommitmentsResponse`

The response for ReservationService.ListCapacityCommitments.

| Property | Type | Description |
|----------|------|-------------|
| `capacityCommitments` | `array<CapacityCommitment>` | List of capacity commitments visible to the user. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListReservationGroupsResponse`

The response for ReservationService.ListReservationGroups.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `reservationGroups` | `array<ReservationGroup>` | List of reservations visible to the user. |

### `ListReservationsResponse`

The response for ReservationService.ListReservations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `reservations` | `array<Reservation>` | List of reservations visible to the user. |

### `MergeCapacityCommitmentsRequest`

The request for ReservationService.MergeCapacityCommitments.

| Property | Type | Description |
|----------|------|-------------|
| `capacityCommitmentId` | `string` | Optional. The optional resulting capacity commitment ID. Capacity commitment name will be generat... |
| `capacityCommitmentIds` | `array<string>` | Ids of capacity commitments to merge. These capacity commitments must exist under admin project a... |

### `MoveAssignmentRequest`

The request for ReservationService.MoveAssignment. **Note**: "bigquery.reservationAssignments.create" permission is required on the destination_id. **Note**: "bigquery.reservationAssignments.create" and "bigquery.reservationAssignments.delete" permission are required on the related assignee.

| Property | Type | Description |
|----------|------|-------------|
| `assignmentId` | `string` | The optional assignment ID. A new assignment name is generated if this field is empty. This field... |
| `destinationId` | `string` | The new reservation ID, e.g.: `projects/myotherproject/locations/US/reservations/team2-prod` |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ReplicationStatus`

Disaster Recovery(DR) replication status of the reservation.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | Output only. The last error encountered while trying to replicate changes from the primary to the... |
| `lastErrorTime` | `string` | Output only. The time at which the last error was encountered while trying to replicate changes f... |
| `lastReplicationTime` | `string` | Output only. A timestamp corresponding to the last change on the primary that was successfully re... |
| `softFailoverStartTime` | `string` | Output only. The time at which a soft failover for the reservation and its associated datasets wa... |

### `Reservation`

A reservation is a mechanism used to guarantee slots to users.

| Property | Type | Description |
|----------|------|-------------|
| `autoscale` | `Autoscale` | Optional. The configuration parameters for the auto scaling feature. |
| `concurrency` | `string` | Optional. Job concurrency target which sets a soft upper bound on the number of jobs that can run... |
| `creationTime` | `string` | Output only. Creation time of the reservation. |
| `edition` | `string` | Optional. Edition of the reservation. |
| `ignoreIdleSlots` | `boolean` | Optional. If false, any query or pipeline job using this reservation will use idle slots from oth... |
| `labels` | `object` | Optional. The labels associated with this reservation. You can use these to organize and group yo... |
| `maxSlots` | `string` | Optional. The overall max slots for the reservation, covering slot_capacity (baseline), idle slot... |
| `multiRegionAuxiliary` | `boolean` | Applicable only for reservations located within one of the BigQuery multi-regions (US or EU). If ... |
| `name` | `string` | Identifier. The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team... |
| `originalPrimaryLocation` | `string` | Output only. The location where the reservation was originally created. This is set only during t... |
| `primaryLocation` | `string` | Output only. The current location of the reservation's primary replica. This field is only set fo... |
| `replicationStatus` | `ReplicationStatus` | Output only. The Disaster Recovery(DR) replication status of the reservation. This is only availa... |
| `reservationGroup` | `string` | Optional. The reservation group that this reservation belongs to. You can set this property when ... |
| `scalingMode` | `string` | Optional. The scaling mode for the reservation. If the field is present but max_slots is not pres... |
| `schedulingPolicy` | `SchedulingPolicy` | Optional. The scheduling policy to use for jobs and queries running under this reservation. The s... |
| `secondaryLocation` | `string` | Optional. The current location of the reservation's secondary replica. This field is only set for... |
| `slotCapacity` | `string` | Optional. Baseline slots available to this reservation. A slot is a unit of computational power i... |
| `updateTime` | `string` | Output only. Last update time of the reservation. |

### `ReservationGroup`

A reservation group is a container for reservations.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The resource name of the reservation group, e.g., `projects/*/locations/*/reservation... |

### `SchedulingPolicy`

The scheduling policy controls how a reservation's resources are distributed.

| Property | Type | Description |
|----------|------|-------------|
| `concurrency` | `string` | Optional. If present and > 0, the reservation will attempt to limit the concurrency of jobs runni... |
| `maxSlots` | `string` | Optional. If present and > 0, the reservation will attempt to limit the slot consumption of queri... |

### `SearchAllAssignmentsResponse`

The response for ReservationService.SearchAllAssignments.

| Property | Type | Description |
|----------|------|-------------|
| `assignments` | `array<Assignment>` | List of assignments visible to the user. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `SearchAssignmentsResponse`

The response for ReservationService.SearchAssignments.

| Property | Type | Description |
|----------|------|-------------|
| `assignments` | `array<Assignment>` | List of assignments visible to the user. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `SplitCapacityCommitmentRequest`

The request for ReservationService.SplitCapacityCommitment.

| Property | Type | Description |
|----------|------|-------------|
| `slotCount` | `string` | Number of slots in the capacity commitment after the split. |

### `SplitCapacityCommitmentResponse`

The response for ReservationService.SplitCapacityCommitment.

| Property | Type | Description |
|----------|------|-------------|
| `first` | `CapacityCommitment` | First capacity commitment, result of a split. |
| `second` | `CapacityCommitment` | Second capacity commitment, result of a split. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TableReference`

Fully qualified reference to BigQuery table. Internally stored as google.cloud.bi.v1.BqTableReference.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | Optional. The ID of the dataset in the above project. |
| `projectId` | `string` | Optional. The assigned project ID of the project. |
| `tableId` | `string` | Optional. The ID of the table in the above dataset. |

### `TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

