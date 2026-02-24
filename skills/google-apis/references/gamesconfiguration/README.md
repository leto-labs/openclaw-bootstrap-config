# Google Play Games Services Publishing API

> The Google Play Game Services Publishing API allows developers to configure their games in Game Services.

## Overview

- **API**: `gamesConfiguration`
- **Version**: `v1configuration`
- **Base URL**: `https://gamesconfiguration.googleapis.com/`
- **Docs**: [https://developers.google.com/games/](https://developers.google.com/games/)

## When to Use

The Google Play Game Services Publishing API allows developers to configure
their games in Game Services.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const gamesConfiguration = google.gamesConfiguration('v1configuration');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await gamesConfiguration.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://gamesconfiguration.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

