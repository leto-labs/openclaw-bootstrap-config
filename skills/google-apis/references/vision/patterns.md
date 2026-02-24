# Cloud Vision API - Common Patterns

Real-world workflow patterns for the Cloud Vision API with code examples.

## Label Detection

Classify images with generalized labels. Returns descriptions, confidence scores, and topicality ratings.

### Node.js

```typescript
import vision from "@google-cloud/vision";
const client = new vision.ImageAnnotatorClient();

// From a local file
const [result] = await client.labelDetection("./photo.jpg");
const labels = result.labelAnnotations;
for (const label of labels) {
  console.log(`${label.description}: score=${label.score}, topicality=${label.topicality}`);
}
```

### Python

```python
from google.cloud import vision

client = vision.ImageAnnotatorClient()
image = vision.Image()
image.source.image_uri = "gs://my-bucket/photo.jpg"

response = client.label_detection(image=image, max_results=10)
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

---

## Text Detection (OCR) -- Sparse Text

Use `TEXT_DETECTION` for images with sparse text (signs, labels, short captions). Returns both individual word annotations (`textAnnotations`) and the full structural hierarchy (`fullTextAnnotation`).

### Node.js

```typescript
const [result] = await client.textDetection("./sign.jpg");
const detections = result.textAnnotations;

// First element is the full detected text
console.log("Full text:", detections[0].description);

// Remaining elements are individual words with bounding boxes
for (const text of detections.slice(1)) {
  console.log(`Word: "${text.description}" at`, text.boundingPoly.vertices);
}
```

### Python

```python
response = client.text_detection(image=image)
texts = response.text_annotations

# First annotation is the entire detected text
print("Full text:", texts[0].description)

# Individual words
for text in texts[1:]:
    print(f'Word: "{text.description}"')
    vertices = [(v.x, v.y) for v in text.bounding_poly.vertices]
    print(f"  Bounds: {vertices}")
```

---

## Document Text Detection (Dense Text / Handwriting)

Use `DOCUMENT_TEXT_DETECTION` for dense text documents and handwritten content. Optimized for document layouts. Returns the full text hierarchy.

### Node.js

```typescript
const [result] = await client.documentTextDetection("./document.jpg");
const fullText = result.fullTextAnnotation;

console.log("Full text:", fullText.text);

// Walk the structural hierarchy
for (const page of fullText.pages) {
  for (const block of page.blocks) {
    console.log(`Block (confidence: ${block.confidence}):`);
    for (const paragraph of block.paragraphs) {
      const paraText = paragraph.words
        .map((w) => w.symbols.map((s) => s.text).join(""))
        .join(" ");
      console.log(`  Paragraph: ${paraText}`);
    }
  }
}
```

### Python

```python
response = client.document_text_detection(image=image)
document = response.full_text_annotation

print("Full text:", document.text)

for page in document.pages:
    for block in page.blocks:
        print(f"Block confidence: {block.confidence:.2f}")
        for paragraph in block.paragraphs:
            para_text = ""
            for word in paragraph.words:
                word_text = "".join([symbol.text for symbol in word.symbols])
                para_text += word_text + " "
            print(f"  Paragraph: {para_text.strip()}")
```

---

## PDF / TIFF OCR (Async Batch)

Process multi-page PDF or TIFF files stored in Cloud Storage. Results are written to a Cloud Storage output location as JSON.

### Node.js

```typescript
const inputConfig = {
  mimeType: "application/pdf",
  gcsSource: { uri: "gs://my-bucket/document.pdf" },
};

const outputConfig = {
  gcsDestination: { uri: "gs://my-bucket/output/" },
  batchSize: 100, // pages per output JSON file
};

const features = [{ type: "DOCUMENT_TEXT_DETECTION" }];

const request = {
  requests: [
    {
      inputConfig,
      features,
      outputConfig,
    },
  ],
};

const [operation] = await client.asyncBatchAnnotateFiles(request);
const [filesResponse] = await operation.promise();
const outputUri = filesResponse.responses[0].outputConfig.gcsDestination.uri;
console.log("Output written to:", outputUri);
```

### Python

```python
from google.cloud import vision

client = vision.ImageAnnotatorClient()

feature = vision.Feature(type_=vision.Feature.Type.DOCUMENT_TEXT_DETECTION)
gcs_source = vision.GcsSource(uri="gs://my-bucket/document.pdf")
input_config = vision.InputConfig(gcs_source=gcs_source, mime_type="application/pdf")

gcs_destination = vision.GcsDestination(uri="gs://my-bucket/output/")
output_config = vision.OutputConfig(gcs_destination=gcs_destination, batch_size=100)

async_request = vision.AsyncAnnotateFileRequest(
    features=[feature], input_config=input_config, output_config=output_config
)

operation = client.async_batch_annotate_files(requests=[async_request])
result = operation.result(timeout=300)
output_uri = result.responses[0].output_config.gcs_destination.uri
print(f"Output written to: {output_uri}")
```

---

## Face Detection

Locate faces, identify facial landmarks (eyes, nose, mouth, etc.), and estimate emotional likelihoods. Does NOT support individual facial recognition.

### Node.js

```typescript
const [result] = await client.faceDetection("./people.jpg");
const faces = result.faceAnnotations;

for (const face of faces) {
  console.log(`Face (confidence: ${face.detectionConfidence}):`);
  console.log(`  Joy: ${face.joyLikelihood}`);
  console.log(`  Sorrow: ${face.sorrowLikelihood}`);
  console.log(`  Anger: ${face.angerLikelihood}`);
  console.log(`  Surprise: ${face.surpriseLikelihood}`);
  console.log(`  Under-exposed: ${face.underExposedLikelihood}`);
  console.log(`  Blurred: ${face.blurredLikelihood}`);
  console.log(`  Headwear: ${face.headwearLikelihood}`);

  // Bounding polygon
  const bounds = face.boundingPoly.vertices.map((v) => `(${v.x},${v.y})`);
  console.log(`  Bounds: ${bounds.join(", ")}`);
}
```

### Python

```python
response = client.face_detection(image=image)
faces = response.face_annotations

likelihood_names = {0: "UNKNOWN", 1: "VERY_UNLIKELY", 2: "UNLIKELY",
                    3: "POSSIBLE", 4: "LIKELY", 5: "VERY_LIKELY"}

for face in faces:
    print(f"Detection confidence: {face.detection_confidence:.2f}")
    print(f"  Joy: {likelihood_names[face.joy_likelihood]}")
    print(f"  Sorrow: {likelihood_names[face.sorrow_likelihood]}")
    print(f"  Anger: {likelihood_names[face.anger_likelihood]}")
    print(f"  Surprise: {likelihood_names[face.surprise_likelihood]}")
```

---

## Landmark Detection

Recognize famous natural and built landmarks. Returns the landmark name, confidence score, bounding box, and geographic coordinates.

### Node.js

```typescript
const [result] = await client.landmarkDetection("./travel-photo.jpg");
const landmarks = result.landmarkAnnotations;

for (const landmark of landmarks) {
  console.log(`${landmark.description} (score: ${landmark.score})`);
  for (const location of landmark.locations) {
    const { latitude, longitude } = location.latLng;
    console.log(`  Location: ${latitude}, ${longitude}`);
  }
}
```

### Python

```python
response = client.landmark_detection(image=image)
landmarks = response.landmark_annotations

for landmark in landmarks:
    print(f"{landmark.description}: {landmark.score:.2f}")
    for location in landmark.locations:
        lat_lng = location.lat_lng
        print(f"  Location: {lat_lng.latitude}, {lat_lng.longitude}")
```

---

## Logo Detection

Find brand and corporate logos in images.

### Node.js

```typescript
const [result] = await client.logoDetection("./product-photo.jpg");
const logos = result.logoAnnotations;

for (const logo of logos) {
  console.log(`Logo: ${logo.description} (score: ${logo.score})`);
}
```

### Python

```python
response = client.logo_detection(image=image)
logos = response.logo_annotations

for logo in logos:
    print(f"{logo.description}: {logo.score:.2f}")
```

---

## Safe Search (Explicit Content Detection)

Detect explicit, violent, medical, or spoof content. Returns likelihood ratings for each category.

### Node.js

```typescript
const [result] = await client.safeSearchDetection("./image.jpg");
const safe = result.safeSearchAnnotation;

console.log(`Adult: ${safe.adult}`);
console.log(`Spoof: ${safe.spoof}`);
console.log(`Medical: ${safe.medical}`);
console.log(`Violence: ${safe.violence}`);
console.log(`Racy: ${safe.racy}`);

// Filter logic: block if LIKELY or VERY_LIKELY
const blocked = ["LIKELY", "VERY_LIKELY"];
if (blocked.includes(safe.adult) || blocked.includes(safe.violence)) {
  console.log("Image blocked for explicit content");
}
```

### Python

```python
response = client.safe_search_detection(image=image)
safe = response.safe_search_annotation

print(f"Adult: {safe.adult.name}")
print(f"Violence: {safe.violence.name}")
print(f"Racy: {safe.racy.name}")
```

---

## Object Localization

Detect and locate multiple objects in an image. Returns labels and normalized bounding polygons.

### Node.js

```typescript
const [result] = await client.objectLocalization("./street-scene.jpg");
const objects = result.localizedObjectAnnotations;

for (const obj of objects) {
  console.log(`${obj.name} (confidence: ${obj.score})`);
  const vertices = obj.boundingPoly.normalizedVertices;
  console.log(
    `  Bounds:`,
    vertices.map((v) => `(${v.x.toFixed(3)}, ${v.y.toFixed(3)})`)
  );
}
```

### Python

```python
response = client.object_localization(image=image)
objects = response.localized_object_annotations

for obj in objects:
    print(f"{obj.name}: {obj.score:.2f}")
    for vertex in obj.bounding_poly.normalized_vertices:
        print(f"  ({vertex.x:.3f}, {vertex.y:.3f})")
```

---

## Web Detection

Find visually similar images, matching pages, and best-guess labels from across the web.

### Node.js

```typescript
const [result] = await client.webDetection("./photo.jpg");
const web = result.webDetection;

// Best guess labels
for (const label of web.bestGuessLabels || []) {
  console.log(`Best guess: ${label.label}`);
}

// Web entities (inferred topics)
for (const entity of web.webEntities || []) {
  console.log(`Entity: ${entity.description} (score: ${entity.score})`);
}

// Full matching images
for (const match of web.fullMatchingImages || []) {
  console.log(`Full match: ${match.url}`);
}

// Pages with matching images
for (const page of web.pagesWithMatchingImages || []) {
  console.log(`Page: ${page.url} - ${page.pageTitle}`);
}

// Visually similar images
for (const similar of web.visuallySimilarImages || []) {
  console.log(`Similar: ${similar.url}`);
}
```

---

## Batch Image Annotation (Multiple Features per Image)

Request multiple feature detections on the same image in a single API call. Each feature is billed separately.

### Node.js

```typescript
const request = {
  image: { source: { imageUri: "gs://my-bucket/photo.jpg" } },
  features: [
    { type: "LABEL_DETECTION", maxResults: 10 },
    { type: "FACE_DETECTION", maxResults: 5 },
    { type: "SAFE_SEARCH_DETECTION" },
    { type: "IMAGE_PROPERTIES" },
  ],
};

const [result] = await client.annotateImage(request);
console.log("Labels:", result.labelAnnotations?.length);
console.log("Faces:", result.faceAnnotations?.length);
console.log("SafeSearch:", result.safeSearchAnnotation);
console.log("Colors:", result.imagePropertiesAnnotation?.dominantColors);
```

### curl (multiple images, multiple features)

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://vision.googleapis.com/v1/images:annotate" \
  -d '{
    "requests": [
      {
        "image": { "source": { "imageUri": "gs://bucket/img1.jpg" } },
        "features": [
          { "type": "LABEL_DETECTION", "maxResults": 5 },
          { "type": "SAFE_SEARCH_DETECTION" }
        ]
      },
      {
        "image": { "source": { "imageUri": "gs://bucket/img2.jpg" } },
        "features": [
          { "type": "TEXT_DETECTION" },
          { "type": "OBJECT_LOCALIZATION" }
        ]
      }
    ]
  }'
```

---

## Async Batch Image Annotation

For large-scale processing (up to 2,000 images), use asynchronous batch annotation. Output is written to Cloud Storage.

### Node.js

```typescript
const request = {
  requests: [
    {
      inputConfig: {
        gcsSource: { uri: "gs://my-bucket/images/" },
        mimeType: "image/jpeg",
      },
      features: [{ type: "LABEL_DETECTION", maxResults: 10 }],
      outputConfig: {
        gcsDestination: { uri: "gs://my-bucket/output/" },
        batchSize: 50,
      },
    },
  ],
};

const [operation] = await client.asyncBatchAnnotateImages(request);
console.log("Operation started:", operation.name);
const [result] = await operation.promise();
console.log("Done. Output at:", result.outputConfig.gcsDestination.uri);
```

---

## Image Properties (Dominant Colors)

Extract the dominant colors from an image with RGBA values, confidence scores, and pixel coverage fraction.

### Node.js

```typescript
const [result] = await client.imageProperties("./photo.jpg");
const colors = result.imagePropertiesAnnotation.dominantColors.colors;

for (const color of colors) {
  const { red, green, blue } = color.color;
  console.log(
    `RGB(${red}, ${green}, ${blue}) - ${(color.pixelFraction * 100).toFixed(1)}% of pixels, score: ${color.score}`
  );
}
```

---

## Crop Hints

Get suggested crop regions for different aspect ratios.

### Node.js

```typescript
const request = {
  image: { source: { imageUri: "gs://my-bucket/photo.jpg" } },
  features: [{ type: "CROP_HINTS" }],
  imageContext: {
    cropHintsParams: {
      aspectRatios: [1.0, 1.78, 0.75], // 1:1, 16:9, 3:4
    },
  },
};

const [result] = await client.annotateImage(request);
const hints = result.cropHintsAnnotation.cropHints;

for (const hint of hints) {
  console.log(`Confidence: ${hint.confidence}, Importance: ${hint.importanceFraction}`);
  console.log(`Bounds:`, hint.boundingPoly.vertices);
}
```

---

## Product Search

Build a visual product search catalog and find matching products from images.

### Setup: Create Product Set and Products

```bash
# Create a product set
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://vision.googleapis.com/v1/projects/PROJECT_ID/locations/us-east1/productSets" \
  -d '{ "displayName": "My Product Catalog" }'

# Create a product
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://vision.googleapis.com/v1/projects/PROJECT_ID/locations/us-east1/products" \
  -d '{
    "displayName": "Blue Running Shoe",
    "productCategory": "apparel-v2",
    "productLabels": [{ "key": "color", "value": "blue" }]
  }'
```

### Search for Products

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://vision.googleapis.com/v1/images:annotate" \
  -d '{
    "requests": [{
      "image": { "source": { "imageUri": "gs://bucket/query-image.jpg" } },
      "features": [{ "type": "PRODUCT_SEARCH", "maxResults": 10 }],
      "imageContext": {
        "productSearchParams": {
          "productSet": "projects/PROJECT_ID/locations/us-east1/productSets/PRODUCT_SET_ID",
          "productCategories": ["apparel-v2"]
        }
      }
    }]
  }'
```

---

## Error Handling

Always check for errors in batch responses -- individual image results may fail independently.

### Node.js

```typescript
const [result] = await client.annotateImage(request);

if (result.error) {
  console.error(`Vision API error: ${result.error.message} (code: ${result.error.code})`);
} else {
  // Process result
}
```

### Python

```python
response = client.label_detection(image=image)

if response.error.message:
    raise Exception(f"Vision API error: {response.error.message}")

for label in response.label_annotations:
    print(label.description)
```

### Exponential Backoff

```typescript
async function withBackoff<T>(fn: () => Promise<T>, maxRetries = 5): Promise<T> {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await fn();
    } catch (err: any) {
      if (i === maxRetries - 1 || ![429, 500, 503].includes(err.code)) throw err;
      const delay = Math.pow(2, i) * 1000 + Math.random() * 1000;
      await new Promise(r => setTimeout(r, delay));
    }
  }
  throw new Error('Unreachable');
}
```
