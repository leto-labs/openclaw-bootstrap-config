# AlloyDB API

> AlloyDB for PostgreSQL is an open source-compatible database service that provides a powerful option for migrating, modernizing, or building commercial-grade applications. It offers full compatibility with standard PostgreSQL, and is more than 4x faster for transactional workloads and up to 100x faster for analytical queries than standard PostgreSQL in our performance tests. AlloyDB for PostgreSQL offers a 99.99 percent availability SLA inclusive of maintenance. AlloyDB is optimized for the most demanding use cases, allowing you to build new applications that require high transaction throughput, large database sizes, or multiple read resources; scale existing PostgreSQL workloads with no application changes; and modernize legacy proprietary databases. 

## Overview

- **API**: `alloydb`
- **Version**: `v1`
- **Base URL**: `https://alloydb.googleapis.com/`
- **Docs**: [https://cloud.google.com/alloydb/](https://cloud.google.com/alloydb/)

## When to Use

AlloyDB for PostgreSQL is an open source-compatible database service that
provides a powerful option for migrating, modernizing, or building commercial-
grade applications. It offers full compatibility with standard PostgreSQL, and
is more than 4x faster for transactional workloads and up to 100x faster for
analytical queries than standard PostgreSQL in our performance tests. AlloyDB
for PostgreSQL offers a 99.99 percent availability SLA inclusive of maintenance.
AlloyDB is optimized for the most demanding use cases, allowing you to build new
applications that require high transaction throughput, large database sizes, or
multiple read resources; scale existing PostgreSQL workloads with no application
changes; and modernize legacy proprietary databases.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const alloydb = google.alloydb('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await alloydb.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://alloydb.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

