# Real-time Bidding API

> Allows external bidders to manage their RTB integration with Google. This includes managing bidder endpoints, QPS quotas, configuring what ad inventory to receive with pretargeting, submitting creatives for verification, and accessing creative metadata such as approval status.

## Overview

- **API**: `realtimebidding`
- **Version**: `v1`
- **Base URL**: `https://realtimebidding.googleapis.com/`
- **Docs**: [https://developers.google.com/authorized-buyers/apis/realtimebidding/reference/rest/](https://developers.google.com/authorized-buyers/apis/realtimebidding/reference/rest/)

## When to Use

Allows external bidders to manage their RTB integration with Google. This
includes managing bidder endpoints, QPS quotas, configuring what ad inventory to
receive with pretargeting, submitting creatives for verification, and accessing
creative metadata such as approval status.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const realtimebidding = google.realtimebidding('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await realtimebidding.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://realtimebidding.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

