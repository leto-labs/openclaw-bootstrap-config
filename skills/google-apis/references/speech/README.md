# Cloud Speech-to-Text API

> Converts audio to text by applying powerful neural network models.

## Overview

- **API**: `speech`
- **Version**: `v1`
- **Base URL**: `https://speech.googleapis.com/`
- **Docs**: [https://cloud.google.com/speech-to-text/docs/quickstart-protocol](https://cloud.google.com/speech-to-text/docs/quickstart-protocol)

## When to Use

Converts audio to text by applying powerful neural network models.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const speech = google.speech('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await speech.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://speech.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

