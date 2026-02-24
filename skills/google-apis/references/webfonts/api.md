# Web Fonts Developer API - API Reference

**Version**: `v1` | **Methods**: 1 | **Schemas**: 4

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `webfonts.webfonts.list` | GET | `v1/webfonts` | Retrieves the list of fonts currently served by the Google Fonts Developer API. |

### `webfonts.webfonts.list`

**GET** `v1/webfonts`

Retrieves the list of fonts currently served by the Google Fonts Developer API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `capability` | `string` | query | No | Controls the font urls in `Webfont.files`, by default, static ttf fonts are sent. |
| `category` | `string` | query | No | Filters by Webfont.category, if category is found in Webfont.categories. If not set, returns all families. |
| `family` | `string` | query | No | Filters by Webfont.family, using literal match. If not set, returns all families |
| `sort` | `string` | query | No | Enables sorting of the list. |
| `subset` | `string` | query | No | Filters by Webfont.subset, if subset is found in Webfont.subsets. If not set, returns all families. |

**Response**: `WebfontList`

```typescript
const res = await webfonts.webfonts.list({
  // parameters
});
```

---

## Schemas

### `Axis`

Metadata for a variable font axis.

| Property | Type | Description |
|----------|------|-------------|
| `end` | `number` | maximum value |
| `start` | `number` | minimum value |
| `tag` | `string` | tag name. |

### `Tag`

Metadata for a tag.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the tag. |
| `weight` | `number` | The weight of the tag. |

### `Webfont`

Metadata describing a family of fonts.

| Property | Type | Description |
|----------|------|-------------|
| `axes` | `array<Axis>` | Axis for variable fonts. |
| `category` | `string` | The category of the font. |
| `colorCapabilities` | `array<string>` | The color format(s) available for this family. |
| `family` | `string` | The name of the font. |
| `files` | `object` | The font files (with all supported scripts) for each one of the available variants, as a key : va... |
| `kind` | `string` | This kind represents a webfont object in the webfonts service. |
| `lastModified` | `string` | The date (format "yyyy-MM-dd") the font was modified for the last time. |
| `menu` | `string` | Font URL for menu subset, a subset of the font that is enough to display the font name |
| `subsets` | `array<string>` | The scripts supported by the font. |
| `tags` | `array<Tag>` | The tags that apply to this family. |
| `variants` | `array<string>` | The available variants for the font. |
| `version` | `string` | The font version. |

### `WebfontList`

Response containing the list of fonts currently served by the Google Fonts API.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Webfont>` | The list of fonts currently served by the Google Fonts API. |
| `kind` | `string` | This kind represents a list of webfont objects in the webfonts service. |

