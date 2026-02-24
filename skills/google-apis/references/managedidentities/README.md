# Managed Service for Microsoft Active Directory API

> The Managed Service for Microsoft Active Directory API is used for managing a highly available, hardened service running Microsoft Active Directory (AD).

## Overview

- **API**: `managedidentities`
- **Version**: `v1`
- **Base URL**: `https://managedidentities.googleapis.com/`
- **Docs**: [https://cloud.google.com/managed-microsoft-ad/](https://cloud.google.com/managed-microsoft-ad/)

## When to Use

The Managed Service for Microsoft Active Directory API is used for managing a
highly available, hardened service running Microsoft Active Directory (AD).

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const managedidentities = google.managedidentities('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await managedidentities.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://managedidentities.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

