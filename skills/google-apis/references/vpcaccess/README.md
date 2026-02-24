# Serverless VPC Access API

> API for managing VPC access connectors.

## Overview

- **API**: `vpcaccess`
- **Version**: `v1`
- **Base URL**: `https://vpcaccess.googleapis.com/`
- **Docs**: [https://cloud.google.com/vpc/docs/configure-serverless-vpc-access](https://cloud.google.com/vpc/docs/configure-serverless-vpc-access)

## When to Use

API for managing VPC access connectors.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const vpcaccess = google.vpcaccess('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await vpcaccess.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://vpcaccess.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

