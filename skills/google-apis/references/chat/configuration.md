# Google Chat API - Configuration

## Enable the API

```bash
gcloud services enable chat.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/chat.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/chat.admin.delete` | Delete conversations and spaces owned by your organization and remove access to associated files in Google Chat |
| `https://www.googleapis.com/auth/chat.admin.memberships` | View, add, update and remove members and managers in conversations owned by your organization |
| `https://www.googleapis.com/auth/chat.admin.memberships.readonly` | View members and managers in conversations owned by your organization |
| `https://www.googleapis.com/auth/chat.admin.spaces` | View or edit display name, description, and other metadata for all Google Chat conversations owned by your organization |
| `https://www.googleapis.com/auth/chat.admin.spaces.readonly` | View display name, description, and other metadata for all Google Chat conversations owned by your organization |
| `https://www.googleapis.com/auth/chat.app.delete` | On their own behalf, apps in Google Chat can delete conversations and spaces and remove access to associated files |
| `https://www.googleapis.com/auth/chat.app.memberships` | On their own behalf, apps in Google Chat can see, add, update, and remove members from conversations and spaces |
| `https://www.googleapis.com/auth/chat.app.messages.readonly` | On their own behalf, apps in Google Chat can see all messages and their associated reactions and message content |
| `https://www.googleapis.com/auth/chat.app.spaces` | On their own behalf, apps in Google Chat can create conversations and spaces and see or update their metadata (including history settings and access settings) |
| `https://www.googleapis.com/auth/chat.app.spaces.create` | On their own behalf, apps in Google Chat can create conversations and spaces |
| `https://www.googleapis.com/auth/chat.bot` | Private Service: https://www.googleapis.com/auth/chat.bot |
| `https://www.googleapis.com/auth/chat.customemojis` | View, create, and delete custom emoji in Google Chat |
| `https://www.googleapis.com/auth/chat.customemojis.readonly` | View custom emoji in Google Chat |
| `https://www.googleapis.com/auth/chat.delete` | Delete conversations and spaces and remove access to associated files in Google Chat |
| `https://www.googleapis.com/auth/chat.import` | Import spaces, messages, and memberships into Google Chat. |
| `https://www.googleapis.com/auth/chat.memberships` | See, add, update, and remove members from conversations and spaces in Google Chat |
| `https://www.googleapis.com/auth/chat.memberships.app` | Add and remove itself from conversations and spaces in Google Chat |
| `https://www.googleapis.com/auth/chat.memberships.readonly` | View members in Google Chat conversations. |
| `https://www.googleapis.com/auth/chat.messages` | See, compose, send, update, and delete messages as well as their message content; add, see, and delete reactions to messages. |
| `https://www.googleapis.com/auth/chat.messages.create` | Compose and send messages in Google Chat |
| `https://www.googleapis.com/auth/chat.messages.reactions` | See, add, and delete reactions as well as their reaction content to messages in Google Chat |
| `https://www.googleapis.com/auth/chat.messages.reactions.create` | Add reactions to messages in Google Chat |
| `https://www.googleapis.com/auth/chat.messages.reactions.readonly` | View reactions as well as their reaction content to messages in Google Chat |
| `https://www.googleapis.com/auth/chat.messages.readonly` | See messages as well as their reactions and message content in Google Chat |
| `https://www.googleapis.com/auth/chat.spaces` | Create conversations and spaces and see or update metadata (including history settings and access settings) in Google Chat |
| `https://www.googleapis.com/auth/chat.spaces.create` | Create new conversations and spaces in Google Chat |
| `https://www.googleapis.com/auth/chat.spaces.readonly` | View chat and spaces in Google Chat |
| `https://www.googleapis.com/auth/chat.users.readstate` | View and modify last read time for Google Chat conversations |
| `https://www.googleapis.com/auth/chat.users.readstate.readonly` | View last read time for Google Chat conversations |
| `https://www.googleapis.com/auth/chat.users.spacesettings` | Read and update your space settings |

## Service Endpoint

- **Root URL**: `https://chat.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

