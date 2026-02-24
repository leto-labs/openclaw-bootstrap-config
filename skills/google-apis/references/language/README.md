# Cloud Natural Language API

> The Cloud Natural Language API provides natural language understanding technologies including sentiment analysis, entity recognition, entity sentiment analysis, content classification, syntax analysis, and text moderation.

## Overview

- **API**: `language`
- **Version**: `v2` (recommended), `v1` (legacy, still supports `classifyText` and `moderateText`)
- **Base URL**: `https://language.googleapis.com/`
- **Docs**: [https://cloud.google.com/natural-language/docs/](https://cloud.google.com/natural-language/docs/)

## When to Use

Use the Cloud Natural Language API when you need to:

- **Analyze customer feedback and reviews** -- determine whether product reviews, support tickets, or survey responses are positive, negative, or neutral using sentiment analysis. Score ranges from -1.0 (negative) to 1.0 (positive) with magnitude indicating emotional intensity.
- **Extract structured information from unstructured text** -- identify people, organizations, locations, events, dates, addresses, phone numbers, and other entities from documents, emails, or web content using entity analysis.
- **Understand sentiment toward specific entities** -- go beyond overall document sentiment to understand how users feel about individual products, features, or people mentioned in the text using entity sentiment analysis.
- **Auto-categorize content** -- classify articles, blog posts, or documents into 1,000+ content categories (e.g., `/Science/Astronomy`, `/Finance/Banking`) for content management, ad targeting, or recommendation systems.
- **Parse sentence structure programmatically** -- extract part-of-speech tags, dependency trees, lemmas, and morphological information for linguistic research, text processing pipelines, or grammar checking.
- **Moderate user-generated content** -- screen text for toxic, violent, sexual, profane, or otherwise harmful content across 16 safety categories with confidence scores for content moderation workflows.
- **Process text stored in Cloud Storage** -- analyze documents directly from GCS URIs without downloading them first, useful for batch processing pipelines.
- **Build multilingual text analysis pipelines** -- the API supports 10+ languages for most features and auto-detects language when not specified.

### When NOT to Use

- **Machine translation** -- use the Cloud Translation API instead.
- **Speech-to-text or text-to-speech** -- use Cloud Speech-to-Text or Cloud Text-to-Speech.
- **Document AI / OCR** -- use Document AI for extracting structured data from scanned documents or images.
- **Custom ML models for text** -- use Vertex AI AutoML Natural Language for domain-specific classification or entity extraction with custom training data.
- **Simple keyword matching or regex** -- if your use case is purely pattern-based, the API adds unnecessary cost and latency.

## Quick Start

### @google-cloud/language (Node.js)

```typescript
const language = require("@google-cloud/language").v2;

const client = new language.LanguageServiceClient();

// Analyze sentiment
const text = "I love this product! It works perfectly.";
const document = { content: text, type: "PLAIN_TEXT" };

const [result] = await client.analyzeSentiment({ document });
const sentiment = result.documentSentiment;
console.log(`Score: ${sentiment.score}, Magnitude: ${sentiment.magnitude}`);
// Score: 0.9, Magnitude: 1.8 (clearly positive)
```

### google-cloud-language (Python)

```python
from google.cloud import language_v2

client = language_v2.LanguageServiceClient()

text = "I love this product! It works perfectly."
document = {"content": text, "type_": language_v2.Document.Type.PLAIN_TEXT}

response = client.analyze_sentiment(
    request={"document": document, "encoding_type": language_v2.EncodingType.UTF8}
)
print(f"Score: {response.document_sentiment.score}")
print(f"Magnitude: {response.document_sentiment.magnitude}")
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
      "content": "I love this product! It works perfectly."
    }
  }' "https://language.googleapis.com/v2/documents:analyzeSentiment"
```

### gcloud CLI

```bash
gcloud ml language analyze-sentiment --content="I love this product! It works perfectly."
gcloud ml language analyze-entities --content="Google is headquartered in Mountain View, California."
```

## Reference Files

| File | Contents |
|------|----------|
| `patterns.md` | Common workflow patterns (sentiment, entities, classification, moderation, syntax, GCS, annotateText) |
| `gotchas.md` | Rate limits, content limits, pricing, entity types, sentiment interpretation, language support |
