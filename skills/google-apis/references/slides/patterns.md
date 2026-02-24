# Google Slides API - Common Patterns

## Creating a Presentation

```typescript
import { google } from 'googleapis';

const slides = google.slides({ version: 'v1', auth });

const res = await slides.presentations.create({
  requestBody: {
    title: 'My New Presentation',
  },
});
const presentationId = res.data.presentationId;
const presentationUrl = `https://docs.google.com/presentation/d/${presentationId}/edit`;
```

## Reading a Presentation

```typescript
const res = await slides.presentations.get({
  presentationId: 'PRESENTATION_ID',
});

// Access slide metadata
for (const slide of res.data.slides ?? []) {
  console.log(`Slide ID: ${slide.objectId}`);
  console.log(`Elements: ${slide.pageElements?.length ?? 0}`);
}

// Access masters and layouts
const masters = res.data.masters ?? [];
const layouts = res.data.layouts ?? [];
```

## Adding Slides

### Create a Slide with a Predefined Layout

All mutations go through `presentations.batchUpdate`. You can optionally specify an `objectId` for the new slide, which lets you reference it in subsequent requests within the same batch.

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        createSlide: {
          objectId: 'my_slide_001',        // optional, auto-generated if omitted
          insertionIndex: 1,                // 0-based; where to insert the slide
          slideLayoutReference: {
            predefinedLayout: 'TITLE_AND_TWO_COLUMNS',
          },
        },
      },
    ],
  },
});
```

**Available predefined layouts**:

| Layout | Description |
|--------|-------------|
| `BLANK` | Empty slide |
| `CAPTION_ONLY` | Caption at the bottom |
| `TITLE` | Title and subtitle |
| `TITLE_AND_BODY` | Title with a body text area |
| `TITLE_AND_TWO_COLUMNS` | Title with two body columns |
| `TITLE_ONLY` | Title at the top, rest empty |
| `SECTION_HEADER` | Section divider |
| `SECTION_TITLE_AND_DESCRIPTION` | Section title with description |
| `ONE_COLUMN_TEXT` | Single column of text |
| `MAIN_POINT` | Large centered text |
| `BIG_NUMBER` | Large number display |

### Create a Slide and Fill Placeholders in One Batch

Use `placeholderIdMappings` to assign IDs to placeholder shapes, then modify them in the same batch:

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        createSlide: {
          objectId: 'new_slide',
          insertionIndex: 0,
          slideLayoutReference: { predefinedLayout: 'TITLE_AND_BODY' },
          placeholderIdMappings: [
            {
              layoutPlaceholder: { type: 'TITLE', index: 0 },
              objectId: 'title_placeholder',
            },
            {
              layoutPlaceholder: { type: 'BODY', index: 0 },
              objectId: 'body_placeholder',
            },
          ],
        },
      },
      // Insert text into the title placeholder
      {
        insertText: {
          objectId: 'title_placeholder',
          text: 'Q4 Revenue Report',
          insertionIndex: 0,
        },
      },
      // Insert text into the body placeholder
      {
        insertText: {
          objectId: 'body_placeholder',
          text: 'Key findings from the quarterly analysis.',
          insertionIndex: 0,
        },
      },
    ],
  },
});
```

## Inserting Text

### Insert Text into a Shape

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        insertText: {
          objectId: 'shape_object_id',   // ID of an existing shape/text box
          text: 'Hello, World!',
          insertionIndex: 0,              // character index to insert at
        },
      },
    ],
  },
});
```

### Delete and Replace Text in a Shape

To replace text, first delete the existing text, then insert new text:

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        deleteText: {
          objectId: 'shape_object_id',
          textRange: {
            type: 'ALL',   // delete all text in the shape
          },
        },
      },
      {
        insertText: {
          objectId: 'shape_object_id',
          text: 'Replacement text here',
          insertionIndex: 0,
        },
      },
    ],
  },
});
```

### Add Bullet Points

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        insertText: {
          objectId: 'body_shape_id',
          text: 'First point\nSecond point\nThird point',
          insertionIndex: 0,
        },
      },
      {
        createParagraphBullets: {
          objectId: 'body_shape_id',
          textRange: { type: 'ALL' },
          bulletPreset: 'BULLET_DISC_CIRCLE_SQUARE',  // nested bullet style
        },
      },
    ],
  },
});
```

## Inserting Shapes

### Create a Rectangle Shape

Positions and sizes are specified in EMU (English Metric Units). 1 inch = 914400 EMU.

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        createShape: {
          objectId: 'my_rect_001',
          shapeType: 'RECTANGLE',
          elementProperties: {
            pageObjectId: 'slide_object_id',  // which slide to add it to
            size: {
              width:  { magnitude: 3000000, unit: 'EMU' },  // ~3.28 inches
              height: { magnitude: 1500000, unit: 'EMU' },  // ~1.64 inches
            },
            transform: {
              scaleX: 1,
              scaleY: 1,
              translateX: 1000000,  // X offset from top-left in EMU
              translateY: 2000000,  // Y offset from top-left in EMU
              unit: 'EMU',
            },
          },
        },
      },
    ],
  },
});
```

### Create a Text Box and Add Text

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        createShape: {
          objectId: 'my_textbox',
          shapeType: 'TEXT_BOX',
          elementProperties: {
            pageObjectId: 'slide_object_id',
            size: {
              width:  { magnitude: 5000000, unit: 'EMU' },
              height: { magnitude: 1000000, unit: 'EMU' },
            },
            transform: {
              scaleX: 1, scaleY: 1,
              translateX: 500000, translateY: 500000,
              unit: 'EMU',
            },
          },
        },
      },
      {
        insertText: {
          objectId: 'my_textbox',
          text: 'This is a custom text box.',
          insertionIndex: 0,
        },
      },
    ],
  },
});
```

## Inserting Images

### Create an Image from a URL

The image URL must be publicly accessible or accessible via the authenticated user's credentials.

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        createImage: {
          objectId: 'my_image_001',
          url: 'https://example.com/photo.png',
          elementProperties: {
            pageObjectId: 'slide_object_id',
            size: {
              width:  { magnitude: 4000000, unit: 'EMU' },
              height: { magnitude: 3000000, unit: 'EMU' },
            },
            transform: {
              scaleX: 1, scaleY: 1,
              translateX: 2000000, translateY: 1500000,
              unit: 'EMU',
            },
          },
        },
      },
    ],
  },
});
```

### Insert an Image from Google Drive

Use the Drive API download URL format:

```typescript
const imageUrl = `https://www.googleapis.com/drive/v3/files/${fileId}?alt=media`;
// Use this URL in the createImage request above
```

## Replace Text (Mail Merge)

`replaceAllText` replaces every occurrence of a text string across the entire presentation. This is the primary mechanism for mail merge workflows.

### Basic Text Replacement

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        replaceAllText: {
          containsText: {
            text: '{{customer-name}}',
            matchCase: true,
          },
          replaceText: 'Acme Corporation',
        },
      },
      {
        replaceAllText: {
          containsText: {
            text: '{{report-date}}',
            matchCase: true,
          },
          replaceText: '2026-02-25',
        },
      },
    ],
  },
});
```

### Full Mail Merge Workflow (Template + Data)

The standard pattern: copy a template via Drive API, then populate the copy with data:

```typescript
import { google } from 'googleapis';

const slides = google.slides({ version: 'v1', auth });
const drive = google.drive({ version: 'v3', auth });
const sheets = google.sheets({ version: 'v4', auth });

// 1. Read data from a spreadsheet
const dataRes = await sheets.spreadsheets.values.get({
  spreadsheetId: 'DATA_SPREADSHEET_ID',
  range: 'Customers!A2:D100',
});
const rows = dataRes.data.values ?? [];

for (const row of rows) {
  const [name, email, company, revenue] = row;

  // 2. Copy the template presentation
  const copyRes = await drive.files.copy({
    fileId: 'TEMPLATE_PRESENTATION_ID',
    requestBody: { name: `${name} - Sales Report` },
  });
  const copyId = copyRes.data.id!;

  // 3. Replace all placeholder tags with actual data
  await slides.presentations.batchUpdate({
    presentationId: copyId,
    requestBody: {
      requests: [
        { replaceAllText: { containsText: { text: '{{customer-name}}', matchCase: true }, replaceText: name } },
        { replaceAllText: { containsText: { text: '{{email}}', matchCase: true }, replaceText: email } },
        { replaceAllText: { containsText: { text: '{{company}}', matchCase: true }, replaceText: company } },
        { replaceAllText: { containsText: { text: '{{revenue}}', matchCase: true }, replaceText: revenue } },
      ],
    },
  });
}
```

### Replace Shapes with Images (Image Merge)

Replace all shapes containing a specific tag text with an image:

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        replaceAllShapesWithImage: {
          imageUrl: 'https://example.com/logo.png',
          imageReplaceMethod: 'CENTER_INSIDE',  // or 'CENTER_CROP'
          containsText: {
            text: '{{company-logo}}',
            matchCase: true,
          },
        },
      },
    ],
  },
});
```

**Image replace methods**:
- `CENTER_INSIDE` -- scales image to fit inside the shape bounds, preserving aspect ratio
- `CENTER_CROP` -- scales image to fill the shape bounds, cropping excess

## Creating Tables

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        createTable: {
          objectId: 'my_table',
          elementProperties: {
            pageObjectId: 'slide_object_id',
            size: {
              width:  { magnitude: 7000000, unit: 'EMU' },
              height: { magnitude: 3000000, unit: 'EMU' },
            },
            transform: {
              scaleX: 1, scaleY: 1,
              translateX: 500000, translateY: 2000000,
              unit: 'EMU',
            },
          },
          rows: 4,
          columns: 3,
        },
      },
      // Insert text into table cells (row 0, col 0)
      {
        insertText: {
          objectId: 'my_table',
          cellLocation: { rowIndex: 0, columnIndex: 0 },
          text: 'Product',
          insertionIndex: 0,
        },
      },
      {
        insertText: {
          objectId: 'my_table',
          cellLocation: { rowIndex: 0, columnIndex: 1 },
          text: 'Revenue',
          insertionIndex: 0,
        },
      },
      {
        insertText: {
          objectId: 'my_table',
          cellLocation: { rowIndex: 0, columnIndex: 2 },
          text: 'Growth',
          insertionIndex: 0,
        },
      },
    ],
  },
});
```

## Formatting Text

### Apply Font, Color, and Size

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        updateTextStyle: {
          objectId: 'shape_object_id',
          textRange: { type: 'ALL' },
          style: {
            fontFamily: 'Roboto',
            fontSize: { magnitude: 18, unit: 'PT' },
            foregroundColor: {
              opaqueColor: {
                rgbColor: { red: 0.2, green: 0.2, blue: 0.8 },
              },
            },
            bold: true,
            italic: false,
          },
          fields: 'fontFamily,fontSize,foregroundColor,bold,italic',
        },
      },
    ],
  },
});
```

### Style a Specific Text Range

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        updateTextStyle: {
          objectId: 'shape_object_id',
          textRange: {
            type: 'FIXED_RANGE',
            startIndex: 0,
            endIndex: 5,    // first 5 characters
          },
          style: {
            bold: true,
            foregroundColor: {
              opaqueColor: {
                rgbColor: { red: 0.8, green: 0, blue: 0 },
              },
            },
          },
          fields: 'bold,foregroundColor',
        },
      },
    ],
  },
});
```

### Update Paragraph Alignment

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        updateParagraphStyle: {
          objectId: 'shape_object_id',
          textRange: { type: 'ALL' },
          style: {
            alignment: 'CENTER',   // START, CENTER, END, JUSTIFIED
          },
          fields: 'alignment',
        },
      },
    ],
  },
});
```

## Formatting Shapes

### Update Shape Fill and Border

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        updateShapeProperties: {
          objectId: 'shape_object_id',
          shapeProperties: {
            shapeBackgroundFill: {
              solidFill: {
                color: {
                  rgbColor: { red: 0.95, green: 0.95, blue: 1.0 },
                },
                alpha: 1.0,
              },
            },
            outline: {
              outlineFill: {
                solidFill: {
                  color: {
                    rgbColor: { red: 0.2, green: 0.2, blue: 0.8 },
                  },
                },
              },
              weight: { magnitude: 2, unit: 'PT' },
              dashStyle: 'SOLID',
            },
          },
          fields: 'shapeBackgroundFill.solidFill,outline',
        },
      },
    ],
  },
});
```

## Speaker Notes

Speaker notes are on the notes page associated with each slide. You must find the notes page's speaker notes shape ID first.

```typescript
// 1. Get the presentation to find notes shapes
const pres = await slides.presentations.get({
  presentationId: 'PRESENTATION_ID',
});

for (const slide of pres.data.slides ?? []) {
  const notesPage = slide.slideProperties?.notesPage;
  // Find the speaker notes shape (type: BODY on the notes page)
  const notesShape = notesPage?.pageElements?.find(
    el => el.shape?.placeholder?.type === 'BODY'
  );

  if (notesShape) {
    // 2. Insert text into the speaker notes
    await slides.presentations.batchUpdate({
      presentationId: 'PRESENTATION_ID',
      requestBody: {
        requests: [
          {
            insertText: {
              objectId: notesShape.objectId!,
              text: 'Remember to mention the Q4 numbers here.',
              insertionIndex: 0,
            },
          },
        ],
      },
    });
  }
}
```

## Managing Slides

### Reorder Slides

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        updateSlidesPosition: {
          slideObjectIds: ['slide_id_3', 'slide_id_1'],  // slides to move
          insertionIndex: 0,  // move them to the beginning
        },
      },
    ],
  },
});
```

### Duplicate a Slide

```typescript
const res = await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        duplicateObject: {
          objectId: 'existing_slide_id',
          objectIds: {
            // Optional: map old element IDs to new ones
            'existing_slide_id': 'new_slide_copy_id',
          },
        },
      },
    ],
  },
});
```

### Delete a Slide or Page Element

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        deleteObject: {
          objectId: 'slide_or_element_id',
        },
      },
    ],
  },
});
```

## Embedding Sheets Charts

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        createSheetsChart: {
          objectId: 'my_chart',
          spreadsheetId: 'SPREADSHEET_ID',
          chartId: 12345,  // chart ID within the spreadsheet
          linkingMode: 'LINKED',  // LINKED or NOT_LINKED_IMAGE
          elementProperties: {
            pageObjectId: 'slide_object_id',
            size: {
              width:  { magnitude: 6000000, unit: 'EMU' },
              height: { magnitude: 4000000, unit: 'EMU' },
            },
            transform: {
              scaleX: 1, scaleY: 1,
              translateX: 1000000, translateY: 1500000,
              unit: 'EMU',
            },
          },
        },
      },
    ],
  },
});

// Refresh a linked chart later
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      {
        refreshSheetsChart: {
          objectId: 'my_chart',
        },
      },
    ],
  },
});
```

## Batch Updates -- Combining Multiple Operations

Always combine multiple changes into a single `batchUpdate` call when possible. This saves quota and ensures atomicity (all succeed or none apply).

```typescript
await slides.presentations.batchUpdate({
  presentationId: 'PRESENTATION_ID',
  requestBody: {
    requests: [
      // 1. Create a new slide
      {
        createSlide: {
          objectId: 'summary_slide',
          insertionIndex: 0,
          slideLayoutReference: { predefinedLayout: 'TITLE_AND_BODY' },
          placeholderIdMappings: [
            { layoutPlaceholder: { type: 'TITLE', index: 0 }, objectId: 'summary_title' },
            { layoutPlaceholder: { type: 'BODY', index: 0 }, objectId: 'summary_body' },
          ],
        },
      },
      // 2. Set the title
      { insertText: { objectId: 'summary_title', text: 'Executive Summary', insertionIndex: 0 } },
      // 3. Set the body
      { insertText: { objectId: 'summary_body', text: 'Key highlights from Q4...', insertionIndex: 0 } },
      // 4. Style the title
      {
        updateTextStyle: {
          objectId: 'summary_title',
          textRange: { type: 'ALL' },
          style: { bold: true, fontSize: { magnitude: 28, unit: 'PT' } },
          fields: 'bold,fontSize',
        },
      },
    ],
  },
});
```

## Error Handling

```typescript
try {
  const res = await slides.presentations.batchUpdate({ ... });
} catch (err: any) {
  if (err.code === 400) {
    // Bad request -- check object IDs are unique, ranges are valid, EMU values are positive
  } else if (err.code === 403) {
    // Permission denied -- check scopes, sharing, API enablement
  } else if (err.code === 404) {
    // Presentation not found -- check presentationId
  } else if (err.code === 429) {
    // Rate limited -- implement exponential backoff
  }
  console.error(err.message);
}
```
