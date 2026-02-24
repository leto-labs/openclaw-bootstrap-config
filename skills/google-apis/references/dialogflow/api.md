# Dialogflow API - API Reference

**Version**: `v3` | **Methods**: 158 | **Schemas**: 655

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `dialogflow.projects.operations.cancel` | POST | `v3/{+name}:cancel` |  |
| `dialogflow.projects.operations.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.operations.list` | GET | `v3/{+name}/operations` |  |
| `dialogflow.projects.locations.list` | GET | `v3/{+name}/locations` |  |
| `dialogflow.projects.locations.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.securitySettings.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.securitySettings.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.securitySettings.create` | POST | `v3/{+parent}/securitySettings` |  |
| `dialogflow.projects.locations.securitySettings.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.securitySettings.list` | GET | `v3/{+parent}/securitySettings` |  |
| `dialogflow.projects.locations.agents.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.getGenerativeSettings` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.create` | POST | `v3/{+parent}/agents` |  |
| `dialogflow.projects.locations.agents.validate` | POST | `v3/{+name}:validate` |  |
| `dialogflow.projects.locations.agents.getValidationResult` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.updateGenerativeSettings` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.restore` | POST | `v3/{+name}:restore` |  |
| `dialogflow.projects.locations.agents.list` | GET | `v3/{+parent}/agents` |  |
| `dialogflow.projects.locations.agents.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.export` | POST | `v3/{+name}:export` |  |
| `dialogflow.projects.locations.agents.sessions.serverStreamingDetectIntent` | POST | `v3/{+session}:serverStreamingDetectIntent` |  |
| `dialogflow.projects.locations.agents.sessions.matchIntent` | POST | `v3/{+session}:matchIntent` |  |
| `dialogflow.projects.locations.agents.sessions.detectIntent` | POST | `v3/{+session}:detectIntent` |  |
| `dialogflow.projects.locations.agents.sessions.fulfillIntent` | POST | `v3/{+session}:fulfillIntent` |  |
| `dialogflow.projects.locations.agents.sessions.submitAnswerFeedback` | POST | `v3/{+session}:submitAnswerFeedback` |  |
| `dialogflow.projects.locations.agents.sessions.entityTypes.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.sessions.entityTypes.list` | GET | `v3/{+parent}/entityTypes` |  |
| `dialogflow.projects.locations.agents.sessions.entityTypes.create` | POST | `v3/{+parent}/entityTypes` |  |
| `dialogflow.projects.locations.agents.sessions.entityTypes.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.sessions.entityTypes.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.changelogs.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.changelogs.list` | GET | `v3/{+parent}/changelogs` |  |
| `dialogflow.projects.locations.agents.generators.create` | POST | `v3/{+parent}/generators` |  |
| `dialogflow.projects.locations.agents.generators.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.generators.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.generators.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.generators.list` | GET | `v3/{+parent}/generators` |  |
| `dialogflow.projects.locations.agents.transitionRouteGroups.create` | POST | `v3/{+parent}/transitionRouteGroups` |  |
| `dialogflow.projects.locations.agents.transitionRouteGroups.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.transitionRouteGroups.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.transitionRouteGroups.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.transitionRouteGroups.list` | GET | `v3/{+parent}/transitionRouteGroups` |  |
| `dialogflow.projects.locations.agents.playbooks.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.playbooks.import` | POST | `v3/{+parent}/playbooks:import` |  |
| `dialogflow.projects.locations.agents.playbooks.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.playbooks.list` | GET | `v3/{+parent}/playbooks` |  |
| `dialogflow.projects.locations.agents.playbooks.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.playbooks.create` | POST | `v3/{+parent}/playbooks` |  |
| `dialogflow.projects.locations.agents.playbooks.export` | POST | `v3/{+name}:export` |  |
| `dialogflow.projects.locations.agents.playbooks.examples.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.playbooks.examples.list` | GET | `v3/{+parent}/examples` |  |
| `dialogflow.projects.locations.agents.playbooks.examples.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.playbooks.examples.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.playbooks.examples.create` | POST | `v3/{+parent}/examples` |  |
| `dialogflow.projects.locations.agents.playbooks.versions.list` | GET | `v3/{+parent}/versions` |  |
| `dialogflow.projects.locations.agents.playbooks.versions.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.playbooks.versions.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.playbooks.versions.create` | POST | `v3/{+parent}/versions` |  |
| `dialogflow.projects.locations.agents.playbooks.versions.restore` | POST | `v3/{+name}:restore` |  |
| `dialogflow.projects.locations.agents.tools.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.tools.create` | POST | `v3/{+parent}/tools` |  |
| `dialogflow.projects.locations.agents.tools.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.tools.list` | GET | `v3/{+parent}/tools` |  |
| `dialogflow.projects.locations.agents.tools.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.tools.versions.list` | GET | `v3/{+parent}/versions` |  |
| `dialogflow.projects.locations.agents.tools.versions.restore` | POST | `v3/{+name}:restore` |  |
| `dialogflow.projects.locations.agents.tools.versions.create` | POST | `v3/{+parent}/versions` |  |
| `dialogflow.projects.locations.agents.tools.versions.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.tools.versions.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.webhooks.create` | POST | `v3/{+parent}/webhooks` |  |
| `dialogflow.projects.locations.agents.webhooks.list` | GET | `v3/{+parent}/webhooks` |  |
| `dialogflow.projects.locations.agents.webhooks.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.webhooks.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.webhooks.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.entityTypes.list` | GET | `v3/{+parent}/entityTypes` |  |
| `dialogflow.projects.locations.agents.entityTypes.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.entityTypes.create` | POST | `v3/{+parent}/entityTypes` |  |
| `dialogflow.projects.locations.agents.entityTypes.import` | POST | `v3/{+parent}/entityTypes:import` |  |
| `dialogflow.projects.locations.agents.entityTypes.export` | POST | `v3/{+parent}/entityTypes:export` |  |
| `dialogflow.projects.locations.agents.entityTypes.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.entityTypes.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.flows.getValidationResult` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.flows.train` | POST | `v3/{+name}:train` |  |
| `dialogflow.projects.locations.agents.flows.export` | POST | `v3/{+name}:export` |  |
| `dialogflow.projects.locations.agents.flows.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.flows.list` | GET | `v3/{+parent}/flows` |  |
| `dialogflow.projects.locations.agents.flows.validate` | POST | `v3/{+name}:validate` |  |
| `dialogflow.projects.locations.agents.flows.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.flows.create` | POST | `v3/{+parent}/flows` |  |
| `dialogflow.projects.locations.agents.flows.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.flows.import` | POST | `v3/{+parent}/flows:import` |  |
| `dialogflow.projects.locations.agents.flows.transitionRouteGroups.create` | POST | `v3/{+parent}/transitionRouteGroups` |  |
| `dialogflow.projects.locations.agents.flows.transitionRouteGroups.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.flows.transitionRouteGroups.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.flows.transitionRouteGroups.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.flows.transitionRouteGroups.list` | GET | `v3/{+parent}/transitionRouteGroups` |  |
| `dialogflow.projects.locations.agents.flows.pages.list` | GET | `v3/{+parent}/pages` |  |
| `dialogflow.projects.locations.agents.flows.pages.create` | POST | `v3/{+parent}/pages` |  |
| `dialogflow.projects.locations.agents.flows.pages.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.flows.pages.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.flows.pages.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.flows.versions.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.flows.versions.list` | GET | `v3/{+parent}/versions` |  |
| `dialogflow.projects.locations.agents.flows.versions.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.flows.versions.create` | POST | `v3/{+parent}/versions` |  |
| `dialogflow.projects.locations.agents.flows.versions.compareVersions` | POST | `v3/{+baseVersion}:compareVersions` |  |
| `dialogflow.projects.locations.agents.flows.versions.load` | POST | `v3/{+name}:load` |  |
| `dialogflow.projects.locations.agents.flows.versions.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.intents.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.intents.export` | POST | `v3/{+parent}/intents:export` |  |
| `dialogflow.projects.locations.agents.intents.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.intents.import` | POST | `v3/{+parent}/intents:import` |  |
| `dialogflow.projects.locations.agents.intents.create` | POST | `v3/{+parent}/intents` |  |
| `dialogflow.projects.locations.agents.intents.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.intents.list` | GET | `v3/{+parent}/intents` |  |
| `dialogflow.projects.locations.agents.environments.lookupEnvironmentHistory` | GET | `v3/{+name}:lookupEnvironmentHistory` |  |
| `dialogflow.projects.locations.agents.environments.list` | GET | `v3/{+parent}/environments` |  |
| `dialogflow.projects.locations.agents.environments.create` | POST | `v3/{+parent}/environments` |  |
| `dialogflow.projects.locations.agents.environments.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.environments.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.environments.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.environments.deployFlow` | POST | `v3/{+environment}:deployFlow` |  |
| `dialogflow.projects.locations.agents.environments.runContinuousTest` | POST | `v3/{+environment}:runContinuousTest` |  |
| `dialogflow.projects.locations.agents.environments.experiments.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.environments.experiments.list` | GET | `v3/{+parent}/experiments` |  |
| `dialogflow.projects.locations.agents.environments.experiments.start` | POST | `v3/{+name}:start` |  |
| `dialogflow.projects.locations.agents.environments.experiments.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.environments.experiments.stop` | POST | `v3/{+name}:stop` |  |
| `dialogflow.projects.locations.agents.environments.experiments.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.environments.experiments.create` | POST | `v3/{+parent}/experiments` |  |
| `dialogflow.projects.locations.agents.environments.continuousTestResults.list` | GET | `v3/{+parent}/continuousTestResults` |  |
| `dialogflow.projects.locations.agents.environments.sessions.fulfillIntent` | POST | `v3/{+session}:fulfillIntent` |  |
| `dialogflow.projects.locations.agents.environments.sessions.serverStreamingDetectIntent` | POST | `v3/{+session}:serverStreamingDetectIntent` |  |
| `dialogflow.projects.locations.agents.environments.sessions.matchIntent` | POST | `v3/{+session}:matchIntent` |  |
| `dialogflow.projects.locations.agents.environments.sessions.detectIntent` | POST | `v3/{+session}:detectIntent` |  |
| `dialogflow.projects.locations.agents.environments.sessions.entityTypes.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.environments.sessions.entityTypes.delete` | DELETE | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.environments.sessions.entityTypes.create` | POST | `v3/{+parent}/entityTypes` |  |
| `dialogflow.projects.locations.agents.environments.sessions.entityTypes.list` | GET | `v3/{+parent}/entityTypes` |  |
| `dialogflow.projects.locations.agents.environments.sessions.entityTypes.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.environments.deployments.list` | GET | `v3/{+parent}/deployments` |  |
| `dialogflow.projects.locations.agents.environments.deployments.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.testCases.batchRun` | POST | `v3/{+parent}/testCases:batchRun` |  |
| `dialogflow.projects.locations.agents.testCases.patch` | PATCH | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.testCases.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.agents.testCases.import` | POST | `v3/{+parent}/testCases:import` |  |
| `dialogflow.projects.locations.agents.testCases.create` | POST | `v3/{+parent}/testCases` |  |
| `dialogflow.projects.locations.agents.testCases.calculateCoverage` | GET | `v3/{+agent}/testCases:calculateCoverage` |  |
| `dialogflow.projects.locations.agents.testCases.list` | GET | `v3/{+parent}/testCases` |  |
| `dialogflow.projects.locations.agents.testCases.export` | POST | `v3/{+parent}/testCases:export` |  |
| `dialogflow.projects.locations.agents.testCases.run` | POST | `v3/{+name}:run` |  |
| `dialogflow.projects.locations.agents.testCases.batchDelete` | POST | `v3/{+parent}/testCases:batchDelete` |  |
| `dialogflow.projects.locations.agents.testCases.results.list` | GET | `v3/{+parent}/results` |  |
| `dialogflow.projects.locations.agents.testCases.results.get` | GET | `v3/{+name}` |  |
| `dialogflow.projects.locations.operations.list` | GET | `v3/{+name}/operations` |  |
| `dialogflow.projects.locations.operations.cancel` | POST | `v3/{+name}:cancel` |  |
| `dialogflow.projects.locations.operations.get` | GET | `v3/{+name}` |  |

### `dialogflow.projects.operations.cancel`

**POST** `v3/{+name}:cancel`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.operations.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.operations.list`

**GET** `v3/{+name}/operations`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `filter` | `string` | query | No |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |
| `returnPartialSuccess` | `boolean` | query | No |  |

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await dialogflow.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.list`

**GET** `v3/{+name}/locations`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `extraLocationTypes` | `string` | query | No |  |
| `filter` | `string` | query | No |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudLocationListLocationsResponse`

```typescript
const res = await dialogflow.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudLocationLocation`

```typescript
const res = await dialogflow.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.securitySettings.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3SecuritySettings`

```typescript
const res = await dialogflow.securitySettings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.securitySettings.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.securitySettings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.securitySettings.create`

**POST** `v3/{+parent}/securitySettings`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3SecuritySettings`

**Response**: `GoogleCloudDialogflowCxV3SecuritySettings`

```typescript
const res = await dialogflow.securitySettings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.securitySettings.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3SecuritySettings`

**Response**: `GoogleCloudDialogflowCxV3SecuritySettings`

```typescript
const res = await dialogflow.securitySettings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.securitySettings.list`

**GET** `v3/{+parent}/securitySettings`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListSecuritySettingsResponse`

```typescript
const res = await dialogflow.securitySettings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3Agent`

```typescript
const res = await dialogflow.agents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.getGenerativeSettings`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3GenerativeSettings`

```typescript
const res = await dialogflow.agents.getGenerativeSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.agents.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.create`

**POST** `v3/{+parent}/agents`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3Agent`

**Response**: `GoogleCloudDialogflowCxV3Agent`

```typescript
const res = await dialogflow.agents.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.validate`

**POST** `v3/{+name}:validate`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ValidateAgentRequest`

**Response**: `GoogleCloudDialogflowCxV3AgentValidationResult`

```typescript
const res = await dialogflow.agents.validate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.getValidationResult`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3AgentValidationResult`

```typescript
const res = await dialogflow.agents.getValidationResult({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.updateGenerativeSettings`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3GenerativeSettings`

**Response**: `GoogleCloudDialogflowCxV3GenerativeSettings`

```typescript
const res = await dialogflow.agents.updateGenerativeSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.restore`

**POST** `v3/{+name}:restore`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3RestoreAgentRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.agents.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.list`

**GET** `v3/{+parent}/agents`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListAgentsResponse`

```typescript
const res = await dialogflow.agents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Agent`

**Response**: `GoogleCloudDialogflowCxV3Agent`

```typescript
const res = await dialogflow.agents.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.export`

**POST** `v3/{+name}:export`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ExportAgentRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.agents.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.sessions.serverStreamingDetectIntent`

**POST** `v3/{+session}:serverStreamingDetectIntent`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3DetectIntentRequest`

**Response**: `GoogleCloudDialogflowCxV3DetectIntentResponse`

```typescript
const res = await dialogflow.sessions.serverStreamingDetectIntent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.sessions.matchIntent`

**POST** `v3/{+session}:matchIntent`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3MatchIntentRequest`

**Response**: `GoogleCloudDialogflowCxV3MatchIntentResponse`

```typescript
const res = await dialogflow.sessions.matchIntent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.sessions.detectIntent`

**POST** `v3/{+session}:detectIntent`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3DetectIntentRequest`

**Response**: `GoogleCloudDialogflowCxV3DetectIntentResponse`

```typescript
const res = await dialogflow.sessions.detectIntent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.sessions.fulfillIntent`

**POST** `v3/{+session}:fulfillIntent`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3FulfillIntentRequest`

**Response**: `GoogleCloudDialogflowCxV3FulfillIntentResponse`

```typescript
const res = await dialogflow.sessions.fulfillIntent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.sessions.submitAnswerFeedback`

**POST** `v3/{+session}:submitAnswerFeedback`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest`

**Response**: `GoogleCloudDialogflowCxV3AnswerFeedback`

```typescript
const res = await dialogflow.sessions.submitAnswerFeedback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.sessions.entityTypes.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3SessionEntityType`

**Response**: `GoogleCloudDialogflowCxV3SessionEntityType`

```typescript
const res = await dialogflow.entityTypes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.sessions.entityTypes.list`

**GET** `v3/{+parent}/entityTypes`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse`

```typescript
const res = await dialogflow.entityTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.sessions.entityTypes.create`

**POST** `v3/{+parent}/entityTypes`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3SessionEntityType`

**Response**: `GoogleCloudDialogflowCxV3SessionEntityType`

```typescript
const res = await dialogflow.entityTypes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.sessions.entityTypes.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3SessionEntityType`

```typescript
const res = await dialogflow.entityTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.sessions.entityTypes.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.entityTypes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.changelogs.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3Changelog`

```typescript
const res = await dialogflow.changelogs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.changelogs.list`

**GET** `v3/{+parent}/changelogs`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `filter` | `string` | query | No |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListChangelogsResponse`

```typescript
const res = await dialogflow.changelogs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.generators.create`

**POST** `v3/{+parent}/generators`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Generator`

**Response**: `GoogleCloudDialogflowCxV3Generator`

```typescript
const res = await dialogflow.generators.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.generators.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `force` | `boolean` | query | No |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.generators.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.generators.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3Generator`

```typescript
const res = await dialogflow.generators.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.generators.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Generator`

**Response**: `GoogleCloudDialogflowCxV3Generator`

```typescript
const res = await dialogflow.generators.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.generators.list`

**GET** `v3/{+parent}/generators`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListGeneratorsResponse`

```typescript
const res = await dialogflow.generators.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.transitionRouteGroups.create`

**POST** `v3/{+parent}/transitionRouteGroups`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3TransitionRouteGroup`

**Response**: `GoogleCloudDialogflowCxV3TransitionRouteGroup`

```typescript
const res = await dialogflow.transitionRouteGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.transitionRouteGroups.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `force` | `boolean` | query | No |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.transitionRouteGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.transitionRouteGroups.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3TransitionRouteGroup`

**Response**: `GoogleCloudDialogflowCxV3TransitionRouteGroup`

```typescript
const res = await dialogflow.transitionRouteGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.transitionRouteGroups.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3TransitionRouteGroup`

```typescript
const res = await dialogflow.transitionRouteGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.transitionRouteGroups.list`

**GET** `v3/{+parent}/transitionRouteGroups`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse`

```typescript
const res = await dialogflow.transitionRouteGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.playbooks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.import`

**POST** `v3/{+parent}/playbooks:import`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ImportPlaybookRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.playbooks.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Playbook`

**Response**: `GoogleCloudDialogflowCxV3Playbook`

```typescript
const res = await dialogflow.playbooks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.list`

**GET** `v3/{+parent}/playbooks`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListPlaybooksResponse`

```typescript
const res = await dialogflow.playbooks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3Playbook`

```typescript
const res = await dialogflow.playbooks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.create`

**POST** `v3/{+parent}/playbooks`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3Playbook`

**Response**: `GoogleCloudDialogflowCxV3Playbook`

```typescript
const res = await dialogflow.playbooks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.export`

**POST** `v3/{+name}:export`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ExportPlaybookRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.playbooks.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.examples.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Example`

**Response**: `GoogleCloudDialogflowCxV3Example`

```typescript
const res = await dialogflow.examples.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.examples.list`

**GET** `v3/{+parent}/examples`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListExamplesResponse`

```typescript
const res = await dialogflow.examples.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.examples.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.examples.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.examples.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3Example`

```typescript
const res = await dialogflow.examples.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.examples.create`

**POST** `v3/{+parent}/examples`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3Example`

**Response**: `GoogleCloudDialogflowCxV3Example`

```typescript
const res = await dialogflow.examples.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.versions.list`

**GET** `v3/{+parent}/versions`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListPlaybookVersionsResponse`

```typescript
const res = await dialogflow.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.versions.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.versions.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3PlaybookVersion`

```typescript
const res = await dialogflow.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.versions.create`

**POST** `v3/{+parent}/versions`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3PlaybookVersion`

**Response**: `GoogleCloudDialogflowCxV3PlaybookVersion`

```typescript
const res = await dialogflow.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.playbooks.versions.restore`

**POST** `v3/{+name}:restore`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3RestorePlaybookVersionRequest`

**Response**: `GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse`

```typescript
const res = await dialogflow.versions.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.tools.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3Tool`

```typescript
const res = await dialogflow.tools.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.tools.create`

**POST** `v3/{+parent}/tools`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3Tool`

**Response**: `GoogleCloudDialogflowCxV3Tool`

```typescript
const res = await dialogflow.tools.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.tools.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Tool`

**Response**: `GoogleCloudDialogflowCxV3Tool`

```typescript
const res = await dialogflow.tools.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.tools.list`

**GET** `v3/{+parent}/tools`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListToolsResponse`

```typescript
const res = await dialogflow.tools.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.tools.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `force` | `boolean` | query | No |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.tools.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.tools.versions.list`

**GET** `v3/{+parent}/versions`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListToolVersionsResponse`

```typescript
const res = await dialogflow.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.tools.versions.restore`

**POST** `v3/{+name}:restore`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3RestoreToolVersionRequest`

**Response**: `GoogleCloudDialogflowCxV3RestoreToolVersionResponse`

```typescript
const res = await dialogflow.versions.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.tools.versions.create`

**POST** `v3/{+parent}/versions`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ToolVersion`

**Response**: `GoogleCloudDialogflowCxV3ToolVersion`

```typescript
const res = await dialogflow.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.tools.versions.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3ToolVersion`

```typescript
const res = await dialogflow.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.tools.versions.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `force` | `boolean` | query | No |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.webhooks.create`

**POST** `v3/{+parent}/webhooks`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3Webhook`

**Response**: `GoogleCloudDialogflowCxV3Webhook`

```typescript
const res = await dialogflow.webhooks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.webhooks.list`

**GET** `v3/{+parent}/webhooks`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListWebhooksResponse`

```typescript
const res = await dialogflow.webhooks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.webhooks.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `force` | `boolean` | query | No |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.webhooks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.webhooks.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Webhook`

**Response**: `GoogleCloudDialogflowCxV3Webhook`

```typescript
const res = await dialogflow.webhooks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.webhooks.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3Webhook`

```typescript
const res = await dialogflow.webhooks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.entityTypes.list`

**GET** `v3/{+parent}/entityTypes`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListEntityTypesResponse`

```typescript
const res = await dialogflow.entityTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.entityTypes.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3EntityType`

**Response**: `GoogleCloudDialogflowCxV3EntityType`

```typescript
const res = await dialogflow.entityTypes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.entityTypes.create`

**POST** `v3/{+parent}/entityTypes`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3EntityType`

**Response**: `GoogleCloudDialogflowCxV3EntityType`

```typescript
const res = await dialogflow.entityTypes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.entityTypes.import`

**POST** `v3/{+parent}/entityTypes:import`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ImportEntityTypesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.entityTypes.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.entityTypes.export`

**POST** `v3/{+parent}/entityTypes:export`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ExportEntityTypesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.entityTypes.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.entityTypes.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3EntityType`

```typescript
const res = await dialogflow.entityTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.entityTypes.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `force` | `boolean` | query | No |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.entityTypes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.getValidationResult`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3FlowValidationResult`

```typescript
const res = await dialogflow.flows.getValidationResult({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.train`

**POST** `v3/{+name}:train`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3TrainFlowRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.flows.train({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.export`

**POST** `v3/{+name}:export`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ExportFlowRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.flows.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Flow`

**Response**: `GoogleCloudDialogflowCxV3Flow`

```typescript
const res = await dialogflow.flows.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.list`

**GET** `v3/{+parent}/flows`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListFlowsResponse`

```typescript
const res = await dialogflow.flows.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.validate`

**POST** `v3/{+name}:validate`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ValidateFlowRequest`

**Response**: `GoogleCloudDialogflowCxV3FlowValidationResult`

```typescript
const res = await dialogflow.flows.validate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3Flow`

```typescript
const res = await dialogflow.flows.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.create`

**POST** `v3/{+parent}/flows`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Flow`

**Response**: `GoogleCloudDialogflowCxV3Flow`

```typescript
const res = await dialogflow.flows.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `force` | `boolean` | query | No |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.flows.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.import`

**POST** `v3/{+parent}/flows:import`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ImportFlowRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.flows.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.transitionRouteGroups.create`

**POST** `v3/{+parent}/transitionRouteGroups`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3TransitionRouteGroup`

**Response**: `GoogleCloudDialogflowCxV3TransitionRouteGroup`

```typescript
const res = await dialogflow.transitionRouteGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.transitionRouteGroups.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3TransitionRouteGroup`

```typescript
const res = await dialogflow.transitionRouteGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.transitionRouteGroups.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3TransitionRouteGroup`

**Response**: `GoogleCloudDialogflowCxV3TransitionRouteGroup`

```typescript
const res = await dialogflow.transitionRouteGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.transitionRouteGroups.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `force` | `boolean` | query | No |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.transitionRouteGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.transitionRouteGroups.list`

**GET** `v3/{+parent}/transitionRouteGroups`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse`

```typescript
const res = await dialogflow.transitionRouteGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.pages.list`

**GET** `v3/{+parent}/pages`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListPagesResponse`

```typescript
const res = await dialogflow.pages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.pages.create`

**POST** `v3/{+parent}/pages`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Page`

**Response**: `GoogleCloudDialogflowCxV3Page`

```typescript
const res = await dialogflow.pages.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.pages.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Page`

**Response**: `GoogleCloudDialogflowCxV3Page`

```typescript
const res = await dialogflow.pages.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.pages.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3Page`

```typescript
const res = await dialogflow.pages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.pages.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `force` | `boolean` | query | No |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.pages.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.versions.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.versions.list`

**GET** `v3/{+parent}/versions`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListVersionsResponse`

```typescript
const res = await dialogflow.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.versions.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3Version`

```typescript
const res = await dialogflow.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.versions.create`

**POST** `v3/{+parent}/versions`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3Version`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.versions.compareVersions`

**POST** `v3/{+baseVersion}:compareVersions`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `baseVersion` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3CompareVersionsRequest`

**Response**: `GoogleCloudDialogflowCxV3CompareVersionsResponse`

```typescript
const res = await dialogflow.versions.compareVersions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.versions.load`

**POST** `v3/{+name}:load`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3LoadVersionRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.versions.load({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.flows.versions.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Version`

**Response**: `GoogleCloudDialogflowCxV3Version`

```typescript
const res = await dialogflow.versions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.intents.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3Intent`

```typescript
const res = await dialogflow.intents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.intents.export`

**POST** `v3/{+parent}/intents:export`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ExportIntentsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.intents.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.intents.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.intents.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.intents.import`

**POST** `v3/{+parent}/intents:import`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ImportIntentsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.intents.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.intents.create`

**POST** `v3/{+parent}/intents`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Intent`

**Response**: `GoogleCloudDialogflowCxV3Intent`

```typescript
const res = await dialogflow.intents.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.intents.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `languageCode` | `string` | query | No |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Intent`

**Response**: `GoogleCloudDialogflowCxV3Intent`

```typescript
const res = await dialogflow.intents.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.intents.list`

**GET** `v3/{+parent}/intents`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `intentView` | `string` | query | No |  |
| `languageCode` | `string` | query | No |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListIntentsResponse`

```typescript
const res = await dialogflow.intents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.lookupEnvironmentHistory`

**GET** `v3/{+name}:lookupEnvironmentHistory`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse`

```typescript
const res = await dialogflow.environments.lookupEnvironmentHistory({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.list`

**GET** `v3/{+parent}/environments`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListEnvironmentsResponse`

```typescript
const res = await dialogflow.environments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.create`

**POST** `v3/{+parent}/environments`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3Environment`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.environments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.environments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3Environment`

```typescript
const res = await dialogflow.environments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Environment`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.environments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.deployFlow`

**POST** `v3/{+environment}:deployFlow`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environment` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3DeployFlowRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.environments.deployFlow({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.runContinuousTest`

**POST** `v3/{+environment}:runContinuousTest`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environment` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3RunContinuousTestRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.environments.runContinuousTest({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.experiments.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3Experiment`

```typescript
const res = await dialogflow.experiments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.experiments.list`

**GET** `v3/{+parent}/experiments`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListExperimentsResponse`

```typescript
const res = await dialogflow.experiments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.experiments.start`

**POST** `v3/{+name}:start`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3StartExperimentRequest`

**Response**: `GoogleCloudDialogflowCxV3Experiment`

```typescript
const res = await dialogflow.experiments.start({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.experiments.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.experiments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.experiments.stop`

**POST** `v3/{+name}:stop`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3StopExperimentRequest`

**Response**: `GoogleCloudDialogflowCxV3Experiment`

```typescript
const res = await dialogflow.experiments.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.experiments.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3Experiment`

**Response**: `GoogleCloudDialogflowCxV3Experiment`

```typescript
const res = await dialogflow.experiments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.experiments.create`

**POST** `v3/{+parent}/experiments`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3Experiment`

**Response**: `GoogleCloudDialogflowCxV3Experiment`

```typescript
const res = await dialogflow.experiments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.continuousTestResults.list`

**GET** `v3/{+parent}/continuousTestResults`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse`

```typescript
const res = await dialogflow.continuousTestResults.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.sessions.fulfillIntent`

**POST** `v3/{+session}:fulfillIntent`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3FulfillIntentRequest`

**Response**: `GoogleCloudDialogflowCxV3FulfillIntentResponse`

```typescript
const res = await dialogflow.sessions.fulfillIntent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.sessions.serverStreamingDetectIntent`

**POST** `v3/{+session}:serverStreamingDetectIntent`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3DetectIntentRequest`

**Response**: `GoogleCloudDialogflowCxV3DetectIntentResponse`

```typescript
const res = await dialogflow.sessions.serverStreamingDetectIntent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.sessions.matchIntent`

**POST** `v3/{+session}:matchIntent`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3MatchIntentRequest`

**Response**: `GoogleCloudDialogflowCxV3MatchIntentResponse`

```typescript
const res = await dialogflow.sessions.matchIntent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.sessions.detectIntent`

**POST** `v3/{+session}:detectIntent`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3DetectIntentRequest`

**Response**: `GoogleCloudDialogflowCxV3DetectIntentResponse`

```typescript
const res = await dialogflow.sessions.detectIntent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.sessions.entityTypes.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3SessionEntityType`

```typescript
const res = await dialogflow.entityTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.sessions.entityTypes.delete`

**DELETE** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.entityTypes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.sessions.entityTypes.create`

**POST** `v3/{+parent}/entityTypes`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3SessionEntityType`

**Response**: `GoogleCloudDialogflowCxV3SessionEntityType`

```typescript
const res = await dialogflow.entityTypes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.sessions.entityTypes.list`

**GET** `v3/{+parent}/entityTypes`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse`

```typescript
const res = await dialogflow.entityTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.sessions.entityTypes.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3SessionEntityType`

**Response**: `GoogleCloudDialogflowCxV3SessionEntityType`

```typescript
const res = await dialogflow.entityTypes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.deployments.list`

**GET** `v3/{+parent}/deployments`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListDeploymentsResponse`

```typescript
const res = await dialogflow.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.environments.deployments.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3Deployment`

```typescript
const res = await dialogflow.deployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.testCases.batchRun`

**POST** `v3/{+parent}/testCases:batchRun`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3BatchRunTestCasesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.testCases.batchRun({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.testCases.patch`

**PATCH** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `updateMask` | `string` | query | No |  |

**Request body**: `GoogleCloudDialogflowCxV3TestCase`

**Response**: `GoogleCloudDialogflowCxV3TestCase`

```typescript
const res = await dialogflow.testCases.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.testCases.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3TestCase`

```typescript
const res = await dialogflow.testCases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.testCases.import`

**POST** `v3/{+parent}/testCases:import`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ImportTestCasesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.testCases.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.testCases.create`

**POST** `v3/{+parent}/testCases`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3TestCase`

**Response**: `GoogleCloudDialogflowCxV3TestCase`

```typescript
const res = await dialogflow.testCases.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.testCases.calculateCoverage`

**GET** `v3/{+agent}/testCases:calculateCoverage`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `agent` | `string` | path | Yes |  |
| `type` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3CalculateCoverageResponse`

```typescript
const res = await dialogflow.testCases.calculateCoverage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.testCases.list`

**GET** `v3/{+parent}/testCases`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |
| `view` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListTestCasesResponse`

```typescript
const res = await dialogflow.testCases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.testCases.export`

**POST** `v3/{+parent}/testCases:export`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3ExportTestCasesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.testCases.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.testCases.run`

**POST** `v3/{+name}:run`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3RunTestCaseRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.testCases.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.testCases.batchDelete`

**POST** `v3/{+parent}/testCases:batchDelete`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |

**Request body**: `GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.testCases.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.testCases.results.list`

**GET** `v3/{+parent}/results`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `filter` | `string` | query | No |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |

**Response**: `GoogleCloudDialogflowCxV3ListTestCaseResultsResponse`

```typescript
const res = await dialogflow.results.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.agents.testCases.results.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDialogflowCxV3TestCaseResult`

```typescript
const res = await dialogflow.results.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.operations.list`

**GET** `v3/{+name}/operations`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `filter` | `string` | query | No |  |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |
| `returnPartialSuccess` | `boolean` | query | No |  |

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await dialogflow.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.operations.cancel`

**POST** `v3/{+name}:cancel`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dialogflow.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

### `dialogflow.projects.locations.operations.get`

**GET** `v3/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dialogflow.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/dialogflow`

---

## Schemas

### `GoogleCloudDialogflowCxV3Action`

| Property | Type | Description |
|----------|------|-------------|
| `agentUtterance` | `GoogleCloudDialogflowCxV3AgentUtterance` |  |
| `flowInvocation` | `GoogleCloudDialogflowCxV3FlowInvocation` |  |
| `flowTransition` | `GoogleCloudDialogflowCxV3FlowTransition` |  |
| `playbookInvocation` | `GoogleCloudDialogflowCxV3PlaybookInvocation` |  |
| `playbookTransition` | `GoogleCloudDialogflowCxV3PlaybookTransition` |  |
| `toolUse` | `GoogleCloudDialogflowCxV3ToolUse` |  |
| `userUtterance` | `GoogleCloudDialogflowCxV3UserUtterance` |  |

### `GoogleCloudDialogflowCxV3AdvancedSettings`

| Property | Type | Description |
|----------|------|-------------|
| `audioExportGcsDestination` | `GoogleCloudDialogflowCxV3GcsDestination` |  |
| `dtmfSettings` | `GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings` |  |
| `loggingSettings` | `GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings` |  |
| `speechSettings` | `GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings` |  |

### `GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings`

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` |  |
| `endpointingTimeoutDuration` | `string` |  |
| `finishDigit` | `string` |  |
| `interdigitTimeoutDuration` | `string` |  |
| `maxDigits` | `integer` |  |

### `GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings`

| Property | Type | Description |
|----------|------|-------------|
| `enableConsentBasedRedaction` | `boolean` |  |
| `enableInteractionLogging` | `boolean` |  |
| `enableStackdriverLogging` | `boolean` |  |

### `GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings`

| Property | Type | Description |
|----------|------|-------------|
| `endpointerSensitivity` | `integer` |  |
| `models` | `object` |  |
| `noSpeechTimeout` | `string` |  |
| `useTimeoutBasedEndpointing` | `boolean` |  |

### `GoogleCloudDialogflowCxV3Agent`

| Property | Type | Description |
|----------|------|-------------|
| `advancedSettings` | `GoogleCloudDialogflowCxV3AdvancedSettings` |  |
| `answerFeedbackSettings` | `GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings` |  |
| `avatarUri` | `string` |  |
| `clientCertificateSettings` | `GoogleCloudDialogflowCxV3AgentClientCertificateSettings` |  |
| `defaultLanguageCode` | `string` |  |
| `description` | `string` |  |
| `displayName` | `string` |  |
| `enableMultiLanguageTraining` | `boolean` |  |
| `enableSpellCorrection` | `boolean` |  |
| `enableStackdriverLogging` | `boolean` |  |
| `genAppBuilderSettings` | `GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings` |  |
| `gitIntegrationSettings` | `GoogleCloudDialogflowCxV3AgentGitIntegrationSettings` |  |
| `locked` | `boolean` |  |
| `name` | `string` |  |
| `personalizationSettings` | `GoogleCloudDialogflowCxV3AgentPersonalizationSettings` |  |
| `satisfiesPzi` | `boolean` |  |
| `satisfiesPzs` | `boolean` |  |
| `securitySettings` | `string` |  |
| `speechToTextSettings` | `GoogleCloudDialogflowCxV3SpeechToTextSettings` |  |
| `startFlow` | `string` |  |
| `startPlaybook` | `string` |  |
| `supportedLanguageCodes` | `array<string>` |  |
| `textToSpeechSettings` | `GoogleCloudDialogflowCxV3TextToSpeechSettings` |  |
| `timeZone` | `string` |  |

### `GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings`

| Property | Type | Description |
|----------|------|-------------|
| `enableAnswerFeedback` | `boolean` |  |

### `GoogleCloudDialogflowCxV3AgentClientCertificateSettings`

| Property | Type | Description |
|----------|------|-------------|
| `passphrase` | `string` |  |
| `privateKey` | `string` |  |
| `sslCertificate` | `string` |  |

### `GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings`

| Property | Type | Description |
|----------|------|-------------|
| `engine` | `string` |  |

### `GoogleCloudDialogflowCxV3AgentGitIntegrationSettings`

| Property | Type | Description |
|----------|------|-------------|
| `githubSettings` | `GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings` |  |

### `GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings`

| Property | Type | Description |
|----------|------|-------------|
| `accessToken` | `string` |  |
| `branches` | `array<string>` |  |
| `displayName` | `string` |  |
| `repositoryUri` | `string` |  |
| `trackingBranch` | `string` |  |

### `GoogleCloudDialogflowCxV3AgentPersonalizationSettings`

| Property | Type | Description |
|----------|------|-------------|
| `defaultEndUserMetadata` | `object` |  |

### `GoogleCloudDialogflowCxV3AgentUtterance`

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` |  |

### `GoogleCloudDialogflowCxV3AgentValidationResult`

| Property | Type | Description |
|----------|------|-------------|
| `flowValidationResults` | `array<GoogleCloudDialogflowCxV3FlowValidationResult>` |  |
| `name` | `string` |  |

### `GoogleCloudDialogflowCxV3AnswerFeedback`

| Property | Type | Description |
|----------|------|-------------|
| `customRating` | `string` |  |
| `rating` | `string` |  |
| `ratingReason` | `GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason` |  |

### `GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason`

| Property | Type | Description |
|----------|------|-------------|
| `feedback` | `string` |  |
| `reasonLabels` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3AudioInput`

| Property | Type | Description |
|----------|------|-------------|
| `audio` | `string` |  |
| `config` | `GoogleCloudDialogflowCxV3InputAudioConfig` |  |

### `GoogleCloudDialogflowCxV3BargeInConfig`

| Property | Type | Description |
|----------|------|-------------|
| `noBargeInDuration` | `string` |  |
| `totalDuration` | `string` |  |

### `GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest`

| Property | Type | Description |
|----------|------|-------------|
| `names` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<GoogleCloudDialogflowCxV3TestError>` |  |

### `GoogleCloudDialogflowCxV3BatchRunTestCasesRequest`

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `string` |  |
| `testCases` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3BatchRunTestCasesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `results` | `array<GoogleCloudDialogflowCxV3TestCaseResult>` |  |

### `GoogleCloudDialogflowCxV3BoostSpec`

| Property | Type | Description |
|----------|------|-------------|
| `conditionBoostSpecs` | `array<GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec>` |  |

### `GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec`

| Property | Type | Description |
|----------|------|-------------|
| `boost` | `number` |  |
| `boostControlSpec` | `GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec` |  |
| `condition` | `string` |  |

### `GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec`

| Property | Type | Description |
|----------|------|-------------|
| `attributeType` | `string` |  |
| `controlPoints` | `array<GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpecControlPoint>` |  |
| `fieldName` | `string` |  |
| `interpolationType` | `string` |  |

### `GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpecControlPoint`

| Property | Type | Description |
|----------|------|-------------|
| `attributeValue` | `string` |  |
| `boostAmount` | `number` |  |

### `GoogleCloudDialogflowCxV3BoostSpecs`

| Property | Type | Description |
|----------|------|-------------|
| `dataStores` | `array<string>` |  |
| `spec` | `array<GoogleCloudDialogflowCxV3BoostSpec>` |  |

### `GoogleCloudDialogflowCxV3CalculateCoverageResponse`

| Property | Type | Description |
|----------|------|-------------|
| `agent` | `string` |  |
| `intentCoverage` | `GoogleCloudDialogflowCxV3IntentCoverage` |  |
| `routeGroupCoverage` | `GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage` |  |
| `transitionCoverage` | `GoogleCloudDialogflowCxV3TransitionCoverage` |  |

### `GoogleCloudDialogflowCxV3Changelog`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `createTime` | `string` |  |
| `displayName` | `string` |  |
| `languageCode` | `string` |  |
| `name` | `string` |  |
| `resource` | `string` |  |
| `type` | `string` |  |
| `userEmail` | `string` |  |

### `GoogleCloudDialogflowCxV3CodeBlock`

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` |  |

### `GoogleCloudDialogflowCxV3CompareVersionsRequest`

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` |  |
| `targetVersion` | `string` |  |

### `GoogleCloudDialogflowCxV3CompareVersionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `baseVersionContentJson` | `string` |  |
| `compareTime` | `string` |  |
| `targetVersionContentJson` | `string` |  |

### `GoogleCloudDialogflowCxV3ContinuousTestResult`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |
| `result` | `string` |  |
| `runTime` | `string` |  |
| `testCaseResults` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3ConversationSignals`

| Property | Type | Description |
|----------|------|-------------|
| `turnSignals` | `GoogleCloudDialogflowCxV3TurnSignals` |  |

### `GoogleCloudDialogflowCxV3ConversationTurn`

| Property | Type | Description |
|----------|------|-------------|
| `userInput` | `GoogleCloudDialogflowCxV3ConversationTurnUserInput` |  |
| `virtualAgentOutput` | `GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput` |  |

### `GoogleCloudDialogflowCxV3ConversationTurnUserInput`

| Property | Type | Description |
|----------|------|-------------|
| `enableSentimentAnalysis` | `boolean` |  |
| `injectedParameters` | `object` |  |
| `input` | `GoogleCloudDialogflowCxV3QueryInput` |  |
| `isWebhookEnabled` | `boolean` |  |

### `GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput`

| Property | Type | Description |
|----------|------|-------------|
| `currentPage` | `GoogleCloudDialogflowCxV3Page` |  |
| `diagnosticInfo` | `object` |  |
| `differences` | `array<GoogleCloudDialogflowCxV3TestRunDifference>` |  |
| `sessionParameters` | `object` |  |
| `status` | `GoogleRpcStatus` |  |
| `textResponses` | `array<GoogleCloudDialogflowCxV3ResponseMessageText>` |  |
| `triggeredIntent` | `GoogleCloudDialogflowCxV3Intent` |  |

### `GoogleCloudDialogflowCxV3CreateVersionOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `version` | `string` |  |

### `GoogleCloudDialogflowCxV3DataStoreConnection`

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` |  |
| `dataStoreType` | `string` |  |
| `documentProcessingMode` | `string` |  |

### `GoogleCloudDialogflowCxV3DataStoreConnectionSignals`

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `string` |  |
| `answerGenerationModelCallSignals` | `GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals` |  |
| `answerParts` | `array<GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart>` |  |
| `citedSnippets` | `array<GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet>` |  |
| `groundingSignals` | `GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals` |  |
| `rewriterModelCallSignals` | `GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals` |  |
| `rewrittenQuery` | `string` |  |
| `safetySignals` | `GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals` |  |
| `searchSnippets` | `array<GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet>` |  |

### `GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals`

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` |  |
| `modelOutput` | `string` |  |
| `renderedPrompt` | `string` |  |

### `GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart`

| Property | Type | Description |
|----------|------|-------------|
| `supportingIndices` | `array<integer>` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet`

| Property | Type | Description |
|----------|------|-------------|
| `searchSnippet` | `GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet` |  |
| `snippetIndex` | `integer` |  |

### `GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals`

| Property | Type | Description |
|----------|------|-------------|
| `decision` | `string` |  |
| `score` | `string` |  |

### `GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals`

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` |  |
| `modelOutput` | `string` |  |
| `renderedPrompt` | `string` |  |

### `GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals`

| Property | Type | Description |
|----------|------|-------------|
| `bannedPhraseMatch` | `string` |  |
| `decision` | `string` |  |
| `matchedBannedPhrase` | `string` |  |

### `GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet`

| Property | Type | Description |
|----------|------|-------------|
| `documentTitle` | `string` |  |
| `documentUri` | `string` |  |
| `metadata` | `object` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowCxV3DeployFlowMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `testErrors` | `array<GoogleCloudDialogflowCxV3TestError>` |  |

### `GoogleCloudDialogflowCxV3DeployFlowRequest`

| Property | Type | Description |
|----------|------|-------------|
| `flowVersion` | `string` |  |

### `GoogleCloudDialogflowCxV3DeployFlowResponse`

| Property | Type | Description |
|----------|------|-------------|
| `deployment` | `string` |  |
| `environment` | `GoogleCloudDialogflowCxV3Environment` |  |

### `GoogleCloudDialogflowCxV3Deployment`

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` |  |
| `flowVersion` | `string` |  |
| `name` | `string` |  |
| `result` | `GoogleCloudDialogflowCxV3DeploymentResult` |  |
| `startTime` | `string` |  |
| `state` | `string` |  |

### `GoogleCloudDialogflowCxV3DeploymentResult`

| Property | Type | Description |
|----------|------|-------------|
| `deploymentTestResults` | `array<string>` |  |
| `experiment` | `string` |  |

### `GoogleCloudDialogflowCxV3DetectIntentRequest`

| Property | Type | Description |
|----------|------|-------------|
| `outputAudioConfig` | `GoogleCloudDialogflowCxV3OutputAudioConfig` |  |
| `queryInput` | `GoogleCloudDialogflowCxV3QueryInput` |  |
| `queryParams` | `GoogleCloudDialogflowCxV3QueryParameters` |  |
| `responseView` | `string` |  |

### `GoogleCloudDialogflowCxV3DetectIntentResponse`

| Property | Type | Description |
|----------|------|-------------|
| `allowCancellation` | `boolean` |  |
| `outputAudio` | `string` |  |
| `outputAudioConfig` | `GoogleCloudDialogflowCxV3OutputAudioConfig` |  |
| `queryResult` | `GoogleCloudDialogflowCxV3QueryResult` |  |
| `responseId` | `string` |  |
| `responseType` | `string` |  |

### `GoogleCloudDialogflowCxV3DtmfInput`

| Property | Type | Description |
|----------|------|-------------|
| `digits` | `string` |  |
| `finishDigit` | `string` |  |

### `GoogleCloudDialogflowCxV3EntityType`

| Property | Type | Description |
|----------|------|-------------|
| `autoExpansionMode` | `string` |  |
| `displayName` | `string` |  |
| `enableFuzzyExtraction` | `boolean` |  |
| `entities` | `array<GoogleCloudDialogflowCxV3EntityTypeEntity>` |  |
| `excludedPhrases` | `array<GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>` |  |
| `kind` | `string` |  |
| `name` | `string` |  |
| `redact` | `boolean` |  |

### `GoogleCloudDialogflowCxV3EntityTypeEntity`

| Property | Type | Description |
|----------|------|-------------|
| `synonyms` | `array<string>` |  |
| `value` | `string` |  |

### `GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase`

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` |  |

### `GoogleCloudDialogflowCxV3Environment`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `displayName` | `string` |  |
| `name` | `string` |  |
| `testCasesConfig` | `GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig` |  |
| `updateTime` | `string` |  |
| `versionConfigs` | `array<GoogleCloudDialogflowCxV3EnvironmentVersionConfig>` |  |
| `webhookConfig` | `GoogleCloudDialogflowCxV3EnvironmentWebhookConfig` |  |

### `GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig`

| Property | Type | Description |
|----------|------|-------------|
| `enableContinuousRun` | `boolean` |  |
| `enablePredeploymentRun` | `boolean` |  |
| `testCases` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3EnvironmentVersionConfig`

| Property | Type | Description |
|----------|------|-------------|
| `version` | `string` |  |

### `GoogleCloudDialogflowCxV3EnvironmentWebhookConfig`

| Property | Type | Description |
|----------|------|-------------|
| `webhookOverrides` | `array<GoogleCloudDialogflowCxV3Webhook>` |  |

### `GoogleCloudDialogflowCxV3EventHandler`

| Property | Type | Description |
|----------|------|-------------|
| `event` | `string` |  |
| `name` | `string` |  |
| `targetFlow` | `string` |  |
| `targetPage` | `string` |  |
| `targetPlaybook` | `string` |  |
| `triggerFulfillment` | `GoogleCloudDialogflowCxV3Fulfillment` |  |

### `GoogleCloudDialogflowCxV3EventInput`

| Property | Type | Description |
|----------|------|-------------|
| `event` | `string` |  |

### `GoogleCloudDialogflowCxV3Example`

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<GoogleCloudDialogflowCxV3Action>` |  |
| `conversationState` | `string` |  |
| `createTime` | `string` |  |
| `description` | `string` |  |
| `displayName` | `string` |  |
| `languageCode` | `string` |  |
| `name` | `string` |  |
| `playbookInput` | `GoogleCloudDialogflowCxV3PlaybookInput` |  |
| `playbookOutput` | `GoogleCloudDialogflowCxV3PlaybookOutput` |  |
| `tokenCount` | `string` |  |
| `updateTime` | `string` |  |

### `GoogleCloudDialogflowCxV3Experiment`

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` |  |
| `definition` | `GoogleCloudDialogflowCxV3ExperimentDefinition` |  |
| `description` | `string` |  |
| `displayName` | `string` |  |
| `endTime` | `string` |  |
| `experimentLength` | `string` |  |
| `lastUpdateTime` | `string` |  |
| `name` | `string` |  |
| `result` | `GoogleCloudDialogflowCxV3ExperimentResult` |  |
| `rolloutConfig` | `GoogleCloudDialogflowCxV3RolloutConfig` |  |
| `rolloutFailureReason` | `string` |  |
| `rolloutState` | `GoogleCloudDialogflowCxV3RolloutState` |  |
| `startTime` | `string` |  |
| `state` | `string` |  |
| `variantsHistory` | `array<GoogleCloudDialogflowCxV3VariantsHistory>` |  |

### `GoogleCloudDialogflowCxV3ExperimentDefinition`

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` |  |
| `versionVariants` | `GoogleCloudDialogflowCxV3VersionVariants` |  |

### `GoogleCloudDialogflowCxV3ExperimentResult`

| Property | Type | Description |
|----------|------|-------------|
| `lastUpdateTime` | `string` |  |
| `versionMetrics` | `array<GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics>` |  |

### `GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval`

| Property | Type | Description |
|----------|------|-------------|
| `confidenceLevel` | `number` |  |
| `lowerBound` | `number` |  |
| `ratio` | `number` |  |
| `upperBound` | `number` |  |

### `GoogleCloudDialogflowCxV3ExperimentResultMetric`

| Property | Type | Description |
|----------|------|-------------|
| `confidenceInterval` | `GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval` |  |
| `count` | `number` |  |
| `countType` | `string` |  |
| `ratio` | `number` |  |
| `type` | `string` |  |

### `GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `metrics` | `array<GoogleCloudDialogflowCxV3ExperimentResultMetric>` |  |
| `sessionCount` | `integer` |  |
| `version` | `string` |  |

### `GoogleCloudDialogflowCxV3ExportAgentRequest`

| Property | Type | Description |
|----------|------|-------------|
| `agentUri` | `string` |  |
| `dataFormat` | `string` |  |
| `environment` | `string` |  |
| `gitDestination` | `GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination` |  |
| `includeBigqueryExportSettings` | `boolean` |  |

### `GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination`

| Property | Type | Description |
|----------|------|-------------|
| `commitMessage` | `string` |  |
| `trackingBranch` | `string` |  |

### `GoogleCloudDialogflowCxV3ExportAgentResponse`

| Property | Type | Description |
|----------|------|-------------|
| `agentContent` | `string` |  |
| `agentUri` | `string` |  |
| `commitSha` | `string` |  |

### `GoogleCloudDialogflowCxV3ExportEntityTypesMetadata`

### `GoogleCloudDialogflowCxV3ExportEntityTypesRequest`

| Property | Type | Description |
|----------|------|-------------|
| `dataFormat` | `string` |  |
| `entityTypes` | `array<string>` |  |
| `entityTypesContentInline` | `boolean` |  |
| `entityTypesUri` | `string` |  |
| `languageCode` | `string` |  |

### `GoogleCloudDialogflowCxV3ExportEntityTypesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entityTypesContent` | `GoogleCloudDialogflowCxV3InlineDestination` |  |
| `entityTypesUri` | `string` |  |

### `GoogleCloudDialogflowCxV3ExportFlowRequest`

| Property | Type | Description |
|----------|------|-------------|
| `flowUri` | `string` |  |
| `includeReferencedFlows` | `boolean` |  |

### `GoogleCloudDialogflowCxV3ExportFlowResponse`

| Property | Type | Description |
|----------|------|-------------|
| `flowContent` | `string` |  |
| `flowUri` | `string` |  |

### `GoogleCloudDialogflowCxV3ExportIntentsMetadata`

### `GoogleCloudDialogflowCxV3ExportIntentsRequest`

| Property | Type | Description |
|----------|------|-------------|
| `dataFormat` | `string` |  |
| `intents` | `array<string>` |  |
| `intentsContentInline` | `boolean` |  |
| `intentsUri` | `string` |  |

### `GoogleCloudDialogflowCxV3ExportIntentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `intentsContent` | `GoogleCloudDialogflowCxV3InlineDestination` |  |
| `intentsUri` | `string` |  |

### `GoogleCloudDialogflowCxV3ExportPlaybookRequest`

| Property | Type | Description |
|----------|------|-------------|
| `dataFormat` | `string` |  |
| `playbookUri` | `string` |  |

### `GoogleCloudDialogflowCxV3ExportTestCasesMetadata`

### `GoogleCloudDialogflowCxV3ExportTestCasesRequest`

| Property | Type | Description |
|----------|------|-------------|
| `dataFormat` | `string` |  |
| `filter` | `string` |  |
| `gcsUri` | `string` |  |

### `GoogleCloudDialogflowCxV3ExportTestCasesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` |  |
| `gcsUri` | `string` |  |

### `GoogleCloudDialogflowCxV3FilterSpecs`

| Property | Type | Description |
|----------|------|-------------|
| `dataStores` | `array<string>` |  |
| `filter` | `string` |  |

### `GoogleCloudDialogflowCxV3Flow`

| Property | Type | Description |
|----------|------|-------------|
| `advancedSettings` | `GoogleCloudDialogflowCxV3AdvancedSettings` |  |
| `description` | `string` |  |
| `displayName` | `string` |  |
| `eventHandlers` | `array<GoogleCloudDialogflowCxV3EventHandler>` |  |
| `inputParameterDefinitions` | `array<GoogleCloudDialogflowCxV3ParameterDefinition>` |  |
| `knowledgeConnectorSettings` | `GoogleCloudDialogflowCxV3KnowledgeConnectorSettings` |  |
| `locked` | `boolean` |  |
| `multiLanguageSettings` | `GoogleCloudDialogflowCxV3FlowMultiLanguageSettings` |  |
| `name` | `string` |  |
| `nluSettings` | `GoogleCloudDialogflowCxV3NluSettings` |  |
| `outputParameterDefinitions` | `array<GoogleCloudDialogflowCxV3ParameterDefinition>` |  |
| `transitionRouteGroups` | `array<string>` |  |
| `transitionRoutes` | `array<GoogleCloudDialogflowCxV3TransitionRoute>` |  |

### `GoogleCloudDialogflowCxV3FlowImportStrategy`

| Property | Type | Description |
|----------|------|-------------|
| `globalImportStrategy` | `string` |  |

### `GoogleCloudDialogflowCxV3FlowInvocation`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` |  |
| `flow` | `string` |  |
| `flowState` | `string` |  |

### `GoogleCloudDialogflowCxV3FlowMultiLanguageSettings`

| Property | Type | Description |
|----------|------|-------------|
| `enableMultiLanguageDetection` | `boolean` |  |
| `supportedResponseLanguageCodes` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3FlowTransition`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` |  |
| `flow` | `string` |  |

### `GoogleCloudDialogflowCxV3FlowValidationResult`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |
| `updateTime` | `string` |  |
| `validationMessages` | `array<GoogleCloudDialogflowCxV3ValidationMessage>` |  |

### `GoogleCloudDialogflowCxV3Form`

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `array<GoogleCloudDialogflowCxV3FormParameter>` |  |

### `GoogleCloudDialogflowCxV3FormParameter`

| Property | Type | Description |
|----------|------|-------------|
| `advancedSettings` | `GoogleCloudDialogflowCxV3AdvancedSettings` |  |
| `defaultValue` | `any` |  |
| `displayName` | `string` |  |
| `entityType` | `string` |  |
| `fillBehavior` | `GoogleCloudDialogflowCxV3FormParameterFillBehavior` |  |
| `isList` | `boolean` |  |
| `redact` | `boolean` |  |
| `required` | `boolean` |  |

### `GoogleCloudDialogflowCxV3FormParameterFillBehavior`

| Property | Type | Description |
|----------|------|-------------|
| `initialPromptFulfillment` | `GoogleCloudDialogflowCxV3Fulfillment` |  |
| `repromptEventHandlers` | `array<GoogleCloudDialogflowCxV3EventHandler>` |  |

### `GoogleCloudDialogflowCxV3FulfillIntentRequest`

| Property | Type | Description |
|----------|------|-------------|
| `match` | `GoogleCloudDialogflowCxV3Match` |  |
| `matchIntentRequest` | `GoogleCloudDialogflowCxV3MatchIntentRequest` |  |
| `outputAudioConfig` | `GoogleCloudDialogflowCxV3OutputAudioConfig` |  |

### `GoogleCloudDialogflowCxV3FulfillIntentResponse`

| Property | Type | Description |
|----------|------|-------------|
| `outputAudio` | `string` |  |
| `outputAudioConfig` | `GoogleCloudDialogflowCxV3OutputAudioConfig` |  |
| `queryResult` | `GoogleCloudDialogflowCxV3QueryResult` |  |
| `responseId` | `string` |  |

### `GoogleCloudDialogflowCxV3Fulfillment`

| Property | Type | Description |
|----------|------|-------------|
| `advancedSettings` | `GoogleCloudDialogflowCxV3AdvancedSettings` |  |
| `conditionalCases` | `array<GoogleCloudDialogflowCxV3FulfillmentConditionalCases>` |  |
| `enableGenerativeFallback` | `boolean` |  |
| `generators` | `array<GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings>` |  |
| `messages` | `array<GoogleCloudDialogflowCxV3ResponseMessage>` |  |
| `returnPartialResponses` | `boolean` |  |
| `setParameterActions` | `array<GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>` |  |
| `tag` | `string` |  |
| `webhook` | `string` |  |

### `GoogleCloudDialogflowCxV3FulfillmentConditionalCases`

| Property | Type | Description |
|----------|------|-------------|
| `cases` | `array<GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase>` |  |

### `GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase`

| Property | Type | Description |
|----------|------|-------------|
| `caseContent` | `array<GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>` |  |
| `condition` | `string` |  |

### `GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent`

| Property | Type | Description |
|----------|------|-------------|
| `additionalCases` | `GoogleCloudDialogflowCxV3FulfillmentConditionalCases` |  |
| `message` | `GoogleCloudDialogflowCxV3ResponseMessage` |  |

### `GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings`

| Property | Type | Description |
|----------|------|-------------|
| `generator` | `string` |  |
| `inputParameters` | `object` |  |
| `outputParameter` | `string` |  |

### `GoogleCloudDialogflowCxV3FulfillmentSetParameterAction`

| Property | Type | Description |
|----------|------|-------------|
| `parameter` | `string` |  |
| `value` | `any` |  |

### `GoogleCloudDialogflowCxV3GcsDestination`

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` |  |

### `GoogleCloudDialogflowCxV3GenerativeSettings`

| Property | Type | Description |
|----------|------|-------------|
| `fallbackSettings` | `GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings` |  |
| `generativeSafetySettings` | `GoogleCloudDialogflowCxV3SafetySettings` |  |
| `knowledgeConnectorSettings` | `GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings` |  |
| `languageCode` | `string` |  |
| `llmModelSettings` | `GoogleCloudDialogflowCxV3LlmModelSettings` |  |
| `name` | `string` |  |

### `GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings`

| Property | Type | Description |
|----------|------|-------------|
| `promptTemplates` | `array<GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate>` |  |
| `selectedPrompt` | `string` |  |

### `GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` |  |
| `frozen` | `boolean` |  |
| `promptText` | `string` |  |

### `GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings`

| Property | Type | Description |
|----------|------|-------------|
| `agent` | `string` |  |
| `agentIdentity` | `string` |  |
| `agentScope` | `string` |  |
| `business` | `string` |  |
| `businessDescription` | `string` |  |
| `disableDataStoreFallback` | `boolean` |  |

### `GoogleCloudDialogflowCxV3Generator`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` |  |
| `llmModelSettings` | `GoogleCloudDialogflowCxV3LlmModelSettings` |  |
| `modelParameter` | `GoogleCloudDialogflowCxV3GeneratorModelParameter` |  |
| `name` | `string` |  |
| `placeholders` | `array<GoogleCloudDialogflowCxV3GeneratorPlaceholder>` |  |
| `promptText` | `GoogleCloudDialogflowCxV3Phrase` |  |

### `GoogleCloudDialogflowCxV3GeneratorModelParameter`

| Property | Type | Description |
|----------|------|-------------|
| `maxDecodeSteps` | `integer` |  |
| `temperature` | `number` |  |
| `topK` | `integer` |  |
| `topP` | `number` |  |

### `GoogleCloudDialogflowCxV3GeneratorPlaceholder`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` |  |
| `name` | `string` |  |

### `GoogleCloudDialogflowCxV3Handler`

| Property | Type | Description |
|----------|------|-------------|
| `eventHandler` | `GoogleCloudDialogflowCxV3HandlerEventHandler` |  |
| `lifecycleHandler` | `GoogleCloudDialogflowCxV3HandlerLifecycleHandler` |  |

### `GoogleCloudDialogflowCxV3HandlerEventHandler`

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` |  |
| `event` | `string` |  |
| `fulfillment` | `GoogleCloudDialogflowCxV3Fulfillment` |  |

### `GoogleCloudDialogflowCxV3HandlerLifecycleHandler`

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` |  |
| `fulfillment` | `GoogleCloudDialogflowCxV3Fulfillment` |  |
| `lifecycleStage` | `string` |  |

### `GoogleCloudDialogflowCxV3ImportEntityTypesMetadata`

### `GoogleCloudDialogflowCxV3ImportEntityTypesRequest`

| Property | Type | Description |
|----------|------|-------------|
| `entityTypesContent` | `GoogleCloudDialogflowCxV3InlineSource` |  |
| `entityTypesUri` | `string` |  |
| `mergeOption` | `string` |  |
| `targetEntityType` | `string` |  |

### `GoogleCloudDialogflowCxV3ImportEntityTypesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `conflictingResources` | `GoogleCloudDialogflowCxV3ImportEntityTypesResponseConflictingResources` |  |
| `entityTypes` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3ImportEntityTypesResponseConflictingResources`

| Property | Type | Description |
|----------|------|-------------|
| `entityDisplayNames` | `array<string>` |  |
| `entityTypeDisplayNames` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3ImportFlowRequest`

| Property | Type | Description |
|----------|------|-------------|
| `flowContent` | `string` |  |
| `flowImportStrategy` | `GoogleCloudDialogflowCxV3FlowImportStrategy` |  |
| `flowUri` | `string` |  |
| `importOption` | `string` |  |

### `GoogleCloudDialogflowCxV3ImportFlowResponse`

| Property | Type | Description |
|----------|------|-------------|
| `flow` | `string` |  |

### `GoogleCloudDialogflowCxV3ImportIntentsMetadata`

### `GoogleCloudDialogflowCxV3ImportIntentsRequest`

| Property | Type | Description |
|----------|------|-------------|
| `intentsContent` | `GoogleCloudDialogflowCxV3InlineSource` |  |
| `intentsUri` | `string` |  |
| `mergeOption` | `string` |  |

### `GoogleCloudDialogflowCxV3ImportIntentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `conflictingResources` | `GoogleCloudDialogflowCxV3ImportIntentsResponseConflictingResources` |  |
| `intents` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3ImportIntentsResponseConflictingResources`

| Property | Type | Description |
|----------|------|-------------|
| `entityDisplayNames` | `array<string>` |  |
| `intentDisplayNames` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3ImportPlaybookRequest`

| Property | Type | Description |
|----------|------|-------------|
| `importStrategy` | `GoogleCloudDialogflowCxV3PlaybookImportStrategy` |  |
| `playbookContent` | `string` |  |
| `playbookUri` | `string` |  |

### `GoogleCloudDialogflowCxV3ImportTestCasesMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<GoogleCloudDialogflowCxV3TestCaseError>` |  |

### `GoogleCloudDialogflowCxV3ImportTestCasesRequest`

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` |  |
| `gcsUri` | `string` |  |

### `GoogleCloudDialogflowCxV3ImportTestCasesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `names` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3InlineDestination`

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` |  |

### `GoogleCloudDialogflowCxV3InlineSchema`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `GoogleCloudDialogflowCxV3TypeSchema` |  |
| `type` | `string` |  |

### `GoogleCloudDialogflowCxV3InlineSource`

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` |  |

### `GoogleCloudDialogflowCxV3InputAudioConfig`

| Property | Type | Description |
|----------|------|-------------|
| `audioEncoding` | `string` |  |
| `bargeInConfig` | `GoogleCloudDialogflowCxV3BargeInConfig` |  |
| `enableWordInfo` | `boolean` |  |
| `model` | `string` |  |
| `modelVariant` | `string` |  |
| `optOutConformerModelMigration` | `boolean` |  |
| `phraseHints` | `array<string>` |  |
| `sampleRateHertz` | `integer` |  |
| `singleUtterance` | `boolean` |  |

### `GoogleCloudDialogflowCxV3Intent`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `displayName` | `string` |  |
| `isFallback` | `boolean` |  |
| `labels` | `object` |  |
| `name` | `string` |  |
| `parameters` | `array<GoogleCloudDialogflowCxV3IntentParameter>` |  |
| `priority` | `integer` |  |
| `trainingPhrases` | `array<GoogleCloudDialogflowCxV3IntentTrainingPhrase>` |  |

### `GoogleCloudDialogflowCxV3IntentCoverage`

| Property | Type | Description |
|----------|------|-------------|
| `coverageScore` | `number` |  |
| `intents` | `array<GoogleCloudDialogflowCxV3IntentCoverageIntent>` |  |

### `GoogleCloudDialogflowCxV3IntentCoverageIntent`

| Property | Type | Description |
|----------|------|-------------|
| `covered` | `boolean` |  |
| `intent` | `string` |  |

### `GoogleCloudDialogflowCxV3IntentInput`

| Property | Type | Description |
|----------|------|-------------|
| `intent` | `string` |  |

### `GoogleCloudDialogflowCxV3IntentParameter`

| Property | Type | Description |
|----------|------|-------------|
| `entityType` | `string` |  |
| `id` | `string` |  |
| `isList` | `boolean` |  |
| `redact` | `boolean` |  |

### `GoogleCloudDialogflowCxV3IntentTrainingPhrase`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` |  |
| `parts` | `array<GoogleCloudDialogflowCxV3IntentTrainingPhrasePart>` |  |
| `repeatCount` | `integer` |  |

### `GoogleCloudDialogflowCxV3IntentTrainingPhrasePart`

| Property | Type | Description |
|----------|------|-------------|
| `parameterId` | `string` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowCxV3KnowledgeConnectorSettings`

| Property | Type | Description |
|----------|------|-------------|
| `dataStoreConnections` | `array<GoogleCloudDialogflowCxV3DataStoreConnection>` |  |
| `enabled` | `boolean` |  |
| `targetFlow` | `string` |  |
| `targetPage` | `string` |  |
| `triggerFulfillment` | `GoogleCloudDialogflowCxV3Fulfillment` |  |

### `GoogleCloudDialogflowCxV3LanguageInfo`

| Property | Type | Description |
|----------|------|-------------|
| `confidenceScore` | `number` |  |
| `inputLanguageCode` | `string` |  |
| `resolvedLanguageCode` | `string` |  |

### `GoogleCloudDialogflowCxV3ListAgentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `agents` | `array<GoogleCloudDialogflowCxV3Agent>` |  |
| `nextPageToken` | `string` |  |

### `GoogleCloudDialogflowCxV3ListChangelogsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `changelogs` | `array<GoogleCloudDialogflowCxV3Changelog>` |  |
| `nextPageToken` | `string` |  |

### `GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `continuousTestResults` | `array<GoogleCloudDialogflowCxV3ContinuousTestResult>` |  |
| `nextPageToken` | `string` |  |

### `GoogleCloudDialogflowCxV3ListDeploymentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `deployments` | `array<GoogleCloudDialogflowCxV3Deployment>` |  |
| `nextPageToken` | `string` |  |

### `GoogleCloudDialogflowCxV3ListEntityTypesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entityTypes` | `array<GoogleCloudDialogflowCxV3EntityType>` |  |
| `nextPageToken` | `string` |  |

### `GoogleCloudDialogflowCxV3ListEnvironmentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `environments` | `array<GoogleCloudDialogflowCxV3Environment>` |  |
| `nextPageToken` | `string` |  |

### `GoogleCloudDialogflowCxV3ListExamplesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `examples` | `array<GoogleCloudDialogflowCxV3Example>` |  |
| `nextPageToken` | `string` |  |

### `GoogleCloudDialogflowCxV3ListExperimentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `experiments` | `array<GoogleCloudDialogflowCxV3Experiment>` |  |
| `nextPageToken` | `string` |  |

### `GoogleCloudDialogflowCxV3ListFlowsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `flows` | `array<GoogleCloudDialogflowCxV3Flow>` |  |
| `nextPageToken` | `string` |  |

### `GoogleCloudDialogflowCxV3ListGeneratorsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `generators` | `array<GoogleCloudDialogflowCxV3Generator>` |  |
| `nextPageToken` | `string` |  |

### `GoogleCloudDialogflowCxV3ListIntentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `intents` | `array<GoogleCloudDialogflowCxV3Intent>` |  |
| `nextPageToken` | `string` |  |

### `GoogleCloudDialogflowCxV3ListPagesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `pages` | `array<GoogleCloudDialogflowCxV3Page>` |  |

### `GoogleCloudDialogflowCxV3ListPlaybookVersionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `playbookVersions` | `array<GoogleCloudDialogflowCxV3PlaybookVersion>` |  |

### `GoogleCloudDialogflowCxV3ListPlaybooksResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `playbooks` | `array<GoogleCloudDialogflowCxV3Playbook>` |  |

### `GoogleCloudDialogflowCxV3ListSecuritySettingsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `securitySettings` | `array<GoogleCloudDialogflowCxV3SecuritySettings>` |  |

### `GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `sessionEntityTypes` | `array<GoogleCloudDialogflowCxV3SessionEntityType>` |  |

### `GoogleCloudDialogflowCxV3ListTestCaseResultsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `testCaseResults` | `array<GoogleCloudDialogflowCxV3TestCaseResult>` |  |

### `GoogleCloudDialogflowCxV3ListTestCasesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `testCases` | `array<GoogleCloudDialogflowCxV3TestCase>` |  |

### `GoogleCloudDialogflowCxV3ListToolVersionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `toolVersions` | `array<GoogleCloudDialogflowCxV3ToolVersion>` |  |

### `GoogleCloudDialogflowCxV3ListToolsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `tools` | `array<GoogleCloudDialogflowCxV3Tool>` |  |

### `GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `transitionRouteGroups` | `array<GoogleCloudDialogflowCxV3TransitionRouteGroup>` |  |

### `GoogleCloudDialogflowCxV3ListVersionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `versions` | `array<GoogleCloudDialogflowCxV3Version>` |  |

### `GoogleCloudDialogflowCxV3ListWebhooksResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `webhooks` | `array<GoogleCloudDialogflowCxV3Webhook>` |  |

### `GoogleCloudDialogflowCxV3LlmModelSettings`

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` |  |
| `promptText` | `string` |  |

### `GoogleCloudDialogflowCxV3LoadVersionRequest`

| Property | Type | Description |
|----------|------|-------------|
| `allowOverrideAgentResources` | `boolean` |  |

### `GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse`

| Property | Type | Description |
|----------|------|-------------|
| `environments` | `array<GoogleCloudDialogflowCxV3Environment>` |  |
| `nextPageToken` | `string` |  |

### `GoogleCloudDialogflowCxV3Match`

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` |  |
| `event` | `string` |  |
| `intent` | `GoogleCloudDialogflowCxV3Intent` |  |
| `matchType` | `string` |  |
| `parameters` | `object` |  |
| `resolvedInput` | `string` |  |

### `GoogleCloudDialogflowCxV3MatchIntentRequest`

| Property | Type | Description |
|----------|------|-------------|
| `persistParameterChanges` | `boolean` |  |
| `queryInput` | `GoogleCloudDialogflowCxV3QueryInput` |  |
| `queryParams` | `GoogleCloudDialogflowCxV3QueryParameters` |  |

### `GoogleCloudDialogflowCxV3MatchIntentResponse`

| Property | Type | Description |
|----------|------|-------------|
| `currentPage` | `GoogleCloudDialogflowCxV3Page` |  |
| `matches` | `array<GoogleCloudDialogflowCxV3Match>` |  |
| `text` | `string` |  |
| `transcript` | `string` |  |
| `triggerEvent` | `string` |  |
| `triggerIntent` | `string` |  |

### `GoogleCloudDialogflowCxV3NluSettings`

| Property | Type | Description |
|----------|------|-------------|
| `classificationThreshold` | `number` |  |
| `modelTrainingMode` | `string` |  |
| `modelType` | `string` |  |

### `GoogleCloudDialogflowCxV3OutputAudioConfig`

| Property | Type | Description |
|----------|------|-------------|
| `audioEncoding` | `string` |  |
| `sampleRateHertz` | `integer` |  |
| `synthesizeSpeechConfig` | `GoogleCloudDialogflowCxV3SynthesizeSpeechConfig` |  |

### `GoogleCloudDialogflowCxV3Page`

| Property | Type | Description |
|----------|------|-------------|
| `advancedSettings` | `GoogleCloudDialogflowCxV3AdvancedSettings` |  |
| `description` | `string` |  |
| `displayName` | `string` |  |
| `entryFulfillment` | `GoogleCloudDialogflowCxV3Fulfillment` |  |
| `eventHandlers` | `array<GoogleCloudDialogflowCxV3EventHandler>` |  |
| `form` | `GoogleCloudDialogflowCxV3Form` |  |
| `knowledgeConnectorSettings` | `GoogleCloudDialogflowCxV3KnowledgeConnectorSettings` |  |
| `name` | `string` |  |
| `transitionRouteGroups` | `array<string>` |  |
| `transitionRoutes` | `array<GoogleCloudDialogflowCxV3TransitionRoute>` |  |

### `GoogleCloudDialogflowCxV3PageInfo`

| Property | Type | Description |
|----------|------|-------------|
| `currentPage` | `string` |  |
| `displayName` | `string` |  |
| `formInfo` | `GoogleCloudDialogflowCxV3PageInfoFormInfo` |  |

### `GoogleCloudDialogflowCxV3PageInfoFormInfo`

| Property | Type | Description |
|----------|------|-------------|
| `parameterInfo` | `array<GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo>` |  |

### `GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` |  |
| `justCollected` | `boolean` |  |
| `required` | `boolean` |  |
| `state` | `string` |  |
| `value` | `any` |  |

### `GoogleCloudDialogflowCxV3ParameterDefinition`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `name` | `string` |  |
| `type` | `string` |  |
| `typeSchema` | `GoogleCloudDialogflowCxV3TypeSchema` |  |

### `GoogleCloudDialogflowCxV3Phrase`

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` |  |

### `GoogleCloudDialogflowCxV3Playbook`

| Property | Type | Description |
|----------|------|-------------|
| `codeBlock` | `GoogleCloudDialogflowCxV3CodeBlock` |  |
| `createTime` | `string` |  |
| `displayName` | `string` |  |
| `goal` | `string` |  |
| `handlers` | `array<GoogleCloudDialogflowCxV3Handler>` |  |
| `inlineActions` | `array<string>` |  |
| `inputParameterDefinitions` | `array<GoogleCloudDialogflowCxV3ParameterDefinition>` |  |
| `instruction` | `GoogleCloudDialogflowCxV3PlaybookInstruction` |  |
| `llmModelSettings` | `GoogleCloudDialogflowCxV3LlmModelSettings` |  |
| `name` | `string` |  |
| `outputParameterDefinitions` | `array<GoogleCloudDialogflowCxV3ParameterDefinition>` |  |
| `playbookType` | `string` |  |
| `referencedFlows` | `array<string>` |  |
| `referencedPlaybooks` | `array<string>` |  |
| `referencedTools` | `array<string>` |  |
| `tokenCount` | `string` |  |
| `updateTime` | `string` |  |

### `GoogleCloudDialogflowCxV3PlaybookImportStrategy`

| Property | Type | Description |
|----------|------|-------------|
| `mainPlaybookImportStrategy` | `string` |  |
| `nestedResourceImportStrategy` | `string` |  |
| `toolImportStrategy` | `string` |  |

### `GoogleCloudDialogflowCxV3PlaybookInput`

| Property | Type | Description |
|----------|------|-------------|
| `precedingConversationSummary` | `string` |  |

### `GoogleCloudDialogflowCxV3PlaybookInstruction`

| Property | Type | Description |
|----------|------|-------------|
| `guidelines` | `string` |  |
| `steps` | `array<GoogleCloudDialogflowCxV3PlaybookStep>` |  |

### `GoogleCloudDialogflowCxV3PlaybookInvocation`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` |  |
| `playbook` | `string` |  |
| `playbookInput` | `GoogleCloudDialogflowCxV3PlaybookInput` |  |
| `playbookOutput` | `GoogleCloudDialogflowCxV3PlaybookOutput` |  |
| `playbookState` | `string` |  |

### `GoogleCloudDialogflowCxV3PlaybookOutput`

| Property | Type | Description |
|----------|------|-------------|
| `executionSummary` | `string` |  |

### `GoogleCloudDialogflowCxV3PlaybookStep`

| Property | Type | Description |
|----------|------|-------------|
| `steps` | `array<GoogleCloudDialogflowCxV3PlaybookStep>` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowCxV3PlaybookTransition`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` |  |
| `playbook` | `string` |  |

### `GoogleCloudDialogflowCxV3PlaybookVersion`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `examples` | `array<GoogleCloudDialogflowCxV3Example>` |  |
| `name` | `string` |  |
| `playbook` | `GoogleCloudDialogflowCxV3Playbook` |  |
| `updateTime` | `string` |  |

### `GoogleCloudDialogflowCxV3QueryInput`

| Property | Type | Description |
|----------|------|-------------|
| `audio` | `GoogleCloudDialogflowCxV3AudioInput` |  |
| `dtmf` | `GoogleCloudDialogflowCxV3DtmfInput` |  |
| `event` | `GoogleCloudDialogflowCxV3EventInput` |  |
| `intent` | `GoogleCloudDialogflowCxV3IntentInput` |  |
| `languageCode` | `string` |  |
| `text` | `GoogleCloudDialogflowCxV3TextInput` |  |
| `toolCallResult` | `GoogleCloudDialogflowCxV3ToolCallResult` |  |

### `GoogleCloudDialogflowCxV3QueryParameters`

| Property | Type | Description |
|----------|------|-------------|
| `analyzeQueryTextSentiment` | `boolean` |  |
| `channel` | `string` |  |
| `currentPage` | `string` |  |
| `currentPlaybook` | `string` |  |
| `disableWebhook` | `boolean` |  |
| `endUserMetadata` | `object` |  |
| `flowVersions` | `array<string>` |  |
| `geoLocation` | `GoogleTypeLatLng` |  |
| `llmModelSettings` | `GoogleCloudDialogflowCxV3LlmModelSettings` |  |
| `parameterScope` | `string` |  |
| `parameters` | `object` |  |
| `payload` | `object` |  |
| `populateDataStoreConnectionSignals` | `boolean` |  |
| `searchConfig` | `GoogleCloudDialogflowCxV3SearchConfig` |  |
| `sessionEntityTypes` | `array<GoogleCloudDialogflowCxV3SessionEntityType>` |  |
| `sessionTtl` | `string` |  |
| `timeZone` | `string` |  |
| `webhookHeaders` | `object` |  |

### `GoogleCloudDialogflowCxV3QueryResult`

| Property | Type | Description |
|----------|------|-------------|
| `advancedSettings` | `GoogleCloudDialogflowCxV3AdvancedSettings` |  |
| `allowAnswerFeedback` | `boolean` |  |
| `currentFlow` | `GoogleCloudDialogflowCxV3Flow` |  |
| `currentPage` | `GoogleCloudDialogflowCxV3Page` |  |
| `dataStoreConnectionSignals` | `GoogleCloudDialogflowCxV3DataStoreConnectionSignals` |  |
| `diagnosticInfo` | `object` |  |
| `dtmf` | `GoogleCloudDialogflowCxV3DtmfInput` |  |
| `intent` | `GoogleCloudDialogflowCxV3Intent` |  |
| `intentDetectionConfidence` | `number` |  |
| `languageCode` | `string` |  |
| `match` | `GoogleCloudDialogflowCxV3Match` |  |
| `parameters` | `object` |  |
| `responseMessages` | `array<GoogleCloudDialogflowCxV3ResponseMessage>` |  |
| `sentimentAnalysisResult` | `GoogleCloudDialogflowCxV3SentimentAnalysisResult` |  |
| `text` | `string` |  |
| `transcript` | `string` |  |
| `triggerEvent` | `string` |  |
| `triggerIntent` | `string` |  |
| `webhookPayloads` | `array<object>` |  |
| `webhookStatuses` | `array<GoogleRpcStatus>` |  |

### `GoogleCloudDialogflowCxV3ResourceName`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` |  |
| `name` | `string` |  |

### `GoogleCloudDialogflowCxV3ResponseMessage`

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` |  |
| `conversationSuccess` | `GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess` |  |
| `endInteraction` | `GoogleCloudDialogflowCxV3ResponseMessageEndInteraction` |  |
| `knowledgeInfoCard` | `GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard` |  |
| `liveAgentHandoff` | `GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff` |  |
| `mixedAudio` | `GoogleCloudDialogflowCxV3ResponseMessageMixedAudio` |  |
| `outputAudioText` | `GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText` |  |
| `payload` | `object` |  |
| `playAudio` | `GoogleCloudDialogflowCxV3ResponseMessagePlayAudio` |  |
| `responseType` | `string` |  |
| `telephonyTransferCall` | `GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall` |  |
| `text` | `GoogleCloudDialogflowCxV3ResponseMessageText` |  |
| `toolCall` | `GoogleCloudDialogflowCxV3ToolCall` |  |

### `GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess`

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` |  |

### `GoogleCloudDialogflowCxV3ResponseMessageEndInteraction`

### `GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard`

### `GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff`

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` |  |

### `GoogleCloudDialogflowCxV3ResponseMessageMixedAudio`

| Property | Type | Description |
|----------|------|-------------|
| `segments` | `array<GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment>` |  |

### `GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment`

| Property | Type | Description |
|----------|------|-------------|
| `allowPlaybackInterruption` | `boolean` |  |
| `audio` | `string` |  |
| `uri` | `string` |  |

### `GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText`

| Property | Type | Description |
|----------|------|-------------|
| `allowPlaybackInterruption` | `boolean` |  |
| `ssml` | `string` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowCxV3ResponseMessagePlayAudio`

| Property | Type | Description |
|----------|------|-------------|
| `allowPlaybackInterruption` | `boolean` |  |
| `audioUri` | `string` |  |

### `GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall`

| Property | Type | Description |
|----------|------|-------------|
| `phoneNumber` | `string` |  |

### `GoogleCloudDialogflowCxV3ResponseMessageText`

| Property | Type | Description |
|----------|------|-------------|
| `allowPlaybackInterruption` | `boolean` |  |
| `text` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3RestoreAgentRequest`

| Property | Type | Description |
|----------|------|-------------|
| `agentContent` | `string` |  |
| `agentUri` | `string` |  |
| `gitSource` | `GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource` |  |
| `restoreOption` | `string` |  |

### `GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource`

| Property | Type | Description |
|----------|------|-------------|
| `trackingBranch` | `string` |  |

### `GoogleCloudDialogflowCxV3RestorePlaybookVersionRequest`

### `GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse`

| Property | Type | Description |
|----------|------|-------------|
| `playbook` | `GoogleCloudDialogflowCxV3Playbook` |  |

### `GoogleCloudDialogflowCxV3RestoreToolVersionRequest`

### `GoogleCloudDialogflowCxV3RestoreToolVersionResponse`

| Property | Type | Description |
|----------|------|-------------|
| `tool` | `GoogleCloudDialogflowCxV3Tool` |  |

### `GoogleCloudDialogflowCxV3RolloutConfig`

| Property | Type | Description |
|----------|------|-------------|
| `failureCondition` | `string` |  |
| `rolloutCondition` | `string` |  |
| `rolloutSteps` | `array<GoogleCloudDialogflowCxV3RolloutConfigRolloutStep>` |  |

### `GoogleCloudDialogflowCxV3RolloutConfigRolloutStep`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` |  |
| `minDuration` | `string` |  |
| `trafficPercent` | `integer` |  |

### `GoogleCloudDialogflowCxV3RolloutState`

| Property | Type | Description |
|----------|------|-------------|
| `startTime` | `string` |  |
| `step` | `string` |  |
| `stepIndex` | `integer` |  |

### `GoogleCloudDialogflowCxV3RunContinuousTestMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<GoogleCloudDialogflowCxV3TestError>` |  |

### `GoogleCloudDialogflowCxV3RunContinuousTestRequest`

### `GoogleCloudDialogflowCxV3RunContinuousTestResponse`

| Property | Type | Description |
|----------|------|-------------|
| `continuousTestResult` | `GoogleCloudDialogflowCxV3ContinuousTestResult` |  |

### `GoogleCloudDialogflowCxV3RunTestCaseMetadata`

### `GoogleCloudDialogflowCxV3RunTestCaseRequest`

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `string` |  |

### `GoogleCloudDialogflowCxV3RunTestCaseResponse`

| Property | Type | Description |
|----------|------|-------------|
| `result` | `GoogleCloudDialogflowCxV3TestCaseResult` |  |

### `GoogleCloudDialogflowCxV3SafetySettings`

| Property | Type | Description |
|----------|------|-------------|
| `bannedPhrases` | `array<GoogleCloudDialogflowCxV3SafetySettingsPhrase>` |  |
| `defaultBannedPhraseMatchStrategy` | `string` |  |
| `defaultRaiSettings` | `GoogleCloudDialogflowCxV3SafetySettingsRaiSettings` |  |
| `promptSecuritySettings` | `GoogleCloudDialogflowCxV3SafetySettingsPromptSecuritySettings` |  |
| `raiSettings` | `GoogleCloudDialogflowCxV3SafetySettingsRaiSettings` |  |

### `GoogleCloudDialogflowCxV3SafetySettingsPhrase`

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowCxV3SafetySettingsPromptSecuritySettings`

| Property | Type | Description |
|----------|------|-------------|
| `enablePromptSecurity` | `boolean` |  |

### `GoogleCloudDialogflowCxV3SafetySettingsRaiSettings`

| Property | Type | Description |
|----------|------|-------------|
| `categoryFilters` | `array<GoogleCloudDialogflowCxV3SafetySettingsRaiSettingsCategoryFilter>` |  |

### `GoogleCloudDialogflowCxV3SafetySettingsRaiSettingsCategoryFilter`

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` |  |
| `filterLevel` | `string` |  |

### `GoogleCloudDialogflowCxV3SearchConfig`

| Property | Type | Description |
|----------|------|-------------|
| `boostSpecs` | `array<GoogleCloudDialogflowCxV3BoostSpecs>` |  |
| `filterSpecs` | `array<GoogleCloudDialogflowCxV3FilterSpecs>` |  |

### `GoogleCloudDialogflowCxV3SecuritySettings`

| Property | Type | Description |
|----------|------|-------------|
| `audioExportSettings` | `GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings` |  |
| `deidentifyTemplate` | `string` |  |
| `displayName` | `string` |  |
| `insightsExportSettings` | `GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings` |  |
| `inspectTemplate` | `string` |  |
| `name` | `string` |  |
| `purgeDataTypes` | `array<string>` |  |
| `redactionScope` | `string` |  |
| `redactionStrategy` | `string` |  |
| `retentionStrategy` | `string` |  |
| `retentionWindowDays` | `integer` |  |

### `GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings`

| Property | Type | Description |
|----------|------|-------------|
| `audioExportPattern` | `string` |  |
| `audioFormat` | `string` |  |
| `enableAudioRedaction` | `boolean` |  |
| `gcsBucket` | `string` |  |
| `storeTtsAudio` | `boolean` |  |

### `GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings`

| Property | Type | Description |
|----------|------|-------------|
| `enableInsightsExport` | `boolean` |  |

### `GoogleCloudDialogflowCxV3SentimentAnalysisResult`

| Property | Type | Description |
|----------|------|-------------|
| `magnitude` | `number` |  |
| `score` | `number` |  |

### `GoogleCloudDialogflowCxV3SessionEntityType`

| Property | Type | Description |
|----------|------|-------------|
| `entities` | `array<GoogleCloudDialogflowCxV3EntityTypeEntity>` |  |
| `entityOverrideMode` | `string` |  |
| `name` | `string` |  |

### `GoogleCloudDialogflowCxV3SessionInfo`

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `object` |  |
| `session` | `string` |  |

### `GoogleCloudDialogflowCxV3SpeechToTextSettings`

| Property | Type | Description |
|----------|------|-------------|
| `enableSpeechAdaptation` | `boolean` |  |

### `GoogleCloudDialogflowCxV3StartExperimentRequest`

### `GoogleCloudDialogflowCxV3StopExperimentRequest`

### `GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest`

| Property | Type | Description |
|----------|------|-------------|
| `answerFeedback` | `GoogleCloudDialogflowCxV3AnswerFeedback` |  |
| `responseId` | `string` |  |
| `updateMask` | `string` |  |

### `GoogleCloudDialogflowCxV3SynthesizeSpeechConfig`

| Property | Type | Description |
|----------|------|-------------|
| `effectsProfileId` | `array<string>` |  |
| `pitch` | `number` |  |
| `speakingRate` | `number` |  |
| `voice` | `GoogleCloudDialogflowCxV3VoiceSelectionParams` |  |
| `volumeGainDb` | `number` |  |

### `GoogleCloudDialogflowCxV3TestCase`

| Property | Type | Description |
|----------|------|-------------|
| `creationTime` | `string` |  |
| `displayName` | `string` |  |
| `lastTestResult` | `GoogleCloudDialogflowCxV3TestCaseResult` |  |
| `name` | `string` |  |
| `notes` | `string` |  |
| `tags` | `array<string>` |  |
| `testCaseConversationTurns` | `array<GoogleCloudDialogflowCxV3ConversationTurn>` |  |
| `testConfig` | `GoogleCloudDialogflowCxV3TestConfig` |  |

### `GoogleCloudDialogflowCxV3TestCaseError`

| Property | Type | Description |
|----------|------|-------------|
| `status` | `GoogleRpcStatus` |  |
| `testCase` | `GoogleCloudDialogflowCxV3TestCase` |  |

### `GoogleCloudDialogflowCxV3TestCaseResult`

| Property | Type | Description |
|----------|------|-------------|
| `conversationTurns` | `array<GoogleCloudDialogflowCxV3ConversationTurn>` |  |
| `environment` | `string` |  |
| `name` | `string` |  |
| `testResult` | `string` |  |
| `testTime` | `string` |  |

### `GoogleCloudDialogflowCxV3TestConfig`

| Property | Type | Description |
|----------|------|-------------|
| `flow` | `string` |  |
| `page` | `string` |  |
| `trackingParameters` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3TestError`

| Property | Type | Description |
|----------|------|-------------|
| `status` | `GoogleRpcStatus` |  |
| `testCase` | `string` |  |
| `testTime` | `string` |  |

### `GoogleCloudDialogflowCxV3TestRunDifference`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `type` | `string` |  |

### `GoogleCloudDialogflowCxV3TextInput`

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` |  |

### `GoogleCloudDialogflowCxV3TextToSpeechSettings`

| Property | Type | Description |
|----------|------|-------------|
| `synthesizeSpeechConfigs` | `object` |  |

### `GoogleCloudDialogflowCxV3Tool`

| Property | Type | Description |
|----------|------|-------------|
| `dataStoreSpec` | `GoogleCloudDialogflowCxV3ToolDataStoreTool` |  |
| `description` | `string` |  |
| `displayName` | `string` |  |
| `functionSpec` | `GoogleCloudDialogflowCxV3ToolFunctionTool` |  |
| `name` | `string` |  |
| `openApiSpec` | `GoogleCloudDialogflowCxV3ToolOpenApiTool` |  |
| `toolType` | `string` |  |

### `GoogleCloudDialogflowCxV3ToolAuthentication`

| Property | Type | Description |
|----------|------|-------------|
| `apiKeyConfig` | `GoogleCloudDialogflowCxV3ToolAuthenticationApiKeyConfig` |  |
| `bearerTokenConfig` | `GoogleCloudDialogflowCxV3ToolAuthenticationBearerTokenConfig` |  |
| `oauthConfig` | `GoogleCloudDialogflowCxV3ToolAuthenticationOAuthConfig` |  |
| `serviceAccountAuthConfig` | `GoogleCloudDialogflowCxV3ToolAuthenticationServiceAccountAuthConfig` |  |
| `serviceAgentAuthConfig` | `GoogleCloudDialogflowCxV3ToolAuthenticationServiceAgentAuthConfig` |  |

### `GoogleCloudDialogflowCxV3ToolAuthenticationApiKeyConfig`

| Property | Type | Description |
|----------|------|-------------|
| `apiKey` | `string` |  |
| `keyName` | `string` |  |
| `requestLocation` | `string` |  |
| `secretVersionForApiKey` | `string` |  |

### `GoogleCloudDialogflowCxV3ToolAuthenticationBearerTokenConfig`

| Property | Type | Description |
|----------|------|-------------|
| `secretVersionForToken` | `string` |  |
| `token` | `string` |  |

### `GoogleCloudDialogflowCxV3ToolAuthenticationOAuthConfig`

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` |  |
| `clientSecret` | `string` |  |
| `oauthGrantType` | `string` |  |
| `scopes` | `array<string>` |  |
| `secretVersionForClientSecret` | `string` |  |
| `tokenEndpoint` | `string` |  |

### `GoogleCloudDialogflowCxV3ToolAuthenticationServiceAccountAuthConfig`

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccount` | `string` |  |

### `GoogleCloudDialogflowCxV3ToolAuthenticationServiceAgentAuthConfig`

| Property | Type | Description |
|----------|------|-------------|
| `serviceAgentAuth` | `string` |  |

### `GoogleCloudDialogflowCxV3ToolCall`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `inputParameters` | `object` |  |
| `tool` | `string` |  |

### `GoogleCloudDialogflowCxV3ToolCallResult`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `error` | `GoogleCloudDialogflowCxV3ToolCallResultError` |  |
| `outputParameters` | `object` |  |
| `tool` | `string` |  |

### `GoogleCloudDialogflowCxV3ToolCallResultError`

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` |  |

### `GoogleCloudDialogflowCxV3ToolDataStoreTool`

| Property | Type | Description |
|----------|------|-------------|
| `dataStoreConnections` | `array<GoogleCloudDialogflowCxV3DataStoreConnection>` |  |
| `fallbackPrompt` | `GoogleCloudDialogflowCxV3ToolDataStoreToolFallbackPrompt` |  |

### `GoogleCloudDialogflowCxV3ToolDataStoreToolFallbackPrompt`

### `GoogleCloudDialogflowCxV3ToolFunctionTool`

| Property | Type | Description |
|----------|------|-------------|
| `inputSchema` | `object` |  |
| `outputSchema` | `object` |  |

### `GoogleCloudDialogflowCxV3ToolOpenApiTool`

| Property | Type | Description |
|----------|------|-------------|
| `authentication` | `GoogleCloudDialogflowCxV3ToolAuthentication` |  |
| `serviceDirectoryConfig` | `GoogleCloudDialogflowCxV3ToolServiceDirectoryConfig` |  |
| `textSchema` | `string` |  |
| `tlsConfig` | `GoogleCloudDialogflowCxV3ToolTLSConfig` |  |

### `GoogleCloudDialogflowCxV3ToolServiceDirectoryConfig`

| Property | Type | Description |
|----------|------|-------------|
| `service` | `string` |  |

### `GoogleCloudDialogflowCxV3ToolTLSConfig`

| Property | Type | Description |
|----------|------|-------------|
| `caCerts` | `array<GoogleCloudDialogflowCxV3ToolTLSConfigCACert>` |  |

### `GoogleCloudDialogflowCxV3ToolTLSConfigCACert`

| Property | Type | Description |
|----------|------|-------------|
| `cert` | `string` |  |
| `displayName` | `string` |  |

### `GoogleCloudDialogflowCxV3ToolUse`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `displayName` | `string` |  |
| `inputActionParameters` | `object` |  |
| `outputActionParameters` | `object` |  |
| `tool` | `string` |  |

### `GoogleCloudDialogflowCxV3ToolVersion`

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` |  |
| `displayName` | `string` |  |
| `name` | `string` |  |
| `tool` | `GoogleCloudDialogflowCxV3Tool` |  |
| `updateTime` | `string` |  |

### `GoogleCloudDialogflowCxV3TrainFlowRequest`

### `GoogleCloudDialogflowCxV3TransitionCoverage`

| Property | Type | Description |
|----------|------|-------------|
| `coverageScore` | `number` |  |
| `transitions` | `array<GoogleCloudDialogflowCxV3TransitionCoverageTransition>` |  |

### `GoogleCloudDialogflowCxV3TransitionCoverageTransition`

| Property | Type | Description |
|----------|------|-------------|
| `covered` | `boolean` |  |
| `eventHandler` | `GoogleCloudDialogflowCxV3EventHandler` |  |
| `index` | `integer` |  |
| `source` | `GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode` |  |
| `target` | `GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode` |  |
| `transitionRoute` | `GoogleCloudDialogflowCxV3TransitionRoute` |  |

### `GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode`

| Property | Type | Description |
|----------|------|-------------|
| `flow` | `GoogleCloudDialogflowCxV3Flow` |  |
| `page` | `GoogleCloudDialogflowCxV3Page` |  |

### `GoogleCloudDialogflowCxV3TransitionRoute`

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` |  |
| `description` | `string` |  |
| `intent` | `string` |  |
| `name` | `string` |  |
| `targetFlow` | `string` |  |
| `targetPage` | `string` |  |
| `triggerFulfillment` | `GoogleCloudDialogflowCxV3Fulfillment` |  |

### `GoogleCloudDialogflowCxV3TransitionRouteGroup`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` |  |
| `name` | `string` |  |
| `transitionRoutes` | `array<GoogleCloudDialogflowCxV3TransitionRoute>` |  |

### `GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage`

| Property | Type | Description |
|----------|------|-------------|
| `coverageScore` | `number` |  |
| `coverages` | `array<GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage>` |  |

### `GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage`

| Property | Type | Description |
|----------|------|-------------|
| `coverageScore` | `number` |  |
| `routeGroup` | `GoogleCloudDialogflowCxV3TransitionRouteGroup` |  |
| `transitions` | `array<GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition>` |  |

### `GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition`

| Property | Type | Description |
|----------|------|-------------|
| `covered` | `boolean` |  |
| `transitionRoute` | `GoogleCloudDialogflowCxV3TransitionRoute` |  |

### `GoogleCloudDialogflowCxV3TurnSignals`

| Property | Type | Description |
|----------|------|-------------|
| `agentEscalated` | `boolean` |  |
| `dtmfUsed` | `boolean` |  |
| `failureReasons` | `array<string>` |  |
| `noMatch` | `boolean` |  |
| `noUserInput` | `boolean` |  |
| `reachedEndPage` | `boolean` |  |
| `sentimentMagnitude` | `number` |  |
| `sentimentScore` | `number` |  |
| `userEscalated` | `boolean` |  |
| `webhookStatuses` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3TypeSchema`

| Property | Type | Description |
|----------|------|-------------|
| `inlineSchema` | `GoogleCloudDialogflowCxV3InlineSchema` |  |
| `schemaReference` | `GoogleCloudDialogflowCxV3TypeSchemaSchemaReference` |  |

### `GoogleCloudDialogflowCxV3TypeSchemaSchemaReference`

| Property | Type | Description |
|----------|------|-------------|
| `schema` | `string` |  |
| `tool` | `string` |  |

### `GoogleCloudDialogflowCxV3UserUtterance`

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` |  |

### `GoogleCloudDialogflowCxV3ValidateAgentRequest`

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` |  |

### `GoogleCloudDialogflowCxV3ValidateFlowRequest`

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` |  |

### `GoogleCloudDialogflowCxV3ValidationMessage`

| Property | Type | Description |
|----------|------|-------------|
| `detail` | `string` |  |
| `resourceNames` | `array<GoogleCloudDialogflowCxV3ResourceName>` |  |
| `resourceType` | `string` |  |
| `resources` | `array<string>` |  |
| `severity` | `string` |  |

### `GoogleCloudDialogflowCxV3VariantsHistory`

| Property | Type | Description |
|----------|------|-------------|
| `updateTime` | `string` |  |
| `versionVariants` | `GoogleCloudDialogflowCxV3VersionVariants` |  |

### `GoogleCloudDialogflowCxV3Version`

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` |  |
| `description` | `string` |  |
| `displayName` | `string` |  |
| `name` | `string` |  |
| `nluSettings` | `GoogleCloudDialogflowCxV3NluSettings` |  |
| `state` | `string` |  |

### `GoogleCloudDialogflowCxV3VersionVariants`

| Property | Type | Description |
|----------|------|-------------|
| `variants` | `array<GoogleCloudDialogflowCxV3VersionVariantsVariant>` |  |

### `GoogleCloudDialogflowCxV3VersionVariantsVariant`

| Property | Type | Description |
|----------|------|-------------|
| `isControlGroup` | `boolean` |  |
| `trafficAllocation` | `number` |  |
| `version` | `string` |  |

### `GoogleCloudDialogflowCxV3VoiceSelectionParams`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |
| `ssmlGender` | `string` |  |

### `GoogleCloudDialogflowCxV3Webhook`

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` |  |
| `displayName` | `string` |  |
| `genericWebService` | `GoogleCloudDialogflowCxV3WebhookGenericWebService` |  |
| `name` | `string` |  |
| `serviceDirectory` | `GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig` |  |
| `timeout` | `string` |  |

### `GoogleCloudDialogflowCxV3WebhookGenericWebService`

| Property | Type | Description |
|----------|------|-------------|
| `allowedCaCerts` | `array<string>` |  |
| `httpMethod` | `string` |  |
| `oauthConfig` | `GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig` |  |
| `parameterMapping` | `object` |  |
| `password` | `string` |  |
| `requestBody` | `string` |  |
| `requestHeaders` | `object` |  |
| `secretVersionForUsernamePassword` | `string` |  |
| `secretVersionsForRequestHeaders` | `object` |  |
| `serviceAccountAuthConfig` | `GoogleCloudDialogflowCxV3WebhookGenericWebServiceServiceAccountAuthConfig` |  |
| `serviceAgentAuth` | `string` |  |
| `uri` | `string` |  |
| `username` | `string` |  |
| `webhookType` | `string` |  |

### `GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig`

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` |  |
| `clientSecret` | `string` |  |
| `scopes` | `array<string>` |  |
| `secretVersionForClientSecret` | `string` |  |
| `tokenEndpoint` | `string` |  |

### `GoogleCloudDialogflowCxV3WebhookGenericWebServiceSecretVersionHeaderValue`

| Property | Type | Description |
|----------|------|-------------|
| `secretVersion` | `string` |  |

### `GoogleCloudDialogflowCxV3WebhookGenericWebServiceServiceAccountAuthConfig`

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccount` | `string` |  |

### `GoogleCloudDialogflowCxV3WebhookRequest`

| Property | Type | Description |
|----------|------|-------------|
| `detectIntentResponseId` | `string` |  |
| `dtmfDigits` | `string` |  |
| `fulfillmentInfo` | `GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo` |  |
| `intentInfo` | `GoogleCloudDialogflowCxV3WebhookRequestIntentInfo` |  |
| `languageCode` | `string` |  |
| `languageInfo` | `GoogleCloudDialogflowCxV3LanguageInfo` |  |
| `messages` | `array<GoogleCloudDialogflowCxV3ResponseMessage>` |  |
| `pageInfo` | `GoogleCloudDialogflowCxV3PageInfo` |  |
| `payload` | `object` |  |
| `sentimentAnalysisResult` | `GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult` |  |
| `sessionInfo` | `GoogleCloudDialogflowCxV3SessionInfo` |  |
| `text` | `string` |  |
| `transcript` | `string` |  |
| `triggerEvent` | `string` |  |
| `triggerIntent` | `string` |  |

### `GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo`

| Property | Type | Description |
|----------|------|-------------|
| `tag` | `string` |  |

### `GoogleCloudDialogflowCxV3WebhookRequestIntentInfo`

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` |  |
| `displayName` | `string` |  |
| `lastMatchedIntent` | `string` |  |
| `parameters` | `object` |  |

### `GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue`

| Property | Type | Description |
|----------|------|-------------|
| `originalValue` | `string` |  |
| `resolvedValue` | `any` |  |

### `GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult`

| Property | Type | Description |
|----------|------|-------------|
| `magnitude` | `number` |  |
| `score` | `number` |  |

### `GoogleCloudDialogflowCxV3WebhookResponse`

| Property | Type | Description |
|----------|------|-------------|
| `fulfillmentResponse` | `GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse` |  |
| `pageInfo` | `GoogleCloudDialogflowCxV3PageInfo` |  |
| `payload` | `object` |  |
| `sessionInfo` | `GoogleCloudDialogflowCxV3SessionInfo` |  |
| `targetFlow` | `string` |  |
| `targetPage` | `string` |  |

### `GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse`

| Property | Type | Description |
|----------|------|-------------|
| `mergeBehavior` | `string` |  |
| `messages` | `array<GoogleCloudDialogflowCxV3ResponseMessage>` |  |

### `GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig`

| Property | Type | Description |
|----------|------|-------------|
| `genericWebService` | `GoogleCloudDialogflowCxV3WebhookGenericWebService` |  |
| `service` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1AdvancedSettings`

| Property | Type | Description |
|----------|------|-------------|
| `audioExportGcsDestination` | `GoogleCloudDialogflowCxV3beta1GcsDestination` |  |
| `dtmfSettings` | `GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings` |  |
| `loggingSettings` | `GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings` |  |
| `speechSettings` | `GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings` |  |

### `GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings`

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` |  |
| `endpointingTimeoutDuration` | `string` |  |
| `finishDigit` | `string` |  |
| `interdigitTimeoutDuration` | `string` |  |
| `maxDigits` | `integer` |  |

### `GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings`

| Property | Type | Description |
|----------|------|-------------|
| `enableConsentBasedRedaction` | `boolean` |  |
| `enableInteractionLogging` | `boolean` |  |
| `enableStackdriverLogging` | `boolean` |  |

### `GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings`

| Property | Type | Description |
|----------|------|-------------|
| `endpointerSensitivity` | `integer` |  |
| `models` | `object` |  |
| `noSpeechTimeout` | `string` |  |
| `useTimeoutBasedEndpointing` | `boolean` |  |

### `GoogleCloudDialogflowCxV3beta1AudioInput`

| Property | Type | Description |
|----------|------|-------------|
| `audio` | `string` |  |
| `config` | `GoogleCloudDialogflowCxV3beta1InputAudioConfig` |  |

### `GoogleCloudDialogflowCxV3beta1BargeInConfig`

| Property | Type | Description |
|----------|------|-------------|
| `noBargeInDuration` | `string` |  |
| `totalDuration` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<GoogleCloudDialogflowCxV3beta1TestError>` |  |

### `GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `results` | `array<GoogleCloudDialogflowCxV3beta1TestCaseResult>` |  |

### `GoogleCloudDialogflowCxV3beta1ContinuousTestResult`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |
| `result` | `string` |  |
| `runTime` | `string` |  |
| `testCaseResults` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3beta1ConversationSignals`

| Property | Type | Description |
|----------|------|-------------|
| `turnSignals` | `GoogleCloudDialogflowCxV3beta1TurnSignals` |  |

### `GoogleCloudDialogflowCxV3beta1ConversationTurn`

| Property | Type | Description |
|----------|------|-------------|
| `userInput` | `GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput` |  |
| `virtualAgentOutput` | `GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput` |  |

### `GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput`

| Property | Type | Description |
|----------|------|-------------|
| `enableSentimentAnalysis` | `boolean` |  |
| `injectedParameters` | `object` |  |
| `input` | `GoogleCloudDialogflowCxV3beta1QueryInput` |  |
| `isWebhookEnabled` | `boolean` |  |

### `GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput`

| Property | Type | Description |
|----------|------|-------------|
| `currentPage` | `GoogleCloudDialogflowCxV3beta1Page` |  |
| `diagnosticInfo` | `object` |  |
| `differences` | `array<GoogleCloudDialogflowCxV3beta1TestRunDifference>` |  |
| `sessionParameters` | `object` |  |
| `status` | `GoogleRpcStatus` |  |
| `textResponses` | `array<GoogleCloudDialogflowCxV3beta1ResponseMessageText>` |  |
| `triggeredIntent` | `GoogleCloudDialogflowCxV3beta1Intent` |  |

### `GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `version` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1DataStoreConnection`

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` |  |
| `dataStoreType` | `string` |  |
| `documentProcessingMode` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1DeployFlowMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `testErrors` | `array<GoogleCloudDialogflowCxV3beta1TestError>` |  |

### `GoogleCloudDialogflowCxV3beta1DeployFlowResponse`

| Property | Type | Description |
|----------|------|-------------|
| `deployment` | `string` |  |
| `environment` | `GoogleCloudDialogflowCxV3beta1Environment` |  |

### `GoogleCloudDialogflowCxV3beta1DtmfInput`

| Property | Type | Description |
|----------|------|-------------|
| `digits` | `string` |  |
| `finishDigit` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1Environment`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `displayName` | `string` |  |
| `name` | `string` |  |
| `testCasesConfig` | `GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig` |  |
| `updateTime` | `string` |  |
| `versionConfigs` | `array<GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>` |  |
| `webhookConfig` | `GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig` |  |

### `GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig`

| Property | Type | Description |
|----------|------|-------------|
| `enableContinuousRun` | `boolean` |  |
| `enablePredeploymentRun` | `boolean` |  |
| `testCases` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig`

| Property | Type | Description |
|----------|------|-------------|
| `version` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig`

| Property | Type | Description |
|----------|------|-------------|
| `webhookOverrides` | `array<GoogleCloudDialogflowCxV3beta1Webhook>` |  |

### `GoogleCloudDialogflowCxV3beta1EventHandler`

| Property | Type | Description |
|----------|------|-------------|
| `event` | `string` |  |
| `name` | `string` |  |
| `targetFlow` | `string` |  |
| `targetPage` | `string` |  |
| `targetPlaybook` | `string` |  |
| `triggerFulfillment` | `GoogleCloudDialogflowCxV3beta1Fulfillment` |  |

### `GoogleCloudDialogflowCxV3beta1EventInput`

| Property | Type | Description |
|----------|------|-------------|
| `event` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ExportAgentResponse`

| Property | Type | Description |
|----------|------|-------------|
| `agentContent` | `string` |  |
| `agentUri` | `string` |  |
| `commitSha` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ExportEntityTypesMetadata`

### `GoogleCloudDialogflowCxV3beta1ExportEntityTypesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entityTypesContent` | `GoogleCloudDialogflowCxV3beta1InlineDestination` |  |
| `entityTypesUri` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ExportFlowResponse`

| Property | Type | Description |
|----------|------|-------------|
| `flowContent` | `string` |  |
| `flowUri` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ExportIntentsMetadata`

### `GoogleCloudDialogflowCxV3beta1ExportIntentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `intentsContent` | `GoogleCloudDialogflowCxV3beta1InlineDestination` |  |
| `intentsUri` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata`

### `GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` |  |
| `gcsUri` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1Form`

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `array<GoogleCloudDialogflowCxV3beta1FormParameter>` |  |

### `GoogleCloudDialogflowCxV3beta1FormParameter`

| Property | Type | Description |
|----------|------|-------------|
| `advancedSettings` | `GoogleCloudDialogflowCxV3beta1AdvancedSettings` |  |
| `defaultValue` | `any` |  |
| `displayName` | `string` |  |
| `entityType` | `string` |  |
| `fillBehavior` | `GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior` |  |
| `isList` | `boolean` |  |
| `redact` | `boolean` |  |
| `required` | `boolean` |  |

### `GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior`

| Property | Type | Description |
|----------|------|-------------|
| `initialPromptFulfillment` | `GoogleCloudDialogflowCxV3beta1Fulfillment` |  |
| `repromptEventHandlers` | `array<GoogleCloudDialogflowCxV3beta1EventHandler>` |  |

### `GoogleCloudDialogflowCxV3beta1Fulfillment`

| Property | Type | Description |
|----------|------|-------------|
| `advancedSettings` | `GoogleCloudDialogflowCxV3beta1AdvancedSettings` |  |
| `conditionalCases` | `array<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>` |  |
| `enableGenerativeFallback` | `boolean` |  |
| `generators` | `array<GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings>` |  |
| `messages` | `array<GoogleCloudDialogflowCxV3beta1ResponseMessage>` |  |
| `returnPartialResponses` | `boolean` |  |
| `setParameterActions` | `array<GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction>` |  |
| `tag` | `string` |  |
| `webhook` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases`

| Property | Type | Description |
|----------|------|-------------|
| `cases` | `array<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>` |  |

### `GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase`

| Property | Type | Description |
|----------|------|-------------|
| `caseContent` | `array<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent>` |  |
| `condition` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent`

| Property | Type | Description |
|----------|------|-------------|
| `additionalCases` | `GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases` |  |
| `message` | `GoogleCloudDialogflowCxV3beta1ResponseMessage` |  |

### `GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings`

| Property | Type | Description |
|----------|------|-------------|
| `generator` | `string` |  |
| `inputParameters` | `object` |  |
| `outputParameter` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction`

| Property | Type | Description |
|----------|------|-------------|
| `parameter` | `string` |  |
| `value` | `any` |  |

### `GoogleCloudDialogflowCxV3beta1GcsDestination`

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ImportEntityTypesMetadata`

### `GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `conflictingResources` | `GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponseConflictingResources` |  |
| `entityTypes` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponseConflictingResources`

| Property | Type | Description |
|----------|------|-------------|
| `entityDisplayNames` | `array<string>` |  |
| `entityTypeDisplayNames` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3beta1ImportFlowResponse`

| Property | Type | Description |
|----------|------|-------------|
| `flow` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ImportIntentsMetadata`

### `GoogleCloudDialogflowCxV3beta1ImportIntentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `conflictingResources` | `GoogleCloudDialogflowCxV3beta1ImportIntentsResponseConflictingResources` |  |
| `intents` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3beta1ImportIntentsResponseConflictingResources`

| Property | Type | Description |
|----------|------|-------------|
| `entityDisplayNames` | `array<string>` |  |
| `intentDisplayNames` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<GoogleCloudDialogflowCxV3beta1TestCaseError>` |  |

### `GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `names` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3beta1InlineDestination`

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1InputAudioConfig`

| Property | Type | Description |
|----------|------|-------------|
| `audioEncoding` | `string` |  |
| `bargeInConfig` | `GoogleCloudDialogflowCxV3beta1BargeInConfig` |  |
| `enableWordInfo` | `boolean` |  |
| `model` | `string` |  |
| `modelVariant` | `string` |  |
| `optOutConformerModelMigration` | `boolean` |  |
| `phraseHints` | `array<string>` |  |
| `sampleRateHertz` | `integer` |  |
| `singleUtterance` | `boolean` |  |

### `GoogleCloudDialogflowCxV3beta1Intent`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `displayName` | `string` |  |
| `isFallback` | `boolean` |  |
| `labels` | `object` |  |
| `name` | `string` |  |
| `parameters` | `array<GoogleCloudDialogflowCxV3beta1IntentParameter>` |  |
| `priority` | `integer` |  |
| `trainingPhrases` | `array<GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>` |  |

### `GoogleCloudDialogflowCxV3beta1IntentInput`

| Property | Type | Description |
|----------|------|-------------|
| `intent` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1IntentParameter`

| Property | Type | Description |
|----------|------|-------------|
| `entityType` | `string` |  |
| `id` | `string` |  |
| `isList` | `boolean` |  |
| `redact` | `boolean` |  |

### `GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` |  |
| `parts` | `array<GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart>` |  |
| `repeatCount` | `integer` |  |

### `GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart`

| Property | Type | Description |
|----------|------|-------------|
| `parameterId` | `string` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings`

| Property | Type | Description |
|----------|------|-------------|
| `dataStoreConnections` | `array<GoogleCloudDialogflowCxV3beta1DataStoreConnection>` |  |
| `enabled` | `boolean` |  |
| `targetFlow` | `string` |  |
| `targetPage` | `string` |  |
| `triggerFulfillment` | `GoogleCloudDialogflowCxV3beta1Fulfillment` |  |

### `GoogleCloudDialogflowCxV3beta1LanguageInfo`

| Property | Type | Description |
|----------|------|-------------|
| `confidenceScore` | `number` |  |
| `inputLanguageCode` | `string` |  |
| `resolvedLanguageCode` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1Page`

| Property | Type | Description |
|----------|------|-------------|
| `advancedSettings` | `GoogleCloudDialogflowCxV3beta1AdvancedSettings` |  |
| `description` | `string` |  |
| `displayName` | `string` |  |
| `entryFulfillment` | `GoogleCloudDialogflowCxV3beta1Fulfillment` |  |
| `eventHandlers` | `array<GoogleCloudDialogflowCxV3beta1EventHandler>` |  |
| `form` | `GoogleCloudDialogflowCxV3beta1Form` |  |
| `knowledgeConnectorSettings` | `GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings` |  |
| `name` | `string` |  |
| `transitionRouteGroups` | `array<string>` |  |
| `transitionRoutes` | `array<GoogleCloudDialogflowCxV3beta1TransitionRoute>` |  |

### `GoogleCloudDialogflowCxV3beta1PageInfo`

| Property | Type | Description |
|----------|------|-------------|
| `currentPage` | `string` |  |
| `displayName` | `string` |  |
| `formInfo` | `GoogleCloudDialogflowCxV3beta1PageInfoFormInfo` |  |

### `GoogleCloudDialogflowCxV3beta1PageInfoFormInfo`

| Property | Type | Description |
|----------|------|-------------|
| `parameterInfo` | `array<GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo>` |  |

### `GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` |  |
| `justCollected` | `boolean` |  |
| `required` | `boolean` |  |
| `state` | `string` |  |
| `value` | `any` |  |

### `GoogleCloudDialogflowCxV3beta1QueryInput`

| Property | Type | Description |
|----------|------|-------------|
| `audio` | `GoogleCloudDialogflowCxV3beta1AudioInput` |  |
| `dtmf` | `GoogleCloudDialogflowCxV3beta1DtmfInput` |  |
| `event` | `GoogleCloudDialogflowCxV3beta1EventInput` |  |
| `intent` | `GoogleCloudDialogflowCxV3beta1IntentInput` |  |
| `languageCode` | `string` |  |
| `text` | `GoogleCloudDialogflowCxV3beta1TextInput` |  |
| `toolCallResult` | `GoogleCloudDialogflowCxV3beta1ToolCallResult` |  |

### `GoogleCloudDialogflowCxV3beta1ResponseMessage`

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` |  |
| `conversationSuccess` | `GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess` |  |
| `endInteraction` | `GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction` |  |
| `knowledgeInfoCard` | `GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard` |  |
| `liveAgentHandoff` | `GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff` |  |
| `mixedAudio` | `GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio` |  |
| `outputAudioText` | `GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText` |  |
| `payload` | `object` |  |
| `playAudio` | `GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio` |  |
| `telephonyTransferCall` | `GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall` |  |
| `text` | `GoogleCloudDialogflowCxV3beta1ResponseMessageText` |  |
| `toolCall` | `GoogleCloudDialogflowCxV3beta1ToolCall` |  |

### `GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess`

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` |  |

### `GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction`

### `GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard`

### `GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff`

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` |  |

### `GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio`

| Property | Type | Description |
|----------|------|-------------|
| `segments` | `array<GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>` |  |

### `GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment`

| Property | Type | Description |
|----------|------|-------------|
| `allowPlaybackInterruption` | `boolean` |  |
| `audio` | `string` |  |
| `uri` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText`

| Property | Type | Description |
|----------|------|-------------|
| `allowPlaybackInterruption` | `boolean` |  |
| `ssml` | `string` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio`

| Property | Type | Description |
|----------|------|-------------|
| `allowPlaybackInterruption` | `boolean` |  |
| `audioUri` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall`

| Property | Type | Description |
|----------|------|-------------|
| `phoneNumber` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ResponseMessageText`

| Property | Type | Description |
|----------|------|-------------|
| `allowPlaybackInterruption` | `boolean` |  |
| `text` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3beta1RunContinuousTestMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<GoogleCloudDialogflowCxV3beta1TestError>` |  |

### `GoogleCloudDialogflowCxV3beta1RunContinuousTestResponse`

| Property | Type | Description |
|----------|------|-------------|
| `continuousTestResult` | `GoogleCloudDialogflowCxV3beta1ContinuousTestResult` |  |

### `GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata`

### `GoogleCloudDialogflowCxV3beta1RunTestCaseResponse`

| Property | Type | Description |
|----------|------|-------------|
| `result` | `GoogleCloudDialogflowCxV3beta1TestCaseResult` |  |

### `GoogleCloudDialogflowCxV3beta1SessionInfo`

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `object` |  |
| `session` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1TestCase`

| Property | Type | Description |
|----------|------|-------------|
| `creationTime` | `string` |  |
| `displayName` | `string` |  |
| `lastTestResult` | `GoogleCloudDialogflowCxV3beta1TestCaseResult` |  |
| `name` | `string` |  |
| `notes` | `string` |  |
| `tags` | `array<string>` |  |
| `testCaseConversationTurns` | `array<GoogleCloudDialogflowCxV3beta1ConversationTurn>` |  |
| `testConfig` | `GoogleCloudDialogflowCxV3beta1TestConfig` |  |

### `GoogleCloudDialogflowCxV3beta1TestCaseError`

| Property | Type | Description |
|----------|------|-------------|
| `status` | `GoogleRpcStatus` |  |
| `testCase` | `GoogleCloudDialogflowCxV3beta1TestCase` |  |

### `GoogleCloudDialogflowCxV3beta1TestCaseResult`

| Property | Type | Description |
|----------|------|-------------|
| `conversationTurns` | `array<GoogleCloudDialogflowCxV3beta1ConversationTurn>` |  |
| `environment` | `string` |  |
| `name` | `string` |  |
| `testResult` | `string` |  |
| `testTime` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1TestConfig`

| Property | Type | Description |
|----------|------|-------------|
| `flow` | `string` |  |
| `page` | `string` |  |
| `trackingParameters` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3beta1TestError`

| Property | Type | Description |
|----------|------|-------------|
| `status` | `GoogleRpcStatus` |  |
| `testCase` | `string` |  |
| `testTime` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1TestRunDifference`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `type` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1TextInput`

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ToolCall`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `inputParameters` | `object` |  |
| `tool` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ToolCallResult`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `error` | `GoogleCloudDialogflowCxV3beta1ToolCallResultError` |  |
| `outputParameters` | `object` |  |
| `tool` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1ToolCallResultError`

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1TransitionRoute`

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` |  |
| `description` | `string` |  |
| `intent` | `string` |  |
| `name` | `string` |  |
| `targetFlow` | `string` |  |
| `targetPage` | `string` |  |
| `triggerFulfillment` | `GoogleCloudDialogflowCxV3beta1Fulfillment` |  |

### `GoogleCloudDialogflowCxV3beta1TurnSignals`

| Property | Type | Description |
|----------|------|-------------|
| `agentEscalated` | `boolean` |  |
| `dtmfUsed` | `boolean` |  |
| `failureReasons` | `array<string>` |  |
| `noMatch` | `boolean` |  |
| `noUserInput` | `boolean` |  |
| `reachedEndPage` | `boolean` |  |
| `sentimentMagnitude` | `number` |  |
| `sentimentScore` | `number` |  |
| `userEscalated` | `boolean` |  |
| `webhookStatuses` | `array<string>` |  |

### `GoogleCloudDialogflowCxV3beta1Webhook`

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` |  |
| `displayName` | `string` |  |
| `genericWebService` | `GoogleCloudDialogflowCxV3beta1WebhookGenericWebService` |  |
| `name` | `string` |  |
| `serviceDirectory` | `GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig` |  |
| `timeout` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1WebhookGenericWebService`

| Property | Type | Description |
|----------|------|-------------|
| `allowedCaCerts` | `array<string>` |  |
| `httpMethod` | `string` |  |
| `oauthConfig` | `GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig` |  |
| `parameterMapping` | `object` |  |
| `password` | `string` |  |
| `requestBody` | `string` |  |
| `requestHeaders` | `object` |  |
| `secretVersionForUsernamePassword` | `string` |  |
| `secretVersionsForRequestHeaders` | `object` |  |
| `serviceAccountAuthConfig` | `GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceServiceAccountAuthConfig` |  |
| `serviceAgentAuth` | `string` |  |
| `uri` | `string` |  |
| `username` | `string` |  |
| `webhookType` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig`

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` |  |
| `clientSecret` | `string` |  |
| `scopes` | `array<string>` |  |
| `secretVersionForClientSecret` | `string` |  |
| `tokenEndpoint` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue`

| Property | Type | Description |
|----------|------|-------------|
| `secretVersion` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceServiceAccountAuthConfig`

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccount` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1WebhookRequest`

| Property | Type | Description |
|----------|------|-------------|
| `detectIntentResponseId` | `string` |  |
| `dtmfDigits` | `string` |  |
| `fulfillmentInfo` | `GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo` |  |
| `intentInfo` | `GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo` |  |
| `languageCode` | `string` |  |
| `languageInfo` | `GoogleCloudDialogflowCxV3beta1LanguageInfo` |  |
| `messages` | `array<GoogleCloudDialogflowCxV3beta1ResponseMessage>` |  |
| `pageInfo` | `GoogleCloudDialogflowCxV3beta1PageInfo` |  |
| `payload` | `object` |  |
| `sentimentAnalysisResult` | `GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult` |  |
| `sessionInfo` | `GoogleCloudDialogflowCxV3beta1SessionInfo` |  |
| `text` | `string` |  |
| `transcript` | `string` |  |
| `triggerEvent` | `string` |  |
| `triggerIntent` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo`

| Property | Type | Description |
|----------|------|-------------|
| `tag` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo`

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` |  |
| `displayName` | `string` |  |
| `lastMatchedIntent` | `string` |  |
| `parameters` | `object` |  |

### `GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue`

| Property | Type | Description |
|----------|------|-------------|
| `originalValue` | `string` |  |
| `resolvedValue` | `any` |  |

### `GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult`

| Property | Type | Description |
|----------|------|-------------|
| `magnitude` | `number` |  |
| `score` | `number` |  |

### `GoogleCloudDialogflowCxV3beta1WebhookResponse`

| Property | Type | Description |
|----------|------|-------------|
| `fulfillmentResponse` | `GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse` |  |
| `pageInfo` | `GoogleCloudDialogflowCxV3beta1PageInfo` |  |
| `payload` | `object` |  |
| `sessionInfo` | `GoogleCloudDialogflowCxV3beta1SessionInfo` |  |
| `targetFlow` | `string` |  |
| `targetPage` | `string` |  |

### `GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse`

| Property | Type | Description |
|----------|------|-------------|
| `mergeBehavior` | `string` |  |
| `messages` | `array<GoogleCloudDialogflowCxV3beta1ResponseMessage>` |  |

### `GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig`

| Property | Type | Description |
|----------|------|-------------|
| `genericWebService` | `GoogleCloudDialogflowCxV3beta1WebhookGenericWebService` |  |
| `service` | `string` |  |

### `GoogleCloudDialogflowV2AgentCoachingInstruction`

| Property | Type | Description |
|----------|------|-------------|
| `agentAction` | `string` |  |
| `condition` | `string` |  |
| `displayDetails` | `string` |  |
| `displayName` | `string` |  |
| `duplicateCheckResult` | `GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResult` |  |
| `systemAction` | `string` |  |
| `triggeringEvent` | `string` |  |

### `GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResult`

| Property | Type | Description |
|----------|------|-------------|
| `duplicateSuggestions` | `array<GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion>` |  |

### `GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` |  |
| `similarityScore` | `number` |  |
| `suggestionIndex` | `integer` |  |

### `GoogleCloudDialogflowV2AgentCoachingSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `agentActionSuggestions` | `array<GoogleCloudDialogflowV2AgentCoachingSuggestionAgentActionSuggestion>` |  |
| `applicableInstructions` | `array<GoogleCloudDialogflowV2AgentCoachingInstruction>` |  |
| `sampleResponses` | `array<GoogleCloudDialogflowV2AgentCoachingSuggestionSampleResponse>` |  |

### `GoogleCloudDialogflowV2AgentCoachingSuggestionAgentActionSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `agentAction` | `string` |  |
| `duplicateCheckResult` | `GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult` |  |
| `sources` | `GoogleCloudDialogflowV2AgentCoachingSuggestionSources` |  |

### `GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult`

| Property | Type | Description |
|----------|------|-------------|
| `duplicateSuggestions` | `array<GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion>` |  |

### `GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` |  |
| `similarityScore` | `number` |  |
| `sources` | `GoogleCloudDialogflowV2AgentCoachingSuggestionSources` |  |
| `suggestionIndex` | `integer` |  |

### `GoogleCloudDialogflowV2AgentCoachingSuggestionSampleResponse`

| Property | Type | Description |
|----------|------|-------------|
| `duplicateCheckResult` | `GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult` |  |
| `responseText` | `string` |  |
| `sources` | `GoogleCloudDialogflowV2AgentCoachingSuggestionSources` |  |

### `GoogleCloudDialogflowV2AgentCoachingSuggestionSources`

| Property | Type | Description |
|----------|------|-------------|
| `instructionIndexes` | `array<integer>` |  |

### `GoogleCloudDialogflowV2AnnotatedMessagePart`

| Property | Type | Description |
|----------|------|-------------|
| `entityType` | `string` |  |
| `formattedValue` | `any` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowV2ArticleAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` |  |
| `confidence` | `number` |  |
| `metadata` | `object` |  |
| `snippets` | `array<string>` |  |
| `title` | `string` |  |
| `uri` | `string` |  |

### `GoogleCloudDialogflowV2ArticleSuggestionModelMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `trainingModelType` | `string` |  |

### `GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entityTypes` | `array<GoogleCloudDialogflowV2EntityType>` |  |

### `GoogleCloudDialogflowV2BatchUpdateIntentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `intents` | `array<GoogleCloudDialogflowV2Intent>` |  |

### `GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `conversationProfile` | `string` |  |
| `createTime` | `string` |  |
| `participantRole` | `string` |  |
| `suggestionFeatureType` | `string` |  |

### `GoogleCloudDialogflowV2Context`

| Property | Type | Description |
|----------|------|-------------|
| `lifespanCount` | `integer` |  |
| `name` | `string` |  |
| `parameters` | `object` |  |

### `GoogleCloudDialogflowV2ConversationEvent`

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `string` |  |
| `errorStatus` | `GoogleRpcStatus` |  |
| `newMessagePayload` | `GoogleCloudDialogflowV2Message` |  |
| `newRecognitionResultPayload` | `GoogleCloudDialogflowV2StreamingRecognitionResult` |  |
| `type` | `string` |  |

### `GoogleCloudDialogflowV2ConversationModel`

| Property | Type | Description |
|----------|------|-------------|
| `articleSuggestionModelMetadata` | `GoogleCloudDialogflowV2ArticleSuggestionModelMetadata` |  |
| `createTime` | `string` |  |
| `datasets` | `array<GoogleCloudDialogflowV2InputDataset>` |  |
| `displayName` | `string` |  |
| `languageCode` | `string` |  |
| `name` | `string` |  |
| `satisfiesPzi` | `boolean` |  |
| `satisfiesPzs` | `boolean` |  |
| `smartReplyModelMetadata` | `GoogleCloudDialogflowV2SmartReplyModelMetadata` |  |
| `state` | `string` |  |

### `GoogleCloudDialogflowV2CreateConversationDatasetOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `conversationDataset` | `string` |  |

### `GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `conversationModel` | `string` |  |
| `conversationModelEvaluation` | `string` |  |
| `createTime` | `string` |  |
| `state` | `string` |  |

### `GoogleCloudDialogflowV2CreateConversationModelOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `conversationModel` | `string` |  |
| `createTime` | `string` |  |
| `doneTime` | `string` |  |
| `state` | `string` |  |

### `GoogleCloudDialogflowV2DeleteConversationDatasetOperationMetadata`

### `GoogleCloudDialogflowV2DeleteConversationModelOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `conversationModel` | `string` |  |
| `createTime` | `string` |  |
| `doneTime` | `string` |  |

### `GoogleCloudDialogflowV2DeployConversationModelOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `conversationModel` | `string` |  |
| `createTime` | `string` |  |
| `doneTime` | `string` |  |

### `GoogleCloudDialogflowV2EncryptionSpec`

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` |  |
| `name` | `string` |  |

### `GoogleCloudDialogflowV2EntityType`

| Property | Type | Description |
|----------|------|-------------|
| `autoExpansionMode` | `string` |  |
| `displayName` | `string` |  |
| `enableFuzzyExtraction` | `boolean` |  |
| `entities` | `array<GoogleCloudDialogflowV2EntityTypeEntity>` |  |
| `kind` | `string` |  |
| `name` | `string` |  |

### `GoogleCloudDialogflowV2EntityTypeEntity`

| Property | Type | Description |
|----------|------|-------------|
| `synonyms` | `array<string>` |  |
| `value` | `string` |  |

### `GoogleCloudDialogflowV2EventInput`

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` |  |
| `name` | `string` |  |
| `parameters` | `object` |  |

### `GoogleCloudDialogflowV2ExportAgentResponse`

| Property | Type | Description |
|----------|------|-------------|
| `agentContent` | `string` |  |
| `agentUri` | `string` |  |

### `GoogleCloudDialogflowV2ExportOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `exportedGcsDestination` | `GoogleCloudDialogflowV2GcsDestination` |  |

### `GoogleCloudDialogflowV2FaqAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `string` |  |
| `answerRecord` | `string` |  |
| `confidence` | `number` |  |
| `metadata` | `object` |  |
| `question` | `string` |  |
| `source` | `string` |  |

### `GoogleCloudDialogflowV2FreeFormSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `response` | `string` |  |

### `GoogleCloudDialogflowV2GcsDestination`

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` |  |

### `GoogleCloudDialogflowV2GenerateSuggestionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `generatorSuggestionAnswers` | `array<GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer>` |  |
| `latestMessage` | `string` |  |

### `GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` |  |
| `generatorSuggestion` | `GoogleCloudDialogflowV2GeneratorSuggestion` |  |
| `sourceGenerator` | `string` |  |

### `GoogleCloudDialogflowV2GeneratorSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `agentCoachingSuggestion` | `GoogleCloudDialogflowV2AgentCoachingSuggestion` |  |
| `freeFormSuggestion` | `GoogleCloudDialogflowV2FreeFormSuggestion` |  |
| `summarySuggestion` | `GoogleCloudDialogflowV2SummarySuggestion` |  |
| `toolCallInfo` | `array<GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo>` |  |

### `GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo`

| Property | Type | Description |
|----------|------|-------------|
| `toolCall` | `GoogleCloudDialogflowV2ToolCall` |  |
| `toolCallResult` | `GoogleCloudDialogflowV2ToolCallResult` |  |

### `GoogleCloudDialogflowV2HumanAgentAssistantEvent`

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `string` |  |
| `participant` | `string` |  |
| `suggestionResults` | `array<GoogleCloudDialogflowV2SuggestionResult>` |  |

### `GoogleCloudDialogflowV2ImportConversationDataOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `conversationDataset` | `string` |  |
| `createTime` | `string` |  |
| `partialFailures` | `array<GoogleRpcStatus>` |  |

### `GoogleCloudDialogflowV2ImportConversationDataOperationResponse`

| Property | Type | Description |
|----------|------|-------------|
| `conversationDataset` | `string` |  |
| `importCount` | `integer` |  |

### `GoogleCloudDialogflowV2ImportDocumentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `warnings` | `array<GoogleRpcStatus>` |  |

### `GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo`

| Property | Type | Description |
|----------|------|-------------|
| `contextReferenceRetrieved` | `boolean` |  |
| `ingestedParametersDebugInfo` | `array<GoogleCloudDialogflowV2IngestedContextReferenceDebugInfoIngestedParameterDebugInfo>` |  |
| `projectNotAllowlisted` | `boolean` |  |

### `GoogleCloudDialogflowV2IngestedContextReferenceDebugInfoIngestedParameterDebugInfo`

| Property | Type | Description |
|----------|------|-------------|
| `ingestionStatus` | `string` |  |
| `parameter` | `string` |  |

### `GoogleCloudDialogflowV2InitializeEncryptionSpecMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `request` | `GoogleCloudDialogflowV2InitializeEncryptionSpecRequest` |  |

### `GoogleCloudDialogflowV2InitializeEncryptionSpecRequest`

| Property | Type | Description |
|----------|------|-------------|
| `encryptionSpec` | `GoogleCloudDialogflowV2EncryptionSpec` |  |

### `GoogleCloudDialogflowV2InputDataset`

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` |  |

### `GoogleCloudDialogflowV2Intent`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `defaultResponsePlatforms` | `array<string>` |  |
| `displayName` | `string` |  |
| `endInteraction` | `boolean` |  |
| `events` | `array<string>` |  |
| `followupIntentInfo` | `array<GoogleCloudDialogflowV2IntentFollowupIntentInfo>` |  |
| `inputContextNames` | `array<string>` |  |
| `isFallback` | `boolean` |  |
| `liveAgentHandoff` | `boolean` |  |
| `messages` | `array<GoogleCloudDialogflowV2IntentMessage>` |  |
| `mlDisabled` | `boolean` |  |
| `name` | `string` |  |
| `outputContexts` | `array<GoogleCloudDialogflowV2Context>` |  |
| `parameters` | `array<GoogleCloudDialogflowV2IntentParameter>` |  |
| `parentFollowupIntentName` | `string` |  |
| `priority` | `integer` |  |
| `resetContexts` | `boolean` |  |
| `rootFollowupIntentName` | `string` |  |
| `trainingPhrases` | `array<GoogleCloudDialogflowV2IntentTrainingPhrase>` |  |
| `webhookState` | `string` |  |

### `GoogleCloudDialogflowV2IntentFollowupIntentInfo`

| Property | Type | Description |
|----------|------|-------------|
| `followupIntentName` | `string` |  |
| `parentFollowupIntentName` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessage`

| Property | Type | Description |
|----------|------|-------------|
| `basicCard` | `GoogleCloudDialogflowV2IntentMessageBasicCard` |  |
| `browseCarouselCard` | `GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard` |  |
| `card` | `GoogleCloudDialogflowV2IntentMessageCard` |  |
| `carouselSelect` | `GoogleCloudDialogflowV2IntentMessageCarouselSelect` |  |
| `image` | `GoogleCloudDialogflowV2IntentMessageImage` |  |
| `linkOutSuggestion` | `GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion` |  |
| `listSelect` | `GoogleCloudDialogflowV2IntentMessageListSelect` |  |
| `mediaContent` | `GoogleCloudDialogflowV2IntentMessageMediaContent` |  |
| `payload` | `object` |  |
| `platform` | `string` |  |
| `quickReplies` | `GoogleCloudDialogflowV2IntentMessageQuickReplies` |  |
| `simpleResponses` | `GoogleCloudDialogflowV2IntentMessageSimpleResponses` |  |
| `suggestions` | `GoogleCloudDialogflowV2IntentMessageSuggestions` |  |
| `tableCard` | `GoogleCloudDialogflowV2IntentMessageTableCard` |  |
| `text` | `GoogleCloudDialogflowV2IntentMessageText` |  |

### `GoogleCloudDialogflowV2IntentMessageBasicCard`

| Property | Type | Description |
|----------|------|-------------|
| `buttons` | `array<GoogleCloudDialogflowV2IntentMessageBasicCardButton>` |  |
| `formattedText` | `string` |  |
| `image` | `GoogleCloudDialogflowV2IntentMessageImage` |  |
| `subtitle` | `string` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageBasicCardButton`

| Property | Type | Description |
|----------|------|-------------|
| `openUriAction` | `GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction`

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard`

| Property | Type | Description |
|----------|------|-------------|
| `imageDisplayOptions` | `string` |  |
| `items` | `array<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>` |  |

### `GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `footer` | `string` |  |
| `image` | `GoogleCloudDialogflowV2IntentMessageImage` |  |
| `openUriAction` | `GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction`

| Property | Type | Description |
|----------|------|-------------|
| `url` | `string` |  |
| `urlTypeHint` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageCard`

| Property | Type | Description |
|----------|------|-------------|
| `buttons` | `array<GoogleCloudDialogflowV2IntentMessageCardButton>` |  |
| `imageUri` | `string` |  |
| `subtitle` | `string` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageCardButton`

| Property | Type | Description |
|----------|------|-------------|
| `postback` | `string` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageCarouselSelect`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>` |  |

### `GoogleCloudDialogflowV2IntentMessageCarouselSelectItem`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `image` | `GoogleCloudDialogflowV2IntentMessageImage` |  |
| `info` | `GoogleCloudDialogflowV2IntentMessageSelectItemInfo` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageColumnProperties`

| Property | Type | Description |
|----------|------|-------------|
| `header` | `string` |  |
| `horizontalAlignment` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageImage`

| Property | Type | Description |
|----------|------|-------------|
| `accessibilityText` | `string` |  |
| `imageUri` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `destinationName` | `string` |  |
| `uri` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageListSelect`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<GoogleCloudDialogflowV2IntentMessageListSelectItem>` |  |
| `subtitle` | `string` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageListSelectItem`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `image` | `GoogleCloudDialogflowV2IntentMessageImage` |  |
| `info` | `GoogleCloudDialogflowV2IntentMessageSelectItemInfo` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageMediaContent`

| Property | Type | Description |
|----------|------|-------------|
| `mediaObjects` | `array<GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>` |  |
| `mediaType` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject`

| Property | Type | Description |
|----------|------|-------------|
| `contentUrl` | `string` |  |
| `description` | `string` |  |
| `icon` | `GoogleCloudDialogflowV2IntentMessageImage` |  |
| `largeImage` | `GoogleCloudDialogflowV2IntentMessageImage` |  |
| `name` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageQuickReplies`

| Property | Type | Description |
|----------|------|-------------|
| `quickReplies` | `array<string>` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageSelectItemInfo`

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` |  |
| `synonyms` | `array<string>` |  |

### `GoogleCloudDialogflowV2IntentMessageSimpleResponse`

| Property | Type | Description |
|----------|------|-------------|
| `displayText` | `string` |  |
| `ssml` | `string` |  |
| `textToSpeech` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageSimpleResponses`

| Property | Type | Description |
|----------|------|-------------|
| `simpleResponses` | `array<GoogleCloudDialogflowV2IntentMessageSimpleResponse>` |  |

### `GoogleCloudDialogflowV2IntentMessageSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `title` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageSuggestions`

| Property | Type | Description |
|----------|------|-------------|
| `suggestions` | `array<GoogleCloudDialogflowV2IntentMessageSuggestion>` |  |

### `GoogleCloudDialogflowV2IntentMessageTableCard`

| Property | Type | Description |
|----------|------|-------------|
| `buttons` | `array<GoogleCloudDialogflowV2IntentMessageBasicCardButton>` |  |
| `columnProperties` | `array<GoogleCloudDialogflowV2IntentMessageColumnProperties>` |  |
| `image` | `GoogleCloudDialogflowV2IntentMessageImage` |  |
| `rows` | `array<GoogleCloudDialogflowV2IntentMessageTableCardRow>` |  |
| `subtitle` | `string` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageTableCardCell`

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` |  |

### `GoogleCloudDialogflowV2IntentMessageTableCardRow`

| Property | Type | Description |
|----------|------|-------------|
| `cells` | `array<GoogleCloudDialogflowV2IntentMessageTableCardCell>` |  |
| `dividerAfter` | `boolean` |  |

### `GoogleCloudDialogflowV2IntentMessageText`

| Property | Type | Description |
|----------|------|-------------|
| `text` | `array<string>` |  |

### `GoogleCloudDialogflowV2IntentParameter`

| Property | Type | Description |
|----------|------|-------------|
| `defaultValue` | `string` |  |
| `displayName` | `string` |  |
| `entityTypeDisplayName` | `string` |  |
| `isList` | `boolean` |  |
| `mandatory` | `boolean` |  |
| `name` | `string` |  |
| `prompts` | `array<string>` |  |
| `value` | `string` |  |

### `GoogleCloudDialogflowV2IntentTrainingPhrase`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |
| `parts` | `array<GoogleCloudDialogflowV2IntentTrainingPhrasePart>` |  |
| `timesAddedCount` | `integer` |  |
| `type` | `string` |  |

### `GoogleCloudDialogflowV2IntentTrainingPhrasePart`

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` |  |
| `entityType` | `string` |  |
| `text` | `string` |  |
| `userDefined` | `boolean` |  |

### `GoogleCloudDialogflowV2KnowledgeAssistAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` |  |
| `knowledgeAssistDebugInfo` | `GoogleCloudDialogflowV2KnowledgeAssistDebugInfo` |  |
| `suggestedQuery` | `GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery` |  |
| `suggestedQueryAnswer` | `GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer` |  |

### `GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answerText` | `string` |  |
| `faqSource` | `GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource` |  |
| `generativeSource` | `GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource` |  |

### `GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource`

| Property | Type | Description |
|----------|------|-------------|
| `question` | `string` |  |

### `GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource`

| Property | Type | Description |
|----------|------|-------------|
| `snippets` | `array<GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet>` |  |

### `GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet`

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` |  |
| `text` | `string` |  |
| `title` | `string` |  |
| `uri` | `string` |  |

### `GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery`

| Property | Type | Description |
|----------|------|-------------|
| `queryText` | `string` |  |

### `GoogleCloudDialogflowV2KnowledgeAssistDebugInfo`

| Property | Type | Description |
|----------|------|-------------|
| `datastoreResponseReason` | `string` |  |
| `ingestedContextReferenceDebugInfo` | `GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo` |  |
| `knowledgeAssistBehavior` | `GoogleCloudDialogflowV2KnowledgeAssistDebugInfoKnowledgeAssistBehavior` |  |
| `queryCategorizationFailureReason` | `string` |  |
| `queryGenerationFailureReason` | `string` |  |
| `serviceLatency` | `GoogleCloudDialogflowV2ServiceLatency` |  |

### `GoogleCloudDialogflowV2KnowledgeAssistDebugInfoKnowledgeAssistBehavior`

| Property | Type | Description |
|----------|------|-------------|
| `answerGenerationRewriterOn` | `boolean` |  |
| `appendedSearchContextCount` | `integer` |  |
| `conversationTranscriptHasMixedLanguages` | `boolean` |  |
| `disableSyncDelivery` | `boolean` |  |
| `endUserMetadataIncluded` | `boolean` |  |
| `invalidItemsQuerySuggestionSkipped` | `boolean` |  |
| `multipleQueriesGenerated` | `boolean` |  |
| `previousQueriesIncluded` | `boolean` |  |
| `primaryQueryRedactedAndReplaced` | `boolean` |  |
| `queryContainedSearchContext` | `boolean` |  |
| `queryGenerationAgentLanguageMismatch` | `boolean` |  |
| `queryGenerationEndUserLanguageMismatch` | `boolean` |  |
| `returnQueryOnly` | `boolean` |  |
| `thirdPartyConnectorAllowed` | `boolean` |  |
| `useCustomSafetyFilterLevel` | `boolean` |  |
| `usePubsubDelivery` | `boolean` |  |
| `useTranslatedMessage` | `boolean` |  |

### `GoogleCloudDialogflowV2KnowledgeOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `doneTime` | `string` |  |
| `exportOperationMetadata` | `GoogleCloudDialogflowV2ExportOperationMetadata` |  |
| `knowledgeBase` | `string` |  |
| `state` | `string` |  |

### `GoogleCloudDialogflowV2Message`

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` |  |
| `createTime` | `string` |  |
| `languageCode` | `string` |  |
| `messageAnnotation` | `GoogleCloudDialogflowV2MessageAnnotation` |  |
| `name` | `string` |  |
| `participant` | `string` |  |
| `participantRole` | `string` |  |
| `sendTime` | `string` |  |
| `sentimentAnalysis` | `GoogleCloudDialogflowV2SentimentAnalysisResult` |  |

### `GoogleCloudDialogflowV2MessageAnnotation`

| Property | Type | Description |
|----------|------|-------------|
| `containEntities` | `boolean` |  |
| `parts` | `array<GoogleCloudDialogflowV2AnnotatedMessagePart>` |  |

### `GoogleCloudDialogflowV2OriginalDetectIntentRequest`

| Property | Type | Description |
|----------|------|-------------|
| `payload` | `object` |  |
| `source` | `string` |  |
| `version` | `string` |  |

### `GoogleCloudDialogflowV2QueryResult`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `allRequiredParamsPresent` | `boolean` |  |
| `cancelsSlotFilling` | `boolean` |  |
| `diagnosticInfo` | `object` |  |
| `fulfillmentMessages` | `array<GoogleCloudDialogflowV2IntentMessage>` |  |
| `fulfillmentText` | `string` |  |
| `intent` | `GoogleCloudDialogflowV2Intent` |  |
| `intentDetectionConfidence` | `number` |  |
| `languageCode` | `string` |  |
| `outputContexts` | `array<GoogleCloudDialogflowV2Context>` |  |
| `parameters` | `object` |  |
| `queryText` | `string` |  |
| `sentimentAnalysisResult` | `GoogleCloudDialogflowV2SentimentAnalysisResult` |  |
| `speechRecognitionConfidence` | `number` |  |
| `webhookPayload` | `object` |  |
| `webhookSource` | `string` |  |

### `GoogleCloudDialogflowV2Sentiment`

| Property | Type | Description |
|----------|------|-------------|
| `magnitude` | `number` |  |
| `score` | `number` |  |

### `GoogleCloudDialogflowV2SentimentAnalysisResult`

| Property | Type | Description |
|----------|------|-------------|
| `queryTextSentiment` | `GoogleCloudDialogflowV2Sentiment` |  |

### `GoogleCloudDialogflowV2ServiceLatency`

| Property | Type | Description |
|----------|------|-------------|
| `internalServiceLatencies` | `array<GoogleCloudDialogflowV2ServiceLatencyInternalServiceLatency>` |  |

### `GoogleCloudDialogflowV2ServiceLatencyInternalServiceLatency`

| Property | Type | Description |
|----------|------|-------------|
| `completeTime` | `string` |  |
| `latencyMs` | `number` |  |
| `startTime` | `string` |  |
| `step` | `string` |  |

### `GoogleCloudDialogflowV2SessionEntityType`

| Property | Type | Description |
|----------|------|-------------|
| `entities` | `array<GoogleCloudDialogflowV2EntityTypeEntity>` |  |
| `entityOverrideMode` | `string` |  |
| `name` | `string` |  |

### `GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `conversationProfile` | `string` |  |
| `createTime` | `string` |  |
| `participantRole` | `string` |  |
| `suggestionFeatureType` | `string` |  |

### `GoogleCloudDialogflowV2SmartReplyAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` |  |
| `confidence` | `number` |  |
| `reply` | `string` |  |

### `GoogleCloudDialogflowV2SmartReplyModelMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `trainingModelType` | `string` |  |

### `GoogleCloudDialogflowV2SpeechWordInfo`

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` |  |
| `endOffset` | `string` |  |
| `startOffset` | `string` |  |
| `word` | `string` |  |

### `GoogleCloudDialogflowV2StreamingRecognitionResult`

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` |  |
| `isFinal` | `boolean` |  |
| `languageCode` | `string` |  |
| `messageType` | `string` |  |
| `speechEndOffset` | `string` |  |
| `speechWordInfo` | `array<GoogleCloudDialogflowV2SpeechWordInfo>` |  |
| `transcript` | `string` |  |

### `GoogleCloudDialogflowV2SuggestArticlesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `articleAnswers` | `array<GoogleCloudDialogflowV2ArticleAnswer>` |  |
| `contextSize` | `integer` |  |
| `latestMessage` | `string` |  |

### `GoogleCloudDialogflowV2SuggestFaqAnswersResponse`

| Property | Type | Description |
|----------|------|-------------|
| `contextSize` | `integer` |  |
| `faqAnswers` | `array<GoogleCloudDialogflowV2FaqAnswer>` |  |
| `latestMessage` | `string` |  |

### `GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse`

| Property | Type | Description |
|----------|------|-------------|
| `contextSize` | `integer` |  |
| `knowledgeAssistAnswer` | `GoogleCloudDialogflowV2KnowledgeAssistAnswer` |  |
| `latestMessage` | `string` |  |

### `GoogleCloudDialogflowV2SuggestSmartRepliesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `contextSize` | `integer` |  |
| `latestMessage` | `string` |  |
| `smartReplyAnswers` | `array<GoogleCloudDialogflowV2SmartReplyAnswer>` |  |

### `GoogleCloudDialogflowV2SuggestionResult`

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpcStatus` |  |
| `generateSuggestionsResponse` | `GoogleCloudDialogflowV2GenerateSuggestionsResponse` |  |
| `suggestArticlesResponse` | `GoogleCloudDialogflowV2SuggestArticlesResponse` |  |
| `suggestFaqAnswersResponse` | `GoogleCloudDialogflowV2SuggestFaqAnswersResponse` |  |
| `suggestKnowledgeAssistResponse` | `GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse` |  |
| `suggestSmartRepliesResponse` | `GoogleCloudDialogflowV2SuggestSmartRepliesResponse` |  |

### `GoogleCloudDialogflowV2SummarySuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `summarySections` | `array<GoogleCloudDialogflowV2SummarySuggestionSummarySection>` |  |

### `GoogleCloudDialogflowV2SummarySuggestionSummarySection`

| Property | Type | Description |
|----------|------|-------------|
| `section` | `string` |  |
| `summary` | `string` |  |

### `GoogleCloudDialogflowV2ToolCall`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `answerRecord` | `string` |  |
| `createTime` | `string` |  |
| `inputParameters` | `object` |  |
| `state` | `string` |  |
| `tool` | `string` |  |
| `toolDisplayDetails` | `string` |  |
| `toolDisplayName` | `string` |  |

### `GoogleCloudDialogflowV2ToolCallResult`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `answerRecord` | `string` |  |
| `content` | `string` |  |
| `createTime` | `string` |  |
| `error` | `GoogleCloudDialogflowV2ToolCallResultError` |  |
| `rawContent` | `string` |  |
| `tool` | `string` |  |

### `GoogleCloudDialogflowV2ToolCallResultError`

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` |  |

### `GoogleCloudDialogflowV2UndeployConversationModelOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `conversationModel` | `string` |  |
| `createTime` | `string` |  |
| `doneTime` | `string` |  |

### `GoogleCloudDialogflowV2WebhookRequest`

| Property | Type | Description |
|----------|------|-------------|
| `originalDetectIntentRequest` | `GoogleCloudDialogflowV2OriginalDetectIntentRequest` |  |
| `queryResult` | `GoogleCloudDialogflowV2QueryResult` |  |
| `responseId` | `string` |  |
| `session` | `string` |  |

### `GoogleCloudDialogflowV2WebhookResponse`

| Property | Type | Description |
|----------|------|-------------|
| `followupEventInput` | `GoogleCloudDialogflowV2EventInput` |  |
| `fulfillmentMessages` | `array<GoogleCloudDialogflowV2IntentMessage>` |  |
| `fulfillmentText` | `string` |  |
| `outputContexts` | `array<GoogleCloudDialogflowV2Context>` |  |
| `payload` | `object` |  |
| `sessionEntityTypes` | `array<GoogleCloudDialogflowV2SessionEntityType>` |  |
| `source` | `string` |  |

### `GoogleCloudDialogflowV2beta1AgentCoachingInstruction`

| Property | Type | Description |
|----------|------|-------------|
| `agentAction` | `string` |  |
| `condition` | `string` |  |
| `displayDetails` | `string` |  |
| `displayName` | `string` |  |
| `duplicateCheckResult` | `GoogleCloudDialogflowV2beta1AgentCoachingInstructionDuplicateCheckResult` |  |
| `systemAction` | `string` |  |
| `triggeringEvent` | `string` |  |

### `GoogleCloudDialogflowV2beta1AgentCoachingInstructionDuplicateCheckResult`

| Property | Type | Description |
|----------|------|-------------|
| `duplicateSuggestions` | `array<GoogleCloudDialogflowV2beta1AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion>` |  |

### `GoogleCloudDialogflowV2beta1AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` |  |
| `similarityScore` | `number` |  |
| `suggestionIndex` | `integer` |  |

### `GoogleCloudDialogflowV2beta1AgentCoachingSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `agentActionSuggestions` | `array<GoogleCloudDialogflowV2beta1AgentCoachingSuggestionAgentActionSuggestion>` |  |
| `applicableInstructions` | `array<GoogleCloudDialogflowV2beta1AgentCoachingInstruction>` |  |
| `sampleResponses` | `array<GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSampleResponse>` |  |

### `GoogleCloudDialogflowV2beta1AgentCoachingSuggestionAgentActionSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `agentAction` | `string` |  |
| `duplicateCheckResult` | `GoogleCloudDialogflowV2beta1AgentCoachingSuggestionDuplicateCheckResult` |  |
| `sources` | `GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSources` |  |

### `GoogleCloudDialogflowV2beta1AgentCoachingSuggestionDuplicateCheckResult`

| Property | Type | Description |
|----------|------|-------------|
| `duplicateSuggestions` | `array<GoogleCloudDialogflowV2beta1AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion>` |  |

### `GoogleCloudDialogflowV2beta1AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` |  |
| `similarityScore` | `number` |  |
| `sources` | `GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSources` |  |
| `suggestionIndex` | `integer` |  |

### `GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSampleResponse`

| Property | Type | Description |
|----------|------|-------------|
| `duplicateCheckResult` | `GoogleCloudDialogflowV2beta1AgentCoachingSuggestionDuplicateCheckResult` |  |
| `responseText` | `string` |  |
| `sources` | `GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSources` |  |

### `GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSources`

| Property | Type | Description |
|----------|------|-------------|
| `instructionIndexes` | `array<integer>` |  |

### `GoogleCloudDialogflowV2beta1AnnotatedMessagePart`

| Property | Type | Description |
|----------|------|-------------|
| `entityType` | `string` |  |
| `formattedValue` | `any` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowV2beta1ArticleAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` |  |
| `metadata` | `object` |  |
| `snippets` | `array<string>` |  |
| `title` | `string` |  |
| `uri` | `string` |  |

### `GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entityTypes` | `array<GoogleCloudDialogflowV2beta1EntityType>` |  |

### `GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `intents` | `array<GoogleCloudDialogflowV2beta1Intent>` |  |

### `GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `conversationProfile` | `string` |  |
| `createTime` | `string` |  |
| `participantRole` | `string` |  |
| `suggestionFeatureType` | `string` |  |

### `GoogleCloudDialogflowV2beta1Context`

| Property | Type | Description |
|----------|------|-------------|
| `lifespanCount` | `integer` |  |
| `name` | `string` |  |
| `parameters` | `object` |  |

### `GoogleCloudDialogflowV2beta1ConversationEvent`

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `string` |  |
| `errorStatus` | `GoogleRpcStatus` |  |
| `newMessagePayload` | `GoogleCloudDialogflowV2beta1Message` |  |
| `newRecognitionResultPayload` | `GoogleCloudDialogflowV2beta1StreamingRecognitionResult` |  |
| `type` | `string` |  |

### `GoogleCloudDialogflowV2beta1DialogflowAssistAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` |  |
| `intentSuggestion` | `GoogleCloudDialogflowV2beta1IntentSuggestion` |  |
| `queryResult` | `GoogleCloudDialogflowV2beta1QueryResult` |  |

### `GoogleCloudDialogflowV2beta1EncryptionSpec`

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` |  |
| `name` | `string` |  |

### `GoogleCloudDialogflowV2beta1EntityType`

| Property | Type | Description |
|----------|------|-------------|
| `autoExpansionMode` | `string` |  |
| `displayName` | `string` |  |
| `enableFuzzyExtraction` | `boolean` |  |
| `entities` | `array<GoogleCloudDialogflowV2beta1EntityTypeEntity>` |  |
| `kind` | `string` |  |
| `name` | `string` |  |

### `GoogleCloudDialogflowV2beta1EntityTypeEntity`

| Property | Type | Description |
|----------|------|-------------|
| `synonyms` | `array<string>` |  |
| `value` | `string` |  |

### `GoogleCloudDialogflowV2beta1EventInput`

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` |  |
| `name` | `string` |  |
| `parameters` | `object` |  |

### `GoogleCloudDialogflowV2beta1ExportAgentResponse`

| Property | Type | Description |
|----------|------|-------------|
| `agentContent` | `string` |  |
| `agentUri` | `string` |  |

### `GoogleCloudDialogflowV2beta1ExportOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `exportedGcsDestination` | `GoogleCloudDialogflowV2beta1GcsDestination` |  |

### `GoogleCloudDialogflowV2beta1FaqAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `string` |  |
| `answerRecord` | `string` |  |
| `confidence` | `number` |  |
| `metadata` | `object` |  |
| `question` | `string` |  |
| `source` | `string` |  |

### `GoogleCloudDialogflowV2beta1FreeFormSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `response` | `string` |  |

### `GoogleCloudDialogflowV2beta1GcsDestination`

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` |  |

### `GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `generatorSuggestionAnswers` | `array<GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer>` |  |
| `latestMessage` | `string` |  |

### `GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` |  |
| `generatorSuggestion` | `GoogleCloudDialogflowV2beta1GeneratorSuggestion` |  |
| `sourceGenerator` | `string` |  |

### `GoogleCloudDialogflowV2beta1GeneratorSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `agentCoachingSuggestion` | `GoogleCloudDialogflowV2beta1AgentCoachingSuggestion` |  |
| `freeFormSuggestion` | `GoogleCloudDialogflowV2beta1FreeFormSuggestion` |  |
| `summarySuggestion` | `GoogleCloudDialogflowV2beta1SummarySuggestion` |  |
| `toolCallInfo` | `array<GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo>` |  |

### `GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo`

| Property | Type | Description |
|----------|------|-------------|
| `toolCall` | `GoogleCloudDialogflowV2beta1ToolCall` |  |
| `toolCallResult` | `GoogleCloudDialogflowV2beta1ToolCallResult` |  |

### `GoogleCloudDialogflowV2beta1HumanAgentAssistantEvent`

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `string` |  |
| `participant` | `string` |  |
| `suggestionResults` | `array<GoogleCloudDialogflowV2beta1SuggestionResult>` |  |

### `GoogleCloudDialogflowV2beta1ImportDocumentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `warnings` | `array<GoogleRpcStatus>` |  |

### `GoogleCloudDialogflowV2beta1IngestedContextReferenceDebugInfo`

| Property | Type | Description |
|----------|------|-------------|
| `contextReferenceRetrieved` | `boolean` |  |
| `ingestedParametersDebugInfo` | `array<GoogleCloudDialogflowV2beta1IngestedContextReferenceDebugInfoIngestedParameterDebugInfo>` |  |
| `projectNotAllowlisted` | `boolean` |  |

### `GoogleCloudDialogflowV2beta1IngestedContextReferenceDebugInfoIngestedParameterDebugInfo`

| Property | Type | Description |
|----------|------|-------------|
| `ingestionStatus` | `string` |  |
| `parameter` | `string` |  |

### `GoogleCloudDialogflowV2beta1InitializeEncryptionSpecMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `request` | `GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest` |  |

### `GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest`

| Property | Type | Description |
|----------|------|-------------|
| `encryptionSpec` | `GoogleCloudDialogflowV2beta1EncryptionSpec` |  |

### `GoogleCloudDialogflowV2beta1Intent`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `defaultResponsePlatforms` | `array<string>` |  |
| `displayName` | `string` |  |
| `endInteraction` | `boolean` |  |
| `events` | `array<string>` |  |
| `followupIntentInfo` | `array<GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>` |  |
| `inputContextNames` | `array<string>` |  |
| `isFallback` | `boolean` |  |
| `liveAgentHandoff` | `boolean` |  |
| `messages` | `array<GoogleCloudDialogflowV2beta1IntentMessage>` |  |
| `mlDisabled` | `boolean` |  |
| `mlEnabled` | `boolean` |  |
| `name` | `string` |  |
| `outputContexts` | `array<GoogleCloudDialogflowV2beta1Context>` |  |
| `parameters` | `array<GoogleCloudDialogflowV2beta1IntentParameter>` |  |
| `parentFollowupIntentName` | `string` |  |
| `priority` | `integer` |  |
| `resetContexts` | `boolean` |  |
| `rootFollowupIntentName` | `string` |  |
| `trainingPhrases` | `array<GoogleCloudDialogflowV2beta1IntentTrainingPhrase>` |  |
| `webhookState` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo`

| Property | Type | Description |
|----------|------|-------------|
| `followupIntentName` | `string` |  |
| `parentFollowupIntentName` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessage`

| Property | Type | Description |
|----------|------|-------------|
| `basicCard` | `GoogleCloudDialogflowV2beta1IntentMessageBasicCard` |  |
| `browseCarouselCard` | `GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard` |  |
| `card` | `GoogleCloudDialogflowV2beta1IntentMessageCard` |  |
| `carouselSelect` | `GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect` |  |
| `image` | `GoogleCloudDialogflowV2beta1IntentMessageImage` |  |
| `linkOutSuggestion` | `GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion` |  |
| `listSelect` | `GoogleCloudDialogflowV2beta1IntentMessageListSelect` |  |
| `mediaContent` | `GoogleCloudDialogflowV2beta1IntentMessageMediaContent` |  |
| `payload` | `object` |  |
| `platform` | `string` |  |
| `quickReplies` | `GoogleCloudDialogflowV2beta1IntentMessageQuickReplies` |  |
| `rbmCarouselRichCard` | `GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard` |  |
| `rbmStandaloneRichCard` | `GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard` |  |
| `rbmText` | `GoogleCloudDialogflowV2beta1IntentMessageRbmText` |  |
| `simpleResponses` | `GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses` |  |
| `suggestions` | `GoogleCloudDialogflowV2beta1IntentMessageSuggestions` |  |
| `tableCard` | `GoogleCloudDialogflowV2beta1IntentMessageTableCard` |  |
| `telephonyPlayAudio` | `GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio` |  |
| `telephonySynthesizeSpeech` | `GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech` |  |
| `telephonyTransferCall` | `GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall` |  |
| `text` | `GoogleCloudDialogflowV2beta1IntentMessageText` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageBasicCard`

| Property | Type | Description |
|----------|------|-------------|
| `buttons` | `array<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>` |  |
| `formattedText` | `string` |  |
| `image` | `GoogleCloudDialogflowV2beta1IntentMessageImage` |  |
| `subtitle` | `string` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton`

| Property | Type | Description |
|----------|------|-------------|
| `openUriAction` | `GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction`

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard`

| Property | Type | Description |
|----------|------|-------------|
| `imageDisplayOptions` | `string` |  |
| `items` | `array<GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `footer` | `string` |  |
| `image` | `GoogleCloudDialogflowV2beta1IntentMessageImage` |  |
| `openUriAction` | `GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction`

| Property | Type | Description |
|----------|------|-------------|
| `url` | `string` |  |
| `urlTypeHint` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageCard`

| Property | Type | Description |
|----------|------|-------------|
| `buttons` | `array<GoogleCloudDialogflowV2beta1IntentMessageCardButton>` |  |
| `imageUri` | `string` |  |
| `subtitle` | `string` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageCardButton`

| Property | Type | Description |
|----------|------|-------------|
| `postback` | `string` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `image` | `GoogleCloudDialogflowV2beta1IntentMessageImage` |  |
| `info` | `GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageColumnProperties`

| Property | Type | Description |
|----------|------|-------------|
| `header` | `string` |  |
| `horizontalAlignment` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageImage`

| Property | Type | Description |
|----------|------|-------------|
| `accessibilityText` | `string` |  |
| `imageUri` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `destinationName` | `string` |  |
| `uri` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageListSelect`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>` |  |
| `subtitle` | `string` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageListSelectItem`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `image` | `GoogleCloudDialogflowV2beta1IntentMessageImage` |  |
| `info` | `GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageMediaContent`

| Property | Type | Description |
|----------|------|-------------|
| `mediaObjects` | `array<GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>` |  |
| `mediaType` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject`

| Property | Type | Description |
|----------|------|-------------|
| `contentUrl` | `string` |  |
| `description` | `string` |  |
| `icon` | `GoogleCloudDialogflowV2beta1IntentMessageImage` |  |
| `largeImage` | `GoogleCloudDialogflowV2beta1IntentMessageImage` |  |
| `name` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageQuickReplies`

| Property | Type | Description |
|----------|------|-------------|
| `quickReplies` | `array<string>` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `media` | `GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia` |  |
| `suggestions` | `array<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia`

| Property | Type | Description |
|----------|------|-------------|
| `fileUri` | `string` |  |
| `height` | `string` |  |
| `thumbnailUri` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard`

| Property | Type | Description |
|----------|------|-------------|
| `cardContents` | `array<GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>` |  |
| `cardWidth` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard`

| Property | Type | Description |
|----------|------|-------------|
| `cardContent` | `GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent` |  |
| `cardOrientation` | `string` |  |
| `thumbnailImageAlignment` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction`

| Property | Type | Description |
|----------|------|-------------|
| `dial` | `GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial` |  |
| `openUrl` | `GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri` |  |
| `postbackData` | `string` |  |
| `shareLocation` | `GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial`

| Property | Type | Description |
|----------|------|-------------|
| `phoneNumber` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri`

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation`

### `GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply`

| Property | Type | Description |
|----------|------|-------------|
| `postbackData` | `string` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction` |  |
| `reply` | `GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageRbmText`

| Property | Type | Description |
|----------|------|-------------|
| `rbmSuggestion` | `array<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo`

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` |  |
| `synonyms` | `array<string>` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse`

| Property | Type | Description |
|----------|------|-------------|
| `displayText` | `string` |  |
| `ssml` | `string` |  |
| `textToSpeech` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses`

| Property | Type | Description |
|----------|------|-------------|
| `simpleResponses` | `array<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `title` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageSuggestions`

| Property | Type | Description |
|----------|------|-------------|
| `suggestions` | `array<GoogleCloudDialogflowV2beta1IntentMessageSuggestion>` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageTableCard`

| Property | Type | Description |
|----------|------|-------------|
| `buttons` | `array<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>` |  |
| `columnProperties` | `array<GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>` |  |
| `image` | `GoogleCloudDialogflowV2beta1IntentMessageImage` |  |
| `rows` | `array<GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>` |  |
| `subtitle` | `string` |  |
| `title` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageTableCardCell`

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageTableCardRow`

| Property | Type | Description |
|----------|------|-------------|
| `cells` | `array<GoogleCloudDialogflowV2beta1IntentMessageTableCardCell>` |  |
| `dividerAfter` | `boolean` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio`

| Property | Type | Description |
|----------|------|-------------|
| `audioUri` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech`

| Property | Type | Description |
|----------|------|-------------|
| `ssml` | `string` |  |
| `text` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall`

| Property | Type | Description |
|----------|------|-------------|
| `phoneNumber` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentMessageText`

| Property | Type | Description |
|----------|------|-------------|
| `text` | `array<string>` |  |

### `GoogleCloudDialogflowV2beta1IntentParameter`

| Property | Type | Description |
|----------|------|-------------|
| `defaultValue` | `string` |  |
| `displayName` | `string` |  |
| `entityTypeDisplayName` | `string` |  |
| `isList` | `boolean` |  |
| `mandatory` | `boolean` |  |
| `name` | `string` |  |
| `prompts` | `array<string>` |  |
| `value` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentSuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `displayName` | `string` |  |
| `intentV2` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentTrainingPhrase`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |
| `parts` | `array<GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>` |  |
| `timesAddedCount` | `integer` |  |
| `type` | `string` |  |

### `GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart`

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` |  |
| `entityType` | `string` |  |
| `text` | `string` |  |
| `userDefined` | `boolean` |  |

### `GoogleCloudDialogflowV2beta1KnowledgeAnswers`

| Property | Type | Description |
|----------|------|-------------|
| `answers` | `array<GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>` |  |

### `GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `string` |  |
| `faqQuestion` | `string` |  |
| `matchConfidence` | `number` |  |
| `matchConfidenceLevel` | `string` |  |
| `source` | `string` |  |

### `GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` |  |
| `knowledgeAssistDebugInfo` | `GoogleCloudDialogflowV2beta1KnowledgeAssistDebugInfo` |  |
| `suggestedQuery` | `GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerSuggestedQuery` |  |
| `suggestedQueryAnswer` | `GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer` |  |

### `GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answerText` | `string` |  |
| `faqSource` | `GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerFaqSource` |  |
| `generativeSource` | `GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource` |  |

### `GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerFaqSource`

| Property | Type | Description |
|----------|------|-------------|
| `question` | `string` |  |

### `GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource`

| Property | Type | Description |
|----------|------|-------------|
| `snippets` | `array<GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet>` |  |

### `GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet`

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` |  |
| `text` | `string` |  |
| `title` | `string` |  |
| `uri` | `string` |  |

### `GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerSuggestedQuery`

| Property | Type | Description |
|----------|------|-------------|
| `queryText` | `string` |  |

### `GoogleCloudDialogflowV2beta1KnowledgeAssistDebugInfo`

| Property | Type | Description |
|----------|------|-------------|
| `datastoreResponseReason` | `string` |  |
| `ingestedContextReferenceDebugInfo` | `GoogleCloudDialogflowV2beta1IngestedContextReferenceDebugInfo` |  |
| `knowledgeAssistBehavior` | `GoogleCloudDialogflowV2beta1KnowledgeAssistDebugInfoKnowledgeAssistBehavior` |  |
| `queryCategorizationFailureReason` | `string` |  |
| `queryGenerationFailureReason` | `string` |  |
| `serviceLatency` | `GoogleCloudDialogflowV2beta1ServiceLatency` |  |

### `GoogleCloudDialogflowV2beta1KnowledgeAssistDebugInfoKnowledgeAssistBehavior`

| Property | Type | Description |
|----------|------|-------------|
| `answerGenerationRewriterOn` | `boolean` |  |
| `appendedSearchContextCount` | `integer` |  |
| `conversationTranscriptHasMixedLanguages` | `boolean` |  |
| `disableSyncDelivery` | `boolean` |  |
| `endUserMetadataIncluded` | `boolean` |  |
| `invalidItemsQuerySuggestionSkipped` | `boolean` |  |
| `multipleQueriesGenerated` | `boolean` |  |
| `previousQueriesIncluded` | `boolean` |  |
| `primaryQueryRedactedAndReplaced` | `boolean` |  |
| `queryContainedSearchContext` | `boolean` |  |
| `queryGenerationAgentLanguageMismatch` | `boolean` |  |
| `queryGenerationEndUserLanguageMismatch` | `boolean` |  |
| `returnQueryOnly` | `boolean` |  |
| `thirdPartyConnectorAllowed` | `boolean` |  |
| `useCustomSafetyFilterLevel` | `boolean` |  |
| `usePubsubDelivery` | `boolean` |  |
| `useTranslatedMessage` | `boolean` |  |

### `GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `doneTime` | `string` |  |
| `exportOperationMetadata` | `GoogleCloudDialogflowV2beta1ExportOperationMetadata` |  |
| `knowledgeBase` | `string` |  |
| `state` | `string` |  |

### `GoogleCloudDialogflowV2beta1Message`

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` |  |
| `createTime` | `string` |  |
| `languageCode` | `string` |  |
| `messageAnnotation` | `GoogleCloudDialogflowV2beta1MessageAnnotation` |  |
| `name` | `string` |  |
| `participant` | `string` |  |
| `participantRole` | `string` |  |
| `responseMessages` | `array<GoogleCloudDialogflowV2beta1ResponseMessage>` |  |
| `sendTime` | `string` |  |
| `sentimentAnalysis` | `GoogleCloudDialogflowV2beta1SentimentAnalysisResult` |  |

### `GoogleCloudDialogflowV2beta1MessageAnnotation`

| Property | Type | Description |
|----------|------|-------------|
| `containEntities` | `boolean` |  |
| `parts` | `array<GoogleCloudDialogflowV2beta1AnnotatedMessagePart>` |  |

### `GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest`

| Property | Type | Description |
|----------|------|-------------|
| `payload` | `object` |  |
| `source` | `string` |  |
| `version` | `string` |  |

### `GoogleCloudDialogflowV2beta1QueryResult`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `allRequiredParamsPresent` | `boolean` |  |
| `cancelsSlotFilling` | `boolean` |  |
| `diagnosticInfo` | `object` |  |
| `fulfillmentMessages` | `array<GoogleCloudDialogflowV2beta1IntentMessage>` |  |
| `fulfillmentText` | `string` |  |
| `intent` | `GoogleCloudDialogflowV2beta1Intent` |  |
| `intentDetectionConfidence` | `number` |  |
| `knowledgeAnswers` | `GoogleCloudDialogflowV2beta1KnowledgeAnswers` |  |
| `languageCode` | `string` |  |
| `outputContexts` | `array<GoogleCloudDialogflowV2beta1Context>` |  |
| `parameters` | `object` |  |
| `queryText` | `string` |  |
| `sentimentAnalysisResult` | `GoogleCloudDialogflowV2beta1SentimentAnalysisResult` |  |
| `speechRecognitionConfidence` | `number` |  |
| `webhookPayload` | `object` |  |
| `webhookSource` | `string` |  |

### `GoogleCloudDialogflowV2beta1ResponseMessage`

| Property | Type | Description |
|----------|------|-------------|
| `endInteraction` | `GoogleCloudDialogflowV2beta1ResponseMessageEndInteraction` |  |
| `liveAgentHandoff` | `GoogleCloudDialogflowV2beta1ResponseMessageLiveAgentHandoff` |  |
| `mixedAudio` | `GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio` |  |
| `payload` | `object` |  |
| `telephonyTransferCall` | `GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall` |  |
| `text` | `GoogleCloudDialogflowV2beta1ResponseMessageText` |  |

### `GoogleCloudDialogflowV2beta1ResponseMessageEndInteraction`

### `GoogleCloudDialogflowV2beta1ResponseMessageLiveAgentHandoff`

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` |  |

### `GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio`

| Property | Type | Description |
|----------|------|-------------|
| `segments` | `array<GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment>` |  |

### `GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment`

| Property | Type | Description |
|----------|------|-------------|
| `allowPlaybackInterruption` | `boolean` |  |
| `audio` | `string` |  |
| `uri` | `string` |  |

### `GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall`

| Property | Type | Description |
|----------|------|-------------|
| `phoneNumber` | `string` |  |
| `sipUri` | `string` |  |

### `GoogleCloudDialogflowV2beta1ResponseMessageText`

| Property | Type | Description |
|----------|------|-------------|
| `text` | `array<string>` |  |

### `GoogleCloudDialogflowV2beta1Sentiment`

| Property | Type | Description |
|----------|------|-------------|
| `magnitude` | `number` |  |
| `score` | `number` |  |

### `GoogleCloudDialogflowV2beta1SentimentAnalysisResult`

| Property | Type | Description |
|----------|------|-------------|
| `queryTextSentiment` | `GoogleCloudDialogflowV2beta1Sentiment` |  |

### `GoogleCloudDialogflowV2beta1ServiceLatency`

| Property | Type | Description |
|----------|------|-------------|
| `internalServiceLatencies` | `array<GoogleCloudDialogflowV2beta1ServiceLatencyInternalServiceLatency>` |  |

### `GoogleCloudDialogflowV2beta1ServiceLatencyInternalServiceLatency`

| Property | Type | Description |
|----------|------|-------------|
| `completeTime` | `string` |  |
| `latencyMs` | `number` |  |
| `startTime` | `string` |  |
| `step` | `string` |  |

### `GoogleCloudDialogflowV2beta1SessionEntityType`

| Property | Type | Description |
|----------|------|-------------|
| `entities` | `array<GoogleCloudDialogflowV2beta1EntityTypeEntity>` |  |
| `entityOverrideMode` | `string` |  |
| `name` | `string` |  |

### `GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `conversationProfile` | `string` |  |
| `createTime` | `string` |  |
| `participantRole` | `string` |  |
| `suggestionFeatureType` | `string` |  |

### `GoogleCloudDialogflowV2beta1SmartReplyAnswer`

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` |  |
| `confidence` | `number` |  |
| `reply` | `string` |  |

### `GoogleCloudDialogflowV2beta1SpeechWordInfo`

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` |  |
| `endOffset` | `string` |  |
| `startOffset` | `string` |  |
| `word` | `string` |  |

### `GoogleCloudDialogflowV2beta1StreamingRecognitionResult`

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` |  |
| `dtmfDigits` | `GoogleCloudDialogflowV2beta1TelephonyDtmfEvents` |  |
| `isFinal` | `boolean` |  |
| `languageCode` | `string` |  |
| `messageType` | `string` |  |
| `speechEndOffset` | `string` |  |
| `speechWordInfo` | `array<GoogleCloudDialogflowV2beta1SpeechWordInfo>` |  |
| `stability` | `number` |  |
| `transcript` | `string` |  |

### `GoogleCloudDialogflowV2beta1SuggestArticlesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `articleAnswers` | `array<GoogleCloudDialogflowV2beta1ArticleAnswer>` |  |
| `contextSize` | `integer` |  |
| `latestMessage` | `string` |  |

### `GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `contextSize` | `integer` |  |
| `dialogflowAssistAnswers` | `array<GoogleCloudDialogflowV2beta1DialogflowAssistAnswer>` |  |
| `latestMessage` | `string` |  |

### `GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse`

| Property | Type | Description |
|----------|------|-------------|
| `contextSize` | `integer` |  |
| `faqAnswers` | `array<GoogleCloudDialogflowV2beta1FaqAnswer>` |  |
| `latestMessage` | `string` |  |

### `GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse`

| Property | Type | Description |
|----------|------|-------------|
| `contextSize` | `integer` |  |
| `knowledgeAssistAnswer` | `GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer` |  |
| `latestMessage` | `string` |  |

### `GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `contextSize` | `integer` |  |
| `latestMessage` | `string` |  |
| `smartReplyAnswers` | `array<GoogleCloudDialogflowV2beta1SmartReplyAnswer>` |  |

### `GoogleCloudDialogflowV2beta1SuggestionResult`

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpcStatus` |  |
| `generateSuggestionsResponse` | `GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse` |  |
| `suggestArticlesResponse` | `GoogleCloudDialogflowV2beta1SuggestArticlesResponse` |  |
| `suggestDialogflowAssistsResponse` | `GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse` |  |
| `suggestEntityExtractionResponse` | `GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse` |  |
| `suggestFaqAnswersResponse` | `GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse` |  |
| `suggestKnowledgeAssistResponse` | `GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse` |  |
| `suggestSmartRepliesResponse` | `GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse` |  |

### `GoogleCloudDialogflowV2beta1SummarySuggestion`

| Property | Type | Description |
|----------|------|-------------|
| `summarySections` | `array<GoogleCloudDialogflowV2beta1SummarySuggestionSummarySection>` |  |

### `GoogleCloudDialogflowV2beta1SummarySuggestionSummarySection`

| Property | Type | Description |
|----------|------|-------------|
| `section` | `string` |  |
| `summary` | `string` |  |

### `GoogleCloudDialogflowV2beta1TelephonyDtmfEvents`

| Property | Type | Description |
|----------|------|-------------|
| `dtmfEvents` | `array<string>` |  |

### `GoogleCloudDialogflowV2beta1ToolCall`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `answerRecord` | `string` |  |
| `createTime` | `string` |  |
| `inputParameters` | `object` |  |
| `state` | `string` |  |
| `tool` | `string` |  |
| `toolDisplayDetails` | `string` |  |
| `toolDisplayName` | `string` |  |

### `GoogleCloudDialogflowV2beta1ToolCallResult`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `answerRecord` | `string` |  |
| `content` | `string` |  |
| `createTime` | `string` |  |
| `error` | `GoogleCloudDialogflowV2beta1ToolCallResultError` |  |
| `rawContent` | `string` |  |
| `tool` | `string` |  |

### `GoogleCloudDialogflowV2beta1ToolCallResultError`

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` |  |

### `GoogleCloudDialogflowV2beta1WebhookRequest`

| Property | Type | Description |
|----------|------|-------------|
| `alternativeQueryResults` | `array<GoogleCloudDialogflowV2beta1QueryResult>` |  |
| `originalDetectIntentRequest` | `GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest` |  |
| `queryResult` | `GoogleCloudDialogflowV2beta1QueryResult` |  |
| `responseId` | `string` |  |
| `session` | `string` |  |

### `GoogleCloudDialogflowV2beta1WebhookResponse`

| Property | Type | Description |
|----------|------|-------------|
| `endInteraction` | `boolean` |  |
| `followupEventInput` | `GoogleCloudDialogflowV2beta1EventInput` |  |
| `fulfillmentMessages` | `array<GoogleCloudDialogflowV2beta1IntentMessage>` |  |
| `fulfillmentText` | `string` |  |
| `liveAgentHandoff` | `boolean` |  |
| `outputContexts` | `array<GoogleCloudDialogflowV2beta1Context>` |  |
| `payload` | `object` |  |
| `sessionEntityTypes` | `array<GoogleCloudDialogflowV2beta1SessionEntityType>` |  |
| `source` | `string` |  |

### `GoogleCloudDialogflowV3alpha1ConversationSignals`

| Property | Type | Description |
|----------|------|-------------|
| `turnSignals` | `GoogleCloudDialogflowV3alpha1TurnSignals` |  |

### `GoogleCloudDialogflowV3alpha1TurnSignals`

| Property | Type | Description |
|----------|------|-------------|
| `agentEscalated` | `boolean` |  |
| `dtmfUsed` | `boolean` |  |
| `failureReasons` | `array<string>` |  |
| `noMatch` | `boolean` |  |
| `noUserInput` | `boolean` |  |
| `reachedEndPage` | `boolean` |  |
| `sentimentMagnitude` | `number` |  |
| `sentimentScore` | `number` |  |
| `triggeredAbandonmentEvent` | `boolean` |  |
| `userEscalated` | `boolean` |  |
| `webhookStatuses` | `array<string>` |  |

### `GoogleCloudLocationListLocationsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<GoogleCloudLocationLocation>` |  |
| `nextPageToken` | `string` |  |

### `GoogleCloudLocationLocation`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` |  |
| `labels` | `object` |  |
| `locationId` | `string` |  |
| `metadata` | `object` |  |
| `name` | `string` |  |

### `GoogleLongrunningListOperationsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `operations` | `array<GoogleLongrunningOperation>` |  |
| `unreachable` | `array<string>` |  |

### `GoogleLongrunningOperation`

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` |  |
| `error` | `GoogleRpcStatus` |  |
| `metadata` | `object` |  |
| `name` | `string` |  |
| `response` | `object` |  |

### `GoogleProtobufEmpty`

### `GoogleRpcStatus`

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` |  |
| `details` | `array<object>` |  |
| `message` | `string` |  |

### `GoogleTypeLatLng`

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` |  |
| `longitude` | `number` |  |

