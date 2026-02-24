# Data pipelines API

> Data Pipelines provides an interface for creating, updating, and managing recurring Data Analytics jobs.

## Overview

- **API**: `datapipelines`
- **Version**: `v1`
- **Base URL**: `https://datapipelines.googleapis.com/`
- **Docs**: [https://cloud.google.com/dataflow/docs/guides/data-pipelines](https://cloud.google.com/dataflow/docs/guides/data-pipelines)

## When to Use

Data Pipelines provides an interface for creating, updating, and managing
recurring Data Analytics jobs.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const datapipelines = google.datapipelines('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await datapipelines.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://datapipelines.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

