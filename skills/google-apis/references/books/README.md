# Books API

> The Google Books API allows clients to access the Google Books repository.

## Overview

- **API**: `books`
- **Version**: `v1`
- **Base URL**: `https://books.googleapis.com/`
- **Docs**: [https://code.google.com/apis/books/docs/v1/getting_started.html](https://code.google.com/apis/books/docs/v1/getting_started.html)

## When to Use

The Google Books API allows clients to access the Google Books repository.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const books = google.books('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await books.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://books.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

