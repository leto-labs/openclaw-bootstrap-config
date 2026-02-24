# Container Analysis API

> This API is a prerequisite for leveraging Artifact Analysis scanning capabilities in Artifact Registry. In addition, the Container Analysis API is an implementation of the Grafeas API, which enables storing, querying, and retrieval of critical metadata about all of your software artifacts.

## Overview

- **API**: `containeranalysis`
- **Version**: `v1`
- **Base URL**: `https://containeranalysis.googleapis.com/`
- **Docs**: [https://cloud.google.com/container-analysis/api/reference/rest/](https://cloud.google.com/container-analysis/api/reference/rest/)

## When to Use

This API is a prerequisite for leveraging Artifact Analysis scanning
capabilities in Artifact Registry. In addition, the Container Analysis API is an
implementation of the Grafeas API, which enables storing, querying, and
retrieval of critical metadata about all of your software artifacts.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const containeranalysis = google.containeranalysis('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await containeranalysis.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://containeranalysis.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

