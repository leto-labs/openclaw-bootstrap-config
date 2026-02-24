# Calendar API

> Manipulates events and other calendar data.

## Overview

- **API**: `calendar`
- **Version**: `v3`
- **Base URL**: `https://www.googleapis.com/calendar/v3/`
- **Docs**: [https://developers.google.com/workspace/calendar](https://developers.google.com/workspace/calendar)

## When to Use

Use the Google Calendar API when you need to:

- **Schedule and manage events** -- create, update, move, or delete events on user calendars programmatically
- **Build scheduling workflows** -- check free/busy availability across multiple calendars before booking meetings
- **Sync calendar data** -- keep an external system in sync with Google Calendar using incremental sync (`syncToken`) or push notifications
- **Manage recurring events** -- create repeating meetings with RRULE patterns, modify individual instances, or handle exceptions
- **Automate invitations** -- add attendees, send email notifications, and manage RSVP responses
- **Create secondary calendars** -- programmatically create project, team, or resource calendars
- **Add conferencing** -- attach Google Meet video conferences to events automatically
- **Display availability** -- show a user's busy/free time slots for appointment booking UIs

### Concrete Scenarios

| Scenario | Key Methods |
|----------|-------------|
| Booking app that checks availability then creates events | `freebusy.query`, `events.insert` |
| Dashboard showing upcoming meetings | `events.list` with `timeMin`/`timeMax` |
| Recurring standup that skips holidays | `events.insert` with RRULE + EXDATE |
| Webhook that reacts to calendar changes | `events.watch`, then `events.list` with `syncToken` |
| Migration tool importing events from another system | `events.import` (preserves iCalendar UIDs) |
| Quick natural-language event creation | `events.quickAdd` |

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const calendar = google.calendar({ version: "v3", auth });

// List next 10 upcoming events
const res = await calendar.events.list({
  calendarId: "primary",
  timeMin: new Date().toISOString(),
  maxResults: 10,
  singleEvents: true,
  orderBy: "startTime",
});

const events = res.data.items;
if (!events || events.length === 0) {
  console.log("No upcoming events found.");
} else {
  for (const event of events) {
    const start = event.start?.dateTime ?? event.start?.date;
    console.log(`${start} - ${event.summary}`);
  }
}
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://www.googleapis.com/calendar/v3/calendars/primary/events?timeMin=$(date -u +%Y-%m-%dT%H:%M:%SZ)&maxResults=10&singleEvents=true&orderBy=startTime"
```

## Key Concepts

- **Calendar vs CalendarList**: `calendars` manages the calendar itself (metadata, create/delete). `calendarList` manages a user's subscriptions to calendars (add/remove from sidebar, per-user color/reminders).
- **Primary calendar**: Special calendar tied to a user account, accessed with `calendarId: 'primary'`. Cannot be deleted.
- **Single vs Recurring events**: Single events are one-off. Recurring events use RRULE recurrence patterns and expand into individual instances.
- **Timed vs All-day events**: Timed events use `start.dateTime`/`end.dateTime`. All-day events use `start.date`/`end.date`.
- **Time zones**: Always use IANA identifiers (e.g., `America/New_York`). Recurring events require an explicit `timeZone`.

## Resource Types

| Resource | Description |
|----------|-------------|
| **Events** | Calendar events (single, recurring, all-day) |
| **Calendars** | Calendar metadata (title, timezone, location) |
| **CalendarList** | User's subscribed calendars with per-user settings |
| **Acl** | Access control rules for calendar sharing |
| **Freebusy** | Free/busy availability queries |
| **Settings** | User preferences (timezone, format, etc.) |
| **Colors** | Color definitions for calendars and events |
| **Channels** | Push notification channel management |

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |
