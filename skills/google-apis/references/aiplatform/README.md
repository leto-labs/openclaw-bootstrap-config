# Vertex AI API

> Google's unified, open platform for building, deploying, and scaling generative AI and machine learning models and applications.

## Overview

- **API**: `aiplatform`
- **Version**: `v1`
- **Base URL**: `https://{LOCATION}-aiplatform.googleapis.com/v1/`
- **Docs**: [https://cloud.google.com/vertex-ai/](https://cloud.google.com/vertex-ai/)

## When to Use

Vertex AI is the enterprise-grade platform for generative AI and ML on Google Cloud. Use it when you need:

- **Gemini models with enterprise controls** -- IAM, VPC Service Controls, data residency, audit logging, and CMEK encryption that the direct Gemini API (AI Studio) does not provide
- **Multi-model access** -- Access 200+ models (Gemini, Claude, Llama, Mistral, etc.) through a single API with Model Garden
- **Custom model training** -- Fine-tune foundation models (SFT, PEFT) or train custom models on your own data with managed infrastructure
- **Production ML pipelines** -- End-to-end MLOps with Vertex AI Pipelines, model registry, monitoring, and A/B testing
- **Grounding and RAG** -- Ground model responses with Google Search, your own data, or enterprise knowledge bases via RAG Engine
- **Batch prediction** -- Process large volumes offline at lower cost than real-time inference
- **Agent building** -- Build and deploy AI agents with Agent Builder, Agent Development Kit (ADK), and Agent Engine
- **Model evaluation** -- Systematically evaluate and compare model performance with the Gen AI Evaluation Service

### Vertex AI vs Google AI Studio (Direct Gemini API)

| Consideration | Vertex AI | Google AI Studio |
|---|---|---|
| **Target** | Production workloads, enterprise | Prototyping, personal projects |
| **Auth** | GCP IAM, service accounts, OAuth | API key only |
| **Models** | Gemini + 200+ partner/open models | Gemini only |
| **Security** | VPC-SC, CMEK, audit logs, data residency | Basic |
| **Fine-tuning** | SFT, PEFT, custom training | Limited tuning |
| **MLOps** | Pipelines, model registry, monitoring | None |
| **Pricing** | Pay-as-you-go, provisioned throughput | Pay-as-you-go, free tier |
| **Grounding** | Google Search, custom data, RAG Engine | Google Search |
| **Batch** | Yes (JSONL via Cloud Storage) | No |
| **Region control** | Yes (per-request region selection) | Limited |

**Rule of thumb**: Use AI Studio for quick experiments with Gemini. Use Vertex AI when you need enterprise security, multi-model access, custom training, or production-grade MLOps.

## Key Capabilities

- **Generative AI**: Text generation, multimodal (image/audio/video), chat, function calling, structured output, embeddings, grounding, context caching
- **Model Garden**: 200+ models including Gemini, Claude, Llama, Mistral as fully managed Model-as-a-Service APIs
- **Custom Training**: AutoML, custom training jobs with managed GPU/TPU infrastructure
- **Agent Builder**: Build, orchestrate (ADK), and deploy (Agent Engine) AI agents at scale
- **MLOps**: Pipelines, model registry, model monitoring, feature store, vector search, experiments
- **Evaluation**: Gen AI Evaluation Service for systematic model and agent assessment
- **Safety**: Model Armor, configurable safety settings, responsible AI features

## Quick Start

### Gen AI SDK (Python, recommended for Gemini)

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

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const aiplatform = google.aiplatform('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: ['https://www.googleapis.com/auth/cloud-platform'],
});
google.options({ auth });

// Example: list models, endpoints, datasets, etc.
// const res = await aiplatform.projects.locations.models.list({ parent: 'projects/PROJECT/locations/LOCATION' });
```

### curl (REST)

```bash
# Text generation with Gemini
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  "https://us-central1-aiplatform.googleapis.com/v1/projects/PROJECT_ID/locations/us-central1/publishers/google/models/gemini-2.0-flash-001:generateContent" \
  -d '{"contents": [{"role": "user", "parts": [{"text": "Hello"}]}]}'
```

### OpenAI-Compatible Endpoint

```python
import openai
from google.auth import default
import google.auth.transport.requests

credentials, _ = default(scopes=["https://www.googleapis.com/auth/cloud-platform"])
credentials.refresh(google.auth.transport.requests.Request())

client = openai.OpenAI(
    base_url=f"https://us-central1-aiplatform.googleapis.com/v1/projects/PROJECT_ID/locations/us-central1/endpoints/openapi",
    api_key=credentials.token,
)
response = client.chat.completions.create(
    model="google/gemini-2.0-flash-001",
    messages=[{"role": "user", "content": "Hello"}],
)
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns (Gemini generation, multimodal, streaming, function calling, embeddings, batch, grounding, caching, etc.) |
| `gotchas.md` | Rate limits, quotas, regional availability, pricing tiers, model versioning, common errors |
