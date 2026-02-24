# Google Identity Toolkit API - Common Patterns

## Create a User (Admin SDK)

Create users server-side without throttling or rate limiting. You can set email, password, phone, display name, and photo URL in one call.

```typescript
import { getAuth } from 'firebase-admin/auth';

const userRecord = await getAuth().createUser({
  email: 'user@example.com',
  emailVerified: false,
  phoneNumber: '+11234567890',
  password: 'secretPassword',
  displayName: 'John Doe',
  photoURL: 'http://www.example.com/photo.png',
  disabled: false,
});
console.log('Created user:', userRecord.uid);
```

You can also specify your own `uid` (1-128 characters, shorter is better for performance):

```typescript
const userRecord = await getAuth().createUser({
  uid: 'custom-uid-123',
  email: 'user@example.com',
  password: 'secretPassword',
});
```

## Sign In with Email/Password (REST API)

Use the Identity Toolkit REST endpoint directly for client-side or server-to-server sign-in:

```bash
curl -X POST \
  "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "email": "user@example.com",
    "password": "secretPassword",
    "returnSecureToken": true
  }'
```

Response includes `idToken`, `refreshToken`, and `expiresIn` (seconds).

## Sign In with OAuth Provider (REST API)

After obtaining an OAuth token from a provider (Google, Facebook, GitHub), exchange it:

```bash
curl -X POST \
  "https://identitytoolkit.googleapis.com/v1/accounts:signInWithIdp?key=YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "postBody": "id_token=GOOGLE_ID_TOKEN&providerId=google.com",
    "requestUri": "http://localhost",
    "returnSecureToken": true
  }'
```

For OAuth access tokens (Facebook, GitHub), use `access_token=TOKEN&providerId=PROVIDER` in `postBody`.

## Verify ID Tokens (Admin SDK)

Verify tokens on your backend to authenticate requests from client apps. ID tokens are JWTs signed by Google, valid for 1 hour.

```typescript
import { getAuth } from 'firebase-admin/auth';

try {
  const decodedToken = await getAuth().verifyIdToken(idToken);
  const uid = decodedToken.uid;
  // Proceed with authenticated request
} catch (error) {
  // Token is invalid, expired, or revoked
  console.error('Token verification failed:', error);
}
```

To also check if the token has been revoked:

```typescript
const decodedToken = await getAuth().verifyIdToken(idToken, true /* checkRevoked */);
```

## Custom Claims for Role-Based Access Control

Set custom claims (max 1000 bytes) to define user roles. Claims propagate to the ID token on next refresh.

```typescript
import { getAuth } from 'firebase-admin/auth';

// Set admin role
await getAuth().setCustomUserClaims(uid, { admin: true, accessLevel: 10 });

// Verify claims on a request
const decodedToken = await getAuth().verifyIdToken(idToken);
if (decodedToken.admin === true) {
  // Grant access to admin resource
}
```

Use claims in Firestore Security Rules:

```
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /admin/{document=**} {
      allow read, write: if request.auth.token.admin == true;
    }
  }
}
```

## Manage Users: Lookup, List, Update, Disable, Delete

### Lookup Users

```typescript
import { getAuth } from 'firebase-admin/auth';

// By UID
const user = await getAuth().getUser(uid);

// By email
const user = await getAuth().getUserByEmail('user@example.com');

// By phone number
const user = await getAuth().getUserByPhoneNumber('+11234567890');

// Bulk lookup (max 100 identifiers per call)
const result = await getAuth().getUsers([
  { uid: 'uid1' },
  { email: 'user2@example.com' },
  { phoneNumber: '+15555550003' },
  { providerId: 'google.com', providerUid: 'google_uid4' },
]);
```

### List All Users (paginated, 1000 per batch)

```typescript
const listAllUsers = async (nextPageToken?: string) => {
  const listUsersResult = await getAuth().listUsers(1000, nextPageToken);
  listUsersResult.users.forEach((userRecord) => {
    console.log('user', userRecord.toJSON());
  });
  if (listUsersResult.pageToken) {
    await listAllUsers(listUsersResult.pageToken);
  }
};
await listAllUsers();
```

### Update a User

```typescript
const userRecord = await getAuth().updateUser(uid, {
  email: 'newemail@example.com',
  emailVerified: true,
  password: 'newPassword',
  displayName: 'New Name',
  photoURL: 'http://www.example.com/new-photo.png',
  disabled: false,
});
```

Set a property to `null` to clear it (e.g., `displayName: null` removes the display name).

### Disable / Enable a User

```typescript
// Disable
await getAuth().updateUser(uid, { disabled: true });

// Re-enable
await getAuth().updateUser(uid, { disabled: false });
```

### Delete Users

```typescript
// Single user
await getAuth().deleteUser(uid);

// Batch delete (does NOT trigger onDelete Cloud Functions)
const deleteResult = await getAuth().deleteUsers(['uid1', 'uid2', 'uid3']);
console.log(`Deleted: ${deleteResult.successCount}, Failed: ${deleteResult.failureCount}`);
```

## Email Verification and Password Reset (REST API)

### Send Email Verification

```bash
curl -X POST \
  "https://identitytoolkit.googleapis.com/v1/accounts:sendOobCode?key=YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{ "requestType": "VERIFY_EMAIL", "idToken": "USER_ID_TOKEN" }'
```

### Send Password Reset Email

```bash
curl -X POST \
  "https://identitytoolkit.googleapis.com/v1/accounts:sendOobCode?key=YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{ "requestType": "PASSWORD_RESET", "email": "user@example.com" }'
```

### Verify Email Without User Action (Admin SDK)

```typescript
await getAuth().updateUser(uid, { emailVerified: true });
```

## Anonymous Auth and Upgrade

### Create Anonymous User (REST API)

```bash
curl -X POST \
  "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{ "returnSecureToken": true }'
```

### Upgrade Anonymous Account to Email/Password

Link credentials to the anonymous user by calling `accounts:update` with the anonymous user's ID token:

```bash
curl -X POST \
  "https://identitytoolkit.googleapis.com/v1/accounts:update?key=YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "idToken": "ANONYMOUS_USER_ID_TOKEN",
    "email": "user@example.com",
    "password": "newPassword",
    "returnSecureToken": true
  }'
```

## Multi-Factor Authentication (MFA)

Enroll a second factor for a user via the Admin SDK:

```typescript
// MFA enrollment is typically done client-side via the Firebase client SDK.
// Server-side, you can check MFA status on a user record:
const user = await getAuth().getUser(uid);
const enrolledFactors = user.multiFactor?.enrolledFactors || [];
console.log('MFA factors:', enrolledFactors);

// Unenroll a second factor (Admin SDK)
await getAuth().updateUser(uid, {
  multiFactor: {
    enrolledFactors: [], // Remove all second factors
  },
});
```

## Error Handling

```typescript
import { getAuth } from 'firebase-admin/auth';

try {
  const res = await getAuth().getUser(uid);
} catch (err: any) {
  switch (err.code) {
    case 'auth/user-not-found':
      // No user with this UID exists
      break;
    case 'auth/email-already-exists':
      // Email is already in use by another account
      break;
    case 'auth/phone-number-already-exists':
      // Phone number is already in use
      break;
    case 'auth/invalid-email':
      // Malformed email address
      break;
    case 'auth/invalid-password':
      // Password must be at least 6 characters
      break;
    case 'auth/uid-already-exists':
      // UID is already in use
      break;
    case 'auth/insufficient-permission':
      // Service account lacks required permissions
      break;
    default:
      console.error('Unexpected error:', err.code, err.message);
  }
}
```

REST API errors return JSON with `error.message` codes like `EMAIL_NOT_FOUND`, `INVALID_PASSWORD`, `USER_DISABLED`, `TOO_MANY_ATTEMPTS_TRY_LATER`.

## Batch Requests

For multiple independent operations, use batch requests to reduce round trips:

```typescript
// googleapis supports batching via gaxios or manual HTTP batch
// See references/googleapis-client.md for batch patterns
```

