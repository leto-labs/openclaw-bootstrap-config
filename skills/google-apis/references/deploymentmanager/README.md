# Cloud Deployment Manager V2 API

> The Google Cloud Deployment Manager v2 API provides services for configuring, deploying, and viewing Google Cloud services and APIs via templates which specify deployments of Cloud resources.

## Overview

- **API**: `deploymentmanager`
- **Version**: `v2`
- **Base URL**: `https://deploymentmanager.googleapis.com/`
- **Docs**: [https://cloud.google.com/deployment-manager](https://cloud.google.com/deployment-manager)

## When to Use

The Google Cloud Deployment Manager v2 API provides services for configuring,
deploying, and viewing Google Cloud services and APIs via templates which
specify deployments of Cloud resources.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const deploymentmanager = google.deploymentmanager('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await deploymentmanager.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://deploymentmanager.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

