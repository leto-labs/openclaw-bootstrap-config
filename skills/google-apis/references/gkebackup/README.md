# Backup for GKE API

> Backup for GKE is a managed Kubernetes workload backup and restore service for GKE clusters.

## Overview

- **API**: `gkebackup`
- **Version**: `v1`
- **Base URL**: `https://gkebackup.googleapis.com/`
- **Docs**: [https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke)

## When to Use

Backup for GKE is a managed Kubernetes workload backup and restore service for
GKE clusters.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const gkebackup = google.gkebackup('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await gkebackup.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://gkebackup.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

