# Firebase Data Connect API

> Firebase Data Connect is a relational database service for mobile and web apps that lets you build and scale using a fully-managed PostgreSQL database powered by Cloud SQL. The REST API lets developers manage the connections to their database, change the schema of their database, and query the database.

## Overview

- **API**: `firebasedataconnect`
- **Version**: `v1`
- **Base URL**: `https://firebasedataconnect.googleapis.com/`
- **Docs**: [https://firebase.google.com/docs/data-connect](https://firebase.google.com/docs/data-connect)

## When to Use

Firebase Data Connect is a relational database service for mobile and web apps
that lets you build and scale using a fully-managed PostgreSQL database powered
by Cloud SQL. The REST API lets developers manage the connections to their
database, change the schema of their database, and query the database.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const firebasedataconnect = google.firebasedataconnect('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await firebasedataconnect.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://firebasedataconnect.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

