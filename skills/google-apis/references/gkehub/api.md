# GKE Hub API - API Reference

**Version**: `v2` | **Methods**: 10 | **Schemas**: 97

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `gkehub.projects.locations.get` | GET | `v2/{+name}` | Gets information about a location. |
| `gkehub.projects.locations.list` | GET | `v2/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `gkehub.projects.locations.memberships.features.patch` | PATCH | `v2/{+name}` | Updates an existing MembershipFeature. |
| `gkehub.projects.locations.memberships.features.get` | GET | `v2/{+name}` | ========= MembershipFeature Services ========= Gets details of a membershipFeature. |
| `gkehub.projects.locations.memberships.features.create` | POST | `v2/{+parent}/features` | Creates membershipFeature under a given parent. |
| `gkehub.projects.locations.memberships.features.delete` | DELETE | `v2/{+name}` | Removes a membershipFeature. |
| `gkehub.projects.locations.memberships.features.list` | GET | `v2/{+parent}/features` | Lists MembershipFeatures in a given project and location. |
| `gkehub.projects.locations.operations.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `gkehub.projects.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `gkehub.projects.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |

### `gkehub.projects.locations.get`

**GET** `v2/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await gkehub.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkehub.projects.locations.list`

**GET** `v2/{+name}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: * **List all public locations:** Use the path `GET /v1/locations`. * **List project-visible locations:** Use the path `GET /v1/projects/{project_id}/locations`. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like `"displayName=toky... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequen... |

**Response**: `ListLocationsResponse`

```typescript
const res = await gkehub.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkehub.projects.locations.memberships.features.patch`

**PATCH** `v2/{+name}`

Updates an existing MembershipFeature.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the membershipFeature, in the format: `projects/{project}/locations/{location}/memb... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the MembershipFeature is not found, a new MembershipFeature will be created. In this si... |
| `requestId` | `string` | query | No | Idempotent request UUID. |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |

**Request body**: `MembershipFeature`

**Response**: `Operation`

```typescript
const res = await gkehub.features.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkehub.projects.locations.memberships.features.get`

**GET** `v2/{+name}`

========= MembershipFeature Services ========= Gets details of a membershipFeature.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The MembershipFeature resource name in the format `projects/*/locations/*/memberships/*/features/*`. |

**Response**: `MembershipFeature`

```typescript
const res = await gkehub.features.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkehub.projects.locations.memberships.features.create`

**POST** `v2/{+parent}/features`

Creates membershipFeature under a given parent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of parent where the MembershipFeature will be created. Specified in the format `projects/*/locatio... |
| `featureId` | `string` | query | No | Required. The ID of the membership_feature to create. |
| `requestId` | `string` | query | No | Idempotent request UUID. |

**Request body**: `MembershipFeature`

**Response**: `Operation`

```typescript
const res = await gkehub.features.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkehub.projects.locations.memberships.features.delete`

**DELETE** `v2/{+name}`

Removes a membershipFeature.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the membershipFeature to be deleted. Specified in the format `projects/*/locations/*/membership... |
| `requestId` | `string` | query | No | Idempotent request UUID. |

**Response**: `Operation`

```typescript
const res = await gkehub.features.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkehub.projects.locations.memberships.features.list`

**GET** `v2/{+parent}/features`

Lists MembershipFeatures in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent where the MembershipFeature will be listed. In the format: `projects/*/locations/*/memberships/*`. |
| `filter` | `string` | query | No | Lists MembershipFeatures that match the filter expression, following the syntax outlined in https://google.aip.dev/16... |
| `orderBy` | `string` | query | No | One or more fields to compare and use to sort the output. See https://google.aip.dev/132#ordering. |
| `pageSize` | `integer` | query | No | When requesting a 'page' of resources, `page_size` specifies number of resources to return. If unspecified or set to ... |
| `pageToken` | `string` | query | No | Token returned by previous call to `ListFeatures` which specifies the position in the list from where to continue lis... |

**Response**: `ListMembershipFeaturesResponse`

```typescript
const res = await gkehub.features.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkehub.projects.locations.operations.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await gkehub.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkehub.projects.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await gkehub.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkehub.projects.locations.operations.list`

**GET** `v2/{+name}/operations`

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
const res = await gkehub.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AppDevExperienceState`

State for App Dev Exp Feature.

| Property | Type | Description |
|----------|------|-------------|
| `networkingInstallSucceeded` | `AppDevExperienceStatus` | Status of subcomponent that detects configured Service Mesh resources. |

### `AppDevExperienceStatus`

Status specifies state for the subcomponent.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Code specifies AppDevExperienceFeature's subcomponent ready state. |
| `description` | `string` | Description is populated if Code is Failed, explaining why it has failed. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CloudBuildSpec`

**Cloud Build**: Configurations for each Cloud Build enabled cluster.

| Property | Type | Description |
|----------|------|-------------|
| `securityPolicy` | `string` | Whether it is allowed to run the privileged builds on the cluster or not. |
| `version` | `string` | Version of the cloud build software on the cluster. |

### `ClusterUpgradeGKEUpgrade`

GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the upgrade, e.g., "k8s_control_plane". |
| `version` | `string` | Version of the upgrade, e.g., "1.22.1-gke.100". |

### `ClusterUpgradeIgnoredMembership`

IgnoredMembership represents a membership ignored by the feature. A membership can be ignored because it was manually upgraded to a newer version than RC default.

| Property | Type | Description |
|----------|------|-------------|
| `ignoredTime` | `string` | Time when the membership was first set to ignored. |
| `reason` | `string` | Reason why the membership is ignored. |

### `ClusterUpgradeMembershipGKEUpgradeState`

MembershipGKEUpgradeState is a GKEUpgrade and its state per-membership.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `ClusterUpgradeUpgradeStatus` | Status of the upgrade. |
| `upgrade` | `ClusterUpgradeGKEUpgrade` | Which upgrade to track the state. |

### `ClusterUpgradeState`

Per-membership state for this feature.

| Property | Type | Description |
|----------|------|-------------|
| `ignored` | `ClusterUpgradeIgnoredMembership` | Whether this membership is ignored by the feature. For example, manually upgraded clusters can be... |
| `upgrades` | `array<ClusterUpgradeMembershipGKEUpgradeState>` | Actual upgrade state against desired. |

### `ClusterUpgradeUpgradeStatus`

UpgradeStatus provides status information for each upgrade.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Status code of the upgrade. |
| `reason` | `string` | Reason for this status. |
| `updateTime` | `string` | Last timestamp the status was updated. |

### `ConfigManagementBinauthzConfig`

Configuration for Binauthz.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether binauthz is enabled in this cluster. |

### `ConfigManagementBinauthzState`

State for Binauthz.

| Property | Type | Description |
|----------|------|-------------|
| `version` | `ConfigManagementBinauthzVersion` | The version of binauthz that is installed. |
| `webhook` | `string` | The state of the binauthz webhook. |

### `ConfigManagementBinauthzVersion`

The version of binauthz.

| Property | Type | Description |
|----------|------|-------------|
| `webhookVersion` | `string` | The version of the binauthz webhook. |

### `ConfigManagementConfigSync`

Configuration for Config Sync

| Property | Type | Description |
|----------|------|-------------|
| `deploymentOverrides` | `array<ConfigManagementDeploymentOverride>` | Optional. Configuration for deployment overrides. Applies only to Config Sync deployments with co... |
| `enabled` | `boolean` | Optional. Enables the installation of Config Sync. If set to true, the Feature will manage Config... |
| `git` | `ConfigManagementGitConfig` | Optional. Git repo configuration for the cluster. |
| `metricsGcpServiceAccountEmail` | `string` | Optional. The Email of the Google Cloud Service Account (GSA) used for exporting Config Sync metr... |
| `oci` | `ConfigManagementOciConfig` | Optional. OCI repo configuration for the cluster. |
| `preventDrift` | `boolean` | Optional. Set to true to enable the Config Sync admission webhook to prevent drifts. If set to fa... |
| `sourceFormat` | `string` | Optional. Specifies whether the Config Sync repo is in `hierarchical` or `unstructured` mode. Def... |
| `stopSyncing` | `boolean` | Optional. Set to true to stop syncing configs for a single cluster. Default to false. |

### `ConfigManagementConfigSyncDeploymentState`

The state of ConfigSync's deployment on a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `admissionWebhook` | `string` | Deployment state of admission-webhook. |
| `gitSync` | `string` | Deployment state of the git-sync pod. |
| `importer` | `string` | Deployment state of the importer pod. |
| `monitor` | `string` | Deployment state of the monitor pod. |
| `otelCollector` | `string` | Deployment state of otel-collector |
| `reconcilerManager` | `string` | Deployment state of reconciler-manager pod. |
| `resourceGroupControllerManager` | `string` | Deployment state of resource-group-controller-manager |
| `rootReconciler` | `string` | Deployment state of root-reconciler. |
| `syncer` | `string` | Deployment state of the syncer pod. |

### `ConfigManagementConfigSyncError`

Errors pertaining to the installation of Config Sync

| Property | Type | Description |
|----------|------|-------------|
| `errorMessage` | `string` | A string representing the user facing error message |

### `ConfigManagementConfigSyncState`

State information for ConfigSync.

| Property | Type | Description |
|----------|------|-------------|
| `clusterLevelStopSyncingState` | `string` | Output only. Whether syncing resources to the cluster is stopped at the cluster level. |
| `crCount` | `integer` | Output only. The number of RootSync and RepoSync CRs in the cluster. |
| `deploymentState` | `ConfigManagementConfigSyncDeploymentState` | Output only. Information about the deployment of ConfigSync, including the version. of the variou... |
| `errors` | `array<ConfigManagementConfigSyncError>` | Output only. Errors pertaining to the installation of Config Sync. |
| `reposyncCrd` | `string` | Output only. The state of the Reposync CRD |
| `rootsyncCrd` | `string` | Output only. The state of the RootSync CRD |
| `state` | `string` | Output only. The state of CS This field summarizes the other fields in this message. |
| `syncState` | `ConfigManagementSyncState` | Output only. The state of ConfigSync's process to sync configs to a cluster. |
| `version` | `ConfigManagementConfigSyncVersion` | Output only. The version of ConfigSync deployed. |

### `ConfigManagementConfigSyncVersion`

Specific versioning information pertaining to ConfigSync's Pods.

| Property | Type | Description |
|----------|------|-------------|
| `admissionWebhook` | `string` | Version of the deployed admission-webhook pod. |
| `gitSync` | `string` | Version of the deployed git-sync pod. |
| `importer` | `string` | Version of the deployed importer pod. |
| `monitor` | `string` | Version of the deployed monitor pod. |
| `otelCollector` | `string` | Version of the deployed otel-collector pod |
| `reconcilerManager` | `string` | Version of the deployed reconciler-manager pod. |
| `resourceGroupControllerManager` | `string` | Version of the deployed resource-group-controller-manager pod |
| `rootReconciler` | `string` | Version of the deployed reconciler container in root-reconciler pod. |
| `syncer` | `string` | Version of the deployed syncer pod. |

### `ConfigManagementContainerOverride`

Configuration for a container override.

| Property | Type | Description |
|----------|------|-------------|
| `containerName` | `string` | Required. The name of the container. |
| `cpuLimit` | `string` | Optional. The cpu limit of the container. Use the following CPU resource units: https://kubernete... |
| `cpuRequest` | `string` | Optional. The cpu request of the container. Use the following CPU resource units: https://kuberne... |
| `memoryLimit` | `string` | Optional. The memory limit of the container. Use the following memory resource units: https://kub... |
| `memoryRequest` | `string` | Optional. The memory request of the container. Use the following memory resource units: https://k... |

### `ConfigManagementDeploymentOverride`

Configuration for a deployment override.

| Property | Type | Description |
|----------|------|-------------|
| `containers` | `array<ConfigManagementContainerOverride>` | Optional. The containers of the deployment resource to be overridden. |
| `deploymentName` | `string` | Required. The name of the deployment resource to be overridden. |
| `deploymentNamespace` | `string` | Required. The namespace of the deployment resource to be overridden. |

### `ConfigManagementErrorResource`

Model for a config file in the git repo with an associated Sync error.

| Property | Type | Description |
|----------|------|-------------|
| `resourceGvk` | `ConfigManagementGroupVersionKind` | Group/version/kind of the resource that is causing an error |
| `resourceName` | `string` | Metadata name of the resource that is causing an error |
| `resourceNamespace` | `string` | Namespace of the resource that is causing an error |
| `sourcePath` | `string` | Path in the git repo of the erroneous config |

### `ConfigManagementGatekeeperDeploymentState`

State of Policy Controller installation.

| Property | Type | Description |
|----------|------|-------------|
| `gatekeeperAudit` | `string` | Status of gatekeeper-audit deployment. |
| `gatekeeperControllerManagerState` | `string` | Status of gatekeeper-controller-manager pod. |
| `gatekeeperMutation` | `string` | Status of the pod serving the mutation webhook. |

### `ConfigManagementGitConfig`

Git repo configuration for a single cluster.

| Property | Type | Description |
|----------|------|-------------|
| `gcpServiceAccountEmail` | `string` | Optional. The Google Cloud Service Account Email used for auth when secret_type is `gcpserviceacc... |
| `httpsProxy` | `string` | Optional. URL for the HTTPS proxy to be used when communicating with the Git repo. Only specify w... |
| `policyDir` | `string` | Optional. The path within the Git repository that represents the top level of the repo to sync. D... |
| `secretType` | `string` | Required. Type of secret configured for access to the Git repo. Must be one of `ssh`, `cookiefile... |
| `syncBranch` | `string` | Optional. The branch of the repository to sync from. Default: master. |
| `syncRepo` | `string` | Required. The URL of the Git repository to use as the source of truth. |
| `syncRev` | `string` | Optional. Git revision (tag or hash) to check out. Default HEAD. |
| `syncWaitSecs` | `string` | Optional. Period in seconds between consecutive syncs. Default: 15. |

### `ConfigManagementGroupVersionKind`

A Kubernetes object's GVK.

| Property | Type | Description |
|----------|------|-------------|
| `group` | `string` | Kubernetes Group |
| `kind` | `string` | Kubernetes Kind |
| `version` | `string` | Kubernetes Version |

### `ConfigManagementHierarchyControllerConfig`

Configuration for Hierarchy Controller.

| Property | Type | Description |
|----------|------|-------------|
| `enableHierarchicalResourceQuota` | `boolean` | Whether hierarchical resource quota is enabled in this cluster. |
| `enablePodTreeLabels` | `boolean` | Whether pod tree labels are enabled in this cluster. |
| `enabled` | `boolean` | Whether Hierarchy Controller is enabled in this cluster. |

### `ConfigManagementHierarchyControllerDeploymentState`

Deployment state for Hierarchy Controller

| Property | Type | Description |
|----------|------|-------------|
| `extension` | `string` | The deployment state for Hierarchy Controller extension (e.g. v0.7.0-hc.1). |
| `hnc` | `string` | The deployment state for open source HNC (e.g. v0.7.0-hc.0). |

### `ConfigManagementHierarchyControllerState`

State for Hierarchy Controller.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `ConfigManagementHierarchyControllerDeploymentState` | The deployment state for Hierarchy Controller. |
| `version` | `ConfigManagementHierarchyControllerVersion` | The version for Hierarchy Controller. |

### `ConfigManagementHierarchyControllerVersion`

Version for Hierarchy Controller.

| Property | Type | Description |
|----------|------|-------------|
| `extension` | `string` | Version for Hierarchy Controller extension. |
| `hnc` | `string` | Version for open source HNC. |

### `ConfigManagementInstallError`

Errors pertaining to the installation of ACM.

| Property | Type | Description |
|----------|------|-------------|
| `errorMessage` | `string` | A string representing the user facing error message. |

### `ConfigManagementOciConfig`

OCI repo configuration for a single cluster.

| Property | Type | Description |
|----------|------|-------------|
| `gcpServiceAccountEmail` | `string` | Optional. The Google Cloud Service Account Email used for auth when secret_type is `gcpserviceacc... |
| `policyDir` | `string` | Optional. The absolute path of the directory that contains the local resources. Default: the root... |
| `secretType` | `string` | Required. Type of secret configured for access to the OCI repo. Must be one of `gcenode`, `gcpser... |
| `syncRepo` | `string` | Required. The OCI image repository URL for the package to sync from. e.g. `LOCATION-docker.pkg.de... |
| `syncWaitSecs` | `string` | Optional. Period in seconds between consecutive syncs. Default: 15. |

### `ConfigManagementOperatorState`

State information for an ACM's Operator.

| Property | Type | Description |
|----------|------|-------------|
| `deploymentState` | `string` | The state of the Operator's deployment. |
| `errors` | `array<ConfigManagementInstallError>` | Install errors. |
| `version` | `string` | The semenatic version number of the operator. |

### `ConfigManagementPolicyController`

Configuration for Policy Controller

| Property | Type | Description |
|----------|------|-------------|
| `auditIntervalSeconds` | `string` | Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables au... |
| `enabled` | `boolean` | Enables the installation of Policy Controller. If false, the rest of PolicyController fields take... |
| `exemptableNamespaces` | `array<string>` | The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to ... |
| `logDeniesEnabled` | `boolean` | Logs all denies and dry run failures. |
| `monitoring` | `ConfigManagementPolicyControllerMonitoring` | Monitoring specifies the configuration of monitoring. |
| `mutationEnabled` | `boolean` | Enable or disable mutation in policy controller. If true, mutation CRDs, webhook and controller d... |
| `referentialRulesEnabled` | `boolean` | Enables the ability to use Constraint Templates that reference to objects other than the object c... |
| `templateLibraryInstalled` | `boolean` | Installs the default template library along with Policy Controller. |
| `updateTime` | `string` | Output only. Last time this membership spec was updated. |

### `ConfigManagementPolicyControllerMigration`

State for the migration of PolicyController from ACM -> PoCo Hub.

| Property | Type | Description |
|----------|------|-------------|
| `copyTime` | `string` | Last time this membership spec was copied to PoCo feature. |
| `stage` | `string` | Stage of the migration. |

### `ConfigManagementPolicyControllerMonitoring`

PolicyControllerMonitoring specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]

| Property | Type | Description |
|----------|------|-------------|
| `backends` | `array<string>` | Specifies the list of backends Policy Controller will export to. An empty list would effectively ... |

### `ConfigManagementPolicyControllerState`

State for PolicyControllerState.

| Property | Type | Description |
|----------|------|-------------|
| `deploymentState` | `ConfigManagementGatekeeperDeploymentState` | The state about the policy controller installation. |
| `migration` | `ConfigManagementPolicyControllerMigration` | Record state of ACM -> PoCo Hub migration for this feature. |
| `version` | `ConfigManagementPolicyControllerVersion` | The version of Gatekeeper Policy Controller deployed. |

### `ConfigManagementPolicyControllerVersion`

The build version of Gatekeeper Policy Controller is using.

| Property | Type | Description |
|----------|------|-------------|
| `version` | `string` | The gatekeeper image tag that is composed of ACM version, git tag, build number. |

### `ConfigManagementSpec`

**Anthos Config Management**: Configuration for a single cluster. Intended to parallel the ConfigManagement CR.

| Property | Type | Description |
|----------|------|-------------|
| `binauthz` | `ConfigManagementBinauthzConfig` | Optional. Deprecated: Binauthz configuration will be ignored and should not be set. |
| `cluster` | `string` | Optional. User-specified cluster name used by the Config Sync cluster-name-selector annotation or... |
| `configSync` | `ConfigManagementConfigSync` | Optional. Config Sync configuration for the cluster. |
| `hierarchyController` | `ConfigManagementHierarchyControllerConfig` | Optional. Hierarchy Controller configuration for the cluster. Deprecated: Configuring Hierarchy C... |
| `management` | `string` | Optional. Deprecated: From version 1.21.0, automatic Feature management is unavailable, and Confi... |
| `policyController` | `ConfigManagementPolicyController` | Optional. Policy Controller configuration for the cluster. Deprecated: Configuring Policy Control... |
| `version` | `string` | Optional. Version of Config Sync to install. Defaults to the latest supported Config Sync version... |

### `ConfigManagementState`

**Anthos Config Management**: State for a single cluster.

| Property | Type | Description |
|----------|------|-------------|
| `binauthzState` | `ConfigManagementBinauthzState` | Output only. Binauthz status. |
| `clusterName` | `string` | Output only. This field is set to the `cluster_name` field of the Membership Spec if it is not em... |
| `configSyncState` | `ConfigManagementConfigSyncState` | Output only. Current sync status. |
| `hierarchyControllerState` | `ConfigManagementHierarchyControllerState` | Output only. Hierarchy Controller status. |
| `kubernetesApiServerVersion` | `string` | Output only. The Kubernetes API server version of the cluster. |
| `membershipSpec` | `ConfigManagementSpec` | Output only. Membership configuration in the cluster. This represents the actual state in the clu... |
| `operatorState` | `ConfigManagementOperatorState` | Output only. Current install status of ACM's Operator. |
| `policyControllerState` | `ConfigManagementPolicyControllerState` | Output only. PolicyController status. |

### `ConfigManagementSyncError`

An ACM created error representing a problem syncing configurations.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | An ACM defined error code |
| `errorMessage` | `string` | A description of the error |
| `errorResources` | `array<ConfigManagementErrorResource>` | A list of config(s) associated with the error, if any |

### `ConfigManagementSyncState`

State indicating an ACM's progress syncing configurations to a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Sync status code. |
| `errors` | `array<ConfigManagementSyncError>` | A list of errors resulting from problematic configs. This list will be truncated after 100 errors... |
| `importToken` | `string` | Token indicating the state of the importer. |
| `lastSync` | `string` | Deprecated: use last_sync_time instead. Timestamp of when ACM last successfully synced the repo. ... |
| `lastSyncTime` | `string` | Timestamp type of when ACM last successfully synced the repo. |
| `sourceToken` | `string` | Token indicating the state of the repo. |
| `syncToken` | `string` | Token indicating the state of the syncer. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `FeatureSpec`

FeatureSpec contains user input per-feature spec information.

| Property | Type | Description |
|----------|------|-------------|
| `cloudbuild` | `CloudBuildSpec` | Cloudbuild-specific FeatureSpec. |
| `configmanagement` | `ConfigManagementSpec` | Config Management FeatureSpec. |
| `identityservice` | `IdentityServiceSpec` | IdentityService FeatureSpec. |
| `origin` | `Origin` | Whether this per-Feature spec was inherited from a fleet-level default. This field can be updated... |
| `policycontroller` | `PolicyControllerSpec` | Policycontroller-specific FeatureSpec. |
| `rbacrolebindingactuation` | `RBACRoleBindingActuationSpec` | Rbacrolebindingactuation-specific FeatureSpec. |
| `servicemesh` | `ServiceMeshSpec` | ServiceMesh Feature Spec. |
| `workloadcertificate` | `WorkloadCertificateSpec` | Workloadcertificate-specific FeatureSpec. |

### `FeatureState`

FeatureState contains high-level state information and per-feature state information for this MembershipFeature.

| Property | Type | Description |
|----------|------|-------------|
| `appdevexperience` | `AppDevExperienceState` | Appdevexperience specific state. |
| `clusterupgrade` | `ClusterUpgradeState` | Cluster upgrade state. |
| `configmanagement` | `ConfigManagementState` | Config Management state |
| `identityservice` | `IdentityServiceState` | Identity service state |
| `metering` | `MeteringState` | Metering state |
| `policycontroller` | `PolicyControllerState` | Policy Controller state |
| `rbacrolebindingactuation` | `RBACRoleBindingActuationState` | RBAC Role Binding Actuation state |
| `servicemesh` | `ServiceMeshState` | Service mesh state |
| `state` | `State` | The high-level state of this MembershipFeature. |
| `workloadidentity` | `WorkloadIdentityState` | Workload Identity state |

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `IdentityServiceAuthMethod`

Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.

| Property | Type | Description |
|----------|------|-------------|
| `azureadConfig` | `IdentityServiceAzureADConfig` | AzureAD specific Configuration. |
| `googleConfig` | `IdentityServiceGoogleConfig` | GoogleConfig specific configuration |
| `ldapConfig` | `IdentityServiceLdapConfig` | LDAP specific configuration. |
| `name` | `string` | Identifier for auth config. |
| `oidcConfig` | `IdentityServiceOidcConfig` | OIDC specific configuration. |
| `proxy` | `string` | Proxy server address to use for auth method. |
| `samlConfig` | `IdentityServiceSamlConfig` | SAML specific configuration. |

### `IdentityServiceAzureADConfig`

Configuration for the AzureAD Auth flow.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | ID for the registered client application that makes authentication requests to the Azure AD ident... |
| `clientSecret` | `string` | Input only. Unencrypted AzureAD client secret will be passed to the GKE Hub CLH. |
| `encryptedClientSecret` | `string` | Output only. Encrypted AzureAD client secret. |
| `groupFormat` | `string` | Optional. Format of the AzureAD groups that the client wants for auth. |
| `kubectlRedirectUri` | `string` | The redirect URL that kubectl uses for authorization. |
| `tenant` | `string` | Kind of Azure AD account to be authenticated. Supported values are or for accounts belonging to a... |
| `userClaim` | `string` | Optional. Claim in the AzureAD ID Token that holds the user details. |

### `IdentityServiceDiagnosticInterface`

Configuration options for the AIS diagnostic interface.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Determines whether to enable the diagnostic interface. |
| `expirationTime` | `string` | Determines the expiration time of the diagnostic interface enablement. When reached, requests to ... |

### `IdentityServiceGoogleConfig`

Configuration for the Google Plugin Auth flow.

| Property | Type | Description |
|----------|------|-------------|
| `disable` | `boolean` | Disable automatic configuration of Google Plugin on supported platforms. |

### `IdentityServiceGroupConfig`

Contains the properties for locating and authenticating groups in the directory.

| Property | Type | Description |
|----------|------|-------------|
| `baseDn` | `string` | Required. The location of the subtree in the LDAP directory to search for group entries. |
| `filter` | `string` | Optional. Optional filter to be used when searching for groups a user belongs to. This can be use... |
| `idAttribute` | `string` | Optional. The identifying name of each group a user belongs to. For example, if this is set to "d... |

### `IdentityServiceIdentityServiceOptions`

Holds non-protocol-related configuration options.

| Property | Type | Description |
|----------|------|-------------|
| `diagnosticInterface` | `IdentityServiceDiagnosticInterface` | Configuration options for the AIS diagnostic interface. |
| `sessionDuration` | `string` | Determines the lifespan of STS tokens issued by Anthos Identity Service. |

### `IdentityServiceLdapConfig`

Configuration for the LDAP Auth flow.

| Property | Type | Description |
|----------|------|-------------|
| `group` | `IdentityServiceGroupConfig` | Optional. Contains the properties for locating and authenticating groups in the directory. |
| `server` | `IdentityServiceServerConfig` | Required. Server settings for the external LDAP server. |
| `serviceAccount` | `IdentityServiceServiceAccountConfig` | Required. Contains the credentials of the service account which is authorized to perform the LDAP... |
| `user` | `IdentityServiceUserConfig` | Required. Defines where users exist in the LDAP directory. |

### `IdentityServiceOidcConfig`

Configuration for OIDC Auth flow.

| Property | Type | Description |
|----------|------|-------------|
| `certificateAuthorityData` | `string` | PEM-encoded CA for OIDC provider. |
| `clientId` | `string` | ID for OIDC client application. |
| `clientSecret` | `string` | Input only. Unencrypted OIDC client secret will be passed to the GKE Hub CLH. |
| `deployCloudConsoleProxy` | `boolean` | Flag to denote if reverse proxy is used to connect to auth provider. This flag should be set to t... |
| `enableAccessToken` | `boolean` | Enable access token. |
| `encryptedClientSecret` | `string` | Output only. Encrypted OIDC Client secret |
| `extraParams` | `string` | Comma-separated list of key-value pairs. |
| `groupPrefix` | `string` | Prefix to prepend to group name. |
| `groupsClaim` | `string` | Claim in OIDC ID token that holds group information. |
| `issuerUri` | `string` | URI for the OIDC provider. This should point to the level below .well-known/openid-configuration. |
| `kubectlRedirectUri` | `string` | Registered redirect uri to redirect users going through OAuth flow using kubectl plugin. |
| `scopes` | `string` | Comma-separated list of identifiers. |
| `userClaim` | `string` | Claim in OIDC ID token that holds username. |
| `userPrefix` | `string` | Prefix to prepend to user name. |

### `IdentityServiceSamlConfig`

Configuration for the SAML Auth flow.

| Property | Type | Description |
|----------|------|-------------|
| `attributeMapping` | `object` | Optional. The mapping of additional user attributes like nickname, birthday and address etc.. `ke... |
| `groupPrefix` | `string` | Optional. Prefix to prepend to group name. |
| `groupsAttribute` | `string` | Optional. The SAML attribute to read groups from. This value is expected to be a string and will ... |
| `identityProviderCertificates` | `array<string>` | Required. The list of IdP certificates to validate the SAML response against. |
| `identityProviderId` | `string` | Required. The entity ID of the SAML IdP. |
| `identityProviderSsoUri` | `string` | Required. The URI where the SAML IdP exposes the SSO service. |
| `userAttribute` | `string` | Optional. The SAML attribute to read username from. If unspecified, the username will be read fro... |
| `userPrefix` | `string` | Optional. Prefix to prepend to user name. |

### `IdentityServiceServerConfig`

Server settings for the external LDAP server.

| Property | Type | Description |
|----------|------|-------------|
| `certificateAuthorityData` | `string` | Optional. Contains a Base64 encoded, PEM formatted certificate authority certificate for the LDAP... |
| `connectionType` | `string` | Optional. Defines the connection type to communicate with the LDAP server. If `starttls` or `ldap... |
| `host` | `string` | Required. Defines the hostname or IP of the LDAP server. Port is optional and will default to 389... |

### `IdentityServiceServiceAccountConfig`

Contains the credentials of the service account which is authorized to perform the LDAP search in the directory. The credentials can be supplied by the combination of the DN and password or the client certificate.

| Property | Type | Description |
|----------|------|-------------|
| `simpleBindCredentials` | `IdentityServiceSimpleBindCredentials` | Credentials for basic auth. |

### `IdentityServiceSimpleBindCredentials`

The structure holds the LDAP simple binding credential.

| Property | Type | Description |
|----------|------|-------------|
| `dn` | `string` | Required. The distinguished name(DN) of the service account object/user. |
| `encryptedPassword` | `string` | Output only. The encrypted password of the service account object/user. |
| `password` | `string` | Required. Input only. The password of the service account object/user. |

### `IdentityServiceSpec`

**IdentityService**: Configuration for a single membership.

| Property | Type | Description |
|----------|------|-------------|
| `authMethods` | `array<IdentityServiceAuthMethod>` | A member may support multiple auth methods. |
| `identityServiceOptions` | `IdentityServiceIdentityServiceOptions` | Optional. non-protocol-related configuration options. |

### `IdentityServiceState`

**IdentityService**: State for a single membership, analyzed and reported by feature controller.

| Property | Type | Description |
|----------|------|-------------|
| `failureReason` | `string` | The reason of the failure. |
| `installedVersion` | `string` | Installed AIS version. This is the AIS version installed on this member. The values makes sense i... |
| `memberConfig` | `IdentityServiceSpec` | Last reconciled membership configuration |
| `state` | `string` | Deployment state on this member |

### `IdentityServiceUserConfig`

Defines where users exist in the LDAP directory.

| Property | Type | Description |
|----------|------|-------------|
| `baseDn` | `string` | Required. The location of the subtree in the LDAP directory to search for user entries. |
| `filter` | `string` | Optional. Filter to apply when searching for the user. This can be used to further restrict the u... |
| `idAttribute` | `string` | Optional. Determines which attribute to use as the user's identity after they are authenticated. ... |
| `loginAttribute` | `string` | Optional. The name of the attribute which matches against the input username. This is used to fin... |

### `LifecycleState`

LifecycleState describes the state of a MembershipFeature *resource* in the GkeHub API. See `FeatureState` for the "running state" of the MembershipFeature.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. The current state of the Feature resource in the Hub API. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListMembershipFeaturesResponse`

Response message for the `GkeHubFeature.ListMembershipFeatures` method.

| Property | Type | Description |
|----------|------|-------------|
| `membershipFeatures` | `array<MembershipFeature>` | The list of matching MembershipFeatures. |
| `nextPageToken` | `string` | A token to request the next page of resources from the `ListMembershipFeatures` method. The value... |
| `unreachable` | `array<string>` | List of locations that could not be reached while fetching this list. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `MembershipFeature`

MembershipFeature represents the settings and status of a Fleet Feature enabled on a single Fleet Membership.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. When the MembershipFeature resource was created. |
| `deleteTime` | `string` | Output only. When the MembershipFeature resource was deleted. |
| `labels` | `object` | GCP labels for this MembershipFeature. |
| `lifecycleState` | `LifecycleState` | Output only. Lifecycle information of the resource itself. |
| `name` | `string` | Output only. The resource name of the membershipFeature, in the format: `projects/{project}/locat... |
| `spec` | `FeatureSpec` | Optional. Spec of this membershipFeature. |
| `state` | `FeatureState` | Output only. State of the this membershipFeature. |
| `updateTime` | `string` | Output only. When the MembershipFeature resource was last updated. |

### `MeteringState`

**Metering**: State for a single membership, analyzed and reported by feature controller.

| Property | Type | Description |
|----------|------|-------------|
| `lastMeasurementTime` | `string` | The time stamp of the most recent measurement of the number of vCPUs in the cluster. |
| `preciseLastMeasuredClusterVcpuCapacity` | `number` | The vCPUs capacity in the cluster according to the most recent measurement (1/1000 precision). |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OperationMetadata`

Metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `cancelRequested` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `statusDetail` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `Origin`

Origin defines where this FeatureSpec originated from.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Type specifies which type of origin is set. |

### `PolicyControllerBundleInstallSpec`

BundleInstallSpec is the specification configuration for a single managed bundle.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedNamespaces` | `array<string>` | the set of namespaces to be exempted from the bundle |

### `PolicyControllerHubConfig`

Configuration for Policy Controller

| Property | Type | Description |
|----------|------|-------------|
| `auditIntervalSeconds` | `string` | Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables au... |
| `constraintViolationLimit` | `string` | The maximum number of audit violations to be stored in a constraint. If not set, the internal def... |
| `deploymentConfigs` | `object` | Map of deployment configs to deployments (“admission”, “audit”, “mutation”). |
| `exemptableNamespaces` | `array<string>` | The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to ... |
| `installSpec` | `string` | The install_spec represents the intended state specified by the latest request that mutated insta... |
| `logDeniesEnabled` | `boolean` | Logs all denies and dry run failures. |
| `monitoring` | `PolicyControllerMonitoringConfig` | Monitoring specifies the configuration of monitoring. |
| `mutationEnabled` | `boolean` | Enables the ability to mutate resources using Policy Controller. |
| `policyContent` | `PolicyControllerPolicyContentSpec` | Specifies the desired policy content on the cluster |
| `referentialRulesEnabled` | `boolean` | Enables the ability to use Constraint Templates that reference to objects other than the object c... |

### `PolicyControllerMonitoringConfig`

MonitoringConfig specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]

| Property | Type | Description |
|----------|------|-------------|
| `backends` | `array<string>` | Specifies the list of backends Policy Controller will export to. An empty list would effectively ... |

### `PolicyControllerOnClusterState`

OnClusterState represents the state of a sub-component of Policy Controller.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Surface potential errors or information logs. |
| `state` | `string` | The lifecycle state of this component. |

### `PolicyControllerPolicyContentSpec`

PolicyContentSpec defines the user's desired content configuration on the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `bundles` | `object` | map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `pol... |
| `templateLibrary` | `PolicyControllerTemplateLibraryConfig` | Configures the installation of the Template Library. |

### `PolicyControllerPolicyContentState`

The state of the policy controller policy content

| Property | Type | Description |
|----------|------|-------------|
| `bundleStates` | `object` | The state of the any bundles included in the chosen version of the manifest |
| `referentialSyncConfigState` | `PolicyControllerOnClusterState` | The state of the referential data sync configuration. This could represent the state of either th... |
| `templateLibraryState` | `PolicyControllerOnClusterState` | The state of the template library |

### `PolicyControllerPolicyControllerDeploymentConfig`

Deployment-specific configuration.

| Property | Type | Description |
|----------|------|-------------|
| `containerResources` | `PolicyControllerResourceRequirements` | Container resource requirements. |
| `podAffinity` | `string` | Pod affinity configuration. |
| `podAntiAffinity` | `boolean` | Pod anti-affinity enablement. Deprecated: use `pod_affinity` instead. |
| `podTolerations` | `array<PolicyControllerToleration>` | Pod tolerations of node taints. |
| `replicaCount` | `string` | Pod replica count. |

### `PolicyControllerResourceList`

ResourceList contains container resource requirements.

| Property | Type | Description |
|----------|------|-------------|
| `cpu` | `string` | CPU requirement expressed in Kubernetes resource units. |
| `memory` | `string` | Memory requirement expressed in Kubernetes resource units. |

### `PolicyControllerResourceRequirements`

ResourceRequirements describes the compute resource requirements.

| Property | Type | Description |
|----------|------|-------------|
| `limits` | `PolicyControllerResourceList` | Limits describes the maximum amount of compute resources allowed for use by the running container. |
| `requests` | `PolicyControllerResourceList` | Requests describes the amount of compute resources reserved for the container by the kube-scheduler. |

### `PolicyControllerSpec`

**Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.

| Property | Type | Description |
|----------|------|-------------|
| `policyControllerHubConfig` | `PolicyControllerHubConfig` | Policy Controller configuration for the cluster. |
| `version` | `string` | Version of Policy Controller installed. |

### `PolicyControllerState`

**Policy Controller**: State for a single cluster.

| Property | Type | Description |
|----------|------|-------------|
| `componentStates` | `object` | Currently these include (also serving as map keys): 1. "admission" 2. "audit" 3. "mutation" |
| `policyContentState` | `PolicyControllerPolicyContentState` | The overall content state observed by the Hub Feature controller. |
| `state` | `string` | The overall Policy Controller lifecycle state observed by the Hub Feature controller. |

### `PolicyControllerTemplateLibraryConfig`

The config specifying which default library templates to install.

| Property | Type | Description |
|----------|------|-------------|
| `installation` | `string` | Configures the manner in which the template library is installed on the cluster. |

### `PolicyControllerToleration`

Toleration of a node taint.

| Property | Type | Description |
|----------|------|-------------|
| `effect` | `string` | Matches a taint effect. |
| `key` | `string` | Matches a taint key (not necessarily unique). |
| `operator` | `string` | Matches a taint operator. |
| `value` | `string` | Matches a taint value. |

### `RBACRoleBindingActuationRBACRoleBindingState`

RBACRoleBindingState is the status of an RBACRoleBinding which exists on a membership.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The reason for the failure. |
| `state` | `string` | Output only. The state of the RBACRoleBinding. |
| `updateTime` | `string` | The time the RBACRoleBinding status was last updated. |

### `RBACRoleBindingActuationSpec`

**RBAC RoleBinding Actuation**: The membership-specific input for RBACRoleBindingActuation feature.

### `RBACRoleBindingActuationState`

**RBAC RoleBinding Actuation**: A membership-specific Feature state for the RBACRoleBindingActuation fleet feature.

| Property | Type | Description |
|----------|------|-------------|
| `rbacrolebindingStates` | `object` | Output only. The state of RBACRoleBindings using custom roles that exist on the cluster, keyed by... |

### `ServiceMeshAnalysisMessage`

AnalysisMessage is a single message produced by an analyzer, and it used to communicate to the end user about the state of their Service Mesh configuration.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `object` | A UI can combine these args with a template (based on message_base.type) to produce an internatio... |
| `description` | `string` | A human readable description of what the error means. It is suitable for non-internationalize dis... |
| `messageBase` | `ServiceMeshAnalysisMessageBase` | Details common to all types of Istio and ServiceMesh analysis messages. |
| `resourcePaths` | `array<string>` | A list of strings specifying the resource identifiers that were the cause of message generation. ... |

### `ServiceMeshAnalysisMessageBase`

AnalysisMessageBase describes some common information that is needed for all messages.

| Property | Type | Description |
|----------|------|-------------|
| `documentationUrl` | `string` | A url pointing to the Service Mesh or Istio documentation for this specific error type. |
| `level` | `string` | Represents how severe a message is. |
| `type` | `ServiceMeshType` | Represents the specific type of a message. |

### `ServiceMeshCondition`

Condition being reported.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Unique identifier of the condition which describes the condition recognizable to the user. |
| `details` | `string` | A short summary about the issue. |
| `documentationLink` | `string` | Links contains actionable information. |
| `severity` | `string` | Severity level of the condition. |

### `ServiceMeshControlPlaneManagement`

Status of control plane management.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `array<ServiceMeshStatusDetails>` | Explanation of state. |
| `implementation` | `string` | Output only. Implementation of managed control plane. |
| `state` | `string` | LifecycleState of control plane management. |

### `ServiceMeshDataPlaneManagement`

Status of data plane management. Only reported per-member.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `array<ServiceMeshStatusDetails>` | Explanation of the status. |
| `state` | `string` | Lifecycle status of data plane management. |

### `ServiceMeshSpec`

**Service Mesh**: Spec for a single Membership for the servicemesh feature

| Property | Type | Description |
|----------|------|-------------|
| `configApi` | `string` | Optional. Specifies the API that will be used for configuring the mesh workloads. |
| `controlPlane` | `string` | Deprecated: use `management` instead Enables automatic control plane management. |
| `defaultChannel` | `string` | Determines which release channel to use for default injection and service mesh APIs. |
| `management` | `string` | Optional. Enables automatic Service Mesh management. |

### `ServiceMeshState`

**Service Mesh**: State for a single Membership, as analyzed by the Service Mesh Hub Controller.

| Property | Type | Description |
|----------|------|-------------|
| `analysisMessages` | `array<ServiceMeshAnalysisMessage>` | Output only. Results of running Service Mesh analyzers. |
| `conditions` | `array<ServiceMeshCondition>` | Output only. List of conditions reported for this membership. |
| `configApiVersion` | `string` | The API version (i.e. Istio CRD version) for configuring service mesh in this cluster. This versi... |
| `controlPlaneManagement` | `ServiceMeshControlPlaneManagement` | Output only. Status of control plane management |
| `dataPlaneManagement` | `ServiceMeshDataPlaneManagement` | Output only. Status of data plane management. |

### `ServiceMeshStatusDetails`

Structured and human-readable details for a status.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | A machine-readable code that further describes a broad status. |
| `details` | `string` | Human-readable explanation of code. |

### `ServiceMeshType`

A unique identifier for the type of message. Display_name is intended to be human-readable, code is intended to be machine readable. There should be a one-to-one mapping between display_name and code. (i.e. do not re-use display_names or codes between message types.) See istio.analysis.v1alpha1.AnalysisMessageBase.Type

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | A 7 character code matching `^IST[0-9]{4}$` or `^ASM[0-9]{4}$`, intended to uniquely identify the... |
| `displayName` | `string` | A human-readable name for the message type. e.g. "InternalError", "PodMissingProxy". This should ... |

### `State`

High-level state of a MembershipFeature.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The high-level, machine-readable status of this MembershipFeature. |
| `description` | `string` | A human-readable description of the current status. |
| `updateTime` | `string` | The time this status and any related Feature-specific details were updated. |

### `WorkloadCertificateSpec`

**WorkloadCertificate**: The membership-specific input for WorkloadCertificate feature.

| Property | Type | Description |
|----------|------|-------------|
| `certificateManagement` | `string` | CertificateManagement specifies workload certificate management. |

### `WorkloadIdentityIdentityProviderStateDetail`

IdentityProviderStateDetail represents the state of an Identity Provider.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The state of the Identity Provider. |
| `description` | `string` | A human-readable description of the current state or returned error. |

### `WorkloadIdentityState`

**WorkloadIdentity**: The membership-specific state for WorkloadIdentity feature.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Deprecated, this field will be erased after code is changed to use the new field. |
| `identityProviderStateDetails` | `object` | The state of the Identity Providers corresponding to the membership. |

