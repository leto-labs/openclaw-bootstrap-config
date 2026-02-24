# App Engine Admin API - API Reference

**Version**: `v1` | **Methods**: 57 | **Schemas**: 81

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `appengine.apps.get` | GET | `v1/apps/{appsId}` | Gets information about an application. |
| `appengine.apps.create` | POST | `v1/apps` | Creates an App Engine application for a Google Cloud Platform project. Required fields: id - The ... |
| `appengine.apps.patch` | PATCH | `v1/apps/{appsId}` | Updates the specified Application resource. You can update the following fields: auth_domain - Go... |
| `appengine.apps.repair` | POST | `v1/apps/{appsId}:repair` | Recreates the required App Engine features for the specified App Engine application, for example ... |
| `appengine.apps.listRuntimes` | GET | `v1/apps/{appsId}:listRuntimes` | Lists all the available runtimes for the application. |
| `appengine.apps.operations.list` | GET | `v1/apps/{appsId}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `appengine.apps.operations.get` | GET | `v1/apps/{appsId}/operations/{operationsId}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `appengine.apps.services.list` | GET | `v1/apps/{appsId}/services` | Lists all the services in the application. |
| `appengine.apps.services.get` | GET | `v1/apps/{appsId}/services/{servicesId}` | Gets the current configuration of the specified service. |
| `appengine.apps.services.patch` | PATCH | `v1/apps/{appsId}/services/{servicesId}` | Updates the configuration of the specified service. |
| `appengine.apps.services.delete` | DELETE | `v1/apps/{appsId}/services/{servicesId}` | Deletes the specified service and all enclosed versions. |
| `appengine.apps.services.versions.list` | GET | `v1/apps/{appsId}/services/{servicesId}/versions` | Lists the versions of a service. |
| `appengine.apps.services.versions.get` | GET | `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}` | Gets the specified Version resource. By default, only a BASIC_VIEW will be returned. Specify the ... |
| `appengine.apps.services.versions.create` | POST | `v1/apps/{appsId}/services/{servicesId}/versions` | Deploys code and resource files to a new version. |
| `appengine.apps.services.versions.patch` | PATCH | `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}` | Updates the specified Version resource. You can specify the following fields depending on the App... |
| `appengine.apps.services.versions.delete` | DELETE | `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}` | Deletes an existing Version resource. |
| `appengine.apps.services.versions.instances.list` | GET | `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances` | Lists the instances of a version.Tip: To aggregate details about instances over time, see the Sta... |
| `appengine.apps.services.versions.instances.get` | GET | `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}` | Gets instance information. |
| `appengine.apps.services.versions.instances.delete` | DELETE | `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}` | Stops a running instance.The instance might be automatically recreated based on the scaling setti... |
| `appengine.apps.services.versions.instances.debug` | POST | `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}:debug` | Enables debugging on a VM instance. This allows you to use the SSH command to connect to the virt... |
| `appengine.apps.firewall.ingressRules.list` | GET | `v1/apps/{appsId}/firewall/ingressRules` | Lists the firewall rules of an application. |
| `appengine.apps.firewall.ingressRules.batchUpdate` | POST | `v1/apps/{appsId}/firewall/ingressRules:batchUpdate` | Replaces the entire firewall ruleset in one bulk operation. This overrides and replaces the rules... |
| `appengine.apps.firewall.ingressRules.create` | POST | `v1/apps/{appsId}/firewall/ingressRules` | Creates a firewall rule for the application. |
| `appengine.apps.firewall.ingressRules.get` | GET | `v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}` | Gets the specified firewall rule. |
| `appengine.apps.firewall.ingressRules.patch` | PATCH | `v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}` | Updates the specified firewall rule. |
| `appengine.apps.firewall.ingressRules.delete` | DELETE | `v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}` | Deletes the specified firewall rule. |
| `appengine.apps.authorizedDomains.list` | GET | `v1/apps/{appsId}/authorizedDomains` | Lists all domains the user is authorized to administer. |
| `appengine.apps.authorizedCertificates.list` | GET | `v1/apps/{appsId}/authorizedCertificates` | Lists all SSL certificates the user is authorized to administer. |
| `appengine.apps.authorizedCertificates.get` | GET | `v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}` | Gets the specified SSL certificate. |
| `appengine.apps.authorizedCertificates.create` | POST | `v1/apps/{appsId}/authorizedCertificates` | Uploads the specified SSL certificate. |
| `appengine.apps.authorizedCertificates.patch` | PATCH | `v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}` | Updates the specified SSL certificate. To renew a certificate and maintain its existing domain ma... |
| `appengine.apps.authorizedCertificates.delete` | DELETE | `v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}` | Deletes the specified SSL certificate. |
| `appengine.apps.domainMappings.list` | GET | `v1/apps/{appsId}/domainMappings` | Lists the domain mappings on an application. |
| `appengine.apps.domainMappings.get` | GET | `v1/apps/{appsId}/domainMappings/{domainMappingsId}` | Gets the specified domain mapping. |
| `appengine.apps.domainMappings.create` | POST | `v1/apps/{appsId}/domainMappings` | Maps a domain to an application. A user must be authorized to administer a domain in order to map... |
| `appengine.apps.domainMappings.patch` | PATCH | `v1/apps/{appsId}/domainMappings/{domainMappingsId}` | Updates the specified domain mapping. To map an SSL certificate to a domain mapping, update certi... |
| `appengine.apps.domainMappings.delete` | DELETE | `v1/apps/{appsId}/domainMappings/{domainMappingsId}` | Deletes the specified domain mapping. A user must be authorized to administer the associated doma... |
| `appengine.apps.locations.list` | GET | `v1/apps/{appsId}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `appengine.apps.locations.get` | GET | `v1/apps/{appsId}/locations/{locationsId}` | Gets information about a location. |
| `appengine.projects.locations.applications.patch` | PATCH | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}` | Updates the specified Application resource. You can update the following fields: auth_domain - Go... |
| `appengine.projects.locations.applications.services.patch` | PATCH | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/services/{servicesId}` | Updates the configuration of the specified service. |
| `appengine.projects.locations.applications.services.delete` | DELETE | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/services/{servicesId}` | Deletes the specified service and all enclosed versions. |
| `appengine.projects.locations.applications.services.versions.patch` | PATCH | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/services/{servicesId}/versions/{versionsId}` | Updates the specified Version resource. You can specify the following fields depending on the App... |
| `appengine.projects.locations.applications.services.versions.delete` | DELETE | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/services/{servicesId}/versions/{versionsId}` | Deletes an existing Version resource. |
| `appengine.projects.locations.applications.services.versions.instances.delete` | DELETE | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}` | Stops a running instance.The instance might be automatically recreated based on the scaling setti... |
| `appengine.projects.locations.applications.services.versions.instances.debug` | POST | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}:debug` | Enables debugging on a VM instance. This allows you to use the SSH command to connect to the virt... |
| `appengine.projects.locations.applications.authorizedDomains.list` | GET | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/authorizedDomains` | Lists all domains the user is authorized to administer. |
| `appengine.projects.locations.applications.authorizedCertificates.list` | GET | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/authorizedCertificates` | Lists all SSL certificates the user is authorized to administer. |
| `appengine.projects.locations.applications.authorizedCertificates.get` | GET | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/authorizedCertificates/{authorizedCertificatesId}` | Gets the specified SSL certificate. |
| `appengine.projects.locations.applications.authorizedCertificates.create` | POST | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/authorizedCertificates` | Uploads the specified SSL certificate. |
| `appengine.projects.locations.applications.authorizedCertificates.patch` | PATCH | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/authorizedCertificates/{authorizedCertificatesId}` | Updates the specified SSL certificate. To renew a certificate and maintain its existing domain ma... |
| `appengine.projects.locations.applications.authorizedCertificates.delete` | DELETE | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/authorizedCertificates/{authorizedCertificatesId}` | Deletes the specified SSL certificate. |
| `appengine.projects.locations.applications.domainMappings.list` | GET | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/domainMappings` | Lists the domain mappings on an application. |
| `appengine.projects.locations.applications.domainMappings.get` | GET | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/domainMappings/{domainMappingsId}` | Gets the specified domain mapping. |
| `appengine.projects.locations.applications.domainMappings.create` | POST | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/domainMappings` | Maps a domain to an application. A user must be authorized to administer a domain in order to map... |
| `appengine.projects.locations.applications.domainMappings.patch` | PATCH | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/domainMappings/{domainMappingsId}` | Updates the specified domain mapping. To map an SSL certificate to a domain mapping, update certi... |
| `appengine.projects.locations.applications.domainMappings.delete` | DELETE | `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/domainMappings/{domainMappingsId}` | Deletes the specified domain mapping. A user must be authorized to administer the associated doma... |

### `appengine.apps.get`

**GET** `v1/apps/{appsId}`

Gets information about an application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the Application resource to get. Example: apps/myapp. |
| `includeExtraData` | `string` | query | No | Options to include extra data |

**Response**: `Application`

```typescript
const res = await appengine.apps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.create`

**POST** `v1/apps`

Creates an App Engine application for a Google Cloud Platform project. Required fields: id - The ID of the target Cloud Platform project. location - The region (https://cloud.google.com/appengine/docs/locations) where you want the App Engine application located.For more information about App Engine applications, see Managing Projects, Applications, and Billing (https://cloud.google.com/appengine/docs/standard/python/console/).

**Request body**: `Application`

**Response**: `Operation`

```typescript
const res = await appengine.apps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.patch`

**PATCH** `v1/apps/{appsId}`

Updates the specified Application resource. You can update the following fields: auth_domain - Google authentication domain for controlling user access to the application. default_cookie_expiration - Cookie expiration policy for the application. iap - Identity-Aware Proxy properties for the application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the Application resource to update. Example: apps/myapp. |
| `updateMask` | `string` | query | No | Required. Standard field mask for the set of fields to be updated. |

**Request body**: `Application`

**Response**: `Operation`

```typescript
const res = await appengine.apps.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.repair`

**POST** `v1/apps/{appsId}:repair`

Recreates the required App Engine features for the specified App Engine application, for example a Cloud Storage bucket or App Engine service account. Use this method if you receive an error message about a missing feature, for example, Error retrieving the App Engine service account. If you have deleted your App Engine service account, this will not be able to recreate it. Instead, you should attempt to use the IAM undelete API if possible at https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts/undelete?apix_params=%7B"name"%3A"projects%2F-%2FserviceAccounts%2Funique_id"%2C"resource"%3A%7B%7D%7D . If the deletion was recent, the numeric ID can be found in the Cloud Console Activity Log.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the application to repair. Example: apps/myapp |

**Request body**: `RepairApplicationRequest`

**Response**: `Operation`

```typescript
const res = await appengine.apps.repair({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.listRuntimes`

**GET** `v1/apps/{appsId}:listRuntimes`

Lists all the available runtimes for the application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Application resource. Example: apps/myapp. |
| `environment` | `string` | query | No | Optional. The environment of the Application. |

**Response**: `ListRuntimesResponse`

```typescript
const res = await appengine.apps.listRuntimes({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.operations.list`

**GET** `v1/apps/{appsId}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to true, operations that are reachable are returned as normal, and those that are unreachable are returned i... |

**Response**: `ListOperationsResponse`

```typescript
const res = await appengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.operations.get`

**GET** `v1/apps/{appsId}/operations/{operationsId}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. The name of the operation resource. |
| `operationsId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |

**Response**: `Operation`

```typescript
const res = await appengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.services.list`

**GET** `v1/apps/{appsId}/services`

Lists all the services in the application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Application resource. Example: apps/myapp. |
| `pageSize` | `integer` | query | No | Maximum results to return per page. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListServicesResponse`

```typescript
const res = await appengine.services.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.services.get`

**GET** `v1/apps/{appsId}/services/{servicesId}`

Gets the current configuration of the specified service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/services/default. |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |

**Response**: `Service`

```typescript
const res = await appengine.services.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.services.patch`

**PATCH** `v1/apps/{appsId}/services/{servicesId}`

Updates the configuration of the specified service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource to update. Example: apps/myapp/services/default. |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `migrateTraffic` | `boolean` | query | No | Set to true to gradually shift traffic to one or more versions that you specify. By default, traffic is shifted immed... |
| `updateMask` | `string` | query | No | Required. Standard field mask for the set of fields to be updated. |

**Request body**: `Service`

**Response**: `Operation`

```typescript
const res = await appengine.services.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.services.delete`

**DELETE** `v1/apps/{appsId}/services/{servicesId}`

Deletes the specified service and all enclosed versions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/services/default. |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |

**Response**: `Operation`

```typescript
const res = await appengine.services.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.services.versions.list`

**GET** `v1/apps/{appsId}/services/{servicesId}/versions`

Lists the versions of a service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Service resource. Example: apps/myapp/services/default. |
| `servicesId` | `string` | path | Yes | Part of `parent`. See documentation of `appsId`. |
| `pageSize` | `integer` | query | No | Maximum results to return per page. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |
| `view` | `string` | query | No | Controls the set of fields returned in the List response. |

**Response**: `ListVersionsResponse`

```typescript
const res = await appengine.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.services.versions.get`

**GET** `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}`

Gets the specified Version resource. By default, only a BASIC_VIEW will be returned. Specify the FULL_VIEW parameter to get the full resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/services/default/versions/v1. |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `versionsId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `view` | `string` | query | No | Controls the set of fields returned in the Get response. |

**Response**: `Version`

```typescript
const res = await appengine.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.services.versions.create`

**POST** `v1/apps/{appsId}/services/{servicesId}/versions`

Deploys code and resource files to a new version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent resource to create this version under. Example: apps/myapp/services/de... |
| `servicesId` | `string` | path | Yes | Part of `parent`. See documentation of `appsId`. |

**Request body**: `Version`

**Response**: `Operation`

```typescript
const res = await appengine.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.services.versions.patch`

**PATCH** `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}`

Updates the specified Version resource. You can specify the following fields depending on the App Engine environment and type of scaling that the version resource uses:Standard environment instance_class (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.instance_class)automatic scaling in the standard environment: automatic_scaling.min_idle_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automatic_scaling.max_idle_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automaticScaling.standard_scheduler_settings.max_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard_scheduler_settings.min_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard_scheduler_settings.target_cpu_utilization (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard_scheduler_settings.target_throughput_utilization (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings)basic scaling or manual scaling in the standard environment: serving_status (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.serving_status) manual_scaling.instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#manualscaling)Flexible environment serving_status (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.serving_status)automatic scaling in the flexible environment: automatic_scaling.min_total_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automatic_scaling.max_total_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automatic_scaling.cool_down_period_sec (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automatic_scaling.cpu_utilization.target_utilization (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling)manual scaling in the flexible environment: manual_scaling.instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#manualscaling)

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource to update. Example: apps/myapp/services/default/versions/1. |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `versionsId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `updateMask` | `string` | query | No | Standard field mask for the set of fields to be updated. |

**Request body**: `Version`

**Response**: `Operation`

```typescript
const res = await appengine.versions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.services.versions.delete`

**DELETE** `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}`

Deletes an existing Version resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/services/default/versions/v1. |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `versionsId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |

**Response**: `Operation`

```typescript
const res = await appengine.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.services.versions.instances.list`

**GET** `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances`

Lists the instances of a version.Tip: To aggregate details about instances over time, see the Stackdriver Monitoring API (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Version resource. Example: apps/myapp/services/default/versions/v1. |
| `servicesId` | `string` | path | Yes | Part of `parent`. See documentation of `appsId`. |
| `versionsId` | `string` | path | Yes | Part of `parent`. See documentation of `appsId`. |
| `pageSize` | `integer` | query | No | Maximum results to return per page. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListInstancesResponse`

```typescript
const res = await appengine.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.services.versions.instances.get`

**GET** `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}`

Gets instance information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/services/default/versions/v1/instances/... |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `versionsId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `instancesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |

**Response**: `Instance`

```typescript
const res = await appengine.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.services.versions.instances.delete`

**DELETE** `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}`

Stops a running instance.The instance might be automatically recreated based on the scaling settings of the version. For more information, see "How Instances are Managed" (standard environment (https://cloud.google.com/appengine/docs/standard/python/how-instances-are-managed) | flexible environment (https://cloud.google.com/appengine/docs/flexible/python/how-instances-are-managed)).To ensure that instances are not re-created and avoid getting billed, you can stop all instances within the target version by changing the serving status of the version to STOPPED with the apps.services.versions.patch (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions/patch) method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/services/default/versions/v1/instances/... |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `versionsId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `instancesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |

**Response**: `Operation`

```typescript
const res = await appengine.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.services.versions.instances.debug`

**POST** `v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}:debug`

Enables debugging on a VM instance. This allows you to use the SSH command to connect to the virtual machine where the instance lives. While in "debug mode", the instance continues to serve live traffic. You should delete the instance when you are done debugging and then allow the system to take over and determine if another instance should be started.Only applicable for instances in App Engine flexible environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/services/default/versions/v1/instances/... |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `versionsId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `instancesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |

**Request body**: `DebugInstanceRequest`

**Response**: `Operation`

```typescript
const res = await appengine.instances.debug({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.firewall.ingressRules.list`

**GET** `v1/apps/{appsId}/firewall/ingressRules`

Lists the firewall rules of an application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `parent`. Name of the Firewall collection to retrieve. Example: apps/myapp/firewall/ingressRules. |
| `matchingAddress` | `string` | query | No | A valid IP Address. If set, only rules matching this address will be returned. The first returned rule will be the ru... |
| `pageSize` | `integer` | query | No | Maximum results to return per page. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListIngressRulesResponse`

```typescript
const res = await appengine.ingressRules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.firewall.ingressRules.batchUpdate`

**POST** `v1/apps/{appsId}/firewall/ingressRules:batchUpdate`

Replaces the entire firewall ruleset in one bulk operation. This overrides and replaces the rules of an existing firewall with the new rules.If the final rule does not match traffic with the '*' wildcard IP range, then an "allow all" rule is explicitly added to the end of the list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Name of the Firewall collection to set. Example: apps/myapp/firewall/ingressRules. |

**Request body**: `BatchUpdateIngressRulesRequest`

**Response**: `BatchUpdateIngressRulesResponse`

```typescript
const res = await appengine.ingressRules.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.firewall.ingressRules.create`

**POST** `v1/apps/{appsId}/firewall/ingressRules`

Creates a firewall rule for the application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Firewall collection in which to create a new rule. Example: apps/myapp... |

**Request body**: `FirewallRule`

**Response**: `FirewallRule`

```typescript
const res = await appengine.ingressRules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.firewall.ingressRules.get`

**GET** `v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}`

Gets the specified firewall rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Name of the Firewall resource to retrieve. Example: apps/myapp/firewall/ingressRules/100. |
| `ingressRulesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |

**Response**: `FirewallRule`

```typescript
const res = await appengine.ingressRules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.firewall.ingressRules.patch`

**PATCH** `v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}`

Updates the specified firewall rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Name of the Firewall resource to update. Example: apps/myapp/firewall/ingressRules/100. |
| `ingressRulesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `updateMask` | `string` | query | No | Standard field mask for the set of fields to be updated. |

**Request body**: `FirewallRule`

**Response**: `FirewallRule`

```typescript
const res = await appengine.ingressRules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.firewall.ingressRules.delete`

**DELETE** `v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}`

Deletes the specified firewall rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Name of the Firewall resource to delete. Example: apps/myapp/firewall/ingressRules/100. |
| `ingressRulesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |

**Response**: `Empty`

```typescript
const res = await appengine.ingressRules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.authorizedDomains.list`

**GET** `v1/apps/{appsId}/authorizedDomains`

Lists all domains the user is authorized to administer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Application resource. Example: apps/myapp. |
| `pageSize` | `integer` | query | No | Maximum results to return per page. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListAuthorizedDomainsResponse`

```typescript
const res = await appengine.authorizedDomains.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.authorizedCertificates.list`

**GET** `v1/apps/{appsId}/authorizedCertificates`

Lists all SSL certificates the user is authorized to administer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Application resource. Example: apps/myapp. |
| `pageSize` | `integer` | query | No | Maximum results to return per page. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |
| `view` | `string` | query | No | Controls the set of fields returned in the LIST response. |

**Response**: `ListAuthorizedCertificatesResponse`

```typescript
const res = await appengine.authorizedCertificates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.authorizedCertificates.get`

**GET** `v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}`

Gets the specified SSL certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/authorizedCertificates/12345. |
| `authorizedCertificatesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `view` | `string` | query | No | Controls the set of fields returned in the GET response. |

**Response**: `AuthorizedCertificate`

```typescript
const res = await appengine.authorizedCertificates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.authorizedCertificates.create`

**POST** `v1/apps/{appsId}/authorizedCertificates`

Uploads the specified SSL certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Application resource. Example: apps/myapp. |

**Request body**: `AuthorizedCertificate`

**Response**: `AuthorizedCertificate`

```typescript
const res = await appengine.authorizedCertificates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.authorizedCertificates.patch`

**PATCH** `v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}`

Updates the specified SSL certificate. To renew a certificate and maintain its existing domain mappings, update certificate_data with a new certificate. The new certificate must be applicable to the same domains as the original certificate. The certificate display_name may also be updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource to update. Example: apps/myapp/authorizedCertificates/12345. |
| `authorizedCertificatesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `updateMask` | `string` | query | No | Standard field mask for the set of fields to be updated. Updates are only supported on the certificate_raw_data and d... |

**Request body**: `AuthorizedCertificate`

**Response**: `AuthorizedCertificate`

```typescript
const res = await appengine.authorizedCertificates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.authorizedCertificates.delete`

**DELETE** `v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}`

Deletes the specified SSL certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource to delete. Example: apps/myapp/authorizedCertificates/12345. |
| `authorizedCertificatesId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |

**Response**: `Empty`

```typescript
const res = await appengine.authorizedCertificates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.domainMappings.list`

**GET** `v1/apps/{appsId}/domainMappings`

Lists the domain mappings on an application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Application resource. Example: apps/myapp. |
| `pageSize` | `integer` | query | No | Maximum results to return per page. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListDomainMappingsResponse`

```typescript
const res = await appengine.domainMappings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.domainMappings.get`

**GET** `v1/apps/{appsId}/domainMappings/{domainMappingsId}`

Gets the specified domain mapping.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/domainMappings/example.com. |
| `domainMappingsId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |

**Response**: `DomainMapping`

```typescript
const res = await appengine.domainMappings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.domainMappings.create`

**POST** `v1/apps/{appsId}/domainMappings`

Maps a domain to an application. A user must be authorized to administer a domain in order to map it to an application. For a list of available authorized domains, see AuthorizedDomains.ListAuthorizedDomains.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Application resource. Example: apps/myapp. |
| `overrideStrategy` | `string` | query | No | Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected. |

**Request body**: `DomainMapping`

**Response**: `Operation`

```typescript
const res = await appengine.domainMappings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.domainMappings.patch`

**PATCH** `v1/apps/{appsId}/domainMappings/{domainMappingsId}`

Updates the specified domain mapping. To map an SSL certificate to a domain mapping, update certificate_id to point to an AuthorizedCertificate resource. A user must be authorized to administer the associated domain in order to update a DomainMapping resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource to update. Example: apps/myapp/domainMappings/example.com. |
| `domainMappingsId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |
| `updateMask` | `string` | query | No | Required. Standard field mask for the set of fields to be updated. |

**Request body**: `DomainMapping`

**Response**: `Operation`

```typescript
const res = await appengine.domainMappings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.domainMappings.delete`

**DELETE** `v1/apps/{appsId}/domainMappings/{domainMappingsId}`

Deletes the specified domain mapping. A user must be authorized to administer the associated domain in order to delete a DomainMapping resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource to delete. Example: apps/myapp/domainMappings/example.com. |
| `domainMappingsId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |

**Response**: `Operation`

```typescript
const res = await appengine.domainMappings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.apps.locations.list`

**GET** `v1/apps/{appsId}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: List all public locations: Use the path GET /v1/locations. List project-visible locations: Use the path GET /v1/projects/{project_id}/locations. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like "displayName=tokyo... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the next_page_token field in the response. Send that page token to receive the subsequent ... |

**Response**: `ListLocationsResponse`

```typescript
const res = await appengine.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.apps.locations.get`

**GET** `v1/apps/{appsId}/locations/{locationsId}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appsId` | `string` | path | Yes | Part of `name`. Resource name for the location. |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `appsId`. |

**Response**: `Location`

```typescript
const res = await appengine.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.projects.locations.applications.patch`

**PATCH** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}`

Updates the specified Application resource. You can update the following fields: auth_domain - Google authentication domain for controlling user access to the application. default_cookie_expiration - Cookie expiration policy for the application. iap - Identity-Aware Proxy properties for the application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `name`. Required. Name of the Application resource to update. Example: apps/myapp. |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `updateMask` | `string` | query | No | Required. Standard field mask for the set of fields to be updated. |

**Request body**: `Application`

**Response**: `Operation`

```typescript
const res = await appengine.applications.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.projects.locations.applications.services.patch`

**PATCH** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/services/{servicesId}`

Updates the configuration of the specified service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource to update. Example: apps/myapp/services/default. |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `migrateTraffic` | `boolean` | query | No | Set to true to gradually shift traffic to one or more versions that you specify. By default, traffic is shifted immed... |
| `updateMask` | `string` | query | No | Required. Standard field mask for the set of fields to be updated. |

**Request body**: `Service`

**Response**: `Operation`

```typescript
const res = await appengine.services.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.projects.locations.applications.services.delete`

**DELETE** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/services/{servicesId}`

Deletes the specified service and all enclosed versions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/services/default. |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |

**Response**: `Operation`

```typescript
const res = await appengine.services.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.projects.locations.applications.services.versions.patch`

**PATCH** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/services/{servicesId}/versions/{versionsId}`

Updates the specified Version resource. You can specify the following fields depending on the App Engine environment and type of scaling that the version resource uses:Standard environment instance_class (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.instance_class)automatic scaling in the standard environment: automatic_scaling.min_idle_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automatic_scaling.max_idle_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automaticScaling.standard_scheduler_settings.max_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard_scheduler_settings.min_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard_scheduler_settings.target_cpu_utilization (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard_scheduler_settings.target_throughput_utilization (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings)basic scaling or manual scaling in the standard environment: serving_status (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.serving_status) manual_scaling.instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#manualscaling)Flexible environment serving_status (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.serving_status)automatic scaling in the flexible environment: automatic_scaling.min_total_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automatic_scaling.max_total_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automatic_scaling.cool_down_period_sec (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automatic_scaling.cpu_utilization.target_utilization (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling)manual scaling in the flexible environment: manual_scaling.instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#manualscaling)

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource to update. Example: apps/myapp/services/default/versions/1. |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `versionsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `updateMask` | `string` | query | No | Standard field mask for the set of fields to be updated. |

**Request body**: `Version`

**Response**: `Operation`

```typescript
const res = await appengine.versions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.projects.locations.applications.services.versions.delete`

**DELETE** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/services/{servicesId}/versions/{versionsId}`

Deletes an existing Version resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/services/default/versions/v1. |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `versionsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |

**Response**: `Operation`

```typescript
const res = await appengine.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.projects.locations.applications.services.versions.instances.delete`

**DELETE** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}`

Stops a running instance.The instance might be automatically recreated based on the scaling settings of the version. For more information, see "How Instances are Managed" (standard environment (https://cloud.google.com/appengine/docs/standard/python/how-instances-are-managed) | flexible environment (https://cloud.google.com/appengine/docs/flexible/python/how-instances-are-managed)).To ensure that instances are not re-created and avoid getting billed, you can stop all instances within the target version by changing the serving status of the version to STOPPED with the apps.services.versions.patch (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions/patch) method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/services/default/versions/v1/instances/... |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `versionsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `instancesId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |

**Response**: `Operation`

```typescript
const res = await appengine.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.projects.locations.applications.services.versions.instances.debug`

**POST** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}:debug`

Enables debugging on a VM instance. This allows you to use the SSH command to connect to the virtual machine where the instance lives. While in "debug mode", the instance continues to serve live traffic. You should delete the instance when you are done debugging and then allow the system to take over and determine if another instance should be started.Only applicable for instances in App Engine flexible environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/services/default/versions/v1/instances/... |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `servicesId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `versionsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `instancesId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |

**Request body**: `DebugInstanceRequest`

**Response**: `Operation`

```typescript
const res = await appengine.instances.debug({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.projects.locations.applications.authorizedDomains.list`

**GET** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/authorizedDomains`

Lists all domains the user is authorized to administer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Application resource. Example: apps/myapp. |
| `locationsId` | `string` | path | Yes | Part of `parent`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `parent`. See documentation of `projectsId`. |
| `pageSize` | `integer` | query | No | Maximum results to return per page. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListAuthorizedDomainsResponse`

```typescript
const res = await appengine.authorizedDomains.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.projects.locations.applications.authorizedCertificates.list`

**GET** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/authorizedCertificates`

Lists all SSL certificates the user is authorized to administer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Application resource. Example: apps/myapp. |
| `locationsId` | `string` | path | Yes | Part of `parent`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `parent`. See documentation of `projectsId`. |
| `pageSize` | `integer` | query | No | Maximum results to return per page. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |
| `view` | `string` | query | No | Controls the set of fields returned in the LIST response. |

**Response**: `ListAuthorizedCertificatesResponse`

```typescript
const res = await appengine.authorizedCertificates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.projects.locations.applications.authorizedCertificates.get`

**GET** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/authorizedCertificates/{authorizedCertificatesId}`

Gets the specified SSL certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/authorizedCertificates/12345. |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `authorizedCertificatesId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `view` | `string` | query | No | Controls the set of fields returned in the GET response. |

**Response**: `AuthorizedCertificate`

```typescript
const res = await appengine.authorizedCertificates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.projects.locations.applications.authorizedCertificates.create`

**POST** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/authorizedCertificates`

Uploads the specified SSL certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Application resource. Example: apps/myapp. |
| `locationsId` | `string` | path | Yes | Part of `parent`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `parent`. See documentation of `projectsId`. |

**Request body**: `AuthorizedCertificate`

**Response**: `AuthorizedCertificate`

```typescript
const res = await appengine.authorizedCertificates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.projects.locations.applications.authorizedCertificates.patch`

**PATCH** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/authorizedCertificates/{authorizedCertificatesId}`

Updates the specified SSL certificate. To renew a certificate and maintain its existing domain mappings, update certificate_data with a new certificate. The new certificate must be applicable to the same domains as the original certificate. The certificate display_name may also be updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource to update. Example: apps/myapp/authorizedCertificates/12345. |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `authorizedCertificatesId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `updateMask` | `string` | query | No | Standard field mask for the set of fields to be updated. Updates are only supported on the certificate_raw_data and d... |

**Request body**: `AuthorizedCertificate`

**Response**: `AuthorizedCertificate`

```typescript
const res = await appengine.authorizedCertificates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.projects.locations.applications.authorizedCertificates.delete`

**DELETE** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/authorizedCertificates/{authorizedCertificatesId}`

Deletes the specified SSL certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource to delete. Example: apps/myapp/authorizedCertificates/12345. |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `authorizedCertificatesId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |

**Response**: `Empty`

```typescript
const res = await appengine.authorizedCertificates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.projects.locations.applications.domainMappings.list`

**GET** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/domainMappings`

Lists the domain mappings on an application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Application resource. Example: apps/myapp. |
| `locationsId` | `string` | path | Yes | Part of `parent`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `parent`. See documentation of `projectsId`. |
| `pageSize` | `integer` | query | No | Maximum results to return per page. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListDomainMappingsResponse`

```typescript
const res = await appengine.domainMappings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.projects.locations.applications.domainMappings.get`

**GET** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/domainMappings/{domainMappingsId}`

Gets the specified domain mapping.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource requested. Example: apps/myapp/domainMappings/example.com. |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `domainMappingsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |

**Response**: `DomainMapping`

```typescript
const res = await appengine.domainMappings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appengine.admin`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `appengine.projects.locations.applications.domainMappings.create`

**POST** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/domainMappings`

Maps a domain to an application. A user must be authorized to administer a domain in order to map it to an application. For a list of available authorized domains, see AuthorizedDomains.ListAuthorizedDomains.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `parent`. Required. Name of the parent Application resource. Example: apps/myapp. |
| `locationsId` | `string` | path | Yes | Part of `parent`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `parent`. See documentation of `projectsId`. |
| `overrideStrategy` | `string` | query | No | Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected. |

**Request body**: `DomainMapping`

**Response**: `Operation`

```typescript
const res = await appengine.domainMappings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.projects.locations.applications.domainMappings.patch`

**PATCH** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/domainMappings/{domainMappingsId}`

Updates the specified domain mapping. To map an SSL certificate to a domain mapping, update certificate_id to point to an AuthorizedCertificate resource. A user must be authorized to administer the associated domain in order to update a DomainMapping resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource to update. Example: apps/myapp/domainMappings/example.com. |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `domainMappingsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `updateMask` | `string` | query | No | Required. Standard field mask for the set of fields to be updated. |

**Request body**: `DomainMapping`

**Response**: `Operation`

```typescript
const res = await appengine.domainMappings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `appengine.projects.locations.applications.domainMappings.delete`

**DELETE** `v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}/domainMappings/{domainMappingsId}`

Deletes the specified domain mapping. A user must be authorized to administer the associated domain in order to delete a DomainMapping resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectsId` | `string` | path | Yes | Part of `name`. Required. Name of the resource to delete. Example: apps/myapp/domainMappings/example.com. |
| `locationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `applicationsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |
| `domainMappingsId` | `string` | path | Yes | Part of `name`. See documentation of `projectsId`. |

**Response**: `Operation`

```typescript
const res = await appengine.domainMappings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `ApiConfigHandler`

Google Cloud Endpoints (https://cloud.google.com/endpoints) configuration for API handlers.

| Property | Type | Description |
|----------|------|-------------|
| `authFailAction` | `string` | Action to take when users access resources that require authentication. Defaults to redirect. |
| `login` | `string` | Level of login required to access this resource. Defaults to optional. |
| `script` | `string` | Path to the script from the application root directory. |
| `securityLevel` | `string` | Security (HTTPS) enforcement for this URL. |
| `url` | `string` | URL to serve the endpoint at. |

### `ApiEndpointHandler`

Uses Google Cloud Endpoints to handle requests.

| Property | Type | Description |
|----------|------|-------------|
| `scriptPath` | `string` | Path to the script from the application root directory. |

### `Application`

An Application resource contains the top-level configuration of an App Engine application.

| Property | Type | Description |
|----------|------|-------------|
| `authDomain` | `string` | Google Apps authentication domain that controls which users can access this application.Defaults ... |
| `codeBucket` | `string` | Output only. Google Cloud Storage bucket that can be used for storing files associated with this ... |
| `databaseType` | `string` | The type of the Cloud Firestore or Cloud Datastore database associated with this application. |
| `defaultBucket` | `string` | Output only. Google Cloud Storage bucket that can be used by this application to store content.@O... |
| `defaultCookieExpiration` | `string` | Cookie expiration policy for this application. |
| `defaultHostname` | `string` | Output only. Hostname used to reach this application, as resolved by App Engine.@OutputOnly |
| `dispatchRules` | `array<UrlDispatchRule>` | HTTP path dispatch rules for requests to the application that do not explicitly target a service ... |
| `featureSettings` | `FeatureSettings` | The feature specific settings to be used in the application. |
| `gcrDomain` | `string` | Output only. The Google Container Registry domain used for storing managed build docker images fo... |
| `generatedCustomerMetadata` | `object` | Additional Google Generated Customer Metadata, this field won't be provided by default and can be... |
| `iap` | `IdentityAwareProxy` |  |
| `id` | `string` | Identifier of the Application resource. This identifier is equivalent to the project ID of the Go... |
| `locationId` | `string` | Location from which this application runs. Application instances run out of the data centers in t... |
| `name` | `string` |  |
| `serviceAccount` | `string` | The service account associated with the application. This is the app-level default identity. If n... |
| `servingStatus` | `string` | Serving status of this application. |
| `sslPolicy` | `string` | The SSL policy that will be applied to the application. If set to Modern it will restrict traffic... |

### `AuthorizedCertificate`

An SSL certificate that a user has been authorized to administer. A user is authorized to administer any certificate that applies to one of their authorized domains.

| Property | Type | Description |
|----------|------|-------------|
| `certificateRawData` | `CertificateRawData` | The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independent... |
| `displayName` | `string` | The user-specified display name of the certificate. This is not guaranteed to be unique. Example:... |
| `domainMappingsCount` | `integer` | Aggregate count of the domain mappings with this certificate mapped. This count includes domain m... |
| `domainNames` | `array<string>` | Output only. Topmost applicable domains of this certificate. This certificate applies to these do... |
| `expireTime` | `string` | The time when this certificate expires. To update the renewal time on this certificate, upload an... |
| `id` | `string` | Output only. Relative name of the certificate. This is a unique value autogenerated on Authorized... |
| `managedCertificate` | `ManagedCertificate` | Only applicable if this certificate is managed by App Engine. Managed certificates are tied to th... |
| `name` | `string` | Output only. Full path to the AuthorizedCertificate resource in the API. Example: apps/myapp/auth... |
| `visibleDomainMappings` | `array<string>` | Output only. The full paths to user visible Domain Mapping resources that have this certificate m... |

### `AuthorizedDomain`

A domain that a user has been authorized to administer. To authorize use of a domain, verify ownership via Search Console (https://search.google.com/search-console/welcome).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Fully qualified domain name of the domain authorized for use. Example: example.com. |
| `name` | `string` | Full path to the AuthorizedDomain resource in the API. Example: apps/myapp/authorizedDomains/exam... |

### `AutomaticScaling`

Automatic scaling is based on request rate, response latencies, and other application metrics.

| Property | Type | Description |
|----------|------|-------------|
| `coolDownPeriod` | `string` | The time period that the Autoscaler (https://cloud.google.com/compute/docs/autoscaler/) should wa... |
| `cpuUtilization` | `CpuUtilization` | Target scaling by CPU usage. |
| `diskUtilization` | `DiskUtilization` | Target scaling by disk usage. |
| `maxConcurrentRequests` | `integer` | Number of concurrent requests an automatic scaling instance can accept before the scheduler spawn... |
| `maxIdleInstances` | `integer` | Maximum number of idle instances that should be maintained for this version. |
| `maxPendingLatency` | `string` | Maximum amount of time that a request should wait in the pending queue before starting a new inst... |
| `maxTotalInstances` | `integer` | Maximum number of instances that should be started to handle requests for this version. |
| `minIdleInstances` | `integer` | Minimum number of idle instances that should be maintained for this version. Only applicable for ... |
| `minPendingLatency` | `string` | Minimum amount of time a request should wait in the pending queue before starting a new instance ... |
| `minTotalInstances` | `integer` | Minimum number of running instances that should be maintained for this version. |
| `networkUtilization` | `NetworkUtilization` | Target scaling by network usage. |
| `requestUtilization` | `RequestUtilization` | Target scaling by request utilization. |
| `standardSchedulerSettings` | `StandardSchedulerSettings` | Scheduler settings for standard environment. |

### `BasicScaling`

A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.

| Property | Type | Description |
|----------|------|-------------|
| `idleTimeout` | `string` | Duration of time after the last request that an instance must wait before the instance is shut down. |
| `maxInstances` | `integer` | Maximum number of instances to create for this version. |

### `BatchUpdateIngressRulesRequest`

Request message for Firewall.BatchUpdateIngressRules.

| Property | Type | Description |
|----------|------|-------------|
| `ingressRules` | `array<FirewallRule>` | A list of FirewallRules to replace the existing set. |

### `BatchUpdateIngressRulesResponse`

Response message for Firewall.UpdateAllIngressRules.

| Property | Type | Description |
|----------|------|-------------|
| `ingressRules` | `array<FirewallRule>` | The full list of ingress FirewallRules for this application. |

### `CertificateRawData`

An SSL certificate obtained from a certificate authority.

| Property | Type | Description |
|----------|------|-------------|
| `privateKey` | `string` | Unencrypted PEM encoded RSA private key. This field is set once on certificate creation and then ... |
| `publicCertificate` | `string` | PEM encoded x.509 public key certificate. This field is set once on certificate creation. Must in... |

### `CloudBuildOptions`

Options for the build operations performed as a part of the version deployment. Only applicable for App Engine flexible environment when creating a version using source code directly.

| Property | Type | Description |
|----------|------|-------------|
| `appYamlPath` | `string` | Path to the yaml file used in deployment, used to determine runtime configuration details.Require... |
| `cloudBuildTimeout` | `string` | The Cloud Build timeout used as part of any dependent builds performed by version creation. Defau... |

### `ContainerInfo`

Docker image that is used to create a container and start a VM instance for the version that you deploy. Only applicable for instances running in the App Engine flexible environment.

| Property | Type | Description |
|----------|------|-------------|
| `image` | `string` | URI to the hosted container image in Google Container Registry. The URI must be fully qualified a... |

### `ContainerState`

ContainerState contains the externally-visible container state that is used to communicate the state and reasoning for that state to the CLH. This data is not persisted by CCFE, but is instead derived from CCFE's internal representation of the container state.

| Property | Type | Description |
|----------|------|-------------|
| `currentReasons` | `Reasons` |  |
| `previousReasons` | `Reasons` | The previous and current reasons for a container state will be sent for a container event. CLHs t... |
| `state` | `string` | The current state of the container. This state is the culmination of all of the opinions from ext... |

### `CpuUtilization`

Target scaling by CPU usage.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationWindowLength` | `string` | Period of time over which CPU utilization is calculated. |
| `targetUtilization` | `number` | Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1. |

### `CreateVersionMetadataV1`

Metadata for the given google.longrunning.Operation during a google.appengine.v1.CreateVersionRequest.

| Property | Type | Description |
|----------|------|-------------|
| `cloudBuildId` | `string` | The Cloud Build ID if one was created as part of the version create. @OutputOnly |

### `CreateVersionMetadataV1Alpha`

Metadata for the given google.longrunning.Operation during a google.appengine.v1alpha.CreateVersionRequest.

| Property | Type | Description |
|----------|------|-------------|
| `cloudBuildId` | `string` | The Cloud Build ID if one was created as part of the version create. @OutputOnly |

### `CreateVersionMetadataV1Beta`

Metadata for the given google.longrunning.Operation during a google.appengine.v1beta.CreateVersionRequest.

| Property | Type | Description |
|----------|------|-------------|
| `cloudBuildId` | `string` | The Cloud Build ID if one was created as part of the version create. @OutputOnly |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: A full date, with non-zero year, month, and day values. A month and day, with a zero year (for example, an anniversary). A year on its own, with a zero month and a zero day. A year and month, with a zero day (for example, a credit card expiration date).Related types: google.type.TimeOfDay google.type.DateTime google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DebugInstanceRequest`

Request message for Instances.DebugInstance.

| Property | Type | Description |
|----------|------|-------------|
| `sshKey` | `string` | Public SSH key to add to the instance. Examples: [USERNAME]:ssh-rsa [KEY_VALUE] [USERNAME] [USERN... |

### `Deployment`

Code and application artifacts used to deploy a version to App Engine.

| Property | Type | Description |
|----------|------|-------------|
| `cloudBuildOptions` | `CloudBuildOptions` | Options for any Google Cloud Build builds created as a part of this deployment.These options will... |
| `container` | `ContainerInfo` | The Docker image for the container that runs the version. Only applicable for instances running i... |
| `files` | `object` | Manifest of the files stored in Google Cloud Storage that are included as part of this version. A... |
| `zip` | `ZipInfo` | The zip file for this deployment, if this is a zip deployment. |

### `DiskUtilization`

Target scaling by disk usage. Only applicable in the App Engine flexible environment.

| Property | Type | Description |
|----------|------|-------------|
| `targetReadBytesPerSecond` | `integer` | Target bytes read per second. |
| `targetReadOpsPerSecond` | `integer` | Target ops read per seconds. |
| `targetWriteBytesPerSecond` | `integer` | Target bytes written per second. |
| `targetWriteOpsPerSecond` | `integer` | Target ops written per second. |

### `DomainMapping`

A domain serving an App Engine application.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Relative name of the domain serving the application. Example: example.com. |
| `name` | `string` | Output only. Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMappin... |
| `resourceRecords` | `array<ResourceRecord>` | Output only. The resource records required to configure this domain mapping. These records must b... |
| `sslSettings` | `SslSettings` | SSL configuration for this domain. If unconfigured, this domain will not serve with SSL. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EndpointsApiService`

Google Cloud Endpoints (https://cloud.google.com/endpoints) configuration. The Endpoints API Service provides tooling for serving Open API and gRPC endpoints via an NGINX proxy. Only valid for App Engine Flexible environment deployments.The fields here refer to the name and configuration ID of a "service" resource in the Service Management API (https://cloud.google.com/service-management/overview).

| Property | Type | Description |
|----------|------|-------------|
| `configId` | `string` | Endpoints service configuration ID as specified by the Service Management API. For example "2016-... |
| `disableTraceSampling` | `boolean` | Enable or disable trace sampling. By default, this is set to false for enabled. |
| `name` | `string` | Endpoints service name which is the name of the "service" resource in the Service Management API.... |
| `rolloutStrategy` | `string` | Endpoints rollout strategy. If FIXED, config_id must be specified. If MANAGED, config_id must be ... |

### `Entrypoint`

The entrypoint for the application.

| Property | Type | Description |
|----------|------|-------------|
| `shell` | `string` | The format should be a shell command that can be fed to bash -c. |

### `ErrorHandler`

Custom static error page to be served when an error occurs.

| Property | Type | Description |
|----------|------|-------------|
| `errorCode` | `string` | Error condition this handler applies to. |
| `mimeType` | `string` | MIME type of file. Defaults to text/html. |
| `staticFile` | `string` | Static file content to be served for this error. |

### `FeatureSettings`

The feature specific settings to be used in the application. These define behaviors that are user configurable.

| Property | Type | Description |
|----------|------|-------------|
| `splitHealthChecks` | `boolean` | Boolean value indicating if split health checks should be used instead of the legacy health check... |
| `useContainerOptimizedOs` | `boolean` | If true, use Container-Optimized OS (https://cloud.google.com/container-optimized-os/) base image... |

### `FileInfo`

Single source file that is part of the version to be deployed. Each source file that is deployed must be specified separately.

| Property | Type | Description |
|----------|------|-------------|
| `mimeType` | `string` | The MIME type of the file.Defaults to the value from Google Cloud Storage. |
| `sha1Sum` | `string` | The SHA1 hash of the file, in hex. |
| `sourceUrl` | `string` | URL source to use to fetch this file. Must be a URL to a resource in Google Cloud Storage in the ... |

### `FirewallRule`

A single firewall rule that is evaluated against incoming traffic and provides an action to take on matched requests. A positive integer between 1, Int32.MaxValue-1 that defines the order of rule evaluation. Rules with the lowest priority are evaluated first.A default rule at priority Int32.MaxValue matches all IPv4 and IPv6 traffic when no previous rule matches. Only the action of this rule can be modified by the user.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | The action to take on matched requests. |
| `description` | `string` | An optional string description of this rule. This field has a maximum length of 400 characters. |
| `priority` | `integer` |  |
| `sourceRange` | `string` | IP address or range, defined using CIDR notation, of requests that this rule applies to. You can ... |

### `FlexibleRuntimeSettings`

Runtime settings for the App Engine flexible environment.

| Property | Type | Description |
|----------|------|-------------|
| `operatingSystem` | `string` | The operating system of the application runtime. |
| `runtimeVersion` | `string` | The runtime version of an App Engine flexible application. |

### `GceTag`

For use only by GCE. GceTag is a wrapper around the GCE administrative tag with parent info.

| Property | Type | Description |
|----------|------|-------------|
| `parent` | `array<string>` | The parents(s) of the tag. Eg. projects/123, folders/456 It usually contains only one parent. But... |
| `tag` | `string` | The administrative_tag name. |

### `GoogleAppengineV1betaLocationMetadata`

Metadata for the given google.cloud.location.Location.

| Property | Type | Description |
|----------|------|-------------|
| `flexibleEnvironmentAvailable` | `boolean` | App Engine flexible environment is available in the given location.@OutputOnly |
| `searchApiAvailable` | `boolean` | Output only. Search API (https://cloud.google.com/appengine/docs/standard/python/search) is avail... |
| `standardEnvironmentAvailable` | `boolean` | App Engine standard environment is available in the given location.@OutputOnly |

### `HealthCheck`

Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances. Only applicable for instances in App Engine flexible environment.

| Property | Type | Description |
|----------|------|-------------|
| `checkInterval` | `string` | Interval between health checks. |
| `disableHealthCheck` | `boolean` | Whether to explicitly disable health checks for this instance. |
| `healthyThreshold` | `integer` | Number of consecutive successful health checks required before receiving traffic. |
| `host` | `string` | Host header to send when performing an HTTP health check. Example: "myapp.appspot.com" |
| `restartThreshold` | `integer` | Number of consecutive failed health checks required before an instance is restarted. |
| `timeout` | `string` | Time before the health check is considered failed. |
| `unhealthyThreshold` | `integer` | Number of consecutive failed health checks required before removing traffic. |

### `IdentityAwareProxy`

Identity-Aware Proxy

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the serving infrastructure will authenticate and authorize all incoming requests.If true,... |
| `oauth2ClientId` | `string` | OAuth2 client ID to use for the authentication flow. |
| `oauth2ClientSecret` | `string` | OAuth2 client secret to use for the authentication flow.For security reasons, this value cannot b... |
| `oauth2ClientSecretSha256` | `string` | Output only. Hex-encoded SHA-256 hash of the client secret.@OutputOnly |

### `Instance`

An Instance resource is the computing unit that App Engine uses to automatically scale an application.

| Property | Type | Description |
|----------|------|-------------|
| `appEngineRelease` | `string` | Output only. App Engine release this instance is running on. |
| `availability` | `string` | Output only. Availability of the instance. |
| `averageLatency` | `integer` | Output only. Average latency (ms) over the last minute. |
| `errors` | `integer` | Output only. Number of errors since this instance was started. |
| `id` | `string` | Output only. Relative name of the instance within the version. Example: instance-1. |
| `memoryUsage` | `string` | Output only. Total memory in use (bytes). |
| `name` | `string` | Output only. Full path to the Instance resource in the API. Example: apps/myapp/services/default/... |
| `qps` | `number` | Output only. Average queries per second (QPS) over the last minute. |
| `requests` | `integer` | Output only. Number of requests since this instance was started. |
| `startTime` | `string` | Output only. Time that this instance was started.@OutputOnly |
| `vmDebugEnabled` | `boolean` | Output only. Whether this instance is in debug mode. Only applicable for instances in App Engine ... |
| `vmId` | `string` | Output only. Virtual machine ID of this instance. Only applicable for instances in App Engine fle... |
| `vmIp` | `string` | Output only. The IP address of this instance. Only applicable for instances in App Engine flexibl... |
| `vmLiveness` | `string` | Output only. The liveness health check of this instance. Only applicable for instances in App Eng... |
| `vmName` | `string` | Output only. Name of the virtual machine where this instance lives. Only applicable for instances... |
| `vmStatus` | `string` | Output only. Status of the virtual machine where this instance lives. Only applicable for instanc... |
| `vmZoneName` | `string` | Output only. Zone where the virtual machine is located. Only applicable for instances in App Engi... |

### `Library`

Third-party Python runtime library that is required by the application.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the library. Example: "django". |
| `version` | `string` | Version of the library to select, or "latest". |

### `ListAuthorizedCertificatesResponse`

Response message for AuthorizedCertificates.ListAuthorizedCertificates.

| Property | Type | Description |
|----------|------|-------------|
| `certificates` | `array<AuthorizedCertificate>` | The SSL certificates the user is authorized to administer. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListAuthorizedDomainsResponse`

Response message for AuthorizedDomains.ListAuthorizedDomains.

| Property | Type | Description |
|----------|------|-------------|
| `domains` | `array<AuthorizedDomain>` | The authorized domains belonging to the user. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListDomainMappingsResponse`

Response message for DomainMappings.ListDomainMappings.

| Property | Type | Description |
|----------|------|-------------|
| `domainMappings` | `array<DomainMapping>` | The domain mappings for the application. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListIngressRulesResponse`

Response message for Firewall.ListIngressRules.

| Property | Type | Description |
|----------|------|-------------|
| `ingressRules` | `array<FirewallRule>` | The ingress FirewallRules for this application. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListInstancesResponse`

Response message for Instances.ListInstances.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<Instance>` | The instances belonging to the requested version. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets ListOperationsRequest.retu... |

### `ListRuntimesResponse`

Response message for Applications.ListRuntimes.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |
| `runtimes` | `array<Runtime>` | The runtimes available to the requested application. |

### `ListServicesResponse`

Response message for Services.ListServices.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |
| `services` | `array<Service>` | The services belonging to the requested application. |

### `ListVersionsResponse`

Response message for Versions.ListVersions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |
| `versions` | `array<Version>` | The versions belonging to the requested service. |

### `LivenessCheck`

Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.

| Property | Type | Description |
|----------|------|-------------|
| `checkInterval` | `string` | Interval between health checks. |
| `failureThreshold` | `integer` | Number of consecutive failed checks required before considering the VM unhealthy. |
| `host` | `string` | Host header to send when performing a HTTP Liveness check. Example: "myapp.appspot.com" |
| `initialDelay` | `string` | The initial delay before starting to execute the checks. |
| `path` | `string` | The request path. |
| `successThreshold` | `integer` | Number of consecutive successful checks required before considering the VM healthy. |
| `timeout` | `string` | Time before the check is considered failed. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: "us-east1". |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: "projects/ex... |

### `LocationMetadata`

Metadata for the given google.cloud.location.Location.

| Property | Type | Description |
|----------|------|-------------|
| `flexibleEnvironmentAvailable` | `boolean` | App Engine flexible environment is available in the given location.@OutputOnly |
| `searchApiAvailable` | `boolean` | Output only. Search API (https://cloud.google.com/appengine/docs/standard/python/search) is avail... |
| `standardEnvironmentAvailable` | `boolean` | App Engine standard environment is available in the given location.@OutputOnly |

### `ManagedCertificate`

A certificate managed by App Engine.

| Property | Type | Description |
|----------|------|-------------|
| `lastRenewalTime` | `string` | Time at which the certificate was last renewed. The renewal process is fully managed. Certificate... |
| `status` | `string` | Status of certificate management. Refers to the most recent certificate acquisition or renewal at... |

### `ManualScaling`

A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `integer` | Number of instances to assign to the service at the start. This number can later be altered by us... |

### `Network`

Extra network settings. Only applicable in the App Engine flexible environment.

| Property | Type | Description |
|----------|------|-------------|
| `forwardedPorts` | `array<string>` | List of ports, or port pairs, to forward from the virtual machine to the application container. O... |
| `instanceIpMode` | `string` | The IP mode for instances. Only applicable in the App Engine flexible environment. |
| `instanceTag` | `string` | Tag to apply to the instance during creation. Only applicable in the App Engine flexible environm... |
| `name` | `string` | Google Compute Engine network where the virtual machines are created. Specify the short name, not... |
| `sessionAffinity` | `boolean` | Enable session affinity. Only applicable in the App Engine flexible environment. |
| `subnetworkName` | `string` | Google Cloud Platform sub-network where the virtual machines are created. Specify the short name,... |

### `NetworkSettings`

A NetworkSettings resource is a container for ingress settings for a version or service.

| Property | Type | Description |
|----------|------|-------------|
| `ingressTrafficAllowed` | `string` | The ingress settings for version or service. |

### `NetworkUtilization`

Target scaling by network usage. Only applicable in the App Engine flexible environment.

| Property | Type | Description |
|----------|------|-------------|
| `targetReceivedBytesPerSecond` | `integer` | Target bytes received per second. |
| `targetReceivedPacketsPerSecond` | `integer` | Target packets received per second. |
| `targetSentBytesPerSecond` | `integer` | Target bytes sent per second. |
| `targetSentPacketsPerSecond` | `integer` | Target packets sent per second. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is false, it means the operation is still in progress. If true, the operation is com... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OperationMetadataV1`

Metadata for the given google.longrunning.Operation.

| Property | Type | Description |
|----------|------|-------------|
| `createVersionMetadata` | `CreateVersionMetadataV1` |  |
| `endTime` | `string` | Time that this operation completed.@OutputOnly |
| `ephemeralMessage` | `string` | Ephemeral message that may change every time the operation is polled. @OutputOnly |
| `insertTime` | `string` | Time that this operation was created.@OutputOnly |
| `method` | `string` | API method that initiated this operation. Example: google.appengine.v1.Versions.CreateVersion.@Ou... |
| `target` | `string` | Name of the resource that this operation is acting on. Example: apps/myapp/services/default.@Outp... |
| `user` | `string` | User who requested this operation.@OutputOnly |
| `warning` | `array<string>` | Durable messages that persist on every operation poll. @OutputOnly |

### `OperationMetadataV1Alpha`

Metadata for the given google.longrunning.Operation.

| Property | Type | Description |
|----------|------|-------------|
| `createVersionMetadata` | `CreateVersionMetadataV1Alpha` |  |
| `endTime` | `string` | Time that this operation completed.@OutputOnly |
| `ephemeralMessage` | `string` | Ephemeral message that may change every time the operation is polled. @OutputOnly |
| `insertTime` | `string` | Time that this operation was created.@OutputOnly |
| `method` | `string` | API method that initiated this operation. Example: google.appengine.v1alpha.Versions.CreateVersio... |
| `target` | `string` | Name of the resource that this operation is acting on. Example: apps/myapp/services/default.@Outp... |
| `user` | `string` | User who requested this operation.@OutputOnly |
| `warning` | `array<string>` | Durable messages that persist on every operation poll. @OutputOnly |

### `OperationMetadataV1Beta`

Metadata for the given google.longrunning.Operation.

| Property | Type | Description |
|----------|------|-------------|
| `createVersionMetadata` | `CreateVersionMetadataV1Beta` |  |
| `endTime` | `string` | Time that this operation completed.@OutputOnly |
| `ephemeralMessage` | `string` | Ephemeral message that may change every time the operation is polled. @OutputOnly |
| `insertTime` | `string` | Time that this operation was created.@OutputOnly |
| `method` | `string` | API method that initiated this operation. Example: google.appengine.v1beta.Versions.CreateVersion... |
| `target` | `string` | Name of the resource that this operation is acting on. Example: apps/myapp/services/default.@Outp... |
| `user` | `string` | User who requested this operation.@OutputOnly |
| `warning` | `array<string>` | Durable messages that persist on every operation poll. @OutputOnly |

### `ProjectEvent`

The request sent to CLHs during project events.

| Property | Type | Description |
|----------|------|-------------|
| `eventId` | `string` | The unique ID for this project event. CLHs can use this value to dedup repeated calls. required |
| `phase` | `string` | Phase indicates when in the container event propagation this event is being communicated. Events ... |
| `projectMetadata` | `ProjectsMetadata` | The projects metadata for this project. required |
| `state` | `ContainerState` | The state of the organization that led to this event. |

### `ProjectsMetadata`

ProjectsMetadata is the metadata CCFE stores about the all the relevant projects (tenant, consumer, producer).

| Property | Type | Description |
|----------|------|-------------|
| `consumerProjectId` | `string` | The consumer project id. |
| `consumerProjectNumber` | `string` | The consumer project number. |
| `consumerProjectState` | `string` | The CCFE state of the consumer project. It is the same state that is communicated to the CLH duri... |
| `gceTag` | `array<GceTag>` | The GCE tags associated with the consumer project and those inherited due to their ancestry, if a... |
| `isGceProjectDeprovisioning` | `boolean` | DEPRECATED: Indicates whether the GCE project is in the DEPROVISIONING state. This field is a tem... |
| `p4ServiceAccount` | `string` | The service account authorized to operate on the consumer project. Note: CCFE only propagates P4S... |
| `producerProjectId` | `string` | The producer project id. |
| `producerProjectNumber` | `string` | The producer project number. |
| `tenantProjectId` | `string` | The tenant project id. |
| `tenantProjectNumber` | `string` | The tenant project number. |

### `ReadinessCheck`

Readiness checking configuration for VM instances. Unhealthy instances are removed from traffic rotation.

| Property | Type | Description |
|----------|------|-------------|
| `appStartTimeout` | `string` | A maximum time limit on application initialization, measured from moment the application successf... |
| `checkInterval` | `string` | Interval between health checks. |
| `failureThreshold` | `integer` | Number of consecutive failed checks required before removing traffic. |
| `host` | `string` | Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com" |
| `path` | `string` | The request path. |
| `successThreshold` | `integer` | Number of consecutive successful checks required before receiving traffic. |
| `timeout` | `string` | Time before the check is considered failed. |

### `Reasons`

Containers transition between and within states based on reasons sent from various systems. CCFE will provide the CLH with reasons for the current state per system.The current systems that CCFE supports are: Service Management (Inception) Data Governance (Wipeout) Abuse (Ares) Billing (Internal Cloud Billing API) Service Activation (Service Controller)

| Property | Type | Description |
|----------|------|-------------|
| `abuse` | `string` |  |
| `billing` | `string` |  |
| `dataGovernance` | `string` |  |
| `serviceActivation` | `string` | Consumer Container denotes if the service is active within a project or not. This information cou... |
| `serviceManagement` | `string` |  |

### `RepairApplicationRequest`

Request message for 'Applications.RepairApplication'.

### `RequestUtilization`

Target scaling by request utilization. Only applicable in the App Engine flexible environment.

| Property | Type | Description |
|----------|------|-------------|
| `targetConcurrentRequests` | `integer` | Target number of concurrent requests. |
| `targetRequestCountPerSecond` | `integer` | Target requests per second. |

### `ResourceEvent`

The request that is passed to CLH during per-resource events. The request will be sent with update semantics in all cases except for data governance purge events. These events will be sent with delete semantics and the CLH is expected to delete the resource receiving this event.

| Property | Type | Description |
|----------|------|-------------|
| `eventId` | `string` | The unique ID for this per-resource event. CLHs can use this value to dedup repeated calls. required |
| `name` | `string` | The name of the resource for which this event is. required |
| `state` | `ContainerState` | The state of the project that led to this event. |

### `ResourceRecord`

A DNS resource record.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Relative name of the object affected by this record. Only applicable for CNAME records. Example: ... |
| `rrdata` | `string` | Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034... |
| `type` | `string` | Resource record type. Example: AAAA. |

### `Resources`

Machine resources for a version.

| Property | Type | Description |
|----------|------|-------------|
| `cpu` | `number` | Number of CPU cores needed. |
| `diskGb` | `number` | Disk size (GB) needed. |
| `kmsKeyReference` | `string` | The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud C... |
| `memoryGb` | `number` | Memory (GB) needed. |
| `volumes` | `array<Volume>` | User specified volumes. |

### `Runtime`

Runtime versions for App Engine.

| Property | Type | Description |
|----------|------|-------------|
| `decommissionedDate` | `Date` | Date when Runtime is decommissioned. |
| `deprecationDate` | `Date` | Date when Runtime is deprecated. |
| `displayName` | `string` | User-friendly display name, e.g. 'Node.js 12', etc. |
| `endOfSupportDate` | `Date` | Date when Runtime is end of support. |
| `environment` | `string` | The environment of the runtime. |
| `name` | `string` | The name of the runtime, e.g., 'go113', 'nodejs12', etc. |
| `stage` | `string` | The stage of life this runtime is in, e.g., BETA, GA, etc. |
| `supportedOperatingSystems` | `array<string>` | Supported operating systems for the runtime, e.g., 'ubuntu22', etc. |
| `warnings` | `array<string>` | Warning messages, e.g., a deprecation warning. |

### `ScriptHandler`

Executes a script to handle the request that matches the URL pattern.

| Property | Type | Description |
|----------|------|-------------|
| `scriptPath` | `string` | Path to the script from the application root directory. |

### `Service`

A Service resource is a logical component of an application that can share state and communicate in a secure fashion with other services. For example, an application that handles customer requests might include separate services to handle tasks such as backend data analysis or API requests from mobile devices. Each service has a collection of versions that define a specific set of code used to implement the functionality of that service.

| Property | Type | Description |
|----------|------|-------------|
| `generatedCustomerMetadata` | `object` | Additional Google Generated Customer Metadata, this field won't be provided by default and can be... |
| `id` | `string` | Output only. Relative name of the service within the application. Example: default.@OutputOnly |
| `labels` | `object` | A set of labels to apply to this service. Labels are key/value pairs that describe the service an... |
| `name` | `string` | Output only. Full path to the Service resource in the API. Example: apps/myapp/services/default.@... |
| `networkSettings` | `NetworkSettings` | Ingress settings for this service. Will apply to all versions. |
| `split` | `TrafficSplit` | Mapping that defines fractional HTTP traffic diversion to different versions within the service. |

### `SslSettings`

SSL configuration for a DomainMapping resource.

| Property | Type | Description |
|----------|------|-------------|
| `certificateId` | `string` | ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field... |
| `pendingManagedCertificateId` | `string` | Output only. ID of the managed AuthorizedCertificate resource currently being provisioned, if app... |
| `sslManagementType` | `string` | SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisi... |

### `StandardSchedulerSettings`

Scheduler settings for standard environment.

| Property | Type | Description |
|----------|------|-------------|
| `maxInstances` | `integer` | Maximum number of instances to run for this version. Set to 2147483647 to disable max_instances c... |
| `minInstances` | `integer` | Minimum number of instances to run for this version. Set to zero to disable min_instances configu... |
| `targetCpuUtilization` | `number` | Target CPU utilization ratio to maintain when scaling. |
| `targetThroughputUtilization` | `number` | Target throughput utilization ratio to maintain when scaling |

### `StaticFilesHandler`

Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files. Static file handlers describe which files in the application directory are static files, and which URLs serve them.

| Property | Type | Description |
|----------|------|-------------|
| `applicationReadable` | `boolean` | Whether files should also be uploaded as code data. By default, files declared in static file han... |
| `expiration` | `string` | Time a static file served by this handler should be cached by web proxies and browsers. |
| `httpHeaders` | `object` | HTTP headers to use for all responses from these URLs. |
| `mimeType` | `string` | MIME type used to serve all files served by this handler.Defaults to file-specific MIME types, wh... |
| `path` | `string` | Path to the static files matched by the URL pattern, from the application root directory. The pat... |
| `requireMatchingFile` | `boolean` | Whether this handler should match the request if the file referenced by the handler does not exist. |
| `uploadPathRegex` | `string` | Regular expression that matches the file paths for all files that should be referenced by this ha... |

### `Status`

The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TrafficSplit`

Traffic routing configuration for versions within a single service. Traffic splits define how traffic directed to the service is assigned to versions.

| Property | Type | Description |
|----------|------|-------------|
| `allocations` | `object` | Mapping from version IDs within the service to fractional (0.000, 1] allocations of traffic for t... |
| `shardBy` | `string` | Mechanism used to determine which version a request is sent to. The traffic selection algorithm w... |

### `UrlDispatchRule`

Rules to match an HTTP request and dispatch that request to a service.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | Domain name to match against. The wildcard "*" is supported if specified before a period: "*.".De... |
| `path` | `string` | Pathname within the host. Must start with a "/". A single "*" can be included at the end of the p... |
| `service` | `string` | Resource ID of a service in this application that should serve the matched request. The service m... |

### `UrlMap`

URL pattern and description of how the URL should be handled. App Engine can handle URLs by executing application code or by serving static files uploaded with the version, such as images, CSS, or JavaScript.

| Property | Type | Description |
|----------|------|-------------|
| `apiEndpoint` | `ApiEndpointHandler` | Uses API Endpoints to handle requests. |
| `authFailAction` | `string` | Action to take when users access resources that require authentication. Defaults to redirect. |
| `login` | `string` | Level of login required to access this resource. Not supported for Node.js in the App Engine stan... |
| `redirectHttpResponseCode` | `string` | 30x code to use when performing redirects for the secure field. Defaults to 302. |
| `script` | `ScriptHandler` | Executes a script to handle the requests that match this URL pattern. Only the auto value is supp... |
| `securityLevel` | `string` | Security (HTTPS) enforcement for this URL. |
| `staticFiles` | `StaticFilesHandler` | Returns the contents of a file, such as an image, as the response. |
| `urlRegex` | `string` | URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped... |

### `Version`

A Version resource is a specific set of source code and configuration files that are deployed into a service.

| Property | Type | Description |
|----------|------|-------------|
| `apiConfig` | `ApiConfigHandler` | Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only return... |
| `appEngineApis` | `boolean` | Allows App Engine second generation runtimes to access the legacy bundled services. |
| `automaticScaling` | `AutomaticScaling` | Automatic scaling is based on request rate, response latencies, and other application metrics. In... |
| `basicScaling` | `BasicScaling` | A service with basic scaling will create an instance when the application receives a request. The... |
| `betaSettings` | `object` | Metadata settings that are supplied to this version to enable beta runtime features. |
| `buildEnvVariables` | `object` | Environment variables available to the build environment.Only returned in GET requests if view=FU... |
| `createTime` | `string` | Time that this version was created.@OutputOnly |
| `createdBy` | `string` | Output only. Email address of the user who created this version.@OutputOnly |
| `defaultExpiration` | `string` | Duration that static files should be cached by web proxies and browsers. Only applicable if the c... |
| `deployment` | `Deployment` | Code and application artifacts that make up this version.Only returned in GET requests if view=FU... |
| `diskUsageBytes` | `string` | Output only. Total size in bytes of all the files that are included in this version and currently... |
| `endpointsApiService` | `EndpointsApiService` | Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Ser... |
| `entrypoint` | `Entrypoint` | The entrypoint for the application. |
| `env` | `string` | App Engine execution environment for this version.Defaults to standard. |
| `envVariables` | `object` | Environment variables available to the application.Only returned in GET requests if view=FULL is ... |
| `errorHandlers` | `array<ErrorHandler>` | Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is... |
| `flexibleRuntimeSettings` | `FlexibleRuntimeSettings` | Settings for App Engine flexible runtimes. |
| `generatedCustomerMetadata` | `object` | Additional Google Generated Customer Metadata, this field won't be provided by default and can be... |
| `handlers` | `array<UrlMap>` | An ordered list of URL-matching patterns that should be applied to incoming requests. The first m... |
| `healthCheck` | `HealthCheck` | Configures health checking for instances. Unhealthy instances are stopped and replaced with new i... |
| `id` | `string` | Relative name of the version within the service. Example: v1. Version names can contain only lowe... |
| `inboundServices` | `array<string>` | Before an application can receive email or XMPP messages, the application must be configured to e... |
| `instanceClass` | `string` | Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, ... |
| `libraries` | `array<Library>` | Configuration for third-party Python runtime libraries that are required by the application.Only ... |
| `livenessCheck` | `LivenessCheck` | Configures liveness health checking for instances. Unhealthy instances are stopped and replaced w... |
| `manualScaling` | `ManualScaling` | A service with manual scaling runs continuously, allowing you to perform complex initialization a... |
| `name` | `string` | Output only. Full path to the Version resource in the API. Example: apps/myapp/services/default/v... |
| `network` | `Network` | Extra network settings. Only applicable in the App Engine flexible environment. |
| `nobuildFilesRegex` | `string` | Files that match this pattern will not be built into this version. Only applicable for Go runtime... |
| `readinessCheck` | `ReadinessCheck` | Configures readiness health checking for instances. Unhealthy instances are not put into the back... |
| `resources` | `Resources` | Machine resources for this version. Only applicable in the App Engine flexible environment. |
| `runtime` | `string` | Desired runtime. Example: python27. |
| `runtimeApiVersion` | `string` | The version of the API in the given runtime environment. Please see the app.yaml reference for va... |
| `runtimeChannel` | `string` | The channel of the runtime to use. Only available for some runtimes. Defaults to the default chan... |
| `runtimeMainExecutablePath` | `string` | The path or name of the app's main executable. |
| `serviceAccount` | `string` | The identity that the deployed version will run as. Admin API will use the App Engine Appspot ser... |
| `servingStatus` | `string` | Current serving status of this version. Only the versions with a SERVING status create instances ... |
| `threadsafe` | `boolean` | Whether multiple requests can be dispatched to this version at once. |
| `versionUrl` | `string` | Output only. Serving URL for this version. Example: "https://myversion-dot-myservice-dot-myapp.ap... |
| `vm` | `boolean` | Whether to deploy this version in a container on a virtual machine. |
| `vpcAccessConnector` | `VpcAccessConnector` | Enables VPC connectivity for standard apps. |
| `zones` | `array<string>` | The Google Compute Engine zones that are supported by this version in the App Engine flexible env... |

### `Volume`

Volumes mounted within the app container. Only applicable in the App Engine flexible environment.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Unique name for the volume. |
| `sizeGb` | `number` | Volume size in gigabytes. |
| `volumeType` | `string` | Underlying volume type, e.g. 'tmpfs'. |

### `VpcAccessConnector`

VPC access connector specification.

| Property | Type | Description |
|----------|------|-------------|
| `egressSetting` | `string` | The egress setting for the connector, controlling what traffic is diverted through it. |
| `name` | `string` | Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connecto... |

### `ZipInfo`

The zip file information for a zip deployment.

| Property | Type | Description |
|----------|------|-------------|
| `filesCount` | `integer` | An estimate of the number of files in a zip for a zip deployment. If set, must be greater than or... |
| `sourceUrl` | `string` | URL of the zip file to deploy from. Must be a URL to a resource in Google Cloud Storage in the fo... |

