# Google Docs API

> The Google Docs API lets you create, read, and programmatically update Google Docs documents via `documents.batchUpdate`.

## Overview

- **API**: `docs`
- **Version**: `v1`
- **Base URL**: `https://docs.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/docs/api](https://developers.google.com/workspace/docs/api)

## When to Use

Use the Google Docs API when you need to:

- **Generate documents from templates** -- copy a template doc via Drive API, then use `batchUpdate` with `ReplaceAllTextRequest` to fill in placeholders (e.g., contracts, invoices, letters with `{{customer-name}}` tags).
- **Build reports programmatically** -- create a blank document and insert headings, paragraphs, tables, and images via batch update requests.
- **Extract text content** -- read a document's structural elements (paragraphs, tables, lists) to extract plain text for indexing, analysis, or migration.
- **Apply formatting at scale** -- bold, italic, font changes, heading styles, paragraph alignment across a document in a single batch call.
- **Mail merge workflows** -- combine Drive API (copy template) + Docs API (replace placeholders) to produce personalized documents at scale.
- **Insert images and tables** -- add inline images from public URLs or insert structured table data into documents.
- **Work with multi-tab documents** -- read and update content across multiple tabs within a single document.

## Key Concepts

- **Document structure**: Document > Tabs > Body > StructuralElements (Paragraph, Table, SectionBreak, TableOfContents) > ParagraphElements (TextRun, InlineObjectElement, AutoText).
- **Indexes**: All content positions are zero-based UTF-16 code unit offsets from the start of the body segment. Surrogate pairs (e.g., emoji) consume two indexes.
- **Batch updates**: All mutations go through `documents.batchUpdate` with an array of `Request` objects. There is no per-field update method.
- **Tabs**: Documents can have multiple tabs. Use `includeTabsContent: true` on `get` to retrieve all tabs. Specify `tabId` in update requests to target a specific tab.
- **Edit backwards**: Order requests by descending index to avoid recalculating offsets after each insertion/deletion.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const docs = google.docs('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: ['https://www.googleapis.com/auth/documents'],
});
google.options({ auth });

// Read a document (include all tabs)
const res = await docs.documents.get({
  documentId: 'DOCUMENT_ID',
  includeTabsContent: true,
});
console.log(`Title: ${res.data.title}`);

// Update a document (insert text at index 1)
await docs.documents.batchUpdate({
  documentId: 'DOCUMENT_ID',
  requestBody: {
    requests: [
      {
        insertText: {
          location: { index: 1 },
          text: 'Hello, World!\n',
        },
      },
    ],
  },
});
```

### curl

```bash
# Get document
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://docs.googleapis.com/v1/documents/DOCUMENT_ID?includeTabsContent=true"

# Batch update (insert text)
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  -d '{"requests": [{"insertText": {"location": {"index": 1}, "text": "Hello\n"}}]}' \
  "https://docs.googleapis.com/v1/documents/DOCUMENT_ID:batchUpdate"
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns with code examples |
| `gotchas.md` | Index pitfalls, rate limits, common errors, debugging |

