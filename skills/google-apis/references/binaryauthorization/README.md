# Binary Authorization API

> The management interface for Binary Authorization, a service that provides policy-based deployment validation and control for images deployed to Google Kubernetes Engine (GKE), Anthos Service Mesh, Anthos Clusters, and Cloud Run. 

## Overview

- **API**: `binaryauthorization`
- **Version**: `v1`
- **Base URL**: `https://binaryauthorization.googleapis.com/`
- **Docs**: [https://cloud.google.com/binary-authorization/](https://cloud.google.com/binary-authorization/)

## When to Use

The management interface for Binary Authorization, a service that provides
policy-based deployment validation and control for images deployed to Google
Kubernetes Engine (GKE), Anthos Service Mesh, Anthos Clusters, and Cloud Run.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const binaryauthorization = google.binaryauthorization('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await binaryauthorization.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://binaryauthorization.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

