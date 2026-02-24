# BeyondCorp API

> Chrome Enterprise Premium is a secure enterprise browsing solution that provides secure access to applications and resources, and offers integrated threat and data protection. It adds an extra layer of security to safeguard your Chrome browser environment, including Data Loss Prevention (DLP), real-time URL and file scanning, and Context-Aware Access for SaaS and web apps.

## Overview

- **API**: `beyondcorp`
- **Version**: `v1`
- **Base URL**: `https://beyondcorp.googleapis.com/`
- **Docs**: [https://cloud.google.com/](https://cloud.google.com/)

## When to Use

Chrome Enterprise Premium is a secure enterprise browsing solution that provides
secure access to applications and resources, and offers integrated threat and
data protection. It adds an extra layer of security to safeguard your Chrome
browser environment, including Data Loss Prevention (DLP), real-time URL and
file scanning, and Context-Aware Access for SaaS and web apps.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const beyondcorp = google.beyondcorp('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await beyondcorp.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://beyondcorp.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

