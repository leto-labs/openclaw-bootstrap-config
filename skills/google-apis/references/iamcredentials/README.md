# IAM Service Account Credentials API

> Creates short-lived credentials for impersonating IAM service accounts. Disabling this API also disables the IAM API (iam.googleapis.com). However, enabling this API doesn't enable the IAM API. 

## Overview

- **API**: `iamcredentials`
- **Version**: `v1`
- **Base URL**: `https://iamcredentials.googleapis.com/`
- **Docs**: [https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials](https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials)

## When to Use

Creates short-lived credentials for impersonating IAM service accounts.
Disabling this API also disables the IAM API (iam.googleapis.com). However,
enabling this API doesn't enable the IAM API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const iamcredentials = google.iamcredentials('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await iamcredentials.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://iamcredentials.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

