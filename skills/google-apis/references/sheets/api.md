# Google Sheets API - API Reference

**Version**: `v4` | **Base URL**: `https://sheets.googleapis.com/v4/spreadsheets/`

## Methods

### spreadsheets

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `spreadsheets.create` | POST | `v4/spreadsheets` | Creates a new spreadsheet, optionally with sheets, properties, and data |
| `spreadsheets.get` | GET | `v4/spreadsheets/{spreadsheetId}` | Returns the spreadsheet with the given ID, including metadata, sheets, and named ranges |
| `spreadsheets.getByDataFilter` | POST | `v4/spreadsheets/{spreadsheetId}:getByDataFilter` | Returns the spreadsheet identified by ID, filtered by DataFilter |
| `spreadsheets.batchUpdate` | POST | `v4/spreadsheets/{spreadsheetId}:batchUpdate` | Applies one or more updates (formatting, structure, charts, etc.) to the spreadsheet |

### spreadsheets.values

These are the primary methods for reading and writing cell values.

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `spreadsheets.values.get` | GET | `v4/spreadsheets/{spreadsheetId}/values/{range}` | Read a single range of values |
| `spreadsheets.values.batchGet` | GET | `v4/spreadsheets/{spreadsheetId}/values:batchGet` | Read multiple ranges of values in one request |
| `spreadsheets.values.update` | PUT | `v4/spreadsheets/{spreadsheetId}/values/{range}` | Write values to a single range |
| `spreadsheets.values.batchUpdate` | POST | `v4/spreadsheets/{spreadsheetId}/values:batchUpdate` | Write values to multiple ranges in one request |
| `spreadsheets.values.append` | POST | `v4/spreadsheets/{spreadsheetId}/values/{range}:append` | Append values after the last row of a table in the range |
| `spreadsheets.values.clear` | POST | `v4/spreadsheets/{spreadsheetId}/values/{range}:clear` | Clear values from a range (formatting is preserved) |
| `spreadsheets.values.batchClear` | POST | `v4/spreadsheets/{spreadsheetId}/values:batchClear` | Clear values from multiple ranges in one request |
| `spreadsheets.values.batchGetByDataFilter` | POST | `v4/spreadsheets/{spreadsheetId}/values:batchGetByDataFilter` | Read multiple ranges filtered by DataFilter |
| `spreadsheets.values.batchClearByDataFilter` | POST | `v4/spreadsheets/{spreadsheetId}/values:batchClearByDataFilter` | Clear multiple ranges filtered by DataFilter |
| `spreadsheets.values.batchUpdateByDataFilter` | POST | `v4/spreadsheets/{spreadsheetId}/values:batchUpdateByDataFilter` | Write to multiple ranges filtered by DataFilter |

### spreadsheets.sheets

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `spreadsheets.sheets.copyTo` | POST | `v4/spreadsheets/{spreadsheetId}/sheets/{sheetId}:copyTo` | Copies a sheet to another spreadsheet |

### spreadsheets.developerMetadata

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `spreadsheets.developerMetadata.get` | GET | `v4/spreadsheets/{spreadsheetId}/developerMetadata/{metadataId}` | Get developer metadata by ID |
| `spreadsheets.developerMetadata.search` | POST | `v4/spreadsheets/{spreadsheetId}/developerMetadata:search` | Search for developer metadata matching criteria |

## Key Parameters

### Reading Values

| Parameter | Type | Description |
|-----------|------|-------------|
| `spreadsheetId` | string | **Required**. The ID of the spreadsheet |
| `range` | string | **Required**. The A1 notation of the range to read (e.g., `Sheet1!A1:D10`) |
| `majorDimension` | enum | `ROWS` (default) or `COLUMNS`. Controls whether arrays represent rows or columns |
| `valueRenderOption` | enum | `FORMATTED_VALUE` (default), `UNFORMATTED_VALUE`, or `FORMULA` |
| `dateTimeRenderOption` | enum | `SERIAL_NUMBER` (default) or `FORMATTED_STRING`. Only used when `valueRenderOption` is not `FORMATTED_VALUE` |

### Writing Values

| Parameter | Type | Description |
|-----------|------|-------------|
| `spreadsheetId` | string | **Required**. The ID of the spreadsheet |
| `range` | string | **Required**. The A1 notation of the range to write |
| `valueInputOption` | enum | **Required**. `RAW` (literal strings) or `USER_ENTERED` (parsed like UI input) |
| `includeValuesInResponse` | boolean | If true, the response includes the written values |
| `responseValueRenderOption` | enum | How values in the response should be rendered |
| `responseDateTimeRenderOption` | enum | How dates in the response should be rendered |
| `insertDataOption` | enum | For `append` only: `OVERWRITE` (default) or `INSERT_ROWS` |

### Batch Update (Formatting/Structure)

The `spreadsheets.batchUpdate` method accepts a `requests` array. Common request types:

| Request Type | Description |
|--------------|-------------|
| `updateCells` | Update cell data (values, formatting) in a range |
| `repeatCell` | Apply the same cell properties to an entire range |
| `appendCells` | Append rows of data to a sheet |
| `insertRange` | Insert new cells, shifting existing cells |
| `deleteRange` | Delete a range of cells |
| `mergeCells` | Merge a range of cells |
| `unmergeCells` | Unmerge previously merged cells |
| `updateSheetProperties` | Update sheet properties (name, frozen rows/cols, tab color) |
| `addSheet` | Add a new sheet to the spreadsheet |
| `deleteSheet` | Delete a sheet from the spreadsheet |
| `duplicateSheet` | Duplicate a sheet |
| `addConditionalFormatRule` | Add a conditional formatting rule |
| `updateConditionalFormatRule` | Update an existing conditional formatting rule |
| `deleteConditionalFormatRule` | Delete a conditional formatting rule |
| `setDataValidation` | Set data validation on a range |
| `addChart` | Add a chart to a sheet |
| `updateChartSpec` | Update an existing chart's specification |
| `deleteEmbeddedObject` | Delete a chart or other embedded object |
| `sortRange` | Sort data in a range |
| `autoResizeDimensions` | Auto-resize columns or rows to fit content |
| `addProtectedRange` | Protect a range from editing |
| `updateProtectedRange` | Update a protected range |
| `deleteProtectedRange` | Remove protection from a range |
| `addNamedRange` | Create a named range |
| `updateNamedRange` | Update a named range |
| `deleteNamedRange` | Delete a named range |
| `addFilterView` | Create a filter view |
| `updateFilterView` | Update a filter view |
| `deleteFilterView` | Delete a filter view |
| `setBasicFilter` | Set a basic filter on a sheet |
| `clearBasicFilter` | Clear the basic filter on a sheet |
| `createDeveloperMetadata` | Add developer metadata |
| `updateDeveloperMetadata` | Update developer metadata |
| `deleteDeveloperMetadata` | Delete developer metadata |
| `updateBorders` | Update cell borders |
| `updateDimensionProperties` | Update row/column properties (size, hidden) |
| `insertDimension` | Insert rows or columns |
| `deleteDimension` | Delete rows or columns |
| `moveDimension` | Move rows or columns |
| `appendDimension` | Append rows or columns at the end |
| `autoFill` | Auto-fill a range based on adjacent data |
| `cutPaste` | Cut and paste a range |
| `copyPaste` | Copy and paste a range |
| `findReplace` | Find and replace data |
| `updateSpreadsheetProperties` | Update spreadsheet-level properties (title, locale, etc.) |
| `textToColumns` | Split text to columns |
| `updateEmbeddedObjectPosition` | Move or resize an embedded object |

## Response Types

### ValueRange

Returned by `values.get` and `values.update`:

```json
{
  "range": "Sheet1!A1:D5",
  "majorDimension": "ROWS",
  "values": [
    ["Name", "Age", "City", "Score"],
    ["Alice", "30", "NYC", "95"],
    ["Bob", "25", "LA", "87"]
  ]
}
```

### BatchGetValuesResponse

Returned by `values.batchGet`:

```json
{
  "spreadsheetId": "abc123",
  "valueRanges": [
    { "range": "Sheet1!A1:B2", "majorDimension": "ROWS", "values": [["a", "b"], ["c", "d"]] },
    { "range": "Sheet2!A1:A3", "majorDimension": "ROWS", "values": [["x"], ["y"], ["z"]] }
  ]
}
```

### UpdateValuesResponse

Returned by `values.update`:

```json
{
  "spreadsheetId": "abc123",
  "updatedRange": "Sheet1!A1:B2",
  "updatedRows": 2,
  "updatedColumns": 2,
  "updatedCells": 4
}
```

### AppendValuesResponse

Returned by `values.append`:

```json
{
  "spreadsheetId": "abc123",
  "tableRange": "Sheet1!A1:D5",
  "updates": {
    "updatedRange": "Sheet1!A6:D7",
    "updatedRows": 2,
    "updatedColumns": 4,
    "updatedCells": 8
  }
}
```
