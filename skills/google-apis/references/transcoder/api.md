# Transcoder API - API Reference

**Version**: `v1` | **Methods**: 8 | **Schemas**: 63

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `transcoder.projects.locations.jobs.list` | GET | `v1/{+parent}/jobs` | Lists jobs in the specified region. |
| `transcoder.projects.locations.jobs.get` | GET | `v1/{+name}` | Returns the job data. |
| `transcoder.projects.locations.jobs.delete` | DELETE | `v1/{+name}` | Deletes a job. |
| `transcoder.projects.locations.jobs.create` | POST | `v1/{+parent}/jobs` | Creates a job in the specified region. |
| `transcoder.projects.locations.jobTemplates.create` | POST | `v1/{+parent}/jobTemplates` | Creates a job template in the specified region. |
| `transcoder.projects.locations.jobTemplates.delete` | DELETE | `v1/{+name}` | Deletes a job template. |
| `transcoder.projects.locations.jobTemplates.list` | GET | `v1/{+parent}/jobTemplates` | Lists job templates in the specified region. |
| `transcoder.projects.locations.jobTemplates.get` | GET | `v1/{+name}` | Returns the job template data. |

### `transcoder.projects.locations.jobs.list`

**GET** `v1/{+parent}/jobs`

Lists jobs in the specified region.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: `projects/{project}/locations/{location}` |
| `filter` | `string` | query | No | The filter expression, following the syntax outlined in https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | One or more fields to compare and use to sort the output. See https://google.aip.dev/132#ordering. |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous List request, if any. |

**Response**: `ListJobsResponse`

```typescript
const res = await transcoder.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `transcoder.projects.locations.jobs.get`

**GET** `v1/{+name}`

Returns the job data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the job to retrieve. Format: `projects/{project}/locations/{location}/jobs/{job}` |

**Response**: `Job`

```typescript
const res = await transcoder.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `transcoder.projects.locations.jobs.delete`

**DELETE** `v1/{+name}`

Deletes a job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the job to delete. Format: `projects/{project}/locations/{location}/jobs/{job}` |
| `allowMissing` | `boolean` | query | No | If set to true, and the job is not found, the request will succeed but no action will be taken on the server. |

**Response**: `Empty`

```typescript
const res = await transcoder.jobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `transcoder.projects.locations.jobs.create`

**POST** `v1/{+parent}/jobs`

Creates a job in the specified region.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent location to create and process this job. Format: `projects/{project}/locations/{location}` |

**Request body**: `Job`

**Response**: `Job`

```typescript
const res = await transcoder.jobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `transcoder.projects.locations.jobTemplates.create`

**POST** `v1/{+parent}/jobTemplates`

Creates a job template in the specified region.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent location to create this job template. Format: `projects/{project}/locations/{location}` |
| `jobTemplateId` | `string` | query | No | Required. The ID to use for the job template, which will become the final component of the job template's resource na... |

**Request body**: `JobTemplate`

**Response**: `JobTemplate`

```typescript
const res = await transcoder.jobTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `transcoder.projects.locations.jobTemplates.delete`

**DELETE** `v1/{+name}`

Deletes a job template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the job template to delete. `projects/{project}/locations/{location}/jobTemplates/{job_template}` |
| `allowMissing` | `boolean` | query | No | If set to true, and the job template is not found, the request will succeed but no action will be taken on the server. |

**Response**: `Empty`

```typescript
const res = await transcoder.jobTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `transcoder.projects.locations.jobTemplates.list`

**GET** `v1/{+parent}/jobTemplates`

Lists job templates in the specified region.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent location from which to retrieve the collection of job templates. Format: `projects/{project}/loc... |
| `filter` | `string` | query | No | The filter expression, following the syntax outlined in https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | One or more fields to compare and use to sort the output. See https://google.aip.dev/132#ordering. |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous List request, if any. |

**Response**: `ListJobTemplatesResponse`

```typescript
const res = await transcoder.jobTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `transcoder.projects.locations.jobTemplates.get`

**GET** `v1/{+name}`

Returns the job template data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the job template to retrieve. Format: `projects/{project}/locations/{location}/jobTemplates/{jo... |

**Response**: `JobTemplate`

```typescript
const res = await transcoder.jobTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AdBreak`

Ad break.

| Property | Type | Description |
|----------|------|-------------|
| `startTimeOffset` | `string` | Start time in seconds for the ad break, relative to the output file timeline. The default is `0s`. |

### `Aes128Encryption`

Configuration for AES-128 encryption.

### `Animation`

Animation types.

| Property | Type | Description |
|----------|------|-------------|
| `animationEnd` | `AnimationEnd` | End previous animation. |
| `animationFade` | `AnimationFade` | Display overlay object with fade animation. |
| `animationStatic` | `AnimationStatic` | Display static overlay object. |

### `AnimationEnd`

End previous overlay animation from the video. Without `AnimationEnd`, the overlay object will keep the state of previous animation until the end of the video.

| Property | Type | Description |
|----------|------|-------------|
| `startTimeOffset` | `string` | The time to end overlay object, in seconds. Default: 0 |

### `AnimationFade`

Display overlay object with fade animation.

| Property | Type | Description |
|----------|------|-------------|
| `endTimeOffset` | `string` | The time to end the fade animation, in seconds. Default: `start_time_offset` + 1s |
| `fadeType` | `string` | Required. Type of fade animation: `FADE_IN` or `FADE_OUT`. |
| `startTimeOffset` | `string` | The time to start the fade animation, in seconds. Default: 0 |
| `xy` | `NormalizedCoordinate` | Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the u... |

### `AnimationStatic`

Display static overlay object.

| Property | Type | Description |
|----------|------|-------------|
| `startTimeOffset` | `string` | The time to start displaying the overlay object, in seconds. Default: 0 |
| `xy` | `NormalizedCoordinate` | Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the u... |

### `Audio`

Audio preprocessing configuration.

| Property | Type | Description |
|----------|------|-------------|
| `highBoost` | `boolean` | Enable boosting high frequency components. The default is `false`. **Note:** This field is not su... |
| `lowBoost` | `boolean` | Enable boosting low frequency components. The default is `false`. **Note:** This field is not sup... |
| `lufs` | `number` | Specify audio loudness normalization in loudness units relative to full scale (LUFS). Enter a val... |

### `AudioMapping`

The mapping for the JobConfig.edit_list atoms with audio EditAtom.inputs.

| Property | Type | Description |
|----------|------|-------------|
| `atomKey` | `string` | Required. The EditAtom.key that references the atom with audio inputs in the JobConfig.edit_list. |
| `gainDb` | `number` | Audio volume control in dB. Negative values decrease volume, positive values increase. The defaul... |
| `inputChannel` | `integer` | Required. The zero-based index of the channel in the input audio stream. |
| `inputKey` | `string` | Required. The Input.key that identifies the input file. |
| `inputTrack` | `integer` | Required. The zero-based index of the track in the input file. |
| `outputChannel` | `integer` | Required. The zero-based index of the channel in the output audio stream. |

### `AudioStream`

Audio stream resource.

| Property | Type | Description |
|----------|------|-------------|
| `bitrateBps` | `integer` | Required. Audio bitrate in bits per second. Must be between 1 and 10,000,000. |
| `channelCount` | `integer` | Number of audio channels. Must be between 1 and 6. The default is 2. |
| `channelLayout` | `array<string>` | A list of channel names specifying layout of the audio channels. This only affects the metadata e... |
| `codec` | `string` | The codec for this audio stream. The default is `aac`. Supported audio codecs: - `aac` - `aac-he`... |
| `displayName` | `string` | The name for this particular audio stream that will be added to the HLS/DASH manifest. Not suppor... |
| `languageCode` | `string` | The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.uni... |
| `mapping` | `array<AudioMapping>` | The mapping for the JobConfig.edit_list atoms with audio EditAtom.inputs. |
| `sampleRateHertz` | `integer` | The audio sample rate in Hertz. The default is 48000 Hertz. |

### `BwdifConfig`

Bob Weaver Deinterlacing Filter Configuration.

| Property | Type | Description |
|----------|------|-------------|
| `deinterlaceAllFrames` | `boolean` | Deinterlace all frames rather than just the frames identified as interlaced. The default is `false`. |
| `mode` | `string` | Specifies the deinterlacing mode to adopt. The default is `send_frame`. Supported values: - `send... |
| `parity` | `string` | The picture field parity assumed for the input interlaced video. The default is `auto`. Supported... |

### `Clearkey`

Clearkey configuration.

### `Color`

Color preprocessing configuration. **Note:** This configuration is not supported.

| Property | Type | Description |
|----------|------|-------------|
| `brightness` | `number` | Control brightness of the video. Enter a value between -1 and 1, where -1 is minimum brightness a... |
| `contrast` | `number` | Control black and white contrast of the video. Enter a value between -1 and 1, where -1 is minimu... |
| `saturation` | `number` | Control color saturation of the video. Enter a value between -1 and 1, where -1 is fully desatura... |

### `Crop`

Video cropping configuration for the input video. The cropped input video is scaled to match the output resolution.

| Property | Type | Description |
|----------|------|-------------|
| `bottomPixels` | `integer` | The number of pixels to crop from the bottom. The default is 0. |
| `leftPixels` | `integer` | The number of pixels to crop from the left. The default is 0. |
| `rightPixels` | `integer` | The number of pixels to crop from the right. The default is 0. |
| `topPixels` | `integer` | The number of pixels to crop from the top. The default is 0. |

### `DashConfig`

`DASH` manifest configuration.

| Property | Type | Description |
|----------|------|-------------|
| `segmentReferenceScheme` | `string` | The segment reference scheme for a `DASH` manifest. The default is `SEGMENT_LIST`. |

### `Deblock`

Deblock preprocessing configuration. **Note:** This configuration is not supported.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Enable deblocker. The default is `false`. |
| `strength` | `number` | Set strength of the deblocker. Enter a value between 0 and 1. The higher the value, the stronger ... |

### `Deinterlace`

Deinterlace configuration for input video.

| Property | Type | Description |
|----------|------|-------------|
| `bwdif` | `BwdifConfig` | Specifies the Bob Weaver Deinterlacing Filter Configuration. |
| `yadif` | `YadifConfig` | Specifies the Yet Another Deinterlacing Filter Configuration. |

### `Denoise`

Denoise preprocessing configuration. **Note:** This configuration is not supported.

| Property | Type | Description |
|----------|------|-------------|
| `strength` | `number` | Set strength of the denoise. Enter a value between 0 and 1. The higher the value, the smoother th... |
| `tune` | `string` | Set the denoiser mode. The default is `standard`. Supported denoiser modes: - `standard` - `grain` |

### `DrmSystems`

Defines configuration for DRM systems in use.

| Property | Type | Description |
|----------|------|-------------|
| `clearkey` | `Clearkey` | Clearkey configuration. |
| `fairplay` | `Fairplay` | Fairplay configuration. |
| `playready` | `Playready` | Playready configuration. |
| `widevine` | `Widevine` | Widevine configuration. |

### `EditAtom`

Edit atom.

| Property | Type | Description |
|----------|------|-------------|
| `endTimeOffset` | `string` | End time in seconds for the atom, relative to the input file timeline. When `end_time_offset` is ... |
| `inputs` | `array<string>` | List of Input.key values identifying files that should be used in this atom. The listed `inputs` ... |
| `key` | `string` | A unique key for this atom. Must be specified when using advanced mapping. |
| `startTimeOffset` | `string` | Start time in seconds for the atom, relative to the input file timeline. The default is `0s`. |

### `ElementaryStream`

Encoding of an input file such as an audio, video, or text track. Elementary streams must be packaged before mapping and sharing between different output formats.

| Property | Type | Description |
|----------|------|-------------|
| `audioStream` | `AudioStream` | Encoding of an audio stream. |
| `key` | `string` | A unique key for this elementary stream. |
| `textStream` | `TextStream` | Encoding of a text stream. For example, closed captions or subtitles. |
| `videoStream` | `VideoStream` | Encoding of a video stream. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Encryption`

Encryption settings.

| Property | Type | Description |
|----------|------|-------------|
| `aes128` | `Aes128Encryption` | Configuration for AES-128 encryption. |
| `drmSystems` | `DrmSystems` | Required. DRM system(s) to use; at least one must be specified. If a DRM system is omitted, it is... |
| `id` | `string` | Required. Identifier for this set of encryption options. |
| `mpegCenc` | `MpegCommonEncryption` | Configuration for MPEG Common Encryption (MPEG-CENC). |
| `sampleAes` | `SampleAesEncryption` | Configuration for SAMPLE-AES encryption. |
| `secretManagerKeySource` | `SecretManagerSource` | Keys are stored in Google Secret Manager. |

### `Fairplay`

Fairplay configuration.

### `Fmp4Config`

`fmp4` container configuration.

| Property | Type | Description |
|----------|------|-------------|
| `codecTag` | `string` | Optional. Specify the codec tag string that will be used in the media bitstream. When not specifi... |

### `H264CodecSettings`

H264 codec settings.

| Property | Type | Description |
|----------|------|-------------|
| `allowOpenGop` | `boolean` | Specifies whether an open Group of Pictures (GOP) structure should be allowed or not. The default... |
| `aqStrength` | `number` | Specify the intensity of the adaptive quantizer (AQ). Must be between 0 and 1, where 0 disables t... |
| `bFrameCount` | `integer` | The number of consecutive B-frames. Must be greater than or equal to zero. Must be less than H264... |
| `bPyramid` | `boolean` | Allow B-pyramid for reference frame selection. This may not be supported on all decoders. The def... |
| `bitrateBps` | `integer` | Required. The video bitrate in bits per second. The minimum value is 1,000. The maximum value is ... |
| `crfLevel` | `integer` | Target CRF level. Must be between 10 and 36, where 10 is the highest quality and 36 is the most e... |
| `enableTwoPass` | `boolean` | Use two-pass encoding strategy to achieve better video quality. H264CodecSettings.rate_control_mo... |
| `entropyCoder` | `string` | The entropy coder to use. The default is `cabac`. Supported entropy coders: - `cavlc` - `cabac` |
| `frameRate` | `number` | Required. The target video frame rate in frames per second (FPS). Must be less than or equal to 120. |
| `frameRateConversionStrategy` | `string` | Optional. Frame rate conversion strategy for desired frame rate. The default is `DOWNSAMPLE`. |
| `gopDuration` | `string` | Select the GOP size based on the specified duration. The default is `3s`. Note that `gopDuration`... |
| `gopFrameCount` | `integer` | Select the GOP size based on the specified frame count. Must be greater than zero. |
| `heightPixels` | `integer` | The height of the video in pixels. Must be an even integer. When not specified, the height is adj... |
| `hlg` | `H264ColorFormatHLG` | Optional. HLG color format setting for H264. |
| `pixelFormat` | `string` | Pixel format to use. The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel format ... |
| `preset` | `string` | Enforces the specified codec preset. The default is `veryfast`. The available options are [FFmpeg... |
| `profile` | `string` | Enforces the specified codec profile. The following profiles are supported: * `baseline` * `main`... |
| `rateControlMode` | `string` | Specify the mode. The default is `vbr`. Supported rate control modes: - `vbr` - variable bitrate ... |
| `sdr` | `H264ColorFormatSDR` | Optional. SDR color format setting for H264. |
| `tune` | `string` | Enforces the specified codec tune. The available options are [FFmpeg-compatible](https://trac.ffm... |
| `vbvFullnessBits` | `integer` | Initial fullness of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero.... |
| `vbvSizeBits` | `integer` | Size of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default... |
| `widthPixels` | `integer` | The width of the video in pixels. Must be an even integer. When not specified, the width is adjus... |

### `H264ColorFormatHLG`

Convert the input video to a Hybrid Log Gamma (HLG) video.

### `H264ColorFormatSDR`

Convert the input video to a Standard Dynamic Range (SDR) video.

### `H265CodecSettings`

H265 codec settings.

| Property | Type | Description |
|----------|------|-------------|
| `allowOpenGop` | `boolean` | Specifies whether an open Group of Pictures (GOP) structure should be allowed or not. The default... |
| `aqStrength` | `number` | Specify the intensity of the adaptive quantizer (AQ). Must be between 0 and 1, where 0 disables t... |
| `bFrameCount` | `integer` | The number of consecutive B-frames. Must be greater than or equal to zero. Must be less than H265... |
| `bPyramid` | `boolean` | Allow B-pyramid for reference frame selection. This may not be supported on all decoders. The def... |
| `bitrateBps` | `integer` | Required. The video bitrate in bits per second. The minimum value is 1,000. The maximum value is ... |
| `crfLevel` | `integer` | Target CRF level. Must be between 10 and 36, where 10 is the highest quality and 36 is the most e... |
| `enableTwoPass` | `boolean` | Use two-pass encoding strategy to achieve better video quality. H265CodecSettings.rate_control_mo... |
| `frameRate` | `number` | Required. The target video frame rate in frames per second (FPS). Must be less than or equal to 120. |
| `frameRateConversionStrategy` | `string` | Optional. Frame rate conversion strategy for desired frame rate. The default is `DOWNSAMPLE`. |
| `gopDuration` | `string` | Select the GOP size based on the specified duration. The default is `3s`. Note that `gopDuration`... |
| `gopFrameCount` | `integer` | Select the GOP size based on the specified frame count. Must be greater than zero. |
| `hdr10` | `H265ColorFormatHDR10` | Optional. HDR10 color format setting for H265. |
| `heightPixels` | `integer` | The height of the video in pixels. Must be an even integer. When not specified, the height is adj... |
| `hlg` | `H265ColorFormatHLG` | Optional. HLG color format setting for H265. |
| `pixelFormat` | `string` | Pixel format to use. The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel format ... |
| `preset` | `string` | Enforces the specified codec preset. The default is `veryfast`. The available options are [FFmpeg... |
| `profile` | `string` | Enforces the specified codec profile. The following profiles are supported: * 8-bit profiles * `m... |
| `rateControlMode` | `string` | Specify the mode. The default is `vbr`. Supported rate control modes: - `vbr` - variable bitrate ... |
| `sdr` | `H265ColorFormatSDR` | Optional. SDR color format setting for H265. |
| `tune` | `string` | Enforces the specified codec tune. The available options are [FFmpeg-compatible](https://trac.ffm... |
| `vbvFullnessBits` | `integer` | Initial fullness of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero.... |
| `vbvSizeBits` | `integer` | Size of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default... |
| `widthPixels` | `integer` | The width of the video in pixels. Must be an even integer. When not specified, the width is adjus... |

### `H265ColorFormatHDR10`

Convert the input video to a High Dynamic Range 10 (HDR10) video.

### `H265ColorFormatHLG`

Convert the input video to a Hybrid Log Gamma (HLG) video.

### `H265ColorFormatSDR`

Convert the input video to a Standard Dynamic Range (SDR) video.

### `Image`

Overlaid image.

| Property | Type | Description |
|----------|------|-------------|
| `alpha` | `number` | Target image opacity. Valid values are from `1.0` (solid, default) to `0.0` (transparent), exclus... |
| `resolution` | `NormalizedCoordinate` | Normalized image resolution, based on output video resolution. Valid values: `0.0`–`1.0`. To resp... |
| `uri` | `string` | Required. URI of the image in Cloud Storage. For example, `gs://bucket/inputs/image.png`. Only PN... |

### `Input`

Input asset.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `InputAttributes` | Optional. Input Attributes. |
| `key` | `string` | A unique key for this input. Must be specified when using advanced mapping and edit lists. |
| `preprocessingConfig` | `PreprocessingConfig` | Preprocessing configurations. |
| `uri` | `string` | URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage ... |

### `InputAttributes`

Input attributes that provide additional information about the input asset.

| Property | Type | Description |
|----------|------|-------------|
| `trackDefinitions` | `array<TrackDefinition>` | Optional. A list of track definitions for the input asset. |

### `Job`

Transcoding job resource.

| Property | Type | Description |
|----------|------|-------------|
| `batchModePriority` | `integer` | The processing priority of a batch job. This field can only be set for batch mode jobs. The defau... |
| `config` | `JobConfig` | The configuration for this job. |
| `createTime` | `string` | Output only. The time the job was created. |
| `endTime` | `string` | Output only. The time the transcoding finished. |
| `error` | `Status` | Output only. An error object that describes the reason for the failure. This property is always p... |
| `fillContentGaps` | `boolean` | Optional. Insert silence and duplicate frames when timestamp gaps are detected in a given stream. |
| `inputUri` | `string` | Input only. Specify the `input_uri` to populate empty `uri` fields in each element of `Job.config... |
| `labels` | `object` | The labels associated with this job. You can use these to organize and group your jobs. |
| `mode` | `string` | The processing mode of the job. The default is `PROCESSING_MODE_INTERACTIVE`. |
| `name` | `string` | The resource name of the job. Format: `projects/{project_number}/locations/{location}/jobs/{job}` |
| `optimization` | `string` | Optional. The optimization strategy of the job. The default is `AUTODETECT`. |
| `outputUri` | `string` | Input only. Specify the `output_uri` to populate an empty `Job.config.output.uri` or `JobTemplate... |
| `startTime` | `string` | Output only. The time the transcoding started. |
| `state` | `string` | Output only. The current state of the job. |
| `templateId` | `string` | Input only. Specify the `template_id` to use for populating `Job.config`. The default is `preset/... |
| `ttlAfterCompletionDays` | `integer` | Job time to live value in days, which will be effective after job completion. Job should be delet... |

### `JobConfig`

Job configuration

| Property | Type | Description |
|----------|------|-------------|
| `adBreaks` | `array<AdBreak>` | List of ad breaks. Specifies where to insert ad break tags in the output manifests. |
| `editList` | `array<EditAtom>` | List of edit atoms. Defines the ultimate timeline of the resulting file or manifest. |
| `elementaryStreams` | `array<ElementaryStream>` | List of elementary streams. |
| `encryptions` | `array<Encryption>` | List of encryption configurations for the content. Each configuration has an ID. Specify this ID ... |
| `inputs` | `array<Input>` | List of input assets stored in Cloud Storage. |
| `manifests` | `array<Manifest>` | List of output manifests. |
| `muxStreams` | `array<MuxStream>` | List of multiplexing settings for output streams. |
| `output` | `Output` | Output configuration. |
| `overlays` | `array<Overlay>` | List of overlays on the output video, in descending Z-order. |
| `pubsubDestination` | `PubsubDestination` | Destination on Pub/Sub. |
| `spriteSheets` | `array<SpriteSheet>` | List of output sprite sheets. Spritesheets require at least one VideoStream in the Jobconfig. |

### `JobTemplate`

Transcoding job template resource.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `JobConfig` | The configuration for this template. |
| `labels` | `object` | The labels associated with this job template. You can use these to organize and group your job te... |
| `name` | `string` | The resource name of the job template. Format: `projects/{project_number}/locations/{location}/jo... |

### `ListJobTemplatesResponse`

Response message for `TranscoderService.ListJobTemplates`.

| Property | Type | Description |
|----------|------|-------------|
| `jobTemplates` | `array<JobTemplate>` | List of job templates in the specified region. |
| `nextPageToken` | `string` | The pagination token. |
| `unreachable` | `array<string>` | List of regions that could not be reached. |

### `ListJobsResponse`

Response message for `TranscoderService.ListJobs`.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<Job>` | List of jobs in the specified region. |
| `nextPageToken` | `string` | The pagination token. |
| `unreachable` | `array<string>` | List of regions that could not be reached. |

### `Manifest`

Manifest configuration.

| Property | Type | Description |
|----------|------|-------------|
| `dash` | `DashConfig` | `DASH` manifest configuration. |
| `fileName` | `string` | The name of the generated file. The default is `manifest` with the extension suffix corresponding... |
| `muxStreams` | `array<string>` | Required. List of user supplied MuxStream.key values that should appear in this manifest. When Ma... |
| `type` | `string` | Required. Type of the manifest. |

### `MpegCommonEncryption`

Configuration for MPEG Common Encryption (MPEG-CENC).

| Property | Type | Description |
|----------|------|-------------|
| `scheme` | `string` | Required. Specify the encryption scheme. Supported encryption schemes: - `cenc` - `cbcs` |

### `MuxStream`

Multiplexing settings for output stream.

| Property | Type | Description |
|----------|------|-------------|
| `container` | `string` | The container format. The default is `mp4` Supported streaming formats: - `ts` - `fmp4`- the corr... |
| `elementaryStreams` | `array<string>` | List of ElementaryStream.key values multiplexed in this stream. |
| `encryptionId` | `string` | Identifier of the encryption configuration to use. If omitted, output will be unencrypted. |
| `fileName` | `string` | The name of the generated file. The default is MuxStream.key with the extension suffix correspond... |
| `fmp4` | `Fmp4Config` | Optional. `fmp4` container configuration. |
| `key` | `string` | A unique key for this multiplexed stream. |
| `segmentSettings` | `SegmentSettings` | Segment settings for `ts`, `fmp4` and `vtt`. |

### `NormalizedCoordinate`

2D normalized coordinates. Default: `{0.0, 0.0}`

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | Normalized x coordinate. |
| `y` | `number` | Normalized y coordinate. |

### `Output`

Location of output file(s) in a Cloud Storage bucket.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | URI for the output file(s). For example, `gs://my-bucket/outputs/`. Must be a directory and not a... |

### `Overlay`

Overlay configuration.

| Property | Type | Description |
|----------|------|-------------|
| `animations` | `array<Animation>` | List of animations. The list should be chronological, without any time overlap. |
| `image` | `Image` | Image overlay. |

### `Pad`

Pad filter configuration for the input video. The padded input video is scaled after padding with black to match the output resolution.

| Property | Type | Description |
|----------|------|-------------|
| `bottomPixels` | `integer` | The number of pixels to add to the bottom. The default is 0. |
| `leftPixels` | `integer` | The number of pixels to add to the left. The default is 0. |
| `rightPixels` | `integer` | The number of pixels to add to the right. The default is 0. |
| `topPixels` | `integer` | The number of pixels to add to the top. The default is 0. |

### `Playready`

Playready configuration.

### `PreprocessingConfig`

Preprocessing configurations.

| Property | Type | Description |
|----------|------|-------------|
| `audio` | `Audio` | Audio preprocessing configuration. |
| `color` | `Color` | Color preprocessing configuration. |
| `crop` | `Crop` | Specify the video cropping configuration. |
| `deblock` | `Deblock` | Deblock preprocessing configuration. |
| `deinterlace` | `Deinterlace` | Specify the video deinterlace configuration. |
| `denoise` | `Denoise` | Denoise preprocessing configuration. |
| `pad` | `Pad` | Specify the video pad filter configuration. |

### `PubsubDestination`

A Pub/Sub destination.

| Property | Type | Description |
|----------|------|-------------|
| `topic` | `string` | The name of the Pub/Sub topic to publish job completion notification to. For example: `projects/{... |

### `SampleAesEncryption`

Configuration for SAMPLE-AES encryption.

### `SecretManagerSource`

Configuration for secrets stored in Google Secret Manager.

| Property | Type | Description |
|----------|------|-------------|
| `secretVersion` | `string` | Required. The name of the Secret Version containing the encryption key in the following format: `... |

### `SegmentSettings`

Segment settings for `ts`, `fmp4` and `vtt`.

| Property | Type | Description |
|----------|------|-------------|
| `individualSegments` | `boolean` | Required. Create an individual segment file. The default is `false`. |
| `segmentDuration` | `string` | Duration of the segments in seconds. The default is `6.0s`. Note that `segmentDuration` must be g... |

### `SpriteSheet`

Sprite sheet configuration.

| Property | Type | Description |
|----------|------|-------------|
| `columnCount` | `integer` | The maximum number of sprites per row in a sprite sheet. The default is 0, which indicates no max... |
| `endTimeOffset` | `string` | End time in seconds, relative to the output file timeline. When `end_time_offset` is not specifie... |
| `filePrefix` | `string` | Required. File name prefix for the generated sprite sheets. Each sprite sheet has an incremental ... |
| `format` | `string` | Format type. The default is `jpeg`. Supported formats: - `jpeg` |
| `interval` | `string` | Starting from `0s`, create sprites at regular intervals. Specify the interval value in seconds. |
| `quality` | `integer` | The quality of the generated sprite sheet. Enter a value between 1 and 100, where 1 is the lowest... |
| `rowCount` | `integer` | The maximum number of rows per sprite sheet. When the sprite sheet is full, a new sprite sheet is... |
| `spriteHeightPixels` | `integer` | Required. The height of sprite in pixels. Must be an even integer. To preserve the source aspect ... |
| `spriteWidthPixels` | `integer` | Required. The width of sprite in pixels. Must be an even integer. To preserve the source aspect r... |
| `startTimeOffset` | `string` | Start time in seconds, relative to the output file timeline. Determines the first sprite to pick.... |
| `totalCount` | `integer` | Total number of sprites. Create the specified number of sprites distributed evenly across the tim... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TextMapping`

The mapping for the JobConfig.edit_list atoms with text EditAtom.inputs.

| Property | Type | Description |
|----------|------|-------------|
| `atomKey` | `string` | Required. The EditAtom.key that references atom with text inputs in the JobConfig.edit_list. |
| `inputKey` | `string` | Required. The Input.key that identifies the input file. |
| `inputTrack` | `integer` | Required. The zero-based index of the track in the input file. |

### `TextStream`

Encoding of a text stream. For example, closed captions or subtitles.

| Property | Type | Description |
|----------|------|-------------|
| `codec` | `string` | The codec for this text stream. The default is `webvtt`. Supported text codecs: - `srt` - `ttml` ... |
| `displayName` | `string` | The name for this particular text stream that will be added to the HLS/DASH manifest. Not support... |
| `languageCode` | `string` | The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.uni... |
| `mapping` | `array<TextMapping>` | The mapping for the JobConfig.edit_list atoms with text EditAtom.inputs. |

### `TrackDefinition`

Track definition for the input asset.

| Property | Type | Description |
|----------|------|-------------|
| `detectLanguages` | `boolean` | Optional. Whether to automatically detect the languages present in the track. If true, the system... |
| `detectedLanguages` | `array<string>` | Output only. A list of languages detected in the input asset, represented by a BCP 47 language co... |
| `inputTrack` | `integer` | The input track. |
| `languages` | `array<string>` | Optional. A list of languages spoken in the input asset, represented by a BCP 47 language code, s... |

### `VideoStream`

Video stream resource.

| Property | Type | Description |
|----------|------|-------------|
| `h264` | `H264CodecSettings` | H264 codec settings. |
| `h265` | `H265CodecSettings` | H265 codec settings. |
| `vp9` | `Vp9CodecSettings` | VP9 codec settings. |

### `Vp9CodecSettings`

VP9 codec settings.

| Property | Type | Description |
|----------|------|-------------|
| `bitrateBps` | `integer` | Required. The video bitrate in bits per second. The minimum value is 1,000. The maximum value is ... |
| `crfLevel` | `integer` | Target CRF level. Must be between 10 and 36, where 10 is the highest quality and 36 is the most e... |
| `frameRate` | `number` | Required. The target video frame rate in frames per second (FPS). Must be less than or equal to 120. |
| `frameRateConversionStrategy` | `string` | Optional. Frame rate conversion strategy for desired frame rate. The default is `DOWNSAMPLE`. |
| `gopDuration` | `string` | Select the GOP size based on the specified duration. The default is `3s`. Note that `gopDuration`... |
| `gopFrameCount` | `integer` | Select the GOP size based on the specified frame count. Must be greater than zero. |
| `heightPixels` | `integer` | The height of the video in pixels. Must be an even integer. When not specified, the height is adj... |
| `hlg` | `Vp9ColorFormatHLG` | Optional. HLG color format setting for VP9. |
| `pixelFormat` | `string` | Pixel format to use. The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel format ... |
| `profile` | `string` | Enforces the specified codec profile. The following profiles are supported: * `profile0` (default... |
| `rateControlMode` | `string` | Specify the mode. The default is `vbr`. Supported rate control modes: - `vbr` - variable bitrate |
| `sdr` | `Vp9ColorFormatSDR` | Optional. SDR color format setting for VP9. |
| `widthPixels` | `integer` | The width of the video in pixels. Must be an even integer. When not specified, the width is adjus... |

### `Vp9ColorFormatHLG`

Convert the input video to a Hybrid Log Gamma (HLG) video.

### `Vp9ColorFormatSDR`

Convert the input video to a Standard Dynamic Range (SDR) video.

### `Widevine`

Widevine configuration.

### `YadifConfig`

Yet Another Deinterlacing Filter Configuration.

| Property | Type | Description |
|----------|------|-------------|
| `deinterlaceAllFrames` | `boolean` | Deinterlace all frames rather than just the frames identified as interlaced. The default is `false`. |
| `disableSpatialInterlacing` | `boolean` | Disable spacial interlacing. The default is `false`. |
| `mode` | `string` | Specifies the deinterlacing mode to adopt. The default is `send_frame`. Supported values: - `send... |
| `parity` | `string` | The picture field parity assumed for the input interlaced video. The default is `auto`. Supported... |

