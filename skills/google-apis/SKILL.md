---
name: google-apis
description: Comprehensive Google APIs skill covering 300+ APIs across Workspace
  (Gmail, Sheets, Docs, Drive, Calendar, Slides, Admin), Google Cloud (Storage, BigQuery,
  Firestore, Cloud Functions, Pub/Sub, Cloud Run, Compute, Spanner), Firebase (Auth,
  RTDB, FCM, Hosting), Maps, Places, YouTube, Vertex AI, Vision, Natural Language,
  Ads, and more. Use for any Google API integration, authentication (OAuth2, Service
  Accounts, API Keys, ADC), googleapis npm client, gcloud CLI, or REST calls.
---

# Google APIs

Comprehensive reference for all Google APIs. Use decision trees below to find the right API, then load detailed per-API references.

## Authentication

Verify auth before making API calls:

```bash
gcloud auth print-access-token  # Shows token if authenticated
```

Not authenticated? → `references/auth.md`
- **User data** (Gmail, Drive): OAuth2 with consent flow
- **Server-to-server**: Service Account with JSON key
- **Public data** (Maps, YouTube public): API Key
- **Running on GCP**: ADC (automatic)
- **Workspace admin**: Service Account + Domain-Wide Delegation

## API Client Setup

Choose your client → `references/googleapis-client.md`

```
Which client?
├─ Node.js/TypeScript → googleapis npm (covers all 300+ APIs)
├─ Cloud Platform CLI → gcloud
├─ Quick testing → curl
├─ Python → google-api-python-client
└─ Go → google.golang.org/api
```

## Quick Decision Trees

### "I need to work with documents/email/calendar"

```
Workspace APIs:
├─ Read/send email → references/gmail/
├─ Read/write spreadsheets → references/sheets/
├─ Create/edit documents → references/docs/
├─ Manage files/folders → references/drive/
├─ Read/create events → references/calendar/
├─ Create/edit presentations → references/slides/
├─ Manage Workspace users/groups → references/admin/
├─ Manage tasks/to-dos → references/tasks/
└─ Search people/contacts → references/people/
```

### "I need cloud infrastructure"

```
Cloud Platform APIs:
├─ Object storage (S3-like) → references/storage/
├─ SQL analytics warehouse → references/bigquery/
├─ Document database → references/firestore/
├─ Serverless functions → references/cloudfunctions/
├─ Event messaging → references/pubsub/
├─ Container hosting → references/run/
├─ Virtual machines → references/compute/
├─ Kubernetes → references/container/
├─ Relational database → references/sqladmin/
├─ Secrets management → references/secretmanager/
├─ Logging → references/logging/
├─ Monitoring → references/monitoring/
└─ DNS management → references/dns/
```

### "I need Firebase"

```
Firebase APIs:
├─ User authentication → references/identitytoolkit/
├─ Realtime database → references/firebasedatabase/
├─ Push notifications → references/fcm/
├─ Static hosting → references/firebasehosting/
├─ App hosting → references/firebaseapphosting/
├─ App check → references/firebaseappcheck/
└─ App distribution → references/firebaseappdistribution/
```

### "I need AI/ML"

```
AI & ML APIs:
├─ Generative AI (Gemini) → references/aiplatform/
├─ Image analysis → references/vision/
├─ Text analysis → references/language/
├─ Speech-to-text → references/speech/
├─ Text-to-speech → references/texttospeech/
├─ Translation → references/translate/
├─ Document processing → references/documentai/
└─ Dialogflow chatbots → references/dialogflow/
```

### "I need maps/location"

```
Maps & Places APIs:
├─ Place search/details/autocomplete → references/places/
├─ Address validation → references/addressvalidation/
├─ Street View → references/streetviewpublish/
└─ Air quality / pollen / solar → references/airquality/, references/pollen/, references/solar/
```

### "I need video/media"

```
YouTube & Media APIs:
├─ Search/manage videos → references/youtube/
├─ Channel analytics → references/youtubeanalytics/
├─ Reporting → references/youtubereporting/
└─ Live streaming → references/youtube/ (liveBroadcasts)
```

### "I need advertising/business"

```
Ads & Commerce APIs:
├─ AdSense → references/adsense/
├─ AdMob → references/admob/
├─ Merchant Center → references/content/
├─ Search Ads 360 → references/doubleclicksearch/
├─ Display & Video 360 → references/displayvideo/
└─ Business Profile → references/mybusinessbusinessinformation/
```

### "I need an API not listed above"

→ `references/api-index.md` — Full searchable index of all 300+ APIs with categories.

## Product Index

### Workspace
| API | Reference |
|-----|-----------|
| Gmail | `references/gmail/` |
| Google Sheets | `references/sheets/` |
| Google Docs | `references/docs/` |
| Google Drive | `references/drive/` |
| Google Calendar | `references/calendar/` |
| Google Slides | `references/slides/` |
| Admin SDK | `references/admin/` |
| People (Contacts) | `references/people/` |
| Tasks | `references/tasks/` |

### Cloud Platform
| API | Reference |
|-----|-----------|
| Cloud Storage | `references/storage/` |
| BigQuery | `references/bigquery/` |
| Cloud Firestore | `references/firestore/` |
| Cloud Functions | `references/cloudfunctions/` |
| Cloud Pub/Sub | `references/pubsub/` |
| Cloud Run | `references/run/` |
| Compute Engine | `references/compute/` |
| Secret Manager | `references/secretmanager/` |
| Cloud SQL | `references/sqladmin/` |
| Cloud Logging | `references/logging/` |
| Cloud Monitoring | `references/monitoring/` |

### Firebase
| API | Reference |
|-----|-----------|
| Firebase Auth (Identity Toolkit) | `references/identitytoolkit/` |
| Firebase Realtime Database | `references/firebasedatabase/` |
| Firebase Cloud Messaging | `references/fcm/` |
| Firebase Hosting | `references/firebasehosting/` |

### AI & ML
| API | Reference |
|-----|-----------|
| Vertex AI / AI Platform | `references/aiplatform/` |
| Cloud Vision | `references/vision/` |
| Cloud Natural Language | `references/language/` |
| Cloud Speech-to-Text | `references/speech/` |
| Cloud Translation | `references/translate/` |

### Maps & Places
| API | Reference |
|-----|-----------|
| Places (New) | `references/places/` |
| Address Validation | `references/addressvalidation/` |

### YouTube
| API | Reference |
|-----|-----------|
| YouTube Data | `references/youtube/` |
| YouTube Analytics | `references/youtubeanalytics/` |
| YouTube Reporting | `references/youtubereporting/` |

### Identity & Security
| API | Reference |
|-----|-----------|
| Identity Toolkit | `references/identitytoolkit/` |
| IAM | `references/iam/` |
| reCAPTCHA Enterprise | `references/recaptchaenterprise/` |

### Other
| API | Reference |
|-----|-----------|
| Custom Search | `references/customsearch/` |
| PageSpeed Insights | `references/pagespeedonline/` |
| Google Analytics | `references/analyticsdata/` |
| Search Console | `references/searchconsole/` |

→ **Full index**: `references/api-index.md`

## Regeneration

To update API references from latest Discovery data:
```bash
python3 scripts/gen_all_robust.py --parallel 15
```
See `references/GENERATION.md` for full docs on regeneration, single-API updates, and Firecrawl enhancement.
