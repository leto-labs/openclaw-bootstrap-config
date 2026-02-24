# Dialogflow API

> Builds conversational interfaces (for example, chatbots, and voice-powered apps and devices).

## Overview

- **API**: `dialogflow`
- **Version**: `v3`
- **Base URL**: `https://dialogflow.googleapis.com/`
- **Docs**: [https://cloud.google.com/dialogflow/](https://cloud.google.com/dialogflow/)

## When to Use

Builds conversational interfaces (for example, chatbots, and voice-powered apps
and devices).

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const dialogflow = google.dialogflow('v3');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await dialogflow.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://dialogflow.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

