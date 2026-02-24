# Workload Manager API

> Workload Manager is a service that provides tooling for enterprise workloads to automate the deployment and validation of your workloads against best practices and recommendations.

## Overview

- **API**: `workloadmanager`
- **Version**: `v1`
- **Base URL**: `https://workloadmanager.googleapis.com/`
- **Docs**: [https://cloud.google.com/workload-manager/docs](https://cloud.google.com/workload-manager/docs)

## When to Use

Workload Manager is a service that provides tooling for enterprise workloads to
automate the deployment and validation of your workloads against best practices
and recommendations.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const workloadmanager = google.workloadmanager('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await workloadmanager.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://workloadmanager.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

