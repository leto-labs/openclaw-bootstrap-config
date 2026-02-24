# Google Sheets API

> The Google Sheets API is a RESTful interface that lets you read and modify a spreadsheet's data, including cell values, formatting, charts, pivot tables, and more.

## Overview

- **API**: `sheets`
- **Version**: `v4`
- **Base URL**: `https://sheets.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/sheets/api](https://developers.google.com/workspace/sheets/api)

## When to Use

Use the Google Sheets API when you need to:

- **Read structured data** from spreadsheets -- pull rows of data for processing, reporting, or syncing to a database
- **Write or update cell values** -- populate spreadsheets with computed results, API data, or form submissions
- **Append rows to a log or table** -- add new records to the end of an existing table without overwriting data
- **Batch read/write multiple ranges** -- efficiently read or update several non-contiguous ranges in a single request
- **Create and manage spreadsheets programmatically** -- spin up new spreadsheets, add sheets/tabs, or duplicate templates
- **Format cells** -- apply bold, colors, borders, number formats, conditional formatting, or data validation rules
- **Build dashboards** -- create charts, pivot tables, and formatted reports inside Sheets
- **Use Sheets as a lightweight data store** -- for prototypes, internal tools, or small-scale CRUD apps where a full database is overkill
- **Sync external data into Sheets** -- pull data from third-party APIs and write it into a shared spreadsheet for non-technical stakeholders
- **Automate recurring reports** -- scheduled jobs that fetch data, compute metrics, and update a shared report spreadsheet

### When NOT to Use

- For **large-scale data storage** (>10M cells) -- use BigQuery or a real database instead
- For **high-frequency writes** (>60 writes/min per user) -- you will hit quota limits
- For **real-time collaboration features** -- use Google Apps Script or Sheets add-ons instead
- For **binary file operations** -- use the Drive API for file management

## Key Concepts

- **Spreadsheet**: The primary object, identified by a unique `spreadsheetId` found in the URL: `https://docs.google.com/spreadsheets/d/SPREADSHEET_ID/edit`
- **Sheet**: A page or tab within a spreadsheet, identified by a numeric `sheetId`
- **Cell**: An individual field at the intersection of a row and column
- **A1 Notation**: Standard range syntax like `Sheet1!A1:B2`, `Sheet1!A:A`, or `Sheet1!1:2`
- **R1C1 Notation**: Alternative range syntax using row/column numbers like `Sheet1!R1C1:R2C2`
- **Named Range**: A user-defined name for a cell or range, simplifying references in formulas and API calls
- **ValueInputOption**: Controls how input data is interpreted -- `RAW` (literal strings) or `USER_ENTERED` (parsed like the UI)
- **ValueRenderOption**: Controls how output data is formatted -- `FORMATTED_VALUE`, `UNFORMATTED_VALUE`, or `FORMULA`

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const sheets = google.sheets('v4');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: ['https://www.googleapis.com/auth/spreadsheets'],
});
google.options({ auth });

// Read values from a range
const res = await sheets.spreadsheets.values.get({
  spreadsheetId: 'YOUR_SPREADSHEET_ID',
  range: 'Sheet1!A1:D10',
});
console.log(res.data.values);

// Write values to a range
await sheets.spreadsheets.values.update({
  spreadsheetId: 'YOUR_SPREADSHEET_ID',
  range: 'Sheet1!A1:B2',
  valueInputOption: 'USER_ENTERED',
  requestBody: {
    values: [['Name', 'Score'], ['Alice', 95]],
  },
});
```

### curl

```bash
# Read values
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://sheets.googleapis.com/v4/spreadsheets/SPREADSHEET_ID/values/Sheet1!A1:D10"

# Write values
curl -X PUT \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  -d '{"values":[["Name","Score"],["Alice",95]]}' \
  "https://sheets.googleapis.com/v4/spreadsheets/SPREADSHEET_ID/values/Sheet1!A1:B2?valueInputOption=USER_ENTERED"
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |
