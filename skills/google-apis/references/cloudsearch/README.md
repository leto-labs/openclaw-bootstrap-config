# Cloud Search API

> Cloud Search provides cloud-based search capabilities over Google Workspace data. The Cloud Search API allows indexing of non-Google Workspace data into Cloud Search.

## Overview

- **API**: `cloudsearch`
- **Version**: `v1`
- **Base URL**: `https://cloudsearch.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/cloud-search/docs/guides/](https://developers.google.com/workspace/cloud-search/docs/guides/)

## When to Use

Cloud Search provides cloud-based search capabilities over Google Workspace
data. The Cloud Search API allows indexing of non-Google Workspace data into
Cloud Search.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudsearch = google.cloudsearch('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudsearch.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudsearch.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

