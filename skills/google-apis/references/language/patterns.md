# Cloud Natural Language API - Common Patterns

## Sentiment Analysis

Determine the overall emotional tone of text. Returns a `score` (-1.0 to 1.0) and `magnitude` (0.0 to +inf).

### Node.js

```typescript
const language = require("@google-cloud/language").v2;
const client = new language.LanguageServiceClient();

async function analyzeSentiment(text: string) {
  const document = { content: text, type: "PLAIN_TEXT" };
  const [result] = await client.analyzeSentiment({
    document,
    encodingType: "UTF8",
  });

  const sentiment = result.documentSentiment;
  console.log(`Document sentiment score: ${sentiment.score}`);
  console.log(`Document sentiment magnitude: ${sentiment.magnitude}`);

  // Per-sentence sentiment
  for (const sentence of result.sentences) {
    console.log(`  "${sentence.text.content}"`);
    console.log(`    Score: ${sentence.sentiment.score}, Magnitude: ${sentence.sentiment.magnitude}`);
  }
}
```

### Python

```python
from google.cloud import language_v2

def analyze_sentiment(text_content: str) -> None:
    client = language_v2.LanguageServiceClient()

    document = {
        "content": text_content,
        "type_": language_v2.Document.Type.PLAIN_TEXT,
        "language_code": "en",
    }

    response = client.analyze_sentiment(
        request={"document": document, "encoding_type": language_v2.EncodingType.UTF8}
    )

    print(f"Document sentiment score: {response.document_sentiment.score}")
    print(f"Document sentiment magnitude: {response.document_sentiment.magnitude}")

    for sentence in response.sentences:
        print(f"Sentence: {sentence.text.content}")
        print(f"  Score: {sentence.sentiment.score}, Magnitude: {sentence.sentiment.magnitude}")
```

### curl

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" \
  -H "Content-Type: application/json; charset=utf-8" \
  --data '{
    "encodingType": "UTF8",
    "document": {
      "type": "PLAIN_TEXT",
      "content": "Enjoy your vacation!"
    }
  }' "https://language.googleapis.com/v2/documents:analyzeSentiment"
```

## Entity Recognition

Identify named entities (people, organizations, locations, dates, numbers, addresses, etc.) in text.

### Node.js

```typescript
const language = require("@google-cloud/language").v2;
const client = new language.LanguageServiceClient();

async function analyzeEntities(text: string) {
  const document = { content: text, type: "PLAIN_TEXT" };
  const [result] = await client.analyzeEntities({
    document,
    encodingType: "UTF8",
  });

  for (const entity of result.entities) {
    console.log(`Entity: ${entity.name}`);
    console.log(`  Type: ${entity.type}`);
    if (entity.metadata) {
      for (const [key, value] of Object.entries(entity.metadata)) {
        console.log(`  ${key}: ${value}`);
      }
    }
    for (const mention of entity.mentions) {
      console.log(`  Mention: "${mention.text.content}" (${mention.type})`);
      console.log(`    Probability: ${mention.probability}`);
    }
  }
}
```

### Python

```python
from google.cloud import language_v2

def analyze_entities(text_content: str) -> None:
    client = language_v2.LanguageServiceClient()

    document = {
        "content": text_content,
        "type_": language_v2.Document.Type.PLAIN_TEXT,
        "language_code": "en",
    }

    response = client.analyze_entities(
        request={"document": document, "encoding_type": language_v2.EncodingType.UTF8}
    )

    for entity in response.entities:
        print(f"Entity: {entity.name}")
        print(f"  Type: {language_v2.Entity.Type(entity.type_).name}")
        for metadata_name, metadata_value in entity.metadata.items():
            print(f"  {metadata_name}: {metadata_value}")
        for mention in entity.mentions:
            print(f"  Mention: {mention.text.content}")
            print(f"    Type: {language_v2.EntityMention.Type(mention.type_).name}")
            print(f"    Probability: {mention.probability}")
```

### curl

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" \
  -H "Content-Type: application/json; charset=utf-8" \
  --data '{
    "encodingType": "UTF8",
    "document": {
      "type": "PLAIN_TEXT",
      "content": "President Trump will speak from the White House, located at 1600 Pennsylvania Ave NW, Washington, DC, on October 7."
    }
  }' "https://language.googleapis.com/v2/documents:analyzeEntities"
```

## Entity Sentiment Analysis

Combine entity extraction and sentiment analysis to understand how the author feels about specific entities.

### Node.js

```typescript
const language = require("@google-cloud/language").v1;
const client = new language.LanguageServiceClient();

async function analyzeEntitySentiment(text: string) {
  const document = { content: text, type: "PLAIN_TEXT" };
  const [result] = await client.analyzeEntitySentiment({
    document,
    encodingType: "UTF8",
  });

  for (const entity of result.entities) {
    console.log(`Entity: ${entity.name}`);
    console.log(`  Overall sentiment: score=${entity.sentiment.score}, magnitude=${entity.sentiment.magnitude}`);
    console.log(`  Salience: ${entity.salience}`);

    for (const mention of entity.mentions) {
      console.log(`  Mention: "${mention.text.content}"`);
      console.log(`    Sentiment: score=${mention.sentiment.score}, magnitude=${mention.sentiment.magnitude}`);
    }
  }
}

// Example: "I love R&B music. Marvin Gaye is the best.
//           'What's Going On' is one of my favorite songs.
//           It was so sad when Marvin Gaye died."
// Result: "R&B music" has score=0.9, "Marvin Gaye" has mixed sentiment (score=0.1)
//         because he is mentioned in both positive and negative contexts.
```

### Python

```python
from google.cloud import language_v1

def analyze_entity_sentiment(text_content: str) -> None:
    client = language_v1.LanguageServiceClient()

    document = language_v1.types.Document(
        content=text_content, type_=language_v1.types.Document.Type.PLAIN_TEXT
    )

    response = client.analyze_entity_sentiment(
        request={"document": document, "encoding_type": language_v1.EncodingType.UTF8}
    )

    for entity in response.entities:
        print(f"Entity: {entity.name}")
        print(f"  Salience: {entity.salience:.3f}")
        print(f"  Sentiment: score={entity.sentiment.score:.3f}, magnitude={entity.sentiment.magnitude:.3f}")
        for mention in entity.mentions:
            print(f"  Mention: {mention.text.content}")
            print(f"    Sentiment: score={mention.sentiment.score:.3f}")
```

## Syntax Analysis

Extract linguistic structure including sentence boundaries, tokenization, part-of-speech tags, dependency trees, and lemmas.

### Node.js

```typescript
const language = require("@google-cloud/language").v2;
const client = new language.LanguageServiceClient();

async function analyzeSyntax(text: string) {
  const document = { content: text, type: "PLAIN_TEXT" };
  const [result] = await client.analyzeSyntax({
    document,
    encodingType: "UTF8",
  });

  // Sentence boundaries
  console.log("Sentences:");
  for (const sentence of result.sentences) {
    console.log(`  "${sentence.text.content}" (offset: ${sentence.text.beginOffset})`);
  }

  // Tokens with POS tags and lemmas
  console.log("Tokens:");
  for (const token of result.tokens) {
    console.log(`  ${token.text.content}`);
    console.log(`    POS: ${token.partOfSpeech.tag}`);
    console.log(`    Lemma: ${token.lemma}`);
    console.log(`    Dependency: ${token.dependencyEdge.label} -> token[${token.dependencyEdge.headTokenIndex}]`);
  }
}
```

### Python

```python
from google.cloud import language_v2

def analyze_syntax(text_content: str) -> None:
    client = language_v2.LanguageServiceClient()

    document = {
        "content": text_content,
        "type_": language_v2.Document.Type.PLAIN_TEXT,
    }

    response = client.analyze_syntax(
        request={"document": document, "encoding_type": language_v2.EncodingType.UTF8}
    )

    for token in response.tokens:
        print(f"Token: {token.text.content}")
        print(f"  POS tag: {token.part_of_speech.tag.name}")
        print(f"  Lemma: {token.lemma}")
        print(f"  Dependency: {token.dependency_edge.label.name} -> [{token.dependency_edge.head_token_index}]")
```

## Content Classification

Classify a document into 1,000+ predefined content categories. Requires at least 20 words of text.

### Node.js (v1 API -- classifyText is v1 only)

```typescript
const language = require("@google-cloud/language");
const client = new language.LanguageServiceClient();

async function classifyText(text: string) {
  const document = { content: text, type: "PLAIN_TEXT" };
  const classificationModelOptions = {
    v2Model: { contentCategoriesVersion: "V2" },
  };

  const [result] = await client.classifyText({
    document,
    classificationModelOptions,
  });

  console.log("Categories:");
  for (const category of result.categories) {
    console.log(`  ${category.name}: confidence=${category.confidence}`);
  }
}

// Example: "Google, headquartered in Mountain View, unveiled the new Android
//           phone at the Consumer Electronic Show."
// Result: /Computers & Electronics/Consumer Electronics (confidence: 0.73)
//         /Internet & Telecom/Mobile & Wireless (confidence: 0.65)
```

### Python (v1 API)

```python
from google.cloud import language_v1

def classify_text(text_content: str) -> None:
    client = language_v1.LanguageServiceClient()

    document = {"content": text_content, "type_": language_v1.Document.Type.PLAIN_TEXT, "language": "en"}

    content_categories_version = (
        language_v1.ClassificationModelOptions.V2Model.ContentCategoriesVersion.V2
    )
    response = client.classify_text(
        request={
            "document": document,
            "classification_model_options": {
                "v2_model": {"content_categories_version": content_categories_version}
            },
        }
    )

    for category in response.categories:
        print(f"Category: {category.name}")
        print(f"  Confidence: {category.confidence}")
```

### curl

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" \
  -H "Content-Type: application/json; charset=utf-8" \
  --data '{
    "document": {
      "type": "PLAIN_TEXT",
      "content": "Google, headquartered in Mountain View, unveiled the new Android phone at the Consumer Electronic Show. Sundar Pichai said in his keynote that users love their new Android phones."
    },
    "classificationModelOptions": {
      "v2Model": {
        "contentCategoriesVersion": "V2"
      }
    }
  }' "https://language.googleapis.com/v1/documents:classifyText"
```

## Text Moderation

Screen text for harmful content across 16 safety categories. Returns confidence scores (0.0 to 1.0) per category.

### curl

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" \
  -H "Content-Type: application/json; charset=utf-8" \
  --data '{
    "document": {
      "type": "PLAIN_TEXT",
      "content": "Your text to moderate here."
    }
  }' "https://language.googleapis.com/v1/documents:moderateText"
```

### Python (v1 API)

```python
from google.cloud import language_v1

def moderate_text(text_content: str) -> None:
    client = language_v1.LanguageServiceClient()

    document = language_v1.types.Document(
        content=text_content, type_=language_v1.types.Document.Type.PLAIN_TEXT
    )

    response = client.moderate_text(request={"document": document})

    for category in response.moderation_categories:
        print(f"{category.name}: {category.confidence:.2f}")
```

### Node.js (v1 API)

```typescript
const language = require("@google-cloud/language");
const client = new language.LanguageServiceClient();

async function moderateText(text: string) {
  const document = { content: text, type: "PLAIN_TEXT" };
  const [result] = await client.moderateText({ document });

  for (const category of result.moderationCategories) {
    if (category.confidence > 0.5) {
      console.log(`FLAGGED: ${category.name} (confidence: ${category.confidence})`);
    }
  }
}
```

## Analyzing Text from Cloud Storage

All analysis methods accept a `gcsContentUri` instead of inline `content`, allowing direct processing of files stored in GCS.

### Python (Sentiment from GCS)

```python
from google.cloud import language_v2

def analyze_sentiment_from_gcs(gcs_uri: str) -> None:
    client = language_v2.LanguageServiceClient()

    document = {
        "gcs_content_uri": gcs_uri,
        "type_": language_v2.Document.Type.PLAIN_TEXT,
        "language_code": "en",
    }

    response = client.analyze_sentiment(
        request={"document": document, "encoding_type": language_v2.EncodingType.UTF8}
    )

    print(f"Document sentiment score: {response.document_sentiment.score}")
    print(f"Document sentiment magnitude: {response.document_sentiment.magnitude}")
```

### Node.js (Entities from GCS)

```typescript
const language = require("@google-cloud/language").v2;
const client = new language.LanguageServiceClient();

async function analyzeEntitiesFromGCS(gcsUri: string) {
  const document = {
    gcsContentUri: gcsUri,
    type: "PLAIN_TEXT",
  };

  const [result] = await client.analyzeEntities({
    document,
    encodingType: "UTF8",
  });

  for (const entity of result.entities) {
    console.log(`${entity.name} (${entity.type})`);
  }
}
```

### curl (Entities from GCS)

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" \
  -H "Content-Type: application/json; charset=utf-8" \
  --data '{
    "document": {
      "type": "PLAIN_TEXT",
      "gcsContentUri": "gs://your-bucket/document.txt"
    }
  }' "https://language.googleapis.com/v2/documents:analyzeEntities"
```

## Multiple Operations in a Single Request (annotateText)

Perform sentiment analysis, entity analysis, and syntactic analysis in one API call to reduce latency and cost.

### Node.js

```typescript
const language = require("@google-cloud/language").v2;
const client = new language.LanguageServiceClient();

async function annotateText(text: string) {
  const document = { content: text, type: "PLAIN_TEXT" };
  const [result] = await client.annotateText({
    document,
    features: {
      extractDocumentSentiment: true,
      extractEntities: true,
      extractSyntax: true,
    },
    encodingType: "UTF8",
  });

  console.log("Sentiment:", result.documentSentiment);
  console.log("Entities:", result.entities.map((e) => e.name));
  console.log("Tokens:", result.tokens.length);
}
```

### Python

```python
from google.cloud import language_v2

def annotate_text(text_content: str) -> None:
    client = language_v2.LanguageServiceClient()

    document = {
        "content": text_content,
        "type_": language_v2.Document.Type.PLAIN_TEXT,
    }

    features = {
        "extract_document_sentiment": True,
        "extract_entities": True,
        "extract_syntax": True,
    }

    response = client.annotate_text(
        request={
            "document": document,
            "features": features,
            "encoding_type": language_v2.EncodingType.UTF8,
        }
    )

    print(f"Sentiment: score={response.document_sentiment.score}")
    print(f"Entities: {[e.name for e in response.entities]}")
    print(f"Tokens: {len(response.tokens)}")
```

### curl

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" \
  -H "Content-Type: application/json; charset=utf-8" \
  --data '{
    "document": {
      "type": "PLAIN_TEXT",
      "content": "The windy, cold weather was unbearable this winter."
    },
    "features": {
      "extractSyntax": true,
      "extractEntities": true,
      "extractDocumentSentiment": true
    },
    "encodingType": "UTF8"
  }' "https://language.googleapis.com/v2/documents:annotateText"
```

## Error Handling

```typescript
try {
  const [result] = await client.analyzeSentiment({ document });
} catch (err: any) {
  if (err.code === 3) {
    // INVALID_ARGUMENT -- text too short, unsupported language, or bad encoding
    console.error("Invalid request:", err.message);
  } else if (err.code === 7) {
    // PERMISSION_DENIED -- API not enabled or credentials lack required scope
    console.error("Permission denied:", err.message);
  } else if (err.code === 8) {
    // RESOURCE_EXHAUSTED -- quota exceeded
    console.error("Quota exceeded, retrying with backoff...");
  } else if (err.code === 13) {
    // INTERNAL -- server error, retry
    console.error("Server error, retrying...");
  }
}
```

## Batch Processing Multiple Documents

The Natural Language API processes one document per request. For batch processing, iterate over documents with rate limiting:

```python
import time
from google.cloud import language_v2

client = language_v2.LanguageServiceClient()

documents = ["First document text...", "Second document text...", "Third document text..."]

for i, text in enumerate(documents):
    document = {"content": text, "type_": language_v2.Document.Type.PLAIN_TEXT}
    response = client.analyze_sentiment(request={"document": document})
    print(f"Doc {i}: score={response.document_sentiment.score}")

    # Respect rate limits for large batches
    if i % 100 == 0 and i > 0:
        time.sleep(1)
```
