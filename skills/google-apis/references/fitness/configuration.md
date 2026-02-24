# Fitness API - Configuration

## Enable the API

```bash
gcloud services enable fitness.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/fitness.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/fitness.activity.read` | Use Google Fit to see and store your physical activity data |
| `https://www.googleapis.com/auth/fitness.activity.write` | Add to your Google Fit physical activity data |
| `https://www.googleapis.com/auth/fitness.blood_glucose.read` | See info about your blood glucose in Google Fit. I consent to Google sharing my blood glucose information with this app. |
| `https://www.googleapis.com/auth/fitness.blood_glucose.write` | Add info about your blood glucose to Google Fit. I consent to Google using my blood glucose information with this app. |
| `https://www.googleapis.com/auth/fitness.blood_pressure.read` | See info about your blood pressure in Google Fit. I consent to Google sharing my blood pressure information with this app. |
| `https://www.googleapis.com/auth/fitness.blood_pressure.write` | Add info about your blood pressure in Google Fit. I consent to Google using my blood pressure information with this app. |
| `https://www.googleapis.com/auth/fitness.body.read` | See info about your body measurements in Google Fit |
| `https://www.googleapis.com/auth/fitness.body.write` | Add info about your body measurements to Google Fit |
| `https://www.googleapis.com/auth/fitness.body_temperature.read` | See info about your body temperature in Google Fit. I consent to Google sharing my body temperature information with this app. |
| `https://www.googleapis.com/auth/fitness.body_temperature.write` | Add to info about your body temperature in Google Fit. I consent to Google using my body temperature information with this app. |
| `https://www.googleapis.com/auth/fitness.heart_rate.read` | See your heart rate data in Google Fit. I consent to Google sharing my heart rate information with this app. |
| `https://www.googleapis.com/auth/fitness.heart_rate.write` | Add to your heart rate data in Google Fit. I consent to Google using my heart rate information with this app. |
| `https://www.googleapis.com/auth/fitness.location.read` | See your Google Fit speed and distance data |
| `https://www.googleapis.com/auth/fitness.location.write` | Add to your Google Fit location data |
| `https://www.googleapis.com/auth/fitness.nutrition.read` | See info about your nutrition in Google Fit |
| `https://www.googleapis.com/auth/fitness.nutrition.write` | Add to info about your nutrition in Google Fit |
| `https://www.googleapis.com/auth/fitness.oxygen_saturation.read` | See info about your oxygen saturation in Google Fit. I consent to Google sharing my oxygen saturation information with this app. |
| `https://www.googleapis.com/auth/fitness.oxygen_saturation.write` | Add info about your oxygen saturation in Google Fit. I consent to Google using my oxygen saturation information with this app. |
| `https://www.googleapis.com/auth/fitness.reproductive_health.read` | See info about your reproductive health in Google Fit. I consent to Google sharing my reproductive health information with this app. |
| `https://www.googleapis.com/auth/fitness.reproductive_health.write` | Add info about your reproductive health in Google Fit. I consent to Google using my reproductive health information with this app. |
| `https://www.googleapis.com/auth/fitness.sleep.read` | See your sleep data in Google Fit. I consent to Google sharing my sleep information with this app. |
| `https://www.googleapis.com/auth/fitness.sleep.write` | Add to your sleep data in Google Fit. I consent to Google using my sleep information with this app. |

## Service Endpoint

- **Root URL**: `https://fitness.googleapis.com/`
- **Service path**: `fitness/v1/users/`
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

