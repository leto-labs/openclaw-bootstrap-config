# Cluster Director API

> The Cluster Director API allows you to deploy, manage, and monitor clusters that run AI, ML, or HPC workloads.

## Overview

- **API**: `hypercomputecluster`
- **Version**: `v1`
- **Base URL**: `https://hypercomputecluster.googleapis.com/`
- **Docs**: [https://docs.cloud.google.com/cluster-director/docs](https://docs.cloud.google.com/cluster-director/docs)

## When to Use

The Cluster Director API allows you to deploy, manage, and monitor clusters that
run AI, ML, or HPC workloads.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const hypercomputecluster = google.hypercomputecluster('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await hypercomputecluster.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://hypercomputecluster.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

