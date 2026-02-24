# Calendar API - Configuration

## Enable the API

```bash
gcloud services enable calendar.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/calendar.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/calendar` | See, edit, share, and permanently delete all the calendars you can access using Google Calendar |
| `https://www.googleapis.com/auth/calendar.acls` | See and change the sharing permissions of Google calendars you own |
| `https://www.googleapis.com/auth/calendar.acls.readonly` | See the sharing permissions of Google calendars you own |
| `https://www.googleapis.com/auth/calendar.app.created` | Make secondary Google calendars, and see, create, change, and delete events on them |
| `https://www.googleapis.com/auth/calendar.calendarlist` | See, add, and remove Google calendars you’re subscribed to |
| `https://www.googleapis.com/auth/calendar.calendarlist.readonly` | See the list of Google calendars you’re subscribed to |
| `https://www.googleapis.com/auth/calendar.calendars` | See and change the properties of Google calendars you have access to, and create secondary calendars |
| `https://www.googleapis.com/auth/calendar.calendars.readonly` | See the title, description, default time zone, and other properties of Google calendars you have access to |
| `https://www.googleapis.com/auth/calendar.events` | View and edit events on all your calendars |
| `https://www.googleapis.com/auth/calendar.events.freebusy` | See the availability on Google calendars you have access to |
| `https://www.googleapis.com/auth/calendar.events.owned` | See, create, change, and delete events on Google calendars you own |
| `https://www.googleapis.com/auth/calendar.events.owned.readonly` | See the events on Google calendars you own |
| `https://www.googleapis.com/auth/calendar.events.public.readonly` | See the events on public calendars |
| `https://www.googleapis.com/auth/calendar.events.readonly` | View events on all your calendars |
| `https://www.googleapis.com/auth/calendar.freebusy` | View your availability in your calendars |
| `https://www.googleapis.com/auth/calendar.readonly` | See and download any calendar you can access using your Google Calendar |
| `https://www.googleapis.com/auth/calendar.settings.readonly` | View your Calendar settings |

## Service Endpoint

- **Root URL**: `https://www.googleapis.com/`
- **Service path**: `calendar/v3/`
- **Batch path**: `batch/calendar/v3`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

