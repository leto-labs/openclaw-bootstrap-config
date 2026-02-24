# Google Slides API - API Reference

**Version**: `v1` | **Methods**: 5 | **Schemas**: 136

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `slides.presentations.get` | GET | `v1/presentations/{+presentationId}` | Gets the latest version of the specified presentation. |
| `slides.presentations.create` | POST | `v1/presentations` | Creates a blank presentation using the title given in the request. If a `presentationId` is provi... |
| `slides.presentations.batchUpdate` | POST | `v1/presentations/{presentationId}:batchUpdate` | Applies one or more updates to the presentation. Each request is validated before being applied. ... |
| `slides.presentations.pages.get` | GET | `v1/presentations/{presentationId}/pages/{pageObjectId}` | Gets the latest version of the specified page in the presentation. |
| `slides.presentations.pages.getThumbnail` | GET | `v1/presentations/{presentationId}/pages/{pageObjectId}/thumbnail` | Generates a thumbnail of the latest version of the specified page in the presentation and returns... |

### `slides.presentations.get`

**GET** `v1/presentations/{+presentationId}`

Gets the latest version of the specified presentation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `presentationId` | `string` | path | Yes | The ID of the presentation to retrieve. |

**Response**: `Presentation`

```typescript
const res = await slides.presentations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/presentations`
- `https://www.googleapis.com/auth/presentations.readonly`

---

### `slides.presentations.create`

**POST** `v1/presentations`

Creates a blank presentation using the title given in the request. If a `presentationId` is provided, it is used as the ID of the new presentation. Otherwise, a new ID is generated. Other fields in the request, including any provided content, are ignored. Returns the created presentation.

**Request body**: `Presentation`

**Response**: `Presentation`

```typescript
const res = await slides.presentations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/presentations`

---

### `slides.presentations.batchUpdate`

**POST** `v1/presentations/{presentationId}:batchUpdate`

Applies one or more updates to the presentation. Each request is validated before being applied. If any request is not valid, then the entire request will fail and nothing will be applied. Some requests have replies to give you some information about how they are applied. Other requests do not need to return information; these each return an empty reply. The order of replies matches that of the requests. For example, suppose you call batchUpdate with four updates, and only the third one returns information. The response would have two empty replies: the reply to the third request, and another empty reply, in that order. Because other users may be editing the presentation, the presentation might not exactly reflect your changes: your changes may be altered with respect to collaborator changes. If there are no collaborators, the presentation should reflect your changes. In any case, the updates in your request are guaranteed to be applied together atomically.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `presentationId` | `string` | path | Yes | The presentation to apply the updates to. |

**Request body**: `BatchUpdatePresentationRequest`

**Response**: `BatchUpdatePresentationResponse`

```typescript
const res = await slides.presentations.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/presentations`
- `https://www.googleapis.com/auth/spreadsheets`
- `https://www.googleapis.com/auth/spreadsheets.readonly`

---

### `slides.presentations.pages.get`

**GET** `v1/presentations/{presentationId}/pages/{pageObjectId}`

Gets the latest version of the specified page in the presentation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `presentationId` | `string` | path | Yes | The ID of the presentation to retrieve. |
| `pageObjectId` | `string` | path | Yes | The object ID of the page to retrieve. |

**Response**: `Page`

```typescript
const res = await slides.pages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/presentations`
- `https://www.googleapis.com/auth/presentations.readonly`

---

### `slides.presentations.pages.getThumbnail`

**GET** `v1/presentations/{presentationId}/pages/{pageObjectId}/thumbnail`

Generates a thumbnail of the latest version of the specified page in the presentation and returns a URL to the thumbnail image. This request counts as an [expensive read request](https://developers.google.com/workspace/slides/limits) for quota purposes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `presentationId` | `string` | path | Yes | The ID of the presentation to retrieve. |
| `pageObjectId` | `string` | path | Yes | The object ID of the page whose thumbnail to retrieve. |
| `thumbnailProperties.mimeType` | `string` | query | No | The optional mime type of the thumbnail image. If you don't specify the mime type, the mime type defaults to PNG. |
| `thumbnailProperties.thumbnailSize` | `string` | query | No | The optional thumbnail image size. If you don't specify the size, the server chooses a default size of the image. |

**Response**: `Thumbnail`

```typescript
const res = await slides.pages.getThumbnail({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/presentations`
- `https://www.googleapis.com/auth/presentations.readonly`

---

## Schemas

### `AffineTransform`

AffineTransform uses a 3x3 matrix with an implied last row of [ 0 0 1 ] to transform source coordinates (x,y) into destination coordinates (x', y') according to: x' x = shear_y scale_y translate_y 1 [ 1 ] After transformation, x' = scale_x * x + shear_x * y + translate_x; y' = scale_y * y + shear_y * x + translate_y; This message is therefore composed of these six matrix elements.

| Property | Type | Description |
|----------|------|-------------|
| `scaleX` | `number` | The X coordinate scaling element. |
| `scaleY` | `number` | The Y coordinate scaling element. |
| `shearX` | `number` | The X coordinate shearing element. |
| `shearY` | `number` | The Y coordinate shearing element. |
| `translateX` | `number` | The X coordinate translation element. |
| `translateY` | `number` | The Y coordinate translation element. |
| `unit` | `string` | The units for translate elements. |

### `AutoText`

A TextElement kind that represents auto text.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The rendered content of this auto text, if available. |
| `style` | `TextStyle` | The styling applied to this auto text. |
| `type` | `string` | The type of this auto text. |

### `Autofit`

The autofit properties of a Shape. This property is only set for shapes that allow text.

| Property | Type | Description |
|----------|------|-------------|
| `autofitType` | `string` | The autofit type of the shape. If the autofit type is AUTOFIT_TYPE_UNSPECIFIED, the autofit type ... |
| `fontScale` | `number` | The font scale applied to the shape. For shapes with autofit_type NONE or SHAPE_AUTOFIT, this val... |
| `lineSpacingReduction` | `number` | The line spacing reduction applied to the shape. For shapes with autofit_type NONE or SHAPE_AUTOF... |

### `BatchUpdatePresentationRequest`

Request message for PresentationsService.BatchUpdatePresentation.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<Request>` | A list of updates to apply to the presentation. |
| `writeControl` | `WriteControl` | Provides control over how write requests are executed. |

### `BatchUpdatePresentationResponse`

Response message from a batch update.

| Property | Type | Description |
|----------|------|-------------|
| `presentationId` | `string` | The presentation the updates were applied to. |
| `replies` | `array<Response>` | The reply of the updates. This maps 1:1 with the updates, although replies to some requests may b... |
| `writeControl` | `WriteControl` | The updated write control after applying the request. |

### `Bullet`

Describes the bullet of a paragraph.

| Property | Type | Description |
|----------|------|-------------|
| `bulletStyle` | `TextStyle` | The paragraph specific text style applied to this bullet. |
| `glyph` | `string` | The rendered bullet glyph for this paragraph. |
| `listId` | `string` | The ID of the list this paragraph belongs to. |
| `nestingLevel` | `integer` | The nesting level of this paragraph in the list. |

### `ColorScheme`

The palette of predefined colors for a page.

| Property | Type | Description |
|----------|------|-------------|
| `colors` | `array<ThemeColorPair>` | The ThemeColorType and corresponding concrete color pairs. |

### `ColorStop`

A color and position in a gradient band.

| Property | Type | Description |
|----------|------|-------------|
| `alpha` | `number` | The alpha value of this color in the gradient band. Defaults to 1.0, fully opaque. |
| `color` | `OpaqueColor` | The color of the gradient stop. |
| `position` | `number` | The relative position of the color stop in the gradient band measured in percentage. The value sh... |

### `CreateImageRequest`

Creates an image.

| Property | Type | Description |
|----------|------|-------------|
| `elementProperties` | `PageElementProperties` | The element properties for the image. When the aspect ratio of the provided size does not match t... |
| `objectId` | `string` | A user-supplied object ID. If you specify an ID, it must be unique among all pages and page eleme... |
| `url` | `string` | The image URL. The image is fetched once at insertion time and a copy is stored for display insid... |

### `CreateImageResponse`

The result of creating an image.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the created image. |

### `CreateLineRequest`

Creates a line.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | The category of the line to be created. The exact line type created is determined based on the ca... |
| `elementProperties` | `PageElementProperties` | The element properties for the line. |
| `lineCategory` | `string` | The category of the line to be created. *Deprecated*: use `category` instead. The exact line type... |
| `objectId` | `string` | A user-supplied object ID. If you specify an ID, it must be unique among all pages and page eleme... |

### `CreateLineResponse`

The result of creating a line.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the created line. |

### `CreateParagraphBulletsRequest`

Creates bullets for all of the paragraphs that overlap with the given text index range. The nesting level of each paragraph will be determined by counting leading tabs in front of each paragraph. To avoid excess space between the bullet and the corresponding paragraph, these leading tabs are removed by this request. This may change the indices of parts of the text. If the paragraph immediately before paragraphs being updated is in a list with a matching preset, the paragraphs being updated are added to that preceding list.

| Property | Type | Description |
|----------|------|-------------|
| `bulletPreset` | `string` | The kinds of bullet glyphs to be used. Defaults to the `BULLET_DISC_CIRCLE_SQUARE` preset. |
| `cellLocation` | `TableCellLocation` | The optional table cell location if the text to be modified is in a table cell. If present, the o... |
| `objectId` | `string` | The object ID of the shape or table containing the text to add bullets to. |
| `textRange` | `Range` | The range of text to apply the bullet presets to, based on TextElement indexes. |

### `CreateShapeRequest`

Creates a new shape.

| Property | Type | Description |
|----------|------|-------------|
| `elementProperties` | `PageElementProperties` | The element properties for the shape. |
| `objectId` | `string` | A user-supplied object ID. If you specify an ID, it must be unique among all pages and page eleme... |
| `shapeType` | `string` | The shape type. |

### `CreateShapeResponse`

The result of creating a shape.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the created shape. |

### `CreateSheetsChartRequest`

Creates an embedded Google Sheets chart. NOTE: Chart creation requires at least one of the spreadsheets.readonly, spreadsheets, drive.readonly, drive.file, or drive OAuth scopes.

| Property | Type | Description |
|----------|------|-------------|
| `chartId` | `integer` | The ID of the specific chart in the Google Sheets spreadsheet. |
| `elementProperties` | `PageElementProperties` | The element properties for the chart. When the aspect ratio of the provided size does not match t... |
| `linkingMode` | `string` | The mode with which the chart is linked to the source spreadsheet. When not specified, the chart ... |
| `objectId` | `string` | A user-supplied object ID. If specified, the ID must be unique among all pages and page elements ... |
| `spreadsheetId` | `string` | The ID of the Google Sheets spreadsheet that contains the chart. You might need to add a resource... |

### `CreateSheetsChartResponse`

The result of creating an embedded Google Sheets chart.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the created chart. |

### `CreateSlideRequest`

Creates a slide.

| Property | Type | Description |
|----------|------|-------------|
| `insertionIndex` | `integer` | The optional zero-based index indicating where to insert the slides. If you don't specify an inde... |
| `objectId` | `string` | A user-supplied object ID. If you specify an ID, it must be unique among all pages and page eleme... |
| `placeholderIdMappings` | `array<LayoutPlaceholderIdMapping>` | An optional list of object ID mappings from the placeholder(s) on the layout to the placeholders ... |
| `slideLayoutReference` | `LayoutReference` | Layout reference of the slide to be inserted, based on the *current master*, which is one of the ... |

### `CreateSlideResponse`

The result of creating a slide.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the created slide. |

### `CreateTableRequest`

Creates a new table.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `integer` | Number of columns in the table. |
| `elementProperties` | `PageElementProperties` | The element properties for the table. The table will be created at the provided size, subject to ... |
| `objectId` | `string` | A user-supplied object ID. If you specify an ID, it must be unique among all pages and page eleme... |
| `rows` | `integer` | Number of rows in the table. |

### `CreateTableResponse`

The result of creating a table.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the created table. |

### `CreateVideoRequest`

Creates a video. NOTE: Creating a video from Google Drive requires that the requesting app have at least one of the drive, drive.readonly, or drive.file OAuth scopes.

| Property | Type | Description |
|----------|------|-------------|
| `elementProperties` | `PageElementProperties` | The element properties for the video. The PageElementProperties.size property is optional. If you... |
| `id` | `string` | The video source's unique identifier for this video. e.g. For YouTube video https://www.youtube.c... |
| `objectId` | `string` | A user-supplied object ID. If you specify an ID, it must be unique among all pages and page eleme... |
| `source` | `string` | The video source. |

### `CreateVideoResponse`

The result of creating a video.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the created video. |

### `CropProperties`

The crop properties of an object enclosed in a container. For example, an Image. The crop properties is represented by the offsets of four edges which define a crop rectangle. The offsets are measured in percentage from the corresponding edges of the object's original bounding rectangle towards inside, relative to the object's original dimensions. - If the offset is in the interval (0, 1), the corresponding edge of crop rectangle is positioned inside of the object's original bounding rectangle. - If the offset is negative or greater than 1, the corresponding edge of crop rectangle is positioned outside of the object's original bounding rectangle. - If the left edge of the crop rectangle is on the right side of its right edge, the object will be flipped horizontally. - If the top edge of the crop rectangle is below its bottom edge, the object will be flipped vertically. - If all offsets and rotation angle is 0, the object is not cropped. After cropping, the content in the crop rectangle will be stretched to fit its container.

| Property | Type | Description |
|----------|------|-------------|
| `angle` | `number` | The rotation angle of the crop window around its center, in radians. Rotation angle is applied af... |
| `bottomOffset` | `number` | The offset specifies the bottom edge of the crop rectangle that is located above the original bou... |
| `leftOffset` | `number` | The offset specifies the left edge of the crop rectangle that is located to the right of the orig... |
| `rightOffset` | `number` | The offset specifies the right edge of the crop rectangle that is located to the left of the orig... |
| `topOffset` | `number` | The offset specifies the top edge of the crop rectangle that is located below the original boundi... |

### `DeleteObjectRequest`

Deletes an object, either pages or page elements, from the presentation.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the page or page element to delete. If after a delete operation a group contains... |

### `DeleteParagraphBulletsRequest`

Deletes bullets from all of the paragraphs that overlap with the given text index range. The nesting level of each paragraph will be visually preserved by adding indent to the start of the corresponding paragraph.

| Property | Type | Description |
|----------|------|-------------|
| `cellLocation` | `TableCellLocation` | The optional table cell location if the text to be modified is in a table cell. If present, the o... |
| `objectId` | `string` | The object ID of the shape or table containing the text to delete bullets from. |
| `textRange` | `Range` | The range of text to delete bullets from, based on TextElement indexes. |

### `DeleteTableColumnRequest`

Deletes a column from a table.

| Property | Type | Description |
|----------|------|-------------|
| `cellLocation` | `TableCellLocation` | The reference table cell location from which a column will be deleted. The column this cell spans... |
| `tableObjectId` | `string` | The table to delete columns from. |

### `DeleteTableRowRequest`

Deletes a row from a table.

| Property | Type | Description |
|----------|------|-------------|
| `cellLocation` | `TableCellLocation` | The reference table cell location from which a row will be deleted. The row this cell spans will ... |
| `tableObjectId` | `string` | The table to delete rows from. |

### `DeleteTextRequest`

Deletes text from a shape or a table cell.

| Property | Type | Description |
|----------|------|-------------|
| `cellLocation` | `TableCellLocation` | The optional table cell location if the text is to be deleted from a table cell. If present, the ... |
| `objectId` | `string` | The object ID of the shape or table from which the text will be deleted. |
| `textRange` | `Range` | The range of text to delete, based on TextElement indexes. There is always an implicit newline ch... |

### `Dimension`

A magnitude in a single direction in the specified units.

| Property | Type | Description |
|----------|------|-------------|
| `magnitude` | `number` | The magnitude. |
| `unit` | `string` | The units for magnitude. |

### `DuplicateObjectRequest`

Duplicates a slide or page element. When duplicating a slide, the duplicate slide will be created immediately following the specified slide. When duplicating a page element, the duplicate will be placed on the same page at the same position as the original.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The ID of the object to duplicate. |
| `objectIds` | `object` | The object being duplicated may contain other objects, for example when duplicating a slide or a ... |

### `DuplicateObjectResponse`

The response of duplicating an object.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The ID of the new duplicate object. |

### `Group`

A PageElement kind representing a joined collection of PageElements.

| Property | Type | Description |
|----------|------|-------------|
| `children` | `array<PageElement>` | The collection of elements in the group. The minimum size of a group is 2. |

### `GroupObjectsRequest`

Groups objects to create an object group. For example, groups PageElements to create a Group on the same page as all the children.

| Property | Type | Description |
|----------|------|-------------|
| `childrenObjectIds` | `array<string>` | The object IDs of the objects to group. Only page elements can be grouped. There should be at lea... |
| `groupObjectId` | `string` | A user-supplied object ID for the group to be created. If you specify an ID, it must be unique am... |

### `GroupObjectsResponse`

The result of grouping objects.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the created group. |

### `Image`

A PageElement kind representing an image.

| Property | Type | Description |
|----------|------|-------------|
| `contentUrl` | `string` | An URL to an image with a default lifetime of 30 minutes. This URL is tagged with the account of ... |
| `imageProperties` | `ImageProperties` | The properties of the image. |
| `placeholder` | `Placeholder` | Placeholders are page elements that inherit from corresponding placeholders on layouts and master... |
| `sourceUrl` | `string` | The source URL is the URL used to insert the image. The source URL can be empty. |

### `ImageProperties`

The properties of the Image.

| Property | Type | Description |
|----------|------|-------------|
| `brightness` | `number` | The brightness effect of the image. The value should be in the interval [-1.0, 1.0], where 0 mean... |
| `contrast` | `number` | The contrast effect of the image. The value should be in the interval [-1.0, 1.0], where 0 means ... |
| `cropProperties` | `CropProperties` | The crop properties of the image. If not set, the image is not cropped. This property is read-only. |
| `link` | `Link` | The hyperlink destination of the image. If unset, there is no link. |
| `outline` | `Outline` | The outline of the image. If not set, the image has no outline. |
| `recolor` | `Recolor` | The recolor effect of the image. If not set, the image is not recolored. This property is read-only. |
| `shadow` | `Shadow` | The shadow of the image. If not set, the image has no shadow. This property is read-only. |
| `transparency` | `number` | The transparency effect of the image. The value should be in the interval [0.0, 1.0], where 0 mea... |

### `InsertTableColumnsRequest`

Inserts columns into a table. Other columns in the table will be resized to fit the new column.

| Property | Type | Description |
|----------|------|-------------|
| `cellLocation` | `TableCellLocation` | The reference table cell location from which columns will be inserted. A new column will be inser... |
| `insertRight` | `boolean` | Whether to insert new columns to the right of the reference cell location. - `True`: insert to th... |
| `number` | `integer` | The number of columns to be inserted. Maximum 20 per request. |
| `tableObjectId` | `string` | The table to insert columns into. |

### `InsertTableRowsRequest`

Inserts rows into a table.

| Property | Type | Description |
|----------|------|-------------|
| `cellLocation` | `TableCellLocation` | The reference table cell location from which rows will be inserted. A new row will be inserted ab... |
| `insertBelow` | `boolean` | Whether to insert new rows below the reference cell location. - `True`: insert below the cell. - ... |
| `number` | `integer` | The number of rows to be inserted. Maximum 20 per request. |
| `tableObjectId` | `string` | The table to insert rows into. |

### `InsertTextRequest`

Inserts text into a shape or a table cell.

| Property | Type | Description |
|----------|------|-------------|
| `cellLocation` | `TableCellLocation` | The optional table cell location if the text is to be inserted into a table cell. If present, the... |
| `insertionIndex` | `integer` | The index where the text will be inserted, in Unicode code units, based on TextElement indexes. T... |
| `objectId` | `string` | The object ID of the shape or table where the text will be inserted. |
| `text` | `string` | The text to be inserted. Inserting a newline character will implicitly create a new ParagraphMark... |

### `LayoutPlaceholderIdMapping`

The user-specified ID mapping for a placeholder that will be created on a slide from a specified layout.

| Property | Type | Description |
|----------|------|-------------|
| `layoutPlaceholder` | `Placeholder` | The placeholder on a layout that will be applied to a slide. Only type and index are needed. For ... |
| `layoutPlaceholderObjectId` | `string` | The object ID of the placeholder on a layout that will be applied to a slide. |
| `objectId` | `string` | A user-supplied object ID for the placeholder identified above that to be created onto a slide. I... |

### `LayoutProperties`

The properties of Page are only relevant for pages with page_type LAYOUT.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name of the layout. |
| `masterObjectId` | `string` | The object ID of the master that this layout is based on. |
| `name` | `string` | The name of the layout. |

### `LayoutReference`

Slide layout reference. This may reference either: - A predefined layout - One of the layouts in the presentation.

| Property | Type | Description |
|----------|------|-------------|
| `layoutId` | `string` | Layout ID: the object ID of one of the layouts in the presentation. |
| `predefinedLayout` | `string` | Predefined layout. |

### `Line`

A PageElement kind representing a non-connector line, straight connector, curved connector, or bent connector.

| Property | Type | Description |
|----------|------|-------------|
| `lineCategory` | `string` | The category of the line. It matches the `category` specified in CreateLineRequest, and can be up... |
| `lineProperties` | `LineProperties` | The properties of the line. |
| `lineType` | `string` | The type of the line. |

### `LineConnection`

The properties for one end of a Line connection.

| Property | Type | Description |
|----------|------|-------------|
| `connectedObjectId` | `string` | The object ID of the connected page element. Some page elements, such as groups, tables, and line... |
| `connectionSiteIndex` | `integer` | The index of the connection site on the connected page element. In most cases, it corresponds to ... |

### `LineFill`

The fill of the line.

| Property | Type | Description |
|----------|------|-------------|
| `solidFill` | `SolidFill` | Solid color fill. |

### `LineProperties`

The properties of the Line. When unset, these fields default to values that match the appearance of new lines created in the Slides editor.

| Property | Type | Description |
|----------|------|-------------|
| `dashStyle` | `string` | The dash style of the line. |
| `endArrow` | `string` | The style of the arrow at the end of the line. |
| `endConnection` | `LineConnection` | The connection at the end of the line. If unset, there is no connection. Only lines with a Type i... |
| `lineFill` | `LineFill` | The fill of the line. The default line fill matches the defaults for new lines created in the Sli... |
| `link` | `Link` | The hyperlink destination of the line. If unset, there is no link. |
| `startArrow` | `string` | The style of the arrow at the beginning of the line. |
| `startConnection` | `LineConnection` | The connection at the beginning of the line. If unset, there is no connection. Only lines with a ... |
| `weight` | `Dimension` | The thickness of the line. |

### `Link`

A hypertext link.

| Property | Type | Description |
|----------|------|-------------|
| `pageObjectId` | `string` | If set, indicates this is a link to the specific page in this presentation with this ID. A page w... |
| `relativeLink` | `string` | If set, indicates this is a link to a slide in this presentation, addressed by its position. |
| `slideIndex` | `integer` | If set, indicates this is a link to the slide at this zero-based index in the presentation. There... |
| `url` | `string` | If set, indicates this is a link to the external web page at this URL. |

### `List`

A List describes the look and feel of bullets belonging to paragraphs associated with a list. A paragraph that is part of a list has an implicit reference to that list's ID.

| Property | Type | Description |
|----------|------|-------------|
| `listId` | `string` | The ID of the list. |
| `nestingLevel` | `object` | A map of nesting levels to the properties of bullets at the associated level. A list has at most ... |

### `MasterProperties`

The properties of Page that are only relevant for pages with page_type MASTER.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name of the master. |

### `MergeTableCellsRequest`

Merges cells in a Table.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the table. |
| `tableRange` | `TableRange` | The table range specifying which cells of the table to merge. Any text in the cells being merged ... |

### `NestingLevel`

Contains properties describing the look and feel of a list bullet at a given level of nesting.

| Property | Type | Description |
|----------|------|-------------|
| `bulletStyle` | `TextStyle` | The style of a bullet at this level of nesting. |

### `NotesProperties`

The properties of Page that are only relevant for pages with page_type NOTES.

| Property | Type | Description |
|----------|------|-------------|
| `speakerNotesObjectId` | `string` | The object ID of the shape on this notes page that contains the speaker notes for the correspondi... |

### `OpaqueColor`

A themeable solid color value.

| Property | Type | Description |
|----------|------|-------------|
| `rgbColor` | `RgbColor` | An opaque RGB color. |
| `themeColor` | `string` | An opaque theme color. |

### `OptionalColor`

A color that can either be fully opaque or fully transparent.

| Property | Type | Description |
|----------|------|-------------|
| `opaqueColor` | `OpaqueColor` | If set, this will be used as an opaque color. If unset, this represents a transparent color. |

### `Outline`

The outline of a PageElement. If these fields are unset, they may be inherited from a parent placeholder if it exists. If there is no parent, the fields will default to the value used for new page elements created in the Slides editor, which may depend on the page element kind.

| Property | Type | Description |
|----------|------|-------------|
| `dashStyle` | `string` | The dash style of the outline. |
| `outlineFill` | `OutlineFill` | The fill of the outline. |
| `propertyState` | `string` | The outline property state. Updating the outline on a page element will implicitly update this fi... |
| `weight` | `Dimension` | The thickness of the outline. |

### `OutlineFill`

The fill of the outline.

| Property | Type | Description |
|----------|------|-------------|
| `solidFill` | `SolidFill` | Solid color fill. |

### `Page`

A page in a presentation.

| Property | Type | Description |
|----------|------|-------------|
| `layoutProperties` | `LayoutProperties` | Layout specific properties. Only set if page_type = LAYOUT. |
| `masterProperties` | `MasterProperties` | Master specific properties. Only set if page_type = MASTER. |
| `notesProperties` | `NotesProperties` | Notes specific properties. Only set if page_type = NOTES. |
| `objectId` | `string` | The object ID for this page. Object IDs used by Page and PageElement share the same namespace. |
| `pageElements` | `array<PageElement>` | The page elements rendered on the page. |
| `pageProperties` | `PageProperties` | The properties of the page. |
| `pageType` | `string` | The type of the page. |
| `revisionId` | `string` | Output only. The revision ID of the presentation. Can be used in update requests to assert the pr... |
| `slideProperties` | `SlideProperties` | Slide specific properties. Only set if page_type = SLIDE. |

### `PageBackgroundFill`

The page background fill.

| Property | Type | Description |
|----------|------|-------------|
| `propertyState` | `string` | The background fill property state. Updating the fill on a page will implicitly update this field... |
| `solidFill` | `SolidFill` | Solid color fill. |
| `stretchedPictureFill` | `StretchedPictureFill` | Stretched picture fill. |

### `PageElement`

A visual element rendered on a page.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the page element. Combined with title to display alt text. The field is not su... |
| `elementGroup` | `Group` | A collection of page elements joined as a single unit. |
| `image` | `Image` | An image page element. |
| `line` | `Line` | A line page element. |
| `objectId` | `string` | The object ID for this page element. Object IDs used by google.apps.slides.v1.Page and google.app... |
| `shape` | `Shape` | A generic shape. |
| `sheetsChart` | `SheetsChart` | A linked chart embedded from Google Sheets. Unlinked charts are represented as images. |
| `size` | `Size` | The size of the page element. |
| `speakerSpotlight` | `SpeakerSpotlight` | A Speaker Spotlight. |
| `table` | `Table` | A table page element. |
| `title` | `string` | The title of the page element. Combined with description to display alt text. The field is not su... |
| `transform` | `AffineTransform` | The transform of the page element. The visual appearance of the page element is determined by its... |
| `video` | `Video` | A video page element. |
| `wordArt` | `WordArt` | A word art page element. |

### `PageElementProperties`

Common properties for a page element. Note: When you initially create a PageElement, the API may modify the values of both `size` and `transform`, but the visual size will be unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `pageObjectId` | `string` | The object ID of the page where the element is located. |
| `size` | `Size` | The size of the element. |
| `transform` | `AffineTransform` | The transform for the element. |

### `PageProperties`

The properties of the Page. The page will inherit properties from the parent page. Depending on the page type the hierarchy is defined in either SlideProperties or LayoutProperties.

| Property | Type | Description |
|----------|------|-------------|
| `colorScheme` | `ColorScheme` | The color scheme of the page. If unset, the color scheme is inherited from a parent page. If the ... |
| `pageBackgroundFill` | `PageBackgroundFill` | The background fill of the page. If unset, the background fill is inherited from a parent page if... |

### `ParagraphMarker`

A TextElement kind that represents the beginning of a new paragraph.

| Property | Type | Description |
|----------|------|-------------|
| `bullet` | `Bullet` | The bullet for this paragraph. If not present, the paragraph does not belong to a list. |
| `style` | `ParagraphStyle` | The paragraph's style |

### `ParagraphStyle`

Styles that apply to a whole paragraph. If this text is contained in a shape with a parent placeholder, then these paragraph styles may be inherited from the parent. Which paragraph styles are inherited depend on the nesting level of lists: * A paragraph not in a list will inherit its paragraph style from the paragraph at the 0 nesting level of the list inside the parent placeholder. * A paragraph in a list will inherit its paragraph style from the paragraph at its corresponding nesting level of the list inside the parent placeholder. Inherited paragraph styles are represented as unset fields in this message.

| Property | Type | Description |
|----------|------|-------------|
| `alignment` | `string` | The text alignment for this paragraph. |
| `direction` | `string` | The text direction of this paragraph. If unset, the value defaults to LEFT_TO_RIGHT since text di... |
| `indentEnd` | `Dimension` | The amount indentation for the paragraph on the side that corresponds to the end of the text, bas... |
| `indentFirstLine` | `Dimension` | The amount of indentation for the start of the first line of the paragraph. If unset, the value i... |
| `indentStart` | `Dimension` | The amount indentation for the paragraph on the side that corresponds to the start of the text, b... |
| `lineSpacing` | `number` | The amount of space between lines, as a percentage of normal, where normal is represented as 100.... |
| `spaceAbove` | `Dimension` | The amount of extra space above the paragraph. If unset, the value is inherited from the parent. |
| `spaceBelow` | `Dimension` | The amount of extra space below the paragraph. If unset, the value is inherited from the parent. |
| `spacingMode` | `string` | The spacing mode for the paragraph. |

### `Placeholder`

The placeholder information that uniquely identifies a placeholder shape.

| Property | Type | Description |
|----------|------|-------------|
| `index` | `integer` | The index of the placeholder. If the same placeholder types are present in the same page, they wo... |
| `parentObjectId` | `string` | The object ID of this shape's parent placeholder. If unset, the parent placeholder shape does not... |
| `type` | `string` | The type of the placeholder. |

### `Presentation`

A Google Slides presentation.

| Property | Type | Description |
|----------|------|-------------|
| `layouts` | `array<Page>` | The layouts in the presentation. A layout is a template that determines how content is arranged a... |
| `locale` | `string` | The locale of the presentation, as an IETF BCP 47 language tag. |
| `masters` | `array<Page>` | The slide masters in the presentation. A slide master contains all common page elements and the c... |
| `notesMaster` | `Page` | The notes master in the presentation. It serves three purposes: - Placeholder shapes on a notes m... |
| `pageSize` | `Size` | The size of pages in the presentation. |
| `presentationId` | `string` | The ID of the presentation. |
| `revisionId` | `string` | Output only. The revision ID of the presentation. Can be used in update requests to assert the pr... |
| `slides` | `array<Page>` | The slides in the presentation. A slide inherits properties from a slide layout. |
| `title` | `string` | The title of the presentation. |

### `Range`

Specifies a contiguous range of an indexed collection, such as characters in text.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `integer` | The optional zero-based index of the end of the collection. Required for `FIXED_RANGE` ranges. |
| `startIndex` | `integer` | The optional zero-based index of the beginning of the collection. Required for `FIXED_RANGE` and ... |
| `type` | `string` | The type of range. |

### `Recolor`

A recolor effect applied on an image.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the recolor effect. The name is determined from the `recolor_stops` by matching the g... |
| `recolorStops` | `array<ColorStop>` | The recolor effect is represented by a gradient, which is a list of color stops. The colors in th... |

### `RefreshSheetsChartRequest`

Refreshes an embedded Google Sheets chart by replacing it with the latest version of the chart from Google Sheets. NOTE: Refreshing charts requires at least one of the spreadsheets.readonly, spreadsheets, drive.readonly, or drive OAuth scopes.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the chart to refresh. |

### `ReplaceAllShapesWithImageRequest`

Replaces all shapes that match the given criteria with the provided image. The images replacing the shapes are rectangular after being inserted into the presentation and do not take on the forms of the shapes.

| Property | Type | Description |
|----------|------|-------------|
| `containsText` | `SubstringMatchCriteria` | If set, this request will replace all of the shapes that contain the given text. |
| `imageReplaceMethod` | `string` | The image replace method. If you specify both a `replace_method` and an `image_replace_method`, t... |
| `imageUrl` | `string` | The image URL. The image is fetched once at insertion time and a copy is stored for display insid... |
| `pageObjectIds` | `array<string>` | If non-empty, limits the matches to page elements only on the given pages. Returns a 400 bad requ... |
| `replaceMethod` | `string` | The replace method. *Deprecated*: use `image_replace_method` instead. If you specify both a `repl... |

### `ReplaceAllShapesWithImageResponse`

The result of replacing shapes with an image.

| Property | Type | Description |
|----------|------|-------------|
| `occurrencesChanged` | `integer` | The number of shapes replaced with images. |

### `ReplaceAllShapesWithSheetsChartRequest`

Replaces all shapes that match the given criteria with the provided Google Sheets chart. The chart will be scaled and centered to fit within the bounds of the original shape. NOTE: Replacing shapes with a chart requires at least one of the spreadsheets.readonly, spreadsheets, drive.readonly, or drive OAuth scopes.

| Property | Type | Description |
|----------|------|-------------|
| `chartId` | `integer` | The ID of the specific chart in the Google Sheets spreadsheet. |
| `containsText` | `SubstringMatchCriteria` | The criteria that the shapes must match in order to be replaced. The request will replace all of ... |
| `linkingMode` | `string` | The mode with which the chart is linked to the source spreadsheet. When not specified, the chart ... |
| `pageObjectIds` | `array<string>` | If non-empty, limits the matches to page elements only on the given pages. Returns a 400 bad requ... |
| `spreadsheetId` | `string` | The ID of the Google Sheets spreadsheet that contains the chart. |

### `ReplaceAllShapesWithSheetsChartResponse`

The result of replacing shapes with a Google Sheets chart.

| Property | Type | Description |
|----------|------|-------------|
| `occurrencesChanged` | `integer` | The number of shapes replaced with charts. |

### `ReplaceAllTextRequest`

Replaces all instances of text matching a criteria with replace text.

| Property | Type | Description |
|----------|------|-------------|
| `containsText` | `SubstringMatchCriteria` | Finds text in a shape matching this substring. |
| `pageObjectIds` | `array<string>` | If non-empty, limits the matches to page elements only on the given pages. Returns a 400 bad requ... |
| `replaceText` | `string` | The text that will replace the matched text. |

### `ReplaceAllTextResponse`

The result of replacing text.

| Property | Type | Description |
|----------|------|-------------|
| `occurrencesChanged` | `integer` | The number of occurrences changed by replacing all text. |

### `ReplaceImageRequest`

Replaces an existing image with a new image. Replacing an image removes some image effects from the existing image.

| Property | Type | Description |
|----------|------|-------------|
| `imageObjectId` | `string` | The ID of the existing image that will be replaced. The ID can be retrieved from the response of ... |
| `imageReplaceMethod` | `string` | The replacement method. |
| `url` | `string` | The image URL. The image is fetched once at insertion time and a copy is stored for display insid... |

### `Request`

A single kind of update to apply to a presentation.

| Property | Type | Description |
|----------|------|-------------|
| `createImage` | `CreateImageRequest` | Creates an image. |
| `createLine` | `CreateLineRequest` | Creates a line. |
| `createParagraphBullets` | `CreateParagraphBulletsRequest` | Creates bullets for paragraphs. |
| `createShape` | `CreateShapeRequest` | Creates a new shape. |
| `createSheetsChart` | `CreateSheetsChartRequest` | Creates an embedded Google Sheets chart. |
| `createSlide` | `CreateSlideRequest` | Creates a new slide. |
| `createTable` | `CreateTableRequest` | Creates a new table. |
| `createVideo` | `CreateVideoRequest` | Creates a video. |
| `deleteObject` | `DeleteObjectRequest` | Deletes a page or page element from the presentation. |
| `deleteParagraphBullets` | `DeleteParagraphBulletsRequest` | Deletes bullets from paragraphs. |
| `deleteTableColumn` | `DeleteTableColumnRequest` | Deletes a column from a table. |
| `deleteTableRow` | `DeleteTableRowRequest` | Deletes a row from a table. |
| `deleteText` | `DeleteTextRequest` | Deletes text from a shape or a table cell. |
| `duplicateObject` | `DuplicateObjectRequest` | Duplicates a slide or page element. |
| `groupObjects` | `GroupObjectsRequest` | Groups objects, such as page elements. |
| `insertTableColumns` | `InsertTableColumnsRequest` | Inserts columns into a table. |
| `insertTableRows` | `InsertTableRowsRequest` | Inserts rows into a table. |
| `insertText` | `InsertTextRequest` | Inserts text into a shape or table cell. |
| `mergeTableCells` | `MergeTableCellsRequest` | Merges cells in a Table. |
| `refreshSheetsChart` | `RefreshSheetsChartRequest` | Refreshes a Google Sheets chart. |
| `replaceAllShapesWithImage` | `ReplaceAllShapesWithImageRequest` | Replaces all shapes matching some criteria with an image. |
| `replaceAllShapesWithSheetsChart` | `ReplaceAllShapesWithSheetsChartRequest` | Replaces all shapes matching some criteria with a Google Sheets chart. |
| `replaceAllText` | `ReplaceAllTextRequest` | Replaces all instances of specified text. |
| `replaceImage` | `ReplaceImageRequest` | Replaces an existing image with a new image. |
| `rerouteLine` | `RerouteLineRequest` | Reroutes a line such that it's connected at the two closest connection sites on the connected pag... |
| `ungroupObjects` | `UngroupObjectsRequest` | Ungroups objects, such as groups. |
| `unmergeTableCells` | `UnmergeTableCellsRequest` | Unmerges cells in a Table. |
| `updateImageProperties` | `UpdateImagePropertiesRequest` | Updates the properties of an Image. |
| `updateLineCategory` | `UpdateLineCategoryRequest` | Updates the category of a line. |
| `updateLineProperties` | `UpdateLinePropertiesRequest` | Updates the properties of a Line. |
| `updatePageElementAltText` | `UpdatePageElementAltTextRequest` | Updates the alt text title and/or description of a page element. |
| `updatePageElementTransform` | `UpdatePageElementTransformRequest` | Updates the transform of a page element. |
| `updatePageElementsZOrder` | `UpdatePageElementsZOrderRequest` | Updates the Z-order of page elements. |
| `updatePageProperties` | `UpdatePagePropertiesRequest` | Updates the properties of a Page. |
| `updateParagraphStyle` | `UpdateParagraphStyleRequest` | Updates the styling of paragraphs within a Shape or Table. |
| `updateShapeProperties` | `UpdateShapePropertiesRequest` | Updates the properties of a Shape. |
| `updateSlideProperties` | `UpdateSlidePropertiesRequest` | Updates the properties of a Slide |
| `updateSlidesPosition` | `UpdateSlidesPositionRequest` | Updates the position of a set of slides in the presentation. |
| `updateTableBorderProperties` | `UpdateTableBorderPropertiesRequest` | Updates the properties of the table borders in a Table. |
| `updateTableCellProperties` | `UpdateTableCellPropertiesRequest` | Updates the properties of a TableCell. |
| `updateTableColumnProperties` | `UpdateTableColumnPropertiesRequest` | Updates the properties of a Table column. |
| `updateTableRowProperties` | `UpdateTableRowPropertiesRequest` | Updates the properties of a Table row. |
| `updateTextStyle` | `UpdateTextStyleRequest` | Updates the styling of text within a Shape or Table. |
| `updateVideoProperties` | `UpdateVideoPropertiesRequest` | Updates the properties of a Video. |

### `RerouteLineRequest`

Reroutes a line such that it's connected at the two closest connection sites on the connected page elements.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the line to reroute. Only a line with a category indicating it is a "connector" ... |

### `Response`

A single response from an update.

| Property | Type | Description |
|----------|------|-------------|
| `createImage` | `CreateImageResponse` | The result of creating an image. |
| `createLine` | `CreateLineResponse` | The result of creating a line. |
| `createShape` | `CreateShapeResponse` | The result of creating a shape. |
| `createSheetsChart` | `CreateSheetsChartResponse` | The result of creating a Google Sheets chart. |
| `createSlide` | `CreateSlideResponse` | The result of creating a slide. |
| `createTable` | `CreateTableResponse` | The result of creating a table. |
| `createVideo` | `CreateVideoResponse` | The result of creating a video. |
| `duplicateObject` | `DuplicateObjectResponse` | The result of duplicating an object. |
| `groupObjects` | `GroupObjectsResponse` | The result of grouping objects. |
| `replaceAllShapesWithImage` | `ReplaceAllShapesWithImageResponse` | The result of replacing all shapes matching some criteria with an image. |
| `replaceAllShapesWithSheetsChart` | `ReplaceAllShapesWithSheetsChartResponse` | The result of replacing all shapes matching some criteria with a Google Sheets chart. |
| `replaceAllText` | `ReplaceAllTextResponse` | The result of replacing text. |

### `RgbColor`

An RGB color.

| Property | Type | Description |
|----------|------|-------------|
| `blue` | `number` | The blue component of the color, from 0.0 to 1.0. |
| `green` | `number` | The green component of the color, from 0.0 to 1.0. |
| `red` | `number` | The red component of the color, from 0.0 to 1.0. |

### `Shadow`

The shadow properties of a page element. If these fields are unset, they may be inherited from a parent placeholder if it exists. If there is no parent, the fields will default to the value used for new page elements created in the Slides editor, which may depend on the page element kind.

| Property | Type | Description |
|----------|------|-------------|
| `alignment` | `string` | The alignment point of the shadow, that sets the origin for translate, scale and skew of the shad... |
| `alpha` | `number` | The alpha of the shadow's color, from 0.0 to 1.0. |
| `blurRadius` | `Dimension` | The radius of the shadow blur. The larger the radius, the more diffuse the shadow becomes. |
| `color` | `OpaqueColor` | The shadow color value. |
| `propertyState` | `string` | The shadow property state. Updating the shadow on a page element will implicitly update this fiel... |
| `rotateWithShape` | `boolean` | Whether the shadow should rotate with the shape. This property is read-only. |
| `transform` | `AffineTransform` | Transform that encodes the translate, scale, and skew of the shadow, relative to the alignment po... |
| `type` | `string` | The type of the shadow. This property is read-only. |

### `Shape`

A PageElement kind representing a generic shape that doesn't have a more specific classification. For more information, see [Size and position page elements](https://developers.google.com/workspace/slides/api/guides/transform).

| Property | Type | Description |
|----------|------|-------------|
| `placeholder` | `Placeholder` | Placeholders are page elements that inherit from corresponding placeholders on layouts and master... |
| `shapeProperties` | `ShapeProperties` | The properties of the shape. |
| `shapeType` | `string` | The type of the shape. |
| `text` | `TextContent` | The text content of the shape. |

### `ShapeBackgroundFill`

The shape background fill.

| Property | Type | Description |
|----------|------|-------------|
| `propertyState` | `string` | The background fill property state. Updating the fill on a shape will implicitly update this fiel... |
| `solidFill` | `SolidFill` | Solid color fill. |

### `ShapeProperties`

The properties of a Shape. If the shape is a placeholder shape as determined by the placeholder field, then these properties may be inherited from a parent placeholder shape. Determining the rendered value of the property depends on the corresponding property_state field value. Any text autofit settings on the shape are automatically deactivated by requests that can impact how text fits in the shape.

| Property | Type | Description |
|----------|------|-------------|
| `autofit` | `Autofit` | The autofit properties of the shape. This property is only set for shapes that allow text. |
| `contentAlignment` | `string` | The alignment of the content in the shape. If unspecified, the alignment is inherited from a pare... |
| `link` | `Link` | The hyperlink destination of the shape. If unset, there is no link. Links are not inherited from ... |
| `outline` | `Outline` | The outline of the shape. If unset, the outline is inherited from a parent placeholder if it exis... |
| `shadow` | `Shadow` | The shadow properties of the shape. If unset, the shadow is inherited from a parent placeholder i... |
| `shapeBackgroundFill` | `ShapeBackgroundFill` | The background fill of the shape. If unset, the background fill is inherited from a parent placeh... |

### `SheetsChart`

A PageElement kind representing a linked chart embedded from Google Sheets.

| Property | Type | Description |
|----------|------|-------------|
| `chartId` | `integer` | The ID of the specific chart in the Google Sheets spreadsheet that is embedded. |
| `contentUrl` | `string` | The URL of an image of the embedded chart, with a default lifetime of 30 minutes. This URL is tag... |
| `sheetsChartProperties` | `SheetsChartProperties` | The properties of the Sheets chart. |
| `spreadsheetId` | `string` | The ID of the Google Sheets spreadsheet that contains the source chart. |

### `SheetsChartProperties`

The properties of the SheetsChart.

| Property | Type | Description |
|----------|------|-------------|
| `chartImageProperties` | `ImageProperties` | The properties of the embedded chart image. |

### `Size`

A width and height.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `Dimension` | The height of the object. |
| `width` | `Dimension` | The width of the object. |

### `SlideProperties`

The properties of Page that are only relevant for pages with page_type SLIDE.

| Property | Type | Description |
|----------|------|-------------|
| `isSkipped` | `boolean` | Whether the slide is skipped in the presentation mode. Defaults to false. |
| `layoutObjectId` | `string` | The object ID of the layout that this slide is based on. This property is read-only. |
| `masterObjectId` | `string` | The object ID of the master that this slide is based on. This property is read-only. |
| `notesPage` | `Page` | The notes page that this slide is associated with. It defines the visual appearance of a notes pa... |

### `SolidFill`

A solid color fill. The page or page element is filled entirely with the specified color value. If any field is unset, its value may be inherited from a parent placeholder if it exists.

| Property | Type | Description |
|----------|------|-------------|
| `alpha` | `number` | The fraction of this `color` that should be applied to the pixel. That is, the final pixel color ... |
| `color` | `OpaqueColor` | The color value of the solid fill. |

### `SpeakerSpotlight`

A PageElement kind representing a Speaker Spotlight.

| Property | Type | Description |
|----------|------|-------------|
| `speakerSpotlightProperties` | `SpeakerSpotlightProperties` | The properties of the Speaker Spotlight. |

### `SpeakerSpotlightProperties`

The properties of the SpeakerSpotlight.

| Property | Type | Description |
|----------|------|-------------|
| `outline` | `Outline` | The outline of the Speaker Spotlight. If not set, it has no outline. |
| `shadow` | `Shadow` | The shadow of the Speaker Spotlight. If not set, it has no shadow. |

### `StretchedPictureFill`

The stretched picture fill. The page or page element is filled entirely with the specified picture. The picture is stretched to fit its container.

| Property | Type | Description |
|----------|------|-------------|
| `contentUrl` | `string` | Reading the content_url: An URL to a picture with a default lifetime of 30 minutes. This URL is t... |
| `size` | `Size` | The original size of the picture fill. This field is read-only. |

### `SubstringMatchCriteria`

A criteria that matches a specific string of text in a shape or table.

| Property | Type | Description |
|----------|------|-------------|
| `matchCase` | `boolean` | Indicates whether the search should respect case: - `True`: the search is case sensitive. - `Fals... |
| `searchByRegex` | `boolean` | Optional. True if the find value should be treated as a regular expression. Any backslashes in th... |
| `text` | `string` | The text to search for in the shape or table. |

### `Table`

A PageElement kind representing a table.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `integer` | Number of columns in the table. |
| `horizontalBorderRows` | `array<TableBorderRow>` | Properties of horizontal cell borders. A table's horizontal cell borders are represented as a gri... |
| `rows` | `integer` | Number of rows in the table. |
| `tableColumns` | `array<TableColumnProperties>` | Properties of each column. |
| `tableRows` | `array<TableRow>` | Properties and contents of each row. Cells that span multiple rows are contained in only one of t... |
| `verticalBorderRows` | `array<TableBorderRow>` | Properties of vertical cell borders. A table's vertical cell borders are represented as a grid. T... |

### `TableBorderCell`

The properties of each border cell.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `TableCellLocation` | The location of the border within the border table. |
| `tableBorderProperties` | `TableBorderProperties` | The border properties. |

### `TableBorderFill`

The fill of the border.

| Property | Type | Description |
|----------|------|-------------|
| `solidFill` | `SolidFill` | Solid fill. |

### `TableBorderProperties`

The border styling properties of the TableBorderCell.

| Property | Type | Description |
|----------|------|-------------|
| `dashStyle` | `string` | The dash style of the border. |
| `tableBorderFill` | `TableBorderFill` | The fill of the table border. |
| `weight` | `Dimension` | The thickness of the border. |

### `TableBorderRow`

Contents of each border row in a table.

| Property | Type | Description |
|----------|------|-------------|
| `tableBorderCells` | `array<TableBorderCell>` | Properties of each border cell. When a border's adjacent table cells are merged, it is not includ... |

### `TableCell`

Properties and contents of each table cell.

| Property | Type | Description |
|----------|------|-------------|
| `columnSpan` | `integer` | Column span of the cell. |
| `location` | `TableCellLocation` | The location of the cell within the table. |
| `rowSpan` | `integer` | Row span of the cell. |
| `tableCellProperties` | `TableCellProperties` | The properties of the table cell. |
| `text` | `TextContent` | The text content of the cell. |

### `TableCellBackgroundFill`

The table cell background fill.

| Property | Type | Description |
|----------|------|-------------|
| `propertyState` | `string` | The background fill property state. Updating the fill on a table cell will implicitly update this... |
| `solidFill` | `SolidFill` | Solid color fill. |

### `TableCellLocation`

A location of a single table cell within a table.

| Property | Type | Description |
|----------|------|-------------|
| `columnIndex` | `integer` | The 0-based column index. |
| `rowIndex` | `integer` | The 0-based row index. |

### `TableCellProperties`

The properties of the TableCell.

| Property | Type | Description |
|----------|------|-------------|
| `contentAlignment` | `string` | The alignment of the content in the table cell. The default alignment matches the alignment for n... |
| `tableCellBackgroundFill` | `TableCellBackgroundFill` | The background fill of the table cell. The default fill matches the fill for newly created table ... |

### `TableColumnProperties`

Properties of each column in a table.

| Property | Type | Description |
|----------|------|-------------|
| `columnWidth` | `Dimension` | Width of a column. |

### `TableRange`

A table range represents a reference to a subset of a table. It's important to note that the cells specified by a table range do not necessarily form a rectangle. For example, let's say we have a 3 x 3 table where all the cells of the last row are merged together. The table looks like this: [ ] A table range with location = (0, 0), row span = 3 and column span = 2 specifies the following cells: x x [ x x x ]

| Property | Type | Description |
|----------|------|-------------|
| `columnSpan` | `integer` | The column span of the table range. |
| `location` | `TableCellLocation` | The starting location of the table range. |
| `rowSpan` | `integer` | The row span of the table range. |

### `TableRow`

Properties and contents of each row in a table.

| Property | Type | Description |
|----------|------|-------------|
| `rowHeight` | `Dimension` | Height of a row. |
| `tableCells` | `array<TableCell>` | Properties and contents of each cell. Cells that span multiple columns are represented only once ... |
| `tableRowProperties` | `TableRowProperties` | Properties of the row. |

### `TableRowProperties`

Properties of each row in a table.

| Property | Type | Description |
|----------|------|-------------|
| `minRowHeight` | `Dimension` | Minimum height of the row. The row will be rendered in the Slides editor at a height equal to or ... |

### `TextContent`

The general text content. The text must reside in a compatible shape (e.g. text box or rectangle) or a table cell in a page.

| Property | Type | Description |
|----------|------|-------------|
| `lists` | `object` | The bulleted lists contained in this text, keyed by list ID. |
| `textElements` | `array<TextElement>` | The text contents broken down into its component parts, including styling information. This prope... |

### `TextElement`

A TextElement describes the content of a range of indices in the text content of a Shape or TableCell.

| Property | Type | Description |
|----------|------|-------------|
| `autoText` | `AutoText` | A TextElement representing a spot in the text that is dynamically replaced with content that can ... |
| `endIndex` | `integer` | The zero-based end index of this text element, exclusive, in Unicode code units. |
| `paragraphMarker` | `ParagraphMarker` | A marker representing the beginning of a new paragraph. The `start_index` and `end_index` of this... |
| `startIndex` | `integer` | The zero-based start index of this text element, in Unicode code units. |
| `textRun` | `TextRun` | A TextElement representing a run of text where all of the characters in the run have the same Tex... |

### `TextRun`

A TextElement kind that represents a run of text that all has the same styling.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The text of this run. |
| `style` | `TextStyle` | The styling applied to this run. |

### `TextStyle`

Represents the styling that can be applied to a TextRun. If this text is contained in a shape with a parent placeholder, then these text styles may be inherited from the parent. Which text styles are inherited depend on the nesting level of lists: * A text run in a paragraph that is not in a list will inherit its text style from the the newline character in the paragraph at the 0 nesting level of the list inside the parent placeholder. * A text run in a paragraph that is in a list will inherit its text style from the newline character in the paragraph at its corresponding nesting level of the list inside the parent placeholder. Inherited text styles are represented as unset fields in this message. If text is contained in a shape without a parent placeholder, unsetting these fields will revert the style to a value matching the defaults in the Slides editor.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColor` | `OptionalColor` | The background color of the text. If set, the color is either opaque or transparent, depending on... |
| `baselineOffset` | `string` | The text's vertical offset from its normal position. Text with `SUPERSCRIPT` or `SUBSCRIPT` basel... |
| `bold` | `boolean` | Whether or not the text is rendered as bold. |
| `fontFamily` | `string` | The font family of the text. The font family can be any font from the Font menu in Slides or from... |
| `fontSize` | `Dimension` | The size of the text's font. When read, the `font_size` will specified in points. |
| `foregroundColor` | `OptionalColor` | The color of the text itself. If set, the color is either opaque or transparent, depending on if ... |
| `italic` | `boolean` | Whether or not the text is italicized. |
| `link` | `Link` | The hyperlink destination of the text. If unset, there is no link. Links are not inherited from p... |
| `smallCaps` | `boolean` | Whether or not the text is in small capital letters. |
| `strikethrough` | `boolean` | Whether or not the text is struck through. |
| `underline` | `boolean` | Whether or not the text is underlined. |
| `weightedFontFamily` | `WeightedFontFamily` | The font family and rendered weight of the text. This field is an extension of `font_family` mean... |

### `ThemeColorPair`

A pair mapping a theme color type to the concrete color it represents.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `RgbColor` | The concrete color corresponding to the theme color type above. |
| `type` | `string` | The type of the theme color. |

### `Thumbnail`

The thumbnail of a page.

| Property | Type | Description |
|----------|------|-------------|
| `contentUrl` | `string` | The content URL of the thumbnail image. The URL to the image has a default lifetime of 30 minutes... |
| `height` | `integer` | The positive height in pixels of the thumbnail image. |
| `width` | `integer` | The positive width in pixels of the thumbnail image. |

### `UngroupObjectsRequest`

Ungroups objects, such as groups.

| Property | Type | Description |
|----------|------|-------------|
| `objectIds` | `array<string>` | The object IDs of the objects to ungroup. Only groups that are not inside other groups can be ung... |

### `UnmergeTableCellsRequest`

Unmerges cells in a Table.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the table. |
| `tableRange` | `TableRange` | The table range specifying which cells of the table to unmerge. All merged cells in this range wi... |

### `UpdateImagePropertiesRequest`

Update the properties of an Image.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `imagePropertie... |
| `imageProperties` | `ImageProperties` | The image properties to update. |
| `objectId` | `string` | The object ID of the image the updates are applied to. |

### `UpdateLineCategoryRequest`

Updates the category of a line.

| Property | Type | Description |
|----------|------|-------------|
| `lineCategory` | `string` | The line category to update to. The exact line type is determined based on the category to update... |
| `objectId` | `string` | The object ID of the line the update is applied to. Only a line with a category indicating it is ... |

### `UpdateLinePropertiesRequest`

Updates the properties of a Line.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `lineProperties... |
| `lineProperties` | `LineProperties` | The line properties to update. |
| `objectId` | `string` | The object ID of the line the update is applied to. |

### `UpdatePageElementAltTextRequest`

Updates the alt text title and/or description of a page element.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The updated alt text description of the page element. If unset the existing value will be maintai... |
| `objectId` | `string` | The object ID of the page element the updates are applied to. |
| `title` | `string` | The updated alt text title of the page element. If unset the existing value will be maintained. T... |

### `UpdatePageElementTransformRequest`

Updates the transform of a page element. Updating the transform of a group will change the absolute transform of the page elements in that group, which can change their visual appearance. See the documentation for PageElement.transform for more details.

| Property | Type | Description |
|----------|------|-------------|
| `applyMode` | `string` | The apply mode of the transform update. |
| `objectId` | `string` | The object ID of the page element to update. |
| `transform` | `AffineTransform` | The input transform matrix used to update the page element. |

### `UpdatePageElementsZOrderRequest`

Updates the Z-order of page elements. Z-order is an ordering of the elements on the page from back to front. The page element in the front may cover the elements that are behind it.

| Property | Type | Description |
|----------|------|-------------|
| `operation` | `string` | The Z-order operation to apply on the page elements. When applying the operation on multiple page... |
| `pageElementObjectIds` | `array<string>` | The object IDs of the page elements to update. All the page elements must be on the same page and... |

### `UpdatePagePropertiesRequest`

Updates the properties of a Page.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `pageProperties... |
| `objectId` | `string` | The object ID of the page the update is applied to. |
| `pageProperties` | `PageProperties` | The page properties to update. |

### `UpdateParagraphStyleRequest`

Updates the styling for all of the paragraphs within a Shape or Table that overlap with the given text index range.

| Property | Type | Description |
|----------|------|-------------|
| `cellLocation` | `TableCellLocation` | The location of the cell in the table containing the paragraph(s) to style. If `object_id` refers... |
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `style` is impl... |
| `objectId` | `string` | The object ID of the shape or table with the text to be styled. |
| `style` | `ParagraphStyle` | The paragraph's style. |
| `textRange` | `Range` | The range of text containing the paragraph(s) to style. |

### `UpdateShapePropertiesRequest`

Update the properties of a Shape.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `shapePropertie... |
| `objectId` | `string` | The object ID of the shape the updates are applied to. |
| `shapeProperties` | `ShapeProperties` | The shape properties to update. |

### `UpdateSlidePropertiesRequest`

Updates the properties of a Slide.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root 'slidePropertie... |
| `objectId` | `string` | The object ID of the slide the update is applied to. |
| `slideProperties` | `SlideProperties` | The slide properties to update. |

### `UpdateSlidesPositionRequest`

Updates the position of slides in the presentation.

| Property | Type | Description |
|----------|------|-------------|
| `insertionIndex` | `integer` | The index where the slides should be inserted, based on the slide arrangement before the move tak... |
| `slideObjectIds` | `array<string>` | The IDs of the slides in the presentation that should be moved. The slides in this list must be i... |

### `UpdateTableBorderPropertiesRequest`

Updates the properties of the table borders in a Table.

| Property | Type | Description |
|----------|------|-------------|
| `borderPosition` | `string` | The border position in the table range the updates should apply to. If a border position is not s... |
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `tableBorderPro... |
| `objectId` | `string` | The object ID of the table. |
| `tableBorderProperties` | `TableBorderProperties` | The table border properties to update. |
| `tableRange` | `TableRange` | The table range representing the subset of the table to which the updates are applied. If a table... |

### `UpdateTableCellPropertiesRequest`

Update the properties of a TableCell.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `tableCellPrope... |
| `objectId` | `string` | The object ID of the table. |
| `tableCellProperties` | `TableCellProperties` | The table cell properties to update. |
| `tableRange` | `TableRange` | The table range representing the subset of the table to which the updates are applied. If a table... |

### `UpdateTableColumnPropertiesRequest`

Updates the properties of a Table column.

| Property | Type | Description |
|----------|------|-------------|
| `columnIndices` | `array<integer>` | The list of zero-based indices specifying which columns to update. If no indices are provided, al... |
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `tableColumnPro... |
| `objectId` | `string` | The object ID of the table. |
| `tableColumnProperties` | `TableColumnProperties` | The table column properties to update. If the value of `table_column_properties#column_width` in ... |

### `UpdateTableRowPropertiesRequest`

Updates the properties of a Table row.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `tableRowProper... |
| `objectId` | `string` | The object ID of the table. |
| `rowIndices` | `array<integer>` | The list of zero-based indices specifying which rows to update. If no indices are provided, all r... |
| `tableRowProperties` | `TableRowProperties` | The table row properties to update. |

### `UpdateTextStyleRequest`

Update the styling of text in a Shape or Table.

| Property | Type | Description |
|----------|------|-------------|
| `cellLocation` | `TableCellLocation` | The location of the cell in the table containing the text to style. If `object_id` refers to a ta... |
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `style` is impl... |
| `objectId` | `string` | The object ID of the shape or table with the text to be styled. |
| `style` | `TextStyle` | The style(s) to set on the text. If the value for a particular style matches that of the parent, ... |
| `textRange` | `Range` | The range of text to style. The range may be extended to include adjacent newlines. If the range ... |

### `UpdateVideoPropertiesRequest`

Update the properties of a Video.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `videoPropertie... |
| `objectId` | `string` | The object ID of the video the updates are applied to. |
| `videoProperties` | `VideoProperties` | The video properties to update. |

### `Video`

A PageElement kind representing a video.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The video source's unique identifier for this video. |
| `source` | `string` | The video source. |
| `url` | `string` | An URL to a video. The URL is valid as long as the source video exists and sharing settings do no... |
| `videoProperties` | `VideoProperties` | The properties of the video. |

### `VideoProperties`

The properties of the Video.

| Property | Type | Description |
|----------|------|-------------|
| `autoPlay` | `boolean` | Whether to enable video autoplay when the page is displayed in present mode. Defaults to false. |
| `end` | `integer` | The time at which to end playback, measured in seconds from the beginning of the video. If set, t... |
| `mute` | `boolean` | Whether to mute the audio during video playback. Defaults to false. |
| `outline` | `Outline` | The outline of the video. The default outline matches the defaults for new videos created in the ... |
| `start` | `integer` | The time at which to start playback, measured in seconds from the beginning of the video. If set,... |

### `WeightedFontFamily`

Represents a font family and weight used to style a TextRun.

| Property | Type | Description |
|----------|------|-------------|
| `fontFamily` | `string` | The font family of the text. The font family can be any font from the Font menu in Slides or from... |
| `weight` | `integer` | The rendered weight of the text. This field can have any value that is a multiple of `100` betwee... |

### `WordArt`

A PageElement kind representing word art.

| Property | Type | Description |
|----------|------|-------------|
| `renderedText` | `string` | The text rendered as word art. |

### `WriteControl`

Provides control over how write requests are executed.

| Property | Type | Description |
|----------|------|-------------|
| `requiredRevisionId` | `string` | The revision ID of the presentation required for the write request. If specified and the required... |

