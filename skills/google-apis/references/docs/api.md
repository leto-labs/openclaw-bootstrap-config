# Google Docs API - API Reference

**Version**: `v1` | **Methods**: 3 | **Schemas**: 168

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `docs.documents.get` | GET | `v1/documents/{documentId}` | Gets the latest version of the specified document. |
| `docs.documents.create` | POST | `v1/documents` | Creates a blank document using the title given in the request. Other fields in the request, inclu... |
| `docs.documents.batchUpdate` | POST | `v1/documents/{documentId}:batchUpdate` | Applies one or more updates to the document. Each request is validated before being applied. If a... |

### `docs.documents.get`

**GET** `v1/documents/{documentId}`

Gets the latest version of the specified document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `documentId` | `string` | path | Yes | The ID of the document to retrieve. |
| `includeTabsContent` | `boolean` | query | No | Whether to populate the Document.tabs field instead of the text content fields like `body` and `documentStyle` on Doc... |
| `suggestionsViewMode` | `string` | query | No | The suggestions view mode to apply to the document. This allows viewing the document with all suggestions inline, acc... |

**Response**: `Document`

```typescript
const res = await docs.documents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/documents`
- `https://www.googleapis.com/auth/documents.readonly`
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `docs.documents.create`

**POST** `v1/documents`

Creates a blank document using the title given in the request. Other fields in the request, including any provided content, are ignored. Returns the created document.

**Request body**: `Document`

**Response**: `Document`

```typescript
const res = await docs.documents.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/documents`
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`

---

### `docs.documents.batchUpdate`

**POST** `v1/documents/{documentId}:batchUpdate`

Applies one or more updates to the document. Each request is validated before being applied. If any request is not valid, then the entire request will fail and nothing will be applied. Some requests have replies to give you some information about how they are applied. Other requests do not need to return information; these each return an empty reply. The order of replies matches that of the requests. For example, suppose you call batchUpdate with four updates, and only the third one returns information. The response would have two empty replies, the reply to the third request, and another empty reply, in that order. Because other users may be editing the document, the document might not exactly reflect your changes: your changes may be altered with respect to collaborator changes. If there are no collaborators, the document should reflect your changes. In any case, the updates in your request are guaranteed to be applied together atomically.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `documentId` | `string` | path | Yes | The ID of the document to update. |

**Request body**: `BatchUpdateDocumentRequest`

**Response**: `BatchUpdateDocumentResponse`

```typescript
const res = await docs.documents.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/documents`
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`

---

## Schemas

### `AddDocumentTabRequest`

Adds a document tab. When a tab is added at a given index, all subsequent tabs' indexes are incremented.

| Property | Type | Description |
|----------|------|-------------|
| `tabProperties` | `TabProperties` | The properties of the tab to add. All properties are optional. |

### `AddDocumentTabResponse`

The result of adding a document tab.

| Property | Type | Description |
|----------|------|-------------|
| `tabProperties` | `TabProperties` | The properties of the newly added tab. |

### `AutoText`

A ParagraphElement representing a spot in the text that's dynamically replaced with content that can change over time, like a page number.

| Property | Type | Description |
|----------|------|-------------|
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionIds` | `array<string>` | The suggested insertion IDs. An AutoText may have multiple insertion IDs if it's a nested suggest... |
| `suggestedTextStyleChanges` | `object` | The suggested text style changes to this AutoText, keyed by suggestion ID. |
| `textStyle` | `TextStyle` | The text style of this AutoText. |
| `type` | `string` | The type of this auto text. |

### `Background`

Represents the background of a document.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `OptionalColor` | The background color. |

### `BackgroundSuggestionState`

A mask that indicates which of the fields on the base Background have been changed in this suggestion. For any field set to true, the Backgound has a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColorSuggested` | `boolean` | Indicates whether the current background color has been modified in this suggestion. |

### `BatchUpdateDocumentRequest`

Request message for BatchUpdateDocument.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<Request>` | A list of updates to apply to the document. |
| `writeControl` | `WriteControl` | Provides control over how write requests are executed. |

### `BatchUpdateDocumentResponse`

Response message from a BatchUpdateDocument request.

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `string` | The ID of the document to which the updates were applied to. |
| `replies` | `array<Response>` | The reply of the updates. This maps 1:1 with the updates, although replies to some requests may b... |
| `writeControl` | `WriteControl` | The updated write control after applying the request. |

### `Body`

The document body. The body typically contains the full document contents except for headers, footers, and footnotes.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `array<StructuralElement>` | The contents of the body. The indexes for the body's content begin at zero. |

### `BookmarkLink`

A reference to a bookmark in this document.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The ID of a bookmark in this document. |
| `tabId` | `string` | The ID of the tab containing this bookmark. |

### `Bullet`

Describes the bullet of a paragraph.

| Property | Type | Description |
|----------|------|-------------|
| `listId` | `string` | The ID of the list this paragraph belongs to. |
| `nestingLevel` | `integer` | The nesting level of this paragraph in the list. |
| `textStyle` | `TextStyle` | The paragraph-specific text style applied to this bullet. |

### `BulletSuggestionState`

A mask that indicates which of the fields on the base Bullet have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `listIdSuggested` | `boolean` | Indicates if there was a suggested change to the list_id. |
| `nestingLevelSuggested` | `boolean` | Indicates if there was a suggested change to the nesting_level. |
| `textStyleSuggestionState` | `TextStyleSuggestionState` | A mask that indicates which of the fields in text style have been changed in this suggestion. |

### `Color`

A solid color.

| Property | Type | Description |
|----------|------|-------------|
| `rgbColor` | `RgbColor` | The RGB color value. |

### `ColumnBreak`

A ParagraphElement representing a column break. A column break makes the subsequent text start at the top of the next column.

| Property | Type | Description |
|----------|------|-------------|
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionIds` | `array<string>` | The suggested insertion IDs. A ColumnBreak may have multiple insertion IDs if it's a nested sugge... |
| `suggestedTextStyleChanges` | `object` | The suggested text style changes to this ColumnBreak, keyed by suggestion ID. |
| `textStyle` | `TextStyle` | The text style of this ColumnBreak. Similar to text content, like text runs and footnote referenc... |

### `CreateFooterRequest`

Creates a Footer. The new footer is applied to the SectionStyle at the location of the SectionBreak if specified, otherwise it is applied to the DocumentStyle. If a footer of the specified type already exists, a 400 bad request error is returned.

| Property | Type | Description |
|----------|------|-------------|
| `sectionBreakLocation` | `Location` | The location of the SectionBreak immediately preceding the section whose SectionStyle this footer... |
| `type` | `string` | The type of footer to create. |

### `CreateFooterResponse`

The result of creating a footer.

| Property | Type | Description |
|----------|------|-------------|
| `footerId` | `string` | The ID of the created footer. |

### `CreateFootnoteRequest`

Creates a Footnote segment and inserts a new FootnoteReference to it at the given location. The new Footnote segment will contain a space followed by a newline character.

| Property | Type | Description |
|----------|------|-------------|
| `endOfSegmentLocation` | `EndOfSegmentLocation` | Inserts the footnote reference at the end of the document body. Footnote references cannot be ins... |
| `location` | `Location` | Inserts the footnote reference at a specific index in the document. The footnote reference must b... |

### `CreateFootnoteResponse`

The result of creating a footnote.

| Property | Type | Description |
|----------|------|-------------|
| `footnoteId` | `string` | The ID of the created footnote. |

### `CreateHeaderRequest`

Creates a Header. The new header is applied to the SectionStyle at the location of the SectionBreak if specified, otherwise it is applied to the DocumentStyle. If a header of the specified type already exists, a 400 bad request error is returned.

| Property | Type | Description |
|----------|------|-------------|
| `sectionBreakLocation` | `Location` | The location of the SectionBreak which begins the section this header should belong to. If `secti... |
| `type` | `string` | The type of header to create. |

### `CreateHeaderResponse`

The result of creating a header.

| Property | Type | Description |
|----------|------|-------------|
| `headerId` | `string` | The ID of the created header. |

### `CreateNamedRangeRequest`

Creates a NamedRange referencing the given range.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the NamedRange. Names do not need to be unique. Names must be at least 1 character an... |
| `range` | `Range` | The range to apply the name to. |

### `CreateNamedRangeResponse`

The result of creating a named range.

| Property | Type | Description |
|----------|------|-------------|
| `namedRangeId` | `string` | The ID of the created named range. |

### `CreateParagraphBulletsRequest`

Creates bullets for all of the paragraphs that overlap with the given range. The nesting level of each paragraph will be determined by counting leading tabs in front of each paragraph. To avoid excess space between the bullet and the corresponding paragraph, these leading tabs are removed by this request. This may change the indices of parts of the text. If the paragraph immediately before paragraphs being updated is in a list with a matching preset, the paragraphs being updated are added to that preceding list.

| Property | Type | Description |
|----------|------|-------------|
| `bulletPreset` | `string` | The kinds of bullet glyphs to be used. |
| `range` | `Range` | The range to apply the bullet preset to. |

### `CropProperties`

The crop properties of an image. The crop rectangle is represented using fractional offsets from the original content's 4 edges. - If the offset is in the interval (0, 1), the corresponding edge of crop rectangle is positioned inside of the image's original bounding rectangle. - If the offset is negative or greater than 1, the corresponding edge of crop rectangle is positioned outside of the image's original bounding rectangle. - If all offsets and rotation angles are 0, the image is not cropped.

| Property | Type | Description |
|----------|------|-------------|
| `angle` | `number` | The clockwise rotation angle of the crop rectangle around its center, in radians. Rotation is app... |
| `offsetBottom` | `number` | The offset specifies how far inwards the bottom edge of the crop rectangle is from the bottom edg... |
| `offsetLeft` | `number` | The offset specifies how far inwards the left edge of the crop rectangle is from the left edge of... |
| `offsetRight` | `number` | The offset specifies how far inwards the right edge of the crop rectangle is from the right edge ... |
| `offsetTop` | `number` | The offset specifies how far inwards the top edge of the crop rectangle is from the top edge of t... |

### `CropPropertiesSuggestionState`

A mask that indicates which of the fields on the base CropProperties have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `angleSuggested` | `boolean` | Indicates if there was a suggested change to angle. |
| `offsetBottomSuggested` | `boolean` | Indicates if there was a suggested change to offset_bottom. |
| `offsetLeftSuggested` | `boolean` | Indicates if there was a suggested change to offset_left. |
| `offsetRightSuggested` | `boolean` | Indicates if there was a suggested change to offset_right. |
| `offsetTopSuggested` | `boolean` | Indicates if there was a suggested change to offset_top. |

### `DateElement`

A date instance mentioned in a document.

| Property | Type | Description |
|----------|------|-------------|
| `dateElementProperties` | `DateElementProperties` | The properties of this DateElement. |
| `dateId` | `string` | Output only. The unique ID of this date. |
| `suggestedDateElementPropertiesChanges` | `object` | The suggested changes to the date element properties, keyed by suggestion ID. |
| `suggestedDeletionIds` | `array<string>` | IDs for suggestions that remove this date from the document. A DateElement might have multiple de... |
| `suggestedInsertionIds` | `array<string>` | IDs for suggestions that insert this date into the document. A DateElement might have multiple in... |
| `suggestedTextStyleChanges` | `object` | The suggested text style changes to this DateElement, keyed by suggestion ID. |
| `textStyle` | `TextStyle` | The text style of this DateElement. |

### `DateElementProperties`

Properties of a DateElement.

| Property | Type | Description |
|----------|------|-------------|
| `dateFormat` | `string` | Determines how the date part of the DateElement will be displayed in the document. If unset, the ... |
| `displayText` | `string` | Output only. Indicates how the DateElement is displayed in the document. |
| `locale` | `string` | The locale of the document, as defined by the Unicode Common Locale Data Repository (CLDR) projec... |
| `timeFormat` | `string` | Determines how the time part of the DateElement will be displayed in the document. If unset, the ... |
| `timeZoneId` | `string` | The time zone of the DateElement, as defined by the Unicode Common Locale Data Repository (CLDR) ... |
| `timestamp` | `string` | The point in time to represent, in seconds and nanoseconds since Unix epoch: January 1, 1970 at m... |

### `DateElementPropertiesSuggestionState`

A mask that indicates which of the fields on the base DateElementProperties have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `dateFormatSuggested` | `boolean` | Indicates if there was a suggested change to date_format. |
| `localeSuggested` | `boolean` | Indicates if there was a suggested change to locale. |
| `timeFormatSuggested` | `boolean` | Indicates if there was a suggested change to time_format. |
| `timeZoneIdSuggested` | `boolean` | Indicates if there was a suggested change to time_zone_id. |
| `timestampSuggested` | `boolean` | Indicates if there was a suggested change to timestamp. |

### `DeleteContentRangeRequest`

Deletes content from the document.

| Property | Type | Description |
|----------|------|-------------|
| `range` | `Range` | The range of content to delete. Deleting text that crosses a paragraph boundary may result in cha... |

### `DeleteFooterRequest`

Deletes a Footer from the document.

| Property | Type | Description |
|----------|------|-------------|
| `footerId` | `string` | The id of the footer to delete. If this footer is defined on DocumentStyle, the reference to this... |
| `tabId` | `string` | The tab that contains the footer to delete. When omitted, the request is applied to the first tab... |

### `DeleteHeaderRequest`

Deletes a Header from the document.

| Property | Type | Description |
|----------|------|-------------|
| `headerId` | `string` | The id of the header to delete. If this header is defined on DocumentStyle, the reference to this... |
| `tabId` | `string` | The tab containing the header to delete. When omitted, the request is applied to the first tab. I... |

### `DeleteNamedRangeRequest`

Deletes a NamedRange.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the range(s) to delete. All named ranges with the given name will be deleted. |
| `namedRangeId` | `string` | The ID of the named range to delete. |
| `tabsCriteria` | `TabsCriteria` | Optional. The criteria used to specify which tab(s) the range deletion should occur in. When omit... |

### `DeleteParagraphBulletsRequest`

Deletes bullets from all of the paragraphs that overlap with the given range. The nesting level of each paragraph will be visually preserved by adding indent to the start of the corresponding paragraph.

| Property | Type | Description |
|----------|------|-------------|
| `range` | `Range` | The range to delete bullets from. |

### `DeletePositionedObjectRequest`

Deletes a PositionedObject from the document.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The ID of the positioned object to delete. |
| `tabId` | `string` | The tab that the positioned object to delete is in. When omitted, the request is applied to the f... |

### `DeleteTabRequest`

Deletes a tab. If the tab has child tabs, they are deleted as well.

| Property | Type | Description |
|----------|------|-------------|
| `tabId` | `string` | The ID of the tab to delete. |

### `DeleteTableColumnRequest`

Deletes a column from a table.

| Property | Type | Description |
|----------|------|-------------|
| `tableCellLocation` | `TableCellLocation` | The reference table cell location from which the column will be deleted. The column this cell spa... |

### `DeleteTableRowRequest`

Deletes a row from a table.

| Property | Type | Description |
|----------|------|-------------|
| `tableCellLocation` | `TableCellLocation` | The reference table cell location from which the row will be deleted. The row this cell spans wil... |

### `Dimension`

A magnitude in a single direction in the specified units.

| Property | Type | Description |
|----------|------|-------------|
| `magnitude` | `number` | The magnitude. |
| `unit` | `string` | The units for magnitude. |

### `Document`

A Google Docs document.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `Body` | Output only. The main body of the document. Legacy field: Instead, use Document.tabs.documentTab.... |
| `documentId` | `string` | Output only. The ID of the document. |
| `documentStyle` | `DocumentStyle` | Output only. The style of the document. Legacy field: Instead, use Document.tabs.documentTab.docu... |
| `footers` | `object` | Output only. The footers in the document, keyed by footer ID. Legacy field: Instead, use Document... |
| `footnotes` | `object` | Output only. The footnotes in the document, keyed by footnote ID. Legacy field: Instead, use Docu... |
| `headers` | `object` | Output only. The headers in the document, keyed by header ID. Legacy field: Instead, use Document... |
| `inlineObjects` | `object` | Output only. The inline objects in the document, keyed by object ID. Legacy field: Instead, use D... |
| `lists` | `object` | Output only. The lists in the document, keyed by list ID. Legacy field: Instead, use Document.tab... |
| `namedRanges` | `object` | Output only. The named ranges in the document, keyed by name. Legacy field: Instead, use Document... |
| `namedStyles` | `NamedStyles` | Output only. The named styles of the document. Legacy field: Instead, use Document.tabs.documentT... |
| `positionedObjects` | `object` | Output only. The positioned objects in the document, keyed by object ID. Legacy field: Instead, u... |
| `revisionId` | `string` | Output only. The revision ID of the document. Can be used in update requests to specify which rev... |
| `suggestedDocumentStyleChanges` | `object` | Output only. The suggested changes to the style of the document, keyed by suggestion ID. Legacy f... |
| `suggestedNamedStylesChanges` | `object` | Output only. The suggested changes to the named styles of the document, keyed by suggestion ID. L... |
| `suggestionsViewMode` | `string` | Output only. The suggestions view mode applied to the document. Note: When editing a document, ch... |
| `tabs` | `array<Tab>` | Tabs that are part of a document. Tabs can contain child tabs, a tab nested within another tab. C... |
| `title` | `string` | The title of the document. |

### `DocumentFormat`

Represents document-level format settings.

| Property | Type | Description |
|----------|------|-------------|
| `documentMode` | `string` | Whether the document has pages or is pageless. |

### `DocumentStyle`

The style of the document.

| Property | Type | Description |
|----------|------|-------------|
| `background` | `Background` | The background of the document. Documents cannot have a transparent background color. |
| `defaultFooterId` | `string` | The ID of the default footer. If not set, there's no default footer. If DocumentMode is PAGELESS,... |
| `defaultHeaderId` | `string` | The ID of the default header. If not set, there's no default header. If DocumentMode is PAGELESS,... |
| `documentFormat` | `DocumentFormat` | Specifies document-level format settings, such as the document mode (pages vs pageless). |
| `evenPageFooterId` | `string` | The ID of the footer used only for even pages. The value of use_even_page_header_footer determine... |
| `evenPageHeaderId` | `string` | The ID of the header used only for even pages. The value of use_even_page_header_footer determine... |
| `firstPageFooterId` | `string` | The ID of the footer used only for the first page. If not set then a unique footer for the first ... |
| `firstPageHeaderId` | `string` | The ID of the header used only for the first page. If not set then a unique header for the first ... |
| `flipPageOrientation` | `boolean` | Optional. Indicates whether to flip the dimensions of the page_size, which allows changing the pa... |
| `marginBottom` | `Dimension` | The bottom page margin. Updating the bottom page margin on the document style clears the bottom p... |
| `marginFooter` | `Dimension` | The amount of space between the bottom of the page and the contents of the footer. If DocumentMod... |
| `marginHeader` | `Dimension` | The amount of space between the top of the page and the contents of the header. If DocumentMode i... |
| `marginLeft` | `Dimension` | The left page margin. Updating the left page margin on the document style clears the left page ma... |
| `marginRight` | `Dimension` | The right page margin. Updating the right page margin on the document style clears the right page... |
| `marginTop` | `Dimension` | The top page margin. Updating the top page margin on the document style clears the top page margi... |
| `pageNumberStart` | `integer` | The page number from which to start counting the number of pages. If DocumentMode is PAGELESS, th... |
| `pageSize` | `Size` | The size of a page in the document. If DocumentMode is PAGELESS, this property will not be rendered. |
| `useCustomHeaderFooterMargins` | `boolean` | Indicates whether DocumentStyle margin_header, SectionStyle margin_header and DocumentStyle margi... |
| `useEvenPageHeaderFooter` | `boolean` | Indicates whether to use the even page header / footer IDs for the even pages. If DocumentMode is... |
| `useFirstPageHeaderFooter` | `boolean` | Indicates whether to use the first page header / footer IDs for the first page. If DocumentMode i... |

### `DocumentStyleSuggestionState`

A mask that indicates which of the fields on the base DocumentStyle have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundSuggestionState` | `BackgroundSuggestionState` | A mask that indicates which of the fields in background have been changed in this suggestion. |
| `defaultFooterIdSuggested` | `boolean` | Indicates if there was a suggested change to default_footer_id. |
| `defaultHeaderIdSuggested` | `boolean` | Indicates if there was a suggested change to default_header_id. |
| `evenPageFooterIdSuggested` | `boolean` | Indicates if there was a suggested change to even_page_footer_id. |
| `evenPageHeaderIdSuggested` | `boolean` | Indicates if there was a suggested change to even_page_header_id. |
| `firstPageFooterIdSuggested` | `boolean` | Indicates if there was a suggested change to first_page_footer_id. |
| `firstPageHeaderIdSuggested` | `boolean` | Indicates if there was a suggested change to first_page_header_id. |
| `flipPageOrientationSuggested` | `boolean` | Optional. Indicates if there was a suggested change to flip_page_orientation. |
| `marginBottomSuggested` | `boolean` | Indicates if there was a suggested change to margin_bottom. |
| `marginFooterSuggested` | `boolean` | Indicates if there was a suggested change to margin_footer. |
| `marginHeaderSuggested` | `boolean` | Indicates if there was a suggested change to margin_header. |
| `marginLeftSuggested` | `boolean` | Indicates if there was a suggested change to margin_left. |
| `marginRightSuggested` | `boolean` | Indicates if there was a suggested change to margin_right. |
| `marginTopSuggested` | `boolean` | Indicates if there was a suggested change to margin_top. |
| `pageNumberStartSuggested` | `boolean` | Indicates if there was a suggested change to page_number_start. |
| `pageSizeSuggestionState` | `SizeSuggestionState` | A mask that indicates which of the fields in size have been changed in this suggestion. |
| `useCustomHeaderFooterMarginsSuggested` | `boolean` | Indicates if there was a suggested change to use_custom_header_footer_margins. |
| `useEvenPageHeaderFooterSuggested` | `boolean` | Indicates if there was a suggested change to use_even_page_header_footer. |
| `useFirstPageHeaderFooterSuggested` | `boolean` | Indicates if there was a suggested change to use_first_page_header_footer. |

### `DocumentTab`

A tab with document contents.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `Body` | The main body of the document tab. |
| `documentStyle` | `DocumentStyle` | The style of the document tab. |
| `footers` | `object` | The footers in the document tab, keyed by footer ID. |
| `footnotes` | `object` | The footnotes in the document tab, keyed by footnote ID. |
| `headers` | `object` | The headers in the document tab, keyed by header ID. |
| `inlineObjects` | `object` | The inline objects in the document tab, keyed by object ID. |
| `lists` | `object` | The lists in the document tab, keyed by list ID. |
| `namedRanges` | `object` | The named ranges in the document tab, keyed by name. |
| `namedStyles` | `NamedStyles` | The named styles of the document tab. |
| `positionedObjects` | `object` | The positioned objects in the document tab, keyed by object ID. |
| `suggestedDocumentStyleChanges` | `object` | The suggested changes to the style of the document tab, keyed by suggestion ID. |
| `suggestedNamedStylesChanges` | `object` | The suggested changes to the named styles of the document tab, keyed by suggestion ID. |

### `EmbeddedDrawingProperties`

The properties of an embedded drawing and used to differentiate the object type. An embedded drawing is one that's created and edited within a document. Note that extensive details are not supported.

### `EmbeddedDrawingPropertiesSuggestionState`

A mask that indicates which of the fields on the base EmbeddedDrawingProperties have been changed in this suggestion. For any field set to true, there's a new suggested value.

### `EmbeddedObject`

An embedded object in the document.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the embedded object. The `title` and `description` are both combined to displa... |
| `embeddedDrawingProperties` | `EmbeddedDrawingProperties` | The properties of an embedded drawing. |
| `embeddedObjectBorder` | `EmbeddedObjectBorder` | The border of the embedded object. |
| `imageProperties` | `ImageProperties` | The properties of an image. |
| `linkedContentReference` | `LinkedContentReference` | A reference to the external linked source content. For example, it contains a reference to the so... |
| `marginBottom` | `Dimension` | The bottom margin of the embedded object. |
| `marginLeft` | `Dimension` | The left margin of the embedded object. |
| `marginRight` | `Dimension` | The right margin of the embedded object. |
| `marginTop` | `Dimension` | The top margin of the embedded object. |
| `size` | `Size` | The visible size of the image after cropping. |
| `title` | `string` | The title of the embedded object. The `title` and `description` are both combined to display alt ... |

### `EmbeddedObjectBorder`

A border around an EmbeddedObject.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `OptionalColor` | The color of the border. |
| `dashStyle` | `string` | The dash style of the border. |
| `propertyState` | `string` | The property state of the border property. |
| `width` | `Dimension` | The width of the border. |

### `EmbeddedObjectBorderSuggestionState`

A mask that indicates which of the fields on the base EmbeddedObjectBorder have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `colorSuggested` | `boolean` | Indicates if there was a suggested change to color. |
| `dashStyleSuggested` | `boolean` | Indicates if there was a suggested change to dash_style. |
| `propertyStateSuggested` | `boolean` | Indicates if there was a suggested change to property_state. |
| `widthSuggested` | `boolean` | Indicates if there was a suggested change to width. |

### `EmbeddedObjectSuggestionState`

A mask that indicates which of the fields on the base EmbeddedObject have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `descriptionSuggested` | `boolean` | Indicates if there was a suggested change to description. |
| `embeddedDrawingPropertiesSuggestionState` | `EmbeddedDrawingPropertiesSuggestionState` | A mask that indicates which of the fields in embedded_drawing_properties have been changed in thi... |
| `embeddedObjectBorderSuggestionState` | `EmbeddedObjectBorderSuggestionState` | A mask that indicates which of the fields in embedded_object_border have been changed in this sug... |
| `imagePropertiesSuggestionState` | `ImagePropertiesSuggestionState` | A mask that indicates which of the fields in image_properties have been changed in this suggestion. |
| `linkedContentReferenceSuggestionState` | `LinkedContentReferenceSuggestionState` | A mask that indicates which of the fields in linked_content_reference have been changed in this s... |
| `marginBottomSuggested` | `boolean` | Indicates if there was a suggested change to margin_bottom. |
| `marginLeftSuggested` | `boolean` | Indicates if there was a suggested change to margin_left. |
| `marginRightSuggested` | `boolean` | Indicates if there was a suggested change to margin_right. |
| `marginTopSuggested` | `boolean` | Indicates if there was a suggested change to margin_top. |
| `sizeSuggestionState` | `SizeSuggestionState` | A mask that indicates which of the fields in size have been changed in this suggestion. |
| `titleSuggested` | `boolean` | Indicates if there was a suggested change to title. |

### `EndOfSegmentLocation`

Location at the end of a body, header, footer or footnote. The location is immediately before the last newline in the document segment.

| Property | Type | Description |
|----------|------|-------------|
| `segmentId` | `string` | The ID of the header, footer or footnote the location is in. An empty segment ID signifies the do... |
| `tabId` | `string` | The tab that the location is in. When omitted, the request is applied to the first tab. In a docu... |

### `Equation`

A ParagraphElement representing an equation.

| Property | Type | Description |
|----------|------|-------------|
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionIds` | `array<string>` | The suggested insertion IDs. An Equation may have multiple insertion IDs if it's a nested suggest... |

### `Footer`

A document footer.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `array<StructuralElement>` | The contents of the footer. The indexes for a footer's content begin at zero. |
| `footerId` | `string` | The ID of the footer. |

### `Footnote`

A document footnote.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `array<StructuralElement>` | The contents of the footnote. The indexes for a footnote's content begin at zero. |
| `footnoteId` | `string` | The ID of the footnote. |

### `FootnoteReference`

A ParagraphElement representing a footnote reference. A footnote reference is the inline content rendered with a number and is used to identify the footnote.

| Property | Type | Description |
|----------|------|-------------|
| `footnoteId` | `string` | The ID of the footnote that contains the content of this footnote reference. |
| `footnoteNumber` | `string` | The rendered number of this footnote. |
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionIds` | `array<string>` | The suggested insertion IDs. A FootnoteReference may have multiple insertion IDs if it's a nested... |
| `suggestedTextStyleChanges` | `object` | The suggested text style changes to this FootnoteReference, keyed by suggestion ID. |
| `textStyle` | `TextStyle` | The text style of this FootnoteReference. |

### `Header`

A document header.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `array<StructuralElement>` | The contents of the header. The indexes for a header's content begin at zero. |
| `headerId` | `string` | The ID of the header. |

### `HeadingLink`

A reference to a heading in this document.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The ID of a heading in this document. |
| `tabId` | `string` | The ID of the tab containing this heading. |

### `HorizontalRule`

A ParagraphElement representing a horizontal line.

| Property | Type | Description |
|----------|------|-------------|
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionIds` | `array<string>` | The suggested insertion IDs. A HorizontalRule may have multiple insertion IDs if it is a nested s... |
| `suggestedTextStyleChanges` | `object` | The suggested text style changes to this HorizontalRule, keyed by suggestion ID. |
| `textStyle` | `TextStyle` | The text style of this HorizontalRule. Similar to text content, like text runs and footnote refer... |

### `ImageProperties`

The properties of an image.

| Property | Type | Description |
|----------|------|-------------|
| `angle` | `number` | The clockwise rotation angle of the image, in radians. |
| `brightness` | `number` | The brightness effect of the image. The value should be in the interval [-1.0, 1.0], where 0 mean... |
| `contentUri` | `string` | A URI to the image with a default lifetime of 30 minutes. This URI is tagged with the account of ... |
| `contrast` | `number` | The contrast effect of the image. The value should be in the interval [-1.0, 1.0], where 0 means ... |
| `cropProperties` | `CropProperties` | The crop properties of the image. |
| `sourceUri` | `string` | The source URI is the URI used to insert the image. The source URI can be empty. |
| `transparency` | `number` | The transparency effect of the image. The value should be in the interval [0.0, 1.0], where 0 mea... |

### `ImagePropertiesSuggestionState`

A mask that indicates which of the fields on the base ImageProperties have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `angleSuggested` | `boolean` | Indicates if there was a suggested change to angle. |
| `brightnessSuggested` | `boolean` | Indicates if there was a suggested change to brightness. |
| `contentUriSuggested` | `boolean` | Indicates if there was a suggested change to content_uri. |
| `contrastSuggested` | `boolean` | Indicates if there was a suggested change to contrast. |
| `cropPropertiesSuggestionState` | `CropPropertiesSuggestionState` | A mask that indicates which of the fields in crop_properties have been changed in this suggestion. |
| `sourceUriSuggested` | `boolean` | Indicates if there was a suggested change to source_uri. |
| `transparencySuggested` | `boolean` | Indicates if there was a suggested change to transparency. |

### `InlineObject`

An object that appears inline with text. An InlineObject contains an EmbeddedObject such as an image.

| Property | Type | Description |
|----------|------|-------------|
| `inlineObjectProperties` | `InlineObjectProperties` | The properties of this inline object. |
| `objectId` | `string` | The ID of this inline object. Can be used to update an object’s properties. |
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInlineObjectPropertiesChanges` | `object` | The suggested changes to the inline object properties, keyed by suggestion ID. |
| `suggestedInsertionId` | `string` | The suggested insertion ID. If empty, then this is not a suggested insertion. |

### `InlineObjectElement`

A ParagraphElement that contains an InlineObject.

| Property | Type | Description |
|----------|------|-------------|
| `inlineObjectId` | `string` | The ID of the InlineObject this element contains. |
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionIds` | `array<string>` | The suggested insertion IDs. An InlineObjectElement may have multiple insertion IDs if it's a nes... |
| `suggestedTextStyleChanges` | `object` | The suggested text style changes to this InlineObject, keyed by suggestion ID. |
| `textStyle` | `TextStyle` | The text style of this InlineObjectElement. Similar to text content, like text runs and footnote ... |

### `InlineObjectProperties`

Properties of an InlineObject.

| Property | Type | Description |
|----------|------|-------------|
| `embeddedObject` | `EmbeddedObject` | The embedded object of this inline object. |

### `InlineObjectPropertiesSuggestionState`

A mask that indicates which of the fields on the base InlineObjectProperties have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `embeddedObjectSuggestionState` | `EmbeddedObjectSuggestionState` | A mask that indicates which of the fields in embedded_object have been changed in this suggestion. |

### `InsertDateRequest`

Inserts a date at the specified location.

| Property | Type | Description |
|----------|------|-------------|
| `dateElementProperties` | `DateElementProperties` | The properties of the date to insert. |
| `endOfSegmentLocation` | `EndOfSegmentLocation` | Inserts the date at the end of the given header, footer or document body. |
| `location` | `Location` | Inserts the date at a specific index in the document. The date must be inserted inside the bounds... |

### `InsertInlineImageRequest`

Inserts an InlineObject containing an image at the given location.

| Property | Type | Description |
|----------|------|-------------|
| `endOfSegmentLocation` | `EndOfSegmentLocation` | Inserts the text at the end of a header, footer or the document body. Inline images cannot be ins... |
| `location` | `Location` | Inserts the image at a specific index in the document. The image must be inserted inside the boun... |
| `objectSize` | `Size` | The size that the image should appear as in the document. This property is optional and the final... |
| `uri` | `string` | The image URI. The image is fetched once at insertion time and a copy is stored for display insid... |

### `InsertInlineImageResponse`

The result of inserting an inline image.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The ID of the created InlineObject. |

### `InsertInlineSheetsChartResponse`

The result of inserting an embedded Google Sheets chart.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The object ID of the inserted chart. |

### `InsertPageBreakRequest`

Inserts a page break followed by a newline at the specified location.

| Property | Type | Description |
|----------|------|-------------|
| `endOfSegmentLocation` | `EndOfSegmentLocation` | Inserts the page break at the end of the document body. Page breaks cannot be inserted inside a f... |
| `location` | `Location` | Inserts the page break at a specific index in the document. The page break must be inserted insid... |

### `InsertPersonRequest`

Inserts a person mention.

| Property | Type | Description |
|----------|------|-------------|
| `endOfSegmentLocation` | `EndOfSegmentLocation` | Inserts the person mention at the end of a header, footer, footnote or the document body. |
| `location` | `Location` | Inserts the person mention at a specific index in the document. The person mention must be insert... |
| `personProperties` | `PersonProperties` | The properties of the person mention to insert. |

### `InsertSectionBreakRequest`

Inserts a section break at the given location. A newline character will be inserted before the section break.

| Property | Type | Description |
|----------|------|-------------|
| `endOfSegmentLocation` | `EndOfSegmentLocation` | Inserts a newline and a section break at the end of the document body. Section breaks cannot be i... |
| `location` | `Location` | Inserts a newline and a section break at a specific index in the document. The section break must... |
| `sectionType` | `string` | The type of section to insert. |

### `InsertTableColumnRequest`

Inserts an empty column into a table.

| Property | Type | Description |
|----------|------|-------------|
| `insertRight` | `boolean` | Whether to insert new column to the right of the reference cell location. - `True`: insert to the... |
| `tableCellLocation` | `TableCellLocation` | The reference table cell location from which columns will be inserted. A new column will be inser... |

### `InsertTableRequest`

Inserts a table at the specified location. A newline character will be inserted before the inserted table.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `integer` | The number of columns in the table. |
| `endOfSegmentLocation` | `EndOfSegmentLocation` | Inserts the table at the end of the given header, footer or document body. A newline character wi... |
| `location` | `Location` | Inserts the table at a specific model index. A newline character will be inserted before the inse... |
| `rows` | `integer` | The number of rows in the table. |

### `InsertTableRowRequest`

Inserts an empty row into a table.

| Property | Type | Description |
|----------|------|-------------|
| `insertBelow` | `boolean` | Whether to insert new row below the reference cell location. - `True`: insert below the cell. - `... |
| `tableCellLocation` | `TableCellLocation` | The reference table cell location from which rows will be inserted. A new row will be inserted ab... |

### `InsertTextRequest`

Inserts text at the specified location.

| Property | Type | Description |
|----------|------|-------------|
| `endOfSegmentLocation` | `EndOfSegmentLocation` | Inserts the text at the end of a header, footer, footnote or the document body. |
| `location` | `Location` | Inserts the text at a specific index in the document. Text must be inserted inside the bounds of ... |
| `text` | `string` | The text to be inserted. Inserting a newline character will implicitly create a new Paragraph at ... |

### `Link`

A reference to another portion of a document or an external URL resource.

| Property | Type | Description |
|----------|------|-------------|
| `bookmark` | `BookmarkLink` | A bookmark in this document. In documents containing a single tab, links to bookmarks within the ... |
| `bookmarkId` | `string` | The ID of a bookmark in this document. Legacy field: Instead, set includeTabsContent to `true` an... |
| `heading` | `HeadingLink` | A heading in this document. In documents containing a single tab, links to headings within the si... |
| `headingId` | `string` | The ID of a heading in this document. Legacy field: Instead, set includeTabsContent to `true` and... |
| `tabId` | `string` | The ID of a tab in this document. |
| `url` | `string` | An external URL. |

### `LinkedContentReference`

A reference to the external linked source content.

| Property | Type | Description |
|----------|------|-------------|
| `sheetsChartReference` | `SheetsChartReference` | A reference to the linked chart. |

### `LinkedContentReferenceSuggestionState`

A mask that indicates which of the fields on the base LinkedContentReference have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `sheetsChartReferenceSuggestionState` | `SheetsChartReferenceSuggestionState` | A mask that indicates which of the fields in sheets_chart_reference have been changed in this sug... |

### `List`

A List represents the list attributes for a group of paragraphs that all belong to the same list. A paragraph that's part of a list has a reference to the list's ID in its bullet.

| Property | Type | Description |
|----------|------|-------------|
| `listProperties` | `ListProperties` | The properties of the list. |
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this list. |
| `suggestedInsertionId` | `string` | The suggested insertion ID. If empty, then this is not a suggested insertion. |
| `suggestedListPropertiesChanges` | `object` | The suggested changes to the list properties, keyed by suggestion ID. |

### `ListProperties`

The properties of a list that describe the look and feel of bullets belonging to paragraphs associated with a list.

| Property | Type | Description |
|----------|------|-------------|
| `nestingLevels` | `array<NestingLevel>` | Describes the properties of the bullets at the associated level. A list has at most 9 levels of n... |

### `ListPropertiesSuggestionState`

A mask that indicates which of the fields on the base ListProperties have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `nestingLevelsSuggestionStates` | `array<NestingLevelSuggestionState>` | A mask that indicates which of the fields on the corresponding NestingLevel in nesting_levels hav... |

### `Location`

A particular location in the document.

| Property | Type | Description |
|----------|------|-------------|
| `index` | `integer` | The zero-based index, in UTF-16 code units. The index is relative to the beginning of the segment... |
| `segmentId` | `string` | The ID of the header, footer or footnote the location is in. An empty segment ID signifies the do... |
| `tabId` | `string` | The tab that the location is in. When omitted, the request is applied to the first tab. In a docu... |

### `MergeTableCellsRequest`

Merges cells in a Table.

| Property | Type | Description |
|----------|------|-------------|
| `tableRange` | `TableRange` | The table range specifying which cells of the table to merge. Any text in the cells being merged ... |

### `NamedRange`

A collection of Ranges with the same named range ID. Named ranges allow developers to associate parts of a document with an arbitrary user-defined label so their contents can be programmatically read or edited later. A document can contain multiple named ranges with the same name, but every named range has a unique ID. A named range is created with a single Range, and content inserted inside a named range generally expands that range. However, certain document changes can cause the range to be split into multiple ranges. Named ranges are not private. All applications and collaborators that have access to the document can see its named ranges.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the named range. |
| `namedRangeId` | `string` | The ID of the named range. |
| `ranges` | `array<Range>` | The ranges that belong to this named range. |

### `NamedRanges`

A collection of all the NamedRanges in the document that share a given name.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name that all the named ranges share. |
| `namedRanges` | `array<NamedRange>` | The NamedRanges that share the same name. |

### `NamedStyle`

A named style. Paragraphs in the document can inherit their TextStyle and ParagraphStyle from this named style when they have the same named style type.

| Property | Type | Description |
|----------|------|-------------|
| `namedStyleType` | `string` | The type of this named style. |
| `paragraphStyle` | `ParagraphStyle` | The paragraph style of this named style. |
| `textStyle` | `TextStyle` | The text style of this named style. |

### `NamedStyleSuggestionState`

A suggestion state of a NamedStyle message.

| Property | Type | Description |
|----------|------|-------------|
| `namedStyleType` | `string` | The named style type that this suggestion state corresponds to. This field is provided as a conve... |
| `paragraphStyleSuggestionState` | `ParagraphStyleSuggestionState` | A mask that indicates which of the fields in paragraph style have been changed in this suggestion. |
| `textStyleSuggestionState` | `TextStyleSuggestionState` | A mask that indicates which of the fields in text style have been changed in this suggestion. |

### `NamedStyles`

The named styles. Paragraphs in the document can inherit their TextStyle and ParagraphStyle from these named styles.

| Property | Type | Description |
|----------|------|-------------|
| `styles` | `array<NamedStyle>` | The named styles. There's an entry for each of the possible named style types. |

### `NamedStylesSuggestionState`

The suggestion state of a NamedStyles message.

| Property | Type | Description |
|----------|------|-------------|
| `stylesSuggestionStates` | `array<NamedStyleSuggestionState>` | A mask that indicates which of the fields on the corresponding NamedStyle in styles have been cha... |

### `NestingLevel`

Contains properties describing the look and feel of a list bullet at a given level of nesting.

| Property | Type | Description |
|----------|------|-------------|
| `bulletAlignment` | `string` | The alignment of the bullet within the space allotted for rendering the bullet. |
| `glyphFormat` | `string` | The format string used by bullets at this level of nesting. The glyph format contains one or more... |
| `glyphSymbol` | `string` | A custom glyph symbol used by bullets when paragraphs at this level of nesting is unordered. The ... |
| `glyphType` | `string` | The type of glyph used by bullets when paragraphs at this level of nesting is ordered. The glyph ... |
| `indentFirstLine` | `Dimension` | The amount of indentation for the first line of paragraphs at this level of nesting. |
| `indentStart` | `Dimension` | The amount of indentation for paragraphs at this level of nesting. Applied to the side that corre... |
| `startNumber` | `integer` | The number of the first list item at this nesting level. A value of 0 is treated as a value of 1 ... |
| `textStyle` | `TextStyle` | The text style of bullets at this level of nesting. |

### `NestingLevelSuggestionState`

A mask that indicates which of the fields on the base NestingLevel have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `bulletAlignmentSuggested` | `boolean` | Indicates if there was a suggested change to bullet_alignment. |
| `glyphFormatSuggested` | `boolean` | Indicates if there was a suggested change to glyph_format. |
| `glyphSymbolSuggested` | `boolean` | Indicates if there was a suggested change to glyph_symbol. |
| `glyphTypeSuggested` | `boolean` | Indicates if there was a suggested change to glyph_type. |
| `indentFirstLineSuggested` | `boolean` | Indicates if there was a suggested change to indent_first_line. |
| `indentStartSuggested` | `boolean` | Indicates if there was a suggested change to indent_start. |
| `startNumberSuggested` | `boolean` | Indicates if there was a suggested change to start_number. |
| `textStyleSuggestionState` | `TextStyleSuggestionState` | A mask that indicates which of the fields in text style have been changed in this suggestion. |

### `ObjectReferences`

A collection of object IDs.

| Property | Type | Description |
|----------|------|-------------|
| `objectIds` | `array<string>` | The object IDs. |

### `OptionalColor`

A color that can either be fully opaque or fully transparent.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `Color` | If set, this will be used as an opaque color. If unset, this represents a transparent color. |

### `PageBreak`

A ParagraphElement representing a page break. A page break makes the subsequent text start at the top of the next page.

| Property | Type | Description |
|----------|------|-------------|
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionIds` | `array<string>` | The suggested insertion IDs. A PageBreak may have multiple insertion IDs if it's a nested suggest... |
| `suggestedTextStyleChanges` | `object` | The suggested text style changes to this PageBreak, keyed by suggestion ID. |
| `textStyle` | `TextStyle` | The text style of this PageBreak. Similar to text content, like text runs and footnote references... |

### `Paragraph`

A StructuralElement representing a paragraph. A paragraph is a range of content that's terminated with a newline character.

| Property | Type | Description |
|----------|------|-------------|
| `bullet` | `Bullet` | The bullet for this paragraph. If not present, the paragraph does not belong to a list. |
| `elements` | `array<ParagraphElement>` | The content of the paragraph, broken down into its component parts. |
| `paragraphStyle` | `ParagraphStyle` | The style of this paragraph. |
| `positionedObjectIds` | `array<string>` | The IDs of the positioned objects tethered to this paragraph. |
| `suggestedBulletChanges` | `object` | The suggested changes to this paragraph's bullet. |
| `suggestedParagraphStyleChanges` | `object` | The suggested paragraph style changes to this paragraph, keyed by suggestion ID. |
| `suggestedPositionedObjectIds` | `object` | The IDs of the positioned objects suggested to be attached to this paragraph, keyed by suggestion... |

### `ParagraphBorder`

A border around a paragraph.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `OptionalColor` | The color of the border. |
| `dashStyle` | `string` | The dash style of the border. |
| `padding` | `Dimension` | The padding of the border. |
| `width` | `Dimension` | The width of the border. |

### `ParagraphElement`

A ParagraphElement describes content within a Paragraph.

| Property | Type | Description |
|----------|------|-------------|
| `autoText` | `AutoText` | An auto text paragraph element. |
| `columnBreak` | `ColumnBreak` | A column break paragraph element. |
| `dateElement` | `DateElement` | A paragraph element that represents a date. |
| `endIndex` | `integer` | The zero-base end index of this paragraph element, exclusive, in UTF-16 code units. |
| `equation` | `Equation` | An equation paragraph element. |
| `footnoteReference` | `FootnoteReference` | A footnote reference paragraph element. |
| `horizontalRule` | `HorizontalRule` | A horizontal rule paragraph element. |
| `inlineObjectElement` | `InlineObjectElement` | An inline object paragraph element. |
| `pageBreak` | `PageBreak` | A page break paragraph element. |
| `person` | `Person` | A paragraph element that links to a person or email address. |
| `richLink` | `RichLink` | A paragraph element that links to a Google resource (such as a file in Google Drive, a YouTube vi... |
| `startIndex` | `integer` | The zero-based start index of this paragraph element, in UTF-16 code units. |
| `textRun` | `TextRun` | A text run paragraph element. |

### `ParagraphStyle`

Styles that apply to a whole paragraph. Inherited paragraph styles are represented as unset fields in this message. A paragraph style's parent depends on where the paragraph style is defined: * The ParagraphStyle on a Paragraph inherits from the paragraph's corresponding named style type. * The ParagraphStyle on a named style inherits from the normal text named style. * The ParagraphStyle of the normal text named style inherits from the default paragraph style in the Docs editor. * The ParagraphStyle on a Paragraph element that's contained in a table may inherit its paragraph style from the table style. If the paragraph style does not inherit from a parent, unsetting fields will revert the style to a value matching the defaults in the Docs editor.

| Property | Type | Description |
|----------|------|-------------|
| `alignment` | `string` | The text alignment for this paragraph. |
| `avoidWidowAndOrphan` | `boolean` | Whether to avoid widows and orphans for the paragraph. If unset, the value is inherited from the ... |
| `borderBetween` | `ParagraphBorder` | The border between this paragraph and the next and previous paragraphs. If unset, the value is in... |
| `borderBottom` | `ParagraphBorder` | The border at the bottom of this paragraph. If unset, the value is inherited from the parent. The... |
| `borderLeft` | `ParagraphBorder` | The border to the left of this paragraph. If unset, the value is inherited from the parent. Parag... |
| `borderRight` | `ParagraphBorder` | The border to the right of this paragraph. If unset, the value is inherited from the parent. Para... |
| `borderTop` | `ParagraphBorder` | The border at the top of this paragraph. If unset, the value is inherited from the parent. The to... |
| `direction` | `string` | The text direction of this paragraph. If unset, the value defaults to LEFT_TO_RIGHT since paragra... |
| `headingId` | `string` | The heading ID of the paragraph. If empty, then this paragraph is not a heading. This property is... |
| `indentEnd` | `Dimension` | The amount of indentation for the paragraph on the side that corresponds to the end of the text, ... |
| `indentFirstLine` | `Dimension` | The amount of indentation for the first line of the paragraph. If unset, the value is inherited f... |
| `indentStart` | `Dimension` | The amount of indentation for the paragraph on the side that corresponds to the start of the text... |
| `keepLinesTogether` | `boolean` | Whether all lines of the paragraph should be laid out on the same page or column if possible. If ... |
| `keepWithNext` | `boolean` | Whether at least a part of this paragraph should be laid out on the same page or column as the ne... |
| `lineSpacing` | `number` | The amount of space between lines, as a percentage of normal, where normal is represented as 100.... |
| `namedStyleType` | `string` | The named style type of the paragraph. Since updating the named style type affects other properti... |
| `pageBreakBefore` | `boolean` | Whether the current paragraph should always start at the beginning of a page. If unset, the value... |
| `shading` | `Shading` | The shading of the paragraph. If unset, the value is inherited from the parent. |
| `spaceAbove` | `Dimension` | The amount of extra space above the paragraph. If unset, the value is inherited from the parent. |
| `spaceBelow` | `Dimension` | The amount of extra space below the paragraph. If unset, the value is inherited from the parent. |
| `spacingMode` | `string` | The spacing mode for the paragraph. |
| `tabStops` | `array<TabStop>` | A list of the tab stops for this paragraph. The list of tab stops is not inherited. This property... |

### `ParagraphStyleSuggestionState`

A mask that indicates which of the fields on the base ParagraphStyle have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `alignmentSuggested` | `boolean` | Indicates if there was a suggested change to alignment. |
| `avoidWidowAndOrphanSuggested` | `boolean` | Indicates if there was a suggested change to avoid_widow_and_orphan. |
| `borderBetweenSuggested` | `boolean` | Indicates if there was a suggested change to border_between. |
| `borderBottomSuggested` | `boolean` | Indicates if there was a suggested change to border_bottom. |
| `borderLeftSuggested` | `boolean` | Indicates if there was a suggested change to border_left. |
| `borderRightSuggested` | `boolean` | Indicates if there was a suggested change to border_right. |
| `borderTopSuggested` | `boolean` | Indicates if there was a suggested change to border_top. |
| `directionSuggested` | `boolean` | Indicates if there was a suggested change to direction. |
| `headingIdSuggested` | `boolean` | Indicates if there was a suggested change to heading_id. |
| `indentEndSuggested` | `boolean` | Indicates if there was a suggested change to indent_end. |
| `indentFirstLineSuggested` | `boolean` | Indicates if there was a suggested change to indent_first_line. |
| `indentStartSuggested` | `boolean` | Indicates if there was a suggested change to indent_start. |
| `keepLinesTogetherSuggested` | `boolean` | Indicates if there was a suggested change to keep_lines_together. |
| `keepWithNextSuggested` | `boolean` | Indicates if there was a suggested change to keep_with_next. |
| `lineSpacingSuggested` | `boolean` | Indicates if there was a suggested change to line_spacing. |
| `namedStyleTypeSuggested` | `boolean` | Indicates if there was a suggested change to named_style_type. |
| `pageBreakBeforeSuggested` | `boolean` | Indicates if there was a suggested change to page_break_before. |
| `shadingSuggestionState` | `ShadingSuggestionState` | A mask that indicates which of the fields in shading have been changed in this suggestion. |
| `spaceAboveSuggested` | `boolean` | Indicates if there was a suggested change to space_above. |
| `spaceBelowSuggested` | `boolean` | Indicates if there was a suggested change to space_below. |
| `spacingModeSuggested` | `boolean` | Indicates if there was a suggested change to spacing_mode. |

### `Person`

A person or email address mentioned in a document. These mentions behave as a single, immutable element containing the person's name or email address.

| Property | Type | Description |
|----------|------|-------------|
| `personId` | `string` | Output only. The unique ID of this link. |
| `personProperties` | `PersonProperties` | Output only. The properties of this Person. This field is always present. |
| `suggestedDeletionIds` | `array<string>` | IDs for suggestions that remove this person link from the document. A Person might have multiple ... |
| `suggestedInsertionIds` | `array<string>` | IDs for suggestions that insert this person link into the document. A Person might have multiple ... |
| `suggestedTextStyleChanges` | `object` | The suggested text style changes to this Person, keyed by suggestion ID. |
| `textStyle` | `TextStyle` | The text style of this Person. |

### `PersonProperties`

Properties specific to a linked Person.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email address linked to this Person. This field is always present. |
| `name` | `string` | The name of the person if it's displayed in the link text instead of the person's email address. |

### `PinTableHeaderRowsRequest`

Updates the number of pinned table header rows in a table.

| Property | Type | Description |
|----------|------|-------------|
| `pinnedHeaderRowsCount` | `integer` | The number of table rows to pin, where 0 implies that all rows are unpinned. |
| `tableStartLocation` | `Location` | The location where the table starts in the document. |

### `PositionedObject`

An object that's tethered to a Paragraph and positioned relative to the beginning of the paragraph. A PositionedObject contains an EmbeddedObject such as an image.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | The ID of this positioned object. |
| `positionedObjectProperties` | `PositionedObjectProperties` | The properties of this positioned object. |
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionId` | `string` | The suggested insertion ID. If empty, then this is not a suggested insertion. |
| `suggestedPositionedObjectPropertiesChanges` | `object` | The suggested changes to the positioned object properties, keyed by suggestion ID. |

### `PositionedObjectPositioning`

The positioning of a PositionedObject. The positioned object is positioned relative to the beginning of the Paragraph it's tethered to.

| Property | Type | Description |
|----------|------|-------------|
| `layout` | `string` | The layout of this positioned object. |
| `leftOffset` | `Dimension` | The offset of the left edge of the positioned object relative to the beginning of the Paragraph i... |
| `topOffset` | `Dimension` | The offset of the top edge of the positioned object relative to the beginning of the Paragraph it... |

### `PositionedObjectPositioningSuggestionState`

A mask that indicates which of the fields on the base PositionedObjectPositioning have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `layoutSuggested` | `boolean` | Indicates if there was a suggested change to layout. |
| `leftOffsetSuggested` | `boolean` | Indicates if there was a suggested change to left_offset. |
| `topOffsetSuggested` | `boolean` | Indicates if there was a suggested change to top_offset. |

### `PositionedObjectProperties`

Properties of a PositionedObject.

| Property | Type | Description |
|----------|------|-------------|
| `embeddedObject` | `EmbeddedObject` | The embedded object of this positioned object. |
| `positioning` | `PositionedObjectPositioning` | The positioning of this positioned object relative to the newline of the Paragraph that reference... |

### `PositionedObjectPropertiesSuggestionState`

A mask that indicates which of the fields on the base PositionedObjectProperties have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `embeddedObjectSuggestionState` | `EmbeddedObjectSuggestionState` | A mask that indicates which of the fields in embedded_object have been changed in this suggestion. |
| `positioningSuggestionState` | `PositionedObjectPositioningSuggestionState` | A mask that indicates which of the fields in positioning have been changed in this suggestion. |

### `Range`

Specifies a contiguous range of text.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `integer` | The zero-based end index of this range, exclusive, in UTF-16 code units. In all current uses, an ... |
| `segmentId` | `string` | The ID of the header, footer, or footnote that this range is contained in. An empty segment ID si... |
| `startIndex` | `integer` | The zero-based start index of this range, in UTF-16 code units. In all current uses, a start inde... |
| `tabId` | `string` | The tab that contains this range. When omitted, the request applies to the first tab. In a docume... |

### `ReplaceAllTextRequest`

Replaces all instances of text matching a criteria with replace text.

| Property | Type | Description |
|----------|------|-------------|
| `containsText` | `SubstringMatchCriteria` | Finds text in the document matching this substring. |
| `replaceText` | `string` | The text that will replace the matched text. |
| `tabsCriteria` | `TabsCriteria` | Optional. The criteria used to specify in which tabs the replacement occurs. When omitted, the re... |

### `ReplaceAllTextResponse`

The result of replacing text.

| Property | Type | Description |
|----------|------|-------------|
| `occurrencesChanged` | `integer` | The number of occurrences changed by replacing all text. |

### `ReplaceImageRequest`

Replaces an existing image with a new image. Replacing an image removes some image effects from the existing image in order to mirror the behavior of the Docs editor.

| Property | Type | Description |
|----------|------|-------------|
| `imageObjectId` | `string` | The ID of the existing image that will be replaced. The ID can be retrieved from the response of ... |
| `imageReplaceMethod` | `string` | The replacement method. |
| `tabId` | `string` | The tab that the image to be replaced is in. When omitted, the request is applied to the first ta... |
| `uri` | `string` | The URI of the new image. The image is fetched once at insertion time and a copy is stored for di... |

### `ReplaceNamedRangeContentRequest`

Replaces the contents of the specified NamedRange or NamedRanges with the given replacement content. Note that an individual NamedRange may consist of multiple discontinuous ranges. In this case, only the content in the first range will be replaced. The other ranges and their content will be deleted. In cases where replacing or deleting any ranges would result in an invalid document structure, a 400 bad request error is returned.

| Property | Type | Description |
|----------|------|-------------|
| `namedRangeId` | `string` | The ID of the named range whose content will be replaced. If there is no named range with the giv... |
| `namedRangeName` | `string` | The name of the NamedRanges whose content will be replaced. If there are multiple named ranges wi... |
| `tabsCriteria` | `TabsCriteria` | Optional. The criteria used to specify in which tabs the replacement occurs. When omitted, the re... |
| `text` | `string` | Replaces the content of the specified named range(s) with the given text. |

### `Request`

A single update to apply to a document.

| Property | Type | Description |
|----------|------|-------------|
| `addDocumentTab` | `AddDocumentTabRequest` | Adds a document tab. |
| `createFooter` | `CreateFooterRequest` | Creates a footer. |
| `createFootnote` | `CreateFootnoteRequest` | Creates a footnote. |
| `createHeader` | `CreateHeaderRequest` | Creates a header. |
| `createNamedRange` | `CreateNamedRangeRequest` | Creates a named range. |
| `createParagraphBullets` | `CreateParagraphBulletsRequest` | Creates bullets for paragraphs. |
| `deleteContentRange` | `DeleteContentRangeRequest` | Deletes content from the document. |
| `deleteFooter` | `DeleteFooterRequest` | Deletes a footer from the document. |
| `deleteHeader` | `DeleteHeaderRequest` | Deletes a header from the document. |
| `deleteNamedRange` | `DeleteNamedRangeRequest` | Deletes a named range. |
| `deleteParagraphBullets` | `DeleteParagraphBulletsRequest` | Deletes bullets from paragraphs. |
| `deletePositionedObject` | `DeletePositionedObjectRequest` | Deletes a positioned object from the document. |
| `deleteTab` | `DeleteTabRequest` | Deletes a document tab. |
| `deleteTableColumn` | `DeleteTableColumnRequest` | Deletes a column from a table. |
| `deleteTableRow` | `DeleteTableRowRequest` | Deletes a row from a table. |
| `insertDate` | `InsertDateRequest` | Inserts a date. |
| `insertInlineImage` | `InsertInlineImageRequest` | Inserts an inline image at the specified location. |
| `insertPageBreak` | `InsertPageBreakRequest` | Inserts a page break at the specified location. |
| `insertPerson` | `InsertPersonRequest` | Inserts a person mention. |
| `insertSectionBreak` | `InsertSectionBreakRequest` | Inserts a section break at the specified location. |
| `insertTable` | `InsertTableRequest` | Inserts a table at the specified location. |
| `insertTableColumn` | `InsertTableColumnRequest` | Inserts an empty column into a table. |
| `insertTableRow` | `InsertTableRowRequest` | Inserts an empty row into a table. |
| `insertText` | `InsertTextRequest` | Inserts text at the specified location. |
| `mergeTableCells` | `MergeTableCellsRequest` | Merges cells in a table. |
| `pinTableHeaderRows` | `PinTableHeaderRowsRequest` | Updates the number of pinned header rows in a table. |
| `replaceAllText` | `ReplaceAllTextRequest` | Replaces all instances of the specified text. |
| `replaceImage` | `ReplaceImageRequest` | Replaces an image in the document. |
| `replaceNamedRangeContent` | `ReplaceNamedRangeContentRequest` | Replaces the content in a named range. |
| `unmergeTableCells` | `UnmergeTableCellsRequest` | Unmerges cells in a table. |
| `updateDocumentStyle` | `UpdateDocumentStyleRequest` | Updates the style of the document. |
| `updateDocumentTabProperties` | `UpdateDocumentTabPropertiesRequest` | Updates the properties of a document tab. |
| `updateParagraphStyle` | `UpdateParagraphStyleRequest` | Updates the paragraph style at the specified range. |
| `updateSectionStyle` | `UpdateSectionStyleRequest` | Updates the section style of the specified range. |
| `updateTableCellStyle` | `UpdateTableCellStyleRequest` | Updates the style of table cells. |
| `updateTableColumnProperties` | `UpdateTableColumnPropertiesRequest` | Updates the properties of columns in a table. |
| `updateTableRowStyle` | `UpdateTableRowStyleRequest` | Updates the row style in a table. |
| `updateTextStyle` | `UpdateTextStyleRequest` | Updates the text style at the specified range. |

### `Response`

A single response from an update.

| Property | Type | Description |
|----------|------|-------------|
| `addDocumentTab` | `AddDocumentTabResponse` | The result of adding a document tab. |
| `createFooter` | `CreateFooterResponse` | The result of creating a footer. |
| `createFootnote` | `CreateFootnoteResponse` | The result of creating a footnote. |
| `createHeader` | `CreateHeaderResponse` | The result of creating a header. |
| `createNamedRange` | `CreateNamedRangeResponse` | The result of creating a named range. |
| `insertInlineImage` | `InsertInlineImageResponse` | The result of inserting an inline image. |
| `insertInlineSheetsChart` | `InsertInlineSheetsChartResponse` | The result of inserting an inline Google Sheets chart. |
| `replaceAllText` | `ReplaceAllTextResponse` | The result of replacing text. |

### `RgbColor`

An RGB color.

| Property | Type | Description |
|----------|------|-------------|
| `blue` | `number` | The blue component of the color, from 0.0 to 1.0. |
| `green` | `number` | The green component of the color, from 0.0 to 1.0. |
| `red` | `number` | The red component of the color, from 0.0 to 1.0. |

### `RichLink`

A link to a Google resource (such as a file in Drive, a YouTube video, or a Calendar event).

| Property | Type | Description |
|----------|------|-------------|
| `richLinkId` | `string` | Output only. The ID of this link. |
| `richLinkProperties` | `RichLinkProperties` | Output only. The properties of this RichLink. This field is always present. |
| `suggestedDeletionIds` | `array<string>` | IDs for suggestions that remove this link from the document. A RichLink might have multiple delet... |
| `suggestedInsertionIds` | `array<string>` | IDs for suggestions that insert this link into the document. A RichLink might have multiple inser... |
| `suggestedTextStyleChanges` | `object` | The suggested text style changes to this RichLink, keyed by suggestion ID. |
| `textStyle` | `TextStyle` | The text style of this RichLink. |

### `RichLinkProperties`

Properties specific to a RichLink.

| Property | Type | Description |
|----------|------|-------------|
| `mimeType` | `string` | The [MIME type](https://developers.google.com/drive/api/v3/mime-types) of the RichLink, if there'... |
| `title` | `string` | The title of the RichLink as displayed in the link. This title matches the title of the linked re... |
| `uri` | `string` | The URI to the RichLink. This is always present. |

### `SectionBreak`

A StructuralElement representing a section break. A section is a range of content that has the same SectionStyle. A section break represents the start of a new section, and the section style applies to the section after the section break. The document body always begins with a section break.

| Property | Type | Description |
|----------|------|-------------|
| `sectionStyle` | `SectionStyle` | The style of the section after this section break. |
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionIds` | `array<string>` | The suggested insertion IDs. A SectionBreak may have multiple insertion IDs if it's a nested sugg... |

### `SectionColumnProperties`

Properties that apply to a section's column.

| Property | Type | Description |
|----------|------|-------------|
| `paddingEnd` | `Dimension` | The padding at the end of the column. |
| `width` | `Dimension` | Output only. The width of the column. |

### `SectionStyle`

The styling that applies to a section.

| Property | Type | Description |
|----------|------|-------------|
| `columnProperties` | `array<SectionColumnProperties>` | The section's columns properties. If empty, the section contains one column with the default prop... |
| `columnSeparatorStyle` | `string` | The style of column separators. This style can be set even when there's one column in the section... |
| `contentDirection` | `string` | The content direction of this section. If unset, the value defaults to LEFT_TO_RIGHT. When updati... |
| `defaultFooterId` | `string` | The ID of the default footer. If unset, the value inherits from the previous SectionBreak's Secti... |
| `defaultHeaderId` | `string` | The ID of the default header. If unset, the value inherits from the previous SectionBreak's Secti... |
| `evenPageFooterId` | `string` | The ID of the footer used only for even pages. If the value of DocumentStyle's use_even_page_head... |
| `evenPageHeaderId` | `string` | The ID of the header used only for even pages. If the value of DocumentStyle's use_even_page_head... |
| `firstPageFooterId` | `string` | The ID of the footer used only for the first page of the section. If use_first_page_header_footer... |
| `firstPageHeaderId` | `string` | The ID of the header used only for the first page of the section. If use_first_page_header_footer... |
| `flipPageOrientation` | `boolean` | Optional. Indicates whether to flip the dimensions of DocumentStyle's page_size for this section,... |
| `marginBottom` | `Dimension` | The bottom page margin of the section. If unset, the value defaults to margin_bottom from Documen... |
| `marginFooter` | `Dimension` | The footer margin of the section. If unset, the value defaults to margin_footer from DocumentStyl... |
| `marginHeader` | `Dimension` | The header margin of the section. If unset, the value defaults to margin_header from DocumentStyl... |
| `marginLeft` | `Dimension` | The left page margin of the section. If unset, the value defaults to margin_left from DocumentSty... |
| `marginRight` | `Dimension` | The right page margin of the section. If unset, the value defaults to margin_right from DocumentS... |
| `marginTop` | `Dimension` | The top page margin of the section. If unset, the value defaults to margin_top from DocumentStyle... |
| `pageNumberStart` | `integer` | The page number from which to start counting the number of pages for this section. If unset, page... |
| `sectionType` | `string` | Output only. The type of section. |
| `useFirstPageHeaderFooter` | `boolean` | Indicates whether to use the first page header / footer IDs for the first page of the section. If... |

### `Shading`

The shading of a paragraph.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColor` | `OptionalColor` | The background color of this paragraph shading. |

### `ShadingSuggestionState`

A mask that indicates which of the fields on the base Shading have been changed in this suggested change. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColorSuggested` | `boolean` | Indicates if there was a suggested change to the Shading. |

### `SheetsChartReference`

A reference to a linked chart embedded from Google Sheets.

| Property | Type | Description |
|----------|------|-------------|
| `chartId` | `integer` | The ID of the specific chart in the Google Sheets spreadsheet that's embedded. |
| `spreadsheetId` | `string` | The ID of the Google Sheets spreadsheet that contains the source chart. |

### `SheetsChartReferenceSuggestionState`

A mask that indicates which of the fields on the base SheetsChartReference have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `chartIdSuggested` | `boolean` | Indicates if there was a suggested change to chart_id. |
| `spreadsheetIdSuggested` | `boolean` | Indicates if there was a suggested change to spreadsheet_id. |

### `Size`

A width and height.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `Dimension` | The height of the object. |
| `width` | `Dimension` | The width of the object. |

### `SizeSuggestionState`

A mask that indicates which of the fields on the base Size have been changed in this suggestion. For any field set to true, the Size has a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `heightSuggested` | `boolean` | Indicates if there was a suggested change to height. |
| `widthSuggested` | `boolean` | Indicates if there was a suggested change to width. |

### `StructuralElement`

A StructuralElement describes content that provides structure to the document.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `integer` | The zero-based end index of this structural element, exclusive, in UTF-16 code units. |
| `paragraph` | `Paragraph` | A paragraph type of structural element. |
| `sectionBreak` | `SectionBreak` | A section break type of structural element. |
| `startIndex` | `integer` | The zero-based start index of this structural element, in UTF-16 code units. |
| `table` | `Table` | A table type of structural element. |
| `tableOfContents` | `TableOfContents` | A table of contents type of structural element. |

### `SubstringMatchCriteria`

A criteria that matches a specific string of text in the document.

| Property | Type | Description |
|----------|------|-------------|
| `matchCase` | `boolean` | Indicates whether the search should respect case: - `True`: the search is case sensitive. - `Fals... |
| `searchByRegex` | `boolean` | Optional. True if the find value should be treated as a regular expression. Any backslashes in th... |
| `text` | `string` | The text to search for in the document. |

### `SuggestedBullet`

A suggested change to a Bullet.

| Property | Type | Description |
|----------|------|-------------|
| `bullet` | `Bullet` | A Bullet that only includes the changes made in this suggestion. This can be used along with the ... |
| `bulletSuggestionState` | `BulletSuggestionState` | A mask that indicates which of the fields on the base Bullet have been changed in this suggestion. |

### `SuggestedDateElementProperties`

A suggested change to a DateElementProperties.

| Property | Type | Description |
|----------|------|-------------|
| `dateElementProperties` | `DateElementProperties` | DateElementProperties that only includes the changes made in this suggestion. This can be used al... |
| `dateElementPropertiesSuggestionState` | `DateElementPropertiesSuggestionState` | A mask that indicates which of the fields on the base DateElementProperties have been changed in ... |

### `SuggestedDocumentStyle`

A suggested change to the DocumentStyle.

| Property | Type | Description |
|----------|------|-------------|
| `documentStyle` | `DocumentStyle` | A DocumentStyle that only includes the changes made in this suggestion. This can be used along wi... |
| `documentStyleSuggestionState` | `DocumentStyleSuggestionState` | A mask that indicates which of the fields on the base DocumentStyle have been changed in this sug... |

### `SuggestedInlineObjectProperties`

A suggested change to InlineObjectProperties.

| Property | Type | Description |
|----------|------|-------------|
| `inlineObjectProperties` | `InlineObjectProperties` | An InlineObjectProperties that only includes the changes made in this suggestion. This can be use... |
| `inlineObjectPropertiesSuggestionState` | `InlineObjectPropertiesSuggestionState` | A mask that indicates which of the fields on the base InlineObjectProperties have been changed in... |

### `SuggestedListProperties`

A suggested change to ListProperties.

| Property | Type | Description |
|----------|------|-------------|
| `listProperties` | `ListProperties` | A ListProperties that only includes the changes made in this suggestion. This can be used along w... |
| `listPropertiesSuggestionState` | `ListPropertiesSuggestionState` | A mask that indicates which of the fields on the base ListProperties have been changed in this su... |

### `SuggestedNamedStyles`

A suggested change to the NamedStyles.

| Property | Type | Description |
|----------|------|-------------|
| `namedStyles` | `NamedStyles` | A NamedStyles that only includes the changes made in this suggestion. This can be used along with... |
| `namedStylesSuggestionState` | `NamedStylesSuggestionState` | A mask that indicates which of the fields on the base NamedStyles have been changed in this sugge... |

### `SuggestedParagraphStyle`

A suggested change to a ParagraphStyle.

| Property | Type | Description |
|----------|------|-------------|
| `paragraphStyle` | `ParagraphStyle` | A ParagraphStyle that only includes the changes made in this suggestion. This can be used along w... |
| `paragraphStyleSuggestionState` | `ParagraphStyleSuggestionState` | A mask that indicates which of the fields on the base ParagraphStyle have been changed in this su... |

### `SuggestedPositionedObjectProperties`

A suggested change to PositionedObjectProperties.

| Property | Type | Description |
|----------|------|-------------|
| `positionedObjectProperties` | `PositionedObjectProperties` | A PositionedObjectProperties that only includes the changes made in this suggestion. This can be ... |
| `positionedObjectPropertiesSuggestionState` | `PositionedObjectPropertiesSuggestionState` | A mask that indicates which of the fields on the base PositionedObjectProperties have been change... |

### `SuggestedTableCellStyle`

A suggested change to a TableCellStyle.

| Property | Type | Description |
|----------|------|-------------|
| `tableCellStyle` | `TableCellStyle` | A TableCellStyle that only includes the changes made in this suggestion. This can be used along w... |
| `tableCellStyleSuggestionState` | `TableCellStyleSuggestionState` | A mask that indicates which of the fields on the base TableCellStyle have been changed in this su... |

### `SuggestedTableRowStyle`

A suggested change to a TableRowStyle.

| Property | Type | Description |
|----------|------|-------------|
| `tableRowStyle` | `TableRowStyle` | A TableRowStyle that only includes the changes made in this suggestion. This can be used along wi... |
| `tableRowStyleSuggestionState` | `TableRowStyleSuggestionState` | A mask that indicates which of the fields on the base TableRowStyle have been changed in this sug... |

### `SuggestedTextStyle`

A suggested change to a TextStyle.

| Property | Type | Description |
|----------|------|-------------|
| `textStyle` | `TextStyle` | A TextStyle that only includes the changes made in this suggestion. This can be used along with t... |
| `textStyleSuggestionState` | `TextStyleSuggestionState` | A mask that indicates which of the fields on the base TextStyle have been changed in this suggest... |

### `Tab`

A tab in a document.

| Property | Type | Description |
|----------|------|-------------|
| `childTabs` | `array<Tab>` | The child tabs nested within this tab. |
| `documentTab` | `DocumentTab` | A tab with document contents, like text and images. |
| `tabProperties` | `TabProperties` | The properties of the tab, like ID and title. |

### `TabProperties`

Properties of a tab.

| Property | Type | Description |
|----------|------|-------------|
| `iconEmoji` | `string` | Optional. The emoji icon displayed with the tab. A valid emoji icon is represented by a non-empty... |
| `index` | `integer` | The zero-based index of the tab within the parent. |
| `nestingLevel` | `integer` | Output only. The depth of the tab within the document. Root-level tabs start at 0. |
| `parentTabId` | `string` | Optional. The ID of the parent tab. Empty when the current tab is a root-level tab, which means i... |
| `tabId` | `string` | The immutable ID of the tab. |
| `title` | `string` | The user-visible name of the tab. |

### `TabStop`

A tab stop within a paragraph.

| Property | Type | Description |
|----------|------|-------------|
| `alignment` | `string` | The alignment of this tab stop. If unset, the value defaults to START. |
| `offset` | `Dimension` | The offset between this tab stop and the start margin. |

### `Table`

A StructuralElement representing a table.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `integer` | Number of columns in the table. It's possible for a table to be non-rectangular, so some rows may... |
| `rows` | `integer` | Number of rows in the table. |
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionIds` | `array<string>` | The suggested insertion IDs. A Table may have multiple insertion IDs if it's a nested suggested c... |
| `tableRows` | `array<TableRow>` | The contents and style of each row. |
| `tableStyle` | `TableStyle` | The style of the table. |

### `TableCell`

The contents and style of a cell in a Table.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `array<StructuralElement>` | The content of the cell. |
| `endIndex` | `integer` | The zero-based end index of this cell, exclusive, in UTF-16 code units. |
| `startIndex` | `integer` | The zero-based start index of this cell, in UTF-16 code units. |
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionIds` | `array<string>` | The suggested insertion IDs. A TableCell may have multiple insertion IDs if it's a nested suggest... |
| `suggestedTableCellStyleChanges` | `object` | The suggested changes to the table cell style, keyed by suggestion ID. |
| `tableCellStyle` | `TableCellStyle` | The style of the cell. |

### `TableCellBorder`

A border around a table cell. Table cell borders cannot be transparent. To hide a table cell border, make its width 0.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `OptionalColor` | The color of the border. This color cannot be transparent. |
| `dashStyle` | `string` | The dash style of the border. |
| `width` | `Dimension` | The width of the border. |

### `TableCellLocation`

Location of a single cell within a table.

| Property | Type | Description |
|----------|------|-------------|
| `columnIndex` | `integer` | The zero-based column index. For example, the second column in the table has a column index of 1. |
| `rowIndex` | `integer` | The zero-based row index. For example, the second row in the table has a row index of 1. |
| `tableStartLocation` | `Location` | The location where the table starts in the document. |

### `TableCellStyle`

The style of a TableCell. Inherited table cell styles are represented as unset fields in this message. A table cell style can inherit from the table's style.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColor` | `OptionalColor` | The background color of the cell. |
| `borderBottom` | `TableCellBorder` | The bottom border of the cell. |
| `borderLeft` | `TableCellBorder` | The left border of the cell. |
| `borderRight` | `TableCellBorder` | The right border of the cell. |
| `borderTop` | `TableCellBorder` | The top border of the cell. |
| `columnSpan` | `integer` | The column span of the cell. This property is read-only. |
| `contentAlignment` | `string` | The alignment of the content in the table cell. The default alignment matches the alignment for n... |
| `paddingBottom` | `Dimension` | The bottom padding of the cell. |
| `paddingLeft` | `Dimension` | The left padding of the cell. |
| `paddingRight` | `Dimension` | The right padding of the cell. |
| `paddingTop` | `Dimension` | The top padding of the cell. |
| `rowSpan` | `integer` | The row span of the cell. This property is read-only. |

### `TableCellStyleSuggestionState`

A mask that indicates which of the fields on the base TableCellStyle have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColorSuggested` | `boolean` | Indicates if there was a suggested change to background_color. |
| `borderBottomSuggested` | `boolean` | Indicates if there was a suggested change to border_bottom. |
| `borderLeftSuggested` | `boolean` | Indicates if there was a suggested change to border_left. |
| `borderRightSuggested` | `boolean` | Indicates if there was a suggested change to border_right. |
| `borderTopSuggested` | `boolean` | Indicates if there was a suggested change to border_top. |
| `columnSpanSuggested` | `boolean` | Indicates if there was a suggested change to column_span. |
| `contentAlignmentSuggested` | `boolean` | Indicates if there was a suggested change to content_alignment. |
| `paddingBottomSuggested` | `boolean` | Indicates if there was a suggested change to padding_bottom. |
| `paddingLeftSuggested` | `boolean` | Indicates if there was a suggested change to padding_left. |
| `paddingRightSuggested` | `boolean` | Indicates if there was a suggested change to padding_right. |
| `paddingTopSuggested` | `boolean` | Indicates if there was a suggested change to padding_top. |
| `rowSpanSuggested` | `boolean` | Indicates if there was a suggested change to row_span. |

### `TableColumnProperties`

The properties of a column in a table.

| Property | Type | Description |
|----------|------|-------------|
| `width` | `Dimension` | The width of the column. Set when the column's `width_type` is FIXED_WIDTH. |
| `widthType` | `string` | The width type of the column. |

### `TableOfContents`

A StructuralElement representing a table of contents.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `array<StructuralElement>` | The content of the table of contents. |
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionIds` | `array<string>` | The suggested insertion IDs. A TableOfContents may have multiple insertion IDs if it is a nested ... |

### `TableRange`

A table range represents a reference to a subset of a table. It's important to note that the cells specified by a table range do not necessarily form a rectangle. For example, let's say we have a 3 x 3 table where all the cells of the last row are merged together. The table looks like this: [ ] A table range with table cell location = (table_start_location, row = 0, column = 0), row span = 3 and column span = 2 specifies the following cells: x x [ x x x ]

| Property | Type | Description |
|----------|------|-------------|
| `columnSpan` | `integer` | The column span of the table range. |
| `rowSpan` | `integer` | The row span of the table range. |
| `tableCellLocation` | `TableCellLocation` | The cell location where the table range starts. |

### `TableRow`

The contents and style of a row in a Table.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `integer` | The zero-based end index of this row, exclusive, in UTF-16 code units. |
| `startIndex` | `integer` | The zero-based start index of this row, in UTF-16 code units. |
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionIds` | `array<string>` | The suggested insertion IDs. A TableRow may have multiple insertion IDs if it's a nested suggeste... |
| `suggestedTableRowStyleChanges` | `object` | The suggested style changes to this row, keyed by suggestion ID. |
| `tableCells` | `array<TableCell>` | The contents and style of each cell in this row. It's possible for a table to be non-rectangular,... |
| `tableRowStyle` | `TableRowStyle` | The style of the table row. |

### `TableRowStyle`

Styles that apply to a table row.

| Property | Type | Description |
|----------|------|-------------|
| `minRowHeight` | `Dimension` | The minimum height of the row. The row will be rendered in the Docs editor at a height equal to o... |
| `preventOverflow` | `boolean` | Whether the row cannot overflow across page or column boundaries. |
| `tableHeader` | `boolean` | Whether the row is a table header. |

### `TableRowStyleSuggestionState`

A mask that indicates which of the fields on the base TableRowStyle have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `minRowHeightSuggested` | `boolean` | Indicates if there was a suggested change to min_row_height. |

### `TableStyle`

Styles that apply to a table.

| Property | Type | Description |
|----------|------|-------------|
| `tableColumnProperties` | `array<TableColumnProperties>` | The properties of each column. Note that in Docs, tables contain rows and rows contain cells, sim... |

### `TabsCriteria`

A criteria that specifies in which tabs a request executes.

| Property | Type | Description |
|----------|------|-------------|
| `tabIds` | `array<string>` | The list of tab IDs in which the request executes. |

### `TextRun`

A ParagraphElement that represents a run of text that all has the same styling.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The text of this run. Any non-text elements in the run are replaced with the Unicode character U+... |
| `suggestedDeletionIds` | `array<string>` | The suggested deletion IDs. If empty, then there are no suggested deletions of this content. |
| `suggestedInsertionIds` | `array<string>` | The suggested insertion IDs. A TextRun may have multiple insertion IDs if it's a nested suggested... |
| `suggestedTextStyleChanges` | `object` | The suggested text style changes to this run, keyed by suggestion ID. |
| `textStyle` | `TextStyle` | The text style of this run. |

### `TextStyle`

Represents the styling that can be applied to text. Inherited text styles are represented as unset fields in this message. A text style's parent depends on where the text style is defined: * The TextStyle of text in a Paragraph inherits from the paragraph's corresponding named style type. * The TextStyle on a named style inherits from the normal text named style. * The TextStyle of the normal text named style inherits from the default text style in the Docs editor. * The TextStyle on a Paragraph element that's contained in a table may inherit its text style from the table style. If the text style does not inherit from a parent, unsetting fields will revert the style to a value matching the defaults in the Docs editor.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColor` | `OptionalColor` | The background color of the text. If set, the color is either an RGB color or transparent, depend... |
| `baselineOffset` | `string` | The text's vertical offset from its normal position. Text with `SUPERSCRIPT` or `SUBSCRIPT` basel... |
| `bold` | `boolean` | Whether or not the text is rendered as bold. |
| `fontSize` | `Dimension` | The size of the text's font. |
| `foregroundColor` | `OptionalColor` | The foreground color of the text. If set, the color is either an RGB color or transparent, depend... |
| `italic` | `boolean` | Whether or not the text is italicized. |
| `link` | `Link` | The hyperlink destination of the text. If unset, there's no link. Links are not inherited from pa... |
| `smallCaps` | `boolean` | Whether or not the text is in small capital letters. |
| `strikethrough` | `boolean` | Whether or not the text is struck through. |
| `underline` | `boolean` | Whether or not the text is underlined. |
| `weightedFontFamily` | `WeightedFontFamily` | The font family and rendered weight of the text. If an update request specifies values for both `... |

### `TextStyleSuggestionState`

A mask that indicates which of the fields on the base TextStyle have been changed in this suggestion. For any field set to true, there's a new suggested value.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColorSuggested` | `boolean` | Indicates if there was a suggested change to background_color. |
| `baselineOffsetSuggested` | `boolean` | Indicates if there was a suggested change to baseline_offset. |
| `boldSuggested` | `boolean` | Indicates if there was a suggested change to bold. |
| `fontSizeSuggested` | `boolean` | Indicates if there was a suggested change to font_size. |
| `foregroundColorSuggested` | `boolean` | Indicates if there was a suggested change to foreground_color. |
| `italicSuggested` | `boolean` | Indicates if there was a suggested change to italic. |
| `linkSuggested` | `boolean` | Indicates if there was a suggested change to link. |
| `smallCapsSuggested` | `boolean` | Indicates if there was a suggested change to small_caps. |
| `strikethroughSuggested` | `boolean` | Indicates if there was a suggested change to strikethrough. |
| `underlineSuggested` | `boolean` | Indicates if there was a suggested change to underline. |
| `weightedFontFamilySuggested` | `boolean` | Indicates if there was a suggested change to weighted_font_family. |

### `UnmergeTableCellsRequest`

Unmerges cells in a Table.

| Property | Type | Description |
|----------|------|-------------|
| `tableRange` | `TableRange` | The table range specifying which cells of the table to unmerge. All merged cells in this range wi... |

### `UpdateDocumentStyleRequest`

Updates the DocumentStyle.

| Property | Type | Description |
|----------|------|-------------|
| `documentStyle` | `DocumentStyle` | The styles to set on the document. Certain document style changes may cause other changes in orde... |
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `document_style... |
| `tabId` | `string` | The tab that contains the style to update. When omitted, the request applies to the first tab. In... |

### `UpdateDocumentTabPropertiesRequest`

Update the properties of a document tab.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `tab_properties... |
| `tabProperties` | `TabProperties` | The tab properties to update. |

### `UpdateParagraphStyleRequest`

Update the styling of all paragraphs that overlap with the given range.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `paragraph_styl... |
| `paragraphStyle` | `ParagraphStyle` | The styles to set on the paragraphs. Certain paragraph style changes may cause other changes in o... |
| `range` | `Range` | The range overlapping the paragraphs to style. |

### `UpdateSectionStyleRequest`

Updates the SectionStyle.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `section_style`... |
| `range` | `Range` | The range overlapping the sections to style. Because section breaks can only be inserted inside t... |
| `sectionStyle` | `SectionStyle` | The styles to be set on the section. Certain section style changes may cause other changes in ord... |

### `UpdateTableCellStyleRequest`

Updates the style of a range of table cells.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `tableCellStyle... |
| `tableCellStyle` | `TableCellStyle` | The style to set on the table cells. When updating borders, if a cell shares a border with an adj... |
| `tableRange` | `TableRange` | The table range representing the subset of the table to which the updates are applied. |
| `tableStartLocation` | `Location` | The location where the table starts in the document. When specified, the updates are applied to a... |

### `UpdateTableColumnPropertiesRequest`

Updates the TableColumnProperties of columns in a table.

| Property | Type | Description |
|----------|------|-------------|
| `columnIndices` | `array<integer>` | The list of zero-based column indices whose property should be updated. If no indices are specifi... |
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `tableColumnPro... |
| `tableColumnProperties` | `TableColumnProperties` | The table column properties to update. If the value of `table_column_properties#width` is less th... |
| `tableStartLocation` | `Location` | The location where the table starts in the document. |

### `UpdateTableRowStyleRequest`

Updates the TableRowStyle of rows in a table.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `tableRowStyle`... |
| `rowIndices` | `array<integer>` | The list of zero-based row indices whose style should be updated. If no indices are specified, al... |
| `tableRowStyle` | `TableRowStyle` | The styles to be set on the rows. |
| `tableStartLocation` | `Location` | The location where the table starts in the document. |

### `UpdateTextStyleRequest`

Update the styling of text.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `string` | The fields that should be updated. At least one field must be specified. The root `text_style` is... |
| `range` | `Range` | The range of text to style. The range may be extended to include adjacent newlines. If the range ... |
| `textStyle` | `TextStyle` | The styles to set on the text. If the value for a particular style matches that of the parent, th... |

### `WeightedFontFamily`

Represents a font family and weight of text.

| Property | Type | Description |
|----------|------|-------------|
| `fontFamily` | `string` | The font family of the text. The font family can be any font from the Font menu in Docs or from [... |
| `weight` | `integer` | The weight of the font. This field can have any value that's a multiple of `100` between `100` an... |

### `WriteControl`

Provides control over how write requests are executed.

| Property | Type | Description |
|----------|------|-------------|
| `requiredRevisionId` | `string` | The optional revision ID of the document the write request is applied to. If this is not the late... |
| `targetRevisionId` | `string` | The optional target revision ID of the document the write request is applied to. If collaborator ... |

