# Vertex AI API - Common Patterns

## Generative AI Patterns (Gemini)

### Generate Text with Gemini

Use `generateContent` for single-turn text generation. The Vertex AI endpoint is region-specific.

```python
from google import genai
from google.genai.types import HttpOptions

client = genai.Client(http_options=HttpOptions(api_version="v1"))
response = client.models.generate_content(
    model="gemini-2.5-flash",
    contents="How does AI work?",
)
print(response.text)
```

**curl (REST API)**:

```bash
PROJECT_ID="your-project-id"
LOCATION="us-central1"
MODEL="gemini-2.0-flash-001"

curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://${LOCATION}-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/${LOCATION}/publishers/google/models/${MODEL}:generateContent" \
  -d '{
    "contents": [{"role": "user", "parts": [{"text": "Explain quantum computing"}]}],
    "generationConfig": {
      "temperature": 0.7,
      "maxOutputTokens": 1024,
      "topP": 0.95
    }
  }'
```

### Streaming Responses

Use `streamGenerateContent` (REST) or `generate_content_stream` (SDK) for token-by-token streaming. Essential for chat UIs and long-form generation.

```python
from google import genai
from google.genai.types import HttpOptions

client = genai.Client(http_options=HttpOptions(api_version="v1"))

for chunk in client.models.generate_content_stream(
    model="gemini-2.5-flash",
    contents="Why is the sky blue?",
):
    print(chunk.text, end="")
```

### Multimodal Input (Image + Text)

Gemini models accept text, images, audio, video, and PDFs in the same request. Use `Part.from_uri` for Cloud Storage or `inlineData` for base64-encoded content.

```python
from google import genai
from google.genai.types import HttpOptions, Part

client = genai.Client(http_options=HttpOptions(api_version="v1"))
response = client.models.generate_content(
    model="gemini-2.5-flash",
    contents=[
        "What is shown in this image?",
        Part.from_uri(
            file_uri="gs://your-bucket/image.jpg",
            mime_type="image/jpeg",
        ),
    ],
)
print(response.text)
```

Supported MIME types include: `image/png`, `image/jpeg`, `image/webp`, `application/pdf`, `audio/mpeg`, `audio/wav`, `video/mp4`, `video/mov`, `text/plain`.

### Multi-Turn Chat Sessions

For conversational flows, maintain a `contents` array with alternating `user` and `model` roles.

```python
from google import genai
from google.genai.types import HttpOptions, Content, Part

client = genai.Client(http_options=HttpOptions(api_version="v1"))

chat_history = [
    Content(role="user", parts=[Part(text="What is the capital of France?")]),
    Content(role="model", parts=[Part(text="The capital of France is Paris.")]),
    Content(role="user", parts=[Part(text="What is its population?")]),
]

response = client.models.generate_content(
    model="gemini-2.5-flash",
    contents=chat_history,
)
print(response.text)
```

### System Instructions

Steer model behavior with `systemInstruction`. The system instruction role field is ignored; only the text matters.

```python
from google import genai
from google.genai.types import HttpOptions

client = genai.Client(http_options=HttpOptions(api_version="v1"))
response = client.models.generate_content(
    model="gemini-2.5-flash",
    contents="Explain recursion",
    config={
        "system_instruction": "You are a helpful programming tutor. Answer concisely with code examples.",
        "temperature": 0.3,
    },
)
print(response.text)
```

### Function Calling

Declare functions the model can call. The model returns a `functionCall` part; you execute it and return a `functionResponse`.

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://${LOCATION}-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/${LOCATION}/publishers/google/models/gemini-2.0-flash-001:generateContent" \
  -d '{
    "contents": [{"role": "user", "parts": [{"text": "What is the weather in London?"}]}],
    "tools": [{
      "functionDeclarations": [{
        "name": "get_weather",
        "description": "Get the current weather for a location",
        "parameters": {
          "type": "object",
          "properties": {
            "location": {"type": "string", "description": "City name"}
          },
          "required": ["location"]
        }
      }]
    }]
  }'
```

After receiving the `functionCall` response, send back the result:

```json
{
  "contents": [
    {"role": "user", "parts": [{"text": "What is the weather in London?"}]},
    {"role": "model", "parts": [{"functionCall": {"name": "get_weather", "args": {"location": "London"}}}]},
    {"role": "function", "parts": [{"functionResponse": {"name": "get_weather", "response": {"temperature": 15, "condition": "cloudy"}}}]}
  ]
}
```

### Structured Output (JSON Mode)

Force the model to return valid JSON by setting `responseMimeType` and optionally a `responseSchema`.

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://${LOCATION}-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/${LOCATION}/publishers/google/models/gemini-2.0-flash-001:generateContent" \
  -d '{
    "contents": [{"role": "user", "parts": [{"text": "List 3 planets with their diameter in km"}]}],
    "generationConfig": {
      "responseMimeType": "application/json",
      "responseSchema": {
        "type": "array",
        "items": {
          "type": "object",
          "properties": {
            "name": {"type": "string"},
            "diameter_km": {"type": "number"}
          },
          "required": ["name", "diameter_km"]
        }
      }
    }
  }'
```

### Embeddings

Use `text-embedding` or `gemini-embedding` models. Each request supports up to 250 input texts and 20,000 tokens. Only the first 2,048 tokens per input are used.

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://${LOCATION}-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/${LOCATION}/publishers/google/models/text-embedding-005:predict" \
  -d '{
    "instances": [{"content": "What is machine learning?"}],
    "parameters": {"outputDimensionality": 768}
  }'
```

### Batch Prediction

For high-volume offline processing. Input is a JSONL file in Cloud Storage; results are written to a Cloud Storage output URI. No predefined quota limits for Gemini batch inference -- resources are dynamically allocated.

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://${LOCATION}-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/${LOCATION}/batchPredictionJobs" \
  -d '{
    "displayName": "batch-gemini-job",
    "model": "publishers/google/models/gemini-2.0-flash-001",
    "inputConfig": {
      "instancesFormat": "jsonl",
      "gcsSource": {"uris": ["gs://your-bucket/input.jsonl"]}
    },
    "outputConfig": {
      "predictionsFormat": "jsonl",
      "gcsDestination": {"outputUriPrefix": "gs://your-bucket/output/"}
    }
  }'
```

### Grounding with Google Search

Reduce hallucinations by grounding model responses with Google Search or your own data.

```bash
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://${LOCATION}-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/${LOCATION}/publishers/google/models/gemini-2.0-flash-001:generateContent" \
  -d '{
    "contents": [{"role": "user", "parts": [{"text": "What were the latest Nobel Prize winners?"}]}],
    "tools": [{"googleSearchRetrieval": {}}]
  }'
```

### Safety Settings

Configure per-request content filtering thresholds. Categories: `HARM_CATEGORY_SEXUALLY_EXPLICIT`, `HARM_CATEGORY_HATE_SPEECH`, `HARM_CATEGORY_HARASSMENT`, `HARM_CATEGORY_DANGEROUS_CONTENT`.

```json
{
  "safetySettings": [
    {"category": "HARM_CATEGORY_HARASSMENT", "threshold": "BLOCK_ONLY_HIGH"},
    {"category": "HARM_CATEGORY_DANGEROUS_CONTENT", "threshold": "BLOCK_MEDIUM_AND_ABOVE"}
  ]
}
```

Threshold values: `OFF`, `BLOCK_NONE`, `BLOCK_LOW_AND_ABOVE`, `BLOCK_MEDIUM_AND_ABOVE`, `BLOCK_ONLY_HIGH`.

### Context Caching

Cache large contexts (system instructions, documents) to avoid re-sending them on every request. Reduces costs and latency for repeated prompts against the same context.

```bash
# Create a cached content resource
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://${LOCATION}-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/${LOCATION}/cachedContents" \
  -d '{
    "model": "publishers/google/models/gemini-2.0-flash-001",
    "contents": [{"role": "user", "parts": [{"text": "...large document text..."}]}],
    "ttl": "3600s"
  }'

# Use the cached content in subsequent requests
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://${LOCATION}-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/${LOCATION}/publishers/google/models/gemini-2.0-flash-001:generateContent" \
  -d '{
    "cachedContent": "projects/PROJECT_ID/locations/LOCATION/cachedContents/CACHE_ID",
    "contents": [{"role": "user", "parts": [{"text": "Summarize the document"}]}]
  }'
```

### Thinking Mode (Gemini 2.5+)

Enable extended reasoning for complex tasks. The model produces internal `thought` parts before the final answer.

```json
{
  "generationConfig": {
    "thinkingConfig": {
      "thinkingBudget": 4096
    }
  }
}
```

Thinking levels: `LOW`, `HIGH`. Budget controls max thinking tokens (default up to 8,192).

### OpenAI-Compatible Endpoint

Vertex AI supports an OpenAI-compatible API, allowing you to use the OpenAI SDK with Vertex AI models.

```python
from google.auth import default
import google.auth.transport.requests
import openai

credentials, _ = default(scopes=["https://www.googleapis.com/auth/cloud-platform"])
credentials.refresh(google.auth.transport.requests.Request())

client = openai.OpenAI(
    base_url=f"https://{location}-aiplatform.googleapis.com/v1/projects/{project_id}/locations/{location}/endpoints/openapi",
    api_key=credentials.token,
)

response = client.chat.completions.create(
    model="google/gemini-2.0-flash-001",
    messages=[{"role": "user", "content": "Why is the sky blue?"}],
)
print(response.choices[0].message.content)
```

## Standard CRUD Patterns

### Pagination

Most `list` methods support pagination with `pageToken`/`nextPageToken`:

```typescript
let pageToken: string | undefined;
const allItems = [];
do {
  const res = await api.resource.list({ pageToken, maxResults: 100 });
  allItems.push(...(res.data.items || []));
  pageToken = res.data.nextPageToken;
} while (pageToken);
```

### Create / Insert

```typescript
const res = await api.resource.create({
  requestBody: { /* fields */ },
});
```

### Get by ID

```typescript
const res = await api.resource.get({ id: 'resource-id' });
```

### Update / Patch

```typescript
const res = await api.resource.patch({
  id: 'resource-id',
  requestBody: { /* updated fields */ },
});
```

### Delete

```typescript
const res = await api.resource.delete({ id: 'resource-id' });
```

## Error Handling

```typescript
try {
  const res = await api.resource.method({ ... });
} catch (err: any) {
  if (err.code === 429) {
    // Rate limited — implement exponential backoff
  } else if (err.code === 403) {
    // Permission denied — check scopes and API enablement
  } else if (err.code === 404) {
    // Not found
  }
  console.error(err.message);
}
```

## Batch Requests

For multiple independent operations, use batch requests to reduce round trips:

```typescript
// googleapis supports batching via gaxios or manual HTTP batch
// See references/googleapis-client.md for batch patterns
```
