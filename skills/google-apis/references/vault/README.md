# Google Vault API

> Retention and eDiscovery for Google Workspace. To work with Vault resources, the account must have the [required Vault privileges](https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege. For example, to download an export, an account needs the **Manage Exports** privilege and the matter shared with them. 

## Overview

- **API**: `vault`
- **Version**: `v1`
- **Base URL**: `https://vault.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/vault](https://developers.google.com/workspace/vault)

## When to Use

Retention and eDiscovery for Google Workspace. To work with Vault resources, the
account must have the [required Vault
privileges](https://support.google.com/vault/answer/2799699) and access to the
matter. To access a matter, the account must have created the matter, have the
matter shared with them, or have the **View All Matters** privilege. For
example, to download an export, an account needs the **Manage Exports**
privilege and the matter shared with them.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const vault = google.vault('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await vault.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://vault.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

