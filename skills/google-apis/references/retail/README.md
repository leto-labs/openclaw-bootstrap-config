# Vertex AI Search for commerce API

> Vertex AI Search for commerce API is made up of Retail Search, Browse and Recommendations. These discovery AI solutions help you implement personalized search, browse and recommendations, based on machine learning models, across your websites and mobile applications.

## Overview

- **API**: `retail`
- **Version**: `v2`
- **Base URL**: `https://retail.googleapis.com/`
- **Docs**: [https://cloud.google.com/recommendations](https://cloud.google.com/recommendations)

## When to Use

Vertex AI Search for commerce API is made up of Retail Search, Browse and
Recommendations. These discovery AI solutions help you implement personalized
search, browse and recommendations, based on machine learning models, across
your websites and mobile applications.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const retail = google.retail('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await retail.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://retail.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

