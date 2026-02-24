# Sensitive Data Protection (DLP)

> Discover and protect your sensitive data. A fully managed service designed to help you discover, classify, and protect your valuable data assets with ease.

## Overview

- **API**: `dlp`
- **Version**: `v2`
- **Base URL**: `https://dlp.googleapis.com/`
- **Docs**: [https://cloud.google.com/sensitive-data-protection/docs/](https://cloud.google.com/sensitive-data-protection/docs/)

## When to Use

Discover and protect your sensitive data. A fully managed service designed to
help you discover, classify, and protect your valuable data assets with ease.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const dlp = google.dlp('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await dlp.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://dlp.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

