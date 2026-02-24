# Cloud Monitoring API - API Reference

**Version**: `v3` | **Methods**: 56 | **Schemas**: 131

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `monitoring.projects.metricDescriptors.delete` | DELETE | `v3/{+name}` | Deletes a metric descriptor. Only user-created custom metrics (https://cloud.google.com/monitorin... |
| `monitoring.projects.metricDescriptors.list` | GET | `v3/{+name}/metricDescriptors` | Lists metric descriptors that match a filter. |
| `monitoring.projects.metricDescriptors.get` | GET | `v3/{+name}` | Gets a single metric descriptor. |
| `monitoring.projects.metricDescriptors.create` | POST | `v3/{+name}/metricDescriptors` | Creates a new metric descriptor. The creation is executed asynchronously. User-created metric des... |
| `monitoring.projects.collectdTimeSeries.create` | POST | `v3/{+name}/collectdTimeSeries` | Cloud Monitoring Agent only: Creates a new time series.This method is only for use by the Cloud M... |
| `monitoring.projects.alertPolicies.patch` | PATCH | `v3/{+name}` | Updates an alerting policy. You can either replace the entire policy with a new one or replace on... |
| `monitoring.projects.alertPolicies.create` | POST | `v3/{+name}/alertPolicies` | Creates a new alerting policy.Design your application to single-thread API calls that modify the ... |
| `monitoring.projects.alertPolicies.list` | GET | `v3/{+name}/alertPolicies` | Lists the existing alerting policies for the workspace. |
| `monitoring.projects.alertPolicies.get` | GET | `v3/{+name}` | Gets a single alerting policy. |
| `monitoring.projects.alertPolicies.delete` | DELETE | `v3/{+name}` | Deletes an alerting policy.Design your application to single-thread API calls that modify the sta... |
| `monitoring.projects.alerts.list` | GET | `v3/{+parent}/alerts` | Lists the existing alerts for the metrics scope of the project. |
| `monitoring.projects.alerts.get` | GET | `v3/{+name}` | Gets a single alert. |
| `monitoring.projects.notificationChannelDescriptors.list` | GET | `v3/{+name}/notificationChannelDescriptors` | Lists the descriptors for supported channel types. The use of descriptors makes it possible for n... |
| `monitoring.projects.notificationChannelDescriptors.get` | GET | `v3/{+name}` | Gets a single channel descriptor. The descriptor indicates which fields are expected / permitted ... |
| `monitoring.projects.groups.get` | GET | `v3/{+name}` | Gets a single group. |
| `monitoring.projects.groups.update` | PUT | `v3/{+name}` | Updates an existing group. You can change any group attributes except name. |
| `monitoring.projects.groups.create` | POST | `v3/{+name}/groups` | Creates a new group. |
| `monitoring.projects.groups.delete` | DELETE | `v3/{+name}` | Deletes an existing group. |
| `monitoring.projects.groups.list` | GET | `v3/{+name}/groups` | Lists the existing groups. |
| `monitoring.projects.groups.members.list` | GET | `v3/{+name}/members` | Lists the monitored resources that are members of a group. |
| `monitoring.projects.notificationChannels.get` | GET | `v3/{+name}` | Gets a single notification channel. The channel includes the relevant configuration details with ... |
| `monitoring.projects.notificationChannels.delete` | DELETE | `v3/{+name}` | Deletes a notification channel.Design your application to single-thread API calls that modify the... |
| `monitoring.projects.notificationChannels.patch` | PATCH | `v3/{+name}` | Updates a notification channel. Fields not specified in the field mask remain unchanged.Design yo... |
| `monitoring.projects.notificationChannels.sendVerificationCode` | POST | `v3/{+name}:sendVerificationCode` | Causes a verification code to be delivered to the channel. The code can then be supplied in Verif... |
| `monitoring.projects.notificationChannels.create` | POST | `v3/{+name}/notificationChannels` | Creates a new notification channel, representing a single notification endpoint such as an email ... |
| `monitoring.projects.notificationChannels.verify` | POST | `v3/{+name}:verify` | Verifies a NotificationChannel by proving receipt of the code delivered to the channel as a resul... |
| `monitoring.projects.notificationChannels.getVerificationCode` | POST | `v3/{+name}:getVerificationCode` | Requests a verification code for an already verified channel that can then be used in a call to V... |
| `monitoring.projects.notificationChannels.list` | GET | `v3/{+name}/notificationChannels` | Lists the notification channels that have been created for the project. To list the types of noti... |
| `monitoring.projects.uptimeCheckConfigs.get` | GET | `v3/{+name}` | Gets a single Uptime check configuration. |
| `monitoring.projects.uptimeCheckConfigs.create` | POST | `v3/{+parent}/uptimeCheckConfigs` | Creates a new Uptime check configuration. |
| `monitoring.projects.uptimeCheckConfigs.list` | GET | `v3/{+parent}/uptimeCheckConfigs` | Lists the existing valid Uptime check configurations for the project (leaving out any invalid con... |
| `monitoring.projects.uptimeCheckConfigs.patch` | PATCH | `v3/{+name}` | Updates an Uptime check configuration. You can either replace the entire configuration with a new... |
| `monitoring.projects.uptimeCheckConfigs.delete` | DELETE | `v3/{+name}` | Deletes an Uptime check configuration. Note that this method will fail if the Uptime check config... |
| `monitoring.projects.snoozes.list` | GET | `v3/{+parent}/snoozes` | Lists the Snoozes associated with a project. Can optionally pass in filter, which specifies predi... |
| `monitoring.projects.snoozes.get` | GET | `v3/{+name}` | Retrieves a Snooze by name. |
| `monitoring.projects.snoozes.patch` | PATCH | `v3/{+name}` | Updates a Snooze, identified by its name, with the parameters in the given Snooze object. |
| `monitoring.projects.snoozes.create` | POST | `v3/{+parent}/snoozes` | Creates a Snooze that will prevent alerts, which match the provided criteria, from being opened. ... |
| `monitoring.projects.timeSeries.list` | GET | `v3/{+name}/timeSeries` | Lists time series that match a filter. |
| `monitoring.projects.timeSeries.create` | POST | `v3/{+name}/timeSeries` | Creates or adds data to one or more time series. The response is empty if all time series in the ... |
| `monitoring.projects.timeSeries.createService` | POST | `v3/{+name}/timeSeries:createService` | Creates or adds data to one or more service time series. A service time series is a time series f... |
| `monitoring.projects.timeSeries.query` | POST | `v3/{+name}/timeSeries:query` | Queries time series by using Monitoring Query Language (MQL). We recommend using PromQL instead o... |
| `monitoring.projects.monitoredResourceDescriptors.get` | GET | `v3/{+name}` | Gets a single monitored resource descriptor. |
| `monitoring.projects.monitoredResourceDescriptors.list` | GET | `v3/{+name}/monitoredResourceDescriptors` | Lists monitored resource descriptors that match a filter. |
| `monitoring.uptimeCheckIps.list` | GET | `v3/uptimeCheckIps` | Returns the list of IP addresses that checkers run from. |
| `monitoring.services.patch` | PATCH | `v3/{+name}` | Update this Service. |
| `monitoring.services.delete` | DELETE | `v3/{+name}` | Soft delete this Service. |
| `monitoring.services.create` | POST | `v3/{+parent}/services` | Create a Service. |
| `monitoring.services.get` | GET | `v3/{+name}` | Get the named Service. |
| `monitoring.services.list` | GET | `v3/{+parent}/services` | List Services for this Metrics Scope. |
| `monitoring.services.serviceLevelObjectives.delete` | DELETE | `v3/{+name}` | Delete the given ServiceLevelObjective. |
| `monitoring.services.serviceLevelObjectives.patch` | PATCH | `v3/{+name}` | Update the given ServiceLevelObjective. |
| `monitoring.services.serviceLevelObjectives.list` | GET | `v3/{+parent}/serviceLevelObjectives` | List the ServiceLevelObjectives for the given Service. |
| `monitoring.services.serviceLevelObjectives.get` | GET | `v3/{+name}` | Get a ServiceLevelObjective by name. |
| `monitoring.services.serviceLevelObjectives.create` | POST | `v3/{+parent}/serviceLevelObjectives` | Create a ServiceLevelObjective for the given Service. |
| `monitoring.organizations.timeSeries.list` | GET | `v3/{+name}/timeSeries` | Lists time series that match a filter. |
| `monitoring.folders.timeSeries.list` | GET | `v3/{+name}/timeSeries` | Lists time series that match a filter. |

### `monitoring.projects.metricDescriptors.delete`

**DELETE** `v3/{+name}`

Deletes a metric descriptor. Only user-created custom metrics (https://cloud.google.com/monitoring/custom-metrics) can be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The metric descriptor on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER]/metri... |

**Response**: `Empty`

```typescript
const res = await monitoring.metricDescriptors.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.metricDescriptors.list`

**GET** `v3/{+name}/metricDescriptors`

Lists metric descriptors that match a filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The ... |
| `activeOnly` | `boolean` | query | No | Optional. If true, only metrics and monitored resource types that have recent data (within roughly 25 hours) will be ... |
| `filter` | `string` | query | No | Optional. If this field is empty, all custom and system-defined metric descriptors are returned. Otherwise, the filte... |
| `pageSize` | `integer` | query | No | Optional. A positive number that is the maximum number of results to return. The default and maximum value is 10,000.... |
| `pageToken` | `string` | query | No | Optional. If this field is not empty then it must contain the nextPageToken value returned by a previous call to this... |

**Response**: `ListMetricDescriptorsResponse`

```typescript
const res = await monitoring.metricDescriptors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`
- `https://www.googleapis.com/auth/monitoring.write`

---

### `monitoring.projects.metricDescriptors.get`

**GET** `v3/{+name}`

Gets a single metric descriptor.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The metric descriptor on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER]/metri... |

**Response**: `MetricDescriptor`

```typescript
const res = await monitoring.metricDescriptors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`
- `https://www.googleapis.com/auth/monitoring.write`

---

### `monitoring.projects.metricDescriptors.create`

**POST** `v3/{+name}/metricDescriptors`

Creates a new metric descriptor. The creation is executed asynchronously. User-created metric descriptors define custom metrics (https://cloud.google.com/monitoring/custom-metrics). The metric descriptor is updated if it already exists, except that metric labels are never removed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The ... |

**Request body**: `MetricDescriptor`

**Response**: `MetricDescriptor`

```typescript
const res = await monitoring.metricDescriptors.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.write`

---

### `monitoring.projects.collectdTimeSeries.create`

**POST** `v3/{+name}/collectdTimeSeries`

Cloud Monitoring Agent only: Creates a new time series.This method is only for use by the Cloud Monitoring Agent. Use projects.timeSeries.create instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The project (https://cloud.google.com/monitoring/api/v3#project_name) in which to create the time series. The format ... |

**Request body**: `CreateCollectdTimeSeriesRequest`

**Response**: `CreateCollectdTimeSeriesResponse`

```typescript
const res = await monitoring.collectdTimeSeries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.write`

---

### `monitoring.projects.alertPolicies.patch`

**PATCH** `v3/{+name}`

Updates an alerting policy. You can either replace the entire policy with a new one or replace only certain fields in the current alerting policy by specifying the fields to be updated via updateMask. Returns the updated alerting policy.Design your application to single-thread API calls that modify the state of alerting policies in a single project. This includes calls to CreateAlertPolicy, DeleteAlertPolicy and UpdateAlertPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Required if the policy exists. The resource name for this policy. The format is: projects/[PROJECT_ID_OR_... |
| `updateMask` | `string` | query | No | Optional. A list of alerting policy field names. If this field is not empty, each listed field in the existing alerti... |

**Request body**: `AlertPolicy`

**Response**: `AlertPolicy`

```typescript
const res = await monitoring.alertPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.alertPolicies.create`

**POST** `v3/{+name}/alertPolicies`

Creates a new alerting policy.Design your application to single-thread API calls that modify the state of alerting policies in a single project. This includes calls to CreateAlertPolicy, DeleteAlertPolicy and UpdateAlertPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) in which to create the alerting polic... |

**Request body**: `AlertPolicy`

**Response**: `AlertPolicy`

```typescript
const res = await monitoring.alertPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.alertPolicies.list`

**GET** `v3/{+name}/alertPolicies`

Lists the existing alerting policies for the workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) whose alert policies are to be listed... |
| `filter` | `string` | query | No | Optional. If provided, this field specifies the criteria that must be met by alert policies to be included in the res... |
| `orderBy` | `string` | query | No | Optional. A comma-separated list of fields by which to sort the result. Supports the same set of field references as ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return in a single response. |
| `pageToken` | `string` | query | No | Optional. If this field is not empty then it must contain the nextPageToken value returned by a previous call to this... |

**Response**: `ListAlertPoliciesResponse`

```typescript
const res = await monitoring.alertPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.alertPolicies.get`

**GET** `v3/{+name}`

Gets a single alerting policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The alerting policy to retrieve. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY... |

**Response**: `AlertPolicy`

```typescript
const res = await monitoring.alertPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.alertPolicies.delete`

**DELETE** `v3/{+name}`

Deletes an alerting policy.Design your application to single-thread API calls that modify the state of alerting policies in a single project. This includes calls to CreateAlertPolicy, DeleteAlertPolicy and UpdateAlertPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The alerting policy to delete. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_I... |

**Response**: `Empty`

```typescript
const res = await monitoring.alertPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.alerts.list`

**GET** `v3/{+parent}/alerts`

Lists the existing alerts for the metrics scope of the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project to list alerts for. |
| `filter` | `string` | query | No | Optional. An alert is returned if there is a match on any fields belonging to the alert or its subfields. |
| `orderBy` | `string` | query | No | Optional. A comma-separated list of fields in Alert to use for sorting. The default sort direction is ascending. To s... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return in a single response. If not set to a positive number, at most 50 a... |
| `pageToken` | `string` | query | No | Optional. If non-empty, page_token must contain a value returned as the next_page_token in a previous response to req... |

**Response**: `ListAlertsResponse`

```typescript
const res = await monitoring.alerts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.alerts.get`

**GET** `v3/{+name}`

Gets a single alert.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the alert.The format is: projects/[PROJECT_ID_OR_NUMBER]/alerts/[ALERT_ID] The [ALERT_ID] is a ... |

**Response**: `Alert`

```typescript
const res = await monitoring.alerts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.notificationChannelDescriptors.list`

**GET** `v3/{+name}/notificationChannelDescriptors`

Lists the descriptors for supported channel types. The use of descriptors makes it possible for new channel types to be dynamically added.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The REST resource name of the parent from which to retrieve the notification channel descriptors. The expec... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. If not set to a positive number, a reasonable value wil... |
| `pageToken` | `string` | query | No | If non-empty, page_token must contain a value returned as the next_page_token in a previous response to request the n... |

**Response**: `ListNotificationChannelDescriptorsResponse`

```typescript
const res = await monitoring.notificationChannelDescriptors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.notificationChannelDescriptors.get`

**GET** `v3/{+name}`

Gets a single channel descriptor. The descriptor indicates which fields are expected / permitted for a notification channel of the given type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The channel type for which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificat... |

**Response**: `NotificationChannelDescriptor`

```typescript
const res = await monitoring.notificationChannelDescriptors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.groups.get`

**GET** `v3/{+name}`

Gets a single group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The group to retrieve. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] |

**Response**: `Group`

```typescript
const res = await monitoring.groups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.groups.update`

**PUT** `v3/{+name}`

Updates an existing group. You can change any group attributes except name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The name of this group. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] When creating a... |
| `validateOnly` | `boolean` | query | No | If true, validate this request but do not update the existing group. |

**Request body**: `Group`

**Response**: `Group`

```typescript
const res = await monitoring.groups.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.groups.create`

**POST** `v3/{+name}/groups`

Creates a new group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) in which to create the group. The for... |
| `validateOnly` | `boolean` | query | No | If true, validate this request but do not create the group. |

**Request body**: `Group`

**Response**: `Group`

```typescript
const res = await monitoring.groups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.groups.delete`

**DELETE** `v3/{+name}`

Deletes an existing group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The group to delete. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] |
| `recursive` | `boolean` | query | No | If this field is true, then the request means to delete a group with all its descendants. Otherwise, the request mean... |

**Response**: `Empty`

```typescript
const res = await monitoring.groups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.groups.list`

**GET** `v3/{+name}/groups`

Lists the existing groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) whose groups are to be listed. The fo... |
| `ancestorsOfGroup` | `string` | query | No | A group name. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] Returns groups that are ancestors of t... |
| `childrenOfGroup` | `string` | query | No | A group name. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] Returns groups whose parent_name field... |
| `descendantsOfGroup` | `string` | query | No | A group name. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] Returns the descendants of the specifi... |
| `pageSize` | `integer` | query | No | A positive number that is the maximum number of results to return. |
| `pageToken` | `string` | query | No | If this field is not empty then it must contain the next_page_token value returned by a previous call to this method.... |

**Response**: `ListGroupsResponse`

```typescript
const res = await monitoring.groups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.groups.members.list`

**GET** `v3/{+name}/members`

Lists the monitored resources that are members of a group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The group whose members are listed. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] |
| `filter` | `string` | query | No | An optional list filter (https://cloud.google.com/monitoring/api/learn_more#filtering) describing the members to be r... |
| `interval.endTime` | `string` | query | No | Required. The end of the time interval. |
| `interval.startTime` | `string` | query | No | Optional. The beginning of the time interval. The default value for the start time is the end time. The start time mu... |
| `pageSize` | `integer` | query | No | A positive number that is the maximum number of results to return. |
| `pageToken` | `string` | query | No | If this field is not empty then it must contain the next_page_token value returned by a previous call to this method.... |

**Response**: `ListGroupMembersResponse`

```typescript
const res = await monitoring.members.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.notificationChannels.get`

**GET** `v3/{+name}`

Gets a single notification channel. The channel includes the relevant configuration details with which the channel was created. However, the response may truncate or omit passwords, API keys, or other private key matter and thus the response may not be 100% identical to the information that was supplied in the call to the create method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The channel for which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationCh... |

**Response**: `NotificationChannel`

```typescript
const res = await monitoring.notificationChannels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.notificationChannels.delete`

**DELETE** `v3/{+name}`

Deletes a notification channel.Design your application to single-thread API calls that modify the state of notification channels in a single project. This includes calls to CreateNotificationChannel, DeleteNotificationChannel and UpdateNotificationChannel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The channel for which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationCh... |
| `force` | `boolean` | query | No | If true, the notification channel will be deleted regardless of its use in alert policies (the policies will be updat... |

**Response**: `Empty`

```typescript
const res = await monitoring.notificationChannels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.notificationChannels.patch`

**PATCH** `v3/{+name}`

Updates a notification channel. Fields not specified in the field mask remain unchanged.Design your application to single-thread API calls that modify the state of notification channels in a single project. This includes calls to CreateNotificationChannel, DeleteNotificationChannel and UpdateNotificationChannel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The full REST resource name for this channel. The format is: projects/[PROJECT_ID_OR_NUMBER]/notification... |
| `updateMask` | `string` | query | No | Optional. The fields to update. |

**Request body**: `NotificationChannel`

**Response**: `NotificationChannel`

```typescript
const res = await monitoring.notificationChannels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.notificationChannels.sendVerificationCode`

**POST** `v3/{+name}:sendVerificationCode`

Causes a verification code to be delivered to the channel. The code can then be supplied in VerifyNotificationChannel to verify the channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The notification channel to which to send a verification code. |

**Request body**: `SendNotificationChannelVerificationCodeRequest`

**Response**: `Empty`

```typescript
const res = await monitoring.notificationChannels.sendVerificationCode({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.notificationChannels.create`

**POST** `v3/{+name}/notificationChannels`

Creates a new notification channel, representing a single notification endpoint such as an email address, SMS number, or PagerDuty service.Design your application to single-thread API calls that modify the state of notification channels in a single project. This includes calls to CreateNotificationChannel, DeleteNotificationChannel and UpdateNotificationChannel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The ... |

**Request body**: `NotificationChannel`

**Response**: `NotificationChannel`

```typescript
const res = await monitoring.notificationChannels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.notificationChannels.verify`

**POST** `v3/{+name}:verify`

Verifies a NotificationChannel by proving receipt of the code delivered to the channel as a result of calling SendNotificationChannelVerificationCode.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The notification channel to verify. |

**Request body**: `VerifyNotificationChannelRequest`

**Response**: `NotificationChannel`

```typescript
const res = await monitoring.notificationChannels.verify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.notificationChannels.getVerificationCode`

**POST** `v3/{+name}:getVerificationCode`

Requests a verification code for an already verified channel that can then be used in a call to VerifyNotificationChannel() on a different channel with an equivalent identity in the same or in a different project. This makes it possible to copy a channel between projects without requiring manual reverification of the channel. If the channel is not in the verified state, this method will fail (in other words, this may only be used if the SendNotificationChannelVerificationCode and VerifyNotificationChannel paths have already been used to put the given channel into the verified state).There is no guarantee that the verification codes returned by this method will be of a similar structure or form as the ones that are delivered to the channel via SendNotificationChannelVerificationCode; while VerifyNotificationChannel() will recognize both the codes delivered via SendNotificationChannelVerificationCode() and returned from GetNotificationChannelVerificationCode(), it is typically the case that the verification codes delivered via SendNotificationChannelVerificationCode() will be shorter and also have a shorter expiration (e.g. codes such as "G-123456") whereas GetVerificationCode() will typically return a much longer, websafe base 64 encoded string that has a longer expiration time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The notification channel for which a verification code is to be generated and retrieved. This must name a c... |

**Request body**: `GetNotificationChannelVerificationCodeRequest`

**Response**: `GetNotificationChannelVerificationCodeResponse`

```typescript
const res = await monitoring.notificationChannels.getVerificationCode({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.notificationChannels.list`

**GET** `v3/{+name}/notificationChannels`

Lists the notification channels that have been created for the project. To list the types of notification channels that are supported, use the ListNotificationChannelDescriptors method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The ... |
| `filter` | `string` | query | No | Optional. If provided, this field specifies the criteria that must be met by notification channels to be included in ... |
| `orderBy` | `string` | query | No | Optional. A comma-separated list of fields by which to sort the result. Supports the same set of fields as in filter.... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return in a single response. If not set to a positive number, a reasonable... |
| `pageToken` | `string` | query | No | Optional. If non-empty, page_token must contain a value returned as the next_page_token in a previous response to req... |

**Response**: `ListNotificationChannelsResponse`

```typescript
const res = await monitoring.notificationChannels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.uptimeCheckConfigs.get`

**GET** `v3/{+name}`

Gets a single Uptime check configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The Uptime check configuration to retrieve. The format is: projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfi... |

**Response**: `UptimeCheckConfig`

```typescript
const res = await monitoring.uptimeCheckConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.uptimeCheckConfigs.create`

**POST** `v3/{+parent}/uptimeCheckConfigs`

Creates a new Uptime check configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) in which to create the Uptime check. ... |

**Request body**: `UptimeCheckConfig`

**Response**: `UptimeCheckConfig`

```typescript
const res = await monitoring.uptimeCheckConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.uptimeCheckConfigs.list`

**GET** `v3/{+parent}/uptimeCheckConfigs`

Lists the existing valid Uptime check configurations for the project (leaving out any invalid configurations).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) whose Uptime check configurations are... |
| `filter` | `string` | query | No | If provided, this field specifies the criteria that must be met by uptime checks to be included in the response.For m... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. The server may further constrain the maximum number of ... |
| `pageToken` | `string` | query | No | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. U... |

**Response**: `ListUptimeCheckConfigsResponse`

```typescript
const res = await monitoring.uptimeCheckConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.uptimeCheckConfigs.patch`

**PATCH** `v3/{+name}`

Updates an Uptime check configuration. You can either replace the entire configuration with a new one or replace only certain fields in the current configuration by specifying the fields to be updated via updateMask. Returns the updated configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. A unique resource name for this Uptime check configuration. The format is: projects/[PROJECT_ID_OR_NUMBER... |
| `updateMask` | `string` | query | No | Optional. If present, only the listed fields in the current Uptime check configuration are updated with values from t... |

**Request body**: `UptimeCheckConfig`

**Response**: `UptimeCheckConfig`

```typescript
const res = await monitoring.uptimeCheckConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.uptimeCheckConfigs.delete`

**DELETE** `v3/{+name}`

Deletes an Uptime check configuration. Note that this method will fail if the Uptime check configuration is referenced by an alert policy or other dependent configs that would be rendered invalid by the deletion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The Uptime check configuration to delete. The format is: projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs... |

**Response**: `Empty`

```typescript
const res = await monitoring.uptimeCheckConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.snoozes.list`

**GET** `v3/{+parent}/snoozes`

Lists the Snoozes associated with a project. Can optionally pass in filter, which specifies predicates to match Snoozes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) whose Snoozes should be listed. The f... |
| `filter` | `string` | query | No | Optional. Optional filter to restrict results to the given criteria. The following fields are supported. interval.sta... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return for a single query. The server may further constrain the maximum nu... |
| `pageToken` | `string` | query | No | Optional. The next_page_token from a previous call to ListSnoozesRequest to get the next page of results. |

**Response**: `ListSnoozesResponse`

```typescript
const res = await monitoring.snoozes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.snoozes.get`

**GET** `v3/{+name}`

Retrieves a Snooze by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The ID of the Snooze to retrieve. The format is: projects/[PROJECT_ID_OR_NUMBER]/snoozes/[SNOOZE_ID] |

**Response**: `Snooze`

```typescript
const res = await monitoring.snoozes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.snoozes.patch`

**PATCH** `v3/{+name}`

Updates a Snooze, identified by its name, with the parameters in the given Snooze object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. The name of the Snooze. The format is: projects/[PROJECT_ID_OR_NUMBER]/snoozes/[SNOOZE_ID] The ... |
| `updateMask` | `string` | query | No | Required. The fields to update.For each field listed in update_mask: If the Snooze object supplied in the UpdateSnooz... |

**Request body**: `Snooze`

**Response**: `Snooze`

```typescript
const res = await monitoring.snoozes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.snoozes.create`

**POST** `v3/{+parent}/snoozes`

Creates a Snooze that will prevent alerts, which match the provided criteria, from being opened. The Snooze applies for a specific time interval.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) in which a Snooze should be created. ... |

**Request body**: `Snooze`

**Response**: `Snooze`

```typescript
const res = await monitoring.snoozes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.projects.timeSeries.list`

**GET** `v3/{+name}/timeSeries`

Lists time series that match a filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name), organization or folder on which to e... |
| `aggregation.alignmentPeriod` | `string` | query | No | The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series in... |
| `aggregation.crossSeriesReducer` | `string` | query | No | The reduction operation to be used to combine time series into a single time series, where the value of each data poi... |
| `aggregation.groupByFields` | `string` | query | No | The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time seri... |
| `aggregation.perSeriesAligner` | `string` | query | No | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_N... |
| `filter` | `string` | query | No | Required. A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that specifies which time series s... |
| `interval.endTime` | `string` | query | No | Required. The end of the time interval. |
| `interval.startTime` | `string` | query | No | Optional. The beginning of the time interval. The default value for the start time is the end time. The start time mu... |
| `orderBy` | `string` | query | No | Unsupported: must be left blank. The points in each time series are currently returned in reverse time order (most re... |
| `pageSize` | `integer` | query | No | A positive number that is the maximum number of results to return. If page_size is empty or more than 100,000 results... |
| `pageToken` | `string` | query | No | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. U... |
| `secondaryAggregation.alignmentPeriod` | `string` | query | No | The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series in... |
| `secondaryAggregation.crossSeriesReducer` | `string` | query | No | The reduction operation to be used to combine time series into a single time series, where the value of each data poi... |
| `secondaryAggregation.groupByFields` | `string` | query | No | The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time seri... |
| `secondaryAggregation.perSeriesAligner` | `string` | query | No | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_N... |
| `view` | `string` | query | No | Required. Specifies which information is returned about the time series. |

**Response**: `ListTimeSeriesResponse`

```typescript
const res = await monitoring.timeSeries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.timeSeries.create`

**POST** `v3/{+name}/timeSeries`

Creates or adds data to one or more time series. The response is empty if all time series in the request were written. If any time series could not be written, a corresponding failure message is included in the error response. This method does not support resource locations constraint of an organization policy (https://cloud.google.com/resource-manager/docs/organization-policy/defining-locations#setting_the_organization_policy).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The ... |

**Request body**: `CreateTimeSeriesRequest`

**Response**: `Empty`

```typescript
const res = await monitoring.timeSeries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.write`

---

### `monitoring.projects.timeSeries.createService`

**POST** `v3/{+name}/timeSeries:createService`

Creates or adds data to one or more service time series. A service time series is a time series for a metric from a Google Cloud service. The response is empty if all time series in the request were written. If any time series could not be written, a corresponding failure message is included in the error response. This endpoint rejects writes to user-defined metrics. This method is only for use by Google Cloud services. Use projects.timeSeries.create instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The ... |

**Request body**: `CreateTimeSeriesRequest`

**Response**: `Empty`

```typescript
const res = await monitoring.timeSeries.createService({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.write`

---

### `monitoring.projects.timeSeries.query`

**POST** `v3/{+name}/timeSeries:query`

Queries time series by using Monitoring Query Language (MQL). We recommend using PromQL instead of MQL. For more information about the status of MQL, see the MQL deprecation notice (https://cloud.google.com/stackdriver/docs/deprecations/mql).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The ... |

**Request body**: `QueryTimeSeriesRequest`

**Response**: `QueryTimeSeriesResponse`

```typescript
const res = await monitoring.timeSeries.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.projects.monitoredResourceDescriptors.get`

**GET** `v3/{+name}`

Gets a single monitored resource descriptor.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The monitored resource descriptor to get. The format is: projects/[PROJECT_ID_OR_NUMBER]/monitoredResourceD... |

**Response**: `MonitoredResourceDescriptor`

```typescript
const res = await monitoring.monitoredResourceDescriptors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`
- `https://www.googleapis.com/auth/monitoring.write`

---

### `monitoring.projects.monitoredResourceDescriptors.list`

**GET** `v3/{+name}/monitoredResourceDescriptors`

Lists monitored resource descriptors that match a filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The ... |
| `filter` | `string` | query | No | An optional filter (https://cloud.google.com/monitoring/api/v3/filters) describing the descriptors to be returned. Th... |
| `pageSize` | `integer` | query | No | A positive number that is the maximum number of results to return. |
| `pageToken` | `string` | query | No | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. U... |

**Response**: `ListMonitoredResourceDescriptorsResponse`

```typescript
const res = await monitoring.monitoredResourceDescriptors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`
- `https://www.googleapis.com/auth/monitoring.write`

---

### `monitoring.uptimeCheckIps.list`

**GET** `v3/uptimeCheckIps`

Returns the list of IP addresses that checkers run from.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. The server may further constrain the maximum number of ... |
| `pageToken` | `string` | query | No | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. U... |

**Response**: `ListUptimeCheckIpsResponse`

```typescript
const res = await monitoring.uptimeCheckIps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.services.patch`

**PATCH** `v3/{+name}`

Update this Service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name for this Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID] |
| `updateMask` | `string` | query | No | A set of field paths defining which fields to use for the update. |

**Request body**: `Service`

**Response**: `Service`

```typescript
const res = await monitoring.services.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.services.delete`

**DELETE** `v3/{+name}`

Soft delete this Service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Service to delete. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID] |

**Response**: `Empty`

```typescript
const res = await monitoring.services.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.services.create`

**POST** `v3/{+parent}/services`

Create a Service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name (https://cloud.google.com/monitoring/api/v3#project_name) of the parent Metrics Scope. The fo... |
| `serviceId` | `string` | query | No | Optional. The Service id to use for this Service. If omitted, an id will be generated instead. Must match the pattern... |

**Request body**: `Service`

**Response**: `Service`

```typescript
const res = await monitoring.services.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.services.get`

**GET** `v3/{+name}`

Get the named Service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID] |

**Response**: `Service`

```typescript
const res = await monitoring.services.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.services.list`

**GET** `v3/{+parent}/services`

List Services for this Metrics Scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the parent containing the listed services, either a project (https://cloud.google.com/moni... |
| `filter` | `string` | query | No | A filter specifying what Services to return. The filter supports filtering on a particular service-identifier type or... |
| `pageSize` | `integer` | query | No | A non-negative number that is the maximum number of results to return. When 0, use default page size. |
| `pageToken` | `string` | query | No | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. U... |

**Response**: `ListServicesResponse`

```typescript
const res = await monitoring.services.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.services.serviceLevelObjectives.delete`

**DELETE** `v3/{+name}`

Delete the given ServiceLevelObjective.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the ServiceLevelObjective to delete. The format is: projects/[PROJECT_ID_OR_NUMBER]/servic... |

**Response**: `Empty`

```typescript
const res = await monitoring.serviceLevelObjectives.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.services.serviceLevelObjectives.patch`

**PATCH** `v3/{+name}`

Update the given ServiceLevelObjective.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name for this ServiceLevelObjective. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SE... |
| `updateMask` | `string` | query | No | A set of field paths defining which fields to use for the update. |

**Request body**: `ServiceLevelObjective`

**Response**: `ServiceLevelObjective`

```typescript
const res = await monitoring.serviceLevelObjectives.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.services.serviceLevelObjectives.list`

**GET** `v3/{+parent}/serviceLevelObjectives`

List the ServiceLevelObjectives for the given Service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the parent containing the listed SLOs, either a project or a Monitoring Metrics Scope. The... |
| `filter` | `string` | query | No | A filter specifying what ServiceLevelObjectives to return. |
| `pageSize` | `integer` | query | No | A non-negative number that is the maximum number of results to return. When 0, use default page size. |
| `pageToken` | `string` | query | No | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. U... |
| `view` | `string` | query | No | View of the ServiceLevelObjectives to return. If DEFAULT, return each ServiceLevelObjective as originally defined. If... |

**Response**: `ListServiceLevelObjectivesResponse`

```typescript
const res = await monitoring.serviceLevelObjectives.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.services.serviceLevelObjectives.get`

**GET** `v3/{+name}`

Get a ServiceLevelObjective by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the ServiceLevelObjective to get. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/... |
| `view` | `string` | query | No | View of the ServiceLevelObjective to return. If DEFAULT, return the ServiceLevelObjective as originally defined. If E... |

**Response**: `ServiceLevelObjective`

```typescript
const res = await monitoring.serviceLevelObjectives.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.services.serviceLevelObjectives.create`

**POST** `v3/{+parent}/serviceLevelObjectives`

Create a ServiceLevelObjective for the given Service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the parent Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID] |
| `serviceLevelObjectiveId` | `string` | query | No | Optional. The ServiceLevelObjective id to use for this ServiceLevelObjective. If omitted, an id will be generated ins... |

**Request body**: `ServiceLevelObjective`

**Response**: `ServiceLevelObjective`

```typescript
const res = await monitoring.serviceLevelObjectives.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`

---

### `monitoring.organizations.timeSeries.list`

**GET** `v3/{+name}/timeSeries`

Lists time series that match a filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name), organization or folder on which to e... |
| `aggregation.alignmentPeriod` | `string` | query | No | The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series in... |
| `aggregation.crossSeriesReducer` | `string` | query | No | The reduction operation to be used to combine time series into a single time series, where the value of each data poi... |
| `aggregation.groupByFields` | `string` | query | No | The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time seri... |
| `aggregation.perSeriesAligner` | `string` | query | No | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_N... |
| `filter` | `string` | query | No | Required. A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that specifies which time series s... |
| `interval.endTime` | `string` | query | No | Required. The end of the time interval. |
| `interval.startTime` | `string` | query | No | Optional. The beginning of the time interval. The default value for the start time is the end time. The start time mu... |
| `orderBy` | `string` | query | No | Unsupported: must be left blank. The points in each time series are currently returned in reverse time order (most re... |
| `pageSize` | `integer` | query | No | A positive number that is the maximum number of results to return. If page_size is empty or more than 100,000 results... |
| `pageToken` | `string` | query | No | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. U... |
| `secondaryAggregation.alignmentPeriod` | `string` | query | No | The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series in... |
| `secondaryAggregation.crossSeriesReducer` | `string` | query | No | The reduction operation to be used to combine time series into a single time series, where the value of each data poi... |
| `secondaryAggregation.groupByFields` | `string` | query | No | The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time seri... |
| `secondaryAggregation.perSeriesAligner` | `string` | query | No | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_N... |
| `view` | `string` | query | No | Required. Specifies which information is returned about the time series. |

**Response**: `ListTimeSeriesResponse`

```typescript
const res = await monitoring.timeSeries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

### `monitoring.folders.timeSeries.list`

**GET** `v3/{+name}/timeSeries`

Lists time series that match a filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project (https://cloud.google.com/monitoring/api/v3#project_name), organization or folder on which to e... |
| `aggregation.alignmentPeriod` | `string` | query | No | The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series in... |
| `aggregation.crossSeriesReducer` | `string` | query | No | The reduction operation to be used to combine time series into a single time series, where the value of each data poi... |
| `aggregation.groupByFields` | `string` | query | No | The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time seri... |
| `aggregation.perSeriesAligner` | `string` | query | No | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_N... |
| `filter` | `string` | query | No | Required. A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that specifies which time series s... |
| `interval.endTime` | `string` | query | No | Required. The end of the time interval. |
| `interval.startTime` | `string` | query | No | Optional. The beginning of the time interval. The default value for the start time is the end time. The start time mu... |
| `orderBy` | `string` | query | No | Unsupported: must be left blank. The points in each time series are currently returned in reverse time order (most re... |
| `pageSize` | `integer` | query | No | A positive number that is the maximum number of results to return. If page_size is empty or more than 100,000 results... |
| `pageToken` | `string` | query | No | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. U... |
| `secondaryAggregation.alignmentPeriod` | `string` | query | No | The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series in... |
| `secondaryAggregation.crossSeriesReducer` | `string` | query | No | The reduction operation to be used to combine time series into a single time series, where the value of each data poi... |
| `secondaryAggregation.groupByFields` | `string` | query | No | The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time seri... |
| `secondaryAggregation.perSeriesAligner` | `string` | query | No | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_N... |
| `view` | `string` | query | No | Required. Specifies which information is returned about the time series. |

**Response**: `ListTimeSeriesResponse`

```typescript
const res = await monitoring.timeSeries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/monitoring`
- `https://www.googleapis.com/auth/monitoring.read`

---

## Schemas

### `Aggregation`

Describes how to combine multiple time series to provide a different view of the data. Aggregation of time series is done in two steps. First, each time series in the set is aligned to the same time interval boundaries, then the set of time series is optionally reduced in number.Alignment consists of applying the per_series_aligner operation to each time series after its data has been divided into regular alignment_period time intervals. This process takes all of the data points in an alignment period, applies a mathematical transformation such as averaging, minimum, maximum, delta, etc., and converts them into a single data point per period.Reduction is when the aligned and transformed time series can optionally be combined, reducing the number of time series through similar mathematical transformations. Reduction involves applying a cross_series_reducer to all the time series, optionally sorting the time series into subsets with group_by_fields, and applying the reducer to each subset.The raw time series data can contain a huge amount of information from multiple sources. Alignment and reduction transforms this mass of data into a more manageable and representative collection of data, for example "the 95% latency across the average of all tasks in a cluster". This representative data can be more easily graphed and comprehended, and the individual time series data is still available for later drilldown. For more details, see Filtering and aggregation (https://cloud.google.com/monitoring/api/v3/aggregation).

| Property | Type | Description |
|----------|------|-------------|
| `alignmentPeriod` | `string` | The alignment_period specifies a time interval, in seconds, that is used to divide the data in al... |
| `crossSeriesReducer` | `string` | The reduction operation to be used to combine time series into a single time series, where the va... |
| `groupByFields` | `array<string>` | The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determi... |
| `perSeriesAligner` | `string` | An Aligner describes how to bring the data points in a single time series into temporal alignment... |

### `Alert`

An alert is the representation of a violation of an alert policy. It is a read-only resource that cannot be modified by the accompanied API.

| Property | Type | Description |
|----------|------|-------------|
| `closeTime` | `string` | The time when the alert was closed. |
| `log` | `LogMetadata` | The log information associated with the alert. This field is only populated for log-based alerts. |
| `metadata` | `MonitoredResourceMetadata` | The metadata of the monitored resource. |
| `metric` | `Metric` | The metric type and any metric labels preserved from the incident's generating condition. |
| `name` | `string` | Identifier. The name of the alert.The format is: projects/[PROJECT_ID_OR_NUMBER]/alerts/[ALERT_ID... |
| `openTime` | `string` | The time when the alert was opened. |
| `policy` | `PolicySnapshot` | The snapshot of the alert policy that generated this alert. |
| `resource` | `MonitoredResource` | The monitored resource type and any monitored resource labels preserved from the incident's gener... |
| `state` | `string` | Output only. The current state of the alert. |

### `AlertPolicy`

A description of the conditions under which some aspect of your system is considered to be "unhealthy" and the ways to notify people or services about this state. For an overview of alerting policies, see Introduction to Alerting (https://cloud.google.com/monitoring/alerts/).

| Property | Type | Description |
|----------|------|-------------|
| `alertStrategy` | `AlertStrategy` | Control over how this alerting policy's notification channels are notified. |
| `combiner` | `string` | How to combine the results of multiple conditions to determine if an incident should be opened. I... |
| `conditions` | `array<Condition>` | A list of conditions for the policy. The conditions are combined by AND or OR according to the co... |
| `creationRecord` | `MutationRecord` | A read-only record of the creation of the alerting policy. If provided in a call to create or upd... |
| `displayName` | `string` | A short name or phrase used to identify the policy in dashboards, notifications, and incidents. T... |
| `documentation` | `Documentation` | Documentation that is included with notifications and incidents related to this policy. Best prac... |
| `enabled` | `boolean` | Whether or not the policy is enabled. On write, the default interpretation if unset is that the p... |
| `mutationRecord` | `MutationRecord` | A read-only record of the most recent change to the alerting policy. If provided in a call to cre... |
| `name` | `string` | Identifier. Required if the policy exists. The resource name for this policy. The format is: proj... |
| `notificationChannels` | `array<string>` | Identifies the notification channels to which notifications should be sent when incidents are ope... |
| `severity` | `string` | Optional. The severity of an alerting policy indicates how important incidents generated by that ... |
| `userLabels` | `object` | User-supplied key/value data to be used for organizing and identifying the AlertPolicy objects.Th... |
| `validity` | `Status` | Read-only description of how the alerting policy is invalid. This field is only set when the aler... |

### `AlertStrategy`

Control over how the notification channels in notification_channels are notified when this alert fires.

| Property | Type | Description |
|----------|------|-------------|
| `autoClose` | `string` | If an alerting policy that was active has no data for this long, any open incidents will close |
| `notificationChannelStrategy` | `array<NotificationChannelStrategy>` | Control how notifications will be sent out, on a per-channel basis. |
| `notificationPrompts` | `array<string>` | For log-based alert policies, the notification prompts is always OPENED. For non log-based alert ... |
| `notificationRateLimit` | `NotificationRateLimit` | Required for log-based alerting policies, i.e. policies with a LogMatch condition.This limit is n... |

### `AppEngine`

App Engine service. Learn more at https://cloud.google.com/appengine.

| Property | Type | Description |
|----------|------|-------------|
| `moduleId` | `string` | The ID of the App Engine module underlying this service. Corresponds to the module_id resource la... |

### `AvailabilityCriteria`

Future parameters for the availability SLI.

### `BasicAuthentication`

The authentication parameters to provide to the specified resource or URL that requires a username and password. Currently, only Basic HTTP authentication (https://tools.ietf.org/html/rfc7617) is supported in Uptime checks.

| Property | Type | Description |
|----------|------|-------------|
| `password` | `string` | The password to use when authenticating with the HTTP server. |
| `username` | `string` | The username to use when authenticating with the HTTP server. |

### `BasicService`

A well-known service type, defined by its service type and service labels. Documentation and examples here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).

| Property | Type | Description |
|----------|------|-------------|
| `serviceLabels` | `object` | Labels that specify the resource that emits the monitoring data which is used for SLO reporting o... |
| `serviceType` | `string` | The type of service that this basic service defines, e.g. APP_ENGINE service type. Documentation ... |

### `BasicSli`

An SLI measuring performance on a well-known service type. Performance will be computed on the basis of pre-defined metrics. The type of the service_resource determines the metrics to use and the service_resource.labels and metric_labels are used to construct a monitoring filter to filter that metric down to just the data relevant to this service.

| Property | Type | Description |
|----------|------|-------------|
| `availability` | `AvailabilityCriteria` | Good service is defined to be the count of requests made to this service that return successfully. |
| `latency` | `LatencyCriteria` | Good service is defined to be the count of requests made to this service that are fast enough wit... |
| `location` | `array<string>` | OPTIONAL: The set of locations to which this SLI is relevant. Telemetry from other locations will... |
| `method` | `array<string>` | OPTIONAL: The set of RPCs to which this SLI is relevant. Telemetry from other methods will not be... |
| `version` | `array<string>` | OPTIONAL: The set of API versions to which this SLI is relevant. Telemetry from other API version... |

### `BooleanTest`

A test that uses an alerting result in a boolean column produced by the SQL query.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | Required. The name of the column containing the boolean value. If the value in a row is NULL, tha... |

### `BucketOptions`

BucketOptions describes the bucket boundaries used to create a histogram for the distribution. The buckets can be in a linear sequence, an exponential sequence, or each bucket can be specified explicitly. BucketOptions does not include the number of values in each bucket.A bucket has an inclusive lower bound and exclusive upper bound for the values that are counted for that bucket. The upper bound of a bucket must be strictly greater than the lower bound. The sequence of N buckets for a distribution consists of an underflow bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an overflow bucket (number N - 1). The buckets are contiguous: the lower bound of bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets span the whole range of finite values: lower bound of the underflow bucket is -infinity and the upper bound of the overflow bucket is +infinity. The finite buckets are so-called because both bounds are finite.

| Property | Type | Description |
|----------|------|-------------|
| `explicitBuckets` | `Explicit` | The explicit buckets. |
| `exponentialBuckets` | `Exponential` | The exponential buckets. |
| `linearBuckets` | `Linear` | The linear bucket. |

### `CloudEndpoints`

Cloud Endpoints service. Learn more at https://cloud.google.com/endpoints.

| Property | Type | Description |
|----------|------|-------------|
| `service` | `string` | The name of the Cloud Endpoints service underlying this service. Corresponds to the service resou... |

### `CloudFunctionV2Target`

A Synthetic Monitor deployed to a Cloud Functions V2 instance.

| Property | Type | Description |
|----------|------|-------------|
| `cloudRunRevision` | `MonitoredResource` | Output only. The cloud_run_revision Monitored Resource associated with the GCFv2. The Synthetic M... |
| `name` | `string` | Required. Fully qualified GCFv2 resource name i.e. projects/{project}/locations/{location}/functi... |

### `CloudRun`

Cloud Run service. Learn more at https://cloud.google.com/run.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | The location the service is run. Corresponds to the location resource label in the cloud_run_revi... |
| `serviceName` | `string` | The name of the Cloud Run service. Corresponds to the service_name resource label in the cloud_ru... |

### `ClusterIstio`

Istio service scoped to a single Kubernetes cluster. Learn more at https://istio.io. Clusters running OSS Istio will have their services ingested as this type.

| Property | Type | Description |
|----------|------|-------------|
| `clusterName` | `string` | The name of the Kubernetes cluster in which this Istio service is defined. Corresponds to the clu... |
| `location` | `string` | The location of the Kubernetes cluster in which this Istio service is defined. Corresponds to the... |
| `serviceName` | `string` | The name of the Istio service underlying this service. Corresponds to the destination_service_nam... |
| `serviceNamespace` | `string` | The namespace of the Istio service underlying this service. Corresponds to the destination_servic... |

### `CollectdPayload`

A collection of data points sent from a collectd-based plugin. See the collectd documentation for more information.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The end time of the interval. |
| `metadata` | `object` | The measurement metadata. Example: "process_id" -> 12345 |
| `plugin` | `string` | The name of the plugin. Example: "disk". |
| `pluginInstance` | `string` | The instance name of the plugin Example: "hdcl". |
| `startTime` | `string` | The start time of the interval. |
| `type` | `string` | The measurement type. Example: "memory". |
| `typeInstance` | `string` | The measurement type instance. Example: "used". |
| `values` | `array<CollectdValue>` | The measured values during this time interval. Each value must have a different data_source_name. |

### `CollectdPayloadError`

Describes the error status for payloads that were not written.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | Records the error status for the payload. If this field is present, the partial errors for nested... |
| `index` | `integer` | The zero-based index in CreateCollectdTimeSeriesRequest.collectd_payloads. |
| `valueErrors` | `array<CollectdValueError>` | Records the error status for values that were not written due to an error.Failed payloads for whi... |

### `CollectdValue`

A single data point from a collectd-based plugin.

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceName` | `string` | The data source for the collectd value. For example, there are two data sources for network measu... |
| `dataSourceType` | `string` | The type of measurement. |
| `value` | `TypedValue` | The measurement value. |

### `CollectdValueError`

Describes the error status for values that were not written.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | Records the error status for the value. |
| `index` | `integer` | The zero-based index in CollectdPayload.values within the parent CreateCollectdTimeSeriesRequest.... |

### `Condition`

A condition is a true/false test that determines when an alerting policy should open an incident. If a condition evaluates to true, it signifies that something is wrong.

| Property | Type | Description |
|----------|------|-------------|
| `conditionAbsent` | `MetricAbsence` | A condition that checks that a time series continues to receive new data points. |
| `conditionMatchedLog` | `LogMatch` | A condition that checks for log messages matching given constraints. If set, no other conditions ... |
| `conditionMonitoringQueryLanguage` | `MonitoringQueryLanguageCondition` | A condition that uses the Monitoring Query Language to define alerts. |
| `conditionPrometheusQueryLanguage` | `PrometheusQueryLanguageCondition` | A condition that uses the Prometheus query language to define alerts. |
| `conditionSql` | `SqlCondition` | A condition that periodically evaluates a SQL query result. |
| `conditionThreshold` | `MetricThreshold` | A condition that compares a time series against a threshold. |
| `displayName` | `string` | A short name or phrase used to identify the condition in dashboards, notifications, and incidents... |
| `name` | `string` | Required if the condition exists. The unique resource name for this condition. Its format is: pro... |

### `ContentMatcher`

Optional. Used to perform content matching. This allows matching based on substrings and regular expressions, together with their negations. Only the first 4 MB of an HTTP or HTTPS check's response (and the first 1 MB of a TCP check's response) are examined for purposes of content matching.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | String, regex or JSON content to match. Maximum 1024 bytes. An empty content string indicates no ... |
| `jsonPathMatcher` | `JsonPathMatcher` | Matcher information for MATCHES_JSON_PATH and NOT_MATCHES_JSON_PATH |
| `matcher` | `string` | The type of content matcher that will be applied to the server output, compared to the content st... |

### `CreateCollectdTimeSeriesRequest`

The CreateCollectdTimeSeries request.

| Property | Type | Description |
|----------|------|-------------|
| `collectdPayloads` | `array<CollectdPayload>` | The collectd payloads representing the time series data. You must not include more than a single ... |
| `collectdVersion` | `string` | The version of collectd that collected the data. Example: "5.3.0-192.el6". |
| `resource` | `MonitoredResource` | The monitored resource associated with the time series. |

### `CreateCollectdTimeSeriesResponse`

The CreateCollectdTimeSeries response.

| Property | Type | Description |
|----------|------|-------------|
| `payloadErrors` | `array<CollectdPayloadError>` | Records the error status for points that were not written due to an error in the request.Failed r... |
| `summary` | `CreateTimeSeriesSummary` | Aggregate statistics from writing the payloads. This field is omitted if all points were successf... |

### `CreateTimeSeriesRequest`

The CreateTimeSeries request.

| Property | Type | Description |
|----------|------|-------------|
| `timeSeries` | `array<TimeSeries>` | Required. The new data to be added to a list of time series. Adds at most one data point to each ... |

### `CreateTimeSeriesSummary`

Summary of the result of a failed request to write data to a time series.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<Error>` | The number of points that failed to be written. Order is not guaranteed. |
| `successPointCount` | `integer` | The number of points that were successfully written. |
| `totalPointCount` | `integer` | The number of points in the request. |

### `Criteria`

Criteria specific to the AlertPolicys that this Snooze applies to. The Snooze will suppress alerts that come from one of the AlertPolicys whose names are supplied.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Optional. When you define a snooze, you can also define a filter for that snooze. The filter is a... |
| `policies` | `array<string>` | The specific AlertPolicy names for the alert that should be snoozed. The format is: projects/[PRO... |

### `Custom`

Use a custom service to designate a service that you want to monitor when none of the other service types (like App Engine, Cloud Run, or a GKE type) matches your intended service.

### `Daily`

Used to schedule the query to run every so many days.

| Property | Type | Description |
|----------|------|-------------|
| `executionTime` | `TimeOfDay` | Optional. The time of day (in UTC) at which the query should run. If left unspecified, the server... |
| `periodicity` | `integer` | Required. The number of days between runs. Must be greater than or equal to 1 day and less than o... |

### `Distribution`

Distribution contains summary statistics for a population of values. It optionally contains a histogram representing the distribution of those values across a set of buckets.The summary statistics are the count, mean, sum of the squared deviation from the mean, the minimum, and the maximum of the set of population of values. The histogram is based on a sequence of buckets and gives a count of values that fall into each bucket. The boundaries of the buckets are given either explicitly or by formulas for buckets of fixed or exponentially increasing widths.Although it is not forbidden, it is generally a bad idea to include non-finite values (infinities or NaNs) in the population of values, as this will render the mean and sum_of_squared_deviation fields meaningless.

| Property | Type | Description |
|----------|------|-------------|
| `bucketCounts` | `array<string>` | Required in the Cloud Monitoring API v3. The values for each bucket specified in bucket_options. ... |
| `bucketOptions` | `BucketOptions` | Required in the Cloud Monitoring API v3. Defines the histogram bucket boundaries. |
| `count` | `string` | The number of values in the population. Must be non-negative. This value must equal the sum of th... |
| `exemplars` | `array<Exemplar>` | Must be in increasing order of value field. |
| `mean` | `number` | The arithmetic mean of the values in the population. If count is zero then this field must be zero. |
| `range` | `Range` | If specified, contains the range of the population values. The field must not be present if the c... |
| `sumOfSquaredDeviation` | `number` | The sum of squared deviations from the mean of the values in the population. For values x_i this ... |

### `DistributionCut`

A DistributionCut defines a TimeSeries and thresholds used for measuring good service and total service. The TimeSeries must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE. The computed good_service will be the estimated count of values in the Distribution that fall within the specified min and max.

| Property | Type | Description |
|----------|------|-------------|
| `distributionFilter` | `string` | A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries ... |
| `range` | `GoogleMonitoringV3Range` | Range of values considered "good." For a one-sided range, set one bound to an infinite value. |

### `Documentation`

Documentation that is included in the notifications and incidents pertaining to this policy.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The body of the documentation, interpreted according to mime_type. The content may not exceed 8,1... |
| `links` | `array<Link>` | Optional. Links to content such as playbooks, repositories, and other resources. This field can c... |
| `mimeType` | `string` | The format of the content field. Presently, only the value "text/markdown" is supported. See Mark... |
| `subject` | `string` | Optional. The subject line of the notification. The subject line may not exceed 10,240 bytes. In ... |

### `DroppedLabels`

A set of (label, value) pairs that were removed from a Distribution time series during aggregation and then added as an attachment to a Distribution.Exemplar.The full label set for the exemplars is constructed by using the dropped pairs in combination with the label values that remain on the aggregated Distribution time series. The constructed full label set can be used to identify the specific entity, such as the instance or job, which might be contributing to a long-tail. However, with dropped labels, the storage requirements are reduced because only the aggregated distribution values for a large group of time series are stored.Note that there are no guarantees on ordering of the labels from exemplar-to-exemplar and from distribution-to-distribution in the same stream, and there may be duplicates. It is up to clients to resolve any ambiguities.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `object` | Map from label to its value, for all labels dropped in any aggregation. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Error`

Detailed information about an error category.

| Property | Type | Description |
|----------|------|-------------|
| `pointCount` | `integer` | The number of points that couldn't be written because of status. |
| `status` | `Status` | The status of the requested write operation. |

### `Exemplar`

Exemplars are example points that may be used to annotate aggregated distribution values. They are metadata that gives information about a particular value added to a Distribution bucket, such as a trace ID that was active when a value was added. They may contain further information, such as a example values and timestamps, origin, etc.

| Property | Type | Description |
|----------|------|-------------|
| `attachments` | `array<object>` | Contextual information about the example value. Examples are:Trace: type.googleapis.com/google.mo... |
| `timestamp` | `string` | The observation (sampling) time of the above value. |
| `value` | `number` | Value of the exemplar point. This value determines to which bucket the exemplar belongs. |

### `Explicit`

Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): boundsi Lower bound (1 <= i < N); boundsi - 1The bounds field must contain at least one element. If bounds has only one element, then there are no finite buckets, and that single element is the common boundary of the overflow and underflow buckets.

| Property | Type | Description |
|----------|------|-------------|
| `bounds` | `array<number>` | The values must be monotonically increasing. |

### `Exponential`

Specifies an exponential sequence of buckets that have a width that is proportional to the value of the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): scale * (growth_factor ^ i).Lower bound (1 <= i < N): scale * (growth_factor ^ (i - 1)).

| Property | Type | Description |
|----------|------|-------------|
| `growthFactor` | `number` | Must be greater than 1. |
| `numFiniteBuckets` | `integer` | Must be greater than 0. |
| `scale` | `number` | Must be greater than 0. |

### `Field`

A single field of a message type.New usages of this message as an alternative to FieldDescriptorProto are strongly discouraged. This message does not reliability preserve all information necessary to model the schema and preserve semantics. Instead make use of FileDescriptorSet which preserves the necessary information.

| Property | Type | Description |
|----------|------|-------------|
| `cardinality` | `string` | The field cardinality. |
| `defaultValue` | `string` | The string value of the default value of this field. Proto2 syntax only. |
| `jsonName` | `string` | The field JSON name. |
| `kind` | `string` | The field type. |
| `name` | `string` | The field name. |
| `number` | `integer` | The field number. |
| `oneofIndex` | `integer` | The index of the field type in Type.oneofs, for message or enumeration types. The first type has ... |
| `options` | `array<Option>` | The protocol buffer options. |
| `packed` | `boolean` | Whether to use alternative packed wire representation. |
| `typeUrl` | `string` | The field type URL, without the scheme, for message or enumeration types. Example: "type.googleap... |

### `ForecastOptions`

Options used when forecasting the time series and testing the predicted value against the threshold.

| Property | Type | Description |
|----------|------|-------------|
| `forecastHorizon` | `string` | Required. The length of time into the future to forecast whether a time series will violate the t... |

### `GetNotificationChannelVerificationCodeRequest`

The GetNotificationChannelVerificationCode request.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | The desired expiration time. If specified, the API will guarantee that the returned code will not... |

### `GetNotificationChannelVerificationCodeResponse`

The GetNotificationChannelVerificationCode request.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The verification code, which may be used to verify other channels that have an equivalent identit... |
| `expireTime` | `string` | The expiration time associated with the code that was returned. If an expiration was provided in ... |

### `GkeNamespace`

GKE Namespace. The field names correspond to the resource metadata labels on monitored resources that fall under a namespace (for example, k8s_container or k8s_pod).

| Property | Type | Description |
|----------|------|-------------|
| `clusterName` | `string` | The name of the parent cluster. |
| `location` | `string` | The location of the parent cluster. This may be a zone or region. |
| `namespaceName` | `string` | The name of this namespace. |
| `projectId` | `string` | Output only. The project this resource lives in. For legacy services migrated from the Custom typ... |

### `GkeService`

GKE Service. The "service" here represents a Kubernetes service object (https://kubernetes.io/docs/concepts/services-networking/service). The field names correspond to the resource labels on k8s_service monitored resources (https://cloud.google.com/monitoring/api/resources#tag_k8s_service).

| Property | Type | Description |
|----------|------|-------------|
| `clusterName` | `string` | The name of the parent cluster. |
| `location` | `string` | The location of the parent cluster. This may be a zone or region. |
| `namespaceName` | `string` | The name of the parent namespace. |
| `projectId` | `string` | Output only. The project this resource lives in. For legacy services migrated from the Custom typ... |
| `serviceName` | `string` | The name of this service. |

### `GkeWorkload`

A GKE Workload (Deployment, StatefulSet, etc). The field names correspond to the metadata labels on monitored resources that fall under a workload (for example, k8s_container or k8s_pod).

| Property | Type | Description |
|----------|------|-------------|
| `clusterName` | `string` | The name of the parent cluster. |
| `location` | `string` | The location of the parent cluster. This may be a zone or region. |
| `namespaceName` | `string` | The name of the parent namespace. |
| `projectId` | `string` | Output only. The project this resource lives in. For legacy services migrated from the Custom typ... |
| `topLevelControllerName` | `string` | The name of this workload. |
| `topLevelControllerType` | `string` | The type of this workload (for example, "Deployment" or "DaemonSet") |

### `GoogleMonitoringV3Range`

Range of numerical values within min and max.

| Property | Type | Description |
|----------|------|-------------|
| `max` | `number` | Range maximum. |
| `min` | `number` | Range minimum. |

### `Group`

The description of a dynamic collection of monitored resources. Each group has a filter that is matched against monitored resources and their associated metadata. If a group's filter matches an available monitored resource, then that resource is a member of that group. Groups can contain any number of monitored resources, and each monitored resource can be a member of any number of groups.Groups can be nested in parent-child hierarchies. The parentName field identifies an optional parent for each group. If a group has a parent, then the only monitored resources available to be matched by the group's filter are the resources contained in the parent group. In other words, a group contains the monitored resources that match its filter and the filters of all the group's ancestors. A group without a parent can contain any monitored resource.For example, consider an infrastructure running a set of instances with two user-defined tags: "environment" and "role". A parent group has a filter, environment="production". A child of that parent group has a filter, role="transcoder". The parent group contains all instances in the production environment, regardless of their roles. The child group contains instances that have the transcoder role and are in the production environment.The monitored resources contained in a group can change at any moment, depending on what resources exist and what filters are associated with the group and its ancestors.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | A user-assigned name for this group, used only for display purposes. |
| `filter` | `string` | The filter used to determine which monitored resources belong to this group. |
| `isCluster` | `boolean` | If true, the members of this group are considered to be a cluster. The system can perform additio... |
| `name` | `string` | Output only. The name of this group. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP... |
| `parentName` | `string` | The name of the group's parent, if it has one. The format is: projects/[PROJECT_ID_OR_NUMBER]/gro... |

### `Hourly`

Used to schedule the query to run every so many hours.

| Property | Type | Description |
|----------|------|-------------|
| `minuteOffset` | `integer` | Optional. The number of minutes after the hour (in UTC) to run the query. Must be greater than or... |
| `periodicity` | `integer` | Required. The number of hours between runs. Must be greater than or equal to 1 hour and less than... |

### `HttpCheck`

Information involved in an HTTP/HTTPS Uptime check request.

| Property | Type | Description |
|----------|------|-------------|
| `acceptedResponseStatusCodes` | `array<ResponseStatusCode>` | If present, the check will only pass if the HTTP response status code is in this set of status co... |
| `authInfo` | `BasicAuthentication` | The authentication information. Optional when creating an HTTP check; defaults to empty. Do not s... |
| `body` | `string` | The request body associated with the HTTP POST request. If content_type is URL_ENCODED, the body ... |
| `contentType` | `string` | The content type header to use for the check. The following configurations result in errors: 1. C... |
| `customContentType` | `string` | A user provided content type header to use for the check. The invalid configurations outlined in ... |
| `headers` | `object` | The list of headers to send as part of the Uptime check request. If two headers have the same key... |
| `maskHeaders` | `boolean` | Boolean specifying whether to encrypt the header information. Encryption should be specified for ... |
| `path` | `string` | Optional (defaults to "/"). The path to the page against which to run the check. Will be combined... |
| `pingConfig` | `PingConfig` | Contains information needed to add pings to an HTTP check. |
| `port` | `integer` | Optional (defaults to 80 when use_ssl is false, and 443 when use_ssl is true). The TCP port on th... |
| `requestMethod` | `string` | The HTTP request method to use for the check. If set to METHOD_UNSPECIFIED then request_method de... |
| `serviceAgentAuthentication` | `ServiceAgentAuthentication` | If specified, Uptime will generate and attach an OIDC JWT token for the Monitoring service agent ... |
| `useSsl` | `boolean` | If true, use HTTPS instead of HTTP to run the check. |
| `validateSsl` | `boolean` | Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. O... |

### `InternalChecker`

An internal checker allows Uptime checks to run on private/internal GCP resources.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The checker's human-readable name. The display name should be unique within a Cloud Monitoring Me... |
| `gcpZone` | `string` | The GCP zone the Uptime check should egress from. Only respected for internal Uptime checks, wher... |
| `name` | `string` | A unique resource name for this InternalChecker. The format is: projects/[PROJECT_ID_OR_NUMBER]/i... |
| `network` | `string` | The GCP VPC network (https://cloud.google.com/vpc/docs/vpc) where the internal resource lives (ex... |
| `peerProjectId` | `string` | The GCP project ID where the internal checker lives. Not necessary the same as the Metrics Scope ... |
| `state` | `string` | The current operational state of the internal checker. |

### `IstioCanonicalService`

Canonical service scoped to an Istio mesh. Anthos clusters running ASM >= 1.6.8 will have their services ingested as this type.

| Property | Type | Description |
|----------|------|-------------|
| `canonicalService` | `string` | The name of the canonical service underlying this service. Corresponds to the destination_canonic... |
| `canonicalServiceNamespace` | `string` | The namespace of the canonical service underlying this service. Corresponds to the destination_ca... |
| `meshUid` | `string` | Identifier for the Istio mesh in which this canonical service is defined. Corresponds to the mesh... |

### `JsonPathMatcher`

Information needed to perform a JSONPath content match. Used for ContentMatcherOption::MATCHES_JSON_PATH and ContentMatcherOption::NOT_MATCHES_JSON_PATH.

| Property | Type | Description |
|----------|------|-------------|
| `jsonMatcher` | `string` | The type of JSONPath match that will be applied to the JSON output (ContentMatcher.content) |
| `jsonPath` | `string` | JSONPath within the response output pointing to the expected ContentMatcher::content to match aga... |

### `LabelDescriptor`

A description of a label.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A human-readable description for the label. |
| `key` | `string` | The key for this label. The key must meet the following criteria: Does not exceed 100 characters.... |
| `valueType` | `string` | The type of data that can be assigned to the label. |

### `LabelValue`

A label value.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | A bool label value. |
| `int64Value` | `string` | An int64 label value. |
| `stringValue` | `string` | A string label value. |

### `LatencyCriteria`

Parameters for a latency threshold SLI.

| Property | Type | Description |
|----------|------|-------------|
| `threshold` | `string` | Good service is defined to be the count of requests made to this service that return in no more t... |

### `Linear`

Specifies a linear sequence of buckets that all have the same width (except overflow and underflow). Each bucket represents a constant absolute uncertainty on the specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): offset + (width * i).Lower bound (1 <= i < N): offset + (width * (i - 1)).

| Property | Type | Description |
|----------|------|-------------|
| `numFiniteBuckets` | `integer` | Must be greater than 0. |
| `offset` | `number` | Lower bound of the first bucket. |
| `width` | `number` | Must be greater than 0. |

### `Link`

Links to content such as playbooks, repositories, and other resources.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | A short display name for the link. The display name must not be empty or exceed 63 characters. Ex... |
| `url` | `string` | The url of a webpage. A url can be templatized by using variables in the path or the query parame... |

### `ListAlertPoliciesResponse`

The protocol for the ListAlertPolicies response.

| Property | Type | Description |
|----------|------|-------------|
| `alertPolicies` | `array<AlertPolicy>` | The returned alert policies. |
| `nextPageToken` | `string` | If there might be more results than were returned, then this field is set to a non-empty value. T... |
| `totalSize` | `integer` | The total number of alert policies in all pages. This number is only an estimate, and may change ... |

### `ListAlertsResponse`

The ListAlerts response.

| Property | Type | Description |
|----------|------|-------------|
| `alerts` | `array<Alert>` | The list of alerts. |
| `nextPageToken` | `string` | If not empty, indicates that there may be more results that match the request. Use the value in t... |
| `totalSize` | `integer` | The estimated total number of matching results for this query. |

### `ListGroupMembersResponse`

The ListGroupMembers response.

| Property | Type | Description |
|----------|------|-------------|
| `members` | `array<MonitoredResource>` | A set of monitored resources in the group. |
| `nextPageToken` | `string` | If there are more results than have been returned, then this field is set to a non-empty value. T... |
| `totalSize` | `integer` | The total number of elements matching this request. |

### `ListGroupsResponse`

The ListGroups response.

| Property | Type | Description |
|----------|------|-------------|
| `group` | `array<Group>` | The groups that match the specified filters. |
| `nextPageToken` | `string` | If there are more results than have been returned, then this field is set to a non-empty value. T... |

### `ListMetricDescriptorsResponse`

The ListMetricDescriptors response.

| Property | Type | Description |
|----------|------|-------------|
| `metricDescriptors` | `array<MetricDescriptor>` | The metric descriptors that are available to the project and that match the value of filter, if p... |
| `nextPageToken` | `string` | If there are more results than have been returned, then this field is set to a non-empty value. T... |

### `ListMonitoredResourceDescriptorsResponse`

The ListMonitoredResourceDescriptors response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there are more results than have been returned, then this field is set to a non-empty value. T... |
| `resourceDescriptors` | `array<MonitoredResourceDescriptor>` | The monitored resource descriptors that are available to this project and that match filter, if p... |

### `ListNotificationChannelDescriptorsResponse`

The ListNotificationChannelDescriptors response.

| Property | Type | Description |
|----------|------|-------------|
| `channelDescriptors` | `array<NotificationChannelDescriptor>` | The monitored resource descriptors supported for the specified project, optionally filtered. |
| `nextPageToken` | `string` | If not empty, indicates that there may be more results that match the request. Use the value in t... |

### `ListNotificationChannelsResponse`

The ListNotificationChannels response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If not empty, indicates that there may be more results that match the request. Use the value in t... |
| `notificationChannels` | `array<NotificationChannel>` | The notification channels defined for the specified project. |
| `totalSize` | `integer` | The total number of notification channels in all pages. This number is only an estimate, and may ... |

### `ListServiceLevelObjectivesResponse`

The ListServiceLevelObjectives response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there are more results than have been returned, then this field is set to a non-empty value. T... |
| `serviceLevelObjectives` | `array<ServiceLevelObjective>` | The ServiceLevelObjectives matching the specified filter. |

### `ListServicesResponse`

The ListServices response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there are more results than have been returned, then this field is set to a non-empty value. T... |
| `services` | `array<Service>` | The Services matching the specified filter. |

### `ListSnoozesResponse`

The results of a successful ListSnoozes call, containing the matching Snoozes.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Page token for repeated calls to ListSnoozes, to fetch additional pages of results. If this is em... |
| `snoozes` | `array<Snooze>` | Snoozes matching this list call. |

### `ListTimeSeriesResponse`

The ListTimeSeries response.

| Property | Type | Description |
|----------|------|-------------|
| `executionErrors` | `array<Status>` | Query execution errors that may have caused the time series data returned to be incomplete. |
| `nextPageToken` | `string` | If there are more results than have been returned, then this field is set to a non-empty value. T... |
| `timeSeries` | `array<TimeSeries>` | One or more time series that match the filter included in the request. |
| `unit` | `string` | The unit in which all time_series point values are reported. unit follows the UCUM format for uni... |
| `unreachable` | `array<string>` | Cloud regions that were unreachable which may have caused incomplete data to be returned. |

### `ListUptimeCheckConfigsResponse`

The protocol for the ListUptimeCheckConfigs response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This field represents the pagination token to retrieve the next page of results. If the value is ... |
| `totalSize` | `integer` | The total number of Uptime check configurations for the project, irrespective of any pagination. |
| `uptimeCheckConfigs` | `array<UptimeCheckConfig>` | The returned Uptime check configurations. |

### `ListUptimeCheckIpsResponse`

The protocol for the ListUptimeCheckIps response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This field represents the pagination token to retrieve the next page of results. If the value is ... |
| `uptimeCheckIps` | `array<UptimeCheckIp>` | The returned list of IP addresses (including region and location) that the checkers run from. |

### `LogMatch`

A condition type that checks whether a log message in the scoping project (https://cloud.google.com/monitoring/api/v3#project_name) satisfies the given filter. Logs from other projects in the metrics scope are not evaluated.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Required. A logs-based filter. See Advanced Logs Queries (https://cloud.google.com/logging/docs/v... |
| `labelExtractors` | `object` | Optional. A map from a label key to an extractor expression, which is used to extract the value f... |

### `LogMetadata`

Information about the log for log-based alerts.

| Property | Type | Description |
|----------|------|-------------|
| `extractedLabels` | `object` | The labels extracted from the log. |

### `MeshIstio`

Istio service scoped to an Istio mesh. Anthos clusters running ASM < 1.6.8 will have their services ingested as this type.

| Property | Type | Description |
|----------|------|-------------|
| `meshUid` | `string` | Identifier for the mesh in which this Istio service is defined. Corresponds to the mesh_uid metri... |
| `serviceName` | `string` | The name of the Istio service underlying this service. Corresponds to the destination_service_nam... |
| `serviceNamespace` | `string` | The namespace of the Istio service underlying this service. Corresponds to the destination_servic... |

### `Metric`

A specific metric, identified by specifying values for all of the labels of a MetricDescriptor.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | The set of label values that uniquely identify this metric. All labels listed in the MetricDescri... |
| `type` | `string` | An existing metric type, see google.api.MetricDescriptor. For example, custom.googleapis.com/invo... |

### `MetricAbsence`

A condition type that checks that monitored resources are reporting data. The configuration defines a metric and a set of monitored resources. The predicate is considered in violation when a time series for the specified metric of a monitored resource does not include any data in the specified duration.

| Property | Type | Description |
|----------|------|-------------|
| `aggregations` | `array<Aggregation>` | Specifies the alignment of data points in individual time series as well as how to combine the re... |
| `duration` | `string` | Required. The amount of time that a time series must fail to report new data to be considered fai... |
| `filter` | `string` | Required. A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies which tim... |
| `trigger` | `Trigger` | The number/percent of time series for which the comparison must hold in order for the condition t... |

### `MetricDescriptor`

Defines a metric type and its schema. Once a metric descriptor is created, deleting or altering it stops data collection and makes the metric type's existing data unusable.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A detailed description of the metric, which can be used in documentation. |
| `displayName` | `string` | A concise name for the metric, which can be displayed in user interfaces. Use sentence case witho... |
| `labels` | `array<LabelDescriptor>` | The set of labels that can be used to describe a specific instance of this metric type. For examp... |
| `launchStage` | `string` | Optional. The launch stage of the metric definition. |
| `metadata` | `MetricDescriptorMetadata` | Optional. Metadata which can be used to guide usage of the metric. |
| `metricKind` | `string` | Whether the metric records instantaneous values, changes to a value, etc. Some combinations of me... |
| `monitoredResourceTypes` | `array<string>` | Read-only. If present, then a time series, which is identified partially by a metric type and a M... |
| `name` | `string` | The resource name of the metric descriptor. |
| `type` | `string` | The metric type, including its DNS name prefix. The type is not URL-encoded. All user-defined met... |
| `unit` | `string` | The units in which the metric value is reported. It is only applicable if the value_type is INT64... |
| `valueType` | `string` | Whether the measurement is an integer, a floating-point number, etc. Some combinations of metric_... |

### `MetricDescriptorMetadata`

Additional annotations that can be used to guide the usage of a metric.

| Property | Type | Description |
|----------|------|-------------|
| `ingestDelay` | `string` | The delay of data points caused by ingestion. Data points older than this age are guaranteed to b... |
| `launchStage` | `string` | Deprecated. Must use the MetricDescriptor.launch_stage instead. |
| `samplePeriod` | `string` | The sampling period of metric data points. For metrics which are written periodically, consecutiv... |
| `timeSeriesResourceHierarchyLevel` | `array<string>` | The scope of the timeseries data of the metric. |

### `MetricRange`

A MetricRange is used when each window is good when the value x of a single TimeSeries satisfies range.min <= x <= range.max. The provided TimeSeries must have ValueType = INT64 or ValueType = DOUBLE and MetricKind = GAUGE.

| Property | Type | Description |
|----------|------|-------------|
| `range` | `GoogleMonitoringV3Range` | Range of values considered "good." For a one-sided range, set one bound to an infinite value. |
| `timeSeries` | `string` | A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying the TimeSerie... |

### `MetricThreshold`

A condition type that compares a collection of time series against a threshold.

| Property | Type | Description |
|----------|------|-------------|
| `aggregations` | `array<Aggregation>` | Specifies the alignment of data points in individual time series as well as how to combine the re... |
| `comparison` | `string` | The comparison to apply between the time series (indicated by filter and aggregation) and the thr... |
| `denominatorAggregations` | `array<Aggregation>` | Specifies the alignment of data points in individual time series selected by denominatorFilter as... |
| `denominatorFilter` | `string` | A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies a time series that ... |
| `duration` | `string` | Required. The amount of time that a time series must violate the threshold to be considered faili... |
| `evaluationMissingData` | `string` | A condition control that determines how metric-threshold conditions are evaluated when data stops... |
| `filter` | `string` | Required. A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies which tim... |
| `forecastOptions` | `ForecastOptions` | When this field is present, the MetricThreshold condition forecasts whether the time series is pr... |
| `thresholdValue` | `number` | A value against which to compare the time series. |
| `trigger` | `Trigger` | The number/percent of time series for which the comparison must hold in order for the condition t... |

### `Minutes`

Used to schedule the query to run every so many minutes.

| Property | Type | Description |
|----------|------|-------------|
| `periodicity` | `integer` | Required. Number of minutes between runs. The interval must be greater than or equal to 5 minutes... |

### `MonitoredResource`

An object representing a resource that can be used for monitoring, logging, billing, or other purposes. Examples include virtual machine instances, databases, and storage devices such as disks. The type field identifies a MonitoredResourceDescriptor object that describes the resource's schema. Information in the labels field identifies the actual resource and its attributes according to the schema. For example, a particular Compute Engine VM instance could be represented by the following object, because the MonitoredResourceDescriptor for "gce_instance" has labels "project_id", "instance_id" and "zone": { "type": "gce_instance", "labels": { "project_id": "my-project", "instance_id": "12345678901234", "zone": "us-central1-a" }}

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Required. Values for all of the labels listed in the associated monitored resource descriptor. Fo... |
| `type` | `string` | Required. The monitored resource type. This field must match the type field of a MonitoredResourc... |

### `MonitoredResourceDescriptor`

An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of "gce_instance" and specifies the use of the labels "instance_id" and "zone" to identify particular VM instances.Different APIs can support different monitored resource types. APIs generally provide a list method that returns the monitored resource descriptors used by the API.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. A detailed description of the monitored resource type that might be used in documentation. |
| `displayName` | `string` | Optional. A concise name for the monitored resource type that might be displayed in user interfac... |
| `labels` | `array<LabelDescriptor>` | Required. A set of labels used to describe instances of this monitored resource type. For example... |
| `launchStage` | `string` | Optional. The launch stage of the monitored resource definition. |
| `name` | `string` | Optional. The resource name of the monitored resource descriptor: "projects/{project_id}/monitore... |
| `type` | `string` | Required. The monitored resource type. For example, the type "cloudsql_database" represents datab... |

### `MonitoredResourceMetadata`

Auxiliary metadata for a MonitoredResource object. MonitoredResource objects contain the minimum set of information to uniquely identify a monitored resource instance. There is some other useful auxiliary metadata. Monitoring and Logging use an ingestion pipeline to extract metadata for cloud resources of all types, and store the metadata in this message.

| Property | Type | Description |
|----------|------|-------------|
| `systemLabels` | `object` | Output only. Values for predefined system metadata labels. System labels are a kind of metadata e... |
| `userLabels` | `object` | Output only. A map of user-defined metadata labels. |

### `MonitoringQueryLanguageCondition`

A condition type that allows alerting policies to be defined using Monitoring Query Language (https://cloud.google.com/monitoring/mql).

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | Optional. The amount of time that a time series must violate the threshold to be considered faili... |
| `evaluationMissingData` | `string` | A condition control that determines how metric-threshold conditions are evaluated when data stops... |
| `query` | `string` | Monitoring Query Language (https://cloud.google.com/monitoring/mql) query that outputs a boolean ... |
| `trigger` | `Trigger` | The number/percent of time series for which the comparison must hold in order for the condition t... |

### `MutationRecord`

Describes a change made to a configuration.

| Property | Type | Description |
|----------|------|-------------|
| `mutateTime` | `string` | When the change occurred. |
| `mutatedBy` | `string` | The email address of the user making the change. |

### `NotificationChannel`

A NotificationChannel is a medium through which an alert is delivered when a policy violation is detected. Examples of channels include email, SMS, and third-party messaging applications. Fields containing sensitive information like authentication tokens or contact info are only partially populated on retrieval.

| Property | Type | Description |
|----------|------|-------------|
| `creationRecord` | `MutationRecord` | Record of the creation of this channel. |
| `description` | `string` | An optional human-readable description of this notification channel. This description may provide... |
| `displayName` | `string` | An optional human-readable name for this notification channel. It is recommended that you specify... |
| `enabled` | `boolean` | Whether notifications are forwarded to the described channel. This makes it possible to disable d... |
| `labels` | `object` | Configuration fields that define the channel and its behavior. The permissible and required label... |
| `mutationRecords` | `array<MutationRecord>` | Records of the modification of this channel. |
| `name` | `string` | Identifier. The full REST resource name for this channel. The format is: projects/[PROJECT_ID_OR_... |
| `type` | `string` | The type of the notification channel. This field matches the value of the NotificationChannelDesc... |
| `userLabels` | `object` | User-supplied key/value data that does not need to conform to the corresponding NotificationChann... |
| `verificationStatus` | `string` | Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNoti... |

### `NotificationChannelDescriptor`

A description of a notification channel. The descriptor includes the properties of the channel and the set of labels or fields that must be specified to configure channels of a given type.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A human-readable description of the notification channel type. The description may include a desc... |
| `displayName` | `string` | A human-readable name for the notification channel type. This form of the name is suitable for a ... |
| `labels` | `array<LabelDescriptor>` | The set of labels that must be defined to identify a particular channel of the corresponding type... |
| `launchStage` | `string` | The product launch stage for channels of this type. |
| `name` | `string` | The full REST resource name for this descriptor. The format is: projects/[PROJECT_ID_OR_NUMBER]/n... |
| `supportedTiers` | `array<string>` | The tiers that support this notification channel; the project service tier must be one of the sup... |
| `type` | `string` | The type of notification channel, such as "email" and "sms". To view the full list of channels, s... |

### `NotificationChannelStrategy`

Control over how the notification channels in notification_channels are notified when this alert fires, on a per-channel basis.

| Property | Type | Description |
|----------|------|-------------|
| `notificationChannelNames` | `array<string>` | The full REST resource name for the notification channels that these settings apply to. Each of t... |
| `renotifyInterval` | `string` | The frequency at which to send reminder notifications for open incidents. The value must be betwe... |

### `NotificationRateLimit`

Control over the rate of notifications sent to this alerting policy's notification channels.

| Property | Type | Description |
|----------|------|-------------|
| `period` | `string` | Not more than one notification per period. |

### `OperationMetadata`

Contains metadata for longrunning operation for the edit Metrics Scope endpoints.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time when the batch request was received. |
| `state` | `string` | Current state of the batch operation. |
| `updateTime` | `string` | The time when the operation result was last updated. |

### `Option`

A protocol buffer option, which can be attached to a message, field, enumeration, etc.New usages of this message as an alternative to FileOptions, MessageOptions, FieldOptions, EnumOptions, EnumValueOptions, ServiceOptions, or MethodOptions are strongly discouraged.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The option's name. For protobuf built-in options (options defined in descriptor.proto), this is t... |
| `value` | `object` | The option's value packed in an Any message. If the value is a primitive, the corresponding wrapp... |

### `PerformanceThreshold`

A PerformanceThreshold is used when each window is good when that window has a sufficiently high performance.

| Property | Type | Description |
|----------|------|-------------|
| `basicSliPerformance` | `BasicSli` | BasicSli to evaluate to judge window quality. |
| `performance` | `RequestBasedSli` | RequestBasedSli to evaluate to judge window quality. |
| `threshold` | `number` | If window performance >= threshold, the window is counted as good. |

### `PingConfig`

Information involved in sending ICMP pings alongside public HTTP/TCP checks. For HTTP, the pings are performed for each part of the redirect chain.

| Property | Type | Description |
|----------|------|-------------|
| `pingsCount` | `integer` | Number of ICMP pings. A maximum of 3 ICMP pings is currently supported. |

### `Point`

A single data point in a time series.

| Property | Type | Description |
|----------|------|-------------|
| `interval` | `TimeInterval` | The time interval to which the data point applies. For GAUGE metrics, the start time is optional,... |
| `value` | `TypedValue` | The value of the data point. |

### `PointData`

A point's value columns and time interval. Each point has one or more point values corresponding to the entries in point_descriptors field in the TimeSeriesDescriptor associated with this object.

| Property | Type | Description |
|----------|------|-------------|
| `timeInterval` | `TimeInterval` | The time interval associated with the point. |
| `values` | `array<TypedValue>` | The values that make up the point. |

### `PolicySnapshot`

The state of the policy at the time the alert was generated.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the alert policy. |
| `name` | `string` | The name of the alert policy resource. In the form of "projects/PROJECT_ID_OR_NUMBER/alertPolicie... |
| `severity` | `string` | The severity of the alert policy. |
| `userLabels` | `object` | The user labels for the alert policy. |

### `PrometheusQueryLanguageCondition`

A condition type that allows alerting policies to be defined using Prometheus Query Language (PromQL) (https://prometheus.io/docs/prometheus/latest/querying/basics/).The PrometheusQueryLanguageCondition message contains information from a Prometheus alerting rule and its associated rule group.A Prometheus alerting rule is described here (https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/). The semantics of a Prometheus alerting rule is described here (https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/#rule).A Prometheus rule group is described here (https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/). The semantics of a Prometheus rule group is described here (https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/#rule_group).Because Cloud Alerting has no representation of a Prometheus rule group resource, we must embed the information of the parent rule group inside each of the conditions that refer to it. We must also update the contents of all Prometheus alerts in case the information of their rule group changes.The PrometheusQueryLanguageCondition protocol buffer combines the information of the corresponding rule group and alerting rule. The structure of the PrometheusQueryLanguageCondition protocol buffer does NOT mimic the structure of the Prometheus rule group and alerting rule YAML declarations. The PrometheusQueryLanguageCondition protocol buffer may change in the future to support future rule group and/or alerting rule features. There are no new such features at the present time (2023-06-26).

| Property | Type | Description |
|----------|------|-------------|
| `alertRule` | `string` | Optional. The alerting rule name of this alert in the corresponding Prometheus configuration file... |
| `disableMetricValidation` | `boolean` | Optional. Whether to disable metric existence validation for this condition.This allows alerting ... |
| `duration` | `string` | Optional. Alerts are considered firing once their PromQL expression was evaluated to be "true" fo... |
| `evaluationInterval` | `string` | Optional. How often this rule should be evaluated. Must be a positive multiple of 30 seconds or m... |
| `labels` | `object` | Optional. Labels to add to or overwrite in the PromQL query result. Label names must be valid (ht... |
| `query` | `string` | Required. The PromQL expression to evaluate. Every evaluation cycle this expression is evaluated ... |
| `ruleGroup` | `string` | Optional. The rule group name of this alert in the corresponding Prometheus configuration file.So... |

### `QueryTimeSeriesRequest`

The QueryTimeSeries request. For information about the status of Monitoring Query Language (MQL), see the MQL deprecation notice (https://cloud.google.com/stackdriver/docs/deprecations/mql).

| Property | Type | Description |
|----------|------|-------------|
| `pageSize` | `integer` | A positive number that is the maximum number of time_series_data to return. |
| `pageToken` | `string` | If this field is not empty then it must contain the nextPageToken value returned by a previous ca... |
| `query` | `string` | Required. The query in the Monitoring Query Language (https://cloud.google.com/monitoring/mql/ref... |

### `QueryTimeSeriesResponse`

The QueryTimeSeries response. For information about the status of Monitoring Query Language (MQL), see the MQL deprecation notice (https://cloud.google.com/stackdriver/docs/deprecations/mql).

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there are more results than have been returned, then this field is set to a non-empty value. T... |
| `partialErrors` | `array<Status>` | Query execution errors that may have caused the time series data returned to be incomplete. The a... |
| `timeSeriesData` | `array<TimeSeriesData>` | The time series data. |
| `timeSeriesDescriptor` | `TimeSeriesDescriptor` | The descriptor for the time series data. |

### `Range`

The range of the population values.

| Property | Type | Description |
|----------|------|-------------|
| `max` | `number` | The maximum of the population values. |
| `min` | `number` | The minimum of the population values. |

### `RequestBasedSli`

Service Level Indicators for which atomic units of service are counted directly.

| Property | Type | Description |
|----------|------|-------------|
| `distributionCut` | `DistributionCut` | distribution_cut is used when good_service is a count of values aggregated in a Distribution that... |
| `goodTotalRatio` | `TimeSeriesRatio` | good_total_ratio is used when the ratio of good_service to total_service is computed from two Tim... |

### `ResourceGroup`

The resource submessage for group checks. It can be used instead of a monitored resource, when multiple resources are being monitored.

| Property | Type | Description |
|----------|------|-------------|
| `groupId` | `string` | The group of resources being monitored. Should be only the [GROUP_ID], and not the full-path proj... |
| `resourceType` | `string` | The resource type of the group members. |

### `ResponseStatusCode`

A status to accept. Either a status code class like "2xx", or an integer status code like "200".

| Property | Type | Description |
|----------|------|-------------|
| `statusClass` | `string` | A class of status codes to accept. |
| `statusValue` | `integer` | A status code to accept. |

### `RowCountTest`

A test that checks if the number of rows in the result set violates some threshold.

| Property | Type | Description |
|----------|------|-------------|
| `comparison` | `string` | Required. The comparison to apply between the number of rows returned by the query and the thresh... |
| `threshold` | `string` | Required. The value against which to compare the row count. |

### `SendNotificationChannelVerificationCodeRequest`

The SendNotificationChannelVerificationCode request.

### `Service`

A Service is a discrete, autonomous, and network-accessible unit, designed to solve an individual concern (Wikipedia (https://en.wikipedia.org/wiki/Service-orientation)). In Cloud Monitoring, a Service acts as the root resource under which operational aspects of the service are accessible.

| Property | Type | Description |
|----------|------|-------------|
| `appEngine` | `AppEngine` | Type used for App Engine services. |
| `basicService` | `BasicService` | Message that contains the service type and service labels of this service if it is a basic servic... |
| `cloudEndpoints` | `CloudEndpoints` | Type used for Cloud Endpoints services. |
| `cloudRun` | `CloudRun` | Type used for Cloud Run services. |
| `clusterIstio` | `ClusterIstio` | Type used for Istio services that live in a Kubernetes cluster. |
| `custom` | `Custom` | Custom service type. |
| `displayName` | `string` | Name used for UI elements listing this Service. |
| `gkeNamespace` | `GkeNamespace` | Type used for GKE Namespaces. |
| `gkeService` | `GkeService` | Type used for GKE Services (the Kubernetes concept of a service). |
| `gkeWorkload` | `GkeWorkload` | Type used for GKE Workloads. |
| `istioCanonicalService` | `IstioCanonicalService` | Type used for canonical services scoped to an Istio mesh. Metrics for Istio are documented here (... |
| `meshIstio` | `MeshIstio` | Type used for Istio services scoped to an Istio mesh. |
| `name` | `string` | Identifier. Resource name for this Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/servic... |
| `telemetry` | `Telemetry` | Configuration for how to query telemetry on a Service. |
| `userLabels` | `object` | Labels which have been used to annotate the service. Label keys must start with a letter. Label k... |

### `ServiceAgentAuthentication`

Contains information needed for generating either an OpenID Connect token (https://developers.google.com/identity/protocols/OpenIDConnect) or OAuth token (https://developers.google.com/identity/protocols/oauth2). The token will be generated for the Monitoring service agent service account.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Type of authentication. |

### `ServiceLevelIndicator`

A Service-Level Indicator (SLI) describes the "performance" of a service. For some services, the SLI is well-defined. In such cases, the SLI can be described easily by referencing the well-known SLI and providing the needed parameters. Alternatively, a "custom" SLI can be defined with a query to the underlying metric store. An SLI is defined to be good_service / total_service over any queried time interval. The value of performance always falls into the range 0 <= performance <= 1. A custom SLI describes how to compute this ratio, whether this is by dividing values from a pair of time series, cutting a Distribution into good and bad counts, or counting time windows in which the service complies with a criterion. For separation of concerns, a single Service-Level Indicator measures performance for only one aspect of service quality, such as fraction of successful queries or fast-enough queries.

| Property | Type | Description |
|----------|------|-------------|
| `basicSli` | `BasicSli` | Basic SLI on a well-known service type. |
| `requestBased` | `RequestBasedSli` | Request-based SLIs |
| `windowsBased` | `WindowsBasedSli` | Windows-based SLIs |

### `ServiceLevelObjective`

A Service-Level Objective (SLO) describes a level of desired good service. It consists of a service-level indicator (SLI), a performance goal, and a period over which the objective is to be evaluated against that goal. The SLO can use SLIs defined in a number of different manners. Typical SLOs might include "99% of requests in each rolling week have latency below 200 milliseconds" or "99.5% of requests in each calendar month return successfully."

| Property | Type | Description |
|----------|------|-------------|
| `calendarPeriod` | `string` | A calendar period, semantically "since the start of the current ". At this time, only DAY, WEEK, ... |
| `displayName` | `string` | Name used for UI elements listing this SLO. |
| `goal` | `number` | The fraction of service that must be good in order for this objective to be met. 0 < goal <= 0.9999. |
| `name` | `string` | Identifier. Resource name for this ServiceLevelObjective. The format is: projects/[PROJECT_ID_OR_... |
| `rollingPeriod` | `string` | A rolling time period, semantically "in the past ". Must be an integer multiple of 1 day no large... |
| `serviceLevelIndicator` | `ServiceLevelIndicator` | The definition of good service, used to measure and calculate the quality of the Service's perfor... |
| `userLabels` | `object` | Labels which have been used to annotate the service-level objective. Label keys must start with a... |

### `Snooze`

A Snooze will prevent any alerts from being opened, and close any that are already open. The Snooze will work on alerts that match the criteria defined in the Snooze. The Snooze will be active from interval.start_time through interval.end_time.

| Property | Type | Description |
|----------|------|-------------|
| `criteria` | `Criteria` | Required. This defines the criteria for applying the Snooze. See Criteria for more information. |
| `displayName` | `string` | Required. A display name for the Snooze. This can be, at most, 512 unicode characters. |
| `interval` | `TimeInterval` | Required. The Snooze will be active from interval.start_time through interval.end_time. interval.... |
| `name` | `string` | Required. Identifier. The name of the Snooze. The format is: projects/[PROJECT_ID_OR_NUMBER]/snoo... |

### `SourceContext`

SourceContext represents information about the source of a protobuf element, like the file in which it is defined.

| Property | Type | Description |
|----------|------|-------------|
| `fileName` | `string` | The path-qualified name of the .proto file that contained the associated protobuf element. For ex... |

### `SpanContext`

The context of a span. This is attached to an Exemplar in Distribution values during aggregation.It contains the name of a span with format: projects/[PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/spans/[SPAN_ID]

| Property | Type | Description |
|----------|------|-------------|
| `spanName` | `string` | The resource name of the span. The format is: projects/[PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/s... |

### `SqlCondition`

A condition that allows alerting policies to be defined using GoogleSQL. SQL conditions examine a sliding window of logs using GoogleSQL. Alert policies with SQL conditions may incur additional billing.

| Property | Type | Description |
|----------|------|-------------|
| `booleanTest` | `BooleanTest` | Test the boolean value in the indicated column. |
| `daily` | `Daily` | Schedule the query to execute every so many days. |
| `hourly` | `Hourly` | Schedule the query to execute every so many hours. |
| `minutes` | `Minutes` | Schedule the query to execute every so many minutes. |
| `query` | `string` | Required. The Log Analytics SQL query to run, as a string. The query must conform to the required... |
| `rowCountTest` | `RowCountTest` | Test the row count against a threshold. |

### `Status`

The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `SyntheticMonitorTarget`

Describes a Synthetic Monitor to be invoked by Uptime.

| Property | Type | Description |
|----------|------|-------------|
| `cloudFunctionV2` | `CloudFunctionV2Target` | Target a Synthetic Monitor GCFv2 instance. |

### `TcpCheck`

Information required for a TCP Uptime check request.

| Property | Type | Description |
|----------|------|-------------|
| `pingConfig` | `PingConfig` | Contains information needed to add pings to a TCP check. |
| `port` | `integer` | The TCP port on the server against which to run the check. Will be combined with host (specified ... |

### `Telemetry`

Configuration for how to query telemetry on a Service.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | The full name of the resource that defines this service. Formatted as described in https://cloud.... |

### `TimeInterval`

Describes a time interval: Reads: A half-open time interval. It includes the end time but excludes the start time: (startTime, endTime]. The start time must be specified, must be earlier than the end time, and should be no older than the data retention period for the metric. Writes: A closed time interval. It extends from the start time to the end time, and includes both: [startTime, endTime]. Valid time intervals depend on the MetricKind (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors#MetricKind) of the metric value. The end time must not be earlier than the start time, and the end time must not be more than 25 hours in the past or more than five minutes in the future. For GAUGE metrics, the startTime value is technically optional; if no value is specified, the start time defaults to the value of the end time, and the interval represents a single point in time. If both start and end times are specified, they must be identical. Such an interval is valid only for GAUGE metrics, which are point-in-time measurements. The end time of a new interval must be at least a millisecond after the end time of the previous interval. For DELTA metrics, the start time and end time must specify a non-zero interval, with subsequent points specifying contiguous and non-overlapping intervals. For DELTA metrics, the start time of the next interval must be at least a millisecond after the end time of the previous interval. For CUMULATIVE metrics, the start time and end time must specify a non-zero interval, with subsequent points specifying the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points. The new start time must be at least a millisecond after the end time of the previous interval. The start time of a new interval must be at least a millisecond after the end time of the previous interval because intervals are closed. If the start time of a new interval is the same as the end time of the previous interval, then data written at the new start time could overwrite data written at the previous end time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Required. The end of the time interval. |
| `startTime` | `string` | Optional. The beginning of the time interval. The default value for the start time is the end tim... |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and google.protobuf.Timestamp.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `TimeSeries`

A collection of data points that describes the time-varying values of a metric. A time series is identified by a combination of a fully-specified monitored resource and a fully-specified metric. This type is used for both listing and creating time series.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Input only. A detailed description of the time series that will be associated with the google.api... |
| `metadata` | `MonitoredResourceMetadata` | Output only. The associated monitored resource metadata. When reading a time series, this field w... |
| `metric` | `Metric` | The associated metric. A fully-specified metric used to identify the time series. |
| `metricKind` | `string` | The metric kind of the time series. When listing time series, this metric kind might be different... |
| `points` | `array<Point>` | The data points of this time series. When listing time series, points are returned in reverse tim... |
| `resource` | `MonitoredResource` | The associated monitored resource. Custom metrics can use only certain monitored resource types i... |
| `unit` | `string` | The units in which the metric value is reported. It is only applicable if the value_type is INT64... |
| `valueType` | `string` | The value type of the time series. When listing time series, this value type might be different f... |

### `TimeSeriesData`

Represents the values of a time series associated with a TimeSeriesDescriptor.

| Property | Type | Description |
|----------|------|-------------|
| `labelValues` | `array<LabelValue>` | The values of the labels in the time series identifier, given in the same order as the label_desc... |
| `pointData` | `array<PointData>` | The points in the time series. |

### `TimeSeriesDescriptor`

A descriptor for the labels and points in a time series.

| Property | Type | Description |
|----------|------|-------------|
| `labelDescriptors` | `array<LabelDescriptor>` | Descriptors for the labels. |
| `pointDescriptors` | `array<ValueDescriptor>` | Descriptors for the point data value columns. |

### `TimeSeriesRatio`

A TimeSeriesRatio specifies two TimeSeries to use for computing the good_service / total_service ratio. The specified TimeSeries must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE. The TimeSeriesRatio must specify exactly two of good, bad, and total, and the relationship good_service + bad_service = total_service will be assumed.

| Property | Type | Description |
|----------|------|-------------|
| `badServiceFilter` | `string` | A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries ... |
| `goodServiceFilter` | `string` | A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries ... |
| `totalServiceFilter` | `string` | A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries ... |

### `Trigger`

Specifies how many time series must fail a predicate to trigger a condition. If not specified, then a {count: 1} trigger is used.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | The absolute number of time series that must fail the predicate for the condition to be triggered. |
| `percent` | `number` | The percentage of time series that must fail the predicate for the condition to be triggered. |

### `Type`

A protocol buffer message type.New usages of this message as an alternative to DescriptorProto are strongly discouraged. This message does not reliability preserve all information necessary to model the schema and preserve semantics. Instead make use of FileDescriptorSet which preserves the necessary information.

| Property | Type | Description |
|----------|------|-------------|
| `edition` | `string` | The source edition string, only valid when syntax is SYNTAX_EDITIONS. |
| `fields` | `array<Field>` | The list of fields. |
| `name` | `string` | The fully qualified message name. |
| `oneofs` | `array<string>` | The list of types appearing in oneof definitions in this type. |
| `options` | `array<Option>` | The protocol buffer options. |
| `sourceContext` | `SourceContext` | The source context. |
| `syntax` | `string` | The source syntax. |

### `TypedValue`

A single strongly-typed value.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | A Boolean value: true or false. |
| `distributionValue` | `Distribution` | A distribution value. |
| `doubleValue` | `number` | A 64-bit double-precision floating-point number. Its magnitude is approximately ±10±300 and it ha... |
| `int64Value` | `string` | A 64-bit integer. Its range is approximately ±9.2x1018. |
| `stringValue` | `string` | A variable-length string value. |

### `UptimeCheckConfig`

This message configures which resources and services to monitor for availability.

| Property | Type | Description |
|----------|------|-------------|
| `checkerType` | `string` | The type of checkers to use to execute the Uptime check. |
| `contentMatchers` | `array<ContentMatcher>` | The content that is expected to appear in the data returned by the target server against which th... |
| `disabled` | `boolean` | Whether the check is disabled or not. |
| `displayName` | `string` | A human-friendly name for the Uptime check configuration. The display name should be unique withi... |
| `httpCheck` | `HttpCheck` | Contains information needed to make an HTTP or HTTPS check. |
| `internalCheckers` | `array<InternalChecker>` | The internal checkers that this check will egress from. If is_internal is true and this list is e... |
| `isInternal` | `boolean` | If this is true, then checks are made only from the 'internal_checkers'. If it is false, then che... |
| `logCheckFailures` | `boolean` | To specify whether to log the results of failed probes to Cloud Logging. |
| `monitoredResource` | `MonitoredResource` | The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the co... |
| `name` | `string` | Identifier. A unique resource name for this Uptime check configuration. The format is: projects/[... |
| `period` | `string` | How often, in seconds, the Uptime check is performed. Currently, the only supported values are 60... |
| `resourceGroup` | `ResourceGroup` | The group resource associated with the configuration. |
| `selectedRegions` | `array<string>` | The list of regions from which the check will be run. Some regions contain one location, and othe... |
| `syntheticMonitor` | `SyntheticMonitorTarget` | Specifies a Synthetic Monitor to invoke. |
| `tcpCheck` | `TcpCheck` | Contains information needed to make a TCP check. |
| `timeout` | `string` | The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds)... |
| `userLabels` | `object` | User-supplied key/value data to be used for organizing and identifying the UptimeCheckConfig obje... |

### `UptimeCheckIp`

Contains the region, location, and list of IP addresses where checkers in the location run from.

| Property | Type | Description |
|----------|------|-------------|
| `ipAddress` | `string` | The IP address from which the Uptime check originates. This is a fully specified IP address (not ... |
| `location` | `string` | A more specific location within the region that typically encodes a particular city/town/metro (a... |
| `region` | `string` | A broad region category in which the IP address is located. |

### `ValueDescriptor`

A descriptor for the value columns in a data point.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The value key. |
| `metricKind` | `string` | The value stream kind. |
| `unit` | `string` | The unit in which time_series point values are reported. unit follows the UCUM format for units a... |
| `valueType` | `string` | The value type. |

### `VerifyNotificationChannelRequest`

The VerifyNotificationChannel request.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Required. The verification code that was delivered to the channel as a result of invoking the Sen... |

### `WindowsBasedSli`

A WindowsBasedSli defines good_service as the count of time windows for which the provided service was of good quality. Criteria for determining if service was good are embedded in the window_criterion.

| Property | Type | Description |
|----------|------|-------------|
| `goodBadMetricFilter` | `string` | A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries ... |
| `goodTotalRatioThreshold` | `PerformanceThreshold` | A window is good if its performance is high enough. |
| `metricMeanInRange` | `MetricRange` | A window is good if the metric's value is in a good range, averaged across returned streams. |
| `metricSumInRange` | `MetricRange` | A window is good if the metric's value is in a good range, summed across returned streams. |
| `windowPeriod` | `string` | Duration over which window quality is evaluated. Must be an integer fraction of a day and at leas... |

