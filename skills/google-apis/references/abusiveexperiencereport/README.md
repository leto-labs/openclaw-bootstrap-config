# Abusive Experience Report API

> Views Abusive Experience Report data, and gets a list of sites that have a significant number of abusive experiences.

## Overview

- **API**: `abusiveexperiencereport`
- **Version**: `v1`
- **Base URL**: `https://abusiveexperiencereport.googleapis.com/`
- **Docs**: [https://developers.google.com/abusive-experience-report/](https://developers.google.com/abusive-experience-report/)

## When to Use

Views Abusive Experience Report data, and gets a list of sites that have a
significant number of abusive experiences.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const abusiveexperiencereport = google.abusiveexperiencereport('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await abusiveexperiencereport.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://abusiveexperiencereport.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

