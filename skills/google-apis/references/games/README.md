# Google Play Games Services API

> The Google Play Games Service allows developers to enhance games with social leaderboards, achievements, game state, sign-in with Google, and more.

## Overview

- **API**: `games`
- **Version**: `v1`
- **Base URL**: `https://games.googleapis.com/`
- **Docs**: [https://developers.google.com/games/](https://developers.google.com/games/)

## When to Use

The Google Play Games Service allows developers to enhance games with social
leaderboards, achievements, game state, sign-in with Google, and more.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const games = google.games('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await games.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://games.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

