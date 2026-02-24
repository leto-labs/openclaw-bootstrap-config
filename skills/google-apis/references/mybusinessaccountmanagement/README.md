# My Business Account Management API

> The My Business Account Management API provides an interface for managing access to a location on Google. Note - If you have a quota of 0 after enabling the API, please request for GBP API access.

## Overview

- **API**: `mybusinessaccountmanagement`
- **Version**: `v1`
- **Base URL**: `https://mybusinessaccountmanagement.googleapis.com/`
- **Docs**: [https://developers.google.com/my-business/](https://developers.google.com/my-business/)

## When to Use

The My Business Account Management API provides an interface for managing access
to a location on Google. Note - If you have a quota of 0 after enabling the API,
please request for GBP API access.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const mybusinessaccountmanagement = google.mybusinessaccountmanagement('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await mybusinessaccountmanagement.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://mybusinessaccountmanagement.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

