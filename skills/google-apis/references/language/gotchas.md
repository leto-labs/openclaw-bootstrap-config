# Cloud Natural Language API - Gotchas & Troubleshooting

## Rate Limits

- Check quotas at [Google Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/language.googleapis.com/quotas)
- Default rate limit: **600 requests per minute** per project
- Can be increased via the Cloud Console quota page

## Content Limits

| Limit | Value |
|-------|-------|
| **Maximum document size** | **1 MB** (1,000,000 bytes) of text content |
| **Minimum for `classifyText`** | **20 words** (shorter text will return an error) |
| **Minimum for `moderateText`** | Non-empty text required |
| **Maximum `gcsContentUri` file size** | Same 1 MB limit applies to GCS files |

Content limits are measured in **bytes**, not characters. Character count varies depending on encoding (UTF-8 characters may be 1-4 bytes each). If your text exceeds the limit, split it into chunks and process each separately.

## Pricing

The Natural Language API uses a **per-request pricing model** based on "units." Each document sent counts as at least one unit. A unit is 1,000 characters; documents longer than 1,000 characters are charged additional units proportionally.

| Feature | Price per 1,000 units (5K-1M monthly) | Free tier |
|---------|----------------------------------------|-----------|
| Sentiment Analysis | $1.00 | First 5,000 units/month |
| Entity Analysis | $1.00 | First 5,000 units/month |
| Syntax Analysis | $0.50 | First 5,000 units/month |
| Entity Sentiment Analysis | $2.00 | First 5,000 units/month |
| Content Classification | $2.00 | First 30,000 units/month |
| Text Moderation | $2.00 | First 5,000 units/month |

**Cost optimization tips**:
- Use `annotateText` to combine sentiment, entity, and syntax analysis in one call (charged per-feature, but saves on request overhead)
- Use the `fields` parameter to limit response size
- Batch intelligently to stay within free tier limits

## Sentiment Score and Magnitude Interpretation

Understanding sentiment values is critical. The API returns two values:

- **`score`** -- ranges from **-1.0** (negative) to **1.0** (positive). Indicates overall emotional direction.
- **`magnitude`** -- ranges from **0.0** to **+inf**. Indicates amount of emotional content (not normalized for document-level sentiment; proportional to document length).

### Interpreting the Combination

| Sentiment | Typical Score | Typical Magnitude |
|-----------|---------------|-------------------|
| Clearly Positive | 0.25 to 1.0 | 1.0+ |
| Clearly Negative | -1.0 to -0.25 | 1.0+ |
| Neutral | -0.1 to 0.1 | Low (< 1.0) |
| Mixed (both positive and negative) | Near 0.0 | **High** (2.0+) |

**Key insight**: A score near 0.0 with **high** magnitude means the document has strong emotions in both directions (mixed), not that it is neutral. A truly neutral document has both score near 0.0 **and** low magnitude.

**For sentence-level sentiment**: `magnitude` is normalized between 0.0 and 1.0 (unlike document-level which grows with text length).

**Threshold recommendations**: Google suggests starting with a threshold of 0.25 for "clearly positive" and adjusting after reviewing results from your specific domain.

## Entity Types Reference

The Natural Language API recognizes these entity types:

| Type | Description | Example |
|------|-------------|---------|
| `PERSON` | People, including fictional | "Barack Obama", "Sherlock Holmes" |
| `LOCATION` | Physical locations, geographic features | "Mount Everest", "New York" |
| `ORGANIZATION` | Companies, agencies, institutions | "Google", "United Nations" |
| `EVENT` | Named events | "World Cup", "Hurricane Katrina" |
| `WORK_OF_ART` | Titles of creative works | "Mona Lisa", "Game of Thrones" |
| `CONSUMER_GOOD` | Products and consumer goods | "iPhone", "Toyota Camry" |
| `OTHER` | Entities that do not fit other categories | Miscellaneous |
| `PHONE_NUMBER` | Phone numbers | "+1-555-123-4567" |
| `ADDRESS` | Street addresses (with metadata: street, city, country) | "1600 Pennsylvania Ave NW" |
| `DATE` | Calendar dates (with metadata: month, day, year) | "October 7", "January 2024" |
| `NUMBER` | Numeric values (with metadata: value) | "42", "1600" |
| `PRICE` | Monetary values | "$29.99" |

**Entity mentions** are classified as either `PROPER` (proper noun) or `COMMON` (common noun / pronoun).

## Language Support

**Not all features support all languages.** Check compatibility before building your pipeline:

| Feature | Full Support | Limited/Partial Support |
|---------|--------------|------------------------|
| Sentiment Analysis | English, Spanish, French, German, Italian, Portuguese, Japanese, Korean, Chinese (Simplified/Traditional) | Dutch, Russian, Arabic, Hindi, Indonesian, and others |
| Entity Analysis | English, Spanish, French, German, Italian, Portuguese, Japanese, Korean, Chinese | Similar extended set |
| Syntax Analysis | English, Spanish, French, German, Italian, Portuguese, Japanese, Korean, Chinese | Fewer languages than sentiment |
| Content Classification | English, Spanish, Portuguese, French, Italian, German, Chinese, Japanese, Korean | Limited set |
| Text Moderation | English, Spanish, Portuguese, French, Italian, German, Chinese, Japanese, Korean | Dutch, Russian, Hindi, Indonesian, Arabic (limited) |

If a language is not specified, the API auto-detects it. The response includes `language_code` and `language_supported` fields.

**Gotcha**: If the auto-detected language is not supported for the requested feature, the API returns an error. Always check `language_supported` in the response or specify the language explicitly.

## Moderation Safety Categories

The `moderateText` method returns confidence scores (0.0 to 1.0) for these 16 categories:

| Category | Description |
|----------|-------------|
| Toxic | Rude, disrespectful, or unreasonable content |
| Derogatory | Negative comments targeting identity/protected attributes |
| Violent | Violence against individuals/groups, or descriptions of gore |
| Sexual | References to sexual acts or lewd content |
| Insult | Insulting, inflammatory, or negative comments towards people |
| Profanity | Obscene or vulgar language |
| Death, Harm & Tragedy | Deaths, tragedies, accidents, disasters, self-harm |
| Firearms & Weapons | Mentions of weapons and accessories |
| Public Safety | Services/organizations providing relief and public safety |
| Health | Health conditions, medical therapies, medication |
| Religion & Belief | Belief systems, faith, spiritual practices |
| Illicit Drugs | Recreational/illicit drugs, drug paraphernalia |
| War & Conflict | War, military conflicts, discussion of military services |
| Finance | Financial services: banking, loans, credit, investing, insurance |
| Politics | Political news, social/governmental/public policy discussions |
| Legal | Law-related content, legal services and publications |

**Important**: Confidence scores indicate probability of belonging to a category, **not severity**. Low-probability content can still be high-severity. Define your own thresholds per category based on your use case.

## API Version Differences (v1 vs v2)

| Feature | v1 | v2 |
|---------|----|----|
| `analyzeSentiment` | Yes | Yes |
| `analyzeEntities` | Yes (includes salience, Wikipedia metadata) | Yes (simplified: probability instead of salience, no Wikipedia metadata) |
| `analyzeEntitySentiment` | Yes | **Not available** |
| `analyzeSyntax` | Yes | Yes |
| `classifyText` | Yes | **Not available** |
| `moderateText` | Yes | **Not available** |
| `annotateText` | Yes | Yes |

**Key differences**: v2 simplifies entity analysis (replaces `salience` with `probability` on mentions, removes Wikipedia/Knowledge Graph metadata). Use v1 if you need `classifyText`, `moderateText`, `analyzeEntitySentiment`, or Wikipedia entity metadata.

## Common Errors

| Code | gRPC Code | Meaning | Fix |
|------|-----------|---------|-----|
| 400 | `INVALID_ARGUMENT` | Text too short for `classifyText`, unsupported language, bad encoding, or empty content | Check minimum text length (20 words for classification), verify language support |
| 401 | `UNAUTHENTICATED` | Missing or invalid credentials | Run `gcloud auth application-default login` or check service account key |
| 403 | `PERMISSION_DENIED` | API not enabled or insufficient IAM permissions | Enable `language.googleapis.com`, check IAM roles |
| 429 | `RESOURCE_EXHAUSTED` | Quota exceeded | Implement exponential backoff, request quota increase |
| 500 | `INTERNAL` | Server error | Retry with exponential backoff |
| 503 | `UNAVAILABLE` | Service temporarily unavailable | Retry with exponential backoff |

## Exponential Backoff

Google APIs require exponential backoff for retries:

```typescript
async function withBackoff<T>(fn: () => Promise<T>, maxRetries = 5): Promise<T> {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await fn();
    } catch (err: any) {
      const retryableCodes = [8, 13, 14]; // RESOURCE_EXHAUSTED, INTERNAL, UNAVAILABLE
      if (i === maxRetries - 1 || !retryableCodes.includes(err.code)) throw err;
      const delay = Math.pow(2, i) * 1000 + Math.random() * 1000;
      await new Promise(r => setTimeout(r, delay));
    }
  }
  throw new Error('Unreachable');
}
```

## Common Gotchas

- **HTML content**: Set `type` to `HTML` (not `PLAIN_TEXT`) when analyzing HTML. The API will strip tags and analyze the text content.
- **Encoding matters**: Always pass `encodingType: "UTF8"` (or your text's encoding) to get correct character offsets in the response. Without it, all offsets will be `-1`.
- **`classifyText` minimum text**: The document must contain at least 20 words, otherwise the API returns an `INVALID_ARGUMENT` error. This is not documented prominently.
- **`classifyText` and `moderateText` are v1 only**: These methods are not available in the v2 API. Use `language_v1` client libraries for these features.
- **Entity metadata varies by version**: v1 returns `salience` (0.0-1.0 indicating importance to the document) and Wikipedia/Knowledge Graph metadata (`mid`, `wikipedia_url`). v2 drops these in favor of `probability` on mentions.
- **GCS URIs must be accessible**: When using `gcsContentUri`, the service account must have `storage.objects.get` permission on the GCS object.
- **No batch API**: Unlike some Google APIs, Natural Language does not have a batch endpoint. Process documents individually or use Cloud Functions / Cloud Run for parallel processing.
- **Sentiment is not emotion**: The API detects positive/negative polarity, not specific emotions (happy, sad, angry). A score of -0.8 could mean sad, angry, or frustrated -- the API does not distinguish.
- **Document language**: Auto-detection works well for longer texts but can be unreliable for very short strings (< 20 characters). Specify `language_code` explicitly when possible.
- **Content classification returns only specific categories**: The API filters results to return only the most specific matching category. For example, if both `/Science` and `/Science/Astronomy` match, only `/Science/Astronomy` is returned.

## Tips

- Always enable `language.googleapis.com` in your GCP project before making calls
- Use `annotateText` to combine multiple analyses in one request when you need more than one feature
- For batch processing large document sets, use Cloud Functions or Dataflow to parallelize API calls
- The `fields` parameter can be used in REST requests to limit response size and reduce latency
- For real-time applications, consider caching results for identical text inputs since the API is deterministic
- When comparing sentiment across documents of different lengths, use `magnitude` to normalize -- a long document with many emotional sentences will have higher magnitude than a short one with the same score
