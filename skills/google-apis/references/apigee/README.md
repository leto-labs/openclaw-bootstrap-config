# Apigee API

> Use the Apigee API to programmatically develop and manage APIs with a set of RESTful operations. Develop and secure API proxies, deploy and undeploy API proxy revisions, monitor APIs, configure environments, manage users, and more. Note: This product is available as a free trial for a time period of 60 days.

## Overview

- **API**: `apigee`
- **Version**: `v1`
- **Base URL**: `https://apigee.googleapis.com/`
- **Docs**: [https://cloud.google.com/apigee-api-management/](https://cloud.google.com/apigee-api-management/)

## When to Use

Use the Apigee API to programmatically develop and manage APIs with a set of
RESTful operations. Develop and secure API proxies, deploy and undeploy API
proxy revisions, monitor APIs, configure environments, manage users, and more.
Note: This product is available as a free trial for a time period of 60 days.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const apigee = google.apigee('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await apigee.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://apigee.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

