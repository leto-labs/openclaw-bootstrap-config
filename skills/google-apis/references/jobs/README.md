# Cloud Talent Solution API

> Cloud Talent Solution provides the capability to create, read, update, and delete job postings, as well as search jobs based on keywords and filters. 

## Overview

- **API**: `jobs`
- **Version**: `v4`
- **Base URL**: `https://jobs.googleapis.com/`
- **Docs**: [https://cloud.google.com/talent-solution/job-search/docs/](https://cloud.google.com/talent-solution/job-search/docs/)

## When to Use

Cloud Talent Solution provides the capability to create, read, update, and
delete job postings, as well as search jobs based on keywords and filters.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const jobs = google.jobs('v4');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await jobs.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://jobs.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

