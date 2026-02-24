# Google Identity Toolkit API (Firebase Auth / Identity Platform)

> Authentication backend for Firebase and Google Cloud Identity Platform. Supports email/password, phone, OAuth providers (Google, Facebook, GitHub, Twitter), SAML, OIDC, anonymous auth, and custom auth systems.

## Overview

- **API**: `identitytoolkit`
- **Version**: `v3` (legacy REST), `v1` (modern REST via `identitytoolkit.googleapis.com/v1/`)
- **Base URL (legacy)**: `https://www.googleapis.com/identitytoolkit/v3/relyingparty/`
- **Base URL (modern)**: `https://identitytoolkit.googleapis.com/v1/`
- **Docs**: [Firebase Auth](https://firebase.google.com/docs/auth) | [Identity Platform](https://cloud.google.com/identity-platform/docs)

## When to Use

### REST API (`identitytoolkit.googleapis.com`)

Use the REST API when you need to perform auth operations **without** the Firebase SDK, such as:

- Server-to-server authentication flows (sign-up, sign-in, token exchange)
- Environments where the Firebase client SDK is not available (embedded devices, non-standard runtimes)
- Direct HTTP calls from backend services for user sign-in, token refresh, email verification, password reset
- The v1 REST API endpoints (e.g., `accounts:signInWithPassword`, `accounts:signUp`, `accounts:sendOobCode`) require an **API key** (not an OAuth token) for client-facing operations

### Firebase Admin SDK (`firebase-admin`)

Use the Admin SDK when you need **privileged server-side operations**:

- Create, update, delete, and list users without client-side throttling
- Verify ID tokens on your backend to authenticate incoming requests
- Set custom claims for role-based access control (RBAC)
- Generate custom tokens for integration with external auth systems
- Revoke refresh tokens to force re-authentication
- Manage multi-factor authentication enrollment
- Import/export users in bulk (migrations)
- The Admin SDK authenticates via a **service account** (not an API key)

### Firebase Client SDK (`firebase/auth`)

Use the client SDK in your frontend app (web, iOS, Android, Flutter) for:

- UI-driven sign-in flows (email/password, phone, OAuth pop-up/redirect)
- Automatic ID token refresh and persistence
- Account linking (merging multiple providers into one user)
- Anonymous auth with later upgrade to a permanent account
- FirebaseUI for pre-built authentication UI components

### How They Relate

```
Client SDK  --->  Firebase Auth backend  <---  REST API
                        |
                   Admin SDK (server-side, privileged)
```

All three interfaces manage the **same user database** in your Firebase/GCP project. The client SDK and REST API are for end-user-facing operations. The Admin SDK is for server-side administrative operations with elevated privileges.

## Quick Start

### Firebase Admin SDK (Node.js) -- Recommended for Server-Side

```typescript
import { initializeApp, cert } from 'firebase-admin/app';
import { getAuth } from 'firebase-admin/auth';

initializeApp({
  credential: cert('/path/to/service-account.json'),
});

// Create a user
const user = await getAuth().createUser({
  email: 'user@example.com',
  password: 'secretPassword',
});

// Verify an ID token from a client
const decoded = await getAuth().verifyIdToken(idToken);
console.log('Authenticated user:', decoded.uid);
```

### googleapis (Node.js) -- Legacy v3 REST API

```typescript
import { google } from "googleapis";

const identitytoolkit = google.identitytoolkit('v3');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: ['https://www.googleapis.com/auth/cloud-platform'],
});
google.options({ auth });

// Example: get account info
const res = await identitytoolkit.relyingparty.getAccountInfo({
  requestBody: { localId: ['user-uid-here'] },
});
```

### REST API (curl) -- Modern v1 Endpoints

```bash
# Sign up a new user with email/password
curl -X POST \
  "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{ "email": "user@example.com", "password": "secret123", "returnSecureToken": true }'

# Sign in an existing user
curl -X POST \
  "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{ "email": "user@example.com", "password": "secret123", "returnSecureToken": true }'

# Admin operations (with OAuth bearer token, not API key)
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://identitytoolkit.googleapis.com/v1/projects/YOUR_PROJECT_ID/accounts:lookup"
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters (v3 legacy) |
| `patterns.md` | Common workflow patterns (Admin SDK + REST API) |
| `gotchas.md` | Rate limits, token expiration, common errors, debugging |

