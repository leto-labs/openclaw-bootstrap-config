# Cloud Data Fusion API

> Cloud Data Fusion is a fully-managed, cloud native, enterprise data integration service for quickly building and managing data pipelines. It provides a graphical interface to increase time efficiency and reduce complexity, and allows business users, developers, and data scientists to easily and reliably build scalable data integration solutions to cleanse, prepare, blend, transfer and transform data without having to wrestle with infrastructure.

## Overview

- **API**: `datafusion`
- **Version**: `v1`
- **Base URL**: `https://datafusion.googleapis.com/`
- **Docs**: [https://cloud.google.com/data-fusion/docs](https://cloud.google.com/data-fusion/docs)

## When to Use

Cloud Data Fusion is a fully-managed, cloud native, enterprise data integration
service for quickly building and managing data pipelines. It provides a
graphical interface to increase time efficiency and reduce complexity, and
allows business users, developers, and data scientists to easily and reliably
build scalable data integration solutions to cleanse, prepare, blend, transfer
and transform data without having to wrestle with infrastructure.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const datafusion = google.datafusion('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await datafusion.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://datafusion.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

