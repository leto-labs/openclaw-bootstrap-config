# Abusive Experience Report API - API Reference

**Version**: `v1` | **Methods**: 2 | **Schemas**: 2

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `abusiveexperiencereport.sites.get` | GET | `v1/{+name}` | Gets a site's Abusive Experience Report summary. |
| `abusiveexperiencereport.violatingSites.list` | GET | `v1/violatingSites` | Lists sites that are failing in the Abusive Experience Report. |

### `abusiveexperiencereport.sites.get`

**GET** `v1/{+name}`

Gets a site's Abusive Experience Report summary.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the site whose summary to get, e.g. `sites/http%3A%2F%2Fwww.google.com%2F`. Format: `sites/{site}` |

**Response**: `SiteSummaryResponse`

```typescript
const res = await abusiveexperiencereport.sites.get({
  // parameters
});
```

---

### `abusiveexperiencereport.violatingSites.list`

**GET** `v1/violatingSites`

Lists sites that are failing in the Abusive Experience Report.

**Response**: `ViolatingSitesResponse`

```typescript
const res = await abusiveexperiencereport.violatingSites.list({
  // parameters
});
```

---

## Schemas

### `SiteSummaryResponse`

Response message for GetSiteSummary.

| Property | Type | Description |
|----------|------|-------------|
| `abusiveStatus` | `string` | The site's Abusive Experience Report status. |
| `enforcementTime` | `string` | The time at which [enforcement](https://support.google.com/webtools/answer/7538608) against the s... |
| `filterStatus` | `string` | The site's [enforcement status](https://support.google.com/webtools/answer/7538608). |
| `lastChangeTime` | `string` | The time at which the site's status last changed. |
| `reportUrl` | `string` | A link to the full Abusive Experience Report for the site. Not set in ViolatingSitesResponse. Not... |
| `reviewedSite` | `string` | The name of the reviewed site, e.g. `google.com`. |
| `underReview` | `boolean` | Whether the site is currently under review. |

### `ViolatingSitesResponse`

Response message for ListViolatingSites.

| Property | Type | Description |
|----------|------|-------------|
| `violatingSites` | `array<SiteSummaryResponse>` | The list of violating sites. |

