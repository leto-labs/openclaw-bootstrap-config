# Google Docs API - Common Patterns

## Create a Blank Document

```typescript
const docs = google.docs({ version: 'v1', auth });

const res = await docs.documents.create({
  requestBody: { title: 'My New Document' },
});
const documentId = res.data.documentId;
```

**Note**: The document is created in the user's root Drive folder. To place it in a specific folder, either:
- Create it first, then move with Drive API `files.update` (add the folder as a parent).
- Or create a blank doc in the target folder using Drive API `files.create` with `mimeType: 'application/vnd.google-apps.document'`.

## Get a Document

```typescript
const res = await docs.documents.get({
  documentId: 'DOCUMENT_ID',
  includeTabsContent: true,  // Required to get content from all tabs
});
const title = res.data.title;
const body = res.data.tabs[0].documentTab.body;
```

## Copy an Existing Document (Template)

Use the Drive API to copy, then the Docs API to fill in placeholders:

```typescript
const drive = google.drive({ version: 'v3', auth });
const docs = google.docs({ version: 'v1', auth });

// 1. Copy the template
const copy = await drive.files.copy({
  fileId: 'TEMPLATE_DOCUMENT_ID',
  requestBody: { name: 'Filled Document' },
});
const newDocId = copy.data.id;

// 2. Replace placeholders in the copy
await docs.documents.batchUpdate({
  documentId: newDocId,
  requestBody: {
    requests: [
      {
        replaceAllText: {
          containsText: { text: '{{customer-name}}', matchCase: true },
          replaceText: 'Alice Smith',
        },
      },
      {
        replaceAllText: {
          containsText: { text: '{{date}}', matchCase: true },
          replaceText: new Date().toISOString().split('T')[0],
        },
      },
    ],
  },
});
```

## Insert Text

Text is inserted at a specific index location via `InsertTextRequest`:

```typescript
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    requests: [
      {
        insertText: {
          location: { index: 1 },
          text: 'First line of content\n',
        },
      },
    ],
  },
});
```

**Important**: Inserting text shifts all subsequent indexes by the length of the inserted string. When making multiple insertions, either process them in reverse index order or account for the offset shift.

## Replace Text (Find and Replace)

Use `ReplaceAllTextRequest` for global find-and-replace across all tabs:

```typescript
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    requests: [
      {
        replaceAllText: {
          containsText: { text: '{{placeholder}}', matchCase: true },
          replaceText: 'Actual Value',
          // Omit tabsCriteria to replace across all tabs
        },
      },
    ],
  },
});
```

To target specific tabs, add `tabsCriteria`:

```typescript
{
  replaceAllText: {
    containsText: { text: '{{placeholder}}', matchCase: true },
    replaceText: 'Actual Value',
    tabsCriteria: { tabIds: ['TAB_ID_1', 'TAB_ID_2'] },
  },
}
```

## Delete Text

```typescript
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    requests: [
      {
        deleteContentRange: {
          range: { startIndex: 10, endIndex: 24 },
        },
      },
    ],
  },
});
```

## Apply Text Formatting (Bold, Italic, Font)

Use `UpdateTextStyleRequest` with a `fields` mask to specify which properties to set:

```typescript
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    requests: [
      // Bold + italic a range
      {
        updateTextStyle: {
          range: { startIndex: 1, endIndex: 20 },
          textStyle: { bold: true, italic: true },
          fields: 'bold,italic',
        },
      },
      // Change font family and size
      {
        updateTextStyle: {
          range: { startIndex: 21, endIndex: 50 },
          textStyle: {
            weightedFontFamily: { fontFamily: 'Times New Roman' },
            fontSize: { magnitude: 14, unit: 'PT' },
          },
          fields: 'weightedFontFamily,fontSize',
        },
      },
      // Set text color (blue)
      {
        updateTextStyle: {
          range: { startIndex: 51, endIndex: 70 },
          textStyle: {
            foregroundColor: {
              color: { rgbColor: { red: 0, green: 0, blue: 1 } },
            },
          },
          fields: 'foregroundColor',
        },
      },
      // Add a hyperlink
      {
        updateTextStyle: {
          range: { startIndex: 71, endIndex: 85 },
          textStyle: {
            link: { url: 'https://example.com' },
          },
          fields: 'link',
        },
      },
    ],
  },
});
```

**The `fields` mask is critical**: only properties listed in `fields` are updated. Omitting `fields` or setting `fields: '*'` resets all unset properties to defaults.

## Apply Paragraph Formatting (Headings, Alignment)

Use `UpdateParagraphStyleRequest`:

```typescript
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    requests: [
      // Set a heading style
      {
        updateParagraphStyle: {
          range: { startIndex: 1, endIndex: 20 },
          paragraphStyle: { namedStyleType: 'HEADING_1' },
          fields: 'namedStyleType',
        },
      },
      // Set alignment and spacing
      {
        updateParagraphStyle: {
          range: { startIndex: 21, endIndex: 80 },
          paragraphStyle: {
            alignment: 'CENTER',
            spaceAbove: { magnitude: 12, unit: 'PT' },
            spaceBelow: { magnitude: 12, unit: 'PT' },
          },
          fields: 'alignment,spaceAbove,spaceBelow',
        },
      },
    ],
  },
});
```

Named style types: `NORMAL_TEXT`, `TITLE`, `SUBTITLE`, `HEADING_1` through `HEADING_6`.

## Insert an Inline Image

```typescript
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    requests: [
      {
        insertInlineImage: {
          location: { index: 1 },
          uri: 'https://example.com/image.png',
          objectSize: {
            height: { magnitude: 100, unit: 'PT' },
            width: { magnitude: 200, unit: 'PT' },
          },
        },
      },
    ],
  },
});
```

**Requirements**: The `uri` must be a publicly accessible HTTPS URL. Google fetches the image server-side at insert time. Private/authenticated URLs will fail.

## Insert a Table

```typescript
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    requests: [
      {
        insertTable: {
          rows: 3,
          columns: 4,
          endOfSegmentLocation: {},  // Inserts at end of body
        },
      },
    ],
  },
});
```

After inserting a table, re-read the document to discover new indexes, then use `insertText` to populate cells.

## Insert and Delete Table Rows/Columns

```typescript
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    requests: [
      // Insert a row below row index 1
      {
        insertTableRow: {
          tableCellLocation: {
            tableStartLocation: { index: TABLE_START_INDEX },
            rowIndex: 1,
            columnIndex: 0,
          },
          insertBelow: true,
        },
      },
      // Insert a column to the right of column 0
      {
        insertTableColumn: {
          tableCellLocation: {
            tableStartLocation: { index: TABLE_START_INDEX },
            rowIndex: 0,
            columnIndex: 0,
          },
          insertRight: true,
        },
      },
    ],
  },
});
```

## Named Ranges

Tag sections of text for later reference:

```typescript
// Create a named range
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    requests: [
      {
        createNamedRange: {
          name: 'my-section',
          range: { startIndex: 10, endIndex: 50 },
        },
      },
    ],
  },
});

// Read named ranges from the document
const doc = await docs.documents.get({ documentId: 'DOCUMENT_ID' });
const namedRanges = doc.data.namedRanges;
// { 'my-section': { namedRangeId, ranges: [{ startIndex, endIndex }] } }
```

## Batch Update with Multiple Request Types

Combine multiple operations in a single `batchUpdate` call. Requests execute sequentially:

```typescript
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    requests: [
      // 1. Insert heading text
      { insertText: { location: { index: 1 }, text: 'Report Title\n' } },
      // 2. Style it as HEADING_1
      {
        updateParagraphStyle: {
          range: { startIndex: 1, endIndex: 14 },
          paragraphStyle: { namedStyleType: 'HEADING_1' },
          fields: 'namedStyleType',
        },
      },
      // 3. Insert body text (index shifted by prior insertion)
      { insertText: { location: { index: 14 }, text: 'Report body content.\n' } },
    ],
  },
});
```

**Critical**: Requests execute sequentially within a batch. Each request sees the document state as modified by previous requests. Calculate indexes carefully.

## Mail Merge (Template-Based Document Generation)

Full workflow for generating personalized documents at scale:

```typescript
async function mailMerge(
  templateId: string,
  records: Array<Record<string, string>>,
) {
  const drive = google.drive({ version: 'v3', auth });
  const docs = google.docs({ version: 'v1', auth });

  for (const record of records) {
    // 1. Copy the template (use end-user credentials)
    const copy = await drive.files.copy({
      fileId: templateId,
      requestBody: { name: `Document for ${record.name}` },
    });

    // 2. Build replacement requests from the record
    const requests = Object.entries(record).map(([key, value]) => ({
      replaceAllText: {
        containsText: { text: `{{${key}}}`, matchCase: true },
        replaceText: value,
      },
    }));

    // 3. Apply replacements
    await docs.documents.batchUpdate({
      documentId: copy.data.id,
      requestBody: { requests },
    });
  }
}
```

**Template management tip**: Create templates using a service account, grant read access to users. Generate document instances using end-user credentials so users own the result.

## WriteControl for Concurrent Editing Safety

Use `WriteControl` to handle concurrent edits:

```typescript
// 1. Read the document and capture revisionId
const doc = await docs.documents.get({ documentId: 'DOCUMENT_ID' });
const revisionId = doc.data.revisionId;

// 2. Use requiredRevisionId to fail if document changed since read
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    writeControl: { requiredRevisionId: revisionId },
    requests: [
      { insertText: { location: { index: 1 }, text: 'Safe insert\n' } },
    ],
  },
});

// Or use targetRevisionId to merge with concurrent changes
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    writeControl: { targetRevisionId: revisionId },
    requests: [
      { insertText: { location: { index: 1 }, text: 'Merged insert\n' } },
    ],
  },
});
```

## Error Handling

```typescript
try {
  const res = await docs.documents.batchUpdate({ ... });
} catch (err: any) {
  if (err.code === 429) {
    // Rate limited -- implement exponential backoff
  } else if (err.code === 403) {
    // Permission denied -- check scopes and API enablement
  } else if (err.code === 400) {
    // Invalid request -- check index ranges, field masks, required fields
  } else if (err.code === 404) {
    // Not found -- verify documentId
  }
  console.error(err.message);
}
```

## Batch Requests

All document mutations go through `documents.batchUpdate`. There is no separate per-field update endpoint:

```typescript
// Every mutation is a batchUpdate, even for a single operation
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    requests: [
      // Array of Request objects (insertText, updateTextStyle, replaceAllText, etc.)
    ],
  },
});
// See references/googleapis-client.md for HTTP-level batch patterns
```

