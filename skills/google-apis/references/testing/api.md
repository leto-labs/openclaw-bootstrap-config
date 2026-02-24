# Cloud Testing API - API Reference

**Version**: `v1` | **Methods**: 10 | **Schemas**: 88

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `testing.projects.testMatrices.create` | POST | `v1/projects/{projectId}/testMatrices` | Creates and runs a matrix of tests according to the given specifications. Unsupported environment... |
| `testing.projects.testMatrices.get` | GET | `v1/projects/{projectId}/testMatrices/{testMatrixId}` | Checks the status of a test matrix and the executions once they are created. The test matrix will... |
| `testing.projects.testMatrices.cancel` | POST | `v1/projects/{projectId}/testMatrices/{testMatrixId}:cancel` | Cancels unfinished test executions in a test matrix. This call returns immediately and cancellati... |
| `testing.projects.deviceSessions.create` | POST | `v1/{+parent}/deviceSessions` | POST /v1/projects/{project_id}/deviceSessions |
| `testing.projects.deviceSessions.list` | GET | `v1/{+parent}/deviceSessions` | GET /v1/projects/{project_id}/deviceSessions Lists device Sessions owned by the project user. |
| `testing.projects.deviceSessions.get` | GET | `v1/{+name}` | GET /v1/projects/{project_id}/deviceSessions/{device_session_id} Return a DeviceSession, which do... |
| `testing.projects.deviceSessions.cancel` | POST | `v1/{+name}:cancel` | POST /v1/projects/{project_id}/deviceSessions/{device_session_id}:cancel Changes the DeviceSessio... |
| `testing.projects.deviceSessions.patch` | PATCH | `v1/{+name}` | PATCH /v1/projects/{projectId}/deviceSessions/deviceSessionId}:updateDeviceSession Updates the cu... |
| `testing.applicationDetailService.getApkDetails` | POST | `v1/applicationDetailService/getApkDetails` | Gets the details of an Android application APK. |
| `testing.testEnvironmentCatalog.get` | GET | `v1/testEnvironmentCatalog/{environmentType}` | Gets the catalog of supported test environments. May return any of the following canonical error ... |

### `testing.projects.testMatrices.create`

**POST** `v1/projects/{projectId}/testMatrices`

Creates and runs a matrix of tests according to the given specifications. Unsupported environments will be returned in the state UNSUPPORTED. A test matrix is limited to use at most 2000 devices in parallel. The returned matrix will not yet contain the executions that will be created for this matrix. Execution creation happens later on and will require a call to GetTestMatrix. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed or if the matrix tries to use too many simultaneous devices.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The GCE project under which this job will run. |
| `requestId` | `string` | query | No | A string id used to detect duplicated requests. Ids are automatically scoped to a project, so users should ensure the... |

**Request body**: `TestMatrix`

**Response**: `TestMatrix`

```typescript
const res = await testing.testMatrices.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `testing.projects.testMatrices.get`

**GET** `v1/projects/{projectId}/testMatrices/{testMatrixId}`

Checks the status of a test matrix and the executions once they are created. The test matrix will contain the list of test executions to run if and only if the resultStorage.toolResultsExecution fields have been populated. Note: Flaky test executions may be added to the matrix at a later stage. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Test Matrix does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Cloud project that owns the test matrix. |
| `testMatrixId` | `string` | path | Yes | Unique test matrix id which was assigned by the service. |

**Response**: `TestMatrix`

```typescript
const res = await testing.testMatrices.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `testing.projects.testMatrices.cancel`

**POST** `v1/projects/{projectId}/testMatrices/{testMatrixId}:cancel`

Cancels unfinished test executions in a test matrix. This call returns immediately and cancellation proceeds asynchronously. If the matrix is already final, this operation will have no effect. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Test Matrix does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Cloud project that owns the test. |
| `testMatrixId` | `string` | path | Yes | Test matrix that will be canceled. |

**Response**: `CancelTestMatrixResponse`

```typescript
const res = await testing.testMatrices.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `testing.projects.deviceSessions.create`

**POST** `v1/{+parent}/deviceSessions`

POST /v1/projects/{project_id}/deviceSessions

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Compute Engine project under which this device will be allocated. "projects/{project_id}" |

**Request body**: `DeviceSession`

**Response**: `DeviceSession`

```typescript
const res = await testing.deviceSessions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `testing.projects.deviceSessions.list`

**GET** `v1/{+parent}/deviceSessions`

GET /v1/projects/{project_id}/deviceSessions Lists device Sessions owned by the project user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent to request, e.g. "projects/{project_id}" |
| `filter` | `string` | query | No | Optional. If specified, responses will be filtered by the given filter. Allowed fields are: session_state. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of DeviceSessions to return. |
| `pageToken` | `string` | query | No | Optional. A continuation token for paging. |

**Response**: `ListDeviceSessionsResponse`

```typescript
const res = await testing.deviceSessions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `testing.projects.deviceSessions.get`

**GET** `v1/{+name}`

GET /v1/projects/{project_id}/deviceSessions/{device_session_id} Return a DeviceSession, which documents the allocation status and whether the device is allocated. Clients making requests from this API must poll GetDeviceSession.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the DeviceSession, e.g. "projects/{project_id}/deviceSessions/{session_id}" |

**Response**: `DeviceSession`

```typescript
const res = await testing.deviceSessions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `testing.projects.deviceSessions.cancel`

**POST** `v1/{+name}:cancel`

POST /v1/projects/{project_id}/deviceSessions/{device_session_id}:cancel Changes the DeviceSession to state FINISHED and terminates all connections. Canceled sessions are not deleted and can be retrieved or listed by the user until they expire based on the 28 day deletion policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the DeviceSession, e.g. "projects/{project_id}/deviceSessions/{session_id}" |

**Request body**: `CancelDeviceSessionRequest`

**Response**: `Empty`

```typescript
const res = await testing.deviceSessions.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `testing.projects.deviceSessions.patch`

**PATCH** `v1/{+name}`

PATCH /v1/projects/{projectId}/deviceSessions/deviceSessionId}:updateDeviceSession Updates the current device session to the fields described by the update_mask.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Optional. Name of the DeviceSession, e.g. "projects/{project_id}/deviceSessions/{session_id}" |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `DeviceSession`

**Response**: `DeviceSession`

```typescript
const res = await testing.deviceSessions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `testing.applicationDetailService.getApkDetails`

**POST** `v1/applicationDetailService/getApkDetails`

Gets the details of an Android application APK.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bundleLocation.gcsPath` | `string` | query | No | A path to a file in Google Cloud Storage. Example: gs://build-app-1414623860166/app%40debug-unaligned.apk These paths... |

**Request body**: `FileReference`

**Response**: `GetApkDetailsResponse`

```typescript
const res = await testing.applicationDetailService.getApkDetails({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `testing.testEnvironmentCatalog.get`

**GET** `v1/testEnvironmentCatalog/{environmentType}`

Gets the catalog of supported test environments. May return any of the following canonical error codes: - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the environment type does not exist - INTERNAL - if an internal error occurred

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environmentType` | `string` | path | Yes | Required. The type of environment that should be listed. |
| `includeViewableModels` | `boolean` | query | No | Optional. Whether to include viewable only models in the response. This is only applicable for Android models. |
| `projectId` | `string` | query | No | For authorization, the cloud project requesting the TestEnvironmentCatalog. |

**Response**: `TestEnvironmentCatalog`

```typescript
const res = await testing.testEnvironmentCatalog.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

## Schemas

### `Account`

Identifies an account and how to log into it.

| Property | Type | Description |
|----------|------|-------------|
| `googleAuto` | `GoogleAuto` | An automatic google login account. |

### `AndroidDevice`

A single Android device.

| Property | Type | Description |
|----------|------|-------------|
| `androidModelId` | `string` | Required. The id of the Android device to be used. Use the TestEnvironmentDiscoveryService to get... |
| `androidVersionId` | `string` | Required. The id of the Android OS version to be used. Use the TestEnvironmentDiscoveryService to... |
| `locale` | `string` | Required. The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to... |
| `orientation` | `string` | Required. How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to ... |

### `AndroidDeviceCatalog`

The currently supported Android devices.

| Property | Type | Description |
|----------|------|-------------|
| `models` | `array<AndroidModel>` | The set of supported Android device models. |
| `runtimeConfiguration` | `AndroidRuntimeConfiguration` | The set of supported runtime configurations. |
| `versions` | `array<AndroidVersion>` | The set of supported Android OS versions. |

### `AndroidDeviceList`

A list of Android device configurations in which the test is to be executed.

| Property | Type | Description |
|----------|------|-------------|
| `androidDevices` | `array<AndroidDevice>` | Required. A list of Android devices. |

### `AndroidInstrumentationTest`

A test of an Android application that can control an Android component independently of its normal lifecycle. Android instrumentation tests run an application APK and test APK inside the same process on a virtual or physical AndroidDevice. They also specify a test runner class, such as com.google.GoogleTestRunner, which can vary on the specific instrumentation framework chosen. See for more information on types of Android tests.

| Property | Type | Description |
|----------|------|-------------|
| `appApk` | `FileReference` | The APK for the application under test. |
| `appBundle` | `AppBundle` | A multi-apk app bundle for the application under test. |
| `appPackageId` | `string` | The java package for the application under test. The default value is determined by examining the... |
| `orchestratorOption` | `string` | The option of whether running each test within its own invocation of instrumentation with Android... |
| `shardingOption` | `ShardingOption` | The option to run tests in multiple shards in parallel. |
| `testApk` | `FileReference` | Required. The APK containing the test code to be executed. |
| `testPackageId` | `string` | The java package for the test to be executed. The default value is determined by examining the ap... |
| `testRunnerClass` | `string` | The InstrumentationTestRunner class. The default value is determined by examining the application... |
| `testTargets` | `array<string>` | Each target must be fully qualified with the package name or class name, in one of these formats:... |

### `AndroidMatrix`

A set of Android device configuration permutations is defined by the the cross-product of the given axes. Internally, the given AndroidMatrix will be expanded into a set of AndroidDevices. Only supported permutations will be instantiated. Invalid permutations (e.g., incompatible models/versions) are ignored.

| Property | Type | Description |
|----------|------|-------------|
| `androidModelIds` | `array<string>` | Required. The ids of the set of Android device to be used. Use the TestEnvironmentDiscoveryServic... |
| `androidVersionIds` | `array<string>` | Required. The ids of the set of Android OS version to be used. Use the TestEnvironmentDiscoverySe... |
| `locales` | `array<string>` | Required. The set of locales the test device will enable for testing. Use the TestEnvironmentDisc... |
| `orientations` | `array<string>` | Required. The set of orientations to test with. Use the TestEnvironmentDiscoveryService to get su... |

### `AndroidModel`

A description of an Android device tests may be run on.

| Property | Type | Description |
|----------|------|-------------|
| `accessDeniedReasons` | `array<string>` | Reasons for access denial. This model is accessible if this list is empty, otherwise the model is... |
| `brand` | `string` | The company that this device is branded with. Example: "Google", "Samsung". |
| `codename` | `string` | The name of the industrial design. This corresponds to android.os.Build.DEVICE. |
| `form` | `string` | Whether this device is virtual or physical. |
| `formFactor` | `string` | Whether this device is a phone, tablet, wearable, etc. |
| `id` | `string` | The unique opaque id for this model. Use this for invoking the TestExecutionService. |
| `labInfo` | `LabInfo` | Output only. Lab info of this device. |
| `lowFpsVideoRecording` | `boolean` | True if and only if tests with this model are recorded by stitching together screenshots. See use... |
| `manufacturer` | `string` | The manufacturer of this device. |
| `name` | `string` | The human-readable marketing name for this device model. Examples: "Nexus 5", "Galaxy S5". |
| `perVersionInfo` | `array<PerAndroidVersionInfo>` | Version-specific information of an Android model. |
| `screenDensity` | `integer` | Screen density in DPI. This corresponds to ro.sf.lcd_density |
| `screenX` | `integer` | Screen size in the horizontal (X) dimension measured in pixels. |
| `screenY` | `integer` | Screen size in the vertical (Y) dimension measured in pixels. |
| `supportedAbis` | `array<string>` | The list of supported ABIs for this device. This corresponds to either android.os.Build.SUPPORTED... |
| `supportedVersionIds` | `array<string>` | The set of Android versions this device supports. |
| `tags` | `array<string>` | Tags for this dimension. Examples: "default", "preview", "deprecated". |
| `thumbnailUrl` | `string` | URL of a thumbnail image (photo) of the device. |

### `AndroidRoboTest`

A test of an android application that explores the application on a virtual or physical Android Device, finding culprits and crashes as it goes.

| Property | Type | Description |
|----------|------|-------------|
| `appApk` | `FileReference` | The APK for the application under test. |
| `appBundle` | `AppBundle` | A multi-apk app bundle for the application under test. |
| `appInitialActivity` | `string` | The initial activity that should be used to start the app. |
| `appPackageId` | `string` | The java package for the application under test. The default value is determined by examining the... |
| `maxDepth` | `integer` | The max depth of the traversal stack Robo can explore. Needs to be at least 2 to make Robo explor... |
| `maxSteps` | `integer` | The max number of steps Robo can execute. Default is no limit. |
| `roboDirectives` | `array<RoboDirective>` | A set of directives Robo should apply during the crawl. This allows users to customize the crawl.... |
| `roboMode` | `string` | The mode in which Robo should run. Most clients should allow the server to populate this field au... |
| `roboScript` | `FileReference` | A JSON file with a sequence of actions Robo should perform as a prologue for the crawl. |
| `startingIntents` | `array<RoboStartingIntent>` | The intents used to launch the app for the crawl. If none are provided, then the main launcher ac... |

### `AndroidRuntimeConfiguration`

Android configuration that can be selected at the time a test is run.

| Property | Type | Description |
|----------|------|-------------|
| `locales` | `array<Locale>` | The set of available locales. |
| `orientations` | `array<Orientation>` | The set of available orientations. |

### `AndroidTestLoop`

A test of an Android Application with a Test Loop. The intent \ will be implicitly added, since Games is the only user of this api, for the time being.

| Property | Type | Description |
|----------|------|-------------|
| `appApk` | `FileReference` | The APK for the application under test. |
| `appBundle` | `AppBundle` | A multi-apk app bundle for the application under test. |
| `appPackageId` | `string` | The java package for the application under test. The default is determined by examining the appli... |
| `scenarioLabels` | `array<string>` | The list of scenario labels that should be run during the test. The scenario labels should map to... |
| `scenarios` | `array<integer>` | The list of scenarios that should be run during the test. The default is all test loops, derived ... |

### `AndroidVersion`

A version of the Android OS.

| Property | Type | Description |
|----------|------|-------------|
| `apiLevel` | `integer` | The API level for this Android version. Examples: 18, 19. |
| `codeName` | `string` | The code name for this Android version. Examples: "JellyBean", "KitKat". |
| `distribution` | `Distribution` | Market share for this version. |
| `id` | `string` | An opaque id for this Android version. Use this id to invoke the TestExecutionService. |
| `releaseDate` | `Date` | The date this Android version became available in the market. |
| `tags` | `array<string>` | Tags for this dimension. Examples: "default", "preview", "deprecated". |
| `versionString` | `string` | A string representing this version of the Android OS. Examples: "4.3", "4.4". |

### `Apk`

An Android package file to install.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `FileReference` | The path to an APK to be installed on the device before the test begins. |
| `packageName` | `string` | The java package for the APK to be installed. Value is determined by examining the application's ... |

### `ApkDetail`

Android application details based on application manifest and archive contents.

| Property | Type | Description |
|----------|------|-------------|
| `apkManifest` | `ApkManifest` |  |

### `ApkManifest`

An Android app manifest. See http://developer.android.com/guide/topics/manifest/manifest-intro.html

| Property | Type | Description |
|----------|------|-------------|
| `applicationLabel` | `string` | User-readable name for the application. |
| `intentFilters` | `array<IntentFilter>` |  |
| `maxSdkVersion` | `integer` | Maximum API level on which the application is designed to run. |
| `metadata` | `array<Metadata>` | Meta-data tags defined in the manifest. |
| `minSdkVersion` | `integer` | Minimum API level required for the application to run. |
| `packageName` | `string` | Full Java-style package name for this application, e.g. "com.example.foo". |
| `services` | `array<Service>` | Services contained in the tag. |
| `targetSdkVersion` | `integer` | Specifies the API Level on which the application is designed to run. |
| `usesFeature` | `array<UsesFeature>` | Feature usage tags defined in the manifest. |
| `usesPermission` | `array<string>` |  |
| `usesPermissionTags` | `array<UsesPermissionTag>` | Permissions declared to be used by the application |
| `versionCode` | `string` | Version number used internally by the app. |
| `versionName` | `string` | Version number shown to users. |

### `ApkSplits`

A single dynamic feature apk.

| Property | Type | Description |
|----------|------|-------------|
| `bundleSplits` | `array<FileReference>` | A list of .apk files generated by bundletool to install to the device under test as a single andr... |

### `AppBundle`

An Android App Bundle file format, containing a BundleConfig.pb file, a base module directory, zero or more dynamic feature module directories. See https://developer.android.com/guide/app-bundle/build for guidance on building App Bundles.

| Property | Type | Description |
|----------|------|-------------|
| `apks` | `ApkSplits` | .apk files generated by bundletool to install as a single android app. |
| `bundleLocation` | `FileReference` | .aab file representing the app bundle under test. |

### `CancelDeviceSessionRequest`

The request object for cancelling a Device Session.

### `CancelTestMatrixResponse`

Response containing the current state of the specified test matrix.

| Property | Type | Description |
|----------|------|-------------|
| `testState` | `string` | The current rolled-up state of the test matrix. If this state is already final, then the cancelat... |

### `ClientInfo`

Information about the client which invoked the test.

| Property | Type | Description |
|----------|------|-------------|
| `clientInfoDetails` | `array<ClientInfoDetail>` | The list of detailed information about client. |
| `name` | `string` | Required. Client name, such as gcloud. |

### `ClientInfoDetail`

Key-value pair of detailed information about the client which invoked the test. Examples: {'Version', '1.0'}, {'Release Track', 'BETA'}.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Required. The key of detailed client information. |
| `value` | `string` | Required. The value of detailed client information. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DeviceFile`

A single device file description.

| Property | Type | Description |
|----------|------|-------------|
| `obbFile` | `ObbFile` | A reference to an opaque binary blob file. |
| `regularFile` | `RegularFile` | A reference to a regular file. |

### `DeviceIpBlock`

A single device IP block

| Property | Type | Description |
|----------|------|-------------|
| `addedDate` | `Date` | The date this block was added to Firebase Test Lab |
| `block` | `string` | An IP address block in CIDR notation eg: 34.68.194.64/29 |
| `form` | `string` | Whether this block is used by physical or virtual devices |

### `DeviceIpBlockCatalog`

List of IP blocks used by the Firebase Test Lab

| Property | Type | Description |
|----------|------|-------------|
| `ipBlocks` | `array<DeviceIpBlock>` | The device IP blocks used by Firebase Test Lab |

### `DeviceSession`

Protobuf message describing the device message, used from several RPCs.

| Property | Type | Description |
|----------|------|-------------|
| `activeStartTime` | `string` | Output only. The timestamp that the session first became ACTIVE. |
| `androidDevice` | `AndroidDevice` | Required. The requested device |
| `createTime` | `string` | Output only. The time that the Session was created. |
| `displayName` | `string` | Output only. The title of the DeviceSession to be presented in the UI. |
| `expireTime` | `string` | Optional. If the device is still in use at this time, any connections will be ended and the Sessi... |
| `inactivityTimeout` | `string` | Output only. The interval of time that this device must be interacted with before it transitions ... |
| `name` | `string` | Optional. Name of the DeviceSession, e.g. "projects/{project_id}/deviceSessions/{session_id}" |
| `state` | `string` | Output only. Current state of the DeviceSession. |
| `stateHistories` | `array<SessionStateEvent>` | Output only. The historical state transitions of the session_state message including the current ... |
| `ttl` | `string` | Optional. The amount of time that a device will be initially allocated for. This can eventually b... |

### `DirectAccessVersionInfo`

Denotes whether Direct Access is supported, and by which client versions. DirectAccessService is currently available as a preview to select developers. You can register today on behalf of you and your team at https://developer.android.com/studio/preview/android-device-streaming

| Property | Type | Description |
|----------|------|-------------|
| `directAccessSupported` | `boolean` | Whether direct access is supported at all. Clients are expected to filter down the device list to... |
| `minimumAndroidStudioVersion` | `string` | Output only. Indicates client-device compatibility, where a device is known to work only with cer... |

### `Distribution`

Data about the relative number of devices running a given configuration of the Android platform.

| Property | Type | Description |
|----------|------|-------------|
| `marketShare` | `number` | Output only. The estimated fraction (0-1) of the total market with this configuration. |
| `measurementTime` | `string` | Output only. The time this distribution was measured. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Environment`

The environment in which the test is run.

| Property | Type | Description |
|----------|------|-------------|
| `androidDevice` | `AndroidDevice` | An Android device which must be used with an Android test. |
| `iosDevice` | `IosDevice` | An iOS device which must be used with an iOS test. |

### `EnvironmentMatrix`

The matrix of environments in which the test is to be executed.

| Property | Type | Description |
|----------|------|-------------|
| `androidDeviceList` | `AndroidDeviceList` | A list of Android devices; the test will be run only on the specified devices. |
| `androidMatrix` | `AndroidMatrix` | A matrix of Android devices. |
| `iosDeviceList` | `IosDeviceList` | A list of iOS devices. |

### `EnvironmentVariable`

A key-value pair passed as an environment variable to the test.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key for the environment variable. |
| `value` | `string` | Value for the environment variable. |

### `FileReference`

A reference to a file, used for user inputs.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPath` | `string` | A path to a file in Google Cloud Storage. Example: gs://build-app-1414623860166/app%40debug-unali... |

### `GetApkDetailsResponse`

Response containing the details of the specified Android application.

| Property | Type | Description |
|----------|------|-------------|
| `apkDetail` | `ApkDetail` | Details of the Android App. |

### `GoogleAuto`

Enables automatic Google account login. If set, the service automatically generates a Google test account and adds it to the device, before executing the test. Note that test accounts might be reused. Many applications show their full set of functionalities when an account is present on the device. Logging into the device with these generated accounts allows testing more functionalities.

### `GoogleCloudStorage`

A storage location within Google cloud storage (GCS).

| Property | Type | Description |
|----------|------|-------------|
| `gcsPath` | `string` | Required. The path to a directory in GCS that will eventually contain the results for this test. ... |

### `IntentFilter`

The section of an tag. https://developer.android.com/guide/topics/manifest/intent-filter-element.html

| Property | Type | Description |
|----------|------|-------------|
| `actionNames` | `array<string>` | The android:name value of the tag. |
| `categoryNames` | `array<string>` | The android:name value of the tag. |
| `mimeType` | `string` | The android:mimeType value of the tag. |

### `IosDevice`

A single iOS device.

| Property | Type | Description |
|----------|------|-------------|
| `iosModelId` | `string` | Required. The id of the iOS device to be used. Use the TestEnvironmentDiscoveryService to get sup... |
| `iosVersionId` | `string` | Required. The id of the iOS major software version to be used. Use the TestEnvironmentDiscoverySe... |
| `locale` | `string` | Required. The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to... |
| `orientation` | `string` | Required. How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to ... |

### `IosDeviceCatalog`

The currently supported iOS devices.

| Property | Type | Description |
|----------|------|-------------|
| `models` | `array<IosModel>` | The set of supported iOS device models. |
| `runtimeConfiguration` | `IosRuntimeConfiguration` | The set of supported runtime configurations. |
| `versions` | `array<IosVersion>` | The set of supported iOS software versions. |
| `xcodeVersions` | `array<XcodeVersion>` | The set of supported Xcode versions. |

### `IosDeviceFile`

A file or directory to install on the device before the test starts.

| Property | Type | Description |
|----------|------|-------------|
| `bundleId` | `string` | The bundle id of the app where this file lives. iOS apps sandbox their own filesystem, so app fil... |
| `content` | `FileReference` | The source file |
| `devicePath` | `string` | Location of the file on the device, inside the app's sandboxed filesystem |

### `IosDeviceList`

A list of iOS device configurations in which the test is to be executed.

| Property | Type | Description |
|----------|------|-------------|
| `iosDevices` | `array<IosDevice>` | Required. A list of iOS devices. |

### `IosModel`

A description of an iOS device tests may be run on.

| Property | Type | Description |
|----------|------|-------------|
| `deviceCapabilities` | `array<string>` | Device capabilities. Copied from https://developer.apple.com/library/archive/documentation/Device... |
| `formFactor` | `string` | Whether this device is a phone, tablet, wearable, etc. |
| `id` | `string` | The unique opaque id for this model. Use this for invoking the TestExecutionService. |
| `name` | `string` | The human-readable name for this device model. Examples: "iPhone 4s", "iPad Mini 2". |
| `perVersionInfo` | `array<PerIosVersionInfo>` | Version-specific information of an iOS model. |
| `screenDensity` | `integer` | Screen density in DPI. |
| `screenX` | `integer` | Screen size in the horizontal (X) dimension measured in pixels. |
| `screenY` | `integer` | Screen size in the vertical (Y) dimension measured in pixels. |
| `supportedVersionIds` | `array<string>` | The set of iOS major software versions this device supports. |
| `tags` | `array<string>` | Tags for this dimension. Examples: "default", "preview", "deprecated". |

### `IosRoboTest`

A test that explores an iOS application on an iOS device.

| Property | Type | Description |
|----------|------|-------------|
| `appBundleId` | `string` | The bundle ID for the app-under-test. This is determined by examining the application's "Info.pli... |
| `appIpa` | `FileReference` | Required. The ipa stored at this file should be used to run the test. |
| `roboScript` | `FileReference` | An optional Roboscript to customize the crawl. See https://firebase.google.com/docs/test-lab/andr... |

### `IosRuntimeConfiguration`

iOS configuration that can be selected at the time a test is run.

| Property | Type | Description |
|----------|------|-------------|
| `locales` | `array<Locale>` | The set of available locales. |
| `orientations` | `array<Orientation>` | The set of available orientations. |

### `IosTestLoop`

A test of an iOS application that implements one or more game loop scenarios. This test type accepts an archived application (.ipa file) and a list of integer scenarios that will be executed on the app sequentially.

| Property | Type | Description |
|----------|------|-------------|
| `appBundleId` | `string` | Output only. The bundle id for the application under test. |
| `appIpa` | `FileReference` | Required. The .ipa of the application to test. |
| `scenarios` | `array<integer>` | The list of scenarios that should be run during the test. Defaults to the single scenario 0 if un... |

### `IosTestSetup`

A description of how to set up an iOS device prior to running the test.

| Property | Type | Description |
|----------|------|-------------|
| `additionalIpas` | `array<FileReference>` | iOS apps to install in addition to those being directly tested. |
| `networkProfile` | `string` | The network traffic profile used for running the test. Available network profiles can be queried ... |
| `pullDirectories` | `array<IosDeviceFile>` | List of directories on the device to upload to Cloud Storage at the end of the test. Directories ... |
| `pushFiles` | `array<IosDeviceFile>` | List of files to push to the device before starting the test. |

### `IosVersion`

An iOS version.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | An opaque id for this iOS version. Use this id to invoke the TestExecutionService. |
| `majorVersion` | `integer` | An integer representing the major iOS version. Examples: "8", "9". |
| `minorVersion` | `integer` | An integer representing the minor iOS version. Examples: "1", "2". |
| `supportedXcodeVersionIds` | `array<string>` | The available Xcode versions for this version. |
| `tags` | `array<string>` | Tags for this dimension. Examples: "default", "preview", "deprecated". |

### `IosXcTest`

A test of an iOS application that uses the XCTest framework. Xcode supports the option to "build for testing", which generates an .xctestrun file that contains a test specification (arguments, test methods, etc). This test type accepts a zip file containing the .xctestrun file and the corresponding contents of the Build/Products directory that contains all the binaries needed to run the tests.

| Property | Type | Description |
|----------|------|-------------|
| `appBundleId` | `string` | Output only. The bundle id for the application under test. |
| `testSpecialEntitlements` | `boolean` | The option to test special app entitlements. Setting this would re-sign the app having special en... |
| `testsZip` | `FileReference` | Required. The .zip containing the .xctestrun file and the contents of the DerivedData/Build/Produ... |
| `xcodeVersion` | `string` | The Xcode version that should be used for the test. Use the TestEnvironmentDiscoveryService to ge... |
| `xctestrun` | `FileReference` | An .xctestrun file that will override the .xctestrun file in the tests zip. Because the .xctestru... |

### `LabInfo`

Lab specific information for a device.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Lab name where the device is hosted. If empty, the device is hosted in a Google owned lab. |
| `regionCode` | `string` | The Unicode country/region code (CLDR) of the lab where the device is hosted. E.g. "US" for Unite... |

### `LauncherActivityIntent`

Specifies an intent that starts the main launcher activity.

### `ListDeviceSessionsResponse`

A list of device sessions.

| Property | Type | Description |
|----------|------|-------------|
| `deviceSessions` | `array<DeviceSession>` | The sessions matching the specified filter in the given cloud project. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `Locale`

A location/region designation for language.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The id for this locale. Example: "en_US". |
| `name` | `string` | A human-friendly name for this language/locale. Example: "English". |
| `region` | `string` | A human-friendly string representing the region for this locale. Example: "United States". Not pr... |
| `tags` | `array<string>` | Tags for this dimension. Example: "default". |

### `ManualSharding`

Shards test cases into the specified groups of packages, classes, and/or methods. With manual sharding enabled, specifying test targets via environment_variables or in InstrumentationTest is invalid.

| Property | Type | Description |
|----------|------|-------------|
| `testTargetsForShard` | `array<TestTargetsForShard>` | Required. Group of packages, classes, and/or test methods to be run for each manually-created sha... |

### `MatrixErrorDetail`

Describes a single error or issue with a matrix.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Output only. A human-readable message about how the error in the TestMatrix. Expands on the `reas... |
| `reason` | `string` | Output only. The reason for the error. This is a constant value in UPPER_SNAKE_CASE that identifi... |

### `Metadata`

A tag within a manifest. https://developer.android.com/guide/topics/manifest/meta-data-element.html

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The android:name value |
| `value` | `string` | The android:value value |

### `NetworkConfiguration`

| Property | Type | Description |
|----------|------|-------------|
| `downRule` | `TrafficRule` | The emulation rule applying to the download traffic. |
| `id` | `string` | The unique opaque id for this network traffic configuration. |
| `upRule` | `TrafficRule` | The emulation rule applying to the upload traffic. |

### `NetworkConfigurationCatalog`

| Property | Type | Description |
|----------|------|-------------|
| `configurations` | `array<NetworkConfiguration>` |  |

### `NoActivityIntent`

Skips the starting activity

### `ObbFile`

An opaque binary blob file to install on the device before the test starts.

| Property | Type | Description |
|----------|------|-------------|
| `obb` | `FileReference` | Required. Opaque Binary Blob (OBB) file(s) to install on the device. |
| `obbFileName` | `string` | Required. OBB file name which must conform to the format as specified by Android e.g. [main|patch... |

### `Orientation`

Screen orientation of the device.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The id for this orientation. Example: "portrait". |
| `name` | `string` | A human-friendly name for this orientation. Example: "portrait". |
| `tags` | `array<string>` | Tags for this dimension. Example: "default". |

### `PerAndroidVersionInfo`

A version-specific information of an Android model.

| Property | Type | Description |
|----------|------|-------------|
| `deviceCapacity` | `string` | The number of online devices for an Android version. |
| `directAccessVersionInfo` | `DirectAccessVersionInfo` | Output only. Identifies supported clients for DirectAccess for this Android version. |
| `interactiveDeviceAvailabilityEstimate` | `string` | Output only. The estimated wait time for a single interactive device session using Direct Access. |
| `versionId` | `string` | An Android version. |

### `PerIosVersionInfo`

A version-specific information of an iOS model.

| Property | Type | Description |
|----------|------|-------------|
| `deviceCapacity` | `string` | The number of online devices for an iOS version. |
| `versionId` | `string` | An iOS version. |

### `ProvidedSoftwareCatalog`

The currently provided software environment on the devices under test.

| Property | Type | Description |
|----------|------|-------------|
| `androidxOrchestratorVersion` | `string` | A string representing the current version of AndroidX Test Orchestrator that is used in the envir... |
| `orchestratorVersion` | `string` | Deprecated: Use AndroidX Test Orchestrator going forward. A string representing the current versi... |

### `RegularFile`

A file or directory to install on the device before the test starts.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `FileReference` | Required. The source file. |
| `devicePath` | `string` | Required. Where to put the content on the device. Must be an absolute, allowlisted path. If the f... |

### `ResultStorage`

Locations where the results of running the test are stored.

| Property | Type | Description |
|----------|------|-------------|
| `googleCloudStorage` | `GoogleCloudStorage` | Required. |
| `resultsUrl` | `string` | Output only. URL to the results in the Firebase Web Console. |
| `toolResultsExecution` | `ToolResultsExecution` | Output only. The tool results execution that results are written to. |
| `toolResultsHistory` | `ToolResultsHistory` | The tool results history that contains the tool results execution that results are written to. If... |

### `RoboDirective`

Directs Robo to interact with a specific UI element if it is encountered during the crawl. Currently, Robo can perform text entry or element click.

| Property | Type | Description |
|----------|------|-------------|
| `actionType` | `string` | Required. The type of action that Robo should perform on the specified element. |
| `inputText` | `string` | The text that Robo is directed to set. If left empty, the directive will be treated as a CLICK on... |
| `resourceName` | `string` | Required. The android resource name of the target UI element. For example, in Java: R.string.foo ... |

### `RoboStartingIntent`

Message for specifying the start activities to crawl.

| Property | Type | Description |
|----------|------|-------------|
| `launcherActivity` | `LauncherActivityIntent` | An intent that starts the main launcher activity. |
| `noActivity` | `NoActivityIntent` | Skips the starting activity |
| `startActivity` | `StartActivityIntent` | An intent that starts an activity with specific details. |
| `timeout` | `string` | Timeout in seconds for each intent. |

### `Service`

The section of an tag. https://developer.android.com/guide/topics/manifest/service-element

| Property | Type | Description |
|----------|------|-------------|
| `intentFilter` | `array<IntentFilter>` | Intent filters in the service |
| `name` | `string` | The android:name value |

### `SessionStateEvent`

A message encapsulating a series of Session states and the time that the DeviceSession first entered those states.

| Property | Type | Description |
|----------|------|-------------|
| `eventTime` | `string` | Output only. The time that the session_state first encountered that state. |
| `sessionState` | `string` | Output only. The session_state tracked by this event |
| `stateMessage` | `string` | Output only. A human-readable message to explain the state. |

### `Shard`

Output only. Details about the shard.

| Property | Type | Description |
|----------|------|-------------|
| `estimatedShardDuration` | `string` | Output only. The estimated shard duration based on previous test case timing records, if available. |
| `numShards` | `integer` | Output only. The total number of shards. |
| `shardIndex` | `integer` | Output only. The index of the shard among all the shards. |
| `testTargetsForShard` | `TestTargetsForShard` | Output only. Test targets for each shard. Only set for manual sharding. |

### `ShardingOption`

Options for enabling sharding.

| Property | Type | Description |
|----------|------|-------------|
| `manualSharding` | `ManualSharding` | Shards test cases into the specified groups of packages, classes, and/or methods. |
| `smartSharding` | `SmartSharding` | Shards test based on previous test case timing records. |
| `uniformSharding` | `UniformSharding` | Uniformly shards test cases given a total number of shards. |

### `SmartSharding`

Shards test based on previous test case timing records.

| Property | Type | Description |
|----------|------|-------------|
| `targetedShardDuration` | `string` | The amount of time tests within a shard should take. Default: 300 seconds (5 minutes). The minimu... |

### `StartActivityIntent`

A starting intent specified by an action, uri, and categories.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Action name. Required for START_ACTIVITY. |
| `categories` | `array<string>` | Intent categories to set on the intent. |
| `uri` | `string` | URI for the action. |

### `SystraceSetup`

| Property | Type | Description |
|----------|------|-------------|
| `durationSeconds` | `integer` | Systrace duration in seconds. Should be between 1 and 30 seconds. 0 disables systrace. |

### `TestDetails`

Additional details about the progress of the running test.

| Property | Type | Description |
|----------|------|-------------|
| `errorMessage` | `string` | Output only. If the TestState is ERROR, then this string will contain human-readable details abou... |
| `progressMessages` | `array<string>` | Output only. Human-readable, detailed descriptions of the test's progress. For example: "Provisio... |

### `TestEnvironmentCatalog`

A description of a test environment.

| Property | Type | Description |
|----------|------|-------------|
| `androidDeviceCatalog` | `AndroidDeviceCatalog` | Supported Android devices. |
| `deviceIpBlockCatalog` | `DeviceIpBlockCatalog` | The IP blocks used by devices in the test environment. |
| `iosDeviceCatalog` | `IosDeviceCatalog` | Supported iOS devices. |
| `networkConfigurationCatalog` | `NetworkConfigurationCatalog` | Supported network configurations. |
| `softwareCatalog` | `ProvidedSoftwareCatalog` | The software test environment provided by TestExecutionService. |

### `TestExecution`

A single test executed in a single environment.

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `Environment` | Output only. How the host machine(s) are configured. |
| `id` | `string` | Output only. Unique id set by the service. |
| `matrixId` | `string` | Output only. Id of the containing TestMatrix. |
| `projectId` | `string` | Output only. The cloud project that owns the test execution. |
| `shard` | `Shard` | Output only. Details about the shard. |
| `state` | `string` | Output only. Indicates the current progress of the test execution (e.g., FINISHED). |
| `testDetails` | `TestDetails` | Output only. Additional details about the running test. |
| `testSpecification` | `TestSpecification` | Output only. How to run the test. |
| `timestamp` | `string` | Output only. The time this test execution was initially created. |
| `toolResultsStep` | `ToolResultsStep` | Output only. Where the results for this execution are written. |

### `TestMatrix`

TestMatrix captures all details about a test. It contains the environment configuration, test specification, test executions and overall state and outcome.

| Property | Type | Description |
|----------|------|-------------|
| `clientInfo` | `ClientInfo` | Information about the client which invoked the test. |
| `environmentMatrix` | `EnvironmentMatrix` | Required. The devices the tests are being executed on. |
| `extendedInvalidMatrixDetails` | `array<MatrixErrorDetail>` | Output only. Details about why a matrix was deemed invalid. If multiple checks can be safely perf... |
| `failFast` | `boolean` | If true, only a single attempt at most will be made to run each execution/shard in the matrix. Fl... |
| `flakyTestAttempts` | `integer` | The number of times a TestExecution should be re-attempted if one or more of its test cases fail ... |
| `invalidMatrixDetails` | `string` | Output only. Describes why the matrix is considered invalid. Only useful for matrices in the INVA... |
| `outcomeSummary` | `string` | Output Only. The overall outcome of the test. Only set when the test matrix state is FINISHED. |
| `projectId` | `string` | The cloud project that owns the test matrix. |
| `resultStorage` | `ResultStorage` | Required. Where the results for the matrix are written. |
| `state` | `string` | Output only. Indicates the current progress of the test matrix. |
| `testExecutions` | `array<TestExecution>` | Output only. The list of test executions that the service creates for this matrix. |
| `testMatrixId` | `string` | Output only. Unique id set by the service. |
| `testSpecification` | `TestSpecification` | Required. How to run the test. |
| `timestamp` | `string` | Output only. The time this test matrix was initially created. |

### `TestSetup`

A description of how to set up the Android device prior to running the test.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `Account` | The device will be logged in on this account for the duration of the test. |
| `additionalApks` | `array<Apk>` | APKs to install in addition to those being directly tested. These will be installed after the app... |
| `directoriesToPull` | `array<string>` | List of directories on the device to upload to GCS at the end of the test; they must be absolute ... |
| `dontAutograntPermissions` | `boolean` | Whether to prevent all runtime permissions to be granted at app install |
| `environmentVariables` | `array<EnvironmentVariable>` | Environment variables to set for the test (only applicable for instrumentation tests). |
| `filesToPush` | `array<DeviceFile>` | List of files to push to the device before starting the test. |
| `initialSetupApks` | `array<Apk>` | Optional. Initial setup APKs to install before the app under test is installed. Limited to a comb... |
| `networkProfile` | `string` | The network traffic profile used for running the test. Available network profiles can be queried ... |
| `systrace` | `SystraceSetup` | Systrace configuration for the run. Deprecated: Systrace used Python 2 which was sunsetted on 202... |

### `TestSpecification`

A description of how to run the test.

| Property | Type | Description |
|----------|------|-------------|
| `androidInstrumentationTest` | `AndroidInstrumentationTest` | An Android instrumentation test. |
| `androidRoboTest` | `AndroidRoboTest` | An Android robo test. |
| `androidTestLoop` | `AndroidTestLoop` | An Android Application with a Test Loop. |
| `disablePerformanceMetrics` | `boolean` | Disables performance metrics recording. May reduce test latency. |
| `disableVideoRecording` | `boolean` | Disables video recording. May reduce test latency. |
| `iosRoboTest` | `IosRoboTest` | An iOS Robo test. |
| `iosTestLoop` | `IosTestLoop` | An iOS application with a test loop. |
| `iosTestSetup` | `IosTestSetup` | Test setup requirements for iOS. |
| `iosXcTest` | `IosXcTest` | An iOS XCTest, via an .xctestrun file. |
| `testSetup` | `TestSetup` | Test setup requirements for Android e.g. files to install, bootstrap scripts. |
| `testTimeout` | `string` | Max time a test execution is allowed to run before it is automatically cancelled. The default val... |

### `TestTargetsForShard`

Test targets for a shard.

| Property | Type | Description |
|----------|------|-------------|
| `testTargets` | `array<string>` | Group of packages, classes, and/or test methods to be run for each shard. The targets need to be ... |

### `ToolResultsExecution`

Represents a tool results execution resource. This has the results of a TestMatrix.

| Property | Type | Description |
|----------|------|-------------|
| `executionId` | `string` | Output only. A tool results execution ID. |
| `historyId` | `string` | Output only. A tool results history ID. |
| `projectId` | `string` | Output only. The cloud project that owns the tool results execution. |

### `ToolResultsHistory`

Represents a tool results history resource.

| Property | Type | Description |
|----------|------|-------------|
| `historyId` | `string` | Required. A tool results history ID. |
| `projectId` | `string` | Required. The cloud project that owns the tool results history. |

### `ToolResultsStep`

Represents a tool results step resource. This has the results of a TestExecution.

| Property | Type | Description |
|----------|------|-------------|
| `executionId` | `string` | Output only. A tool results execution ID. |
| `historyId` | `string` | Output only. A tool results history ID. |
| `projectId` | `string` | Output only. The cloud project that owns the tool results step. |
| `stepId` | `string` | Output only. A tool results step ID. |

### `TrafficRule`

Network emulation parameters.

| Property | Type | Description |
|----------|------|-------------|
| `bandwidth` | `number` | Bandwidth in kbits/second. |
| `burst` | `number` | Burst size in kbits. |
| `delay` | `string` | Packet delay, must be >= 0. |
| `packetDuplicationRatio` | `number` | Packet duplication ratio (0.0 - 1.0). |
| `packetLossRatio` | `number` | Packet loss ratio (0.0 - 1.0). |

### `UniformSharding`

Uniformly shards test cases given a total number of shards. For instrumentation tests, it will be translated to "-e numShard" and "-e shardIndex" AndroidJUnitRunner arguments. With uniform sharding enabled, specifying either of these sharding arguments via `environment_variables` is invalid. Based on the sharding mechanism AndroidJUnitRunner uses, there is no guarantee that test cases will be distributed uniformly across all shards.

| Property | Type | Description |
|----------|------|-------------|
| `numShards` | `integer` | Required. The total number of shards to create. This must always be a positive number that is no ... |

### `UsesFeature`

A tag within a manifest. https://developer.android.com/guide/topics/manifest/uses-feature-element.html

| Property | Type | Description |
|----------|------|-------------|
| `isRequired` | `boolean` | The android:required value |
| `name` | `string` | The android:name value |

### `UsesPermissionTag`

The tag within a manifest. https://developer.android.com/guide/topics/manifest/uses-permission-element.html

| Property | Type | Description |
|----------|------|-------------|
| `maxSdkVersion` | `integer` | The android:name value |
| `name` | `string` | The android:name value |

### `XcodeVersion`

An Xcode version that an iOS version is compatible with.

| Property | Type | Description |
|----------|------|-------------|
| `tags` | `array<string>` | Tags for this Xcode version. Example: "default". |
| `version` | `string` | The id for this version. Example: "9.2". |

