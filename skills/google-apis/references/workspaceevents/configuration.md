# Google Workspace Events API - Configuration

## Enable the API

```bash
gcloud services enable workspaceevents.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/workspaceevents.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/chat.app.memberships` | On their own behalf, apps in Google Chat can see, add, update, and remove members from conversations and spaces |
| `https://www.googleapis.com/auth/chat.app.messages.readonly` | On their own behalf, apps in Google Chat can see all messages and their associated reactions and message content |
| `https://www.googleapis.com/auth/chat.app.spaces` | On their own behalf, apps in Google Chat can create conversations and spaces and see or update their metadata (including history settings and access settings) |
| `https://www.googleapis.com/auth/chat.bot` | Private Service: https://www.googleapis.com/auth/chat.bot |
| `https://www.googleapis.com/auth/chat.memberships` | See, add, update, and remove members from conversations and spaces in Google Chat |
| `https://www.googleapis.com/auth/chat.memberships.readonly` | View members in Google Chat conversations. |
| `https://www.googleapis.com/auth/chat.messages` | See, compose, send, update, and delete messages as well as their message content; add, see, and delete reactions to messages. |
| `https://www.googleapis.com/auth/chat.messages.reactions` | See, add, and delete reactions as well as their reaction content to messages in Google Chat |
| `https://www.googleapis.com/auth/chat.messages.reactions.readonly` | View reactions as well as their reaction content to messages in Google Chat |
| `https://www.googleapis.com/auth/chat.messages.readonly` | See messages as well as their reactions and message content in Google Chat |
| `https://www.googleapis.com/auth/chat.spaces` | Create conversations and spaces and see or update metadata (including history settings and access settings) in Google Chat |
| `https://www.googleapis.com/auth/chat.spaces.readonly` | View chat and spaces in Google Chat |
| `https://www.googleapis.com/auth/drive` | See, edit, create, and delete all of your Google Drive files |
| `https://www.googleapis.com/auth/drive.file` | See, edit, create, and delete only the specific Google Drive files you use with this app |
| `https://www.googleapis.com/auth/drive.metadata` | View and manage metadata of files in your Google Drive |
| `https://www.googleapis.com/auth/drive.metadata.readonly` | See information about your Google Drive files |
| `https://www.googleapis.com/auth/drive.readonly` | See and download all your Google Drive files |
| `https://www.googleapis.com/auth/meetings.space.created` | Create, edit, and see information about your Google Meet conferences created by the app. |
| `https://www.googleapis.com/auth/meetings.space.readonly` | Read information about any of your Google Meet conferences |

## Service Endpoint

- **Root URL**: `https://workspaceevents.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

