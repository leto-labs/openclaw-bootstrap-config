# BigLake API

> The BigLake API provides access to BigLake Metastore, a serverless, fully managed, and highly available metastore for open-source data that can be used for querying Apache Iceberg tables in BigQuery.

## Overview

- **API**: `biglake`
- **Version**: `v1`
- **Base URL**: `https://biglake.googleapis.com/`
- **Docs**: [https://cloud.google.com/bigquery/](https://cloud.google.com/bigquery/)

## When to Use

The BigLake API provides access to BigLake Metastore, a serverless, fully
managed, and highly available metastore for open-source data that can be used
for querying Apache Iceberg tables in BigQuery.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const biglake = google.biglake('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await biglake.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://biglake.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

