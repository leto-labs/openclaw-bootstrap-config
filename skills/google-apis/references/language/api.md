# Cloud Natural Language API - API Reference

**Version**: `v2` | **Methods**: 5 | **Schemas**: 138

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `language.documents.analyzeSentiment` | POST | `v2/documents:analyzeSentiment` | Analyzes the sentiment of the provided text. |
| `language.documents.analyzeEntities` | POST | `v2/documents:analyzeEntities` | Finds named entities (currently proper names and common nouns) in the text along with entity type... |
| `language.documents.classifyText` | POST | `v2/documents:classifyText` | Classifies a document into categories. |
| `language.documents.moderateText` | POST | `v2/documents:moderateText` | Moderates a document for harmful and sensitive categories. |
| `language.documents.annotateText` | POST | `v2/documents:annotateText` | A convenience method that provides all features in one call. |

### `language.documents.analyzeSentiment`

**POST** `v2/documents:analyzeSentiment`

Analyzes the sentiment of the provided text.

**Request body**: `AnalyzeSentimentRequest`

**Response**: `AnalyzeSentimentResponse`

```typescript
const res = await language.documents.analyzeSentiment({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-language`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `language.documents.analyzeEntities`

**POST** `v2/documents:analyzeEntities`

Finds named entities (currently proper names and common nouns) in the text along with entity types, probability, mentions for each entity, and other properties.

**Request body**: `AnalyzeEntitiesRequest`

**Response**: `AnalyzeEntitiesResponse`

```typescript
const res = await language.documents.analyzeEntities({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-language`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `language.documents.classifyText`

**POST** `v2/documents:classifyText`

Classifies a document into categories.

**Request body**: `ClassifyTextRequest`

**Response**: `ClassifyTextResponse`

```typescript
const res = await language.documents.classifyText({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-language`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `language.documents.moderateText`

**POST** `v2/documents:moderateText`

Moderates a document for harmful and sensitive categories.

**Request body**: `ModerateTextRequest`

**Response**: `ModerateTextResponse`

```typescript
const res = await language.documents.moderateText({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-language`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `language.documents.annotateText`

**POST** `v2/documents:annotateText`

A convenience method that provides all features in one call.

**Request body**: `AnnotateTextRequest`

**Response**: `AnnotateTextResponse`

```typescript
const res = await language.documents.annotateText({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-language`
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AnalyzeEntitiesRequest`

The entity analysis request message.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `Document` | Required. Input document. |
| `encodingType` | `string` | The encoding type used by the API to calculate offsets. |

### `AnalyzeEntitiesResponse`

The entity analysis response message.

| Property | Type | Description |
|----------|------|-------------|
| `entities` | `array<Entity>` | The recognized entities in the input document. |
| `languageCode` | `string` | The language of the text, which will be the same as the language specified in the request or, if ... |
| `languageSupported` | `boolean` | Whether the language is officially supported. The API may still return a response when the langua... |

### `AnalyzeSentimentRequest`

The sentiment analysis request message.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `Document` | Required. Input document. |
| `encodingType` | `string` | The encoding type used by the API to calculate sentence offsets. |

### `AnalyzeSentimentResponse`

The sentiment analysis response message.

| Property | Type | Description |
|----------|------|-------------|
| `documentSentiment` | `Sentiment` | The overall sentiment of the input document. |
| `languageCode` | `string` | The language of the text, which will be the same as the language specified in the request or, if ... |
| `languageSupported` | `boolean` | Whether the language is officially supported. The API may still return a response when the langua... |
| `sentences` | `array<Sentence>` | The sentiment for all the sentences in the document. |

### `AnnotateTextRequest`

The request message for the text annotation API, which can perform multiple analysis types in one call.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `Document` | Required. Input document. |
| `encodingType` | `string` | The encoding type used by the API to calculate offsets. |
| `features` | `AnnotateTextRequestFeatures` | Required. The enabled features. |

### `AnnotateTextRequestFeatures`

All available features. Setting each one to true will enable that specific analysis for the input.

| Property | Type | Description |
|----------|------|-------------|
| `classifyText` | `boolean` | Optional. Classify the full document into categories. |
| `extractDocumentSentiment` | `boolean` | Optional. Extract document-level sentiment. |
| `extractEntities` | `boolean` | Optional. Extract entities. |
| `moderateText` | `boolean` | Optional. Moderate the document for harmful and sensitive categories. |

### `AnnotateTextResponse`

The text annotations response message.

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<ClassificationCategory>` | Categories identified in the input document. |
| `documentSentiment` | `Sentiment` | The overall sentiment for the document. Populated if the user enables AnnotateTextRequest.Feature... |
| `entities` | `array<Entity>` | Entities, along with their semantic information, in the input document. Populated if the user ena... |
| `languageCode` | `string` | The language of the text, which will be the same as the language specified in the request or, if ... |
| `languageSupported` | `boolean` | Whether the language is officially supported by all requested features. The API may still return ... |
| `moderationCategories` | `array<ClassificationCategory>` | Harmful and sensitive categories identified in the input document. |
| `sentences` | `array<Sentence>` | Sentences in the input document. Populated if the user enables AnnotateTextRequest.Features.extra... |

### `ClassificationCategory`

Represents a category returned from the text classifier.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The classifier's confidence of the category. Number represents how certain the classifier is that... |
| `name` | `string` | The name of the category representing the document. |
| `severity` | `number` | Optional. The classifier's severity of the category. This is only present when the ModerateTextRe... |

### `ClassifyTextRequest`

The document classification request message.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `Document` | Required. Input document. |

### `ClassifyTextResponse`

The document classification response message.

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<ClassificationCategory>` | Categories representing the input document. |
| `languageCode` | `string` | The language of the text, which will be the same as the language specified in the request or, if ... |
| `languageSupported` | `boolean` | Whether the language is officially supported. The API may still return a response when the langua... |

### `Color`

Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to and from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of `java.awt.Color` in Java; it can also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little work, it can be easily formatted into a CSS `rgba()` string in JavaScript. This reference page doesn't have information about the absolute color space that should be used to interpret the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most `1e-5`. Example (Java): import com.google.type.Color; // ... public static java.awt.Color fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build()); } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } // ... Example (JavaScript): // ... var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join(''); }; var rgbToCssColor = function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) { resultBuilder.push('0'); } resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...

| Property | Type | Description |
|----------|------|-------------|
| `alpha` | `number` | The fraction of this color that should be applied to the pixel. That is, the final pixel color is... |
| `blue` | `number` | The amount of blue in the color as a value in the interval [0, 1]. |
| `green` | `number` | The amount of green in the color as a value in the interval [0, 1]. |
| `red` | `number` | The amount of red in the color as a value in the interval [0, 1]. |

### `CpuMetric`

Metric for billing reports.

| Property | Type | Description |
|----------|------|-------------|
| `coreNumber` | `string` | Required. Number of CPU cores. |
| `coreSec` | `string` | Required. Total seconds of core usage, e.g. 4. |
| `cpuType` | `string` | Required. Type of cpu, e.g. N2. |
| `machineSpec` | `string` | Required. Machine spec, e.g. N1_STANDARD_4. |
| `trackingLabels` | `object` | Billing tracking labels. They do not contain any user data but only the labels set by Vertex Core... |

### `DiskMetric`

| Property | Type | Description |
|----------|------|-------------|
| `diskType` | `string` | Required. Type of Disk, e.g. REGIONAL_SSD. |
| `gibSec` | `string` | Required. Seconds of physical disk usage, e.g. 3600. |

### `Document`

Represents the input to API methods.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The content of the input in string format. Cloud audit logging exempt since it is based on user d... |
| `gcsContentUri` | `string` | The Google Cloud Storage URI where the file content is located. This URI must be of the form: gs:... |
| `languageCode` | `string` | Optional. The language of the document (if not specified, the language is automatically detected)... |
| `type` | `string` | Required. If the type is not set or is `TYPE_UNSPECIFIED`, returns an `INVALID_ARGUMENT` error. |

### `Entity`

Represents a phrase in the text that is a known entity, such as a person, an organization, or location. The API associates information, such as probability and mentions, with entities.

| Property | Type | Description |
|----------|------|-------------|
| `mentions` | `array<EntityMention>` | The mentions of this entity in the input document. The API currently supports proper noun mentions. |
| `metadata` | `object` | Metadata associated with the entity. For the metadata associated with other entity types, see the... |
| `name` | `string` | The representative name for the entity. |
| `sentiment` | `Sentiment` | For calls to AnalyzeEntitySentiment this field will contain the aggregate sentiment expressed for... |
| `type` | `string` | The entity type. |

### `EntityMention`

Represents a mention for an entity in the text. Currently, proper noun mentions are supported.

| Property | Type | Description |
|----------|------|-------------|
| `probability` | `number` | Probability score associated with the entity. The score shows the probability of the entity menti... |
| `sentiment` | `Sentiment` | For calls to AnalyzeEntitySentiment this field will contain the sentiment expressed for this ment... |
| `text` | `TextSpan` | The mention text. |
| `type` | `string` | The type of the entity mention. |

### `GpuMetric`

| Property | Type | Description |
|----------|------|-------------|
| `gpuSec` | `string` | Required. Seconds of GPU usage, e.g. 3600. |
| `gpuType` | `string` | Required. Type of GPU, e.g. NVIDIA_TESLA_V100. |
| `machineSpec` | `string` | Required. Machine spec, e.g. N1_STANDARD_4. |
| `trackingLabels` | `object` | Billing tracking labels. They do not contain any user data but only the labels set by Vertex Core... |

### `InfraUsage`

LINT: LEGACY_NAMES Infra Usage of billing metrics.

| Property | Type | Description |
|----------|------|-------------|
| `cpuMetrics` | `array<CpuMetric>` | Aggregated core metrics since requested start_time. |
| `diskMetrics` | `array<DiskMetric>` | Aggregated persistent disk metrics since requested start_time. |
| `gpuMetrics` | `array<GpuMetric>` | Aggregated gpu metrics since requested start_time. |
| `ramMetrics` | `array<RamMetric>` | Aggregated ram metrics since requested start_time. |
| `tpuMetrics` | `array<TpuMetric>` | Aggregated tpu metrics since requested start_time. |

### `ModerateTextRequest`

The document moderation request message.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `Document` | Required. Input document. |
| `modelVersion` | `string` | Optional. The model version to use for ModerateText. |

### `ModerateTextResponse`

The document moderation response message.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The language of the text, which will be the same as the language specified in the request or, if ... |
| `languageSupported` | `boolean` | Whether the language is officially supported. The API may still return a response when the langua... |
| `moderationCategories` | `array<ClassificationCategory>` | Harmful and sensitive categories representing the input document. |

### `RamMetric`

| Property | Type | Description |
|----------|------|-------------|
| `gibSec` | `string` | Required. VM memory in Gigabyte second, e.g. 3600. Using int64 type to match billing metrics defi... |
| `machineSpec` | `string` | Required. Machine spec, e.g. N1_STANDARD_4. |
| `memories` | `number` | Required. VM memory in gb. |
| `ramType` | `string` | Required. Type of ram. |
| `trackingLabels` | `object` | Billing tracking labels. They do not contain any user data but only the labels set by Vertex Core... |

### `Sentence`

Represents a sentence in the input document.

| Property | Type | Description |
|----------|------|-------------|
| `sentiment` | `Sentiment` | For calls to AnalyzeSentiment or if AnnotateTextRequest.Features.extract_document_sentiment is se... |
| `text` | `TextSpan` | The sentence text. |

### `Sentiment`

Represents the feeling associated with the entire text or entities in the text.

| Property | Type | Description |
|----------|------|-------------|
| `magnitude` | `number` | A non-negative number in the [0, +inf] range, which represents the absolute magnitude of sentimen... |
| `score` | `number` | Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment). |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TextSpan`

Represents a text span in the input document.

| Property | Type | Description |
|----------|------|-------------|
| `beginOffset` | `integer` | The API calculates the beginning offset of the content in the original document according to the ... |
| `content` | `string` | The content of the text span, which is a substring of the document. |

### `TpuMetric`

| Property | Type | Description |
|----------|------|-------------|
| `tpuSec` | `string` | Required. Seconds of TPU usage, e.g. 3600. |
| `tpuType` | `string` | Required. Type of TPU, e.g. TPU_V2, TPU_V3_POD. |

### `XPSArrayStats`

The data statistics of a series of ARRAY values.

| Property | Type | Description |
|----------|------|-------------|
| `commonStats` | `XPSCommonStats` |  |
| `memberStats` | `XPSDataStats` | Stats of all the values of all arrays, as if they were a single long series of data. The type dep... |

### `XPSBatchPredictResponse`

| Property | Type | Description |
|----------|------|-------------|
| `exampleSet` | `XPSExampleSet` | Examples for batch prediction result. Under full API implementation, results are stored in shared... |

### `XPSBoundingBoxMetricsEntry`

Bounding box matching model metrics for a single intersection-over-union threshold and multiple label match confidence thresholds.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceMetricsEntries` | `array<XPSBoundingBoxMetricsEntryConfidenceMetricsEntry>` | Metrics for each label-match confidence_threshold from 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99. |
| `iouThreshold` | `number` | The intersection-over-union threshold value used to compute this metrics entry. |
| `meanAveragePrecision` | `number` | The mean average precision. |

### `XPSBoundingBoxMetricsEntryConfidenceMetricsEntry`

Metrics for a single confidence threshold.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceThreshold` | `number` | The confidence threshold value used to compute the metrics. |
| `f1Score` | `number` | The harmonic mean of recall and precision. |
| `precision` | `number` | Precision for the given confidence threshold. |
| `recall` | `number` | Recall for the given confidence threshold. |

### `XPSCategoryStats`

The data statistics of a series of CATEGORY values.

| Property | Type | Description |
|----------|------|-------------|
| `commonStats` | `XPSCommonStats` |  |
| `topCategoryStats` | `array<XPSCategoryStatsSingleCategoryStats>` | The statistics of the top 20 CATEGORY values, ordered by CategoryStats.SingleCategoryStats.count. |

### `XPSCategoryStatsSingleCategoryStats`

The statistics of a single CATEGORY value.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The number of occurrences of this value in the series. |
| `value` | `string` | The CATEGORY value. |

### `XPSClassificationEvaluationMetrics`

Model evaluation metrics for classification problems. It can be used for image and video classification. Next tag: 9.

| Property | Type | Description |
|----------|------|-------------|
| `auPrc` | `number` | The Area under precision recall curve metric. |
| `auRoc` | `number` | The Area Under Receiver Operating Characteristic curve metric. Micro-averaged for the overall eva... |
| `baseAuPrc` | `number` | The Area under precision recall curve metric based on priors. |
| `confidenceMetricsEntries` | `array<XPSConfidenceMetricsEntry>` | Metrics that have confidence thresholds. Precision-recall curve can be derived from it. |
| `confusionMatrix` | `XPSConfusionMatrix` | Confusion matrix of the evaluation. Only set for MULTICLASS classification problems where number ... |
| `evaluatedExamplesCount` | `integer` | The number of examples used for model evaluation. |
| `logLoss` | `number` | The Log Loss metric. |

### `XPSColorMap`

Map from color to display name. Will only be used by Image Segmentation for uCAIP.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecIdToken` | `string` | Should be used during training. |
| `color` | `Color` | This type is deprecated in favor of the IntColor below. This is because google.type.Color represe... |
| `displayName` | `string` | Should be used during preprocessing. |
| `intColor` | `XPSColorMapIntColor` |  |

### `XPSColorMapIntColor`

RGB color and each channel is represented by an integer.

| Property | Type | Description |
|----------|------|-------------|
| `blue` | `integer` | The value should be in range of [0, 255]. |
| `green` | `integer` | The value should be in range of [0, 255]. |
| `red` | `integer` | The value should be in range of [0, 255]. |

### `XPSColumnSpec`

| Property | Type | Description |
|----------|------|-------------|
| `columnId` | `integer` | The unique id of the column. When Preprocess, the Tables BE will popuate the order id of the colu... |
| `dataStats` | `XPSDataStats` | The data stats of the column. It's outputed in RefreshTablesStats and a required input for Train. |
| `dataType` | `XPSDataType` | The data type of the column. It's outputed in Preprocess rpc and a required input for RefreshTabl... |
| `displayName` | `string` | The display name of the column. It's outputed in Preprocess and a required input for RefreshTable... |
| `forecastingMetadata` | `XPSColumnSpecForecastingMetadata` |  |
| `topCorrelatedColumns` | `array<XPSColumnSpecCorrelatedColumn>` | It's outputed in RefreshTablesStats, and a required input in Train. |

### `XPSColumnSpecCorrelatedColumn`

Identifies a table's column, and its correlation with the column this ColumnSpec describes.

| Property | Type | Description |
|----------|------|-------------|
| `columnId` | `integer` |  |
| `correlationStats` | `XPSCorrelationStats` |  |

### `XPSColumnSpecForecastingMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `columnType` | `string` | The type of the column for FORECASTING model training purposes. |

### `XPSCommonStats`

Common statistics for a column with a specified data type.

| Property | Type | Description |
|----------|------|-------------|
| `distinctValueCount` | `string` |  |
| `nullValueCount` | `string` |  |
| `validValueCount` | `string` |  |

### `XPSConfidenceMetricsEntry`

ConfidenceMetricsEntry includes generic precision, recall, f1 score etc. Next tag: 16.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceThreshold` | `number` | Metrics are computed with an assumption that the model never return predictions with score lower ... |
| `f1Score` | `number` | The harmonic mean of recall and precision. |
| `f1ScoreAt1` | `number` | The harmonic mean of recall_at1 and precision_at1. |
| `falseNegativeCount` | `string` | The number of ground truth labels that are not matched by a model created label. |
| `falsePositiveCount` | `string` | The number of model created labels that do not match a ground truth label. |
| `falsePositiveRate` | `number` | False Positive Rate for the given confidence threshold. |
| `falsePositiveRateAt1` | `number` | The False Positive Rate when only considering the label that has the highest prediction score and... |
| `positionThreshold` | `integer` | Metrics are computed with an assumption that the model always returns at most this many predictio... |
| `precision` | `number` | Precision for the given confidence threshold. |
| `precisionAt1` | `number` | The precision when only considering the label that has the highest prediction score and not below... |
| `recall` | `number` | Recall (true positive rate) for the given confidence threshold. |
| `recallAt1` | `number` | The recall (true positive rate) when only considering the label that has the highest prediction s... |
| `trueNegativeCount` | `string` | The number of labels that were not created by the model, but if they would, they would not match ... |
| `truePositiveCount` | `string` | The number of model created labels that match a ground truth label. |

### `XPSConfusionMatrix`

Confusion matrix of the model running the classification.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecIdToken` | `array<string>` | For the following three repeated fields, only one is intended to be set. annotation_spec_id_token... |
| `category` | `array<integer>` | Category (mainly for segmentation). Set only for image segmentation models. Note: uCAIP Image Seg... |
| `row` | `array<XPSConfusionMatrixRow>` | Rows in the confusion matrix. The number of rows is equal to the size of `annotation_spec_id_toke... |
| `sentimentLabel` | `array<integer>` | Sentiment labels used in the confusion matrix. Set only for text sentiment models. For AutoML Tex... |

### `XPSConfusionMatrixRow`

A row in the confusion matrix.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `array<string>` | Same as above except intended to represent other counts (for e.g. for segmentation this is pixel ... |
| `exampleCount` | `array<integer>` | Value of the specific cell in the confusion matrix. The number of values each row has (i.e. the l... |

### `XPSCoreMlFormat`

A model format used for iOS mobile devices.

### `XPSCorrelationStats`

A correlation statistics between two series of DataType values. The series may have differing DataType-s, but within a single series the DataType must be the same.

| Property | Type | Description |
|----------|------|-------------|
| `cramersV` | `number` | The correlation value using the Cramer's V measure. |

### `XPSDataErrors`

Different types of errors and the stats associatesd with each error.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | Number of records having errors associated with the enum. |
| `errorType` | `string` | Type of the error. |

### `XPSDataStats`

The data statistics of a series of values that share the same DataType.

| Property | Type | Description |
|----------|------|-------------|
| `arrayStats` | `XPSArrayStats` | The statistics for ARRAY DataType. |
| `categoryStats` | `XPSCategoryStats` | The statistics for CATEGORY DataType. |
| `distinctValueCount` | `string` | The number of distinct values. |
| `float64Stats` | `XPSFloat64Stats` | The statistics for FLOAT64 DataType. |
| `nullValueCount` | `string` | The number of values that are null. |
| `stringStats` | `XPSStringStats` | The statistics for STRING DataType. |
| `structStats` | `XPSStructStats` | The statistics for STRUCT DataType. |
| `timestampStats` | `XPSTimestampStats` | The statistics for TIMESTAMP DataType. |
| `validValueCount` | `string` | The number of values that are valid. |

### `XPSDataType`

Indicated the type of data that can be stored in a structured data entity (e.g. a table).

| Property | Type | Description |
|----------|------|-------------|
| `compatibleDataTypes` | `array<XPSDataType>` | The highly compatible data types to this data type. |
| `listElementType` | `XPSDataType` | If type_code == ARRAY, then `list_element_type` is the type of the elements. |
| `nullable` | `boolean` | If true, this DataType can also be `null`. |
| `structType` | `XPSStructType` | If type_code == STRUCT, then `struct_type` provides type information for the struct's fields. |
| `timeFormat` | `string` | If type_code == TIMESTAMP then `time_format` provides the format in which that time field is expr... |
| `typeCode` | `string` | Required. The TypeCode for this type. |

### `XPSDockerFormat`

A model format used for Docker containers. Use the params field to customize the container. The container is verified to work correctly on ubuntu 16.04 operating system.

| Property | Type | Description |
|----------|------|-------------|
| `cpuArchitecture` | `string` | Optional. Additional cpu information describing the requirements for the to be exported model files. |
| `gpuArchitecture` | `string` | Optional. Additional gpu information describing the requirements for the to be exported model files. |

### `XPSEdgeTpuTfLiteFormat`

A model format used for [Edge TPU](https://cloud.google.com/edge-tpu/) devices.

### `XPSEvaluationMetrics`

Contains xPS-specific model evaluation metrics either for a single annotation spec (label), or for the model overall. Next tag: 18.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecIdToken` | `string` | The annotation_spec for which this evaluation metrics instance had been created. Empty iff this i... |
| `category` | `integer` | The integer category label for which this evaluation metric instance had been created. Valid cate... |
| `evaluatedExampleCount` | `integer` | The number of examples used to create this evaluation metrics instance. |
| `imageClassificationEvalMetrics` | `XPSClassificationEvaluationMetrics` |  |
| `imageObjectDetectionEvalMetrics` | `XPSImageObjectDetectionEvaluationMetrics` |  |
| `imageSegmentationEvalMetrics` | `XPSImageSegmentationEvaluationMetrics` |  |
| `label` | `string` | The label for which this evaluation metrics instance had been created. Empty iff this is an overa... |
| `regressionEvalMetrics` | `XPSRegressionEvaluationMetrics` |  |
| `tablesClassificationEvalMetrics` | `XPSClassificationEvaluationMetrics` |  |
| `tablesEvalMetrics` | `XPSTablesEvaluationMetrics` |  |
| `textClassificationEvalMetrics` | `XPSClassificationEvaluationMetrics` |  |
| `textExtractionEvalMetrics` | `XPSTextExtractionEvaluationMetrics` |  |
| `textSentimentEvalMetrics` | `XPSTextSentimentEvaluationMetrics` |  |
| `translationEvalMetrics` | `XPSTranslationEvaluationMetrics` |  |
| `videoActionRecognitionEvalMetrics` | `XPSVideoActionRecognitionEvaluationMetrics` |  |
| `videoClassificationEvalMetrics` | `XPSClassificationEvaluationMetrics` |  |
| `videoObjectTrackingEvalMetrics` | `XPSVideoObjectTrackingEvaluationMetrics` |  |

### `XPSEvaluationMetricsSet`

Specifies location of model evaluation metrics.

| Property | Type | Description |
|----------|------|-------------|
| `evaluationMetrics` | `array<XPSEvaluationMetrics>` | Inline EvaluationMetrics - should be relatively small. For passing large quantities of exhaustive... |
| `fileSpec` | `XPSFileSpec` | File spec containing evaluation metrics of a model, must point to RecordIO file(s) of intelligenc... |
| `numEvaluationMetrics` | `string` | Number of the evaluation metrics (usually one per label plus overall). |

### `XPSExampleSet`

Set of examples or input sources.

| Property | Type | Description |
|----------|------|-------------|
| `fileSpec` | `XPSFileSpec` | File spec of the examples or input sources. |
| `fingerprint` | `string` | Fingerprint of the example set. |
| `numExamples` | `string` | Number of examples. |
| `numInputSources` | `string` | Number of input sources. |

### `XPSExportModelOutputConfig`

| Property | Type | Description |
|----------|------|-------------|
| `coreMlFormat` | `XPSCoreMlFormat` |  |
| `dockerFormat` | `XPSDockerFormat` |  |
| `edgeTpuTfLiteFormat` | `XPSEdgeTpuTfLiteFormat` |  |
| `exportFirebaseAuxiliaryInfo` | `boolean` | For any model and format: If true, will additionally export FirebaseExportedModelInfo in a fireba... |
| `outputGcrUri` | `string` | The Google Contained Registry path the exported files to be pushed to. This location is set if th... |
| `outputGcsUri` | `string` | The Google Cloud Storage directory where XPS will output the exported models and related files. F... |
| `tfJsFormat` | `XPSTfJsFormat` |  |
| `tfLiteFormat` | `XPSTfLiteFormat` |  |
| `tfSavedModelFormat` | `XPSTfSavedModelFormat` |  |

### `XPSFileSpec`

Spec of input and output files, on external file systems (for example, Colossus Namespace System or Google Cloud Storage).

| Property | Type | Description |
|----------|------|-------------|
| `directoryPath` | `string` | Deprecated. Use file_spec. |
| `fileFormat` | `string` |  |
| `fileSpec` | `string` | Single file path, or file pattern of format "/path/to/file@shard_count". E.g. /cns/cell-d/somewhe... |
| `singleFilePath` | `string` | Deprecated. Use file_spec. |

### `XPSFloat64Stats`

The data statistics of a series of FLOAT64 values.

| Property | Type | Description |
|----------|------|-------------|
| `commonStats` | `XPSCommonStats` |  |
| `histogramBuckets` | `array<XPSFloat64StatsHistogramBucket>` | Histogram buckets of the data series. Sorted by the min value of the bucket, ascendingly, and the... |
| `mean` | `number` | The mean of the series. |
| `quantiles` | `array<number>` | Ordered from 0 to k k-quantile values of the data series of n values. The value at index i is, ap... |
| `standardDeviation` | `number` | The standard deviation of the series. |

### `XPSFloat64StatsHistogramBucket`

A bucket of a histogram.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The number of data values that are in the bucket, i.e. are between min and max values. |
| `max` | `number` | The maximum value of the bucket, exclusive unless max = `"Infinity"`, in which case it's inclusive. |
| `min` | `number` | The minimum value of the bucket, inclusive. |

### `XPSImageClassificationTrainResponse`

| Property | Type | Description |
|----------|------|-------------|
| `classCount` | `string` | Total number of classes. |
| `exportModelSpec` | `XPSImageExportModelSpec` | Information of downloadable models that are pre-generated as part of training flow and will be pe... |
| `modelArtifactSpec` | `XPSImageModelArtifactSpec` | ## The fields below are only populated under uCAIP request scope. |
| `modelServingSpec` | `XPSImageModelServingSpec` |  |
| `stopReason` | `string` | Stop reason for training job, e.g. 'TRAIN_BUDGET_REACHED', 'MODEL_CONVERGED', 'MODEL_EARLY_STOPPED'. |
| `trainCostInNodeTime` | `string` | The actual cost to create this model. - For edge type model, the cost is expressed in node hour. ... |
| `trainCostNodeSeconds` | `string` | The actual training cost, expressed in node seconds. Populated for models trained in node time. |

### `XPSImageExportModelSpec`

Information of downloadable models that are pre-generated as part of training flow and will be persisted in AutoMl backend. Upon receiving ExportModel request from user, AutoMl backend can serve the pre-generated models to user if exists (by copying the files from internal path to user provided location), otherwise, AutoMl backend will call xPS ExportModel API to generate the model on the fly with the requesting format.

| Property | Type | Description |
|----------|------|-------------|
| `exportModelOutputConfig` | `array<XPSExportModelOutputConfig>` | Contains the model format and internal location of the model files to be exported/downloaded. Use... |

### `XPSImageModelArtifactSpec`

Stores the locations and related metadata of the model artifacts. Populated for uCAIP requests only.

| Property | Type | Description |
|----------|------|-------------|
| `checkpointArtifact` | `XPSModelArtifactItem` | The Tensorflow checkpoint files. e.g. Used for resumable training. |
| `exportArtifact` | `array<XPSModelArtifactItem>` | The model binary files in different formats for model export. |
| `labelGcsUri` | `string` | Google Cloud Storage URI of decoded labels file for model export 'dict.txt'. |
| `servingArtifact` | `XPSModelArtifactItem` | The default model binary file used for serving (e.g. online predict, batch predict) via public Cl... |
| `tfJsBinaryGcsPrefix` | `string` | Google Cloud Storage URI prefix of Tensorflow JavaScript binary files 'groupX-shardXofX.bin'. Dep... |
| `tfLiteMetadataGcsUri` | `string` | Google Cloud Storage URI of Tensorflow Lite metadata 'tflite_metadata.json'. |

### `XPSImageModelServingSpec`

Serving specification for image models.

| Property | Type | Description |
|----------|------|-------------|
| `modelThroughputEstimation` | `array<XPSImageModelServingSpecModelThroughputEstimation>` | Populate under uCAIP request scope. |
| `nodeQps` | `number` | An estimated value of how much traffic a node can serve. Populated for AutoMl request only. |
| `tfRuntimeVersion` | `string` | ## The fields below are only populated under uCAIP request scope. https://cloud.google.com/ml-eng... |

### `XPSImageModelServingSpecModelThroughputEstimation`

| Property | Type | Description |
|----------|------|-------------|
| `computeEngineAcceleratorType` | `string` |  |
| `latencyInMilliseconds` | `number` | Estimated latency. |
| `nodeQps` | `number` | The approximate qps a deployed node can serve. |
| `servomaticPartitionType` | `string` |  |

### `XPSImageObjectDetectionEvaluationMetrics`

Model evaluation metrics for image object detection problems. Evaluates prediction quality of labeled bounding boxes.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBoxMeanAveragePrecision` | `number` | The single metric for bounding boxes evaluation: the mean_average_precision averaged over all bou... |
| `boundingBoxMetricsEntries` | `array<XPSBoundingBoxMetricsEntry>` | The bounding boxes match metrics for each Intersection-over-union threshold 0.05,0.10,...,0.95,0.... |
| `evaluatedBoundingBoxCount` | `integer` | The total number of bounding boxes (i.e. summed over all images) the ground truth used to create ... |

### `XPSImageObjectDetectionModelSpec`

| Property | Type | Description |
|----------|------|-------------|
| `classCount` | `string` | Total number of classes. |
| `exportModelSpec` | `XPSImageExportModelSpec` |  |
| `maxBoundingBoxCount` | `string` | Max number of bounding box. |
| `modelArtifactSpec` | `XPSImageModelArtifactSpec` | ## The fields below are only populated under uCAIP request scope. |
| `modelServingSpec` | `XPSImageModelServingSpec` |  |
| `stopReason` | `string` | Stop reason for training job, e.g. 'TRAIN_BUDGET_REACHED', 'MODEL_CONVERGED'. |
| `trainCostNodeSeconds` | `string` | The actual train cost of creating this model, expressed in node seconds, i.e. 3,600 value in this... |

### `XPSImageSegmentationEvaluationMetrics`

Model evaluation metrics for image segmentation problems. Next tag: 4.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceMetricsEntries` | `array<XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry>` | Metrics that have confidence thresholds. Precision-recall curve can be derived from it. |

### `XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry`

Metrics for a single confidence threshold.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceThreshold` | `number` | The confidence threshold value used to compute the metrics. |
| `confusionMatrix` | `XPSConfusionMatrix` | Confusion matrix of the per confidence_threshold evaluation. Pixel counts are set here. Only set ... |
| `diceScoreCoefficient` | `number` | DSC or the F1 score: The harmonic mean of recall and precision. |
| `iouScore` | `number` | IOU score. |
| `precision` | `number` | Precision for the given confidence threshold. |
| `recall` | `number` | Recall for the given confidence threshold. |

### `XPSImageSegmentationTrainResponse`

| Property | Type | Description |
|----------|------|-------------|
| `colorMaps` | `array<XPSColorMap>` | Color map of the model. |
| `exportModelSpec` | `XPSImageExportModelSpec` | NOTE: These fields are not used/needed in EAP but will be set later. |
| `modelArtifactSpec` | `XPSImageModelArtifactSpec` | ## The fields below are only populated under uCAIP request scope. Model artifact spec stores and ... |
| `modelServingSpec` | `XPSImageModelServingSpec` |  |
| `stopReason` | `string` | Stop reason for training job, e.g. 'TRAIN_BUDGET_REACHED', 'MODEL_CONVERGED'. |
| `trainCostNodeSeconds` | `string` | The actual train cost of creating this model, expressed in node seconds, i.e. 3,600 value in this... |

### `XPSIntegratedGradientsAttribution`

An attribution method that computes the Aumann-Shapley value taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365

| Property | Type | Description |
|----------|------|-------------|
| `stepCount` | `integer` | The number of steps for approximating the path integral. A good value to start is 50 and graduall... |

### `XPSMetricEntry`

| Property | Type | Description |
|----------|------|-------------|
| `argentumMetricId` | `string` | For billing metrics that are using legacy sku's, set the legacy billing metric id here. This will... |
| `doubleValue` | `number` | A double value. |
| `int64Value` | `string` | A signed 64-bit integer value. |
| `metricName` | `string` | The metric name defined in the service configuration. |
| `systemLabels` | `array<XPSMetricEntryLabel>` | Billing system labels for this (metric, value) pair. |

### `XPSMetricEntryLabel`

| Property | Type | Description |
|----------|------|-------------|
| `labelName` | `string` | The name of the label. |
| `labelValue` | `string` | The value of the label. |

### `XPSModelArtifactItem`

A single model artifact item.

| Property | Type | Description |
|----------|------|-------------|
| `artifactFormat` | `string` | The model artifact format. |
| `gcsUri` | `string` | The Google Cloud Storage URI that stores the model binary files. |

### `XPSPreprocessResponse`

| Property | Type | Description |
|----------|------|-------------|
| `outputExampleSet` | `XPSExampleSet` | Preprocessed examples, that are to be imported into AutoML storage. This should point to RecordIO... |
| `speechPreprocessResp` | `XPSSpeechPreprocessResponse` |  |
| `tablesPreprocessResponse` | `XPSTablesPreprocessResponse` |  |
| `translationPreprocessResp` | `XPSTranslationPreprocessResponse` |  |

### `XPSRegressionEvaluationMetrics`

Model evaluation metrics for regression problems. It can be used for Tables.

| Property | Type | Description |
|----------|------|-------------|
| `meanAbsoluteError` | `number` | Mean Absolute Error (MAE). |
| `meanAbsolutePercentageError` | `number` | Mean absolute percentage error. Only set if all ground truth values are positive. |
| `rSquared` | `number` | R squared. |
| `regressionMetricsEntries` | `array<XPSRegressionMetricsEntry>` | A list of actual versus predicted points for the model being evaluated. |
| `rootMeanSquaredError` | `number` | Root Mean Squared Error (RMSE). |
| `rootMeanSquaredLogError` | `number` | Root mean squared log error. |

### `XPSRegressionMetricsEntry`

A pair of actual & observed values for the model being evaluated.

| Property | Type | Description |
|----------|------|-------------|
| `predictedValue` | `number` | The observed value for a row in the dataset. |
| `trueValue` | `number` | The actual target value for a row in the dataset. |

### `XPSReportingMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `effectiveTrainingDuration` | `string` | The effective time training used. If set, this is used for quota management and billing. Deprecat... |
| `metricEntries` | `array<XPSMetricEntry>` | One entry per metric name. The values must be aggregated per metric name. |

### `XPSResponseExplanationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `inputs` | `object` | Metadata of the input. |
| `outputs` | `object` | Metadata of the output. |

### `XPSResponseExplanationMetadataInputMetadata`

Metadata of the input of a feature.

| Property | Type | Description |
|----------|------|-------------|
| `inputTensorName` | `string` | Name of the input tensor for this model. Only needed in train response. |
| `modality` | `string` | Modality of the feature. Valid values are: numeric, image. Defaults to numeric. |
| `visualizationConfig` | `XPSVisualization` | Visualization configurations for image explanation. |

### `XPSResponseExplanationMetadataOutputMetadata`

Metadata of the prediction output to be explained.

| Property | Type | Description |
|----------|------|-------------|
| `outputTensorName` | `string` | Name of the output tensor. Only needed in train response. |

### `XPSResponseExplanationParameters`

| Property | Type | Description |
|----------|------|-------------|
| `integratedGradientsAttribution` | `XPSIntegratedGradientsAttribution` | An attribution method that computes Aumann-Shapley values taking advantage of the model's fully d... |
| `xraiAttribution` | `XPSXraiAttribution` | An attribution method that redistributes Integrated Gradients attribution to segmented regions, t... |

### `XPSResponseExplanationSpec`

Specification of Model explanation. Feature-based XAI in AutoML Vision ICN is deprecated.

| Property | Type | Description |
|----------|------|-------------|
| `explanationType` | `string` | Explanation type. For AutoML Image Classification models, possible values are: * `image-integrate... |
| `metadata` | `XPSResponseExplanationMetadata` | Metadata describing the Model's input and output for explanation. |
| `parameters` | `XPSResponseExplanationParameters` | Parameters that configure explaining of the Model's predictions. |

### `XPSRow`

| Property | Type | Description |
|----------|------|-------------|
| `columnIds` | `array<integer>` | The ids of the columns. Note: The below `values` field must match order of this field, if this fi... |
| `values` | `array<any>` | The values of the row cells, given in the same order as the column_ids. If column_ids is not set,... |

### `XPSSpeechEvaluationMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `subModelEvaluationMetrics` | `array<XPSSpeechEvaluationMetricsSubModelEvaluationMetric>` | Evaluation metrics for all submodels contained in this model. |

### `XPSSpeechEvaluationMetricsSubModelEvaluationMetric`

| Property | Type | Description |
|----------|------|-------------|
| `biasingModelType` | `string` | Type of the biasing model. |
| `isEnhancedModel` | `boolean` | If true then it means we have an enhanced version of the biasing models. |
| `numDeletions` | `integer` |  |
| `numInsertions` | `integer` |  |
| `numSubstitutions` | `integer` |  |
| `numUtterances` | `integer` | Number of utterances used in the wer computation. |
| `numWords` | `integer` | Number of words over which the word error rate was computed. |
| `sentenceAccuracy` | `number` | Below fields are used for debugging purposes |
| `wer` | `number` | Word error rate (standard error metric used for speech recognition). |

### `XPSSpeechModelSpec`

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | Required for speech xps backend. Speech xps has to use dataset_id and model_id as the primary key... |
| `language` | `string` |  |
| `subModelSpecs` | `array<XPSSpeechModelSpecSubModelSpec>` | Model specs for all submodels contained in this model. |

### `XPSSpeechModelSpecSubModelSpec`

| Property | Type | Description |
|----------|------|-------------|
| `biasingModelType` | `string` | Type of the biasing model. |
| `clientId` | `string` | In S3, Recognition ClientContextId.client_id |
| `contextId` | `string` | In S3, Recognition ClientContextId.context_id |
| `isEnhancedModel` | `boolean` | If true then it means we have an enhanced version of the biasing models. |

### `XPSSpeechPreprocessResponse`

| Property | Type | Description |
|----------|------|-------------|
| `cnsTestDataPath` | `string` | Location od shards of sstables (test data) of DataUtterance protos. |
| `cnsTrainDataPath` | `string` | Location of shards of sstables (training data) of DataUtterance protos. |
| `prebuiltModelEvaluationMetrics` | `XPSSpeechEvaluationMetrics` | The metrics for prebuilt speech models. They are included here because there is no prebuilt speec... |
| `speechPreprocessStats` | `XPSSpeechPreprocessStats` | Stats associated with the data. |

### `XPSSpeechPreprocessStats`

| Property | Type | Description |
|----------|------|-------------|
| `dataErrors` | `array<XPSDataErrors>` | Different types of data errors and the counts associated with them. |
| `numHumanLabeledExamples` | `integer` | The number of rows marked HUMAN_LABELLED |
| `numLogsExamples` | `integer` | The number of samples found in the previously recorded logs data. |
| `numMachineTranscribedExamples` | `integer` | The number of rows marked as MACHINE_TRANSCRIBED |
| `testExamplesCount` | `integer` | The number of examples labelled as TEST by Speech xps server. |
| `testSentencesCount` | `integer` | The number of sentences in the test data set. |
| `testWordsCount` | `integer` | The number of words in the test data set. |
| `trainExamplesCount` | `integer` | The number of examples labeled as TRAIN by Speech xps server. |
| `trainSentencesCount` | `integer` | The number of sentences in the training data set. |
| `trainWordsCount` | `integer` | The number of words in the training data set. |

### `XPSStringStats`

The data statistics of a series of STRING values.

| Property | Type | Description |
|----------|------|-------------|
| `commonStats` | `XPSCommonStats` |  |
| `topUnigramStats` | `array<XPSStringStatsUnigramStats>` | The statistics of the top 20 unigrams, ordered by StringStats.UnigramStats.count. |

### `XPSStringStatsUnigramStats`

The statistics of a unigram.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The number of occurrences of this unigram in the series. |
| `value` | `string` | The unigram. |

### `XPSStructStats`

The data statistics of a series of STRUCT values.

| Property | Type | Description |
|----------|------|-------------|
| `commonStats` | `XPSCommonStats` |  |
| `fieldStats` | `object` | Map from a field name of the struct to data stats aggregated over series of all data in that fiel... |

### `XPSStructType`

`StructType` defines the DataType-s of a STRUCT type.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `object` | Unordered map of struct field names to their data types. |

### `XPSTableSpec`

| Property | Type | Description |
|----------|------|-------------|
| `columnSpecs` | `object` | Mapping from column id to column spec. |
| `importedDataSizeInBytes` | `string` | The total size of imported data of the table. |
| `rowCount` | `string` | The number of rows in the table. |
| `timeColumnId` | `integer` | The id of the time column. |
| `validRowCount` | `string` | The number of valid rows. |

### `XPSTablesClassificationMetrics`

Metrics for Tables classification problems.

| Property | Type | Description |
|----------|------|-------------|
| `curveMetrics` | `array<XPSTablesClassificationMetricsCurveMetrics>` | Metrics building a curve. |

### `XPSTablesClassificationMetricsCurveMetrics`

Metrics curve data point for a single value.

| Property | Type | Description |
|----------|------|-------------|
| `aucPr` | `number` | The area under the precision-recall curve. |
| `aucRoc` | `number` | The area under receiver operating characteristic curve. |
| `confidenceMetricsEntries` | `array<XPSTablesConfidenceMetricsEntry>` | Metrics that have confidence thresholds. Precision-recall curve and ROC curve can be derived from... |
| `logLoss` | `number` | The Log loss metric. |
| `positionThreshold` | `integer` | The position threshold value used to compute the metrics. |
| `value` | `string` | The CATEGORY row value (for ARRAY unnested) the curve metrics are for. |

### `XPSTablesConfidenceMetricsEntry`

Metrics for a single confidence threshold.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceThreshold` | `number` | The confidence threshold value used to compute the metrics. |
| `f1Score` | `number` | The harmonic mean of recall and precision. (2 * precision * recall) / (precision + recall) |
| `falseNegativeCount` | `string` | False negative count. |
| `falsePositiveCount` | `string` | False positive count. |
| `falsePositiveRate` | `number` | FPR = #false positives / (#false positives + #true negatives) |
| `precision` | `number` | Precision = #true positives / (#true positives + #false positives). |
| `recall` | `number` | Recall = #true positives / (#true positives + #false negatives). |
| `trueNegativeCount` | `string` | True negative count. |
| `truePositiveCount` | `string` | True positive count. |
| `truePositiveRate` | `number` | TPR = #true positives / (#true positives + #false negatvies) |

### `XPSTablesDatasetMetadata`

Metadata for a dataset used for AutoML Tables.

| Property | Type | Description |
|----------|------|-------------|
| `mlUseColumnId` | `integer` | Id the column to split the table. |
| `primaryTableSpec` | `XPSTableSpec` | Primary table. |
| `targetColumnCorrelations` | `object` | (the column id : its CorrelationStats with target column). |
| `targetColumnId` | `integer` | Id of the primary table column that should be used as the training label. |
| `weightColumnId` | `integer` | Id of the primary table column that should be used as the weight column. |

### `XPSTablesEvaluationMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `classificationMetrics` | `XPSTablesClassificationMetrics` | Classification metrics. |
| `regressionMetrics` | `XPSTablesRegressionMetrics` | Regression metrics. |

### `XPSTablesModelColumnInfo`

An information specific to given column and Tables Model, in context of the Model and the predictions created by it.

| Property | Type | Description |
|----------|------|-------------|
| `columnId` | `integer` | The ID of the column. |
| `featureImportance` | `number` | When given as part of a Model: Measurement of how much model predictions correctness on the TEST ... |

### `XPSTablesModelStructure`

A description of Tables model structure.

| Property | Type | Description |
|----------|------|-------------|
| `modelParameters` | `array<XPSTablesModelStructureModelParameters>` | A list of models. |

### `XPSTablesModelStructureModelParameters`

Model hyper-parameters for a model.

| Property | Type | Description |
|----------|------|-------------|
| `hyperparameters` | `array<XPSTablesModelStructureModelParametersParameter>` |  |

### `XPSTablesModelStructureModelParametersParameter`

| Property | Type | Description |
|----------|------|-------------|
| `floatValue` | `number` | Float type parameter value. |
| `intValue` | `string` | Integer type parameter value. |
| `name` | `string` | Parameter name. |
| `stringValue` | `string` | String type parameter value. |

### `XPSTablesPreprocessResponse`

| Property | Type | Description |
|----------|------|-------------|
| `tablesDatasetMetadata` | `XPSTablesDatasetMetadata` | The table/column id, column_name and the DataTypes of the columns will be populated. |

### `XPSTablesRegressionMetrics`

Metrics for Tables regression problems.

| Property | Type | Description |
|----------|------|-------------|
| `meanAbsoluteError` | `number` | Mean absolute error. |
| `meanAbsolutePercentageError` | `number` | Mean absolute percentage error, only set if all of the target column's values are positive. |
| `rSquared` | `number` | R squared. |
| `regressionMetricsEntries` | `array<XPSRegressionMetricsEntry>` | A list of actual versus predicted points for the model being evaluated. |
| `rootMeanSquaredError` | `number` | Root mean squared error. |
| `rootMeanSquaredLogError` | `number` | Root mean squared log error. |

### `XPSTablesTrainResponse`

| Property | Type | Description |
|----------|------|-------------|
| `modelStructure` | `XPSTablesModelStructure` |  |
| `predictionSampleRows` | `array<XPSRow>` | Sample rows from the dataset this model was trained. |
| `tablesModelColumnInfo` | `array<XPSTablesModelColumnInfo>` | Output only. Auxiliary information for each of the input_feature_column_specs, with respect to th... |
| `trainCostMilliNodeHours` | `string` | The actual training cost of the model, expressed in milli node hours, i.e. 1,000 value in this fi... |

### `XPSTablesTrainingOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `createModelStage` | `string` | Current stage of creating model. |
| `optimizationObjective` | `string` | The optimization objective for model. |
| `topTrials` | `array<XPSTuningTrial>` | This field is for training. When the operation is terminated successfully, AutoML Backend post th... |
| `trainBudgetMilliNodeHours` | `string` | Creating model budget. |
| `trainingObjectivePoints` | `array<XPSTrainingObjectivePoint>` | This field records the training objective value with respect to time, giving insight into how the... |
| `trainingStartTime` | `string` | Timestamp when training process starts. |

### `XPSTextComponentModel`

Component model.

| Property | Type | Description |
|----------|------|-------------|
| `batchPredictionModelGcsUri` | `string` | The Cloud Storage resource path to hold batch prediction model. |
| `onlinePredictionModelGcsUri` | `string` | The Cloud Storage resource path to hold online prediction model. |
| `partition` | `string` | The partition where the model is deployed. Populated by uCAIP BE as part of online PredictRequest. |
| `servingArtifact` | `XPSModelArtifactItem` | The default model binary file used for serving (e.g. online predict, batch predict) via public Cl... |
| `servoModelName` | `string` | The name of servo model. Populated by uCAIP BE as part of online PredictRequest. |
| `submodelName` | `string` | The name of the trained NL submodel. |
| `submodelType` | `string` | The type of trained NL submodel |
| `tfRuntimeVersion` | `string` | ## The fields below are only populated under uCAIP request scope. https://cloud.google.com/ml-eng... |
| `versionNumber` | `string` | The servomatic model version number. Populated by uCAIP BE as part of online PredictRequest. |

### `XPSTextExtractionEvaluationMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `bestF1ConfidenceMetrics` | `XPSConfidenceMetricsEntry` | Values are at the highest F1 score on the precision-recall curve. Only confidence_threshold, reca... |
| `confidenceMetricsEntries` | `array<XPSConfidenceMetricsEntry>` | If the enclosing EvaluationMetrics.label is empty, confidence_metrics_entries is an evaluation of... |
| `confusionMatrix` | `XPSConfusionMatrix` | Confusion matrix of the model, at the default confidence threshold (0.0). Only set for whole-mode... |
| `perLabelConfidenceMetrics` | `object` | Only recall, precision, and f1_score will be set. |

### `XPSTextSentimentEvaluationMetrics`

Model evaluation metrics for text sentiment problems.

| Property | Type | Description |
|----------|------|-------------|
| `confusionMatrix` | `XPSConfusionMatrix` | Output only. Confusion matrix of the evaluation. Only set for the overall model evaluation, not f... |
| `f1Score` | `number` | Output only. The harmonic mean of recall and precision. |
| `linearKappa` | `number` | Output only. Linear weighted kappa. Only set for the overall model evaluation, not for evaluation... |
| `meanAbsoluteError` | `number` | Output only. Mean absolute error. Only set for the overall model evaluation, not for evaluation o... |
| `meanSquaredError` | `number` | Output only. Mean squared error. Only set for the overall model evaluation, not for evaluation of... |
| `precision` | `number` | Output only. Precision. |
| `quadraticKappa` | `number` | Output only. Quadratic weighted kappa. Only set for the overall model evaluation, not for evaluat... |
| `recall` | `number` | Output only. Recall. |

### `XPSTextToSpeechTrainResponse`

TextToSpeech train response

### `XPSTextTrainResponse`

| Property | Type | Description |
|----------|------|-------------|
| `componentModel` | `array<XPSTextComponentModel>` | Component submodels. |

### `XPSTfJsFormat`

A [TensorFlow.js](https://www.tensorflow.org/js) model that can be used in the browser and in Node.js using JavaScript.

### `XPSTfLiteFormat`

LINT.IfChange A model format used for mobile and IoT devices. See https://www.tensorflow.org/lite.

### `XPSTfSavedModelFormat`

A tensorflow model format in SavedModel format.

### `XPSTimestampStats`

The data statistics of a series of TIMESTAMP values.

| Property | Type | Description |
|----------|------|-------------|
| `commonStats` | `XPSCommonStats` |  |
| `granularStats` | `object` | The string key is the pre-defined granularity. Currently supported: hour_of_day, day_of_week, mon... |
| `medianTimestampNanos` | `string` |  |

### `XPSTimestampStatsGranularStats`

Stats split by a defined in context granularity.

| Property | Type | Description |
|----------|------|-------------|
| `buckets` | `object` | A map from granularity key to example count for that key. E.g. for hour_of_day `13` means 1pm, or... |

### `XPSTrackMetricsEntry`

Track matching model metrics for a single track match threshold and multiple label match confidence thresholds. Next tag: 6.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceMetricsEntries` | `array<XPSTrackMetricsEntryConfidenceMetricsEntry>` | Output only. Metrics for each label-match confidence_threshold from 0.05,0.10,...,0.95,0.96,0.97,... |
| `iouThreshold` | `number` | Output only. The intersection-over-union threshold value between bounding boxes across frames use... |
| `meanBoundingBoxIou` | `number` | Output only. The mean bounding box iou over all confidence thresholds. |
| `meanMismatchRate` | `number` | Output only. The mean mismatch rate over all confidence thresholds. |
| `meanTrackingAveragePrecision` | `number` | Output only. The mean average precision over all confidence thresholds. |

### `XPSTrackMetricsEntryConfidenceMetricsEntry`

Metrics for a single confidence threshold. Next tag: 6.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBoxIou` | `number` | Output only. Bounding box intersection-over-union precision. Measures how well the bounding boxes... |
| `confidenceThreshold` | `number` | Output only. The confidence threshold value used to compute the metrics. |
| `mismatchRate` | `number` | Output only. Mismatch rate, which measures the tracking consistency, i.e. correctness of instance... |
| `trackingPrecision` | `number` | Output only. Tracking precision. |
| `trackingRecall` | `number` | Output only. Tracking recall. |

### `XPSTrainResponse`

| Property | Type | Description |
|----------|------|-------------|
| `deployedModelSizeBytes` | `string` | Estimated model size in bytes once deployed. |
| `errorAnalysisConfigs` | `array<XPSVisionErrorAnalysisConfig>` | Optional vision model error analysis configuration. The field is set when model error analysis is... |
| `evaluatedExampleSet` | `XPSExampleSet` | Examples used to evaluate the model (usually the test set), with the predicted annotations. The f... |
| `evaluationMetricsSet` | `XPSEvaluationMetricsSet` | The trained model evaluation metrics. This can be optionally returned. |
| `explanationConfigs` | `array<XPSResponseExplanationSpec>` | VisionExplanationConfig for XAI on test set. Optional for when XAI is enable in training request. |
| `imageClassificationTrainResp` | `XPSImageClassificationTrainResponse` |  |
| `imageObjectDetectionTrainResp` | `XPSImageObjectDetectionModelSpec` |  |
| `imageSegmentationTrainResp` | `XPSImageSegmentationTrainResponse` |  |
| `modelToken` | `string` | Token that represents the trained model. This is considered immutable and is persisted in AutoML.... |
| `speechTrainResp` | `XPSSpeechModelSpec` |  |
| `tablesTrainResp` | `XPSTablesTrainResponse` |  |
| `textToSpeechTrainResp` | `XPSTextToSpeechTrainResponse` |  |
| `textTrainResp` | `XPSTextTrainResponse` | Will only be needed for uCAIP from Beta. |
| `translationTrainResp` | `XPSTranslationTrainResponse` |  |
| `videoActionRecognitionTrainResp` | `XPSVideoActionRecognitionTrainResponse` |  |
| `videoClassificationTrainResp` | `XPSVideoClassificationTrainResponse` |  |
| `videoObjectTrackingTrainResp` | `XPSVideoObjectTrackingTrainResponse` |  |

### `XPSTrainingObjectivePoint`

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time at which this point was recorded. |
| `value` | `number` | The objective value when this point was recorded. |

### `XPSTranslationEvaluationMetrics`

Evaluation metrics for the dataset.

| Property | Type | Description |
|----------|------|-------------|
| `baseBleuScore` | `number` | BLEU score for base model. |
| `bleuScore` | `number` | BLEU score. |

### `XPSTranslationPreprocessResponse`

Translation preprocess response.

| Property | Type | Description |
|----------|------|-------------|
| `parsedExampleCount` | `string` | Total example count parsed. |
| `validExampleCount` | `string` | Total valid example count. |

### `XPSTranslationTrainResponse`

Train response for translation.

| Property | Type | Description |
|----------|------|-------------|
| `modelType` | `string` | Type of the model. |

### `XPSTuningTrial`

Metrics for a tuning job generated, will get forwarded to Stackdriver as model tuning logs. Setting this as a standalone message out of CreateModelMetadata to avoid confusion as we expose this message only to users.

| Property | Type | Description |
|----------|------|-------------|
| `modelStructure` | `XPSTablesModelStructure` | Model parameters for the trial. |
| `trainingObjectivePoint` | `XPSTrainingObjectivePoint` | The optimization objective evaluation of the eval split data. |

### `XPSVideoActionMetricsEntry`

The Evaluation metrics entry given a specific precision_window_length.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceMetricsEntries` | `array<XPSVideoActionMetricsEntryConfidenceMetricsEntry>` | Metrics for each label-match confidence_threshold from 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99. |
| `meanAveragePrecision` | `number` | The mean average precision. |
| `precisionWindowLength` | `string` | This VideoActionMetricsEntry is calculated based on this prediction window length. If the predict... |

### `XPSVideoActionMetricsEntryConfidenceMetricsEntry`

Metrics for a single confidence threshold.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceThreshold` | `number` | Output only. The confidence threshold value used to compute the metrics. |
| `f1Score` | `number` | Output only. The harmonic mean of recall and precision. |
| `precision` | `number` | Output only. Precision for the given confidence threshold. |
| `recall` | `number` | Output only. Recall for the given confidence threshold. |

### `XPSVideoActionRecognitionEvaluationMetrics`

Model evaluation metrics for video action recognition.

| Property | Type | Description |
|----------|------|-------------|
| `evaluatedActionCount` | `integer` | Output only. The number of ground truth actions used to create this evaluation. |
| `videoActionMetricsEntries` | `array<XPSVideoActionMetricsEntry>` | Output only. The metric entries for precision window lengths: 1s,2s,3s,4s, 5s. |

### `XPSVideoActionRecognitionTrainResponse`

| Property | Type | Description |
|----------|------|-------------|
| `modelArtifactSpec` | `XPSVideoModelArtifactSpec` | ## The fields below are only populated under uCAIP request scope. |
| `trainCostNodeSeconds` | `string` | The actual train cost of creating this model, expressed in node seconds, i.e. 3,600 value in this... |

### `XPSVideoBatchPredictOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `outputExamples` | `array<string>` | All the partial batch prediction results that are completed at the moment. Output examples are so... |

### `XPSVideoClassificationTrainResponse`

| Property | Type | Description |
|----------|------|-------------|
| `modelArtifactSpec` | `XPSVideoModelArtifactSpec` | ## The fields below are only populated under uCAIP request scope. |
| `trainCostNodeSeconds` | `string` | The actual train cost of creating this model, expressed in node seconds, i.e. 3,600 value in this... |

### `XPSVideoExportModelSpec`

Information of downloadable models that are pre-generated as part of training flow and will be persisted in AutoMl backend. Upon receiving ExportModel request from user, AutoMl backend can serve the pre-generated models to user if exists (by copying the files from internal path to user provided location), otherwise, AutoMl backend will call xPS ExportModel API to generate the model on the fly with the requesting format.

| Property | Type | Description |
|----------|------|-------------|
| `exportModelOutputConfig` | `array<XPSExportModelOutputConfig>` | Contains the model format and internal location of the model files to be exported/downloaded. Use... |

### `XPSVideoModelArtifactSpec`

| Property | Type | Description |
|----------|------|-------------|
| `exportArtifact` | `array<XPSModelArtifactItem>` | The model binary files in different formats for model export. |
| `servingArtifact` | `XPSModelArtifactItem` | The default model binary file used for serving (e.g. batch predict) via public Cloud AI Platform ... |

### `XPSVideoObjectTrackingEvaluationMetrics`

Model evaluation metrics for ObjectTracking problems. Next tag: 10.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBoxMeanAveragePrecision` | `number` | Output only. The single metric for bounding boxes evaluation: the mean_average_precision averaged... |
| `boundingBoxMetricsEntries` | `array<XPSBoundingBoxMetricsEntry>` | Output only. The bounding boxes match metrics for each Intersection-over-union threshold 0.05,0.1... |
| `evaluatedBoundingboxCount` | `integer` | The number of bounding boxes used for model evaluation. |
| `evaluatedFrameCount` | `integer` | The number of video frames used for model evaluation. |
| `evaluatedTrackCount` | `integer` | The number of tracks used for model evaluation. |
| `trackMeanAveragePrecision` | `number` | Output only. The single metric for tracks accuracy evaluation: the mean_average_precision average... |
| `trackMeanBoundingBoxIou` | `number` | Output only. The single metric for tracks bounding box iou evaluation: the mean_bounding_box_iou ... |
| `trackMeanMismatchRate` | `number` | Output only. The single metric for tracking consistency evaluation: the mean_mismatch_rate averag... |
| `trackMetricsEntries` | `array<XPSTrackMetricsEntry>` | Output only. The tracks match metrics for each Intersection-over-union threshold 0.05,0.10,...,0.... |

### `XPSVideoObjectTrackingTrainResponse`

| Property | Type | Description |
|----------|------|-------------|
| `exportModelSpec` | `XPSVideoExportModelSpec` | Populated for AutoML request only. |
| `modelArtifactSpec` | `XPSVideoModelArtifactSpec` | ## The fields below are only populated under uCAIP request scope. |
| `trainCostNodeSeconds` | `string` | The actual train cost of creating this model, expressed in node seconds, i.e. 3,600 value in this... |

### `XPSVideoTrainingOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `trainCostMilliNodeHour` | `string` | This is an estimation of the node hours necessary for training a model, expressed in milli node h... |

### `XPSVisionErrorAnalysisConfig`

The vision model error analysis configuration. Next tag: 3

| Property | Type | Description |
|----------|------|-------------|
| `exampleCount` | `integer` | The number of query examples in error analysis. |
| `queryType` | `string` | The query type used in retrieval. The enum values are frozen in the foreseeable future. |

### `XPSVisionTrainingOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `explanationUsage` | `InfraUsage` | Aggregated infra usage within certain time period, for billing report purpose if XAI is enable in... |

### `XPSVisualization`

Visualization configurations for image explanation.

| Property | Type | Description |
|----------|------|-------------|
| `clipPercentLowerbound` | `number` | Excludes attributions below the specified percentile, from the highlighted areas. Defaults to 62. |
| `clipPercentUpperbound` | `number` | Excludes attributions above the specified percentile from the highlighted areas. Using the clip_p... |
| `colorMap` | `string` | The color scheme used for the highlighted areas. Defaults to PINK_GREEN for Integrated Gradients ... |
| `overlayType` | `string` | How the original image is displayed in the visualization. Adjusting the overlay can help increase... |
| `polarity` | `string` | Whether to only highlight pixels with positive contributions, negative or both. Defaults to POSIT... |
| `type` | `string` | Type of the image visualization. Only applicable to Integrated Gradients attribution. OUTLINES sh... |

### `XPSXpsOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `exampleCount` | `string` | Optional. XPS server can opt to provide example count of the long running operation (e.g. trainin... |
| `reportingMetrics` | `XPSReportingMetrics` | Metrics for the operation. By the time the operation is terminated (whether succeeded or failed) ... |
| `tablesTrainingOperationMetadata` | `XPSTablesTrainingOperationMetadata` |  |
| `videoBatchPredictOperationMetadata` | `XPSVideoBatchPredictOperationMetadata` |  |
| `videoTrainingOperationMetadata` | `XPSVideoTrainingOperationMetadata` |  |
| `visionTrainingOperationMetadata` | `XPSVisionTrainingOperationMetadata` |  |

### `XPSXraiAttribution`

An explanation method that redistributes Integrated Gradients attributions to segmented regions, taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 Only supports image Models (modality is IMAGE).

| Property | Type | Description |
|----------|------|-------------|
| `stepCount` | `integer` | The number of steps for approximating the path integral. A good value to start is 50 and graduall... |

