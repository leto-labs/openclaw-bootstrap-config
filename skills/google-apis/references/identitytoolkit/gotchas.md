# Google Identity Toolkit API - Gotchas & Troubleshooting

## Rate Limits

- Check quotas at [Google Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/identitytoolkit.googleapis.com/quotas)
- Default quotas vary by project billing status

### Specific Identity Platform / Firebase Auth Limits

| Limit | Value | Notes |
|-------|-------|-------|
| Accounts per project | Unlimited (Blaze), 50K (Spark free tier) | Spark tier has hard cap; upgrade to Blaze for production |
| Sign-ups per IP per minute | ~100 new accounts | Applies to email/password and anonymous sign-up; returns `TOO_MANY_ATTEMPTS_TRY_LATER` |
| Sign-in attempts per IP | Throttled after repeated failures | Protects against brute-force; temporary lockout per IP |
| SMS verification per project per day | Varies by region | Phone auth has per-project and per-phone-number limits |
| Email sending (verification/reset) | ~1000/day (default) | Can be increased via Firebase support |
| Admin SDK user management | No throttling from Admin SDK | Admin SDK calls bypass client-side rate limits |
| `listUsers` batch size | Max 1000 per page | Use `pageToken` for pagination |
| `getUsers` bulk lookup | Max 100 identifiers per call | Mix of uid, email, phone, provider identifiers |
| `deleteUsers` batch | Max 1000 uids per call | Does NOT trigger `onDelete` Cloud Functions |
| `uploadAccount` (user import) | Max 1000 users per batch | Use `downloadAccount` / `uploadAccount` for migrations |

### Blocking Functions

If you use [blocking functions](https://firebase.google.com/docs/auth/extend-with-blocking-functions) (`beforeCreate`, `beforeSignIn`), they must respond within **7 seconds** or the authentication operation will fail. Keep blocking function logic fast and avoid external network calls when possible.

## Token Expiration and Limits

| Token Type | Lifetime | Notes |
|------------|----------|-------|
| ID Token | **1 hour** | Signed JWT issued after sign-in. Must be refreshed by the client SDK automatically or manually via the refresh token. Your backend should always verify, never cache and trust. |
| Refresh Token | **Indefinite** (until revoked) | Used to obtain new ID tokens. Revoked when: user deletes account, user changes password, admin revokes via `revokeRefreshTokens()`, or user is disabled. |
| Custom Token | **Max 1 hour** (configurable) | Created by Admin SDK for custom auth. The client must exchange it for an ID token within this window. |
| Session Cookie | **5 minutes to 2 weeks** (configurable) | Created via `createSessionCookie()`. Set `expiresIn` in milliseconds. |

### Custom Claims Size Limit

Custom claims payload must not exceed **1000 bytes** when JSON-serialized. This is a hard limit. Exceeding it throws `auth/claims-too-large`. Design claims for roles/flags (e.g., `{ "admin": true, "role": "editor" }`), not for storing large data. Store extended user data in Firestore or your database.

### Reserved Claim Names

Custom claims must not use [OIDC reserved names](http://openid.net/specs/openid-connect-core-1_0.html#IDToken) (`iss`, `sub`, `aud`, `exp`, `iat`, `auth_time`, etc.) or Firebase reserved names (`firebase`, `user_id`, `email`, `email_verified`, `phone_number`). Using these will throw an error.

## Common Errors

### HTTP Error Codes

| Code | Meaning | Fix |
|------|---------|-----|
| 400 | Invalid request | Check parameter types, required fields, and payload format |
| 401 | Unauthenticated | Refresh token or check credentials; ensure API key is valid |
| 403 | Forbidden | Enable API in console, check scopes, verify billing |
| 404 | Not found | Verify resource ID and API version |
| 429 | Rate limited | Implement exponential backoff with jitter |
| 500 | Server error | Retry with backoff |
| 503 | Service unavailable | Retry with backoff |

### Admin SDK Error Codes

| Error Code | Meaning |
|------------|---------|
| `auth/user-not-found` | No user with the provided uid/email/phone exists |
| `auth/email-already-exists` | Email is already registered to another user |
| `auth/phone-number-already-exists` | Phone number is already registered |
| `auth/uid-already-exists` | Provided uid is already in use |
| `auth/invalid-email` | Email format is invalid |
| `auth/invalid-password` | Password must be at least 6 characters |
| `auth/invalid-phone-number` | Phone number must be valid E.164 format |
| `auth/claims-too-large` | Custom claims payload exceeds 1000 bytes |
| `auth/id-token-expired` | ID token has expired; client must refresh |
| `auth/id-token-revoked` | ID token has been revoked (when `checkRevoked: true`) |
| `auth/insufficient-permission` | Service account lacks required IAM permissions |
| `auth/project-not-found` | No Firebase project found for the credential |
| `auth/internal-error` | Unexpected server error; retry with backoff |

### REST API Error Messages

| Error Message | Meaning |
|---------------|---------|
| `EMAIL_NOT_FOUND` | No user with this email (sign-in) |
| `INVALID_PASSWORD` | Wrong password (sign-in) |
| `USER_DISABLED` | Account has been disabled by admin |
| `TOO_MANY_ATTEMPTS_TRY_LATER` | Rate limit exceeded; wait and retry |
| `EMAIL_EXISTS` | Email already registered (sign-up) |
| `OPERATION_NOT_ALLOWED` | Sign-in method not enabled in console |
| `WEAK_PASSWORD` | Password is less than 6 characters |
| `INVALID_ID_TOKEN` | ID token is malformed or expired |
| `CREDENTIAL_TOO_OLD_LOGIN_AGAIN` | Recent authentication required for sensitive operations |
| `FEDERATED_USER_ID_ALREADY_LINKED` | Provider account already linked to a different user |

## Exponential Backoff

Google APIs require exponential backoff for retries:

```typescript
async function withBackoff<T>(fn: () => Promise<T>, maxRetries = 5): Promise<T> {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await fn();
    } catch (err: any) {
      if (i === maxRetries - 1 || ![429, 500, 503].includes(err.code)) throw err;
      const delay = Math.pow(2, i) * 1000 + Math.random() * 1000;
      await new Promise(r => setTimeout(r, delay));
    }
  }
  throw new Error('Unreachable');
}
```

## Google API Error Response Format

REST API errors return in this format:

```json
{
  "error": {
    "code": 400,
    "message": "INVALID_PASSWORD",
    "errors": [
      {
        "message": "INVALID_PASSWORD",
        "domain": "global",
        "reason": "invalid"
      }
    ]
  }
}
```

## Account Linking Gotchas

- **Trusted providers** (Google @gmail.com, Yahoo @yahoo.com, Microsoft @outlook.com/@hotmail.com, Apple) automatically link when a user signs in with the same email via a different trusted provider.
- **Untrusted providers** (Facebook, Twitter, GitHub, and non-native domains on Google/Yahoo/Microsoft) require explicit account linking when the same email is used.
- Signing in with a trusted provider after an untrusted provider **overwrites** the untrusted provider link silently.
- Attempting to sign in again with the overwritten untrusted provider will throw an error requiring manual account linking.

## User Import/Export Gotchas

- `uploadAccount` supports max **1000 users per batch** request.
- Password hashes must match the project's hash algorithm configuration. Supported: SCRYPT (Firebase-modified), STANDARD_SCRYPT, HMAC_SHA256, HMAC_SHA1, HMAC_MD5, PBKDF2_SHA256, PBKDF_SHA1, SHA256, SHA1, MD5, BCRYPT.
- To access `passwordHash` and `passwordSalt` in `listUsers` responses, the service account needs the `firebaseauth.configs.getHashConfig` permission (not granted by default; create a custom IAM role).

## Tips

- Always enable `identitytoolkit.googleapis.com` in your GCP project before making calls
- Use `fields` parameter to request only needed fields (reduces response size and latency)
- ID tokens should be verified on every request; never trust a cached token without re-verification
- The Admin SDK automatically handles token refresh for service account credentials
- For multi-tenant setups, operations are scoped to a tenant via `getAuth().tenantManager().authForTenant(tenantId)`
- `deleteUsers` batch delete does NOT fire `onDelete` Cloud Functions event handlers; delete one-by-one if you need those events
- Blocking functions (`beforeCreate`, `beforeSignIn`) must complete within 7 seconds or the auth operation fails
- Anonymous users that are never upgraded to permanent accounts accumulate in your user database; consider periodic cleanup

