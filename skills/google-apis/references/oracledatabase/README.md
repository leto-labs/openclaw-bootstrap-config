# Oracle Database@Google Cloud API

> The Oracle Database@Google Cloud API provides a set of APIs to manage Oracle database services, such as Exadata and Autonomous Databases.

## Overview

- **API**: `oracledatabase`
- **Version**: `v1`
- **Base URL**: `https://oracledatabase.googleapis.com/`
- **Docs**: [https://cloud.google.com/oracle/database/docs](https://cloud.google.com/oracle/database/docs)

## When to Use

The Oracle Database@Google Cloud API provides a set of APIs to manage Oracle
database services, such as Exadata and Autonomous Databases.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const oracledatabase = google.oracledatabase('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await oracledatabase.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://oracledatabase.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

