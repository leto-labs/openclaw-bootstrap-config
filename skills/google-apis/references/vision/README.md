# Cloud Vision API

> Integrates Google Vision features, including image labeling, face, logo, and landmark detection, optical character recognition (OCR), and detection of explicit content, into applications.

## Overview

- **API**: `vision`
- **Version**: `v1`
- **Base URL**: `https://vision.googleapis.com/`
- **Docs**: [https://cloud.google.com/vision/](https://cloud.google.com/vision/)

## When to Use

Use the Cloud Vision API when you need to:

- **Classify images with labels** -- automatically detect broad sets of categories (e.g., "dog", "flower", "car") within photos and return confidence scores for each
- **Extract text from images (OCR)** -- read printed text from signs, documents, product labels, or screenshots using `TEXT_DETECTION` (sparse text) or `DOCUMENT_TEXT_DETECTION` (dense text/handwriting)
- **Digitize PDFs and TIFFs** -- run OCR on multi-page documents stored in Cloud Storage, extracting full text with structural hierarchy (pages, blocks, paragraphs, words, symbols)
- **Detect faces** -- locate faces in images with bounding polygons, identify facial landmarks (eyes, nose, mouth), and estimate emotional likelihood (joy, sorrow, anger, surprise) -- note: individual facial recognition is not supported
- **Identify landmarks** -- recognize well-known natural and built landmarks (e.g., Eiffel Tower, Grand Canyon) and return geographic coordinates
- **Detect logos** -- find corporate and brand logos in images with bounding boxes and confidence scores
- **Moderate content (SafeSearch)** -- classify images for adult, spoof, medical, violence, and racy content with likelihood ratings
- **Localize objects** -- detect and bound multiple objects within a single image, returning labels and normalized bounding polygons
- **Search the web for matching images** -- find visually similar images, pages containing matching images, and best-guess labels from across the web
- **Extract dominant colors** -- identify the most prominent colors in an image with RGBA values and pixel fraction
- **Suggest crop regions** -- get bounding boxes for optimal crop regions at requested aspect ratios
- **Search for products visually** -- build visual product search catalogs and find matching products from query images

### Concrete Scenarios

| Scenario | Key Feature / Method |
|----------|---------------------|
| Auto-tag user-uploaded photos in a gallery | `LABEL_DETECTION` via `images.annotate` |
| Read text from scanned receipts | `TEXT_DETECTION` via `images.annotate` |
| Digitize a multi-page scanned contract (PDF) | `DOCUMENT_TEXT_DETECTION` via `files.asyncBatchAnnotate` |
| Extract handwritten notes from whiteboard photos | `DOCUMENT_TEXT_DETECTION` via `images.annotate` |
| Moderate user-generated images for explicit content | `SAFE_SEARCH_DETECTION` via `images.annotate` |
| Detect faces and estimate emotions in event photos | `FACE_DETECTION` via `images.annotate` |
| Identify landmarks in travel photos | `LANDMARK_DETECTION` via `images.annotate` |
| Find brand logos in social media images | `LOGO_DETECTION` via `images.annotate` |
| Detect and count objects in warehouse images | `OBJECT_LOCALIZATION` via `images.annotate` |
| Reverse image search for copyright checking | `WEB_DETECTION` via `images.annotate` |
| Find similar products from a product photo | `PRODUCT_SEARCH` via Product Search resources |
| Auto-crop thumbnails to focus on subjects | `CROP_HINTS` via `images.annotate` |
| Extract dominant palette for design tools | `IMAGE_PROPERTIES` via `images.annotate` |
| Batch-process thousands of images asynchronously | `images.asyncBatchAnnotate` with Cloud Storage output |

## Quick Start

### @google-cloud/vision (Node.js)

The Vision API is a Cloud API -- use `@google-cloud/vision` (not `googleapis`) for the best experience.

```typescript
import vision from "@google-cloud/vision";

// Creates a client (uses Application Default Credentials)
const client = new vision.ImageAnnotatorClient();

// Perform label detection on a local file
const [result] = await client.labelDetection("./photo.jpg");
const labels = result.labelAnnotations;
console.log("Labels:");
labels.forEach((label) => console.log(`  ${label.description} (${label.score})`));
```

### Python

```python
from google.cloud import vision

client = vision.ImageAnnotatorClient()

# From a Cloud Storage URI
image = vision.Image()
image.source.image_uri = "gs://cloud-samples-data/vision/label/wakeupcat.jpg"

response = client.label_detection(image=image)
for label in response.label_annotations:
    print(f"{label.description}: {label.score:.2f}")
```

### curl

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://vision.googleapis.com/v1/images:annotate" \
  -d '{
    "requests": [{
      "image": { "source": { "imageUri": "gs://my-bucket/photo.jpg" } },
      "features": [{ "type": "LABEL_DETECTION", "maxResults": 10 }]
    }]
  }'
```

## Key Concepts

- **Feature types**: Each analysis capability (label detection, OCR, face detection, etc.) is a separate feature you request. You can request multiple features per image in a single API call. Each feature is billed independently.
- **Image sources**: Images can be provided as base64-encoded content, a Cloud Storage URI (`gs://bucket/path`), or a publicly accessible HTTP/HTTPS URL.
- **Batch annotation**: `images:annotate` processes up to 16 images per request synchronously. `images:asyncBatchAnnotate` handles up to 2,000 images asynchronously with output to Cloud Storage.
- **File annotation**: `files:annotate` (sync, up to 5 pages) and `files:asyncBatchAnnotate` (async, up to 2,000 pages) handle PDF/TIFF documents.
- **Confidence scores**: Most features return a `score` (0.0-1.0) or likelihood enum (`VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`).
- **Bounding polygons**: Spatial features return normalized vertices (0.0-1.0) defining polygons around detected entities.
- **Text hierarchy**: OCR results include a structural hierarchy: `TextAnnotation` -> `Page` -> `Block` -> `Paragraph` -> `Word` -> `Symbol`.
- **Product Search**: A separate subsystem for building visual product search catalogs with product sets, products, and reference images.

## Resource Types

| Resource | Description |
|----------|-------------|
| **v1.images** | Synchronous and async image annotation |
| **v1.files** | Synchronous and async file (PDF/TIFF) annotation |
| **v1.operations** | Long-running operation management (get, cancel, delete, list) |
| **v1.projects.locations.productSets** | Product Search product set management |
| **v1.projects.locations.products** | Product Search product management |
| **v1.projects.locations.products.referenceImages** | Product Search reference image management |

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns with code examples |
| `gotchas.md` | Quotas, limits, pricing, common errors, debugging |
