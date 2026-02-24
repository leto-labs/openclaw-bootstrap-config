# Firebase Cloud Messaging API - API Reference

**Version**: `v1` | **Methods**: 1 | **Schemas**: 13

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `fcm.projects.messages.send` | POST | `v1/{+parent}/messages:send` | Send a message to specified target (a registration token, topic or condition). |

### `fcm.projects.messages.send`

**POST** `v1/{+parent}/messages:send`

Send a message to specified target (a registration token, topic or condition).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. It contains the Firebase project id (i.e. the unique identifier for your Firebase project), in the format o... |

**Request body**: `SendMessageRequest`

**Response**: `Message`

```typescript
const res = await fcm.messages.send({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase.messaging`

---

## Schemas

### `AndroidConfig`

Android specific options for messages sent through [FCM connection server](https://goo.gl/4GLdUl).

| Property | Type | Description |
|----------|------|-------------|
| `bandwidthConstrainedOk` | `boolean` | Optional. If set to true, messages will be allowed to be delivered to the app while the device is... |
| `collapseKey` | `string` | An identifier of a group of messages that can be collapsed, so that only the last message gets se... |
| `data` | `object` | Arbitrary key/value payload. If present, it will override google.firebase.fcm.v1.Message.data. |
| `directBootOk` | `boolean` | Optional. If set to true, messages will be allowed to be delivered to the app while the device is... |
| `fcmOptions` | `AndroidFcmOptions` | Options for features provided by the FCM SDK for Android. |
| `notification` | `AndroidNotification` | Notification to send to android devices. |
| `priority` | `string` | Message priority. Can take "normal" and "high" values. For more information, see [Setting the pri... |
| `restrictedPackageName` | `string` | Package name of the application where the registration token must match in order to receive the m... |
| `restrictedSatelliteOk` | `boolean` | Optional. If set to true, messages will be allowed to be delivered to the app while the device is... |
| `ttl` | `string` | How long (in seconds) the message should be kept in FCM storage if the device is offline. The max... |

### `AndroidFcmOptions`

Options for features provided by the FCM SDK for Android.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsLabel` | `string` | Label associated with the message's analytics data. |

### `AndroidNotification`

Notification to send to android devices.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | The notification's body text. If present, it will override google.firebase.fcm.v1.Notification.body. |
| `bodyLocArgs` | `array<string>` | Variable string values to be used in place of the format specifiers in body_loc_key to use to loc... |
| `bodyLocKey` | `string` | The key to the body string in the app's string resources to use to localize the body text to the ... |
| `bypassProxyNotification` | `boolean` | If set, display notifications delivered to the device will be handled by the app instead of the p... |
| `channelId` | `string` | The [notification's channel id](https://developer.android.com/guide/topics/ui/notifiers/notificat... |
| `clickAction` | `string` | The action associated with a user click on the notification. If specified, an activity with a mat... |
| `color` | `string` | The notification's icon color, expressed in #rrggbb format. |
| `defaultLightSettings` | `boolean` | If set to true, use the Android framework's default LED light settings for the notification. Defa... |
| `defaultSound` | `boolean` | If set to true, use the Android framework's default sound for the notification. Default values ar... |
| `defaultVibrateTimings` | `boolean` | If set to true, use the Android framework's default vibrate pattern for the notification. Default... |
| `eventTime` | `string` | Set the time that the event in the notification occurred. Notifications in the panel are sorted b... |
| `icon` | `string` | The notification's icon. Sets the notification icon to myicon for drawable resource myicon. If yo... |
| `image` | `string` | Contains the URL of an image that is going to be displayed in a notification. If present, it will... |
| `lightSettings` | `LightSettings` | Settings to control the notification's LED blinking rate and color if LED is available on the dev... |
| `localOnly` | `boolean` | Set whether or not this notification is relevant only to the current device. Some notifications c... |
| `notificationCount` | `integer` | Sets the number of items this notification represents. May be displayed as a badge count for laun... |
| `notificationPriority` | `string` | Set the relative priority for this notification. Priority is an indication of how much of the use... |
| `proxy` | `string` | Setting to control when a notification may be proxied. |
| `sound` | `string` | The sound to play when the device receives the notification. Supports "default" or the filename o... |
| `sticky` | `boolean` | When set to false or unset, the notification is automatically dismissed when the user clicks it i... |
| `tag` | `string` | Identifier used to replace existing notifications in the notification drawer. If not specified, e... |
| `ticker` | `string` | Sets the "ticker" text, which is sent to accessibility services. Prior to API level 21 (`Lollipop... |
| `title` | `string` | The notification's title. If present, it will override google.firebase.fcm.v1.Notification.title. |
| `titleLocArgs` | `array<string>` | Variable string values to be used in place of the format specifiers in title_loc_key to use to lo... |
| `titleLocKey` | `string` | The key to the title string in the app's string resources to use to localize the title text to th... |
| `vibrateTimings` | `array<string>` | Set the vibration pattern to use. Pass in an array of [protobuf.Duration](https://developers.goog... |
| `visibility` | `string` | Set the [Notification.visibility](https://developer.android.com/reference/android/app/Notificatio... |

### `ApnsConfig`

[Apple Push Notification Service](https://goo.gl/MXRTPa) specific options.

| Property | Type | Description |
|----------|------|-------------|
| `fcmOptions` | `ApnsFcmOptions` | Options for features provided by the FCM SDK for iOS. |
| `headers` | `object` | HTTP request headers defined in Apple Push Notification Service. Refer to [APNs request headers](... |
| `liveActivityToken` | `string` | Optional. [Apple Live Activity](https://developer.apple.com/design/human-interface-guidelines/liv... |
| `payload` | `object` | APNs payload as a JSON object, including both `aps` dictionary and custom payload. See [Payload K... |

### `ApnsFcmOptions`

Options for features provided by the FCM SDK for iOS.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsLabel` | `string` | Label associated with the message's analytics data. |
| `image` | `string` | Contains the URL of an image that is going to be displayed in a notification. If present, it will... |

### `Color`

Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to and from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of `java.awt.Color` in Java; it can also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little work, it can be easily formatted into a CSS `rgba()` string in JavaScript. This reference page doesn't have information about the absolute color space that should be used to interpret the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most `1e-5`. Example (Java): import com.google.type.Color; // ... public static java.awt.Color fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build()); } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } // ... Example (JavaScript): // ... var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join(''); }; var rgbToCssColor = function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) { resultBuilder.push('0'); } resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...

| Property | Type | Description |
|----------|------|-------------|
| `alpha` | `number` | The fraction of this color that should be applied to the pixel. That is, the final pixel color is... |
| `blue` | `number` | The amount of blue in the color as a value in the interval [0, 1]. |
| `green` | `number` | The amount of green in the color as a value in the interval [0, 1]. |
| `red` | `number` | The amount of red in the color as a value in the interval [0, 1]. |

### `FcmOptions`

Platform independent options for features provided by the FCM SDKs.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsLabel` | `string` | Label associated with the message's analytics data. |

### `LightSettings`

Settings to control notification LED.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `Color` | Required. Set `color` of the LED with [google.type.Color](https://github.com/googleapis/googleapi... |
| `lightOffDuration` | `string` | Required. Along with `light_on_duration `, define the blink rate of LED flashes. Resolution defin... |
| `lightOnDuration` | `string` | Required. Along with `light_off_duration`, define the blink rate of LED flashes. Resolution defin... |

### `Message`

Message to send by Firebase Cloud Messaging Service.

| Property | Type | Description |
|----------|------|-------------|
| `android` | `AndroidConfig` | Input only. Android specific options for messages sent through [FCM connection server](https://go... |
| `apns` | `ApnsConfig` | Input only. [Apple Push Notification Service](https://goo.gl/MXRTPa) specific options. |
| `condition` | `string` | Condition to send a message to, e.g. "'foo' in topics && 'bar' in topics". |
| `data` | `object` | Input only. Arbitrary key/value payload, which must be UTF-8 encoded. The key should not be a res... |
| `fcmOptions` | `FcmOptions` | Input only. Template for FCM SDK feature options to use across all platforms. |
| `name` | `string` | Output Only. The identifier of the message sent, in the format of `projects/*/messages/{message_i... |
| `notification` | `Notification` | Input only. Basic notification template to use across all platforms. |
| `token` | `string` | Registration token to send a message to. |
| `topic` | `string` | Topic name to send a message to, e.g. "weather". Note: "/topics/" prefix should not be provided. |
| `webpush` | `WebpushConfig` | Input only. [Webpush protocol](https://tools.ietf.org/html/rfc8030) options. |

### `Notification`

Basic notification template to use across all platforms.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | The notification's body text. |
| `image` | `string` | Contains the URL of an image that is going to be downloaded on the device and displayed in a noti... |
| `title` | `string` | The notification's title. |

### `SendMessageRequest`

Request to send a message to specified target.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `Message` | Required. Message to send. |
| `validateOnly` | `boolean` | Flag for testing the request without actually delivering the message. |

### `WebpushConfig`

[Webpush protocol](https://tools.ietf.org/html/rfc8030) options.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `object` | Arbitrary key/value payload. If present, it will override google.firebase.fcm.v1.Message.data. |
| `fcmOptions` | `WebpushFcmOptions` | Options for features provided by the FCM SDK for Web. |
| `headers` | `object` | HTTP headers defined in webpush protocol. Refer to [Webpush protocol](https://tools.ietf.org/html... |
| `notification` | `object` | Web Notification options as a JSON object. Supports Notification instance properties as defined i... |

### `WebpushFcmOptions`

Options for features provided by the FCM SDK for Web.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsLabel` | `string` | Label associated with the message's analytics data. |
| `link` | `string` | The link to open when the user clicks on the notification. For all URL values, HTTPS is required. |

