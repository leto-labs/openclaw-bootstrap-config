# Cloud Document AI API

> Service to parse structured information from unstructured or semi-structured documents using state-of-the-art Google AI such as natural language, computer vision, translation, and AutoML.

## Overview

- **API**: `documentai`
- **Version**: `v1`
- **Base URL**: `https://documentai.googleapis.com/`
- **Docs**: [https://cloud.google.com/document-ai/docs/](https://cloud.google.com/document-ai/docs/)

## When to Use

Service to parse structured information from unstructured or semi-structured
documents using state-of-the-art Google AI such as natural language, computer
vision, translation, and AutoML.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const documentai = google.documentai('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await documentai.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://documentai.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

