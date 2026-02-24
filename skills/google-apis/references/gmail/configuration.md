# Gmail API - Configuration

## Enable the API

```bash
gcloud services enable gmail.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/gmail.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://mail.google.com/` | Read, compose, send, and permanently delete all your email from Gmail |
| `https://www.googleapis.com/auth/gmail.addons.current.action.compose` | Manage drafts and send emails when you interact with the add-on |
| `https://www.googleapis.com/auth/gmail.addons.current.message.action` | View your email messages when you interact with the add-on |
| `https://www.googleapis.com/auth/gmail.addons.current.message.metadata` | View your email message metadata when the add-on is running |
| `https://www.googleapis.com/auth/gmail.addons.current.message.readonly` | View your email messages when the add-on is running |
| `https://www.googleapis.com/auth/gmail.compose` | Manage drafts and send emails |
| `https://www.googleapis.com/auth/gmail.insert` | Add emails into your Gmail mailbox |
| `https://www.googleapis.com/auth/gmail.labels` | See and edit your email labels |
| `https://www.googleapis.com/auth/gmail.metadata` | View your email message metadata such as labels and headers, but not the email body |
| `https://www.googleapis.com/auth/gmail.modify` | Read, compose, and send emails from your Gmail account |
| `https://www.googleapis.com/auth/gmail.readonly` | View your email messages and settings |
| `https://www.googleapis.com/auth/gmail.send` | Send email on your behalf |
| `https://www.googleapis.com/auth/gmail.settings.basic` | See, edit, create, or change your email settings and filters in Gmail |
| `https://www.googleapis.com/auth/gmail.settings.sharing` | Manage your sensitive mail settings, including who can manage your mail |

## Service Endpoint

- **Root URL**: `https://gmail.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

