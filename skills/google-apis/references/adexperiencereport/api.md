# Ad Experience Report API - API Reference

**Version**: `v1` | **Methods**: 2 | **Schemas**: 3

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `adexperiencereport.sites.get` | GET | `v1/{+name}` | Gets a site's Ad Experience Report summary. |
| `adexperiencereport.violatingSites.list` | GET | `v1/violatingSites` | Lists sites that are failing in the Ad Experience Report on at least one platform. |

### `adexperiencereport.sites.get`

**GET** `v1/{+name}`

Gets a site's Ad Experience Report summary.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the site whose summary to get, e.g. `sites/http%3A%2F%2Fwww.google.com%2F`. Format: `sites/{site}` |

**Response**: `SiteSummaryResponse`

```typescript
const res = await adexperiencereport.sites.get({
  // parameters
});
```

---

### `adexperiencereport.violatingSites.list`

**GET** `v1/violatingSites`

Lists sites that are failing in the Ad Experience Report on at least one platform.

**Response**: `ViolatingSitesResponse`

```typescript
const res = await adexperiencereport.violatingSites.list({
  // parameters
});
```

---

## Schemas

### `PlatformSummary`

A site's Ad Experience Report summary on a single platform.

| Property | Type | Description |
|----------|------|-------------|
| `betterAdsStatus` | `string` | The site's Ad Experience Report status on this platform. |
| `enforcementTime` | `string` | The time at which [enforcement](https://support.google.com/webtools/answer/7308033) against the s... |
| `filterStatus` | `string` | The site's [enforcement status](https://support.google.com/webtools/answer/7308033) on this platf... |
| `lastChangeTime` | `string` | The time at which the site's status last changed on this platform. |
| `region` | `array<string>` | The site's regions on this platform. No longer populated, because there is no longer any semantic... |
| `reportUrl` | `string` | A link to the full Ad Experience Report for the site on this platform.. Not set in ViolatingSites... |
| `underReview` | `boolean` | Whether the site is currently under review on this platform. |

### `SiteSummaryResponse`

Response message for GetSiteSummary.

| Property | Type | Description |
|----------|------|-------------|
| `desktopSummary` | `PlatformSummary` | The site's Ad Experience Report summary on desktop. |
| `mobileSummary` | `PlatformSummary` | The site's Ad Experience Report summary on mobile. |
| `reviewedSite` | `string` | The name of the reviewed site, e.g. `google.com`. |

### `ViolatingSitesResponse`

Response message for ListViolatingSites.

| Property | Type | Description |
|----------|------|-------------|
| `violatingSites` | `array<SiteSummaryResponse>` | The list of violating sites. |

