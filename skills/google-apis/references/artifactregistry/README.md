# Artifact Registry API

> Store and manage build artifacts in a scalable and integrated service built on Google infrastructure.

## Overview

- **API**: `artifactregistry`
- **Version**: `v1`
- **Base URL**: `https://artifactregistry.googleapis.com/`
- **Docs**: [https://cloud.google.com/artifacts/docs/](https://cloud.google.com/artifacts/docs/)

## When to Use

Store and manage build artifacts in a scalable and integrated service built on
Google infrastructure.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const artifactregistry = google.artifactregistry('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await artifactregistry.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://artifactregistry.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

