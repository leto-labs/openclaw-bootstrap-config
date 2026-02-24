# Identity and Access Management (IAM) API

> Manages identity and access control for Google Cloud resources, including the creation of service accounts, which you can use to authenticate to Google and make API calls. Enabling this API also enables the IAM Service Account Credentials API (iamcredentials.googleapis.com). However, disabling this API doesn't disable the IAM Service Account Credentials API. 

## Overview

- **API**: `iam`
- **Version**: `v2`
- **Base URL**: `https://iam.googleapis.com/`
- **Docs**: [https://cloud.google.com/iam/](https://cloud.google.com/iam/)

## When to Use

Manages identity and access control for Google Cloud resources, including the
creation of service accounts, which you can use to authenticate to Google and
make API calls. Enabling this API also enables the IAM Service Account
Credentials API (iamcredentials.googleapis.com). However, disabling this API
doesn't disable the IAM Service Account Credentials API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const iam = google.iam('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await iam.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://iam.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

