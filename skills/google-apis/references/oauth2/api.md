# Google OAuth2 API - API Reference

**Version**: `v2` | **Methods**: 3 | **Schemas**: 2

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `oauth2.tokeninfo` | POST | `oauth2/v2/tokeninfo` |  |
| `oauth2.userinfo.get` | GET | `oauth2/v2/userinfo` |  |
| `oauth2.userinfo.v2.me.get` | GET | `userinfo/v2/me` |  |

### `oauth2.tokeninfo`

**POST** `oauth2/v2/tokeninfo`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `access_token` | `string` | query | No |  |
| `id_token` | `string` | query | No |  |

**Response**: `Tokeninfo`

```typescript
const res = await oauth2.tokeninfo({
  // parameters
});
```

---

### `oauth2.userinfo.get`

**GET** `oauth2/v2/userinfo`

**Response**: `Userinfo`

```typescript
const res = await oauth2.userinfo.get({
  // parameters
});
```

**Required scopes:**
- `openid`
- `https://www.googleapis.com/auth/userinfo.email`
- `https://www.googleapis.com/auth/userinfo.profile`

---

### `oauth2.userinfo.v2.me.get`

**GET** `userinfo/v2/me`

**Response**: `Userinfo`

```typescript
const res = await oauth2.me.get({
  // parameters
});
```

**Required scopes:**
- `openid`
- `https://www.googleapis.com/auth/userinfo.email`
- `https://www.googleapis.com/auth/userinfo.profile`

---

## Schemas

### `Tokeninfo`

| Property | Type | Description |
|----------|------|-------------|
| `audience` | `string` | Who is the intended audience for this token. In general the same as issued_to. |
| `email` | `string` | The email address of the user. Present only if the email scope is present in the request. |
| `expires_in` | `integer` | The expiry time of the token, as number of seconds left until expiry. |
| `issued_to` | `string` | To whom was the token issued to. In general the same as audience. |
| `scope` | `string` | The space separated list of scopes granted to this token. |
| `user_id` | `string` | The obfuscated user id. |
| `verified_email` | `boolean` | Boolean flag which is true if the email address is verified. Present only if the email scope is p... |

### `Userinfo`

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The user's email address. |
| `family_name` | `string` | The user's last name. |
| `gender` | `string` | The user's gender. |
| `given_name` | `string` | The user's first name. |
| `hd` | `string` | The hosted domain e.g. example.com if the user is Google apps user. |
| `id` | `string` | The obfuscated ID of the user. |
| `link` | `string` | URL of the profile page. |
| `locale` | `string` | The user's preferred locale. |
| `name` | `string` | The user's full name. |
| `picture` | `string` | URL of the user's picture image. |
| `verified_email` | `boolean` | Boolean flag which is true if the email address is verified. Always verified because we only retu... |

