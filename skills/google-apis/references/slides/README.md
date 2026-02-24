# Google Slides API

> The Google Slides API lets you create and modify Google Slides presentations programmatically, including adding slides, inserting text and shapes, embedding images, performing mail merges from data sources, and applying formatting.

## Overview

- **API**: `slides`
- **Version**: `v1`
- **Base URL**: `https://slides.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/slides](https://developers.google.com/workspace/slides)

## When to Use

Use the Google Slides API when you need to:

- **Generate presentations from data** -- pull records from a database or spreadsheet and populate a template deck automatically (mail merge)
- **Create slide decks programmatically** -- spin up new presentations with specific layouts, text, and images from code
- **Automate report generation** -- build recurring slide reports (weekly metrics, quarterly reviews, client dashboards) without manual editing
- **Replace placeholder content** -- use `replaceAllText` and `replaceAllShapesWithImage` to swap tags like `{{customer-name}}` with real data
- **Insert and format text** -- add titles, body text, bullet lists, and apply font, color, and size styling via batch updates
- **Add shapes, images, and tables** -- programmatically place visual elements on slides with precise positioning (EMU coordinates)
- **Manage slide order and layout** -- create slides from predefined layouts (TITLE, TITLE_AND_BODY, TITLE_AND_TWO_COLUMNS, etc.), reorder them, or duplicate existing slides
- **Embed charts from Google Sheets** -- insert and refresh live Sheets charts inside presentations
- **Build template-based workflows** -- create a master template, copy it via Drive API, then populate the copy with customer-specific content
- **Add speaker notes** -- programmatically insert or update speaker notes on each slide

### Concrete Scenarios

| Scenario | Key Methods / Requests |
|----------|----------------------|
| Generate personalized sales decks from CRM data | `drive.files.copy` + `replaceAllText` + `replaceAllShapesWithImage` |
| Weekly metrics dashboard auto-generated from Sheets | `presentations.create` + `createSlide` + `insertText` + `createSheetsChart` |
| Onboarding deck with employee name/photo filled in | `drive.files.copy` + `replaceAllText` + `replaceAllShapesWithImage` |
| Add a new slide with a specific layout to an existing deck | `createSlide` with `predefinedLayout` |
| Batch-update formatting across all slides | `updateTextStyle` + `updateShapeProperties` in one `batchUpdate` |
| Create a table of contents slide | `presentations.get` to read slide titles + `insertText` |
| Insert a company logo on every slide | `createImage` with position/size on each slide |

### When NOT to Use

- For **real-time collaborative editing** -- use the Slides UI or Google Apps Script instead
- For **reading/writing spreadsheet data** -- use the Sheets API
- For **file management** (copy, move, share, delete) -- use the Drive API (though you will often combine Drive + Slides)
- For **complex animations or transitions** -- the API does not support animations
- For **converting slides to PDF/images** -- use the Drive API export endpoint instead

## Key Concepts

- **Presentation**: The top-level object, identified by a `presentationId` from the URL: `https://docs.google.com/presentation/d/PRESENTATION_ID/edit`
- **Page**: A single page in the presentation. Types include slides, masters, layouts, notes, and notes masters.
- **Page Element**: A visual component placed on a page -- shapes, images, tables, videos, lines, groups, WordArt, or SheetsCharts.
- **Object ID**: A unique string identifying any page or page element within a presentation. Can be user-specified on creation (must be unique across the entire presentation).
- **Batch Update**: The primary mutation method -- `presentations.batchUpdate` accepts an array of `Request` objects, applied atomically.
- **EMU (English Metric Units)**: The unit for positioning and sizing page elements. 1 inch = 914400 EMU, 1 point = 12700 EMU.
- **Predefined Layouts**: Built-in layout types like `BLANK`, `TITLE`, `TITLE_AND_BODY`, `TITLE_AND_TWO_COLUMNS`, `TITLE_ONLY`, `SECTION_HEADER`, etc.
- **Placeholder**: A shape on a layout that gets copied to new slides. Identified by `placeholderIdMappings` when creating slides.
- **Transform**: Describes position, scale, and rotation of page elements using an affine transformation matrix.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from 'googleapis';

const slides = google.slides({ version: 'v1', auth });

// Read a presentation
const res = await slides.presentations.get({
  presentationId: 'PRESENTATION_ID',
});
console.log(`Title: ${res.data.title}`);
console.log(`Slides: ${res.data.slides?.length}`);

// Create a new slide with a layout
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        createSlide: {
          objectId: 'my_new_slide_001',
          insertionIndex: 1,
          slideLayoutReference: {
            predefinedLayout: 'TITLE_AND_BODY',
          },
        },
      },
    ],
  },
});
```

### curl

```bash
# Get a presentation
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://slides.googleapis.com/v1/presentations/PRESENTATION_ID"

# Create a slide
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  -d '{"requests":[{"createSlide":{"objectId":"slide_001","insertionIndex":1,"slideLayoutReference":{"predefinedLayout":"TITLE_AND_BODY"}}}]}' \
  "https://slides.googleapis.com/v1/presentations/PRESENTATION_ID:batchUpdate"
```

## Resource Types

| Resource | Description |
|----------|-------------|
| **Presentations** | Top-level presentation object (title, locale, page size, slides, masters, layouts) |
| **Slides** | Individual slide pages within a presentation |
| **Masters** | Slide masters defining default styles and background for slides |
| **Layouts** | Layout templates associated with a master, defining placeholder arrangement |
| **Notes** | Speaker notes pages, one per slide |
| **Page Elements** | Shapes, images, tables, videos, lines, groups, WordArt, SheetsCharts |

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters and schemas |
| `patterns.md` | Common workflow patterns with code examples |
| `gotchas.md` | Rate limits, common errors, debugging tips |
