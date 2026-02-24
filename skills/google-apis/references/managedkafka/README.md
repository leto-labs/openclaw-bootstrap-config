# Managed Service for Apache Kafka API

> Manage Apache Kafka clusters and resources. 

## Overview

- **API**: `managedkafka`
- **Version**: `v1`
- **Base URL**: `https://managedkafka.googleapis.com/`
- **Docs**: [https://cloud.google.com/managed-service-for-apache-kafka/docs](https://cloud.google.com/managed-service-for-apache-kafka/docs)

## When to Use

Manage Apache Kafka clusters and resources.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const managedkafka = google.managedkafka('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await managedkafka.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://managedkafka.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

