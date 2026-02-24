# Google Play Custom App Publishing API - API Reference

**Version**: `v1` | **Methods**: 1 | **Schemas**: 2

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `playcustomapp.accounts.customApps.create` | POST | `playcustomapp/v1/accounts/{account}/customApps` | Creates a new custom app. |

### `playcustomapp.accounts.customApps.create`

**POST** `playcustomapp/v1/accounts/{account}/customApps`

Creates a new custom app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `account` | `string` | path | Yes | Developer account ID. |

**Request body**: `CustomApp`

**Response**: `CustomApp`

```typescript
const res = await playcustomapp.customApps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

## Schemas

### `CustomApp`

This resource represents a custom app.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | Default listing language in BCP 47 format. |
| `organizations` | `array<Organization>` | Organizations to which the custom app should be made available. If the request contains any organ... |
| `packageName` | `string` | Output only. Package name of the created Android app. Only present in the API response. |
| `title` | `string` | Title for the Android app. |

### `Organization`

Represents an organization that can access a custom app.

| Property | Type | Description |
|----------|------|-------------|
| `organizationId` | `string` | Required. ID of the organization. |
| `organizationName` | `string` | Optional. A human-readable name of the organization, to help recognize the organization. |

