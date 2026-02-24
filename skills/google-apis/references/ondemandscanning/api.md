# On-Demand Scanning API - API Reference

**Version**: `v1` | **Methods**: 7 | **Schemas**: 105

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `ondemandscanning.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `ondemandscanning.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `ondemandscanning.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `ondemandscanning.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `ondemandscanning.projects.locations.operations.wait` | POST | `v1/{+name}:wait` | Waits until the specified long-running operation is done or reaches at most a specified timeout, ... |
| `ondemandscanning.projects.locations.scans.analyzePackages` | POST | `v1/{+parent}/scans:analyzePackages` | Initiates an analysis of the provided packages. |
| `ondemandscanning.projects.locations.scans.vulnerabilities.list` | GET | `v1/{+parent}/vulnerabilities` | Lists vulnerabilities resulting from a successfully completed scan. |

### `ondemandscanning.projects.locations.operations.list`

**GET** `v1/{+name}/operations`

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
const res = await ondemandscanning.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ondemandscanning.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await ondemandscanning.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ondemandscanning.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await ondemandscanning.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ondemandscanning.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await ondemandscanning.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ondemandscanning.projects.locations.operations.wait`

**POST** `v1/{+name}:wait`

Waits until the specified long-running operation is done or reaches at most a specified timeout, returning the latest state. If the operation is already done, the latest state is immediately returned. If the timeout specified is greater than the default HTTP/RPC timeout, the HTTP/RPC timeout is used. If the server does not support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method is on a best-effort basis. It may return the latest state before the specified timeout (including immediately), meaning even an immediate response is no guarantee that the operation is done.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to wait on. |
| `timeout` | `string` | query | No | The maximum duration to wait before timing out. If left blank, the wait will be at most the time permitted by the und... |

**Response**: `Operation`

```typescript
const res = await ondemandscanning.operations.wait({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ondemandscanning.projects.locations.scans.analyzePackages`

**POST** `v1/{+parent}/scans:analyzePackages`

Initiates an analysis of the provided packages.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the resource for which analysis is requested. Format: projects/[project_name]/locations/[loca... |

**Request body**: `AnalyzePackagesRequestV1`

**Response**: `Operation`

```typescript
const res = await ondemandscanning.scans.analyzePackages({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ondemandscanning.projects.locations.scans.vulnerabilities.list`

**GET** `v1/{+parent}/vulnerabilities`

Lists vulnerabilities resulting from a successfully completed scan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the collection of Vulnerabilities being requested. Format: projects/[project_name]/locations/... |
| `pageSize` | `integer` | query | No | The number of vulnerabilities to retrieve. |
| `pageToken` | `string` | query | No | The page token, resulting from a previous call to ListVulnerabilities. |

**Response**: `ListVulnerabilitiesResponseV1`

```typescript
const res = await ondemandscanning.vulnerabilities.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AliasContext`

An alias to a repo revision.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The alias kind. |
| `name` | `string` | The alias name. |

### `AnalysisCompleted`

Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.

| Property | Type | Description |
|----------|------|-------------|
| `analysisType` | `array<string>` |  |

### `AnalyzePackagesMetadata`

AnalyzePackagesMetadata contains metadata for an active scan of a container image.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | When the scan was created. |
| `resourceUri` | `string` | The resource URI of the container image being scanned. |

### `AnalyzePackagesMetadataV1`

AnalyzePackagesMetadata contains metadata for an active scan of a container image.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | When the scan was created. |
| `resourceUri` | `string` | The resource URI of the container image being scanned. |

### `AnalyzePackagesRequestV1`

AnalyzePackagesRequest is the request to analyze a list of packages and create Vulnerability Occurrences for it.

| Property | Type | Description |
|----------|------|-------------|
| `includeOsvData` | `boolean` | [DEPRECATED] Whether to include OSV data in the scan. For backwards compatibility reasons, this f... |
| `packages` | `array<PackageData>` | The packages to analyze. |
| `resourceUri` | `string` | Required. The resource URI of the container image being scanned. |

### `AnalyzePackagesResponse`

AnalyzePackagesResponse contains the information necessary to find results for the given scan.

| Property | Type | Description |
|----------|------|-------------|
| `scan` | `string` | The name of the scan resource created by this successful scan. |

### `AnalyzePackagesResponseV1`

AnalyzePackagesResponse contains the information necessary to find results for the given scan.

| Property | Type | Description |
|----------|------|-------------|
| `scan` | `string` | The name of the scan resource created by this successful scan. |

### `Artifact`

Artifact describes a build product.

| Property | Type | Description |
|----------|------|-------------|
| `checksum` | `string` | Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container. |
| `id` | `string` | Artifact ID, if any; for container images, this will be a URL by digest like `gcr.io/projectID/im... |
| `names` | `array<string>` | Related artifact names. This may be the path to a binary or jar file, or in the case of a contain... |

### `AttestationOccurrence`

Occurrence that represents a single "attestation". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for lookup (how to find this attestation if you already know the authority and artifact to be verified) and intent (for which authority this attestation was intended to sign.

| Property | Type | Description |
|----------|------|-------------|
| `jwts` | `array<Jwt>` | One or more JWTs encoding a self-contained attestation. Each JWT encodes the payload that it veri... |
| `serializedPayload` | `string` | Required. The serialized payload that is verified by one or more `signatures`. |
| `signatures` | `array<Signature>` | One or more signatures over `serialized_payload`. Verifier implementations should consider this a... |

### `BaseImage`

BaseImage describes a base image of a container image.

| Property | Type | Description |
|----------|------|-------------|
| `layerCount` | `integer` | The number of layers that the base image is composed of. |
| `name` | `string` | The name of the base image. |
| `registry` | `string` | The registry in which the base image is from. |
| `repository` | `string` | The repository name in which the base image is from. |

### `BinarySourceInfo`

| Property | Type | Description |
|----------|------|-------------|
| `binaryVersion` | `PackageVersion` | The binary package. This is significant when the source is different than the binary itself. Hist... |
| `sourceVersion` | `PackageVersion` | The source package. Similar to the above, this is significant when the source is different than t... |

### `BuildDefinition`

| Property | Type | Description |
|----------|------|-------------|
| `buildType` | `string` |  |
| `externalParameters` | `object` |  |
| `internalParameters` | `object` |  |
| `resolvedDependencies` | `array<ResourceDescriptor>` |  |

### `BuildMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `finishedOn` | `string` |  |
| `invocationId` | `string` |  |
| `startedOn` | `string` |  |

### `BuildOccurrence`

Details of a build occurrence.

| Property | Type | Description |
|----------|------|-------------|
| `inTotoSlsaProvenanceV1` | `InTotoSlsaProvenanceV1` | In-Toto Slsa Provenance V1 represents a slsa provenance meeting the slsa spec, wrapped in an in-t... |
| `intotoProvenance` | `InTotoProvenance` | Deprecated. See InTotoStatement for the replacement. In-toto Provenance representation as defined... |
| `intotoStatement` | `InTotoStatement` | In-toto Statement representation as defined in spec. The intoto_statement can contain any type of... |
| `provenance` | `BuildProvenance` | The actual provenance for the build. |
| `provenanceBytes` | `string` | Serialized JSON representation of the provenance, used in generating the build signature in the c... |

### `BuildProvenance`

Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.

| Property | Type | Description |
|----------|------|-------------|
| `buildOptions` | `object` | Special options applied to this build. This is a catch-all field where build providers can enter ... |
| `builderVersion` | `string` | Version string of the builder at the time this build was executed. |
| `builtArtifacts` | `array<Artifact>` | Output of the build. |
| `commands` | `array<Command>` | Commands requested by the build. |
| `createTime` | `string` | Time at which the build was created. |
| `creator` | `string` | E-mail address of the user who initiated this build. Note that this was the user's e-mail address... |
| `endTime` | `string` | Time at which execution of the build was finished. |
| `id` | `string` | Required. Unique identifier of the build. |
| `logsUri` | `string` | URI where any logs for this provenance were written. |
| `projectId` | `string` | ID of the project. |
| `sourceProvenance` | `Source` | Details of the Source input to the build. |
| `startTime` | `string` | Time at which execution of the build was started. |
| `triggerId` | `string` | Trigger identifier if the build was triggered automatically; empty if not. |

### `BuilderConfig`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` |  |

### `CISAKnownExploitedVulnerabilities`

| Property | Type | Description |
|----------|------|-------------|
| `knownRansomwareCampaignUse` | `string` | Whether the vulnerability is known to have been leveraged as part of a ransomware campaign. |

### `CVSS`

Common Vulnerability Scoring System. For details, see https://www.first.org/cvss/specification-document This is a message we will try to use for storing various versions of CVSS rather than making a separate proto for storing a specific version.

| Property | Type | Description |
|----------|------|-------------|
| `attackComplexity` | `string` |  |
| `attackVector` | `string` | Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over t... |
| `authentication` | `string` |  |
| `availabilityImpact` | `string` |  |
| `baseScore` | `number` | The base score is a function of the base metric scores. |
| `confidentialityImpact` | `string` |  |
| `exploitabilityScore` | `number` |  |
| `impactScore` | `number` |  |
| `integrityImpact` | `string` |  |
| `privilegesRequired` | `string` |  |
| `scope` | `string` |  |
| `userInteraction` | `string` |  |

### `Category`

The category to which the update belongs.

| Property | Type | Description |
|----------|------|-------------|
| `categoryId` | `string` | The identifier of the category. |
| `name` | `string` | The localized name of the category. |

### `CloudRepoSourceContext`

A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.

| Property | Type | Description |
|----------|------|-------------|
| `aliasContext` | `AliasContext` | An alias, which may be a branch or tag. |
| `repoId` | `RepoId` | The ID of the repo. |
| `revisionId` | `string` | A revision ID. |

### `Command`

Command describes a step performed as part of the build pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<string>` | Command-line arguments used when executing this command. |
| `dir` | `string` | Working directory (relative to project source root) used when running this command. |
| `env` | `array<string>` | Environment variables set before running this command. |
| `id` | `string` | Optional unique identifier for this command, used in wait_for to reference this command as a depe... |
| `name` | `string` | Required. Name of the command, as presented on the command line, or if the command is packaged as... |
| `waitFor` | `array<string>` | The ID(s) of the command(s) that this command depends on. |

### `Completeness`

Indicates that the builder claims certain fields in this message to be complete.

| Property | Type | Description |
|----------|------|-------------|
| `arguments` | `boolean` | If true, the builder claims that recipe.arguments is complete, meaning that all external inputs a... |
| `environment` | `boolean` | If true, the builder claims that recipe.environment is claimed to be complete. |
| `materials` | `boolean` | If true, the builder claims that materials are complete, usually through some controls to prevent... |

### `ComplianceOccurrence`

An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.

| Property | Type | Description |
|----------|------|-------------|
| `nonComplianceReason` | `string` |  |
| `nonCompliantFiles` | `array<NonCompliantFile>` |  |
| `version` | `ComplianceVersion` | The OS and config version the benchmark was run on. |

### `ComplianceVersion`

Describes the CIS benchmark version that is applicable to a given OS and os version.

| Property | Type | Description |
|----------|------|-------------|
| `benchmarkDocument` | `string` | The name of the document that defines this benchmark, e.g. "CIS Container-Optimized OS". |
| `cpeUri` | `string` | The CPE URI (https://cpe.mitre.org/specification/) this benchmark is applicable to. |
| `version` | `string` | The version of the benchmark. This is set to the version of the OS-specific CIS document the benc... |

### `DSSEAttestationOccurrence`

Deprecated. Prefer to use a regular Occurrence, and populate the Envelope at the top level of the Occurrence.

| Property | Type | Description |
|----------|------|-------------|
| `envelope` | `Envelope` | If doing something security critical, make sure to verify the signatures in this metadata. |
| `statement` | `InTotoStatement` |  |

### `DeploymentOccurrence`

The period during which some deployable was active in a runtime.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | Address of the runtime element hosting this deployment. |
| `config` | `string` | Configuration used to create this deployment. |
| `deployTime` | `string` | Required. Beginning of the lifetime of this deployment. |
| `platform` | `string` | Platform hosting this deployment. |
| `resourceUri` | `array<string>` | Output only. Resource URI for the artifact being deployed taken from the deployable field with th... |
| `undeployTime` | `string` | End of the lifetime of this deployment. |
| `userEmail` | `string` | Identity of the user that triggered this deployment. |

### `DiscoveryOccurrence`

Provides information about the analysis status of a discovered resource.

| Property | Type | Description |
|----------|------|-------------|
| `analysisCompleted` | `AnalysisCompleted` |  |
| `analysisError` | `array<Status>` | Indicates any errors encountered during analysis of a resource. There could be 0 or more of these... |
| `analysisStatus` | `string` | The status of discovery for the resource. |
| `analysisStatusError` | `Status` | When an error is encountered this will contain a LocalizedMessage under details to show to the us... |
| `archiveTime` | `string` | Output only. The time occurrences related to this discovery occurrence were archived. |
| `continuousAnalysis` | `string` | Whether the resource is continuously analyzed. |
| `cpe` | `string` | The CPE of the resource being scanned. |
| `files` | `array<File>` | Files that make up the resource described by the occurrence. |
| `lastScanTime` | `string` | The last time this resource was scanned. |
| `lastVulnerabilityUpdateTime` | `string` | The last time vulnerability scan results changed. |
| `sbomStatus` | `SBOMStatus` | The status of an SBOM generation. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Envelope`

MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.

| Property | Type | Description |
|----------|------|-------------|
| `payload` | `string` |  |
| `payloadType` | `string` |  |
| `signatures` | `array<EnvelopeSignature>` |  |

### `EnvelopeSignature`

| Property | Type | Description |
|----------|------|-------------|
| `keyid` | `string` |  |
| `sig` | `string` |  |

### `ExploitPredictionScoringSystem`

| Property | Type | Description |
|----------|------|-------------|
| `percentile` | `number` | The percentile of the current score, the proportion of all scored vulnerabilities with the same o... |
| `score` | `number` | The EPSS score representing the probability [0-1] of exploitation in the wild in the next 30 days |

### `File`

| Property | Type | Description |
|----------|------|-------------|
| `digest` | `object` |  |
| `name` | `string` |  |

### `FileHashes`

Container message for hashes of byte content of files, used in source messages to verify integrity of source input to the build.

| Property | Type | Description |
|----------|------|-------------|
| `fileHash` | `array<Hash>` | Required. Collection of file hashes. |

### `FileLocation`

Indicates the location at which a package was found.

| Property | Type | Description |
|----------|------|-------------|
| `filePath` | `string` | For jars that are contained inside .war files, this filepath can indicate the path to war file co... |
| `layerDetails` | `LayerDetails` |  |

### `Fingerprint`

A set of properties that uniquely identify a given Docker image.

| Property | Type | Description |
|----------|------|-------------|
| `v1Name` | `string` | Required. The layer ID of the final layer in the Docker image's v1 representation. |
| `v2Blob` | `array<string>` | Required. The ordered list of v2 blobs that represent a given image. |
| `v2Name` | `string` | Output only. The name of the image's v2 blobs computed via: [bottom] := v2_blobbottom := sha256(v... |

### `GerritSourceContext`

A SourceContext referring to a Gerrit project.

| Property | Type | Description |
|----------|------|-------------|
| `aliasContext` | `AliasContext` | An alias, which may be a branch or tag. |
| `gerritProject` | `string` | The full project name within the host. Projects may be nested, so "project/subproject" is a valid... |
| `hostUri` | `string` | The URI of a running Gerrit instance. |
| `revisionId` | `string` | A revision (commit) ID. |

### `GitSourceContext`

A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).

| Property | Type | Description |
|----------|------|-------------|
| `revisionId` | `string` | Git commit hash. |
| `url` | `string` | Git repository URL. |

### `GrafeasV1BaseImage`

BaseImage describes a base image of a container image.

| Property | Type | Description |
|----------|------|-------------|
| `layerCount` | `integer` | The number of layers that the base image is composed of. |
| `name` | `string` | The name of the base image. |
| `registry` | `string` | The registry in which the base image is from. |
| `repository` | `string` | The repository name in which the base image is from. |

### `GrafeasV1FileLocation`

Indicates the location at which a package was found.

| Property | Type | Description |
|----------|------|-------------|
| `filePath` | `string` | For jars that are contained inside .war files, this filepath can indicate the path to war file co... |
| `layerDetails` | `GrafeasV1LayerDetails` | Each package found in a file should have its own layer metadata (that is, information from the or... |

### `GrafeasV1LayerDetails`

Details about the layer a package was found in.

| Property | Type | Description |
|----------|------|-------------|
| `baseImages` | `array<GrafeasV1BaseImage>` | The base images the layer is found within. |
| `chainId` | `string` | The layer chain ID (sha256 hash) of the layer in the container image. https://github.com/opencont... |
| `command` | `string` | The layer build command that was used to build the layer. This may not be found in all layers dep... |
| `diffId` | `string` | The diff ID (typically a sha256 hash) of the layer in the container image. |
| `index` | `integer` | The index of the layer in the container image. |

### `GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder`

Identifies the entity that executed the recipe, which is trusted to have correctly performed the operation and populated this provenance.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` |  |

### `GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness`

Indicates that the builder claims certain fields in this message to be complete.

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `boolean` |  |
| `materials` | `boolean` |  |
| `parameters` | `boolean` |  |

### `GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource`

Describes where the config file that kicked off the build came from. This is effectively a pointer to the source where buildConfig came from.

| Property | Type | Description |
|----------|------|-------------|
| `digest` | `object` |  |
| `entryPoint` | `string` |  |
| `uri` | `string` |  |

### `GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation`

Identifies the event that kicked off the build.

| Property | Type | Description |
|----------|------|-------------|
| `configSource` | `GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource` |  |
| `environment` | `object` |  |
| `parameters` | `object` |  |

### `GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial`

The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.

| Property | Type | Description |
|----------|------|-------------|
| `digest` | `object` |  |
| `uri` | `string` |  |

### `GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata`

Other properties of the build.

| Property | Type | Description |
|----------|------|-------------|
| `buildFinishedOn` | `string` |  |
| `buildInvocationId` | `string` |  |
| `buildStartedOn` | `string` |  |
| `completeness` | `GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness` |  |
| `reproducible` | `boolean` |  |

### `Hash`

Container message for hash values.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Required. The type of hash that was performed, e.g. "SHA-256". |
| `value` | `string` | Required. The hash value. |

### `Identity`

The unique identifier of the update.

| Property | Type | Description |
|----------|------|-------------|
| `revision` | `integer` | The revision number of the update. |
| `updateId` | `string` | The revision independent identifier of the update. |

### `ImageOccurrence`

Details of the derived image portion of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .

| Property | Type | Description |
|----------|------|-------------|
| `baseResourceUrl` | `string` | Output only. This contains the base image URL for the derived image occurrence. |
| `distance` | `integer` | Output only. The number of layers by which this image differs from the associated image basis. |
| `fingerprint` | `Fingerprint` | Required. The fingerprint of the derived image. |
| `layerInfo` | `array<Layer>` | This contains layer-specific metadata, if populated it has length "distance" and is ordered with ... |

### `InTotoProvenance`

| Property | Type | Description |
|----------|------|-------------|
| `builderConfig` | `BuilderConfig` | required |
| `materials` | `array<string>` | The collection of artifacts that influenced the build including sources, dependencies, build tool... |
| `metadata` | `Metadata` |  |
| `recipe` | `Recipe` | Identifies the configuration used for the build. When combined with materials, this SHOULD fully ... |

### `InTotoSlsaProvenanceV1`

| Property | Type | Description |
|----------|------|-------------|
| `_type` | `string` | InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement |
| `predicate` | `SlsaProvenanceV1` |  |
| `predicateType` | `string` |  |
| `subject` | `array<Subject>` |  |

### `InTotoStatement`

Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always "application/vnd.in-toto+json".

| Property | Type | Description |
|----------|------|-------------|
| `_type` | `string` | Always `https://in-toto.io/Statement/v0.1`. |
| `predicateType` | `string` | `https://slsa.dev/provenance/v0.1` for SlsaProvenance. |
| `provenance` | `InTotoProvenance` |  |
| `slsaProvenance` | `SlsaProvenance` |  |
| `slsaProvenanceZeroTwo` | `SlsaProvenanceZeroTwo` |  |
| `subject` | `array<Subject>` |  |

### `Justification`

Justification provides the justification when the state of the assessment if NOT_AFFECTED.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Additional details on why this justification was chosen. |
| `justificationType` | `string` | The justification type for this vulnerability. |

### `Jwt`

| Property | Type | Description |
|----------|------|-------------|
| `compactJwt` | `string` | The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. Fo... |

### `LanguagePackageDependency`

Indicates a language package available between this package and the customer's resource artifact.

| Property | Type | Description |
|----------|------|-------------|
| `package` | `string` |  |
| `version` | `string` |  |

### `Layer`

Layer holds metadata specific to a layer of a Docker image.

| Property | Type | Description |
|----------|------|-------------|
| `arguments` | `string` | The recovered arguments to the Dockerfile directive. |
| `directive` | `string` | Required. The recovered Dockerfile directive used to construct this layer. See https://docs.docke... |

### `LayerDetails`

Details about the layer a package was found in.

| Property | Type | Description |
|----------|------|-------------|
| `baseImages` | `array<BaseImage>` | The base images the layer is found within. |
| `chainId` | `string` | The layer chain ID (sha256 hash) of the layer in the container image. https://github.com/opencont... |
| `command` | `string` | The layer build command that was used to build the layer. This may not be found in all layers dep... |
| `diffId` | `string` | The diff ID (sha256 hash) of the layer in the container image. |
| `index` | `integer` | The index of the layer in the container image. |

### `License`

License information.

| Property | Type | Description |
|----------|------|-------------|
| `comments` | `string` | Comments |
| `expression` | `string` | Often a single license can be used to represent the licensing terms. Sometimes it is necessary to... |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListVulnerabilitiesResponseV1`

ListVulnerabilitiesResponse contains a single page of vulnerabilities resulting from a scan.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A page token that can be used in a subsequent call to ListVulnerabilities to continue retrieving ... |
| `occurrences` | `array<Occurrence>` | The list of Vulnerability Occurrences resulting from a scan. |

### `Location`

An occurrence of a particular package installation found within a system's filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.

| Property | Type | Description |
|----------|------|-------------|
| `cpeUri` | `string` | Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/) |
| `path` | `string` | The path from which we gathered that this package/version is installed. |
| `version` | `Version` | Deprecated. The version installed at this location. |

### `Maintainer`

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` |  |
| `kind` | `string` |  |
| `name` | `string` |  |
| `url` | `string` |  |

### `Material`

| Property | Type | Description |
|----------|------|-------------|
| `digest` | `object` |  |
| `uri` | `string` |  |

### `Metadata`

Other properties of the build.

| Property | Type | Description |
|----------|------|-------------|
| `buildFinishedOn` | `string` | The timestamp of when the build completed. |
| `buildInvocationId` | `string` | Identifies the particular build invocation, which can be useful for finding associated logs or ot... |
| `buildStartedOn` | `string` | The timestamp of when the build started. |
| `completeness` | `Completeness` | Indicates that the builder claims certain fields in this message to be complete. |
| `reproducible` | `boolean` | If true, the builder claims that running the recipe on materials will produce bit-for-bit identic... |

### `NonCompliantFile`

Details about files that caused a compliance check to fail. display_command is a single command that can be used to display a list of non compliant files. When there is no such command, we can also iterate a list of non compliant file using 'path'.

| Property | Type | Description |
|----------|------|-------------|
| `displayCommand` | `string` | Command to display the non-compliant files. |
| `path` | `string` | Empty if `display_command` is set. |
| `reason` | `string` | Explains why a file is non compliant for a CIS check. |

### `Occurrence`

An instance of an analysis type that has been found on a resource.

| Property | Type | Description |
|----------|------|-------------|
| `attestation` | `AttestationOccurrence` | Describes an attestation of an artifact. |
| `build` | `BuildOccurrence` | Describes a verifiable build. |
| `compliance` | `ComplianceOccurrence` | Describes a compliance violation on a linked resource. |
| `createTime` | `string` | Output only. The time this occurrence was created. |
| `deployment` | `DeploymentOccurrence` | Describes the deployment of an artifact on a runtime. |
| `discovery` | `DiscoveryOccurrence` | Describes when a resource was discovered. |
| `dsseAttestation` | `DSSEAttestationOccurrence` | Describes an attestation of an artifact using dsse. |
| `envelope` | `Envelope` | https://github.com/secure-systems-lab/dsse |
| `image` | `ImageOccurrence` | Describes how this resource derives from the basis in the associated note. |
| `kind` | `string` | Output only. This explicitly denotes which of the occurrence details are specified. This field ca... |
| `name` | `string` | Output only. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURR... |
| `noteName` | `string` | Required. Immutable. The analysis note associated with this occurrence, in the form of `projects/... |
| `package` | `PackageOccurrence` | Describes the installation of a package on the linked resource. |
| `remediation` | `string` | A description of actions that can be taken to remedy the note. |
| `resourceUri` | `string` | Required. Immutable. A URI that represents the resource for which the occurrence applies. For exa... |
| `sbomReference` | `SBOMReferenceOccurrence` | Describes a specific SBOM reference occurrences. |
| `secret` | `SecretOccurrence` | Describes a secret. |
| `updateTime` | `string` | Output only. The time this occurrence was last updated. |
| `upgrade` | `UpgradeOccurrence` | Describes an available package upgrade on the linked resource. |
| `vulnerability` | `VulnerabilityOccurrence` | Describes a security vulnerability. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `PackageData`

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | The architecture of the package. |
| `binarySourceInfo` | `array<BinarySourceInfo>` | A bundle containing the binary and source information. |
| `binaryVersion` | `PackageVersion` | DEPRECATED |
| `cpeUri` | `string` | The cpe_uri in [cpe format] (https://cpe.mitre.org/specification/) in which the vulnerability may... |
| `dependencyChain` | `array<LanguagePackageDependency>` | The dependency chain between this package and the user's artifact. List in order from the custome... |
| `fileLocation` | `array<FileLocation>` | The path to the jar file / go binary file. |
| `hashDigest` | `string` | HashDigest stores the SHA512 hash digest of the jar file if the package is of type Maven. This fi... |
| `layerDetails` | `LayerDetails` |  |
| `licenses` | `array<string>` | The list of licenses found that are related to a given package. Note that licenses may also be st... |
| `maintainer` | `Maintainer` | The maintainer of the package. |
| `os` | `string` | The OS affected by a vulnerability Used to generate the cpe_uri for OS packages |
| `osVersion` | `string` | The version of the OS Used to generate the cpe_uri for OS packages |
| `package` | `string` | The package being analysed for vulnerabilities |
| `packageType` | `string` | The type of package: os, maven, go, etc. |
| `patchedCve` | `array<string>` | CVEs that this package is no longer vulnerable to |
| `sourceVersion` | `PackageVersion` | DEPRECATED |
| `unused` | `string` |  |
| `version` | `string` | The version of the package being analysed |

### `PackageIssue`

A detail for a distro and package this vulnerability occurrence was found in and its associated fix (if one is available).

| Property | Type | Description |
|----------|------|-------------|
| `affectedCpeUri` | `string` | Required. The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was found in. |
| `affectedPackage` | `string` | Required. The package this vulnerability was found in. |
| `affectedVersion` | `Version` | Required. The version of the package that is installed on the resource affected by this vulnerabi... |
| `effectiveSeverity` | `string` | Output only. The distro or language system assigned severity for this vulnerability when that is ... |
| `fileLocation` | `array<GrafeasV1FileLocation>` | The location at which this package was found. |
| `fixAvailable` | `boolean` | Output only. Whether a fix is available for this package. |
| `fixedCpeUri` | `string` | The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was fixed in. It is possib... |
| `fixedPackage` | `string` | The package this vulnerability was fixed in. It is possible for this to be different from the aff... |
| `fixedVersion` | `Version` | Required. The version of the package this vulnerability was fixed in. Setting this to VersionKind... |
| `packageType` | `string` | The type of package (e.g. OS, MAVEN, GO). |

### `PackageOccurrence`

Details on how a particular software package was installed on a system.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | Output only. The CPU architecture for which packages in this distribution channel were built. Arc... |
| `cpeUri` | `string` | Output only. The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the packa... |
| `license` | `License` | Licenses that have been declared by the authors of the package. |
| `location` | `array<Location>` | All of the places within the filesystem versions of this package have been found. |
| `name` | `string` | Required. Output only. The name of the installed package. |
| `packageType` | `string` | Output only. The type of package; whether native or non native (e.g., ruby gems, node.js packages... |
| `version` | `Version` | Output only. The version of the package. |

### `PackageVersion`

| Property | Type | Description |
|----------|------|-------------|
| `licenses` | `array<string>` | The licenses associated with this package. Note that this has to go on the PackageVersion level, ... |
| `name` | `string` |  |
| `version` | `string` |  |

### `ProjectRepoId`

Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31) and a repo name within that project.

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | The ID of the project. |
| `repoName` | `string` | The name of the repo. Leave empty for the default repo. |

### `ProvenanceBuilder`

| Property | Type | Description |
|----------|------|-------------|
| `builderDependencies` | `array<ResourceDescriptor>` |  |
| `id` | `string` |  |
| `version` | `object` |  |

### `Recipe`

Steps taken to build the artifact. For a TaskRun, typically each container corresponds to one step in the recipe.

| Property | Type | Description |
|----------|------|-------------|
| `arguments` | `array<object>` | Collection of all external inputs that influenced the build on top of recipe.definedInMaterial an... |
| `definedInMaterial` | `string` | Index in materials containing the recipe steps that are not implied by recipe.type. For example, ... |
| `entryPoint` | `string` | String identifying the entry point into the build. This is often a path to a configuration file a... |
| `environment` | `array<object>` | Any other builder-controlled inputs necessary for correctly evaluating the recipe. Usually only n... |
| `type` | `string` | URI indicating what type of recipe was performed. It determines the meaning of recipe.entryPoint,... |

### `RelatedUrl`

Metadata for any related URL information.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | Label to describe usage of the URL. |
| `url` | `string` | Specific URL associated with the resource. |

### `Remediation`

Specifies details on how to handle (and presumably, fix) a vulnerability.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Contains a comprehensive human-readable discussion of the remediation. |
| `remediationType` | `string` | The type of remediation that can be applied. |
| `remediationUri` | `RelatedUrl` | Contains the URL where to obtain the remediation. |

### `RepoId`

A unique identifier for a Cloud Repo.

| Property | Type | Description |
|----------|------|-------------|
| `projectRepoId` | `ProjectRepoId` | A combination of a project ID and a repo name. |
| `uid` | `string` | A server-assigned, globally unique identifier. |

### `ResourceDescriptor`

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` |  |
| `content` | `string` |  |
| `digest` | `object` |  |
| `downloadLocation` | `string` |  |
| `mediaType` | `string` |  |
| `name` | `string` |  |
| `uri` | `string` |  |

### `Risk`

| Property | Type | Description |
|----------|------|-------------|
| `cisaKev` | `CISAKnownExploitedVulnerabilities` | CISA maintains the authoritative source of vulnerabilities that have been exploited in the wild. |
| `epss` | `ExploitPredictionScoringSystem` | The Exploit Prediction Scoring System (EPSS) estimates the likelihood (probability) that a softwa... |

### `RunDetails`

| Property | Type | Description |
|----------|------|-------------|
| `builder` | `ProvenanceBuilder` |  |
| `byproducts` | `array<ResourceDescriptor>` |  |
| `metadata` | `BuildMetadata` |  |

### `SBOMReferenceOccurrence`

The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more details.

| Property | Type | Description |
|----------|------|-------------|
| `payload` | `SbomReferenceIntotoPayload` | The actual payload that contains the SBOM reference data. |
| `payloadType` | `string` | The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this ... |
| `signatures` | `array<EnvelopeSignature>` | The signatures over the payload. |

### `SBOMStatus`

The status of an SBOM generation.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `string` | If there was an error generating an SBOM, this will indicate what that error was. |
| `sbomState` | `string` | The progress of the SBOM generation. |

### `SbomReferenceIntotoPayload`

The actual payload that contains the SBOM Reference data. The payload follows the intoto statement specification. See https://github.com/in-toto/attestation/blob/main/spec/v1.0/statement.md for more details.

| Property | Type | Description |
|----------|------|-------------|
| `_type` | `string` | Identifier for the schema of the Statement. |
| `predicate` | `SbomReferenceIntotoPredicate` | Additional parameters of the Predicate. Includes the actual data about the SBOM. |
| `predicateType` | `string` | URI identifying the type of the Predicate. |
| `subject` | `array<Subject>` | Set of software artifacts that the attestation applies to. Each element represents a single softw... |

### `SbomReferenceIntotoPredicate`

A predicate which describes the SBOM being referenced.

| Property | Type | Description |
|----------|------|-------------|
| `digest` | `object` | A map of algorithm to digest of the contents of the SBOM. |
| `location` | `string` | The location of the SBOM. |
| `mimeType` | `string` | The mime type of the SBOM. |
| `referrerId` | `string` | The person or system referring this predicate to the consumer. |

### `SecretLocation`

The location of the secret.

| Property | Type | Description |
|----------|------|-------------|
| `fileLocation` | `GrafeasV1FileLocation` | The secret is found from a file. |

### `SecretOccurrence`

The occurrence provides details of a secret.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Required. Type of secret. |
| `locations` | `array<SecretLocation>` | Optional. Locations where the secret is detected. |
| `statuses` | `array<SecretStatus>` | Optional. Status of the secret. |

### `SecretStatus`

The status of the secret with a timestamp.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Optional. Optional message about the status code. |
| `status` | `string` | Optional. The status of the secret. |
| `updateTime` | `string` | Optional. The time the secret status was last updated. |

### `Signature`

Verifiers (e.g. Kritis implementations) MUST verify signatures with respect to the trust anchors defined in policy (e.g. a Kritis policy). Typically this means that the verifier has been configured with a map from `public_key_id` to public key material (and any required parameters, e.g. signing algorithm). In particular, verification implementations MUST NOT treat the signature `public_key_id` as anything more than a key lookup hint. The `public_key_id` DOES NOT validate or authenticate a public key; it only provides a mechanism for quickly selecting a public key ALREADY CONFIGURED on the verifier through a trusted channel. Verification implementations MUST reject signatures in any of the following circumstances: * The `public_key_id` is not recognized by the verifier. * The public key that `public_key_id` refers to does not verify the signature with respect to the payload. The `signature` contents SHOULD NOT be "attached" (where the payload is included with the serialized `signature` bytes). Verifiers MUST ignore any "attached" payload and only verify signatures with respect to explicitly provided payload (e.g. a `payload` field on the proto message that holds this Signature, or the canonical serialization of the proto message that holds this signature).

| Property | Type | Description |
|----------|------|-------------|
| `publicKeyId` | `string` | The identifier for the public key that verifies this signature. * The `public_key_id` is required... |
| `signature` | `string` | The content of the signature, an opaque bytestring. The payload that this signature verifies MUST... |

### `SlsaBuilder`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` |  |

### `SlsaCompleteness`

Indicates that the builder claims certain fields in this message to be complete.

| Property | Type | Description |
|----------|------|-------------|
| `arguments` | `boolean` | If true, the builder claims that recipe.arguments is complete, meaning that all external inputs a... |
| `environment` | `boolean` | If true, the builder claims that recipe.environment is claimed to be complete. |
| `materials` | `boolean` | If true, the builder claims that materials are complete, usually through some controls to prevent... |

### `SlsaMetadata`

Other properties of the build.

| Property | Type | Description |
|----------|------|-------------|
| `buildFinishedOn` | `string` | The timestamp of when the build completed. |
| `buildInvocationId` | `string` | Identifies the particular build invocation, which can be useful for finding associated logs or ot... |
| `buildStartedOn` | `string` | The timestamp of when the build started. |
| `completeness` | `SlsaCompleteness` | Indicates that the builder claims certain fields in this message to be complete. |
| `reproducible` | `boolean` | If true, the builder claims that running the recipe on materials will produce bit-for-bit identic... |

### `SlsaProvenance`

| Property | Type | Description |
|----------|------|-------------|
| `builder` | `SlsaBuilder` | required |
| `materials` | `array<Material>` | The collection of artifacts that influenced the build including sources, dependencies, build tool... |
| `metadata` | `SlsaMetadata` |  |
| `recipe` | `SlsaRecipe` | Identifies the configuration used for the build. When combined with materials, this SHOULD fully ... |

### `SlsaProvenanceV1`

Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.

| Property | Type | Description |
|----------|------|-------------|
| `buildDefinition` | `BuildDefinition` |  |
| `runDetails` | `RunDetails` |  |

### `SlsaProvenanceZeroTwo`

See full explanation of fields at slsa.dev/provenance/v0.2.

| Property | Type | Description |
|----------|------|-------------|
| `buildConfig` | `object` |  |
| `buildType` | `string` |  |
| `builder` | `GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder` |  |
| `invocation` | `GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation` |  |
| `materials` | `array<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial>` |  |
| `metadata` | `GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata` |  |

### `SlsaRecipe`

Steps taken to build the artifact. For a TaskRun, typically each container corresponds to one step in the recipe.

| Property | Type | Description |
|----------|------|-------------|
| `arguments` | `object` | Collection of all external inputs that influenced the build on top of recipe.definedInMaterial an... |
| `definedInMaterial` | `string` | Index in materials containing the recipe steps that are not implied by recipe.type. For example, ... |
| `entryPoint` | `string` | String identifying the entry point into the build. This is often a path to a configuration file a... |
| `environment` | `object` | Any other builder-controlled inputs necessary for correctly evaluating the recipe. Usually only n... |
| `type` | `string` | URI indicating what type of recipe was performed. It determines the meaning of recipe.entryPoint,... |

### `Source`

Source describes the location of the source used for the build.

| Property | Type | Description |
|----------|------|-------------|
| `additionalContexts` | `array<SourceContext>` | If provided, some of the source code used for the build may be found in these locations, in the c... |
| `artifactStorageSourceUri` | `string` | If provided, the input binary artifacts for the build came from this location. |
| `context` | `SourceContext` | If provided, the source code used for the build came from this location. |
| `fileHashes` | `object` | Hash(es) of the build source, which can be used to verify that the original source integrity was ... |

### `SourceContext`

A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.

| Property | Type | Description |
|----------|------|-------------|
| `cloudRepo` | `CloudRepoSourceContext` | A SourceContext referring to a revision in a Google Cloud Source Repo. |
| `gerrit` | `GerritSourceContext` | A SourceContext referring to a Gerrit project. |
| `git` | `GitSourceContext` | A SourceContext referring to any third party Git repo (e.g., GitHub). |
| `labels` | `object` | Labels with user defined metadata. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Subject`

| Property | Type | Description |
|----------|------|-------------|
| `digest` | `object` | `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/ma... |
| `name` | `string` |  |

### `UpgradeDistribution`

The Upgrade Distribution represents metadata about the Upgrade for each operating system (CPE). Some distributions have additional metadata around updates, classifying them into various categories and severities.

| Property | Type | Description |
|----------|------|-------------|
| `classification` | `string` | The operating system classification of this Upgrade, as specified by the upstream operating syste... |
| `cpeUri` | `string` | Required - The specific operating system this metadata applies to. See https://cpe.mitre.org/spec... |
| `cve` | `array<string>` | The cve tied to this Upgrade. |
| `severity` | `string` | The severity as specified by the upstream operating system. |

### `UpgradeOccurrence`

An Upgrade Occurrence represents that a specific resource_url could install a specific upgrade. This presence is supplied via local sources (i.e. it is present in the mirror and the running system has noticed its availability). For Windows, both distribution and windows_update contain information for the Windows update.

| Property | Type | Description |
|----------|------|-------------|
| `distribution` | `UpgradeDistribution` | Metadata about the upgrade for available for the specific operating system for the resource_url. ... |
| `package` | `string` | Required for non-Windows OS. The package this Upgrade is for. |
| `parsedVersion` | `Version` | Required for non-Windows OS. The version of the package in a machine + human readable form. |
| `windowsUpdate` | `WindowsUpdate` | Required for Windows OS. Represents the metadata about the Windows update. |

### `Version`

Version contains structured information about the version of a package.

| Property | Type | Description |
|----------|------|-------------|
| `epoch` | `integer` | Used to correct mistakes in the version numbering scheme. |
| `fullName` | `string` | Human readable version string. This string is of the form :- and is only set when kind is NORMAL. |
| `inclusive` | `boolean` | Whether this version is specifying part of an inclusive range. Grafeas does not have the capabili... |
| `kind` | `string` | Required. Distinguishes between sentinel MIN/MAX versions and normal versions. |
| `name` | `string` | Required only when version kind is NORMAL. The main part of the version name. |
| `revision` | `string` | The iteration of the package build from the above version. |

### `VexAssessment`

VexAssessment provides all publisher provided Vex information that is related to this vulnerability.

| Property | Type | Description |
|----------|------|-------------|
| `cve` | `string` | Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulne... |
| `impacts` | `array<string>` | Contains information about the impact of this vulnerability, this will change with time. |
| `justification` | `Justification` | Justification provides the justification when the state of the assessment if NOT_AFFECTED. |
| `noteName` | `string` | The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the... |
| `relatedUris` | `array<RelatedUrl>` | Holds a list of references associated with this vulnerability item and assessment. |
| `remediations` | `array<Remediation>` | Specifies details on how to handle (and presumably, fix) a vulnerability. |
| `state` | `string` | Provides the state of this Vulnerability assessment. |
| `vulnerabilityId` | `string` | The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, G... |

### `VulnerabilityOccurrence`

An occurrence of a severity vulnerability on a resource.

| Property | Type | Description |
|----------|------|-------------|
| `cvssScore` | `number` | Output only. The CVSS score of this vulnerability. CVSS score is on a scale of 0 - 10 where 0 ind... |
| `cvssV2` | `CVSS` | The cvss v2 score for the vulnerability. |
| `cvssVersion` | `string` | Output only. CVSS version used to populate cvss_score and severity. |
| `cvssv3` | `CVSS` | The cvss v3 score for the vulnerability. |
| `effectiveSeverity` | `string` | The distro assigned severity for this vulnerability when it is available, otherwise this is the n... |
| `extraDetails` | `string` | Occurrence-specific extra details about the vulnerability. |
| `fixAvailable` | `boolean` | Output only. Whether at least one of the affected packages has a fix available. |
| `longDescription` | `string` | Output only. A detailed description of this vulnerability. |
| `packageIssue` | `array<PackageIssue>` | Required. The set of affected locations and their fixes (if available) within the associated reso... |
| `relatedUrls` | `array<RelatedUrl>` | Output only. URLs related to this vulnerability. |
| `risk` | `Risk` | Risk information about the vulnerability, such as CISA, EPSS, etc. |
| `severity` | `string` | Output only. The note provider assigned severity of this vulnerability. |
| `shortDescription` | `string` | Output only. A one sentence description of this vulnerability. |
| `type` | `string` | The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.). |
| `vexAssessment` | `VexAssessment` |  |

### `WindowsUpdate`

Windows Update represents the metadata about the update for the Windows operating system. The fields in this message come from the Windows Update API documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-wuapi-iupdate.

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<Category>` | The list of categories to which the update belongs. |
| `description` | `string` | The localized description of the update. |
| `identity` | `Identity` | Required - The unique identifier for the update. |
| `kbArticleIds` | `array<string>` | The Microsoft Knowledge Base article IDs that are associated with the update. |
| `lastPublishedTimestamp` | `string` | The last published timestamp of the update. |
| `supportUrl` | `string` | The hyperlink to the support information for the update. |
| `title` | `string` | The localized title of the update. |

