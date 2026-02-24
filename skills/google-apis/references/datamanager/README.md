# Data Manager API

> A unified ingestion API for data partners, agencies and advertisers to connect first-party data across Google advertising products.

## Overview

- **API**: `datamanager`
- **Version**: `v1`
- **Base URL**: `https://datamanager.googleapis.com/`
- **Docs**: [https://developers.google.com/data-manager](https://developers.google.com/data-manager)

## When to Use

A unified ingestion API for data partners, agencies and advertisers to connect
first-party data across Google advertising products.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const datamanager = google.datamanager('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await datamanager.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://datamanager.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

