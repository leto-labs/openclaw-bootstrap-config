# Cloud Trace API

> Sends application trace data to Cloud Trace for viewing. Trace data is collected for all App Engine applications by default. Trace data from other applications can be provided using this API. This library is used to interact with the Cloud Trace API directly. If you are looking to instrument your application for Cloud Trace, we recommend using OpenTelemetry. 

## Overview

- **API**: `cloudtrace`
- **Version**: `v2`
- **Base URL**: `https://cloudtrace.googleapis.com/`
- **Docs**: [https://cloud.google.com/trace/](https://cloud.google.com/trace/)

## When to Use

Sends application trace data to Cloud Trace for viewing. Trace data is collected
for all App Engine applications by default. Trace data from other applications
can be provided using this API. This library is used to interact with the Cloud
Trace API directly. If you are looking to instrument your application for Cloud
Trace, we recommend using OpenTelemetry.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudtrace = google.cloudtrace('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudtrace.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudtrace.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

