# Google Play Games Services Management API

> The Google Play Games Management API allows developers to manage resources from the Google Play Game service.

## Overview

- **API**: `gamesManagement`
- **Version**: `v1management`
- **Base URL**: `https://gamesmanagement.googleapis.com/`
- **Docs**: [https://developers.google.com/games/](https://developers.google.com/games/)

## When to Use

The Google Play Games Management API allows developers to manage resources from
the Google Play Game service.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const gamesManagement = google.gamesManagement('v1management');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await gamesManagement.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://gamesmanagement.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

