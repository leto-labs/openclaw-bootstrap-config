# Google Sheets API - Common Patterns

## Reading Values

### Read a Single Range

```typescript
import { google } from 'googleapis';

const sheets = google.sheets({ version: 'v4', auth });

const res = await sheets.spreadsheets.values.get({
  spreadsheetId: 'SPREADSHEET_ID',
  range: 'Sheet1!A1:D10',
});
const rows = res.data.values; // 2D array: [['Name', 'Age'], ['Alice', '30'], ...]
```

### Read Multiple Ranges (Batch)

Use `batchGet` to read several non-contiguous ranges in one request. This counts as a single read request against your quota:

```typescript
const res = await sheets.spreadsheets.values.batchGet({
  spreadsheetId: 'SPREADSHEET_ID',
  ranges: ['Sheet1!A1:B10', 'Sheet1!D1:D10', 'Sheet2!A1:C5'],
});
// res.data.valueRanges is an array of ValueRange objects
for (const vr of res.data.valueRanges) {
  console.log(vr.range, vr.values);
}
```

### Read with Formatting Options

```typescript
const res = await sheets.spreadsheets.values.get({
  spreadsheetId: 'SPREADSHEET_ID',
  range: 'Sheet1!A1:D10',
  valueRenderOption: 'UNFORMATTED_VALUE',   // Get raw numbers instead of formatted strings
  dateTimeRenderOption: 'FORMATTED_STRING',  // Get dates as human-readable strings
});
```

**ValueRenderOption choices**:
| Option | Behavior |
|--------|----------|
| `FORMATTED_VALUE` (default) | Values as displayed in the UI (e.g., `"$1,234.56"`) |
| `UNFORMATTED_VALUE` | Raw values (e.g., `1234.56`) |
| `FORMULA` | Formulas if present, otherwise the value (e.g., `"=SUM(A1:A10)"`) |

## Writing Values

### Write to a Single Range

```typescript
await sheets.spreadsheets.values.update({
  spreadsheetId: 'SPREADSHEET_ID',
  range: 'Sheet1!A1:B2',
  valueInputOption: 'USER_ENTERED',   // Parse formulas and dates like the UI
  requestBody: {
    values: [
      ['Name', 'Score'],
      ['Alice', 95],
    ],
  },
});
```

**ValueInputOption choices**:
| Option | Behavior |
|--------|----------|
| `RAW` | Input is not parsed -- `"=1+2"` is stored as literal string `=1+2` |
| `USER_ENTERED` | Input is parsed as if typed in the UI -- `"=1+2"` becomes a formula, `"Mar 1 2016"` becomes a date |

### Write Multiple Ranges (Batch)

```typescript
await sheets.spreadsheets.values.batchUpdate({
  spreadsheetId: 'SPREADSHEET_ID',
  requestBody: {
    valueInputOption: 'USER_ENTERED',
    data: [
      { range: 'Sheet1!A1:B2', values: [['Name', 'Score'], ['Alice', 95]] },
      { range: 'Sheet1!D1:E2', values: [['City', 'Country'], ['NYC', 'US']] },
      { range: 'Sheet2!A1',    values: [['Summary Report']] },
    ],
  },
});
```

### Append Rows to a Table

`append` finds the last row of the table in the given range and adds rows below it:

```typescript
await sheets.spreadsheets.values.append({
  spreadsheetId: 'SPREADSHEET_ID',
  range: 'Sheet1!A:E',           // The range containing the table
  valueInputOption: 'USER_ENTERED',
  insertDataOption: 'INSERT_ROWS', // Insert new rows instead of overwriting
  requestBody: {
    values: [
      ['Bob', 28, 'bob@example.com', 'NYC', '2025-01-15'],
      ['Carol', 34, 'carol@example.com', 'LA', '2025-01-16'],
    ],
  },
});
```

**Important**: The `range` parameter in `append` is used to locate the table, not to specify where data goes. Sheets finds the last row of data in that range and appends below it.

## Formatting Cells (batchUpdate)

Cell formatting uses `spreadsheets.batchUpdate` (not `spreadsheets.values`). This is the general-purpose method for structural and formatting changes.

### Bold Header Row

```typescript
await sheets.spreadsheets.batchUpdate({
  spreadsheetId: 'SPREADSHEET_ID',
  requestBody: {
    requests: [
      {
        repeatCell: {
          range: {
            sheetId: 0,       // Numeric sheet ID (not sheet name)
            startRowIndex: 0,
            endRowIndex: 1,   // First row only
          },
          cell: {
            userEnteredFormat: {
              textFormat: { bold: true },
              backgroundColor: { red: 0.9, green: 0.9, blue: 0.9 },
            },
          },
          fields: 'userEnteredFormat(textFormat,backgroundColor)',
        },
      },
    ],
  },
});
```

### Conditional Formatting

```typescript
await sheets.spreadsheets.batchUpdate({
  spreadsheetId: 'SPREADSHEET_ID',
  requestBody: {
    requests: [
      {
        addConditionalFormatRule: {
          rule: {
            ranges: [{ sheetId: 0, startRowIndex: 1, endRowIndex: 100, startColumnIndex: 1, endColumnIndex: 2 }],
            booleanRule: {
              condition: {
                type: 'NUMBER_LESS',
                values: [{ userEnteredValue: '50' }],
              },
              format: {
                backgroundColor: { red: 1, green: 0.8, blue: 0.8 },
                textFormat: { foregroundColor: { red: 0.8, green: 0, blue: 0 } },
              },
            },
          },
          index: 0,
        },
      },
    ],
  },
});
```

### Data Validation (Dropdown)

```typescript
await sheets.spreadsheets.batchUpdate({
  spreadsheetId: 'SPREADSHEET_ID',
  requestBody: {
    requests: [
      {
        setDataValidation: {
          range: { sheetId: 0, startRowIndex: 1, endRowIndex: 100, startColumnIndex: 2, endColumnIndex: 3 },
          rule: {
            condition: {
              type: 'ONE_OF_LIST',
              values: [
                { userEnteredValue: 'Active' },
                { userEnteredValue: 'Inactive' },
                { userEnteredValue: 'Pending' },
              ],
            },
            showCustomUi: true,
            strict: true,
          },
        },
      },
    ],
  },
});
```

### Number Formatting

```typescript
await sheets.spreadsheets.batchUpdate({
  spreadsheetId: 'SPREADSHEET_ID',
  requestBody: {
    requests: [
      {
        repeatCell: {
          range: { sheetId: 0, startRowIndex: 1, endRowIndex: 100, startColumnIndex: 3, endColumnIndex: 4 },
          cell: {
            userEnteredFormat: {
              numberFormat: { type: 'CURRENCY', pattern: '$#,##0.00' },
            },
          },
          fields: 'userEnteredFormat.numberFormat',
        },
      },
    ],
  },
});
```

## Using Formulas

Write formulas the same way you write values, using `USER_ENTERED`:

```typescript
await sheets.spreadsheets.values.update({
  spreadsheetId: 'SPREADSHEET_ID',
  range: 'Sheet1!F1:F3',
  valueInputOption: 'USER_ENTERED',
  requestBody: {
    values: [
      ['=SUM(B2:B100)'],
      ['=AVERAGE(B2:B100)'],
      ['=COUNTIF(C2:C100,"Active")'],
    ],
  },
});
```

## Creating Charts

```typescript
await sheets.spreadsheets.batchUpdate({
  spreadsheetId: 'SPREADSHEET_ID',
  requestBody: {
    requests: [
      {
        addChart: {
          chart: {
            position: {
              overlayPosition: {
                anchorCell: { sheetId: 0, rowIndex: 0, columnIndex: 5 },
                widthPixels: 600,
                heightPixels: 400,
              },
            },
            spec: {
              title: 'Sales by Month',
              basicChart: {
                chartType: 'LINE',
                legendPosition: 'BOTTOM_LEGEND',
                axis: [
                  { position: 'BOTTOM_AXIS', title: 'Month' },
                  { position: 'LEFT_AXIS', title: 'Revenue' },
                ],
                domains: [
                  { domain: { sourceRange: { sources: [{ sheetId: 0, startRowIndex: 0, endRowIndex: 13, startColumnIndex: 0, endColumnIndex: 1 }] } } },
                ],
                series: [
                  { series: { sourceRange: { sources: [{ sheetId: 0, startRowIndex: 0, endRowIndex: 13, startColumnIndex: 1, endColumnIndex: 2 }] } } },
                ],
              },
            },
          },
        },
      },
    ],
  },
});
```

## Creating a New Spreadsheet

```typescript
const res = await sheets.spreadsheets.create({
  requestBody: {
    properties: { title: 'My New Spreadsheet' },
    sheets: [
      { properties: { title: 'Data', gridProperties: { rowCount: 1000, columnCount: 26 } } },
      { properties: { title: 'Summary' } },
    ],
  },
});
const newSpreadsheetId = res.data.spreadsheetId;
const newUrl = res.data.spreadsheetUrl;
```

## Pagination

The Sheets API does not use traditional pagination for value reads. Instead, you specify the exact range you want. For very large sheets, break reads into chunks:

```typescript
// Read in chunks of 1000 rows
const CHUNK_SIZE = 1000;
let allRows: any[][] = [];
for (let startRow = 1; ; startRow += CHUNK_SIZE) {
  const endRow = startRow + CHUNK_SIZE - 1;
  const res = await sheets.spreadsheets.values.get({
    spreadsheetId: 'SPREADSHEET_ID',
    range: `Sheet1!A${startRow}:Z${endRow}`,
  });
  const rows = res.data.values || [];
  if (rows.length === 0) break;
  allRows.push(...rows);
  if (rows.length < CHUNK_SIZE) break; // Last chunk
}
```

## Error Handling

```typescript
try {
  const res = await sheets.spreadsheets.values.get({ ... });
} catch (err: any) {
  if (err.code === 429) {
    // Rate limited -- implement exponential backoff
  } else if (err.code === 403) {
    // Permission denied -- check scopes, sharing, and API enablement
  } else if (err.code === 404) {
    // Spreadsheet not found -- check spreadsheetId
  } else if (err.code === 400) {
    // Invalid request -- check range syntax (A1 notation), valueInputOption, etc.
  }
  console.error(err.message);
}
```

## Batch Requests

For multiple independent operations, combine them into a single `batchUpdate` to reduce round trips and stay within quota:

```typescript
// Single batchUpdate with multiple formatting + structural changes
await sheets.spreadsheets.batchUpdate({
  spreadsheetId: 'SPREADSHEET_ID',
  requestBody: {
    requests: [
      // Request 1: bold headers
      { repeatCell: { range: { sheetId: 0, startRowIndex: 0, endRowIndex: 1 }, cell: { userEnteredFormat: { textFormat: { bold: true } } }, fields: 'userEnteredFormat.textFormat.bold' } },
      // Request 2: freeze header row
      { updateSheetProperties: { properties: { sheetId: 0, gridProperties: { frozenRowCount: 1 } }, fields: 'gridProperties.frozenRowCount' } },
      // Request 3: auto-resize columns
      { autoResizeDimensions: { dimensions: { sheetId: 0, dimension: 'COLUMNS', startIndex: 0, endIndex: 5 } } },
    ],
  },
});
```

**Important**: Each `batchUpdate` call (including all its sub-requests) counts as a single write request against the quota. All requests in a batch are applied atomically -- if one fails, none are applied.
